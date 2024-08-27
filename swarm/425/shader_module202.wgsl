struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = 1u;
    let var_1 = select(i32(-1i) * -1i, countOneBits(-arg_1.a.x & -1i), true);
    let var_2 = arg_1;
    let var_3 = arg_1;
    var var_4 = var_1 >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(57397u, var_0), _wgslsmith_sub_u32(var_0, 4294967295u), u_input.a, u_input.a), vec4<u32>(3553u, 4294967295u, 4294967295u, abs(1u))), _wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(var_0, 1u, 14479u, 18409u)), vec4<u32>(4294967295u, ~19104u, ~16432u, ~u_input.a), vec4<u32>(42266u, 1u, ~17239u, ~91682u))) % 32u);
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), 454f) + -128f) * -109f);
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(507f - _wgslsmith_f_op_f32(1763f * -469f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1179f) * -1740f), -510f));
    let var_1 = false;
    var var_2 = arg_0;
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = !vec4<bool>(!select(true, true, false) | true, true, func_4(Struct_1(select(vec2<i32>(30564i, 61048i), vec2<i32>(1i, 0i), vec2<bool>(true, true))), true, select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), func_3(vec3<f32>(1720f, 530f, -310f), Struct_1(vec2<i32>(-1i, 1i)), false))), true);
    let var_1 = vec4<bool>(var_0.x, true, var_0.x, any(var_0));
    let var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(18151i), i32(-1i) * -2147483647i, -5276i, 18638i), vec4<i32>(reverseBits(2147483647i), 2147483647i >> (u_input.a % 32u), 38941i, min(0i, -31600i))), abs(vec4<i32>(1i, 1i, 1i, 1i))) << (firstTrailingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(24675u, 31727u, u_input.a, u_input.a), abs(vec4<u32>(u_input.a, 22973u, u_input.a, 80163u)), ~vec4<u32>(u_input.a, 4294967295u, 27723u, 1u))) % vec4<u32>(32u));
    return Struct_1(abs(var_2.yw));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = ~(~vec2<u32>(~0u, _wgslsmith_div_u32(_wgslsmith_div_u32(42398u, 15659u), 23967u)));
    var var_1 = true;
    var_1 = all(vec3<bool>(any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(ceil(1737f)) >= _wgslsmith_f_op_f32(-2179f * _wgslsmith_f_op_f32(ceil(-1199f))), true));
    let var_2 = select(vec3<bool>(false, !((arg_1 >= arg_1) && true), !any(vec4<bool>(true, true, true, true))), select(vec3<bool>(!(u_input.a > var_0.x), true, any(vec3<bool>(false, true, false))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), (_wgslsmith_div_i32(1i, -1i) & _wgslsmith_mult_i32(arg_0.a.x, 31751i)) == 14114i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_0.a.x, 2147483647i), 0i, -2147483647i, countOneBits(arg_1)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_0.a.x, arg_1, arg_1, 376i), vec4<i32>(arg_1, -1i, -20695i, -49011i), vec4<i32>(-2147483647i, arg_1, -1i, arg_1))) == 1i);
    var_1 = any(vec2<bool>(true, var_2.x));
    return -1144f;
}

fn func_6(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = arg_0.x != arg_0.x;
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-52656i, -1i, -2147483647i), vec3<i32>(-4896i, -1i, 0i)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-37111i, 13537i), vec2<i32>(-41876i, -1i)), 33218i, max(16922i, 1i)), firstLeadingBit(vec4<i32>(82156i, reverseBits(-36556i), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -44167i, 0i, -1i), vec4<i32>(46484i, -19797i, -2147483647i, 0i))))), abs(44401i));
    var var_2 = func_2();
    let var_3 = 2147483647i;
    var_0 = select(u_input.a < (u_input.a >> (1u % 32u)), any(vec3<bool>(false, true, true)) && (true == all(vec4<bool>(true, true, true, true))), true);
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(select(vec2<i32>(-min(arg_1, arg_1), arg_1), ~vec2<i32>(arg_0.a.x, 0i & arg_0.a.x), vec2<bool>(select(4294967295u > u_input.a, true, true), true)));
    var_0 = arg_0;
    let var_1 = func_6(vec3<f32>(_wgslsmith_f_op_f32(func_5(func_2(), arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(645f + -143f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(574f, -1010f))))));
    var var_2 = arg_0;
    let var_3 = var_1;
    return Struct_1(vec2<i32>(7999i, -_wgslsmith_div_i32(-64569i, _wgslsmith_mod_i32(0i, arg_0.a.x))));
}

fn func_7(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = any(select(!select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(false, true, true, true), 1106f <= arg_0), !vec4<bool>(!arg_1, true, arg_1, true), !select(select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), true), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), arg_1))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, -918f, arg_3.x, arg_3.x) * arg_3)))) * arg_3) - vec4<f32>(1174f, 733f, arg_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(873f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_3.x, arg_0))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(arg_3 + vec4<f32>(-1368f, _wgslsmith_div_f32(735f, arg_0), var_1.x, var_1.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(sign(160f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(arg_2, arg_2.a.x)), _wgslsmith_f_op_f32(-var_1.x)))), -109f, _wgslsmith_f_op_f32(-var_1.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(select(arg_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-980f, arg_0, arg_0, var_1.x), arg_3))) + _wgslsmith_div_vec4_f32(arg_3, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, 635f, 206f, 234f), vec4<f32>(2506f, -127f, 940f, arg_0)))))), select(arg_1, any(!(!vec4<bool>(false, false, arg_1, arg_1))), false)));
    return Struct_1(-vec2<i32>(1i, ~(-61036i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(655f, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.a), _wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 16007u), false), firstLeadingBit(vec2<u32>(0u, 104679u)))) >= 1u, func_1(Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-19955i, 1472i), vec2<i32>(1i, 1i), vec2<i32>(-7670i, -4669i))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 53076i, 4408i), countOneBits(vec3<i32>(-27825i, 3300i, 2147483647i))) & 33234i), vec4<f32>(_wgslsmith_f_op_f32(func_5(func_2(), func_1(Struct_1(vec2<i32>(1867i, 15116i)), min(0i, -76599i)).a.x)), -143f, -199f, 1000f));
    var var_1 = -(~vec4<i32>(func_7(_wgslsmith_f_op_f32(floor(425f)), select(false, true, true), Struct_1(var_0.a), _wgslsmith_div_vec4_f32(vec4<f32>(2440f, 584f, 826f, 583f), vec4<f32>(693f, 1623f, 969f, 130f))).a.x, var_0.a.x, _wgslsmith_mult_i32(i32(-1i) * -13870i, 65220i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-20903i, var_0.a.x, -2147483647i, var_0.a.x), vec4<i32>(-1i, -10881i, var_0.a.x, -20475i)))));
    let var_2 = var_1.x & func_2().a.x;
    let var_3 = func_1(func_6(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1682f), 278f, _wgslsmith_f_op_f32(f32(-1f) * -1184f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-508f, -774f, -1000f)))), firstTrailingBit(firstLeadingBit(50372i)));
    var var_4 = Struct_1(select(var_0.a, var_1.xz, vec2<bool>(select(true, true, any(vec3<bool>(false, true, false))), !(8490i <= var_1.x))));
    let var_5 = vec4<u32>(u_input.a, u_input.a, 0u, abs(31157u));
    let var_6 = 66419u;
    var var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2038f, _wgslsmith_f_op_f32(619f * -971f), -255f, _wgslsmith_f_op_f32(f32(-1f) * -116f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1071f, 2258f, -893f, -169f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -369f), 368f, _wgslsmith_f_op_f32(trunc(-1000f)), -1000f))), firstTrailingBit(var_1.ywx), ~vec4<u32>(_wgslsmith_mult_u32(~u_input.a, ~var_5.x), max(_wgslsmith_mod_u32(u_input.a, var_5.x), _wgslsmith_add_u32(u_input.a, u_input.a)), ~(~8535u), ~16038u));
}

