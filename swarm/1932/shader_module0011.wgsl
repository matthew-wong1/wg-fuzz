struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    let var_0 = arg_2.x;
    var var_1 = Struct_2(!any(vec4<bool>(true, true, true, true)), 0u, !vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), true, true), 432f);
    let var_2 = 1u ^ arg_0;
    var var_3 = var_1.b;
    var var_4 = vec4<u32>(1u, _wgslsmith_mult_u32(var_2, _wgslsmith_add_u32(~select(60212u, 19579u, var_1.c.x), 4294967295u)), countOneBits(4294967295u), _wgslsmith_add_u32(u_input.a, abs(1u)));
    return ~0u;
}

fn func_2() -> bool {
    let var_0 = Struct_3(func_3(~41463u, -14734i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1491f, -1349f, -1606f, -583f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1866f, -434f, -281f, 673f)))))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(2584f)))), vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, false, false)), true & any(vec2<bool>(true, true))), 1518f, 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-706f, 1107f, false)) - -141f) * _wgslsmith_f_op_f32(-1886f * _wgslsmith_f_op_f32(abs(194f))))), Struct_2(true, u_input.a, !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1268f))))));
    let var_1 = 25844u;
    var var_2 = vec2<bool>(true, _wgslsmith_div_f32(-288f, var_0.c.d) > var_0.b.c);
    var var_3 = var_0.c;
    let var_4 = any(!(!select(vec4<bool>(var_3.a, var_3.c.x, false, var_3.a), select(vec4<bool>(true, false, false, var_2.x), vec4<bool>(var_0.c.c.x, true, true, var_3.a), vec4<bool>(false, var_2.x, false, var_2.x)), var_0.b.b.x)));
    return var_4;
}

fn func_1() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1249f)), _wgslsmith_f_op_f32(1350f + -2706f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2263f))))), select(vec3<bool>(true, func_2(), true), vec3<bool>(false, select(false, true, false) & true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(988f, _wgslsmith_f_op_f32(f32(-1f) * -555f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(678f, 749f))))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-180f - 664f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) * _wgslsmith_f_op_f32(-755f - -1541f)), u_input.b.x >= 80032u))));
    let var_1 = !any(!select(select(vec4<bool>(false, var_0.b.x, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), true), select(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), true), true));
    let var_2 = Struct_3(_wgslsmith_add_u32(u_input.b.x, ~(~u_input.b.x)), Struct_1(var_0.a, var_0.b, var_0.c, firstLeadingBit(1u) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 54439u, u_input.a, 0u), vec4<u32>(5895u, 4294967295u, 57550u, var_0.d)) % 32u), var_0.e), Struct_2(true, var_0.d, vec3<bool>(!any(vec2<bool>(false, var_1)), false, var_1), -1000f));
    let var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), u_input.b, vec2<u32>(_wgslsmith_mult_u32(var_2.b.d, firstTrailingBit(1u)), ~(~1u)));
    var var_4 = -1109f;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(6129i & reverseBits(func_1()));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -475f), vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), all(vec3<bool>(u_input.a >= 1u, true, func_2())), select(~var_0 > abs(0i), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), select(true, true, false) || any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(select(674f, _wgslsmith_f_op_f32(floor(-1539f)), true)), 1u << ((1u ^ u_input.a) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-872f)))) * -581f)));
    let var_2 = Struct_2(var_1.b.x, u_input.a, select(select(var_1.b, vec3<bool>(func_2(), true, !var_1.b.x), var_1.b), select(!(!vec3<bool>(false, var_1.b.x, true)), !select(vec3<bool>(true, var_1.b.x, var_1.b.x), var_1.b, false), var_1.b.x), !var_1.b.x), var_1.e);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) - var_1.e), var_2.c, var_1.c, 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d - 1317f)));
    let var_4 = u_input.b;
    var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, var_2.d) - _wgslsmith_f_op_f32(var_3.e - var_2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(434f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -610f)))))), var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e * var_2.d)) * _wgslsmith_f_op_f32(max(1058f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.d, var_1.a, var_2.c.x)) * -231f)))), ~reverseBits(~(~1u)), var_3.a);
    var_1 = var_3;
    var var_5 = _wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_div_f32(-211f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.d, var_1.a) + _wgslsmith_f_op_f32(f32(-1f) * -194f)), _wgslsmith_f_op_f32(-1f), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(select(var_3.d, u_input.a, true), u_input.a, ~34145u), ~vec3<u32>(var_4.x, 0u, 5802u)), _wgslsmith_mod_u32(var_3.d, _wgslsmith_sub_u32(var_3.d, 4294967295u) | _wgslsmith_sub_u32(4294967295u, 11349u)), ~var_3.d, u_input.b.x), vec4<u32>(~(~52301u) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, 0u, 0u), vec3<u32>(var_1.d, 0u, 0u)), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 3602u, var_1.d, 0u), vec4<u32>(var_4.x, 36928u, 0u, 6478u)), var_1.d ^ var_2.b), 11012u, countOneBits(~var_1.d)), var_2.b, vec4<i32>(_wgslsmith_mod_i32(-35841i, -func_1()), _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-31590i, var_0), vec2<i32>(var_0, 6358i)), var_0), reverseBits(11639i), _wgslsmith_dot_vec2_i32(select(~vec2<i32>(-742i, 59093i), vec2<i32>(var_0, var_0), select(var_1.b.zz, vec2<bool>(var_2.a, true), vec2<bool>(var_2.c.x, true))), -vec2<i32>(var_0, -30120i))));
}

