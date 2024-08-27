struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(100f, 915f), vec3<f32>(1279f, -334f, -1000f), -23963i, 4294967295u, vec4<f32>(-1021f, 2117f, 121f, 1000f));

var<private> global1: bool;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_2(1i, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.e.xy - _wgslsmith_f_op_vec2_f32(select(global0.b.zx, vec2<f32>(-1862f, 112f), vec2<bool>(true, false))))), vec3<f32>(global0.a.x, global0.e.x, 2525f), (i32(-1i) * -41474i) << ((_wgslsmith_mult_u32(u_input.b, u_input.b) << (select(1u, 4294967295u, true) % 32u)) % 32u), 77374u, _wgslsmith_f_op_vec4_f32(global0.e - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1578f), _wgslsmith_f_op_f32(-665f - global0.a.x), _wgslsmith_f_op_f32(abs(1944f)), _wgslsmith_f_op_f32(sign(-255f))))), global0.c, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(global0.b.x * 245f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x - -561f) + _wgslsmith_f_op_f32(select(-1721f, global0.b.x, false)))), global0.e.xwy, ~(u_input.e | u_input.d) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 590u, 1u), vec4<u32>(118640u, 28569u, global0.d, u_input.b)) | u_input.b) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4864u, 60906u, global0.d, 1u), (vec4<u32>(u_input.b, 1u, 18562u, 4294967295u) ^ vec4<u32>(1u, global0.d, 1u, u_input.b)) ^ ~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), global0.e));
    var_0 = Struct_2(global0.c, var_0.d, i32(-1i) * -41564i, var_0.b);
    let var_1 = 362f;
    let var_2 = vec4<u32>(27976u, countOneBits(~50718u), u_input.b, 1u);
    var var_3 = var_0.b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_3.e))) + global0.e);
}

fn func_2() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -403f), -781f, 199f, -494f)), _wgslsmith_f_op_vec4_f32(func_3()), vec4<bool>(false, true & all(vec2<bool>(false, false)), false, any(vec3<bool>(false, true, true)) | true)))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_clamp_i32(global0.c, max(-reverseBits(arg_2.c), 7909i), 2147483647i), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3.x, 505f), vec2<f32>(arg_2.e.x, -477f)))))), global0.e.wzx, u_input.c << (countOneBits(_wgslsmith_div_u32(u_input.b, 0u)) % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(arg_1, 1u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e * vec4<f32>(-150f, 371f, 126f, arg_0)) * vec4<f32>(arg_3.x, arg_2.a.x, global0.e.x, 311f)), vec4<f32>(_wgslsmith_f_op_f32(436f + arg_3.x), 1171f, _wgslsmith_f_op_f32(round(538f)), -1801f), true))), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-20400i, u_input.e), ~vec2<i32>(arg_2.c, -8711i)), global0.c), Struct_1(vec2<f32>(arg_2.e.x, 779f), vec3<f32>(_wgslsmith_f_op_f32(step(arg_0, -661f)), 326f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.a.x, global0.b.x), _wgslsmith_f_op_f32(global0.e.x - global0.e.x)))), _wgslsmith_div_i32(u_input.d, 39484i), arg_2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1004f, 1000f, arg_2.b.x, arg_0)))));
    let var_1 = ~max(vec2<u32>(~u_input.b, ~select(arg_2.d, 2317u, false)), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_1, 54604u), vec2<u32>(arg_2.d, 4294967295u), vec2<u32>(arg_2.d, arg_2.d) ^ vec2<u32>(arg_2.d, arg_1)), ~vec2<u32>(61682u, 0u) << (vec2<u32>(77323u, arg_1) % vec2<u32>(32u))));
    var var_2 = select(!vec3<bool>(!all(vec4<bool>(false, false, false, true)), true, _wgslsmith_f_op_f32(arg_3.x + -202f) > _wgslsmith_f_op_f32(-var_0.b.e.x)), !vec3<bool>(select(false, true, all(vec2<bool>(false, true))), !any(vec3<bool>(false, false, false)), true), true);
    var var_3 = var_0.d;
    let var_4 = var_0;
    return var_0.b;
}

fn func_1() -> Struct_1 {
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), global0.d, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(942f, -799f), vec2<f32>(588f, global0.b.x), true)) * _wgslsmith_f_op_vec2_f32(global0.e.yx * vec2<f32>(1172f, global0.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1188f, -1000f, global0.a.x) * global0.b)), i32(-1i) * -46923i, 24127u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.b.x, 189f), -227f, global0.b.x, global0.e.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-209f, global0.e.x, 2271f, global0.b.x) + vec4<f32>(-1400f, global0.e.x, -561f, 187f)), _wgslsmith_f_op_vec4_f32(func_2())))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.b.yx))));
    global1 = (all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), true)) | (u_input.d < (_wgslsmith_sub_i32(-1i, u_input.e) >> (u_input.b % 32u)))) || all(vec3<bool>(false, all(vec3<bool>(true, true, true)), !(global0.b.x == -876f)));
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1381f) + _wgslsmith_div_f32(-139f, 1200f)), global0.a.x)), u_input.b, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1165f * global0.e.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0.e.x))))), u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(func_4(252f, 77346u, Struct_1(global0.b.xx, vec3<f32>(global0.a.x, 686f, global0.b.x), u_input.d, 39109u, vec4<f32>(global0.e.x, global0.b.x, global0.e.x, -407f)), global0.a).b.xy * _wgslsmith_f_op_vec2_f32(select(global0.b.zy, vec2<f32>(1051f, global0.e.x), vec2<bool>(true, true)))), global0.b, 50056i, _wgslsmith_mod_u32(~82701u, firstTrailingBit(5368u)), vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(493f * 1149f), _wgslsmith_f_op_f32(global0.e.x - -852f), -314f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-691f, global0.e.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-444f, -483f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.a)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2()).xw))));
    let var_1 = func_4(_wgslsmith_f_op_f32(-var_0.e.x), ~var_0.d, Struct_1(var_0.b.yy, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(-566f, var_0.b.x, var_0.e.x)) + var_0.e.zxy))), ~_wgslsmith_clamp_i32(2147483647i, global0.c, _wgslsmith_div_i32(global0.c, 2147483647i)), var_0.d, vec4<f32>(-1197f, var_0.e.x, _wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), any(vec2<bool>(true, true)))), 1295f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.e.yy, vec2<f32>(-541f, -420f))) * vec2<f32>(_wgslsmith_div_f32(global0.a.x, global0.b.x), _wgslsmith_f_op_f32(abs(-887f)))) - var_0.b.xz));
    var var_2 = ~firstLeadingBit(vec3<i32>(var_1.c, var_0.c >> (_wgslsmith_sub_u32(var_0.d, 69428u) % 32u), var_1.c));
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    global1 = (_wgslsmith_sub_u32(~34246u, select(u_input.b, _wgslsmith_mod_u32(0u, 44964u), global0.e.x < -1098f)) <= global0.d) != arg_3.x;
    let var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(arg_2.d.d, u_input.b)), vec2<u32>(4294967295u, 59329u) & vec2<u32>(u_input.b, arg_2.d.d)), ~(~54647u), ~arg_0.d.d, 4294967295u), abs(~firstTrailingBit(vec4<u32>(arg_0.b.d, 16035u, 51605u, 55566u))));
    global1 = false;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2()).yy * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.a.x), arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(773f, arg_1)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-435f))), global0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-652f * -709f)))), _wgslsmith_clamp_i32(-1i, -23703i, u_input.e), reverseBits(~u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), 1086f, 533f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    global0 = func_5(Struct_2(u_input.a.x, func_1(), _wgslsmith_div_i32(9172i, _wgslsmith_add_i32(min(0i, u_input.c), -29185i)), Struct_1(var_0.zy, global0.b, reverseBits(global0.c & -45063i), _wgslsmith_add_u32(~5491u, _wgslsmith_add_u32(0u, u_input.b)), _wgslsmith_div_vec4_f32(vec4<f32>(-960f, -581f, var_0.x, 798f), global0.e))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(trunc(global0.e.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), global0.b.x, any(vec3<bool>(false, true, false))))), Struct_2(_wgslsmith_dot_vec2_i32(u_input.a.xx, ~firstTrailingBit(vec2<i32>(u_input.a.x, global0.c))), func_1(), 35908i ^ abs(u_input.a.x), func_4(831f, u_input.b, Struct_1(global0.b.yy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 428f, 601f)), 0i, u_input.b, vec4<f32>(-382f, global0.b.x, 333f, var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -1000f), _wgslsmith_f_op_f32(830f + 854f)))), vec4<bool>(any(vec2<bool>(true, true)) | true, false, reverseBits(firstLeadingBit(global0.d)) <= 0u, !(!(global0.e.x >= -299f))));
    global0 = func_5(Struct_2(firstLeadingBit(-1i), func_4(-742f, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 25811u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 0u)), func_4(_wgslsmith_div_f32(var_0.x, -327f), ~4294967295u, func_4(-406f, 37464u, Struct_1(var_0.yx, global0.b, 1i, global0.d, global0.e), var_0.yz), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a.x, var_0.x)))), global0.b.xx), global0.c, Struct_1(var_0.zy, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.e.yxy), global0.b)), ~(i32(-1i) * -7947i), u_input.b, vec4<f32>(780f, _wgslsmith_div_f32(-398f, var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(var_0.x * 168f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) + _wgslsmith_f_op_f32(step(var_0.x, 1000f))))), Struct_2(~(~(-53084i)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.xx), _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(exp2(global0.e.xzy))), -(global0.c << (u_input.b % 32u)), 1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, global0.d, 0u), vec3<u32>(global0.d, global0.d, 40068u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1934f, 964f, global0.e.x, global0.b.x)))), -30769i, Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.zz), global0.e.wxx, u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(10659u, u_input.b), vec2<u32>(u_input.b, global0.d)), vec2<u32>(u_input.b, 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 1825f, 128f, 350f))) - global0.e))), select(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), any(vec3<bool>(true, false, false))), !vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, false)), true, select(true, false, false)), select(vec4<bool>(false, true, select(true, false, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true), true))));
    global1 = all(select(vec4<bool>(true, true, true, true), !vec4<bool>(u_input.c > global0.c, all(vec3<bool>(false, true, false)), all(vec3<bool>(false, true, true)), true), vec4<bool>(!select(false, true, true), all(vec4<bool>(true, true, true, false)) & (global0.d > 30760u), true, any(vec4<bool>(true, true, false, false)))));
    var var_1 = Struct_2(_wgslsmith_mod_i32(~2147483647i, global0.c), Struct_1(var_0.xz, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 178f, 181f), global0.b), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -45545i, 1i, -u_input.c, 25421i), (vec4<i32>(-2791i, u_input.d, -2147483647i, 2147483647i) & vec4<i32>(u_input.e, u_input.d, -2147483647i, u_input.e)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global0.d, 15607u, global0.d, global0.d), vec4<u32>(1u, 74190u, 4294967295u, global0.d)) % vec4<u32>(32u))), ~func_5(Struct_2(u_input.c, Struct_1(vec2<f32>(var_0.x, global0.e.x), vec3<f32>(global0.a.x, -1007f, var_0.x), global0.c, 0u, global0.e), 41230i, Struct_1(global0.b.xy, vec3<f32>(-1089f, var_0.x, var_0.x), u_input.a.x, 4294967295u, global0.e)), _wgslsmith_f_op_f32(1335f + var_0.x), Struct_2(0i, Struct_1(vec2<f32>(var_0.x, global0.a.x), global0.b, 2147483647i, global0.d, vec4<f32>(659f, -538f, 1374f, var_0.x)), global0.c, Struct_1(vec2<f32>(global0.b.x, global0.e.x), global0.b, -1i, u_input.b, vec4<f32>(global0.e.x, 711f, global0.e.x, -366f))), vec4<bool>(false, false, false, false)).d, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.a.x)), -343f), global0.a.x, _wgslsmith_f_op_vec4_f32(func_2()).x, var_0.x)), ~(-1i), func_4(_wgslsmith_f_op_f32(abs(var_0.x)), ~global0.d, Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.xy * global0.b.xy))), _wgslsmith_f_op_vec3_f32(-func_1().e.xwz), u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(9535u, 1u), vec2<u32>(global0.d, global0.d)) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global0.d), vec2<u32>(u_input.b, global0.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1650f, var_0.x, 551f, var_0.x)))), global0.e.yy));
    let var_2 = true;
    let var_3 = 33672u << (u_input.b % 32u);
    global1 = all(vec3<bool>(var_2, var_2, all(vec4<bool>(true, var_2, false & var_2, !var_2))));
    let var_4 = select(!vec4<bool>(var_2, select(var_2, true, true), !all(vec4<bool>(var_2, var_2, true, true)), !var_2), !(!vec4<bool>(all(vec4<bool>(true, false, var_2, var_2)), true, false & var_2, true)), vec4<bool>(all(select(!vec2<bool>(var_2, true), !vec2<bool>(false, var_2), select(false, var_2, var_2))), any(select(select(vec4<bool>(var_2, var_2, false, false), vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(true, var_2, true, true)), !vec4<bool>(var_2, var_2, true, true), false)), true, select(false, var_2, 1635f >= var_1.b.e.x) || true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(var_3, global0.d, 4294967295u, u_input.b)), vec4<u32>(54794u, var_3, firstLeadingBit(1u), firstTrailingBit(var_3))), u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-295f, var_1.d.b.x))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b.b.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b.a.x, -1533f)))))) * _wgslsmith_f_op_vec2_f32(select(var_1.d.a, var_1.d.b.yx, !var_4.x))));
}

