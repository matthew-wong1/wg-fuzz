struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec3<bool>) -> u32 {
    var var_0 = ~30975i;
    var var_1 = _wgslsmith_f_op_f32(689f * -309f);
    let var_2 = arg_0.c.yy;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1436f)), _wgslsmith_f_op_f32(exp2(arg_0.d))))));
    let var_3 = Struct_1(arg_0.b.a, false);
    return 1u;
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(u_input.b, 17707u)), _wgslsmith_dot_vec4_u32(vec4<u32>(15742u, 19198u, u_input.b, 1u), vec4<u32>(4294967295u, 7929u, u_input.b, 4294967295u) & vec4<u32>(u_input.b, 129694u, 9583u, u_input.b))), firstTrailingBit(vec2<u32>(40494u, u_input.b))), ~(~vec2<u32>(u_input.b ^ 4294967295u, _wgslsmith_add_u32(30968u, 15451u))));
    global1 = countOneBits(~1u) > min(48792u, ~_wgslsmith_clamp_u32(~1u, 71935u, var_0.x));
    global0 = ~(~75396u);
    var_0 = vec2<u32>(4294967295u, _wgslsmith_mod_u32(min(~func_2(Struct_2(260f, Struct_1(vec3<i32>(u_input.a, u_input.a, 0i), true), vec3<u32>(u_input.b, 4294967295u, u_input.b), 440f, var_0.x), vec2<bool>(true, false), vec2<f32>(-716f, -853f), vec3<bool>(false, true, false)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.x, 4294967295u, u_input.b), vec4<u32>(var_0.x, var_0.x, u_input.b, 5316u)), max(10210u, u_input.b))), abs(min(u_input.b, 1u))));
    global0 = ~(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 36549u, 4294967295u, u_input.b), ~vec4<u32>(u_input.b, u_input.b, 1u, 0u)), firstLeadingBit(73785u)));
    return u_input.c.zwz;
}

fn func_3() -> u32 {
    let var_0 = vec2<bool>(false, select(any(vec3<bool>(true, true, all(vec2<bool>(false, false)))), all(vec3<bool>(true, false, true)), true));
    var var_1 = Struct_1(firstLeadingBit(vec3<i32>(reverseBits(u_input.c.x), 0i, -1i)), select(var_0.x, all(select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, false), select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, var_0.x, true), false))), var_0.x));
    return 21220u;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = func_2(Struct_2(arg_1, Struct_1(abs(vec3<i32>(arg_0.b.a.x, arg_2.a.x, u_input.c.x)), false), arg_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-356f))))), arg_0.c.x << (956u % 32u)), select(select(!(!vec2<bool>(arg_2.b, arg_2.b)), vec2<bool>(true, true), arg_0.b.b), select(select(vec2<bool>(true, arg_2.b), vec2<bool>(true, true), false), !vec2<bool>(arg_2.b, false), vec2<bool>(arg_2.a.x < 27803i, any(vec3<bool>(arg_0.b.b, arg_2.b, arg_0.b.b)))), ((4294967295u | u_input.b) ^ select(u_input.b, 58062u, arg_2.b)) > arg_0.e), vec2<f32>(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -905f))))), select(!vec3<bool>(true, true, arg_2.b), vec3<bool>(all(!vec2<bool>(arg_0.b.b, arg_2.b)), false, arg_0.b.b), select(vec3<bool>(true, !arg_2.b, true), select(!vec3<bool>(true, arg_2.b, true), select(vec3<bool>(true, arg_2.b, true), vec3<bool>(arg_2.b, arg_0.b.b, false), false), u_input.a < 0i), !(arg_0.c.x >= arg_0.e))));
    var var_0 = !select(vec4<bool>(false, true, select(u_input.a != 0i, !arg_0.b.b, arg_2.b), true), select(!select(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, false), vec4<bool>(arg_2.b, true, false, false), vec4<bool>(true, false, true, false)), select(!vec4<bool>(false, true, arg_0.b.b, arg_2.b), !vec4<bool>(false, arg_2.b, true, true), true), vec4<bool>(false, true, any(vec4<bool>(arg_2.b, arg_0.b.b, true, arg_2.b)), true)), select(vec4<bool>(arg_0.a < 1362f, arg_0.b.b, arg_1 > -905f, all(vec3<bool>(arg_2.b, arg_0.b.b, false))), vec4<bool>(select(true, arg_0.b.b, false), -29712i < arg_2.a.x, arg_0.b.b, all(vec2<bool>(arg_2.b, false))), !select(vec4<bool>(true, true, arg_0.b.b, true), vec4<bool>(arg_2.b, true, arg_0.b.b, arg_2.b), false)));
    var var_1 = arg_1;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(317f + _wgslsmith_f_op_f32(f32(-1f) * -582f)), -498f, arg_0.b.b)), Struct_1(arg_2.a, true), min(~vec3<u32>(~u_input.b, 43802u, ~u_input.b), ~(~arg_0.c)), arg_1, _wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(_wgslsmith_mult_u32(func_2(Struct_2(-820f, arg_0.b, vec3<u32>(arg_0.c.x, u_input.b, 4294967295u), arg_1, 55046u), vec2<bool>(arg_0.b.b, var_0.x), vec2<f32>(arg_0.a, arg_1), var_0.zyw), ~0u), arg_0.c.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(37001u, 5074u, 1u, 16212u), vec4<u32>(u_input.b, 1u, arg_0.c.x, 1u))))));
    var var_3 = min(var_2.b.a, -arg_2.a);
    return Struct_1(max(vec3<i32>(func_1().x, firstLeadingBit(max(10061i, arg_2.a.x)), i32(-1i) * -13435i), ~vec3<i32>(0i, 59823i, arg_2.a.x) >> (arg_0.c % vec3<u32>(32u))), !var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_u32(1u, u_input.b);
    let var_0 = vec3<i32>(u_input.a, u_input.c.x, u_input.c.x);
    var var_1 = func_4(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1880f)))), Struct_1(func_1(), !any(vec4<bool>(true, true, false, true))), vec3<u32>(~79087u >> (func_3() % 32u), 4294967295u, firstLeadingBit(1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1538f * _wgslsmith_f_op_f32(213f + 133f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-701f, 888f)))), 1u), 639f, Struct_1(u_input.c.yyy, true));
    let var_2 = _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(1u, 17067u), u_input.b), ~(vec2<u32>(0u, u_input.b) ^ vec2<u32>(1u, 0u))), ~(~(~vec2<u32>(u_input.b, 64167u)))));
    let var_3 = 82446u | ~reverseBits(var_2.x);
    var_1 = func_4(Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -748f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 550f)), false)), func_4(Struct_2(_wgslsmith_f_op_f32(-1520f - 108f), Struct_1(var_0, true), vec3<u32>(var_3, u_input.b, 4294967295u) | vec3<u32>(u_input.b, 0u, 0u), -464f, ~u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(906f * -302f)), func_4(Struct_2(-765f, Struct_1(vec3<i32>(64480i, var_0.x, var_1.a.x), var_1.b), vec3<u32>(45878u, 32403u, u_input.b), 439f, var_2.x), _wgslsmith_f_op_f32(abs(-375f)), Struct_1(var_0, var_1.b))), reverseBits(min(vec3<u32>(10505u, 0u, 1u) << (vec3<u32>(u_input.b, var_2.x, 4294967295u) % vec3<u32>(32u)), vec3<u32>(67977u, 39692u, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(134f, -1750f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2675f)), 1202f))), 0u), 910f, Struct_1(~(~vec3<i32>(103809i, 29805i, var_1.a.x) & vec3<i32>(5285i, u_input.c.x, 4425i)), all(!select(vec3<bool>(true, var_1.b, false), vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, var_1.b)))));
    let var_4 = var_1.b;
    let var_5 = func_4(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f + -596f)))), Struct_1(select(var_0, u_input.c.zyy, vec3<bool>(var_1.b, var_1.b, false)) ^ func_4(Struct_2(-907f, Struct_1(vec3<i32>(-2147483647i, 2147483647i, var_0.x), false), vec3<u32>(1u, 4294967295u, 48900u), 664f, var_3), -300f, Struct_1(vec3<i32>(var_1.a.x, -18686i, u_input.a), true)).a, var_1.b), vec3<u32>(var_2.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3, 1u), vec2<u32>(u_input.b, 1u)), var_2.x), 4294967295u), -681f, var_3), _wgslsmith_f_op_f32(f32(-1f) * -335f), func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-836f))), func_4(Struct_2(-897f, Struct_1(vec3<i32>(-29758i, -16313i, var_1.a.x), var_1.b), vec3<u32>(37937u, 4294967295u, 1766u), 1609f, var_3), 414f, func_4(Struct_2(-731f, Struct_1(vec3<i32>(8997i, -28337i, -8318i), var_1.b), vec3<u32>(var_3, u_input.b, 2400u), 2802f, 41894u), -1518f, Struct_1(vec3<i32>(-191i, 2147483647i, -18012i), var_1.b))), select(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_2.x, 1u), vec3<u32>(var_2.x, var_3, u_input.b)), ~vec3<u32>(var_3, var_3, 43467u), !vec3<bool>(true, true, var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -628f), 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -837f), func_4(Struct_2(_wgslsmith_f_op_f32(min(1606f, 2150f)), func_4(Struct_2(573f, Struct_1(vec3<i32>(var_1.a.x, 0i, var_0.x), true), vec3<u32>(u_input.b, 35563u, var_2.x), -698f, 0u), 294f, Struct_1(vec3<i32>(2147483647i, var_0.x, var_1.a.x), var_1.b)), vec3<u32>(var_2.x, var_2.x, 1u), _wgslsmith_f_op_f32(327f * 175f), ~var_3), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(545f)))), Struct_1(var_1.a, !var_1.b))));
    var_1 = Struct_1(var_0, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.a);
}

