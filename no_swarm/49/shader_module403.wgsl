struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> f32 {
    global0 = array<vec3<u32>, 5>();
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_2.zz - arg_2.yx);
    global0 = array<vec3<u32>, 5>();
    return _wgslsmith_f_op_f32(min(-342f, 1058f));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(max(-6196i, u_input.d.x)), -(u_input.b << (u_input.c % 32u)), reverseBits(u_input.d.x)) & _wgslsmith_mod_vec3_i32(~countOneBits(vec3<i32>(75766i, u_input.b, 6498i)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d.zxw, vec3<i32>(-23712i, u_input.a.x, u_input.a.x)), ~vec3<i32>(u_input.a.x, u_input.b, 0i))), u_input.a.xyy);
    var var_1 = ~vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i) * -vec4<i32>(u_input.b, var_0.x, -39518i, -2147483647i)), -u_input.a.x);
    var_1 = vec3<i32>(7347i, -2147483647i, 16609i);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-336f)), -817f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(9908u, u_input.c, u_input.c), vec4<i32>(var_0.x, -21061i, -10035i, var_1.x), vec3<f32>(-1000f, -1000f, -2174f), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u))) - _wgslsmith_f_op_f32(step(-779f, -318f))))), -1651f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(925f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(481f - 1000f)))))));
    let var_3 = vec3<i32>(0i, max(_wgslsmith_div_i32(min(-var_1.x, var_1.x | -5433i), var_1.x >> (~u_input.c % 32u)), _wgslsmith_dot_vec3_i32(~u_input.a.xyx, var_0)), firstLeadingBit(~(var_1.x >> (4294967295u % 32u))) ^ var_1.x);
    return Struct_4(Struct_1(vec4<bool>(true, true, true, true), abs(var_0.zx), _wgslsmith_mod_i32(22134i, u_input.a.x), abs(54127u) ^ (~4294967295u | abs(u_input.c)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1986f, 275f, -704f, 320f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-374f, -517f, -1023f, 392f) - vec4<f32>(649f, 1000f, 1016f, -445f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(111f, 373f, -1000f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-359f, 307f, -747f, 1222f)))))));
}

fn func_1() -> f32 {
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    let var_0 = func_2();
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    return var_0.a.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 5>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(986f * _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(min(-263f, -439f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(773f, _wgslsmith_f_op_f32(ceil(284f)))) + _wgslsmith_f_op_f32(trunc(-142f)))));
    let var_1 = !func_2().a.a.yy;
    let var_2 = u_input.d;
    var var_3 = vec3<u32>(u_input.c, u_input.c, countOneBits(35115u));
    let x = u_input.a;
    s_output = StorageBuffer(-371f, ~(~u_input.c), 14482u);
}

