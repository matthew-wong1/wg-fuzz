struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-165f, vec3<u32>(0u, 4294967295u, 4294967295u), vec2<f32>(-1113f, 251f)), Struct_1(-1003f, vec3<u32>(13873u, 42242u, 4294967295u), vec2<f32>(-1000f, 295f)), Struct_1(-621f, vec3<u32>(40889u, 36245u, 1u), vec2<f32>(-170f, -387f)), Struct_1(-965f, vec3<u32>(84325u, 4294967295u, 70760u), vec2<f32>(279f, 1833f)), Struct_1(-790f, vec3<u32>(4294967295u, 0u, 53795u), vec2<f32>(744f, -338f)), Struct_1(570f, vec3<u32>(17933u, 1u, 0u), vec2<f32>(-812f, 1784f)), Struct_1(-319f, vec3<u32>(0u, 24025u, 0u), vec2<f32>(-705f, -1147f)), Struct_1(1020f, vec3<u32>(4294967295u, 0u, 25773u), vec2<f32>(-227f, -328f)), Struct_1(-1781f, vec3<u32>(1u, 4294967295u, 36566u), vec2<f32>(-565f, -163f)), Struct_1(-1000f, vec3<u32>(0u, 4294967295u, 1u), vec2<f32>(1992f, -480f)), Struct_1(-290f, vec3<u32>(45415u, 4294967295u, 45026u), vec2<f32>(1519f, -983f)), Struct_1(223f, vec3<u32>(4294967295u, 0u, 39641u), vec2<f32>(337f, 110f)), Struct_1(686f, vec3<u32>(1u, 24519u, 4294967295u), vec2<f32>(-1000f, 504f)), Struct_1(1308f, vec3<u32>(33341u, 47824u, 0u), vec2<f32>(1008f, 973f)), Struct_1(480f, vec3<u32>(0u, 15625u, 44787u), vec2<f32>(-758f, 390f)), Struct_1(-1373f, vec3<u32>(0u, 22640u, 3574u), vec2<f32>(-912f, 605f)), Struct_1(-228f, vec3<u32>(1u, 0u, 4294967295u), vec2<f32>(428f, -931f)), Struct_1(728f, vec3<u32>(9794u, 4294967295u, 4294967295u), vec2<f32>(-1339f, 499f)), Struct_1(1689f, vec3<u32>(0u, 59631u, 0u), vec2<f32>(970f, -618f)), Struct_1(-1189f, vec3<u32>(53978u, 25205u, 39450u), vec2<f32>(-1790f, -333f)), Struct_1(-166f, vec3<u32>(0u, 93441u, 25174u), vec2<f32>(751f, 808f)), Struct_1(2281f, vec3<u32>(0u, 1u, 28007u), vec2<f32>(-832f, 1215f)), Struct_1(-2322f, vec3<u32>(37791u, 0u, 3246u), vec2<f32>(317f, 1959f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = arg_3.c;
    var var_1 = firstLeadingBit(1u);
    var var_2 = arg_1;
    var var_3 = arg_3;
    var var_4 = Struct_1(-1368f, ~(~vec3<u32>(~33273u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 64675u, 40609u, 4294967295u), vec4<u32>(56736u, u_input.b, var_3.b.x, 50294u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_3.c))))));
    return vec3<bool>(arg_0.x, false, arg_0.x);
}

fn func_2() -> Struct_1 {
    let var_0 = max(0u, _wgslsmith_clamp_u32(88886u, 11253u, firstLeadingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 100114u)), vec3<u32>(u_input.b, u_input.b, 4294967295u) >> (vec3<u32>(29268u, 101754u, 80711u) % vec3<u32>(32u))))));
    let var_1 = 299f;
    var var_2 = global0[_wgslsmith_index_u32(u_input.b, 23u)];
    let var_3 = var_2.b.zz;
    let var_4 = select(select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), any(vec3<bool>(true, false, true))), !func_3(select(vec2<bool>(false, true), vec2<bool>(false, true), true), all(vec3<bool>(false, true, false)), vec2<u32>(1u, 0u), global0[_wgslsmith_index_u32(var_0, 23u)]), !((u_input.a << (49840u % 32u)) <= u_input.a)), !vec3<bool>(false, true, !any(vec3<bool>(true, true, false))), _wgslsmith_sub_i32(u_input.a, 8150i) <= countOneBits(u_input.a));
    return global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(38618u >> (~(var_0 << (u_input.b % 32u)) % 32u), _wgslsmith_div_u32(reverseBits(88990u << (var_0 % 32u)), abs(49563u))), 23u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = true && !(!all(vec2<bool>(true, true)));
    let var_1 = func_2();
    var var_2 = arg_0.c.x;
    var var_3 = ~var_1.b;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -743f);
    return firstLeadingBit(max(reverseBits(-u_input.a) << (firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.b.xz, var_3.zx)) % 32u), 17976i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = ~func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1626f, -2023f))), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 8673u, 100929u), vec3<u32>(u_input.b, 92285u, 56474u), vec3<u32>(u_input.b, 0u, 38847u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-580f, 553f) - vec2<f32>(1121f, 597f)))), global0[_wgslsmith_index_u32(0u, 23u)]);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1384f)))), vec3<u32>(_wgslsmith_sub_u32(u_input.b, 5993u), u_input.b, 4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1080f, -824f) + vec2<f32>(-1004f, 732f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1946f, -1598f), vec2<f32>(-711f, 111f))))));
    var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_2.b.x, countOneBits(u_input.b)), ~var_2.b), reverseBits(~(abs(u_input.b) >> (~u_input.b % 32u))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c.x))), ~firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.b, vec3<u32>(32310u, var_2.b.x, var_2.b.x)), func_2().b)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.c.x))), 823f));
    var var_4 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(388f);
}

