struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 492f;

var<private> global1: array<vec3<bool>, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = ~(u_input.b.x ^ -1i);
    var_0 = u_input.b.x;
    global1 = array<vec3<bool>, 6>();
    let var_1 = _wgslsmith_f_op_f32(944f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1288f - 1114f), _wgslsmith_f_op_f32(f32(-1f) * -110f)) * -1200f) * 762f));
    let var_2 = -121f;
    return 0i;
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = u_input.b.x;
    let var_1 = false;
    var var_2 = func_3();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.xzz * vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -960f) + 350f), _wgslsmith_div_f32(358f, 597f))));
    var var_4 = vec2<u32>(~_wgslsmith_dot_vec2_u32(~min(u_input.a.xz, vec2<u32>(4294967295u, u_input.a.x)), vec2<u32>(~u_input.a.x, u_input.a.x)), 1u ^ u_input.a.x);
    return vec2<bool>(var_3.x <= var_3.x, select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) < arg_0.x, true, true));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = ~vec4<u32>(abs(firstLeadingBit(max(113257u, u_input.c.x))), ~u_input.a.x, u_input.c.x, _wgslsmith_clamp_u32(0u, (u_input.c.x & u_input.a.x) ^ reverseBits(0u), min(~0u, 0u & u_input.a.x)));
    global1 = array<vec3<bool>, 6>();
    let var_1 = Struct_1(~(~firstLeadingBit(u_input.b.x) | 13995i), select(select(!func_2(vec4<f32>(417f, 632f, -1253f, -816f)), arg_0.yw, all(arg_0) & all(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, 327f, 287f, -1771f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(552f, -271f, 1285f, 1982f)))), true));
    let var_2 = false;
    var var_3 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-6339i, ~(~var_1.a))), select(var_1.b, select(!vec2<bool>(var_2, false), arg_0.zz, !arg_0.zw), false));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(u_input.b.x, u_input.b.x ^ func_1(vec4<bool>(true, true, true, false)), true) << (u_input.a.x % 32u), !select(!func_2(vec4<f32>(976f, 502f, -298f, -1347f)), vec2<bool>(true, true), vec2<bool>(-1i > u_input.b.x, false)));
    var_0 = Struct_1(-u_input.b.x, !vec2<bool>(any(vec4<bool>(true, true, var_0.b.x, false)), func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1029f, 356f, -468f, 1407f), vec4<f32>(283f, -488f, -671f, 1000f)))).x));
    global1 = array<vec3<bool>, 6>();
    var_0 = Struct_1(min(u_input.b.x, var_0.a) | (firstLeadingBit(var_0.a) ^ firstLeadingBit(var_0.a >> (0u % 32u))), var_0.b);
    global1 = array<vec3<bool>, 6>();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1205f, 1014f)), -269f) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(530f, -373f)))), _wgslsmith_f_op_f32(f32(-1f) * -776f), -1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-445f, -582f, -1785f), vec3<f32>(1247f, -238f, -1512f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, 537f, 1283f) * vec3<f32>(958f, -1576f, 1487f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1372f, -1000f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 407f, var_1.x)), vec3<f32>(-1886f, var_1.x, _wgslsmith_f_op_f32(190f * -1928f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_div_f32(1895f, var_1.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), var_1.x, -587f), _wgslsmith_sub_u32(21909u, _wgslsmith_mod_u32(abs(24250u), 25043u >> (1u % 32u))), 71976u);
}

