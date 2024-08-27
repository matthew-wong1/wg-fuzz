struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(732f, 265f, -866f), vec3<f32>(-904f, 1001f, 153f), vec3<f32>(1130f, 1749f, -452f), vec3<f32>(592f, 165f, -1025f), vec3<f32>(257f, 1000f, -1466f), vec3<f32>(943f, 1003f, 843f), vec3<f32>(1616f, 1465f, 1000f), vec3<f32>(-501f, 377f, 1025f), vec3<f32>(-358f, -492f, -2012f), vec3<f32>(-1387f, 781f, 374f), vec3<f32>(-174f, 179f, -1961f), vec3<f32>(2515f, 513f, 746f), vec3<f32>(308f, 836f, 1221f), vec3<f32>(505f, 438f, -2299f), vec3<f32>(-1006f, -751f, 1000f), vec3<f32>(1832f, 610f, 1000f), vec3<f32>(742f, -505f, 244f), vec3<f32>(607f, 1000f, -920f), vec3<f32>(-543f, -363f, 520f), vec3<f32>(452f, -330f, 1195f), vec3<f32>(-585f, -1951f, -199f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    global0 = array<vec3<f32>, 21>();
    global0 = array<vec3<f32>, 21>();
    let var_0 = _wgslsmith_mult_i32(i32(-1i) * -11545i, -30836i);
    var var_1 = -u_input.a.x;
    let var_2 = !arg_1.b.x;
    return 483f;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>) -> u32 {
    global0 = array<vec3<f32>, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -899f), _wgslsmith_f_op_f32(round(189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f * 264f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f) - _wgslsmith_f_op_f32(trunc(833f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_div_f32(1079f, -572f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 652f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f)), _wgslsmith_f_op_f32(-1728f * _wgslsmith_f_op_f32(-var_0.x))))));
    var var_1 = 1u;
    let var_2 = Struct_1(abs(countOneBits(49277u)) ^ u_input.c, vec3<bool>(false, arg_1.a, arg_1.a), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    return _wgslsmith_add_u32(select(_wgslsmith_mult_u32(1u, abs(~u_input.c)), 1u, false), 28540u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_mod_u32(func_3(arg_0.x, Struct_2(false, arg_1.x), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, u_input.b.x, u_input.a.x), vec3<i32>(u_input.b.x, arg_0.x, 2147483647i))), _wgslsmith_add_u32(13184u, arg_2.b) ^ arg_2.b) == u_input.c, u_input.c ^ 27677u);
    return Struct_1(~(~1u), select(vec3<bool>(reverseBits(0i) <= ~arg_0.x, !arg_2.a, false & var_0.a), vec3<bool>(all(select(vec4<bool>(var_0.a, true, arg_2.a, false), vec4<bool>(arg_2.a, arg_2.a, var_0.a, false), vec4<bool>(var_0.a, arg_2.a, var_0.a, false))), !all(vec2<bool>(var_0.a, arg_2.a)), all(vec2<bool>(true, true))), any(!(!vec4<bool>(var_0.a, arg_2.a, true, arg_2.a)))), -461f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 21>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(830f + -314f)))));
    var var_1 = Struct_1(~u_input.c, select(vec3<bool>(~u_input.c <= u_input.c, true, true), !vec3<bool>(true, any(vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(189f + -689f) * -248f))));
    var var_2 = reverseBits(u_input.c);
    var var_3 = ~1u;
    let var_4 = Struct_2(var_1.b.x, var_1.a);
    let var_5 = var_1.b.x;
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(var_0, Struct_1(1u, var_1.b, var_1.c), Struct_3(vec4<u32>(u_input.c, 4294967295u, var_4.b, var_1.a), Struct_1(22831u, vec3<bool>(var_4.a, var_4.a, var_1.b.x), var_0)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * var_0))) * _wgslsmith_f_op_f32(func_1(306f, func_2(~vec2<i32>(-1i, u_input.b.x), ~vec2<u32>(0u, var_1.a), var_4), Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(46150u, 4294967295u, 54041u, var_1.a), vec4<u32>(var_4.b, 1u, 20176u, var_1.a)), func_2(vec2<i32>(0i, u_input.a.x), vec2<u32>(110514u, var_4.b), Struct_2(true, var_4.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.c, -436f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(337f, 784f), vec2<f32>(2023f, var_0), vec2<bool>(false, var_1.b.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(2161f, var_0) - vec2<f32>(var_0, -382f)), vec2<f32>(var_1.c, 283f), !var_1.b.x))))), var_1.a, ~(~0u), var_4.b, _wgslsmith_f_op_f32(f32(-1f) * -201f));
}

