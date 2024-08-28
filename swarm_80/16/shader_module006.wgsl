struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: Struct_4,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-961f, -192f, 252f, -348f, -444f, -1803f, 1063f, -1818f, 107f, 1586f, -1289f, -758f, 1319f, -1166f, -1487f, -879f, -1254f, 953f, -331f, 468f, -208f, 1844f, -1000f, -1022f);

var<private> global1: array<i32, 8>;

var<private> global2: array<Struct_2, 3>;

var<private> global3: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(false, vec4<i32>(24646i, 22346i, -7915i, 1i), Struct_4(vec2<i32>(43713i, -50454i), Struct_1(vec4<f32>(630f, -2021f, -1326f, 193f), vec3<bool>(false, false, false), -377i), 1363f, true, -390f), vec4<f32>(-831f, -774f, 628f, 281f)), Struct_5(false, vec4<i32>(2147483647i, 2147483647i, -1i, -15609i), Struct_4(vec2<i32>(0i, i32(-2147483648)), Struct_1(vec4<f32>(-684f, -1043f, -598f, 1620f), vec3<bool>(true, true, true), -40745i), 220f, false, 1241f), vec4<f32>(-544f, 1855f, -303f, -312f)), Struct_5(false, vec4<i32>(-16927i, 1147i, i32(-2147483648), 18281i), Struct_4(vec2<i32>(1i, -1i), Struct_1(vec4<f32>(-852f, 1092f, 2047f, -744f), vec3<bool>(false, false, true), 1i), 150f, false, -1000f), vec4<f32>(1223f, 179f, 791f, 869f)), Struct_5(true, vec4<i32>(18245i, -1i, 2147483647i, 21405i), Struct_4(vec2<i32>(-32126i, i32(-2147483648)), Struct_1(vec4<f32>(-102f, -2769f, -314f, -1804f), vec3<bool>(true, false, false), 2147483647i), -306f, false, 260f), vec4<f32>(-140f, -730f, 757f, 946f)), Struct_5(false, vec4<i32>(9779i, 2147483647i, 18449i, i32(-2147483648)), Struct_4(vec2<i32>(-26142i, i32(-2147483648)), Struct_1(vec4<f32>(230f, -174f, 356f, 758f), vec3<bool>(false, false, false), 1i), 797f, false, -346f), vec4<f32>(1591f, -1095f, 930f, 391f)), Struct_5(true, vec4<i32>(31926i, 2147483647i, 0i, 0i), Struct_4(vec2<i32>(2147483647i, 0i), Struct_1(vec4<f32>(-601f, 1000f, -408f, -863f), vec3<bool>(true, true, true), 0i), -187f, true, -1000f), vec4<f32>(1423f, 384f, -2546f, -1241f)), Struct_5(true, vec4<i32>(4635i, -7618i, -46715i, 26105i), Struct_4(vec2<i32>(48937i, -1i), Struct_1(vec4<f32>(-2193f, -173f, -1000f, -393f), vec3<bool>(false, true, true), -23268i), -1620f, true, 558f), vec4<f32>(808f, 1726f, -464f, 405f)), Struct_5(false, vec4<i32>(1i, i32(-2147483648), -51125i, 0i), Struct_4(vec2<i32>(-4079i, i32(-2147483648)), Struct_1(vec4<f32>(2044f, 1319f, 1003f, 239f), vec3<bool>(false, false, true), 0i), 664f, false, 627f), vec4<f32>(1098f, 1703f, 1000f, 1000f)), Struct_5(true, vec4<i32>(1i, 6637i, i32(-2147483648), -10517i), Struct_4(vec2<i32>(i32(-2147483648), -2039i), Struct_1(vec4<f32>(-1000f, 1000f, -1769f, 926f), vec3<bool>(false, true, false), 52969i), 1013f, true, -880f), vec4<f32>(-518f, -1193f, 139f, -1241f)), Struct_5(true, vec4<i32>(44499i, 2147483647i, 1i, 15252i), Struct_4(vec2<i32>(-30550i, -64305i), Struct_1(vec4<f32>(487f, 950f, 595f, -2709f), vec3<bool>(true, false, false), -1i), -551f, true, -1097f), vec4<f32>(203f, -1191f, -385f, 363f)), Struct_5(false, vec4<i32>(-5332i, -1730i, -1i, -1i), Struct_4(vec2<i32>(-48574i, 6879i), Struct_1(vec4<f32>(368f, -1175f, 2462f, -1267f), vec3<bool>(true, false, true), -48611i), 1000f, true, 1638f), vec4<f32>(-774f, -1307f, 735f, 517f)), Struct_5(false, vec4<i32>(10929i, 6414i, i32(-2147483648), 88422i), Struct_4(vec2<i32>(-27776i, 2147483647i), Struct_1(vec4<f32>(-1377f, 107f, 715f, 358f), vec3<bool>(false, true, false), -19351i), 1849f, false, 538f), vec4<f32>(1138f, -1000f, -1115f, 1221f)), Struct_5(true, vec4<i32>(40473i, -1i, 0i, -9445i), Struct_4(vec2<i32>(-52190i, 10033i), Struct_1(vec4<f32>(287f, -718f, 872f, -583f), vec3<bool>(true, false, true), 71344i), -280f, true, -1041f), vec4<f32>(-1000f, -454f, -2121f, -449f)), Struct_5(true, vec4<i32>(-1307i, -1i, 6790i, 32990i), Struct_4(vec2<i32>(-2302i, 2147483647i), Struct_1(vec4<f32>(-1445f, -1091f, 380f, -926f), vec3<bool>(true, true, false), 5837i), -2310f, true, -666f), vec4<f32>(-332f, -1827f, -1230f, 292f)), Struct_5(true, vec4<i32>(0i, 1i, -26628i, 0i), Struct_4(vec2<i32>(i32(-2147483648), -5172i), Struct_1(vec4<f32>(1432f, 667f, -353f, -125f), vec3<bool>(true, true, true), 1i), -542f, true, -1476f), vec4<f32>(900f, -1371f, -587f, -1170f)), Struct_5(false, vec4<i32>(0i, 1i, 1i, 0i), Struct_4(vec2<i32>(-1i, 1i), Struct_1(vec4<f32>(817f, 469f, 697f, 101f), vec3<bool>(false, true, true), -26493i), -364f, false, -1365f), vec4<f32>(1113f, 578f, 547f, 825f)), Struct_5(false, vec4<i32>(0i, 17828i, 0i, -16432i), Struct_4(vec2<i32>(7838i, 1i), Struct_1(vec4<f32>(705f, 819f, 207f, 1000f), vec3<bool>(true, false, true), 1i), 573f, true, 474f), vec4<f32>(743f, 245f, -796f, -655f)), Struct_5(false, vec4<i32>(35525i, 2147483647i, -1i, -38091i), Struct_4(vec2<i32>(i32(-2147483648), 1i), Struct_1(vec4<f32>(-1178f, 352f, 444f, -504f), vec3<bool>(true, true, false), 14954i), 920f, true, 342f), vec4<f32>(-638f, -2524f, 327f, 496f)), Struct_5(false, vec4<i32>(0i, 0i, 1i, -5583i), Struct_4(vec2<i32>(4682i, -19181i), Struct_1(vec4<f32>(-812f, 362f, -554f, -510f), vec3<bool>(true, false, true), -51953i), -1989f, true, -330f), vec4<f32>(682f, 734f, -461f, -631f)), Struct_5(false, vec4<i32>(2147483647i, -2482i, -1i, -13878i), Struct_4(vec2<i32>(11823i, -1i), Struct_1(vec4<f32>(326f, 331f, 1596f, 554f), vec3<bool>(false, true, false), 28979i), -1000f, true, -1000f), vec4<f32>(-344f, 1850f, -381f, -1282f)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec3<bool> {
    var var_0 = vec4<bool>(select(false, arg_0.a.b.x || (arg_0.c.c >= (u_input.c.x << (1u % 32u))), true), arg_0.c.b.x, arg_0.c.b.x, !((arg_0.d.b >= u_input.d) & true));
    return select(arg_0.a.b, !vec3<bool>(all(arg_0.c.b), arg_0.c.b.x, true), var_0.x);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1352f, true))), 1211f)));
    var var_1 = -_wgslsmith_clamp_i32(~(-21416i), _wgslsmith_sub_i32(max(global1[_wgslsmith_index_u32(u_input.e.x, 8u)], -6582i), u_input.c.x & -36164i), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, 25885i), 8011i, u_input.c.x >> (37517u % 32u)), -(~vec3<i32>(0i, u_input.c.x, u_input.c.x))));
    var_1 = 2147483647i;
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], 1700f, 313f), vec4<f32>(-354f, -432f, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 942f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(55821u, 24u)])))))), func_3(Struct_3(Struct_1(vec4<f32>(-1020f, -1000f, 486f, 914f), vec3<bool>(false, false, true), 2147483647i), u_input.b, Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, global0[_wgslsmith_index_u32(61624u, 24u)]), vec3<bool>(true, false, false), -4494i), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 24u)], 537f, 389f), 75505u, false)), _wgslsmith_sub_u32(~u_input.b, 1u)), ~50603i), ~u_input.e.x, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(3583f, var_0.x)), -775f, global0[_wgslsmith_index_u32(~0u, 24u)], var_0.x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), all(vec4<bool>(false, true, true, true))), vec3<bool>(all(vec2<bool>(false, true)), false, false), vec3<bool>(true, true, true)), ~_wgslsmith_mod_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.c.x), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.d, 8u)], u_input.c.x))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], -1538f, global0[_wgslsmith_index_u32(0u, 24u)]) - vec3<f32>(var_0.x, global0[_wgslsmith_index_u32(1u, 24u)], var_0.x)))), 32830u, false));
    var var_3 = Struct_5(var_2.a.b.x, vec4<i32>(-1i) * -(vec4<i32>(global1[_wgslsmith_index_u32(var_2.b, 8u)], 1i, u_input.c.x, var_2.c.c) >> (firstTrailingBit(vec4<u32>(4294967295u, u_input.e.x, 0u, u_input.e.x)) % vec4<u32>(32u))), Struct_4(-vec2<i32>(global1[_wgslsmith_index_u32(26314u, 8u)] & -40529i, ~(-1i)), var_2.a, _wgslsmith_f_op_f32(step(-699f, var_2.a.a.x)), (_wgslsmith_f_op_f32(trunc(var_0.x)) < _wgslsmith_f_op_f32(var_2.d.a.x - global0[_wgslsmith_index_u32(u_input.b, 24u)])) && true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-331f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 24u)], var_2.d.a.x), var_2.c.b.x && var_2.a.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(560f * var_0.x) - var_0.x))), var_2.c.a);
    return true;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    var var_0 = !any(vec3<bool>(all(vec2<bool>(true, true)), false, true)) || true;
    global1 = array<i32, 8>();
    let var_1 = !select(vec4<bool>(_wgslsmith_sub_i32(u_input.c.x, global1[_wgslsmith_index_u32(arg_2.x, 8u)]) <= reverseBits(global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), all(vec3<bool>(false, false, false)), true, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.a.x, 0u, 0u), vec4<u32>(arg_0, arg_0, arg_2.x, arg_0)) >= _wgslsmith_mult_u32(u_input.e.x, 50570u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(!(2976u != u_input.a.x), global1[_wgslsmith_index_u32(~141625u, 8u)] == _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 8u)], u_input.c.x), _wgslsmith_dot_vec2_u32(arg_2.xx, u_input.a.xy) >= ~arg_2.x, func_2()));
    var var_2 = -_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, u_input.c.x, -14142i) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, global1[_wgslsmith_index_u32(u_input.e.x, 8u)], global1[_wgslsmith_index_u32(46078u, 8u)]) ^ vec3<i32>(u_input.c.x, 2147483647i, -1043i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -1i, u_input.c.x), vec3<i32>(-2544i, -2147483647i, global1[_wgslsmith_index_u32(5734u, 8u)]))), vec3<i32>(_wgslsmith_clamp_i32(~global1[_wgslsmith_index_u32(0u, 8u)], 2169i, 0i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_2.x, 8u)], u_input.c.x, -2829i, 2147483647i), vec4<i32>(11388i, -2147483647i, u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 8u)]))), -2147483647i));
    var_2 = vec3<i32>(u_input.c.x, ~u_input.c.x, _wgslsmith_div_i32(-1i, abs(abs(i32(-1i) * -10607i))));
    return ~(~((30314u << (arg_2.x % 32u)) & 58488u));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.d), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.d, u_input.b, u_input.e.x))), min(~0u, ~u_input.a.x), u_input.b, ~1u), abs(~(~(~vec4<u32>(u_input.b, u_input.e.x, u_input.b, u_input.e.x)))));
    global3 = array<Struct_5, 20>();
    global2 = array<Struct_2, 3>();
    var var_1 = select(~(~(~abs(26853i))), u_input.c.x, arg_0.x);
    let var_2 = vec2<bool>(false & !arg_0.x, false);
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1562f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(countOneBits(var_0.x), 24u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(3654u, 24u)] * global0[_wgslsmith_index_u32(12014u, 24u)])))), global0[_wgslsmith_index_u32(4294967295u, 24u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global1 = array<i32, 8>();
    let var_1 = global2[_wgslsmith_index_u32(1u, 3u)];
    global3 = array<Struct_5, 20>();
    global1 = array<i32, 8>();
    global2 = array<Struct_2, 3>();
    global3 = array<Struct_5, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_4(!select(!vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, true), vec2<bool>(true, false)), -global1[_wgslsmith_index_u32(func_1(u_input.d, 1000f, vec3<u32>(30849u, 2062u, 16509u)), 8u)], -countOneBits(reverseBits(vec3<i32>(17095i, 0i, u_input.c.x))))));
}

