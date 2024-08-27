struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-1i, 0i, -67378i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -61415i, 0i, -5953i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(0i, 1i, -28070i, 38506i), vec4<i32>(37374i, -23379i, 0i, 2147483647i), vec4<i32>(0i, -64360i, i32(-2147483648), 4769i), vec4<i32>(2147483647i, 0i, -1i, i32(-2147483648)), vec4<i32>(-1i, 0i, -25985i, -1i), vec4<i32>(17071i, -9405i, 0i, 0i), vec4<i32>(717i, 0i, 24374i, 45122i), vec4<i32>(1i, 8371i, 7731i, 24327i), vec4<i32>(-7893i, -1i, -48892i, 36963i), vec4<i32>(1i, -48493i, 2147483647i, 26791i), vec4<i32>(-450i, 2147483647i, -8541i, 8377i), vec4<i32>(-23868i, -45726i, 26967i, -5022i));

var<private> global1: array<i32, 30>;

var<private> global2: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(0u, 1u, 1u), vec3<u32>(37129u, 0u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(32128u, 25475u, 34687u), vec3<u32>(22415u, 4294967295u, 74831u), vec3<u32>(27840u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 15542u), vec3<u32>(0u, 0u, 62680u), vec3<u32>(0u, 7514u, 7448u));

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<i32>(i32(-2147483648), -17247i, -2058i, 2270i), vec4<u32>(0u, 19402u, 87984u, 40545u), vec2<bool>(true, false), vec2<i32>(-2685i, 2147483647i), Struct_1(vec3<bool>(false, true, true), vec4<f32>(799f, 352f, 1608f, 862f))), Struct_2(vec4<i32>(2147483647i, -18941i, 0i, 2147483647i), vec4<u32>(4294967295u, 27565u, 16167u, 0u), vec2<bool>(false, false), vec2<i32>(1i, 24848i), Struct_1(vec3<bool>(true, true, true), vec4<f32>(1002f, -1000f, 167f, -2123f))), Struct_2(vec4<i32>(0i, 12204i, 2147483647i, i32(-2147483648)), vec4<u32>(36811u, 4294967295u, 44013u, 50362u), vec2<bool>(false, false), vec2<i32>(15750i, 15232i), Struct_1(vec3<bool>(false, false, true), vec4<f32>(403f, -128f, -1894f, -375f))), Struct_2(vec4<i32>(28051i, 0i, 33399i, 2147483647i), vec4<u32>(11495u, 0u, 4294967295u, 4294967295u), vec2<bool>(false, true), vec2<i32>(2147483647i, 1i), Struct_1(vec3<bool>(true, false, true), vec4<f32>(164f, -1238f, 1000f, 382f))), Struct_2(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -23233i), vec4<u32>(11310u, 28449u, 14844u, 1u), vec2<bool>(false, true), vec2<i32>(-1i, 0i), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-141f, 1490f, 1287f, 2538f))), Struct_2(vec4<i32>(-38884i, 20475i, 0i, 747i), vec4<u32>(57900u, 1u, 101828u, 4294967295u), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -18176i), Struct_1(vec3<bool>(false, false, false), vec4<f32>(379f, 906f, -2127f, 292f))), Struct_2(vec4<i32>(i32(-2147483648), 915i, -36427i, -1i), vec4<u32>(4294967295u, 4294967295u, 1u, 104685u), vec2<bool>(false, false), vec2<i32>(-12627i, -1i), Struct_1(vec3<bool>(false, false, false), vec4<f32>(2266f, -434f, -454f, -326f))), Struct_2(vec4<i32>(-1i, -39814i, i32(-2147483648), 22419i), vec4<u32>(88016u, 4294967295u, 7632u, 0u), vec2<bool>(false, false), vec2<i32>(-1i, 2147483647i), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-571f, -551f, -1000f, 2465f))), Struct_2(vec4<i32>(2147483647i, -23202i, 0i, 16665i), vec4<u32>(2275u, 18325u, 48246u, 55581u), vec2<bool>(true, false), vec2<i32>(1i, 1i), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-366f, 1000f, 1000f, -1040f))), Struct_2(vec4<i32>(12607i, 3343i, -1i, 20278i), vec4<u32>(63702u, 53536u, 6003u, 41294u), vec2<bool>(true, false), vec2<i32>(23980i, 75719i), Struct_1(vec3<bool>(false, false, true), vec4<f32>(-674f, 1291f, 908f, 549f))), Struct_2(vec4<i32>(-74670i, 0i, i32(-2147483648), -33854i), vec4<u32>(85516u, 1u, 23563u, 58510u), vec2<bool>(true, true), vec2<i32>(-1i, -55339i), Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1000f, -618f, 1518f, -324f))), Struct_2(vec4<i32>(-43991i, 2147483647i, 0i, 2147483647i), vec4<u32>(70081u, 60646u, 4294967295u, 58335u), vec2<bool>(true, true), vec2<i32>(-1i, 5091i), Struct_1(vec3<bool>(true, true, false), vec4<f32>(1076f, 123f, 1386f, 1000f))), Struct_2(vec4<i32>(2147483647i, -23688i, 75062i, 1i), vec4<u32>(0u, 58029u, 35537u, 1u), vec2<bool>(true, true), vec2<i32>(0i, -1i), Struct_1(vec3<bool>(true, false, true), vec4<f32>(2047f, -358f, 875f, -486f))), Struct_2(vec4<i32>(2147483647i, 12844i, 0i, 2147483647i), vec4<u32>(1059u, 1u, 58272u, 36205u), vec2<bool>(true, true), vec2<i32>(-18461i, 0i), Struct_1(vec3<bool>(true, false, false), vec4<f32>(753f, 591f, -468f, -1375f))), Struct_2(vec4<i32>(-15767i, -13180i, 54102i, 0i), vec4<u32>(23432u, 5060u, 1u, 0u), vec2<bool>(false, false), vec2<i32>(482i, -23868i), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1294f, -1283f, 1094f, -542f))), Struct_2(vec4<i32>(11549i, 2147483647i, 60185i, -5231i), vec4<u32>(1505u, 1u, 51294u, 1u), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), -37i), Struct_1(vec3<bool>(true, false, false), vec4<f32>(-871f, -645f, -1210f, 478f))), Struct_2(vec4<i32>(2147483647i, -1i, 1i, -9060i), vec4<u32>(0u, 16117u, 4294967295u, 0u), vec2<bool>(false, true), vec2<i32>(2147483647i, 22233i), Struct_1(vec3<bool>(true, false, true), vec4<f32>(1227f, 419f, -577f, 318f))), Struct_2(vec4<i32>(-23695i, 0i, i32(-2147483648), 2147483647i), vec4<u32>(0u, 0u, 0u, 1u), vec2<bool>(true, false), vec2<i32>(1i, -12635i), Struct_1(vec3<bool>(false, false, true), vec4<f32>(624f, 436f, -178f, 245f))), Struct_2(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 10881i), vec4<u32>(1u, 1u, 1u, 0u), vec2<bool>(true, false), vec2<i32>(-1i, -15551i), Struct_1(vec3<bool>(true, false, true), vec4<f32>(1089f, -317f, -1650f, 320f))), Struct_2(vec4<i32>(19150i, 2147483647i, -31413i, 22623i), vec4<u32>(20344u, 1u, 4294967295u, 4294967295u), vec2<bool>(false, false), vec2<i32>(i32(-2147483648), -33252i), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-1246f, -1052f, -296f, -254f))), Struct_2(vec4<i32>(2147483647i, -1i, 1i, 54553i), vec4<u32>(30770u, 21765u, 18906u, 1u), vec2<bool>(true, true), vec2<i32>(0i, 2147483647i), Struct_1(vec3<bool>(true, false, true), vec4<f32>(-393f, 1620f, -501f, -2020f))), Struct_2(vec4<i32>(2147483647i, 0i, 11446i, 1i), vec4<u32>(4294967295u, 71353u, 59994u, 18308u), vec2<bool>(true, true), vec2<i32>(-1i, 1i), Struct_1(vec3<bool>(false, false, true), vec4<f32>(847f, 797f, -998f, -1502f))), Struct_2(vec4<i32>(11072i, 0i, 1i, i32(-2147483648)), vec4<u32>(0u, 55195u, 4294967295u, 0u), vec2<bool>(false, true), vec2<i32>(-7297i, 0i), Struct_1(vec3<bool>(false, true, false), vec4<f32>(-790f, -105f, -513f, -355f))), Struct_2(vec4<i32>(6321i, -1i, -1i, -39737i), vec4<u32>(59987u, 73635u, 4294967295u, 0u), vec2<bool>(false, true), vec2<i32>(1i, 2147483647i), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1545f, -1262f, -1563f, 791f))), Struct_2(vec4<i32>(35280i, 0i, -59043i, 2147483647i), vec4<u32>(0u, 64459u, 26080u, 20587u), vec2<bool>(true, true), vec2<i32>(-1i, 38516i), Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1593f, 1251f, -464f, 799f))), Struct_2(vec4<i32>(i32(-2147483648), -1i, -45989i, 49410i), vec4<u32>(4815u, 4294967295u, 4294967295u, 477u), vec2<bool>(true, false), vec2<i32>(2147483647i, 1i), Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1067f, -1486f, 898f, 384f))), Struct_2(vec4<i32>(1i, i32(-2147483648), 1i, i32(-2147483648)), vec4<u32>(1u, 53750u, 45502u, 0u), vec2<bool>(false, false), vec2<i32>(2147483647i, 79624i), Struct_1(vec3<bool>(false, true, false), vec4<f32>(-974f, -380f, 128f, 811f))), Struct_2(vec4<i32>(-44734i, -26814i, 0i, 7842i), vec4<u32>(66492u, 4294967295u, 4294967295u, 49022u), vec2<bool>(false, true), vec2<i32>(2147483647i, 36398i), Struct_1(vec3<bool>(true, false, false), vec4<f32>(-1037f, 320f, -1643f, 594f))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(u_input.e, 30u)] << (~_wgslsmith_dot_vec3_u32(vec3<u32>(14040u, u_input.e, 86609u), firstLeadingBit(vec3<u32>(u_input.e, 10404u, 1u))) % 32u), u_input.c, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, abs(countOneBits(1u))), min(reverseBits(vec2<u32>(4294967295u, u_input.e)), ~vec2<u32>(26831u, u_input.e)) & countOneBits(vec2<u32>(58649u, u_input.c) & vec2<u32>(u_input.e, 0u))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(81703u, u_input.e), u_input.c | u_input.e, 59039u, abs(u_input.e)), firstTrailingBit(vec4<u32>(0u, u_input.e, 1u, u_input.c) << (vec4<u32>(u_input.e, 11050u, 1u, u_input.c) % vec4<u32>(32u)))), ~_wgslsmith_div_u32(u_input.e, 52435u)));
    global3 = array<Struct_2, 28>();
    return 119256u;
}

fn func_2() -> Struct_3 {
    global1 = array<i32, 30>();
    let var_0 = global3[_wgslsmith_index_u32(0u, 28u)];
    global3 = array<Struct_2, 28>();
    global2 = array<vec3<u32>, 10>();
    var var_1 = Struct_3(-1i, _wgslsmith_mult_u32(~u_input.e, func_3(select(vec3<bool>(var_0.e.a.x, var_0.c.x, var_0.c.x), var_0.e.a, true))), vec2<u32>(var_0.b.x, u_input.e), vec2<u32>(var_0.b.x, ~(~max(11423u, u_input.e))));
    return Struct_3(-1i << (~(min(var_1.c.x, var_1.d.x) & 55332u) % 32u), var_1.d.x, var_1.d, vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(var_0.b.xw, var_1.d), _wgslsmith_clamp_u32(reverseBits(4294967295u), 4294967295u, var_1.b)), var_0.b.x ^ ~0u));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<u32>) -> u32 {
    global3 = array<Struct_2, 28>();
    global0 = array<vec4<i32>, 15>();
    return _wgslsmith_add_u32(min(~4294967295u | min(4294967295u, firstLeadingBit(arg_2.x)), arg_1.c.x), func_3(!vec3<bool>(!arg_0, arg_0, all(vec3<bool>(true, false, arg_0)))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<u32>(max(u_input.c, u_input.c), ~(~(u_input.e ^ u_input.c))) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, func_4(all(vec4<bool>(true, true, true, true)), func_2(), select(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, 38221u, 0u, u_input.c), vec4<bool>(true, true, false, true)))), (vec2<u32>(0u, u_input.e) << (vec2<u32>(1u, u_input.c) % vec2<u32>(32u))) << (vec2<u32>(~u_input.c, ~0u) % vec2<u32>(32u)), vec2<u32>(u_input.e, ~u_input.c));
    global0 = array<vec4<i32>, 15>();
    var var_1 = ~vec4<u32>(~1786u, func_3(vec3<bool>(true, true, true)), func_4(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), func_2(), ~(~vec4<u32>(u_input.c, 27410u, 17431u, var_0.x))), _wgslsmith_add_u32(0u, func_4(true, Struct_3(-2147483647i, var_0.x, var_0, vec2<u32>(u_input.c, 4294967295u)), vec4<u32>(var_0.x, var_0.x, 4294967295u, u_input.e))));
    global0 = array<vec4<i32>, 15>();
    global1 = array<i32, 30>();
    return Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(-1000f, 812f)), _wgslsmith_f_op_f32(f32(-1f) * -665f), -191f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 28>();
    global0 = array<vec4<i32>, 15>();
    var var_0 = false;
    global2 = array<vec3<u32>, 10>();
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(0u, 15u)], ~vec4<u32>(firstLeadingBit(0u >> (u_input.e % 32u)), _wgslsmith_sub_u32(select(1647u, 0u, false), u_input.c), ~u_input.c, 1u), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true), u_input.d.xz, func_1());
    let var_2 = vec4<i32>(~1i << (countOneBits(var_1.b.x) % 32u), var_1.a.x, -26367i, var_1.a.x);
    var var_3 = !vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.e.b.x), _wgslsmith_f_op_f32(trunc(-804f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.b.x + var_1.e.b.x)), var_1.e.a.x, var_1.e.a.x);
    let var_4 = func_2();
    let var_5 = Struct_2(-global0[_wgslsmith_index_u32(func_2().c.x, 15u)], abs(abs(var_1.b)), !(!var_1.c), firstTrailingBit(abs(vec2<i32>(0i, -var_1.a.x))), Struct_1(vec3<bool>(true, var_3.x, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(20088u, 10u)], vec3<u32>(11299u, var_1.b.x, 6786u)) == ~27298u), _wgslsmith_f_op_vec4_f32(var_1.e.b * vec4<f32>(-1012f, _wgslsmith_f_op_f32(max(-341f, var_1.e.b.x)), _wgslsmith_f_op_f32(var_1.e.b.x - 1036f), var_1.e.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_5.d.x, 0i, var_4.a), abs(max(global1[_wgslsmith_index_u32(695u, 30u)], var_1.d.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.e.b.x, var_5.e.b.x) + vec2<f32>(_wgslsmith_f_op_f32(trunc(-1272f)), var_5.e.b.x)), _wgslsmith_f_op_vec3_f32(trunc(var_1.e.b.yxw)));
}

