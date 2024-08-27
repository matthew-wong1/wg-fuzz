struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_3(Struct_1(899f, -24967i, vec3<i32>(22589i, 0i, 29396i), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(149f, -1i, vec3<i32>(0i, 0i, -12053i), vec4<bool>(false, true, true, false)), 4294967295u), 4294967295u), -20468i, 715f), Struct_4(Struct_3(Struct_1(525f, -60397i, vec3<i32>(1i, -21815i, -21008i), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(748f, 54439i, vec3<i32>(0i, 2147483647i, 1i), vec4<bool>(false, false, true, false)), 0u), 0u), 47165i, -462f), Struct_4(Struct_3(Struct_1(888f, 23334i, vec3<i32>(47262i, 1i, i32(-2147483648)), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(899f, 1i, vec3<i32>(-17079i, 15488i, 1i), vec4<bool>(false, false, true, true)), 4294967295u), 6538u), 55822i, -905f), Struct_4(Struct_3(Struct_1(1000f, -1i, vec3<i32>(i32(-2147483648), -1i, -24890i), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(1000f, i32(-2147483648), vec3<i32>(i32(-2147483648), 21611i, -16054i), vec4<bool>(true, false, true, true)), 1u), 22079u), -1i, -1000f), Struct_4(Struct_3(Struct_1(240f, 2147483647i, vec3<i32>(-38511i, i32(-2147483648), -7922i), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(236f, 30251i, vec3<i32>(0i, 2147483647i, 2147483647i), vec4<bool>(true, true, true, false)), 0u), 49890u), -15683i, -834f), Struct_4(Struct_3(Struct_1(-929f, 1i, vec3<i32>(-15351i, 2147483647i, 18658i), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(-398f, 63044i, vec3<i32>(8771i, 0i, 2147483647i), vec4<bool>(false, false, false, true)), 16896u), 1u), 0i, -912f), Struct_4(Struct_3(Struct_1(773f, 1i, vec3<i32>(0i, 35806i, -1076i), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(212f, -8360i, vec3<i32>(-23649i, 1i, -25528i), vec4<bool>(true, false, true, false)), 1u), 1u), 0i, -1698f), Struct_4(Struct_3(Struct_1(302f, 46368i, vec3<i32>(26637i, -19419i, -7761i), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(-656f, i32(-2147483648), vec3<i32>(-1333i, -19924i, 2147483647i), vec4<bool>(false, false, false, false)), 52979u), 5946u), 5728i, -1297f), Struct_4(Struct_3(Struct_1(-870f, 10255i, vec3<i32>(2147483647i, -5173i, 0i), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(663f, -2170i, vec3<i32>(0i, -29148i, 7201i), vec4<bool>(false, false, false, true)), 0u), 1u), -42732i, -159f), Struct_4(Struct_3(Struct_1(-382f, 40841i, vec3<i32>(i32(-2147483648), -1i, 46660i), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(1252f, -1i, vec3<i32>(-10595i, 0i, 2147483647i), vec4<bool>(true, false, false, false)), 4294967295u), 34714u), -1i, 1394f), Struct_4(Struct_3(Struct_1(856f, -1i, vec3<i32>(2918i, 0i, -2973i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(325f, 0i, vec3<i32>(36015i, 57565i, 1i), vec4<bool>(true, true, true, false)), 0u), 0u), 0i, -1035f), Struct_4(Struct_3(Struct_1(-838f, -1i, vec3<i32>(-1i, 1i, 31433i), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(-282f, -28917i, vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, true, false, false)), 58486u), 4294967295u), 2147483647i, -153f), Struct_4(Struct_3(Struct_1(-1320f, 1i, vec3<i32>(-31757i, 1i, -9674i), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(-428f, -13040i, vec3<i32>(1i, 0i, 1i), vec4<bool>(false, true, true, false)), 0u), 2941u), 62365i, -1008f), Struct_4(Struct_3(Struct_1(-936f, 0i, vec3<i32>(2147483647i, 1i, 2147483647i), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(426f, 0i, vec3<i32>(24031i, 1i, -10082i), vec4<bool>(false, false, true, true)), 3088u), 32194u), 0i, 1000f), Struct_4(Struct_3(Struct_1(-394f, -2018i, vec3<i32>(379i, 1i, -36757i), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(-229f, -39869i, vec3<i32>(0i, i32(-2147483648), -1i), vec4<bool>(false, true, false, false)), 4294967295u), 4983u), -15226i, -1258f), Struct_4(Struct_3(Struct_1(-193f, 0i, vec3<i32>(-28986i, 8343i, -38047i), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(-418f, 27018i, vec3<i32>(10762i, i32(-2147483648), 25535i), vec4<bool>(false, true, true, false)), 39216u), 12704u), -36116i, 344f), Struct_4(Struct_3(Struct_1(733f, 3226i, vec3<i32>(-4944i, 6053i, 27517i), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(1459f, 955i, vec3<i32>(0i, -17844i, 0i), vec4<bool>(true, false, true, false)), 59864u), 1u), 1i, -1044f), Struct_4(Struct_3(Struct_1(-714f, 1i, vec3<i32>(0i, 14550i, -1817i), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(1027f, i32(-2147483648), vec3<i32>(i32(-2147483648), 1i, -45180i), vec4<bool>(true, false, true, false)), 0u), 4294967295u), 19448i, 191f), Struct_4(Struct_3(Struct_1(237f, 46247i, vec3<i32>(4522i, 36711i, 43601i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(-127f, -6296i, vec3<i32>(-1i, 1i, 2147483647i), vec4<bool>(true, true, false, true)), 39619u), 4294967295u), 40026i, -1025f), Struct_4(Struct_3(Struct_1(293f, -4383i, vec3<i32>(-63890i, 1i, i32(-2147483648)), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(111f, -7757i, vec3<i32>(i32(-2147483648), i32(-2147483648), -6008i), vec4<bool>(true, true, true, false)), 4294967295u), 7492u), 1i, 626f), Struct_4(Struct_3(Struct_1(-1731f, -49338i, vec3<i32>(2147483647i, -21722i, -1i), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(-415f, -1i, vec3<i32>(2147483647i, 0i, 1i), vec4<bool>(false, false, false, false)), 20330u), 24245u), 2147483647i, -541f), Struct_4(Struct_3(Struct_1(-2755f, -24283i, vec3<i32>(2147483647i, i32(-2147483648), 227i), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(576f, -9161i, vec3<i32>(i32(-2147483648), 3710i, -8623i), vec4<bool>(true, true, true, false)), 1u), 21018u), 0i, 1234f), Struct_4(Struct_3(Struct_1(649f, 0i, vec3<i32>(2147483647i, 1i, -1i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(-404f, 23331i, vec3<i32>(-1i, -9885i, 0i), vec4<bool>(true, true, false, false)), 106065u), 4294967295u), 11078i, -1000f), Struct_4(Struct_3(Struct_1(933f, i32(-2147483648), vec3<i32>(1i, 0i, 16818i), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(1155f, -37443i, vec3<i32>(2147483647i, -21727i, 15622i), vec4<bool>(true, true, true, false)), 4294967295u), 1u), -27331i, 1731f), Struct_4(Struct_3(Struct_1(-963f, -47221i, vec3<i32>(-28402i, 87777i, -18449i), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(705f, 57078i, vec3<i32>(-12078i, 1i, -53947i), vec4<bool>(false, false, false, true)), 10966u), 52532u), -13119i, -558f), Struct_4(Struct_3(Struct_1(1256f, 3340i, vec3<i32>(2147483647i, 8022i, 2167i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(-1154f, 13475i, vec3<i32>(-32288i, 34915i, 13252i), vec4<bool>(true, false, true, true)), 0u), 40707u), i32(-2147483648), -549f), Struct_4(Struct_3(Struct_1(-365f, -69201i, vec3<i32>(26161i, -1i, -34429i), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(-839f, 16560i, vec3<i32>(1i, 0i, -39598i), vec4<bool>(true, false, false, false)), 4294967295u), 29463u), i32(-2147483648), -192f), Struct_4(Struct_3(Struct_1(249f, 2147483647i, vec3<i32>(55109i, -3808i, -3178i), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(-520f, 1i, vec3<i32>(-1i, -1i, 26640i), vec4<bool>(false, false, false, true)), 36850u), 1u), i32(-2147483648), 425f), Struct_4(Struct_3(Struct_1(-1345f, i32(-2147483648), vec3<i32>(40456i, 1i, -1i), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(-232f, 10311i, vec3<i32>(i32(-2147483648), 1i, -1i), vec4<bool>(false, true, false, true)), 22811u), 4294967295u), -1175i, 422f), Struct_4(Struct_3(Struct_1(803f, 13105i, vec3<i32>(i32(-2147483648), 17328i, 22825i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(-721f, 28798i, vec3<i32>(-37690i, i32(-2147483648), 2147483647i), vec4<bool>(false, false, false, false)), 33741u), 8744u), -1i, 1000f), Struct_4(Struct_3(Struct_1(183f, 2147483647i, vec3<i32>(0i, -40115i, -11302i), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(468f, -1i, vec3<i32>(i32(-2147483648), 14726i, 21954i), vec4<bool>(true, true, true, true)), 34870u), 1u), 1i, 141f), Struct_4(Struct_3(Struct_1(-804f, -52136i, vec3<i32>(-34879i, 23355i, -28345i), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(-187f, 1i, vec3<i32>(24883i, -1i, i32(-2147483648)), vec4<bool>(false, false, true, false)), 27686u), 4294967295u), 2147483647i, 1441f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: bool) -> u32 {
    global0 = array<Struct_4, 32>();
    let var_0 = !select(!(!vec2<bool>(true, arg_2)), vec2<bool>(true, true), vec2<bool>(arg_2, any(vec2<bool>(true, true))));
    let var_1 = arg_1.x;
    var var_2 = vec3<bool>(all(select(!vec2<bool>(var_0.x, arg_2), vec2<bool>(false, true), select(var_0, vec2<bool>(false, var_0.x), var_0))) || true, any(select(!vec3<bool>(arg_2, var_0.x, true), vec3<bool>(true, true, var_0.x & false), any(select(vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(var_0.x, false, true, var_0.x), true)))), true);
    let var_3 = countOneBits(vec3<u32>(arg_0.x, u_input.c, (14553u >> (0u % 32u)) & ~u_input.d.x));
    return u_input.c;
}

fn func_2(arg_0: vec2<bool>) -> vec3<i32> {
    global0 = array<Struct_4, 32>();
    global0 = array<Struct_4, 32>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-471f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(117f, 127f)), 783f, _wgslsmith_f_op_f32(trunc(654f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1212f, 1296f, -858f, -630f), _wgslsmith_f_op_vec4_f32(vec4<f32>(159f, 1479f, 2396f, -1140f) - vec4<f32>(814f, -592f, 1771f, -1518f))))))));
    let var_1 = ~(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 13435u, u_input.d.x, ~u_input.d.x), vec4<u32>(97295u, 1u, func_3(vec4<u32>(u_input.c, u_input.d.x, u_input.c, u_input.d.x), u_input.a, true), 1u >> (u_input.c % 32u))) << (~(~vec4<u32>(1u, 4294967295u, 1u, u_input.d.x) << (vec4<u32>(1u, 49808u, 1u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f) + _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(select(-355f, var_0.x, !arg_0.x)), true)) * _wgslsmith_f_op_f32(-var_0.x)), reverseBits(~firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, u_input.a.x))), -u_input.a, !(!vec4<bool>(true, false, true, !arg_0.x)));
    return vec3<i32>(select(max(var_2.b, u_input.b) >> (4294967295u % 32u), u_input.b, false), ~var_2.b, var_2.c.x);
}

fn func_1() -> vec2<i32> {
    global0 = array<Struct_4, 32>();
    var var_0 = u_input.a;
    var_0 = min(func_2(!vec2<bool>(select(true, false, false), all(vec2<bool>(false, false)))), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2143f);
    var var_2 = vec4<bool>(true, true, true, true);
    return -func_2(vec2<bool>(var_2.x, var_2.x)).xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_sub_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 1i) & u_input.a.zx, u_input.a.xz)), ~(~vec2<i32>(u_input.a.x, u_input.a.x))), true);
    var var_1 = ~_wgslsmith_clamp_vec2_u32(select(~u_input.d, vec2<u32>(u_input.c, min(4294967295u, 1u)), select(select(vec2<bool>(true, var_0.b), vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, false)), select(vec2<bool>(var_0.b, false), vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, false)), select(var_0.b, false, var_0.b))), u_input.d, _wgslsmith_sub_vec2_u32(~select(u_input.d, vec2<u32>(u_input.d.x, u_input.d.x), vec2<bool>(var_0.b, true)), ~u_input.d));
    var var_2 = u_input.c;
    var_2 = ~(~min(~(~var_1.x), 11645u));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-436f - 829f), _wgslsmith_f_op_f32(step(-455f, _wgslsmith_f_op_f32(f32(-1f) * -123f))))), var_0.a.x, vec3<i32>(~4542i, u_input.b, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a), min(vec3<i32>(var_0.a.x, 2604i, 23203i), u_input.a))), vec4<bool>(var_0.b, true, var_0.b, u_input.b > var_0.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(~abs(15784u), min(7541u, 1u), reverseBits(u_input.d.x)), ~vec3<u32>(~var_1.x, ~1u, var_1.x)));
    let var_4 = Struct_5(select(var_3.a.c.zy, firstTrailingBit(func_1()), false), !var_3.a.d.x || (_wgslsmith_clamp_i32(~(-10793i), var_0.a.x, u_input.a.x | u_input.a.x) > 1i));
    let var_5 = u_input.d.x ^ var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1441f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-263f - -1059f))), vec4<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_div_u32(~0u, var_5), 0u), var_5, var_5), 1i);
}

