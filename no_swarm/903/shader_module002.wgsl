struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = -261f;
    var var_1 = Struct_2(vec3<bool>(all(!global0.a.xy), global0.b.x, true), vec3<bool>(!global0.b.x, all(global0.a), global0.a.x), _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(global0.c, u_input.c.xw), vec2<u32>(1u, 33880u)));
    global0 = Struct_2(!select(var_1.b, select(var_1.b, global0.b, 37401i < u_input.a.x), !select(vec3<bool>(true, false, var_1.b.x), vec3<bool>(false, var_1.a.x, false), var_1.b.x)), global0.a, var_1.c);
    var var_2 = Struct_3(Struct_1(u_input.a.x));
    let var_3 = select(~abs(_wgslsmith_clamp_vec3_u32(u_input.b | u_input.b, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.d.x, 48589u), u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(global0.c.x, u_input.c.x, 4294967295u), vec3<u32>(117731u, u_input.b.x, 39884u)))), (~vec3<u32>(var_1.c.x, u_input.c.x, 4294967295u) | vec3<u32>(_wgslsmith_add_u32(16302u, 11794u), abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(62254u, 6205u), vec2<u32>(4294967295u, 2747u)))) ^ (~vec3<u32>(global0.c.x, u_input.b.x, 19044u) & _wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, var_1.c.x, global0.c.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(39253u, 32405u, global0.c.x), vec3<u32>(4422u, global0.c.x, global0.c.x), vec3<u32>(var_1.c.x, global0.c.x, var_1.c.x)))), false);
    return -1488f;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_2(arg_0, vec3<bool>(false, global0.a.x, any(arg_0.yz)), countOneBits(~u_input.b.xx));
    var var_1 = Struct_3(arg_1);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 1043f), 1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-647f - _wgslsmith_f_op_f32(-174f - -512f)), _wgslsmith_f_op_f32(-110f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true | !global0.b.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_2.a, var_2.a, var_2.a) * vec4<f32>(-1028f, -413f, 923f, 1583f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(251f, -1494f, -961f, var_2.a) * vec4<f32>(var_2.a, var_2.b, 1616f, 1368f))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, -1365f, -628f, 2221f) + vec4<f32>(-1611f, var_2.b, 1758f, -1430f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, 152f, var_2.a, 857f), vec4<f32>(var_2.a, 626f, var_2.b, var_2.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -335f, var_2.b, var_2.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, var_2.b, var_2.a, var_2.b), vec4<f32>(-683f, var_2.a, -202f, var_2.b), vec4<bool>(false, arg_0.x, true, false))) - vec4<f32>(-1523f, 174f, 659f, -504f))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + -552f) - _wgslsmith_div_f32(var_2.a, 231f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_div_f32(780f, var_2.b))))));
    let var_4 = -1i;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-1952f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - -411f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a)))))));
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-1670f * 853f), _wgslsmith_f_op_f32(func_2(global0.b, Struct_1(0i))));
    var var_2 = abs(u_input.a);
    let var_3 = abs(-52924i);
    let var_4 = Struct_5(Struct_2(select(global0.b, vec3<bool>(false || global0.a.x, true, true), !select(global0.a, global0.a, true)), vec3<bool>(any(!global0.b.xy), true | (u_input.c.x > 48133u), (var_3 >> (global0.c.x % 32u)) <= ~var_2.x), u_input.d.yz));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = Struct_2(!func_1().a, !global0.a, global0.c);
    global0 = func_1();
    let var_1 = Struct_4(-1125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-906f)) * _wgslsmith_div_f32(1607f, 1881f))) + -1107f));
    let var_2 = Struct_4(-654f, 220f);
    var var_3 = Struct_2(select(vec3<bool>(true, true, false), !vec3<bool>(global0.b.x && false, true, false), select(vec3<bool>(true, var_0.a.x, true), !(!vec3<bool>(true, global0.b.x, false)), vec3<bool>(any(vec4<bool>(false, var_0.a.x, false, global0.b.x)), false, u_input.a.x >= -7331i))), vec3<bool>(global0.a.x, true, true), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(79963u, 23578u, global0.c.x, u_input.d.x)), vec4<u32>(1u, select(1u, 22924u, false), 3457u, 37510u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(320f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_div_f32(269f, -2157f)), var_1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - _wgslsmith_f_op_f32(-1022f + _wgslsmith_f_op_f32(ceil(-601f)))), var_1.b)), firstTrailingBit(var_3.c.x), 2147483647i);
}

