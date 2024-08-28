struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: array<vec3<f32>, 31>;

var<private> global2: array<f32, 8> = array<f32, 8>(378f, 1018f, -710f, 186f, 579f, 350f, -728f, -3217f);

var<private> global3: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_2(1718f, 0u, vec4<u32>(0u, 42668u, 1u, 1u), Struct_1(vec3<i32>(-2595i, 2147483647i, -1i), 1i, i32(-2147483648)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -1i), 2147483647i, -1i))), Struct_4(Struct_2(-878f, 50759u, vec4<u32>(1u, 4294967295u, 65649u, 34533u), Struct_1(vec3<i32>(-1i, -17869i, -31794i), 2147483647i, -67009i), Struct_1(vec3<i32>(1i, 2147483647i, 1i), -1i, 0i))), Struct_4(Struct_2(681f, 60977u, vec4<u32>(5761u, 93252u, 4294967295u, 11158u), Struct_1(vec3<i32>(-2070i, 4645i, 69175i), 27451i, -23589i), Struct_1(vec3<i32>(-1i, 0i, -33586i), i32(-2147483648), 1i))), Struct_4(Struct_2(-261f, 1u, vec4<u32>(4294967295u, 84104u, 4294967295u, 43049u), Struct_1(vec3<i32>(-2074i, 33149i, 17845i), i32(-2147483648), 41639i), Struct_1(vec3<i32>(1i, 0i, -3548i), 23303i, -38727i))), Struct_4(Struct_2(1000f, 1u, vec4<u32>(8210u, 0u, 37242u, 0u), Struct_1(vec3<i32>(-39575i, -1i, 26837i), 38695i, i32(-2147483648)), Struct_1(vec3<i32>(1i, 8944i, i32(-2147483648)), 40409i, 23521i))), Struct_4(Struct_2(-1176f, 15039u, vec4<u32>(1u, 1u, 44878u, 38208u), Struct_1(vec3<i32>(-1i, 26275i, -1i), 1i, -49940i), Struct_1(vec3<i32>(-17957i, 1i, 2147483647i), -1i, -16749i))), Struct_4(Struct_2(-998f, 34210u, vec4<u32>(79095u, 7240u, 37318u, 34499u), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 54006i), -40275i, -23247i), Struct_1(vec3<i32>(1i, -11924i, 19928i), -63698i, 1i))), Struct_4(Struct_2(-1000f, 31484u, vec4<u32>(4294967295u, 25872u, 0u, 22852u), Struct_1(vec3<i32>(-60769i, 0i, -1623i), -28667i, 12148i), Struct_1(vec3<i32>(53209i, 0i, i32(-2147483648)), -9321i, 30987i))), Struct_4(Struct_2(1070f, 0u, vec4<u32>(4294967295u, 1u, 0u, 4294967295u), Struct_1(vec3<i32>(-1i, 12036i, -18390i), 0i, -1i), Struct_1(vec3<i32>(57908i, -13380i, 86043i), 4075i, -24236i))), Struct_4(Struct_2(-496f, 0u, vec4<u32>(27086u, 4294967295u, 7577u, 28808u), Struct_1(vec3<i32>(-21858i, i32(-2147483648), -12227i), 2147483647i, -1i), Struct_1(vec3<i32>(-54322i, -1i, 630i), 4768i, -10063i))), Struct_4(Struct_2(-1016f, 1u, vec4<u32>(4294967295u, 118943u, 60715u, 1u), Struct_1(vec3<i32>(33249i, -39629i, -1i), 8719i, 0i), Struct_1(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), -48552i, -28911i))), Struct_4(Struct_2(-1165f, 1u, vec4<u32>(21817u, 13392u, 14011u, 1012u), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 33961i), 0i, i32(-2147483648)), Struct_1(vec3<i32>(0i, 8606i, 29339i), 0i, -1i))), Struct_4(Struct_2(508f, 4294967295u, vec4<u32>(4294967295u, 43492u, 0u, 4294967295u), Struct_1(vec3<i32>(33706i, -11699i, 1i), -45419i, i32(-2147483648)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 0i), 8217i, -46866i))), Struct_4(Struct_2(161f, 4294967295u, vec4<u32>(0u, 4294967295u, 32748u, 153397u), Struct_1(vec3<i32>(1i, -1i, 2147483647i), i32(-2147483648), 0i), Struct_1(vec3<i32>(37981i, i32(-2147483648), 41454i), 2147483647i, 22370i))), Struct_4(Struct_2(-371f, 4294967295u, vec4<u32>(24060u, 11025u, 0u, 4294967295u), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), 0i, 5415i), Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), 2147483647i, 36878i))), Struct_4(Struct_2(-270f, 0u, vec4<u32>(17234u, 0u, 19778u, 69112u), Struct_1(vec3<i32>(-24072i, -1i, -35294i), 0i, 29890i), Struct_1(vec3<i32>(9295i, 52689i, 2147483647i), 2147483647i, 0i))), Struct_4(Struct_2(1122f, 107556u, vec4<u32>(31706u, 4294967295u, 670u, 51285u), Struct_1(vec3<i32>(-1i, 1i, 0i), 1i, 5231i), Struct_1(vec3<i32>(i32(-2147483648), 4395i, 6455i), -51450i, 19620i))), Struct_4(Struct_2(-955f, 4294967295u, vec4<u32>(1u, 75779u, 14544u, 4294967295u), Struct_1(vec3<i32>(22941i, 13576i, -33701i), 1i, 80434i), Struct_1(vec3<i32>(27314i, 3923i, 47356i), -1i, 1i))), Struct_4(Struct_2(551f, 72217u, vec4<u32>(49130u, 0u, 1u, 0u), Struct_1(vec3<i32>(50539i, i32(-2147483648), i32(-2147483648)), 1i, 0i), Struct_1(vec3<i32>(2147483647i, 1i, 35858i), 1219i, 1i))), Struct_4(Struct_2(709f, 29512u, vec4<u32>(59893u, 0u, 42779u, 38935u), Struct_1(vec3<i32>(33474i, 1563i, 0i), 7417i, -23139i), Struct_1(vec3<i32>(0i, -1i, 32280i), 0i, 33044i))), Struct_4(Struct_2(983f, 4294967295u, vec4<u32>(1u, 1u, 4294967295u, 10348u), Struct_1(vec3<i32>(9386i, 20583i, 2147483647i), 5532i, 1i), Struct_1(vec3<i32>(36704i, -1i, 21363i), 1i, -54672i))), Struct_4(Struct_2(-1163f, 0u, vec4<u32>(4294967295u, 1u, 0u, 68370u), Struct_1(vec3<i32>(-41073i, 11389i, i32(-2147483648)), -45064i, 2147483647i), Struct_1(vec3<i32>(2147483647i, -1i, -40521i), i32(-2147483648), 3519i))), Struct_4(Struct_2(466f, 5768u, vec4<u32>(0u, 4294967295u, 0u, 24997u), Struct_1(vec3<i32>(1i, 2147483647i, -1i), 1i, 24705i), Struct_1(vec3<i32>(2147483647i, 58109i, -13152i), 1i, -19029i))), Struct_4(Struct_2(-894f, 4300u, vec4<u32>(0u, 4294967295u, 15444u, 4294967295u), Struct_1(vec3<i32>(11405i, 0i, -1i), i32(-2147483648), 9254i), Struct_1(vec3<i32>(34068i, -14863i, 0i), -36773i, 92662i))), Struct_4(Struct_2(-1220f, 0u, vec4<u32>(0u, 26649u, 61268u, 24897u), Struct_1(vec3<i32>(i32(-2147483648), -6403i, -24699i), 32522i, 2147483647i), Struct_1(vec3<i32>(17792i, 2147483647i, -22547i), -6601i, 42583i))), Struct_4(Struct_2(934f, 26192u, vec4<u32>(0u, 1u, 0u, 18374u), Struct_1(vec3<i32>(-21051i, 18116i, 7455i), 11324i, 3638i), Struct_1(vec3<i32>(28426i, -1i, 2147483647i), i32(-2147483648), i32(-2147483648)))), Struct_4(Struct_2(1139f, 1u, vec4<u32>(1u, 53010u, 4294967295u, 47375u), Struct_1(vec3<i32>(-1i, -5555i, -33879i), -33521i, 1988i), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 5278i), i32(-2147483648), -1i))), Struct_4(Struct_2(-446f, 729u, vec4<u32>(4294967295u, 694u, 4294967295u, 4294967295u), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 9658i), -33253i, 23376i), Struct_1(vec3<i32>(-31065i, 1i, 1i), i32(-2147483648), 16971i))), Struct_4(Struct_2(-2365f, 0u, vec4<u32>(1u, 0u, 29603u, 45107u), Struct_1(vec3<i32>(20140i, -23904i, 2147483647i), 1270i, 12714i), Struct_1(vec3<i32>(1i, 21018i, 80562i), 0i, -18030i))), Struct_4(Struct_2(1497f, 0u, vec4<u32>(44538u, 5709u, 23379u, 4294967295u), Struct_1(vec3<i32>(2147483647i, -19523i, -11956i), 0i, -29536i), Struct_1(vec3<i32>(-43679i, 2147483647i, i32(-2147483648)), 0i, -39460i))), Struct_4(Struct_2(-600f, 1u, vec4<u32>(4294967295u, 19738u, 17579u, 0u), Struct_1(vec3<i32>(0i, 42670i, -15088i), 1i, -1i), Struct_1(vec3<i32>(-21168i, 0i, -34229i), 2147483647i, -62616i))));

var<private> global4: f32 = -1156f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    let var_0 = 0u;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -558f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + global2[_wgslsmith_index_u32(38478u, 8u)]))), arg_1)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3) - vec4<f32>(global2[_wgslsmith_index_u32(var_0, 8u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~30657u, ~49932u), 8u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~57218u, 8u)] * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1320f))))), 868f));
    global2 = array<f32, 8>();
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(36727i, u_input.a.x, u_input.e), -u_input.a.xxz)), u_input.e, _wgslsmith_dot_vec3_i32(u_input.a.wxx, u_input.a.yyy));
    return arg_0.a;
}

fn func_3() -> vec4<bool> {
    global2 = array<f32, 8>();
    let var_0 = Struct_3(~(u_input.d & u_input.c.x), u_input.d);
    var var_1 = abs(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.e, 1i, u_input.e)), min(u_input.a.xxy, u_input.a.wyy) ^ (u_input.a.yww >> (vec3<u32>(122820u, 1u, 0u) % vec3<u32>(32u)))), abs(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, u_input.e, u_input.a.x)), vec3<i32>(u_input.e, u_input.a.x, -1i)))));
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(any(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true)), true), !vec2<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    global1 = array<vec3<f32>, 31>();
    return !(!select(select(select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(false, var_2.x, true, var_2.x), var_2.x), vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true)), !select(vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(true, var_2.x, false, true), false), select(!vec4<bool>(false, true, var_2.x, var_2.x), select(vec4<bool>(false, false, true, var_2.x), vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(var_2.x, true, true, true)), var_2.x)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> vec3<i32> {
    var var_0 = 66891u;
    global4 = arg_2;
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(min(func_2(Struct_3(0u, arg_0 | 0u), !any(vec4<bool>(true, true, true, true)), arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, global2[_wgslsmith_index_u32(arg_0, 8u)], arg_2, 294f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 8u)], global2[_wgslsmith_index_u32(38245u, 8u)], 1674f, 634f)))), 1u), 8u)], ~arg_0, min(vec4<u32>(~_wgslsmith_div_u32(36814u, u_input.c.x), arg_0, ~(27644u & arg_0), 4294967295u), select(~max(vec4<u32>(u_input.b, arg_0, u_input.c.x, 0u), vec4<u32>(67395u, arg_0, 4294967295u, 56750u)), ~vec4<u32>(89117u, arg_0, 3169u, 1u), func_3())), Struct_1(arg_1.wyw, _wgslsmith_add_i32(u_input.a.x, -arg_1.x), arg_1.x | _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, 2147483647i, u_input.e, 2147483647i)), -12361i)), Struct_1(vec3<i32>(_wgslsmith_mult_i32(1i, 1i), _wgslsmith_sub_i32(1i, 1i), -30613i), firstTrailingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -21757i, 1i, -1i), u_input.a)), arg_1.x));
    var var_2 = global3[_wgslsmith_index_u32(arg_0, 31u)];
    let var_3 = global2[_wgslsmith_index_u32(~(~1u), 8u)];
    return var_2.a.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(~(~((u_input.c.x & ~u_input.c.x) & (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b, u_input.b), vec4<u32>(u_input.c.x, u_input.b, u_input.d, 36531u)) ^ _wgslsmith_sub_u32(u_input.b, u_input.c.x)))), 31u)];
    global0 = array<Struct_2, 17>();
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.d, var_0.a.b), 31u)];
    let var_2 = Struct_3(var_0.a.b, var_0.a.c.x);
    var var_3 = _wgslsmith_sub_vec3_i32(func_1(83156u, select(vec4<i32>(-1i) * -vec4<i32>(24908i, -45604i, 2147483647i, u_input.e), firstLeadingBit(-u_input.a), 356f <= _wgslsmith_f_op_f32(floor(1178f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1495f)), var_0.a.a))), (var_1.a.d.a & var_0.a.d.a) ^ (_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.d.b, var_1.a.d.c, var_1.a.e.a.x) | vec3<i32>(var_0.a.e.b, var_1.a.d.c, 2739i), reverseBits(vec3<i32>(2147483647i, 0i, -2147483647i))) << (~vec3<u32>(25843u, 53335u, var_1.a.b) % vec3<u32>(32u))));
    var var_4 = select(vec3<bool>(!all(vec4<bool>(true, true, true, true)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_2.b, 94998u), var_2.a), 8u)] >= var_1.a.a, true), vec3<bool>(var_0.a.b != abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b, 4294967295u), vec2<u32>(var_1.a.c.x, 16857u))), false, true), select(select(vec3<bool>(any(vec2<bool>(true, false)), true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, false, false)))));
    var var_5 = select(~var_0.a.d.a.x, _wgslsmith_mod_i32(-52249i, -u_input.e), any(var_4.xy));
    let x = u_input.a;
    s_output = StorageBuffer(701f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(var_0.a.c.x, 8u)])) - var_1.a.a), 2080f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1509f - _wgslsmith_f_op_f32(ceil(-2259f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(4294967295u, 8u)], -421f, false)) * var_1.a.a)))));
}

