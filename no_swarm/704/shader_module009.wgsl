struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5>;

var<private> global1: vec4<f32>;

var<private> global2: f32 = -854f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = !vec3<bool>(all(vec4<bool>(true, true, true, true)), true & select(all(vec4<bool>(true, false, true, true)), true, true), false);
    var var_1 = var_0.zy;
    global2 = -1498f;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1304f) - arg_0.x));
    let var_2 = 16754u;
    return Struct_2(_wgslsmith_f_op_f32(step(global1.x, global1.x)), 2147483647i, _wgslsmith_f_op_f32(-global1.x));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32) -> vec4<u32> {
    return ~(vec4<u32>(countOneBits(select(33954u, 1u, false)), ~arg_2, ~4294967295u, arg_2) & select(~vec4<u32>(arg_2, arg_1.a.x, 1u, 1u), ~(~vec4<u32>(arg_1.a.x, 26010u, arg_1.a.x, arg_1.a.x)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true), false)));
}

fn func_1() -> u32 {
    global2 = global1.x;
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-890f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(672f - -1836f)) * global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, global1.x, 1000f), global1.yzy)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1621f, global1.x, 1589f) - global1.yzy))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(ceil(1255f))), vec3<f32>(349f, _wgslsmith_f_op_f32(select(global1.x, global1.x, true)), _wgslsmith_div_f32(620f, 1198f))))), false));
    let var_1 = func_2(vec3<f32>(-1000f, 687f, -1365f));
    var var_2 = vec2<u32>(1u, 1u);
    let var_3 = ~_wgslsmith_clamp_vec4_u32(~func_3(func_2(vec3<f32>(1729f, -752f, 1492f)), Struct_4(vec4<u32>(var_2.x, var_2.x, var_2.x, 0u), var_0.x, -265f), var_2.x), vec4<u32>(var_2.x, ~var_2.x, abs(var_2.x), select(var_2.x, var_2.x, false)) >> (~(~vec4<u32>(var_2.x, 55559u, 1u, 1u)) % vec4<u32>(32u)), select(reverseBits(select(vec4<u32>(49238u, 38561u, 54795u, var_2.x), vec4<u32>(var_2.x, var_2.x, var_2.x, 1u), true)), _wgslsmith_add_vec4_u32(func_3(var_1, Struct_4(vec4<u32>(23672u, var_2.x, 4294967295u, var_2.x), -1210f, global1.x), var_2.x), vec4<u32>(var_2.x, 40402u, 1u, 64622u) & vec4<u32>(0u, var_2.x, var_2.x, 4294967295u)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), false)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(520f, _wgslsmith_f_op_f32(exp2(global1.x)), u_input.a.x > -88412i)) + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-466f * -346f)) - 111f), ~2010u >= _wgslsmith_clamp_u32(10263u >> (1u % 32u), 1u, ~56607u))));
    let var_0 = any(vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1004f * global1.x) + 695f), true));
    let var_1 = false;
    let var_2 = vec4<u32>(_wgslsmith_clamp_u32(func_1(), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 32630u), 1u)), _wgslsmith_sub_u32(4294967295u, ~31618u)), abs(0u), ~_wgslsmith_div_u32(1u, func_1() >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13540u, 0u, 1u), vec4<u32>(36027u, 1u, 1u, 11994u)) % 32u)), ~0u);
    let var_3 = global1.x;
    let var_4 = Struct_4(vec4<u32>(countOneBits(1u), _wgslsmith_clamp_u32(~(~var_2.x), 4294967295u, 0u), ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_2.x, var_2.x, 13162u), var_2.x), 1u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-794f - global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(global1.x + global1.x))))), -713f));
    global0 = array<vec3<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(1u), func_1(), 17894u | var_4.a.x, ~0u), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_4.a.x, 0u, 31156u), var_2), var_2)), var_2.x ^ 1u));
}

