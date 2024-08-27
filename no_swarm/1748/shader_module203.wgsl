struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 187f;

var<private> global1: f32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(-abs(vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -2147483647i)), vec3<bool>(true, select(true, !(0u > u_input.a.x), u_input.a.x >= ~1u), true), -891f);
    var_0 = Struct_1(vec4<i32>(~(-var_0.a.x), _wgslsmith_mult_i32((var_0.a.x ^ 15744i) >> (~44486u % 32u), 0i), var_0.a.x, u_input.b.x), select(vec3<bool>(false, !(var_0.a.x > u_input.b.x), any(select(vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(false, true, var_0.b.x), true))), !select(!var_0.b, var_0.b, !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), _wgslsmith_div_u32(16003u, ~u_input.a.x) > max(_wgslsmith_mod_u32(0u, u_input.a.x), u_input.a.x)), var_0.c);
    global1 = _wgslsmith_f_op_f32(-433f + -954f);
    var_0 = Struct_1(countOneBits(-firstTrailingBit(vec4<i32>(1i, 11835i, 0i, u_input.b.x))), !var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(347f + 1171f) + _wgslsmith_f_op_f32(select(-398f, var_0.c, var_0.b.x)))), _wgslsmith_f_op_f32(-var_0.c)));
    var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-select(vec4<i32>(var_0.a.x, u_input.b.x, u_input.b.x, 2147483647i), var_0.a, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false)), var_0.a), reverseBits(var_0.a), vec4<i32>(var_0.a.x, ~(var_0.a.x << (31842u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 951i, 49147i, var_0.a.x), ~vec4<i32>(64703i, var_0.a.x, var_0.a.x, 2147483647i)), abs(-var_0.a.x))), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1009f - var_0.c) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -276f))));
    return _wgslsmith_f_op_f32(round(-625f));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: bool) -> vec3<f32> {
    let var_0 = !arg_2;
    global0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = ~(min(arg_1.yx, reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, arg_1.x), u_input.a.xz))) << (u_input.a.zy % vec2<u32>(32u)));
    let var_2 = Struct_3(vec2<bool>(!(!var_0), any(vec3<bool>(true, true, false))), var_0, Struct_2(vec3<bool>(any(!vec2<bool>(arg_2, arg_2)), false, !(!arg_2))));
    global0 = 1f;
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1131f * _wgslsmith_f_op_f32(139f - -1045f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -523f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1130f + _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -322f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1461f, 469f, 128f)))))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_2(vec3<bool>(true, false, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(~u_input.b.x, ~u_input.a, var_0.a.x))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(step(arg_0, -1087f)), any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))), arg_0) * _wgslsmith_f_op_vec3_f32(-arg_1.wzw)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1347f, _wgslsmith_f_op_f32(sign(1211f)), _wgslsmith_f_op_f32(-arg_1.x)) + vec3<f32>(_wgslsmith_div_f32(-824f, _wgslsmith_f_op_f32(step(-656f, 510f))), arg_1.x, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(trunc(arg_0))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 467f)), var_1.x), -548f));
    var_1 = _wgslsmith_div_vec3_f32(arg_1.yzx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(332f, 693f)) - _wgslsmith_f_op_f32(-arg_1.x))), 109f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -814f))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1300f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_1(-2402f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, 293f, -1405f, 1500f)))))));
    var var_0 = select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(any(vec3<bool>(true, false, true)), true, all(vec4<bool>(false, false, false, false)), true), vec4<bool>(all(vec4<bool>(true, true, false, true)), true, any(vec4<bool>(true, false, false, false)), true), true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false))), !vec4<bool>(false, any(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, false)), true)), any(!vec4<bool>(true, all(vec2<bool>(false, false)), true, true)));
    var var_1 = ~u_input.b.x;
    var_1 = max(i32(-1i) * -21410i, -1i);
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(~(~u_input.b.x), countOneBits(max(u_input.b.x, u_input.b.x)), ~_wgslsmith_mod_i32(-6706i, u_input.b.x), -8764i), -vec4<i32>(~u_input.b.x, u_input.b.x ^ u_input.b.x, 0i, _wgslsmith_div_i32(17220i, u_input.b.x))) >> ((vec4<u32>(~23480u, _wgslsmith_add_u32(~69109u, min(u_input.a.x, 0u)), u_input.a.x, ~(u_input.a.x << (u_input.a.x % 32u))) << (select(countOneBits(vec4<u32>(1u, 67412u, u_input.a.x, 50010u)), abs(~vec4<u32>(u_input.a.x, 0u, 0u, 1u)), vec4<bool>(var_0.x, false, true, var_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.xx);
}

