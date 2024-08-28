struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<i32> = vec2<i32>(13844i, 1i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(31603u, 22305u, 1u, 2490u), vec4<u32>(1u, 1u, 1u, 1u)) == max(_wgslsmith_div_u32(_wgslsmith_clamp_u32(35966u, 56158u, 1u), ~0u), 27176u << (_wgslsmith_mult_u32(10061u, 0u) % 32u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 1u, countOneBits(88530u), 1u)), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 38007u, 0u), vec3<u32>(1u, 1u, 4294967295u)) & ~43523u, 1u, 33062u)), !(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), true)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(24751u, 1u)), !any(vec2<bool>(any(vec3<bool>(true, true, false)), global1.x >= -1i)));
    global0 = 1i;
    var var_1 = Struct_3(any(!(!select(vec2<bool>(false, var_0.a), var_0.c.yz, var_0.c.x))), vec4<u32>(1u, ~4294967295u, ~var_0.d, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(54207u, 1u), _wgslsmith_div_u32(19625u, 4294967295u)), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.d, 1u), vec2<u32>(var_0.d, 4294967295u))))));
    var var_2 = _wgslsmith_f_op_f32(1351f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1219f - 522f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1403f - _wgslsmith_div_f32(1238f, -763f)))));
    let var_3 = Struct_3(var_1.a, ~_wgslsmith_sub_vec4_u32(var_0.b, var_1.b));
    return ~(~var_3.b.x);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(Struct_1(!(!all(vec3<bool>(false, true, false))), firstLeadingBit(vec4<u32>(17066u, 14005u, 24420u, 23753u)) ^ firstTrailingBit(~vec4<u32>(0u, 0u, 43723u, 4294967295u)), vec3<bool>(true, func_3() <= _wgslsmith_div_u32(0u, 1u), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), 4294967295u, !select(true, any(vec4<bool>(false, true, true, false)), true)), false, abs(vec2<i32>(1i, -u_input.b ^ (13020i << (0u % 32u)))));
    let var_1 = _wgslsmith_dot_vec3_u32(var_0.a.b.yxz, vec3<u32>(1u, ~reverseBits(~var_0.a.b.x), ~(_wgslsmith_add_u32(var_0.a.b.x, 28931u) & var_0.a.b.x)));
    global0 = u_input.a;
    global1 = ~firstLeadingBit(max(~vec2<i32>(var_0.c.x, global1.x), _wgslsmith_sub_vec2_i32(var_0.c, var_0.c))) & vec2<i32>(-var_0.c.x, firstLeadingBit(var_0.c.x ^ min(u_input.b, u_input.a)));
    let var_2 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, 1u), ~var_1 & _wgslsmith_dot_vec4_u32(var_0.a.b, var_0.a.b), var_1), select(var_0.a.b.xwz << (abs(vec3<u32>(var_1, 0u, 2726u)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 93720u, 105053u), var_0.a.b.wxz, _wgslsmith_mult_vec3_u32(var_0.a.b.xxz, var_0.a.b.zyy)), true)));
    return Struct_3(true, var_0.a.b);
}

fn func_1() -> f32 {
    var var_0 = func_2();
    let var_1 = Struct_1(func_2().a, ~vec4<u32>(reverseBits(~5307u), _wgslsmith_mult_u32(0u, 0u) << (var_0.b.x % 32u), 1u, ~_wgslsmith_div_u32(1u, var_0.b.x)), select(vec3<bool>(any(vec2<bool>(var_0.a, var_0.a)), true, var_0.a), !vec3<bool>(true, true, var_0.b.x >= 15980u), select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(true, !var_0.a, true), vec3<bool>(!var_0.a, true, !var_0.a))), var_0.b.x, true);
    global1 = vec2<i32>(-17443i, abs(select(abs(u_input.b), global1.x, all(vec4<bool>(false, false, var_0.a, false)))) ^ -_wgslsmith_clamp_i32(i32(-1i) * -35834i, _wgslsmith_dot_vec2_i32(vec2<i32>(20165i, 6195i), vec2<i32>(u_input.b, global1.x)), _wgslsmith_div_i32(u_input.b, u_input.a)));
    return 668f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -_wgslsmith_div_vec2_i32(vec2<i32>(~(-42075i), global1.x), vec2<i32>(u_input.b, 11952i)) << (max(firstLeadingBit(~vec2<u32>(4294967295u, 1u)), min(vec2<u32>(4294967295u, 1u), reverseBits(~vec2<u32>(0u, 26591u)))) % vec2<u32>(32u));
    global0 = -u_input.a;
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-1f))) > _wgslsmith_div_f32(-171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1890f + -406f), 1114f))));
    var var_1 = vec2<f32>(403f, -1255f);
    let var_2 = Struct_2(Struct_1(all(vec4<bool>(false, all(vec4<bool>(true, false, false, true)), true, true)), ~vec4<u32>(1u, 1u, 1u, 1u), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), 0u, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), func_2().a))), !(!func_2().a & true), -firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-13774i, u_input.a), vec2<i32>(37009i, -1i))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-925f, _wgslsmith_f_op_f32(sign(-650f))))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * _wgslsmith_f_op_f32(step(var_1.x, var_1.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-995f + var_1.x) - var_1.x)) * _wgslsmith_f_op_f32(-var_1.x)));
}

