struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4) -> i32 {
    var var_0 = any(!vec4<bool>(true, all(vec4<bool>(true, false, true, true)) && false, !(!arg_2.b.b.a.a.x), all(global1.xx)));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.b.b.x, arg_2.b.b.b.x)), arg_2.b.a.b.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_2.b.a.b.yz)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.b.a.b.x, arg_0.a.b.x)))))));
    let var_2 = Struct_2(arg_2.b.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-255f, _wgslsmith_f_op_f32(f32(-1f) * -529f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.b.x) * _wgslsmith_f_op_f32(1189f - -1865f)), arg_0.a.b.x)));
    global0 = arg_2.b.b.a.a.x;
    var_0 = var_2.a.a.x;
    return ~_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_2.a.x, 17674i), _wgslsmith_mod_i32(-35927i, firstTrailingBit(4615i))) >> (~(firstLeadingBit(u_input.b.x) >> (arg_1 % 32u)) % 32u);
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(vec2<bool>(global1.x, true), ~u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-189f, 291f, 322f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1590f, 1000f, 1692f))), vec3<f32>(_wgslsmith_f_op_f32(round(-2493f)), _wgslsmith_f_op_f32(-358f + 775f), _wgslsmith_f_op_f32(abs(1000f))))));
    global1 = select(vec3<bool>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(31716i, -2147483647i, 20803i), vec3<i32>(27067i, 1i, -2147483647i)), func_3(Struct_3(Struct_2(var_0.a, var_0.b), Struct_2(Struct_1(vec2<bool>(var_0.a.a.x, true), 8911u), var_0.b)), 4294967295u, Struct_4(vec4<i32>(2147483647i, -2147483647i, -14698i, -1i), Struct_3(Struct_2(var_0.a, var_0.b), Struct_2(Struct_1(vec2<bool>(false, global1.x), var_0.a.b), var_0.b)))), abs(34708i)) >= func_3(Struct_3(Struct_2(Struct_1(vec2<bool>(var_0.a.a.x, false), 0u), var_0.b), Struct_2(var_0.a, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x))), ~u_input.b.x, Struct_4(vec4<i32>(8085i, 60585i, -1162i, 2147483647i), Struct_3(Struct_2(var_0.a, vec3<f32>(-1000f, 1877f, 283f)), Struct_2(Struct_1(vec2<bool>(global1.x, false), 85229u), var_0.b)))), var_0.a.a.x, !(select(var_0.a.a.x, false, false) || true)), select(vec3<bool>(!any(vec3<bool>(var_0.a.a.x, false, global1.x)), false, true), vec3<bool>(4294967295u <= _wgslsmith_sub_u32(u_input.a, 20984u), true, _wgslsmith_f_op_f32(-var_0.b.x) < _wgslsmith_f_op_f32(floor(-935f))), false), select(select(select(select(vec3<bool>(true, global1.x, true), vec3<bool>(var_0.a.a.x, global1.x, false), true), select(vec3<bool>(true, var_0.a.a.x, false), vec3<bool>(var_0.a.a.x, true, false), false), false), select(select(vec3<bool>(true, false, var_0.a.a.x), vec3<bool>(global1.x, var_0.a.a.x, var_0.a.a.x), global1.x), select(vec3<bool>(global1.x, true, false), vec3<bool>(true, global1.x, false), true), var_0.a.a.x | true), reverseBits(-70288i) > (2147483647i >> (var_0.a.b % 32u))), vec3<bool>(var_0.a.a.x && true, true, var_0.a.a.x), any(vec4<bool>(true, select(true, var_0.a.a.x, true), true, false))));
    let var_1 = var_0.a;
    let var_2 = firstTrailingBit(~select(vec2<u32>(~4294967295u, min(var_1.b, 1u)), max(vec2<u32>(var_1.b, var_1.b), u_input.b.xw) >> ((u_input.b.zw >> (u_input.b.ww % vec2<u32>(32u))) % vec2<u32>(32u)), true || all(vec4<bool>(false, var_1.a.x, false, var_1.a.x))));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.b)) * _wgslsmith_f_op_vec3_f32(step(var_0.b, vec3<f32>(var_0.b.x, var_0.b.x, -902f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1068f, var_0.b.x, 502f))))))));
    return -vec2<i32>(~((27506i >> (var_2.x % 32u)) | max(50773i, -17001i)), _wgslsmith_add_i32(-select(2147483647i, -2147483647i, var_0.a.a.x), -1i));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4) -> vec2<i32> {
    return -func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global1 = select(vec3<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -1976i, -2147483647i), vec4<i32>(2147483647i, 1i, 0i, -25i)) > 1i), true, true), vec3<bool>(true, global1.x, false), !all(select(vec3<bool>(false, global1.x, global1.x), select(vec3<bool>(true, global1.x, false), vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, global1.x, true)), true)));
    let var_0 = true;
    var var_1 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_clamp_i32(0i, 37487i, 67250i), ~(-41071i)), -(func_1(vec2<i32>(-2147483647i, -13406i), Struct_4(vec4<i32>(-1i, 35943i, 2147483647i, 0i), Struct_3(Struct_2(Struct_1(global1.yy, u_input.b.x), vec3<f32>(-1000f, -123f, -314f)), Struct_2(Struct_1(global1.yy, 1u), vec3<f32>(1000f, -826f, 342f))))) & (vec2<i32>(-1i, -1737i) >> (vec2<u32>(14824u, u_input.a) % vec2<u32>(32u)))));
    var_1 = -_wgslsmith_add_vec2_i32(~func_2(), _wgslsmith_sub_vec2_i32(~(-vec2<i32>(24955i, 2147483647i)), vec2<i32>(_wgslsmith_div_i32(2147483647i, 4239i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, 46435i), vec4<i32>(-42927i, -36077i, var_1.x, var_1.x)))));
    var var_2 = Struct_2(Struct_1(select(global1.xy, vec2<bool>(!var_0, global1.x || global1.x), var_0 & var_0), _wgslsmith_mod_u32(1u, ~82270u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-169f - 357f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(617f))), 673f)));
    var var_3 = ~(~_wgslsmith_add_i32(firstLeadingBit(func_2().x), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(1i, var_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1114f)) * 1f), -254f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1645f + _wgslsmith_f_op_f32(max(var_2.b.x, 224f))))), select(reverseBits(-select(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<i32>(-21385i, -1i, 1i, var_1.x), var_0)), vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(0i, -4567i, 0i), vec3<i32>(var_1.x, 2147483647i, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -36381i, var_1.x), vec3<i32>(-11381i, var_1.x, var_1.x))), -7248i, func_2().x, var_1.x), global1.x), var_2.b, firstTrailingBit(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -1i) << (u_input.b.xy % vec2<u32>(32u)), vec2<i32>(var_1.x, -32243i) >> (vec2<u32>(u_input.a, u_input.b.x) % vec2<u32>(32u))), vec2<i32>(~var_1.x, var_1.x))));
}

