struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(-7296i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(557f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -150f))), true)));
    var var_1 = select(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), !select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, false, true), true, true, false), true), select(select(var_0.a < u_input.a, true, -2147483647i >= var_0.a), true, any(vec3<bool>(true, true, true))) & all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false)))));
    var_1 = vec4<bool>(var_1.x, !var_1.x, all(var_1.xwy), any(var_1.wzy));
    let var_2 = Struct_1(0i, -573f);
    var var_3 = select(!vec2<bool>(select(true, true, false), true), var_1.yy, var_1.x);
    return countOneBits(vec3<u32>(1u, countOneBits(40421u), 0u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -220f);
    var var_2 = Struct_1(u_input.a, arg_1.a.a.x);
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-837f))));
    var var_3 = max(reverseBits(~func_3() >> (~_wgslsmith_add_vec3_u32(vec3<u32>(var_0, 11245u, 4294967295u), vec3<u32>(arg_1.b, 0u, 5646u)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(select(~vec3<u32>(79776u, 4294967295u, arg_2.b), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0, var_0, 5248u), vec3<u32>(1u, 42693u, arg_1.b)), vec3<bool>(true, true, true)), ~(~vec3<u32>(arg_2.b, var_0, 21047u))), _wgslsmith_div_vec3_u32(select(vec3<u32>(arg_2.b, 4294967295u, var_0) | vec3<u32>(0u, arg_2.b, arg_2.b), vec3<u32>(17879u, 1u, 30266u), vec3<bool>(true, false, true)), vec3<u32>(firstLeadingBit(67378u), 9850u, 0u))));
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> bool {
    let var_0 = arg_0.a;
    var var_1 = !select(select(vec3<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(true, false, false)), all(vec2<bool>(true, true))), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true), !(all(vec2<bool>(false, true)) || true));
    let var_2 = func_2(var_0, Struct_3(arg_0.a, arg_0.b), func_2(Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.a)))), Struct_3(func_2(func_2(Struct_2(vec2<f32>(-372f, 1000f)), Struct_3(Struct_2(arg_0.a.a), arg_0.b), Struct_3(arg_0.a, 1u)).a, arg_0, Struct_3(Struct_2(vec2<f32>(arg_0.a.a.x, -112f)), arg_0.b)).a, arg_0.b), func_2(Struct_2(vec2<f32>(var_0.a.x, 662f)), func_2(func_2(Struct_2(var_0.a), Struct_3(Struct_2(vec2<f32>(arg_0.a.a.x, 862f)), arg_0.b), arg_0).a, arg_0, arg_0), Struct_3(Struct_2(vec2<f32>(-1279f, -862f)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.b, 67354u, 29427u), vec4<u32>(0u, 79985u, arg_0.b, 20501u))))));
    let var_3 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(step(arg_0.a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(arg_0.a.a.x, var_2.a.a.x)), _wgslsmith_div_vec2_f32(var_0.a, vec2<f32>(-1170f, arg_1)))))), func_2(var_0, arg_0, func_2(var_0, func_2(var_2.a, func_2(var_2.a, arg_0, var_2), func_2(Struct_2(vec2<f32>(103f, arg_0.a.a.x)), var_2, var_2)), Struct_3(func_2(arg_0.a, arg_0, Struct_3(arg_0.a, 64967u)).a, arg_0.b))), var_2);
    var var_4 = Struct_1(_wgslsmith_div_i32(u_input.a | max(21389i, 52289i), 10269i) >> (~func_2(var_0, func_2(Struct_2(vec2<f32>(905f, -1000f)), var_2, Struct_3(var_0, 123553u)), func_2(Struct_2(var_0.a), arg_0, Struct_3(Struct_2(vec2<f32>(1000f, 1670f)), arg_0.b))).b % 32u), _wgslsmith_f_op_f32(abs(-845f)));
    return true;
}

fn func_5(arg_0: u32, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = func_2(func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(546f, -753f))))), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-901f, 118f), vec2<f32>(-1285f, -698f), false))), ~_wgslsmith_mult_u32(26131u, arg_0)), func_2(func_2(func_2(Struct_2(vec2<f32>(-1417f, 2097f)), Struct_3(Struct_2(vec2<f32>(209f, 941f)), 1u), Struct_3(Struct_2(vec2<f32>(-1075f, -1413f)), 1u)).a, func_2(Struct_2(vec2<f32>(-826f, 1000f)), Struct_3(Struct_2(vec2<f32>(-338f, 1153f)), 70422u), Struct_3(Struct_2(vec2<f32>(575f, 255f)), arg_0)), func_2(Struct_2(vec2<f32>(691f, -2785f)), Struct_3(Struct_2(vec2<f32>(-1317f, 130f)), 1u), Struct_3(Struct_2(vec2<f32>(-719f, 179f)), arg_0))).a, func_2(func_2(Struct_2(vec2<f32>(-469f, -565f)), Struct_3(Struct_2(vec2<f32>(-130f, -611f)), arg_0), Struct_3(Struct_2(vec2<f32>(942f, -243f)), arg_0)).a, Struct_3(Struct_2(vec2<f32>(-1000f, 1272f)), arg_0), func_2(Struct_2(vec2<f32>(-1470f, -372f)), Struct_3(Struct_2(vec2<f32>(403f, 197f)), arg_0), Struct_3(Struct_2(vec2<f32>(193f, -601f)), 1u))), Struct_3(func_2(Struct_2(vec2<f32>(1402f, -1307f)), Struct_3(Struct_2(vec2<f32>(-366f, -1085f)), arg_0), Struct_3(Struct_2(vec2<f32>(885f, -1521f)), arg_0)).a, arg_0))).a, func_2(func_2(func_2(func_2(Struct_2(vec2<f32>(-492f, -1744f)), Struct_3(Struct_2(vec2<f32>(151f, -583f)), arg_0), Struct_3(Struct_2(vec2<f32>(-1053f, 101f)), arg_0)).a, Struct_3(Struct_2(vec2<f32>(-1000f, 2383f)), arg_0), func_2(Struct_2(vec2<f32>(240f, -388f)), Struct_3(Struct_2(vec2<f32>(-1000f, 875f)), 4294967295u), Struct_3(Struct_2(vec2<f32>(-2087f, -1284f)), 33446u))).a, func_2(func_2(Struct_2(vec2<f32>(362f, 1002f)), Struct_3(Struct_2(vec2<f32>(1025f, 988f)), 0u), Struct_3(Struct_2(vec2<f32>(-1382f, 339f)), 16463u)).a, Struct_3(Struct_2(vec2<f32>(344f, 1973f)), 38166u), Struct_3(Struct_2(vec2<f32>(-263f, -1000f)), arg_0)), func_2(Struct_2(vec2<f32>(-1634f, 371f)), func_2(Struct_2(vec2<f32>(1000f, 476f)), Struct_3(Struct_2(vec2<f32>(630f, -1285f)), 0u), Struct_3(Struct_2(vec2<f32>(-2640f, -153f)), 0u)), func_2(Struct_2(vec2<f32>(-903f, 1000f)), Struct_3(Struct_2(vec2<f32>(1652f, -188f)), 1u), Struct_3(Struct_2(vec2<f32>(163f, -265f)), arg_0)))).a, Struct_3(func_2(func_2(Struct_2(vec2<f32>(755f, 755f)), Struct_3(Struct_2(vec2<f32>(1000f, -815f)), 4294967295u), Struct_3(Struct_2(vec2<f32>(875f, -1195f)), arg_0)).a, Struct_3(Struct_2(vec2<f32>(1687f, 369f)), 66154u), func_2(Struct_2(vec2<f32>(1195f, 348f)), Struct_3(Struct_2(vec2<f32>(-1222f, -1457f)), arg_0), Struct_3(Struct_2(vec2<f32>(-154f, -184f)), arg_0))).a, arg_0), func_2(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1341f, -880f) * vec2<f32>(161f, -2047f))), Struct_3(Struct_2(vec2<f32>(215f, 695f)), min(arg_0, arg_0)), Struct_3(func_2(Struct_2(vec2<f32>(-547f, -1410f)), Struct_3(Struct_2(vec2<f32>(1533f, -1056f)), 1u), Struct_3(Struct_2(vec2<f32>(2814f, -1414f)), arg_0)).a, ~arg_0))), func_2(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(426f)), -1000f)), func_2(Struct_2(vec2<f32>(-1645f, 518f)), Struct_3(func_2(Struct_2(vec2<f32>(1546f, -1123f)), Struct_3(Struct_2(vec2<f32>(-1525f, -967f)), arg_0), Struct_3(Struct_2(vec2<f32>(-1000f, -411f)), 133669u)).a, 1u), Struct_3(Struct_2(vec2<f32>(-402f, -281f)), abs(4294967295u))), Struct_3(func_2(Struct_2(vec2<f32>(-442f, 315f)), func_2(Struct_2(vec2<f32>(1292f, -700f)), Struct_3(Struct_2(vec2<f32>(-2424f, -1403f)), arg_0), Struct_3(Struct_2(vec2<f32>(321f, -454f)), 51607u)), Struct_3(Struct_2(vec2<f32>(470f, -971f)), 22258u)).a, 4294967295u))).a;
    var var_1 = Struct_1(~2147483647i, _wgslsmith_f_op_f32(abs(var_0.a.x)));
    var_1 = Struct_1(~(~(-27860i)), var_0.a.x);
    let var_2 = vec4<bool>(select(true, true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1338f, var_1.b)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1533f - -376f) * 1108f)), any(!arg_1), true, !arg_1.x);
    let var_3 = u_input.a;
    return func_2(var_0, func_2(func_2(func_2(Struct_2(vec2<f32>(-1000f, var_0.a.x)), func_2(var_0, Struct_3(var_0, 0u), Struct_3(var_0, 15283u)), func_2(var_0, Struct_3(Struct_2(vec2<f32>(-1325f, -373f)), arg_0), Struct_3(var_0, 0u))).a, func_2(var_0, func_2(var_0, Struct_3(Struct_2(vec2<f32>(-2054f, 1385f)), arg_0), Struct_3(var_0, 23428u)), Struct_3(Struct_2(vec2<f32>(-798f, var_1.b)), 23488u)), Struct_3(func_2(var_0, Struct_3(Struct_2(vec2<f32>(var_0.a.x, var_1.b)), 0u), Struct_3(Struct_2(vec2<f32>(var_1.b, -1458f)), arg_0)).a, min(1u, 4294967295u))).a, func_2(var_0, Struct_3(func_2(var_0, Struct_3(var_0, 1660u), Struct_3(Struct_2(vec2<f32>(var_0.a.x, -715f)), 0u)).a, 84168u), func_2(var_0, func_2(Struct_2(var_0.a), Struct_3(var_0, 0u), Struct_3(Struct_2(var_0.a), arg_0)), Struct_3(var_0, 0u))), func_2(func_2(func_2(Struct_2(var_0.a), Struct_3(var_0, arg_0), Struct_3(var_0, 1u)).a, func_2(var_0, Struct_3(var_0, arg_0), Struct_3(var_0, arg_0)), func_2(Struct_2(var_0.a), Struct_3(Struct_2(var_0.a), 25147u), Struct_3(Struct_2(var_0.a), arg_0))).a, func_2(Struct_2(var_0.a), Struct_3(Struct_2(var_0.a), 4294967295u), Struct_3(var_0, arg_0)), func_2(Struct_2(var_0.a), Struct_3(var_0, arg_0), Struct_3(var_0, arg_0)))), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(-1850f, var_1.b)))), 4294967295u));
}

fn func_6(arg_0: i32, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(0i, 1304f);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_3.a.a, vec2<f32>(-257f, -792f)), vec2<f32>(-1004f, arg_3.a.a.x))))));
    var var_2 = Struct_1(-firstTrailingBit(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, arg_0, u_input.a)), abs(vec3<i32>(arg_0, -2147483647i, -11376i)))), -805f);
    var var_3 = firstLeadingBit(~(~vec2<u32>(~59379u, arg_3.b)));
    let var_4 = abs(-vec2<i32>(-max(14590i, arg_0), -1i));
    return arg_3;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec2<u32> {
    var var_0 = !vec4<bool>(false, 913f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), -855f)), false, true);
    let var_1 = arg_1;
    var_0 = !select(vec4<bool>(var_0.x, true, all(vec2<bool>(true, var_0.x)), false), select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x), !vec4<bool>(var_0.x, false, true, false), select(!vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, true, true, true), var_0.x)), false);
    let var_2 = func_6(u_input.a, vec4<bool>(var_0.x & var_0.x, arg_1.x != -178f, var_0.x, var_0.x), -1441f, func_5(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 8924u), vec2<u32>(3381u, 4294967295u))), vec2<bool>(var_0.x | true, func_4(func_2(Struct_2(var_1), Struct_3(Struct_2(var_1), 2431u), Struct_3(Struct_2(vec2<f32>(arg_1.x, var_1.x)), 4294967295u)), 938f))));
    let var_3 = func_5(var_2.b, vec2<bool>(var_0.x, var_0.x)).a;
    return vec2<u32>(~(var_2.b & 24093u), var_2.b) & countOneBits(vec2<u32>(6643u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.b, var_2.b), ~vec2<u32>(1u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(18249u, 4294967295u), vec2<u32>(64380u, 71309u))) & _wgslsmith_div_vec2_u32(func_1(vec2<f32>(-1213f, 2362f), vec2<f32>(1473f, 260f)), ~vec2<u32>(13434u, 80859u)), ~vec2<u32>(1u, 0u << (0u % 32u)), true);
    var_0 = select(vec2<u32>(func_6(~u_input.a, select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), -1330f, func_6(u_input.a, vec4<bool>(false, true, false, true), 1655f, Struct_3(Struct_2(vec2<f32>(-1455f, -1000f)), var_0.x))).b << (_wgslsmith_sub_u32(54366u, 18725u) % 32u), _wgslsmith_div_u32(reverseBits(firstTrailingBit(var_0.x)), _wgslsmith_sub_u32(reverseBits(var_0.x), var_0.x))), vec2<u32>(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(284f, -1886f) - vec2<f32>(1396f, -593f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(569f, 157f)))).x, var_0.x) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), 1u), countOneBits(func_3().xx), vec2<u32>(max(1u, var_0.x), 20640u)) % vec2<u32>(32u)), !(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), true)));
    let var_1 = Struct_1(1i << ((var_0.x | var_0.x) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f * _wgslsmith_f_op_f32(-2130f + _wgslsmith_f_op_f32(1059f + -531f)))));
    var_0 = vec2<u32>(1u, _wgslsmith_sub_u32(0u << (var_0.x % 32u), 0u));
    var_0 = _wgslsmith_mod_vec2_u32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-225f, var_1.b)))), vec2<f32>(302f, var_1.b)) | countOneBits(_wgslsmith_add_vec2_u32(abs(vec2<u32>(var_0.x, var_0.x)), vec2<u32>(1u, 1u) & vec2<u32>(53799u, var_0.x))), ~select(vec2<u32>(var_0.x, var_0.x), countOneBits(vec2<u32>(16612u, 49889u)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(119982u, var_0.x), vec2<u32>(var_0.x, 4294967295u)) % vec2<u32>(32u)), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~(~4294967295u), reverseBits(~1u)), vec3<u32>(17068u, firstTrailingBit(~4132u) ^ func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b, -452f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 302f), vec2<f32>(317f, -613f)))).x, countOneBits(_wgslsmith_div_u32(_wgslsmith_sub_u32(9807u, var_0.x), ~var_0.x))), var_1.a, max(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 29194i, var_1.a), vec3<i32>(7645i, var_1.a, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.a, u_input.a, -2147483647i), vec4<i32>(var_1.a, u_input.a, var_1.a, var_1.a))), reverseBits(~vec2<i32>(var_1.a, 1i))), select(-(~vec2<i32>(-1i, u_input.a)), abs(~vec2<i32>(0i, u_input.a)), true)), var_0.x);
}

