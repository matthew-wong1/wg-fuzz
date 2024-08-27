struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(265f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f * -1704f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-362f * -535f), _wgslsmith_f_op_f32(step(873f, -249f)))))), 639f);
    let var_1 = -max(-(~vec3<i32>(-3756i, -2147483647i, u_input.d) & -vec3<i32>(u_input.d, 23667i, 7354i)), -_wgslsmith_div_vec3_i32(-vec3<i32>(0i, 25732i, 37883i), vec3<i32>(arg_0.a.a, 2147483647i, arg_1.x)));
    var var_2 = u_input.b;
    let var_3 = true;
    let var_4 = countOneBits(-56159i);
    return -41665i;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = u_input.b;
    let var_1 = Struct_2(~(~vec4<i32>(-14849i, ~67929i, 1i, u_input.d << (var_0.x % 32u))), Struct_1(-countOneBits(u_input.d), 4294967295u), Struct_1(~(-19888i & _wgslsmith_sub_i32(-3646i, u_input.d)), ~_wgslsmith_dot_vec3_u32(u_input.b.xwx, u_input.b.wzz)), Struct_1(~func_3(Struct_3(Struct_1(-10349i, global1.x)), vec2<i32>(2147483647i, u_input.d), false, vec4<bool>(true, true, false, false)) >> (1u % 32u), var_0.x), !(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false))));
    global1 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~(var_1.c.b & 7763u), ~(~1u), var_1.b.b), vec3<u32>(1u, min(1310u, 1u), ~16647u | u_input.c.x)), ~(~countOneBits(_wgslsmith_div_vec3_u32(var_0.wxw, u_input.b.zwy))));
    global0 = true;
    var var_2 = countOneBits(~(~vec4<u32>(var_0.x, u_input.c.x, 4064u, global1.x))) & u_input.b;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)), arg_0))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(-2781f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-405f)) - _wgslsmith_f_op_f32(min(-763f, 574f))), -847f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1008f, _wgslsmith_f_op_f32(step(-864f, 417f)), _wgslsmith_f_op_f32(func_2(-178f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(466f, -465f, 517f) - vec3<f32>(351f, 513f, -255f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(846f, 769f, -1290f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(324f, 1923f, -2133f))))));
    global1 = ~select(~vec3<u32>(u_input.c.x, 0u, 4294967295u), ~(~u_input.b.wzz), u_input.b.x == ~0u) << (u_input.b.wwy % vec3<u32>(32u));
    let var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(40578i, _wgslsmith_mod_i32(17840i, -1i), u_input.d >> (global1.x % 32u)), -firstLeadingBit(vec3<i32>(u_input.d, -1i, 1i))), 4294967295u));
    let var_2 = var_0.x;
    let var_3 = ~(~u_input.c.x);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1() == countOneBits(u_input.a);
    let var_0 = select(all(vec3<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))))), !(global1.x >= ~u_input.a), true);
    let var_1 = any(vec3<bool>(false, true, false));
    var var_2 = firstTrailingBit(~(vec2<i32>(~2147483647i, min(u_input.d, -14492i)) << (~max(global1.zx, u_input.c) % vec2<u32>(32u))));
    let var_3 = Struct_3(Struct_1(~var_2.x, abs(~44990u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 25115u, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-176f + -775f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(1447f)), -1224f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(954f))) + 738f), -1614f)), _wgslsmith_mod_u32(u_input.c.x, var_3.a.b));
}

