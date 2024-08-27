struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<f32>, 11>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    return !(!global0.a.x) & false;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_2(select(vec3<bool>(func_3(), all(select(vec3<bool>(true, global0.a.x, global0.b.a.x), global0.a, vec3<bool>(global0.b.a.x, global0.a.x, global0.a.x))), !global0.b.a.x), !select(!vec3<bool>(false, global0.a.x, global0.a.x), select(global0.a, global0.a, vec3<bool>(true, global0.a.x, false)), true), global0.a.x || global0.a.x), Struct_1(vec2<bool>(global0.b.a.x, true), global0.b.b, u_input.a, vec2<i32>(-9813i, 1i)), _wgslsmith_sub_vec4_i32(~global0.c, -reverseBits(reverseBits(global0.c))));
    var var_1 = vec2<i32>(firstLeadingBit(abs(2147483647i)), -35120i);
    global1 = array<vec2<f32>, 11>();
    var var_2 = true;
    var var_3 = vec2<u32>(~1u ^ _wgslsmith_mod_u32(arg_0, _wgslsmith_mult_u32(arg_0 >> (arg_0 % 32u), ~arg_0)), ~(~(~arg_0)));
    return Struct_2(select(vec3<bool>(true, true, global0.a.x), var_0.a, select(var_0.a, select(vec3<bool>(var_0.a.x, var_0.b.a.x, false), select(vec3<bool>(var_0.a.x, global0.a.x, false), var_0.a, var_0.a), global0.b.a.x && global0.a.x), global0.a.x)), Struct_1(!(!select(var_0.a.zy, global0.b.a, global0.a.yy)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(856f, var_0.b.b.x, var_0.b.b.x, var_0.b.b.x)))), -2147483647i, vec2<i32>(~(-var_1.x), global0.b.d.x)), vec4<i32>(u_input.a, -_wgslsmith_dot_vec3_i32(global0.c.xwx, vec3<i32>(u_input.a, u_input.a, -2147483647i) ^ vec3<i32>(var_1.x, 2147483647i, u_input.a)), -((i32(-1i) * -2147483647i) >> (0u % 32u)), 30202i));
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    global0 = func_2(14534u);
    var var_0 = ~vec2<u32>(1u, 1u) & _wgslsmith_add_vec2_u32((select(vec2<u32>(76449u, 1u), vec2<u32>(0u, 27934u), false) & firstTrailingBit(vec2<u32>(61811u, 24264u))) | (~vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))), vec2<u32>(1u, 1u));
    var var_1 = Struct_3(global0.c.zw, _wgslsmith_f_op_f32(min(-2021f, _wgslsmith_f_op_f32(global0.b.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(380f, global0.b.b.x)))))));
    let var_2 = Struct_2(func_2(var_0.x & _wgslsmith_clamp_u32(~19023u, ~var_0.x, countOneBits(var_0.x))).a, Struct_1(vec2<bool>(arg_0.x, arg_0.x), global0.b.b, -_wgslsmith_dot_vec3_i32(global0.c.yzx, -global0.c.xzy), reverseBits(global0.b.d)), abs(_wgslsmith_mod_vec4_i32(select(_wgslsmith_mult_vec4_i32(global0.c, vec4<i32>(1i, global0.b.d.x, -11444i, 45368i)), -global0.c, arg_0.x), vec4<i32>(-2147483647i | global0.c.x, ~global0.b.d.x, global0.b.c, var_1.a.x))));
    var var_3 = func_2(~68964u).b;
    return Struct_3(-min(select(vec2<i32>(-2147483647i, global0.b.c), var_3.d, any(global0.a)), select(_wgslsmith_sub_vec2_i32(vec2<i32>(24028i, -1i), var_2.c.zx), global0.b.d, var_3.a)), 812f);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(func_2(0u).a, global0.b, ~vec4<i32>(1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(22803i, -7086i, u_input.a, -11190i), global0.c), func_2(abs(4294967295u)).b.c, ~(-1i), 2147483647i));
    let var_1 = var_0.a.yz;
    let var_2 = func_1(vec4<bool>(!global0.a.x | (0u == select(1u, 57309u, global0.a.x)), false, var_1.x, false));
    let var_3 = Struct_1(!select(var_1, vec2<bool>(true, all(var_0.b.a)), !var_1), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b.x, 904f) + _wgslsmith_div_f32(global0.b.b.x, var_2.b)) * 520f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, -460f)), _wgslsmith_f_op_f32(f32(-1f) * -463f), var_2.b), select(-(~_wgslsmith_mult_i32(var_0.c.x, global0.c.x)), select(countOneBits(u_input.a), -17940i, max(4294967295u, 86758u) <= _wgslsmith_clamp_u32(16831u, 954u, 1u)), var_0.a.x), global0.c.wz | vec2<i32>(_wgslsmith_sub_i32(-var_2.a.x, var_0.b.c), global0.b.d.x));
    var var_4 = func_1(select(!select(select(vec4<bool>(var_0.a.x, var_3.a.x, var_1.x, true), vec4<bool>(false, false, true, global0.a.x), var_1.x), !vec4<bool>(var_3.a.x, false, var_3.a.x, false), !vec4<bool>(var_1.x, false, global0.b.a.x, false)), vec4<bool>(24076i <= ~var_0.b.c, !var_1.x, false, arg_0.b <= _wgslsmith_f_op_f32(241f - arg_0.b)), true && func_2(~247u).b.a.x));
    return func_1(vec4<bool>(var_1.x, any(select(!vec3<bool>(false, var_0.b.a.x, var_3.a.x), !var_0.a, !vec3<bool>(var_1.x, var_3.a.x, false))), false, any(!var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    let var_1 = func_4(func_1(!select(select(vec4<bool>(true, var_0.a.x, true, var_0.a.x), vec4<bool>(global0.b.a.x, true, var_0.a.x, false), vec4<bool>(true, true, global0.b.a.x, var_0.a.x)), !vec4<bool>(global0.a.x, true, global0.b.a.x, global0.b.a.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.ww - vec2<f32>(586f, -884f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1408f, global0.b.b.x))))), global0.b.b.zw);
}

