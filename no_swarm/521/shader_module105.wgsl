struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6>;

var<private> global1: vec2<bool>;

var<private> global2: array<u32, 24> = array<u32, 24>(0u, 11470u, 0u, 32311u, 4294967295u, 4294967295u, 35928u, 56732u, 18972u, 4294967295u, 0u, 0u, 17551u, 4294967295u, 12723u, 0u, 4294967295u, 68648u, 30120u, 72908u, 30926u, 0u, 56591u, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> u32 {
    global1 = !(!(!vec2<bool>(true, any(vec3<bool>(arg_1.d, arg_3.d, false)))));
    global0 = array<vec4<f32>, 6>();
    return _wgslsmith_mult_u32(arg_3.c.x, ~44370u);
}

fn func_3() -> vec4<bool> {
    global2 = array<u32, 24>();
    var var_0 = Struct_1(-209f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-454f, -296f, -287f, -297f))))) * _wgslsmith_f_op_vec4_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zwx, reverseBits(u_input.a.yyz)), 6u)]))), vec2<u32>(u_input.c, abs(func_1(u_input.b | 0i, Struct_1(-511f, global0[_wgslsmith_index_u32(1u, 6u)], u_input.a.yx, true, vec2<f32>(192f, -1262f)), _wgslsmith_f_op_f32(round(-595f)), Struct_1(1000f, vec4<f32>(-1328f, -1000f, 905f, 499f), u_input.a.yy, true, vec2<f32>(-1215f, -952f))))), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(353f * _wgslsmith_f_op_f32(167f - 818f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -943f)))));
    var var_1 = vec3<f32>(-548f, _wgslsmith_f_op_f32(f32(-1f) * -742f), 955f);
    return select(!select(vec4<bool>(!global1.x, false || global1.x, any(vec4<bool>(global1.x, global1.x, true, global1.x)), global1.x), !(!vec4<bool>(false, var_0.d, var_0.d, global1.x)), select(vec4<bool>(var_0.d, false, true, false), !vec4<bool>(global1.x, false, var_0.d, true), !vec4<bool>(global1.x, var_0.d, true, var_0.d))), vec4<bool>(true, var_0.d, global1.x, true), !(!(!vec4<bool>(global1.x, true, false, false))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = func_3();
    global0 = array<vec4<f32>, 6>();
    var var_1 = arg_2;
    var var_2 = select(vec4<i32>(u_input.b, -2147483647i, 11251i, u_input.b), abs(firstLeadingBit(min(-vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), vec4<i32>(-1i, -1i, u_input.b, u_input.b) << (u_input.a % vec4<u32>(32u))))), func_3());
    var var_3 = Struct_1(270f, var_1.b, vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((u_input.a.ywz & u_input.a.xyz) ^ vec3<u32>(arg_1.c.x, 0u, arg_1.c.x), ~vec3<u32>(1u, 0u, 72551u)), 24u)]), all(!select(vec4<bool>(var_0.x, arg_2.d, arg_0, false), vec4<bool>(true, var_0.x, true, false), all(vec4<bool>(arg_1.d, true, false, false)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -725f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.x, arg_1.e.x) - vec2<f32>(-472f, arg_2.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.b.wx, vec2<f32>(1086f, arg_2.b.x), var_1.d)) * _wgslsmith_f_op_vec2_f32(-arg_1.b.yw)))), var_0.yw)));
    return arg_1.c.x | var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(-667f, 1945f))) * -1000f))), global0[_wgslsmith_index_u32((_wgslsmith_dot_vec4_u32(u_input.a | vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(2934u, 24u)], 50732u, 4294967295u), u_input.a) << (4294967295u % 32u)) & _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.a.xwy, vec3<u32>(4294967295u, 0u, u_input.a.x)), firstTrailingBit(u_input.a.yxw) & ~vec3<u32>(global2[_wgslsmith_index_u32(80897u, 24u)], 4294967295u, global2[_wgslsmith_index_u32(0u, 24u)])), 6u)], ~vec2<u32>(firstTrailingBit(~0u), abs(u_input.c)), false, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1121f, 1258f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1577f, 555f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-566f, -1000f)))))));
    global2 = array<u32, 24>();
    var var_2 = Struct_1(1004f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(1755f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f) + _wgslsmith_f_op_f32(-101f * 818f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f) * _wgslsmith_f_op_f32(f32(-1f) * -1426f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))))), ~vec2<u32>(u_input.c, u_input.c) & vec2<u32>(8898u, 1u), func_2(false, Struct_1(var_1.a, global0[_wgslsmith_index_u32(func_1(u_input.b, Struct_1(var_1.b.x, vec4<f32>(var_1.b.x, var_1.e.x, var_1.b.x, var_1.e.x), vec2<u32>(var_1.c.x, u_input.c), global1.x, vec2<f32>(var_1.b.x, var_1.b.x)), -1343f, Struct_1(1615f, vec4<f32>(1147f, 700f, var_1.b.x, var_1.b.x), vec2<u32>(4294967295u, 1u), true, vec2<f32>(639f, var_1.a))), 6u)], vec2<u32>(u_input.c, u_input.c), var_1.d, _wgslsmith_f_op_vec2_f32(var_1.b.yy + var_1.b.zx)), Struct_1(_wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_vec4_f32(min(var_1.b, var_1.b)), ~var_1.c, false, vec2<f32>(var_1.b.x, 1075f))) > var_1.c.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(939f, -1305f)))), vec2<f32>(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + var_1.b.x), 907f))))));
    var var_3 = Struct_1(var_1.e.x, var_1.b, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(var_1.c.x, 24u)], var_2.c.x), var_2.c & vec2<u32>(var_1.c.x, var_1.c.x)), ~_wgslsmith_add_u32(22123u, 0u)) ^ countOneBits(vec2<u32>(_wgslsmith_mult_u32(34526u, 55421u), var_2.c.x)), all(select(vec2<bool>(var_0 && var_0, false), select(select(vec2<bool>(false, global1.x), vec2<bool>(false, true), var_1.d), vec2<bool>(true, false), true), true & any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.e + vec2<f32>(749f, var_1.e.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, -1081f) - vec2<f32>(var_2.b.x, 1158f)) * var_1.b.wy)))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1361f, 1032f, 204f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(497f + -993f) - var_1.a)) * var_2.b), var_2.c, global1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.e))))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.e.x), _wgslsmith_f_op_f32(f32(-1f) * -440f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.e.x, 1233f)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b.x, -1809f)))), _wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_f_op_f32(ceil(-1014f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x - var_3.b.x) * _wgslsmith_f_op_f32(-var_2.e.x)))), _wgslsmith_mod_vec2_u32(vec2<u32>(56048u, ~1u) ^ vec2<u32>(firstLeadingBit(u_input.a.x), var_2.c.x), vec2<u32>(func_1(u_input.b, Struct_1(-1654f, vec4<f32>(3212f, -902f, 229f, var_2.e.x), var_3.c, true, vec2<f32>(191f, 108f)), _wgslsmith_f_op_f32(814f - 1689f), Struct_1(144f, var_2.b, var_3.c, false, vec2<f32>(var_2.e.x, 1562f))), _wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.c.x, var_2.c.x), min(0u, global2[_wgslsmith_index_u32(4294967295u, 24u)])))), any(vec2<bool>(true, true)), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, ~0i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i) | vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -1i) >> (vec2<u32>(var_3.c.x, u_input.a.x) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-790f * 281f)))));
}

