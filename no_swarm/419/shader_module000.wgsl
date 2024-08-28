struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: f32;

var<private> global2: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(4554i, Struct_1(vec4<u32>(1u, 4294967295u, 0u, 48000u), true, -769f, vec3<u32>(6484u, 1u, 4294967295u), false), vec3<i32>(-18471i, 2147483647i, 0i), true), Struct_3(-1i, Struct_1(vec4<u32>(0u, 0u, 41662u, 0u), true, -185f, vec3<u32>(0u, 20659u, 52213u), true), vec3<i32>(-4791i, -1i, -1i), false), Struct_3(-7414i, Struct_1(vec4<u32>(9473u, 0u, 0u, 4294967295u), false, 1008f, vec3<u32>(58822u, 29161u, 1u), true), vec3<i32>(0i, 0i, 1i), true), Struct_3(10124i, Struct_1(vec4<u32>(1u, 16401u, 1u, 14774u), true, 698f, vec3<u32>(9869u, 1u, 35686u), false), vec3<i32>(i32(-2147483648), i32(-2147483648), -13208i), false), Struct_3(i32(-2147483648), Struct_1(vec4<u32>(0u, 0u, 1u, 1u), false, 1071f, vec3<u32>(1u, 47206u, 49967u), true), vec3<i32>(-29981i, 27445i, 36073i), false), Struct_3(-9043i, Struct_1(vec4<u32>(73677u, 9205u, 0u, 0u), true, -1000f, vec3<u32>(4294967295u, 18385u, 4294967295u), false), vec3<i32>(-66269i, i32(-2147483648), -11865i), false), Struct_3(1i, Struct_1(vec4<u32>(4294967295u, 0u, 2260u, 4294967295u), true, -647f, vec3<u32>(4294967295u, 1u, 20388u), true), vec3<i32>(-18065i, 27797i, -1467i), false), Struct_3(i32(-2147483648), Struct_1(vec4<u32>(49254u, 4294967295u, 20186u, 88966u), true, 755f, vec3<u32>(0u, 0u, 13102u), false), vec3<i32>(1i, 30697i, -33744i), false), Struct_3(-14461i, Struct_1(vec4<u32>(1u, 74416u, 45728u, 4659u), true, 246f, vec3<u32>(1u, 1u, 0u), false), vec3<i32>(1i, 38741i, -1i), false), Struct_3(24i, Struct_1(vec4<u32>(1u, 0u, 3869u, 1u), true, -2239f, vec3<u32>(1u, 93585u, 1u), false), vec3<i32>(18019i, 1i, -35399i), true), Struct_3(17937i, Struct_1(vec4<u32>(7479u, 35513u, 0u, 0u), true, 714f, vec3<u32>(16947u, 12409u, 1u), false), vec3<i32>(0i, 12591i, 2147483647i), false), Struct_3(0i, Struct_1(vec4<u32>(4294967295u, 1u, 1u, 0u), false, 840f, vec3<u32>(0u, 4294967295u, 4294967295u), true), vec3<i32>(-36214i, 0i, i32(-2147483648)), false), Struct_3(20626i, Struct_1(vec4<u32>(67541u, 36802u, 1u, 1u), true, 624f, vec3<u32>(63308u, 4294967295u, 5339u), false), vec3<i32>(2147483647i, -27117i, 0i), true), Struct_3(2147483647i, Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), true, 1828f, vec3<u32>(4294967295u, 0u, 4294967295u), true), vec3<i32>(-5146i, i32(-2147483648), i32(-2147483648)), true), Struct_3(-78708i, Struct_1(vec4<u32>(87707u, 1215u, 16661u, 0u), true, 875f, vec3<u32>(35412u, 0u, 49954u), true), vec3<i32>(0i, 0i, 1i), true), Struct_3(-20883i, Struct_1(vec4<u32>(4294967295u, 1u, 1u, 11999u), true, 982f, vec3<u32>(0u, 68966u, 1u), true), vec3<i32>(54688i, -46886i, 15905i), true), Struct_3(80332i, Struct_1(vec4<u32>(1u, 1u, 28464u, 49944u), true, -292f, vec3<u32>(1u, 13304u, 28554u), false), vec3<i32>(2147483647i, 2147483647i, 1735i), true), Struct_3(2147483647i, Struct_1(vec4<u32>(0u, 1u, 79580u, 4294967295u), false, -1378f, vec3<u32>(95360u, 4294967295u, 0u), true), vec3<i32>(12345i, 12067i, 10113i), false), Struct_3(-26774i, Struct_1(vec4<u32>(55734u, 0u, 1u, 1u), false, 754f, vec3<u32>(1057u, 57179u, 4294967295u), true), vec3<i32>(-1i, i32(-2147483648), -1i), false), Struct_3(0i, Struct_1(vec4<u32>(1u, 4693u, 39456u, 37112u), false, -1842f, vec3<u32>(46592u, 4294967295u, 13553u), false), vec3<i32>(2147483647i, 1i, -1i), true), Struct_3(-22112i, Struct_1(vec4<u32>(1663u, 98347u, 39896u, 84115u), false, 1287f, vec3<u32>(4294967295u, 0u, 18729u), true), vec3<i32>(0i, -10395i, 0i), false), Struct_3(i32(-2147483648), Struct_1(vec4<u32>(4294967295u, 32590u, 5949u, 1u), false, -278f, vec3<u32>(0u, 12940u, 8484u), false), vec3<i32>(-30916i, -25992i, 10054i), false), Struct_3(-1i, Struct_1(vec4<u32>(1u, 1u, 6873u, 1u), true, -1199f, vec3<u32>(1u, 0u, 35751u), true), vec3<i32>(-8086i, 0i, -36615i), false), Struct_3(-11333i, Struct_1(vec4<u32>(13943u, 37596u, 0u, 0u), false, 417f, vec3<u32>(33523u, 85747u, 18305u), true), vec3<i32>(35574i, -3170i, 1i), true), Struct_3(i32(-2147483648), Struct_1(vec4<u32>(1u, 52261u, 1313u, 4294967295u), false, 1605f, vec3<u32>(43092u, 1u, 26720u), true), vec3<i32>(-30574i, -5450i, -1i), false), Struct_3(0i, Struct_1(vec4<u32>(4294967295u, 24843u, 4294967295u, 69435u), false, -1055f, vec3<u32>(0u, 1u, 1u), false), vec3<i32>(2147483647i, 17014i, 20597i), false), Struct_3(0i, Struct_1(vec4<u32>(46167u, 29092u, 24217u, 48686u), false, 359f, vec3<u32>(4294967295u, 0u, 0u), true), vec3<i32>(-1i, i32(-2147483648), 0i), true), Struct_3(0i, Struct_1(vec4<u32>(58801u, 1u, 0u, 0u), true, 714f, vec3<u32>(13771u, 4294967295u, 0u), true), vec3<i32>(41111i, -31485i, i32(-2147483648)), false), Struct_3(7675i, Struct_1(vec4<u32>(1u, 30416u, 61429u, 4294967295u), false, -1669f, vec3<u32>(74677u, 37645u, 62417u), false), vec3<i32>(17689i, i32(-2147483648), 6896i), true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-381f, -277f, 1459f, 2736f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-438f, 2016f, -1644f, 119f), vec4<f32>(1232f, 1940f, -1903f, -157f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1193f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-427f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-177f)) * 743f), 277f)));
    let var_1 = vec2<bool>(true, !(countOneBits(countOneBits(u_input.b.x)) < ~arg_0));
    var var_2 = global2[_wgslsmith_index_u32(u_input.b.x, 29u)];
    let var_3 = abs(_wgslsmith_add_u32(_wgslsmith_clamp_u32(21402u, u_input.b.x, firstTrailingBit(~3450u)), _wgslsmith_mod_u32(max(0u, u_input.b.x), 6606u)));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(191f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.c + var_0.x) - -181f)))), firstTrailingBit(35317i), var_2.b, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(7974u, 10707u), var_3), 29u)]);
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(~var_4.c.a.x, ~var_4.d.b.a.x, 0u), var_2.b.a.yyw) ^ _wgslsmith_mult_u32(~countOneBits(~u_input.b.x), 1u);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<i32>) -> vec3<bool> {
    let var_0 = -136f;
    let var_1 = Struct_1(~vec4<u32>(4294967295u, ~(arg_0.x << (0u % 32u)), _wgslsmith_div_u32(~arg_0.x, _wgslsmith_dot_vec4_u32(arg_0, u_input.a)), _wgslsmith_dot_vec2_u32(u_input.a.xy, arg_0.zy) << (~1u % 32u)), global0.x, 2151f, firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(~u_input.b.x, func_3(4294967295u), 60872u))), false);
    global2 = array<Struct_3, 29>();
    let var_2 = reverseBits(~firstLeadingBit(u_input.a.x));
    let var_3 = global2[_wgslsmith_index_u32(u_input.a.x, 29u)];
    return !vec3<bool>(true, select(true, true, select(true, select(var_1.b, false, false), var_1.c == var_3.b.c)), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, var_3.b.e, global0.x, false), true), select(vec4<bool>(true, var_3.d, global0.x, var_3.b.e), vec4<bool>(true, var_3.d, global0.x, var_1.e), global0.x), select(vec4<bool>(global0.x, true, var_1.b, global0.x), vec4<bool>(var_1.e, global0.x, var_3.d, true), vec4<bool>(false, var_3.d, false, false)))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    global0 = select(!select(!select(vec3<bool>(false, false, true), vec3<bool>(global0.x, true, false), vec3<bool>(arg_1.a.e, true, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, arg_2.b.e, arg_2.b.e), vec3<bool>(arg_0, global0.x, arg_0)), vec3<bool>(true, false, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, arg_0, arg_1.a.b))), !func_2(arg_2.b.a, -1i, arg_2.c.xx), vec3<bool>(all(vec3<bool>(-1157f == arg_2.b.c, select(false, arg_0, true), arg_1.b.b)), true && func_2(countOneBits(arg_1.d.a), i32(-1i) * -2147483647i, arg_1.c).x, arg_2.b.c != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.b.c, -1000f)) - arg_2.b.c)));
    var var_0 = Struct_2(arg_1.d, Struct_1(select(u_input.a, select(arg_2.b.a, ~u_input.a, select(arg_0, false, true)), vec4<bool>(arg_1.b.e && arg_1.b.b, all(vec4<bool>(true, true, arg_0, false)), true, 755f < arg_1.d.c)), !arg_2.d && true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c))), u_input.a.xwy, true), -(~arg_2.c.yx) >> (~vec2<u32>(_wgslsmith_div_u32(arg_1.b.a.x, u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, 1335u, 75620u)) % vec2<u32>(32u)), Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b.d.x, u_input.b.x, arg_2.b.a.x, u_input.b.x), vec4<u32>(0u, u_input.b.x, arg_2.b.d.x, 9069u)), vec4<u32>(arg_2.b.d.x, u_input.a.x, 40138u, u_input.b.x)) << (~vec4<u32>(arg_1.b.d.x, 186u, u_input.b.x, 0u) % vec4<u32>(32u)), arg_1.e.x <= -1708f, arg_2.b.c, select(abs(vec3<u32>(0u, u_input.b.x, 11210u)), min(~vec3<u32>(94769u, 1u, 2868u), vec3<u32>(u_input.a.x, arg_1.a.a.x, arg_2.b.a.x)), true), all(vec3<bool>(true, arg_2.b.e, any(vec3<bool>(true, arg_0, false))))), _wgslsmith_f_op_vec3_f32(-arg_1.e));
    var_0 = Struct_2(arg_2.b, arg_2.b, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(abs(arg_2.c.x), var_0.c.x), ~(~(-53520i))), 2147483647i), Struct_1(vec4<u32>(arg_1.d.d.x, 1u, firstLeadingBit(0u), 1u ^ arg_2.b.a.x), all(select(!vec3<bool>(true, arg_1.b.e, false), !vec3<bool>(arg_0, true, false), !vec3<bool>(true, arg_1.d.e, var_0.b.e))), 1095f, ~vec3<u32>(arg_2.b.a.x, 17039u, 0u), any(global0.yz)), arg_1.e);
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d.c, arg_2.b.c)) + _wgslsmith_f_op_f32(floor(arg_2.b.c)))));
    var var_1 = vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(arg_2.c, -_wgslsmith_mult_vec3_i32(-vec3<i32>(-897i, 32658i, 6799i), vec3<i32>(-10006i, arg_2.c.x, 18615i))), _wgslsmith_mod_i32(69520i, arg_1.c.x), 0i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.c), var_0.a.c);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_5 {
    global0 = !select(vec3<bool>(!(!arg_1.c.b), global0.x, all(vec4<bool>(global0.x, false, arg_1.d.d, true)) != all(vec3<bool>(true, global0.x, arg_1.c.b))), !vec3<bool>(all(vec3<bool>(arg_1.c.b, arg_1.c.b, true)), !arg_1.d.d, true), global0.x);
    var var_0 = Struct_2(Struct_1(~(~u_input.a), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1513f) * _wgslsmith_div_f32(1632f, arg_1.a)) * arg_1.d.b.c), ~u_input.a.yzw, global0.x), Struct_1(_wgslsmith_div_vec4_u32(arg_1.c.a, vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 1u), ~u_input.a.x, ~u_input.a.x, 4294967295u)), arg_1.c.b, arg_1.c.c, abs(~vec3<u32>(5289u, u_input.b.x, u_input.b.x) ^ ~vec3<u32>(41661u, 4294967295u, arg_0.x)), any(vec2<bool>(true, true))), arg_1.d.c.yz, Struct_1(~(u_input.a | ~u_input.a), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.b.c + _wgslsmith_f_op_f32(floor(1913f)))), vec3<u32>(arg_1.c.a.x, u_input.a.x, ~firstTrailingBit(1u)), !global0.x), vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-323f + _wgslsmith_f_op_f32(-638f - -957f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(true, Struct_2(arg_1.d.b, Struct_1(vec4<u32>(4294967295u, arg_1.d.b.a.x, arg_1.d.b.a.x, 55906u), global0.x, 227f, arg_1.d.b.a.zyw, true), arg_1.d.c.zz, Struct_1(arg_1.d.b.a, global0.x, 920f, u_input.a.zxz, true), vec3<f32>(-1433f, -746f, -1019f)), Struct_3(u_input.c, arg_1.d.b, arg_1.d.c, global0.x)))))));
    let var_1 = _wgslsmith_mult_u32(61970u, abs(func_3(arg_1.d.b.a.x)));
    var var_2 = true;
    var var_3 = global2[_wgslsmith_index_u32(min(var_0.d.a.x ^ 79827u, max(4294967295u, ~10420u)), 29u)];
    return Struct_5(_wgslsmith_f_op_f32(sign(arg_1.c.c)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4) -> Struct_5 {
    let var_0 = Struct_3(~(u_input.c << (537u % 32u)), arg_1.c, vec3<i32>(_wgslsmith_dot_vec3_i32(~min(vec3<i32>(-1i, arg_1.b, -30130i), vec3<i32>(arg_1.d.a, -1i, -1i)), arg_1.d.c), ~arg_1.b, ~firstLeadingBit(u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(1000f - arg_1.c.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.c.c)))) <= 288f);
    var var_1 = !vec4<bool>(false, global0.x, all(vec4<bool>(var_0.d && var_0.d, u_input.c < arg_1.d.a, false, func_2(vec4<u32>(u_input.b.x, arg_1.d.b.a.x, u_input.a.x, u_input.b.x), u_input.c, vec2<i32>(arg_1.d.c.x, 2147483647i)).x)), any(!select(vec3<bool>(global0.x, true, arg_1.c.e), vec3<bool>(true, var_0.b.b, global0.x), vec3<bool>(false, false, true))));
    global0 = var_1.xyz;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1037f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * arg_1.c.c))), 1265f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.b.c - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-398f, arg_1.a))), 1045f));
    let var_3 = arg_1;
    return func_4(u_input.a.xy, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -5311i >= firstLeadingBit(-u_input.c);
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1492f, _wgslsmith_f_op_f32(sign(1f))))), _wgslsmith_f_op_f32(-560f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-894f + _wgslsmith_f_op_f32(ceil(-578f))) - _wgslsmith_f_op_f32(ceil(-1222f)))), all(vec2<bool>(global0.x, false))));
    var_0 = false;
    var var_1 = 1000f;
    var var_2 = func_5(func_4(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x) | u_input.a.zy, firstTrailingBit(vec2<u32>(4294967295u, u_input.a.x))), Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f), _wgslsmith_f_op_f32(func_1(global0.x, Struct_2(Struct_1(u_input.a, true, 1601f, vec3<u32>(u_input.a.x, 88268u, u_input.a.x), false), Struct_1(vec4<u32>(0u, 1u, 17578u, 10032u), global0.x, 749f, vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x), global0.x), vec2<i32>(u_input.c, 0i), Struct_1(u_input.a, global0.x, -1569f, u_input.a.wyx, global0.x), vec3<f32>(532f, 364f, -1181f)), global2[_wgslsmith_index_u32(108010u, 29u)]))), ~_wgslsmith_mod_i32(2147483647i, -1i), Struct_1(u_input.a, select(false, global0.x, true), 287f, u_input.a.wyz, global0.x), global2[_wgslsmith_index_u32(50544u, 29u)])), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1376f))), -(~u_input.c), Struct_1(~(u_input.a | vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.a.x)), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-725f + 1220f), _wgslsmith_div_f32(-204f, -1298f))), u_input.a.yxw, false), Struct_3(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c, u_input.c), u_input.c | -2147483647i), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.b.x), u_input.a), func_2(vec4<u32>(0u, 24131u, u_input.b.x, 0u), u_input.c, vec2<i32>(51307i, u_input.c)).x, _wgslsmith_f_op_f32(-985f - 2018f), min(u_input.a.zxw, u_input.a.wwx), true), -vec3<i32>(u_input.c, -1i, u_input.c) >> (u_input.a.zwx % vec3<u32>(32u)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1926u, u_input.a.x, 1u, 4294967295u));
}

