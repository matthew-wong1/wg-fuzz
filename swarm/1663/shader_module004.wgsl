struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(4294967295u, Struct_1(2883i, vec3<i32>(9115i, 1i, 1i), 0u, vec4<i32>(-1i, -1i, -1i, -19527i), vec2<i32>(0i, 0i)), -839f, vec3<u32>(4294967295u, 4410u, 1u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(4294967295u, Struct_1(-13903i, vec3<i32>(40850i, 2147483647i, 6913i), 107899u, vec4<i32>(2147483647i, -8310i, 4853i, 1i), vec2<i32>(i32(-2147483648), -23708i)), -1351f, vec3<u32>(0u, 4339u, 0u), vec2<i32>(-1i, -1i)));

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(Struct_1(i32(-2147483648), vec3<i32>(13907i, 16188i, 2147483647i), 6918u, vec4<i32>(33213i, 0i, 27026i, -63765i), vec2<i32>(-42362i, -17540i)), -5612i, 488f, Struct_1(-30247i, vec3<i32>(0i, 0i, -96928i), 0u, vec4<i32>(i32(-2147483648), 13940i, -35088i, 30426i), vec2<i32>(1i, i32(-2147483648)))), Struct_3(Struct_1(37851i, vec3<i32>(0i, 43789i, -1i), 1u, vec4<i32>(25476i, i32(-2147483648), -32052i, 0i), vec2<i32>(11509i, 1i)), 7233i, -208f, Struct_1(1i, vec3<i32>(-38438i, 0i, -21466i), 0u, vec4<i32>(-1i, 2147483647i, 34410i, 8696i), vec2<i32>(-18765i, 35024i))), Struct_3(Struct_1(23230i, vec3<i32>(1i, 4272i, -1i), 1u, vec4<i32>(-1i, -17746i, 0i, 33319i), vec2<i32>(1i, -12736i)), -23557i, -1245f, Struct_1(12026i, vec3<i32>(-10501i, -40340i, -43821i), 2041u, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 299i), vec2<i32>(102i, 0i))), Struct_3(Struct_1(-97375i, vec3<i32>(-1i, 41589i, 24117i), 0u, vec4<i32>(1i, i32(-2147483648), -17053i, 40731i), vec2<i32>(0i, 13982i)), 94784i, -1000f, Struct_1(0i, vec3<i32>(62114i, 26755i, -32090i), 4294967295u, vec4<i32>(64522i, 1i, 34953i, 0i), vec2<i32>(0i, 0i))), Struct_3(Struct_1(2147483647i, vec3<i32>(0i, -42079i, 3078i), 70542u, vec4<i32>(1i, 1i, 777i, -19972i), vec2<i32>(-15282i, -14341i)), i32(-2147483648), 1370f, Struct_1(23110i, vec3<i32>(i32(-2147483648), 0i, -16892i), 85243u, vec4<i32>(0i, 15805i, 64640i, -395i), vec2<i32>(55478i, -38698i))), Struct_3(Struct_1(-38980i, vec3<i32>(-9138i, 0i, 32678i), 87020u, vec4<i32>(-30834i, -82775i, 0i, 0i), vec2<i32>(-23819i, -7415i)), 38641i, 2844f, Struct_1(-1i, vec3<i32>(9619i, 0i, 17755i), 4294967295u, vec4<i32>(-17894i, 1i, 13252i, 0i), vec2<i32>(-48146i, -23580i))), Struct_3(Struct_1(-39868i, vec3<i32>(i32(-2147483648), 0i, 35092i), 0u, vec4<i32>(i32(-2147483648), 1i, 18172i, i32(-2147483648)), vec2<i32>(-1i, -4650i)), 37889i, 1970f, Struct_1(i32(-2147483648), vec3<i32>(-46864i, 11803i, 0i), 72303u, vec4<i32>(0i, -30954i, -7802i, -26814i), vec2<i32>(0i, 2147483647i))), Struct_3(Struct_1(-21997i, vec3<i32>(-1i, -37172i, 17688i), 3694u, vec4<i32>(i32(-2147483648), 2147483647i, 32242i, 1i), vec2<i32>(2147483647i, 1i)), -27609i, -965f, Struct_1(i32(-2147483648), vec3<i32>(-13506i, 748i, 2147483647i), 1u, vec4<i32>(-6475i, -15530i, 5080i, 0i), vec2<i32>(i32(-2147483648), -45962i))), Struct_3(Struct_1(i32(-2147483648), vec3<i32>(-53934i, 0i, -16947i), 21480u, vec4<i32>(3379i, i32(-2147483648), 1i, -26101i), vec2<i32>(48426i, -12602i)), -1i, 1375f, Struct_1(0i, vec3<i32>(-13575i, -15524i, -49693i), 4294967295u, vec4<i32>(77076i, 2147483647i, 2147483647i, 1i), vec2<i32>(12742i, 2147483647i))), Struct_3(Struct_1(-11322i, vec3<i32>(-20576i, 44975i, 1i), 4294967295u, vec4<i32>(2147483647i, -1i, 12825i, 1i), vec2<i32>(0i, -1i)), i32(-2147483648), 201f, Struct_1(0i, vec3<i32>(-5599i, 0i, i32(-2147483648)), 1u, vec4<i32>(0i, i32(-2147483648), -24259i, -51595i), vec2<i32>(1i, 15297i))), Struct_3(Struct_1(-295i, vec3<i32>(2147483647i, 1i, 34985i), 6588u, vec4<i32>(i32(-2147483648), 2147483647i, 1i, -5290i), vec2<i32>(2147483647i, 43639i)), -28676i, 296f, Struct_1(i32(-2147483648), vec3<i32>(12455i, 44348i, i32(-2147483648)), 60410u, vec4<i32>(27829i, 0i, 2147483647i, -2160i), vec2<i32>(-15131i, 46003i))), Struct_3(Struct_1(-17584i, vec3<i32>(12807i, i32(-2147483648), -24331i), 27120u, vec4<i32>(-16854i, 24483i, 26666i, i32(-2147483648)), vec2<i32>(1i, -5553i)), 0i, -567f, Struct_1(2147483647i, vec3<i32>(-28434i, -82810i, -32442i), 62791u, vec4<i32>(1i, -24734i, 17964i, i32(-2147483648)), vec2<i32>(2248i, -1577i))), Struct_3(Struct_1(11201i, vec3<i32>(16118i, 0i, 0i), 17611u, vec4<i32>(1i, -25449i, 14885i, 0i), vec2<i32>(-11781i, -45343i)), 10339i, 466f, Struct_1(2147483647i, vec3<i32>(1i, 23913i, 66561i), 45477u, vec4<i32>(-20502i, -1i, 1i, 51711i), vec2<i32>(2147483647i, 64032i))), Struct_3(Struct_1(1i, vec3<i32>(2147483647i, i32(-2147483648), 0i), 18103u, vec4<i32>(2147483647i, 3580i, -22140i, 0i), vec2<i32>(-16772i, -15243i)), 62079i, -602f, Struct_1(-30704i, vec3<i32>(2147483647i, -1i, i32(-2147483648)), 33183u, vec4<i32>(14370i, -1i, -1i, 2147483647i), vec2<i32>(8160i, 2779i))), Struct_3(Struct_1(-33333i, vec3<i32>(0i, 1i, 1i), 0u, vec4<i32>(1i, -17732i, 1i, -14160i), vec2<i32>(-23898i, 0i)), 2147483647i, 738f, Struct_1(1i, vec3<i32>(1i, -11008i, 2147483647i), 8695u, vec4<i32>(-43428i, 0i, i32(-2147483648), 12120i), vec2<i32>(-1246i, 1263i))), Struct_3(Struct_1(0i, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), 12580u, vec4<i32>(-30879i, i32(-2147483648), 1i, 1i), vec2<i32>(0i, 2147483647i)), -45791i, 700f, Struct_1(-48043i, vec3<i32>(i32(-2147483648), i32(-2147483648), -3877i), 1u, vec4<i32>(0i, 4853i, 1i, 9269i), vec2<i32>(2147483647i, -17435i))), Struct_3(Struct_1(1i, vec3<i32>(-1i, -11047i, -60458i), 1u, vec4<i32>(1i, 79407i, 8661i, 5486i), vec2<i32>(-7443i, i32(-2147483648))), 0i, 822f, Struct_1(36022i, vec3<i32>(i32(-2147483648), 2599i, i32(-2147483648)), 1u, vec4<i32>(11615i, 1i, -6140i, 1i), vec2<i32>(-656i, 2147483647i))), Struct_3(Struct_1(i32(-2147483648), vec3<i32>(1i, -1i, 13881i), 0u, vec4<i32>(24744i, 2147483647i, 65377i, 2147483647i), vec2<i32>(-16069i, 0i)), 1i, -356f, Struct_1(2147483647i, vec3<i32>(4365i, -11563i, -4195i), 43628u, vec4<i32>(12582i, -1i, -69622i, i32(-2147483648)), vec2<i32>(2147483647i, 43715i))), Struct_3(Struct_1(2147483647i, vec3<i32>(2147483647i, 1i, -1i), 4294967295u, vec4<i32>(1i, 5054i, -1i, 49218i), vec2<i32>(0i, -35581i)), -19372i, 135f, Struct_1(10984i, vec3<i32>(-40281i, -13854i, 0i), 1u, vec4<i32>(8556i, 1i, 0i, -61294i), vec2<i32>(-37474i, i32(-2147483648)))), Struct_3(Struct_1(-26708i, vec3<i32>(-1i, i32(-2147483648), -1i), 1u, vec4<i32>(0i, 0i, -15302i, 0i), vec2<i32>(0i, -23760i)), -51093i, -261f, Struct_1(30590i, vec3<i32>(-12711i, 0i, -7035i), 13372u, vec4<i32>(36701i, 384i, -38600i, 2147483647i), vec2<i32>(16538i, i32(-2147483648)))), Struct_3(Struct_1(14103i, vec3<i32>(1171i, 6407i, 0i), 4294967295u, vec4<i32>(-17555i, -1i, -26790i, 2147483647i), vec2<i32>(-26634i, -31148i)), 1i, 1656f, Struct_1(15233i, vec3<i32>(47500i, 1i, 2147483647i), 63301u, vec4<i32>(2147483647i, i32(-2147483648), 28303i, 0i), vec2<i32>(0i, 0i))), Struct_3(Struct_1(-16613i, vec3<i32>(-18752i, 0i, 6453i), 33555u, vec4<i32>(2147483647i, 33529i, 1i, 2147483647i), vec2<i32>(36907i, -14874i)), -11881i, -1094f, Struct_1(i32(-2147483648), vec3<i32>(76368i, 1i, 49912i), 1u, vec4<i32>(-21046i, 0i, -49046i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)))), Struct_3(Struct_1(23237i, vec3<i32>(0i, i32(-2147483648), 1i), 0u, vec4<i32>(34814i, 1i, 2147483647i, 18304i), vec2<i32>(20298i, 57463i)), -46533i, -1189f, Struct_1(-9072i, vec3<i32>(-14617i, -46251i, -9562i), 6651u, vec4<i32>(-53770i, 27725i, 1i, -1i), vec2<i32>(38004i, 2147483647i))), Struct_3(Struct_1(i32(-2147483648), vec3<i32>(2147483647i, -23640i, i32(-2147483648)), 1u, vec4<i32>(-18555i, i32(-2147483648), i32(-2147483648), 1i), vec2<i32>(30808i, 13088i)), 2147483647i, 428f, Struct_1(-34205i, vec3<i32>(60932i, -40995i, 0i), 36251u, vec4<i32>(42293i, 27609i, i32(-2147483648), 2147483647i), vec2<i32>(28132i, i32(-2147483648)))), Struct_3(Struct_1(2147483647i, vec3<i32>(-1i, 0i, -15503i), 47439u, vec4<i32>(i32(-2147483648), 52828i, 2147483647i, 1i), vec2<i32>(1i, -16398i)), -1i, 737f, Struct_1(-34997i, vec3<i32>(57525i, 1i, 2147483647i), 81494u, vec4<i32>(-1i, -1i, 2147483647i, -5809i), vec2<i32>(4353i, -4982i))), Struct_3(Struct_1(13318i, vec3<i32>(18246i, -1i, -1842i), 15228u, vec4<i32>(63474i, -11364i, -50064i, i32(-2147483648)), vec2<i32>(-1i, 0i)), 38051i, 567f, Struct_1(-17683i, vec3<i32>(2147483647i, 2147483647i, -1i), 26411u, vec4<i32>(48845i, 2147483647i, 7661i, 0i), vec2<i32>(-1209i, -4527i))));

var<private> global3: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    global1 = array<Struct_2, 2>();
    global0 = !vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c.c, arg_1.c.c, false))) >= -1358f, !arg_1.b.x, all(!vec2<bool>(true, arg_1.b.x)));
    global2 = array<Struct_3, 26>();
    var var_0 = (9094i >> (arg_0.c % 32u)) >= -63465i;
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zy, vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_div_u32(~arg_1.d, abs(arg_0.c)), firstLeadingBit(58968u))) <= 1u;
    return u_input.a.x;
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, ~(29854u << (1u % 32u))), u_input.a.x, ~(~(~1u))), arg_0, -992f, vec3<u32>(func_3(Struct_1(2147483647i, u_input.b, u_input.a.x, vec4<i32>(-1995i, 1i, u_input.b.x, u_input.b.x), u_input.b.xx), Struct_4(Struct_1(-1i, vec3<i32>(u_input.b.x, arg_0.b.x, 0i), arg_0.c, arg_0.d, vec2<i32>(-4727i, 52065i)), vec4<bool>(false, true, global0.x, false), global2[_wgslsmith_index_u32(4294967295u, 26u)], 1u)) & ~arg_0.c, ~(_wgslsmith_mod_u32(4294967295u, u_input.a.x) >> (4294967295u % 32u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(3980u, u_input.a.x, 36975u)), vec3<u32>(4294967295u, arg_0.c, max(u_input.a.x, 4294967295u)))), _wgslsmith_mult_vec2_i32(firstTrailingBit(arg_0.e), abs(-(~arg_0.d.yz))));
    global3 = firstTrailingBit(~1i);
    global3 = ~var_0.e.x;
    global0 = vec4<bool>(any(vec3<bool>(!(var_0.b.a > 5892i), arg_0.b.x >= 1i, true)), global0.x, 12182u <= min(arg_0.c, arg_0.c), global0.x);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, ~_wgslsmith_div_vec2_u32(var_0.d.yx, u_input.a.yw)), 2u)];
    return vec2<i32>(firstLeadingBit(min(-(~u_input.b.x), firstTrailingBit(var_0.e.x))), max(var_0.e.x, (_wgslsmith_dot_vec2_i32(vec2<i32>(-29919i, var_1.e.x), vec2<i32>(u_input.b.x, -2147483647i)) | 1i) << ((_wgslsmith_clamp_u32(var_1.d.x, 11935u, var_0.b.c) >> (var_0.b.c % 32u)) % 32u)));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(u_input.a.x, Struct_1(-u_input.b.x, ~(~(~u_input.b)), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a.x, 105377u)), _wgslsmith_sub_vec2_u32(u_input.a.xy, vec2<u32>(0u, 3002u))), firstTrailingBit(select(vec4<i32>(-2147483647i, 5910i, u_input.b.x, -43437i), abs(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<bool>(global0.x, true, true, global0.x))), u_input.b.xx), 241f, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, ~u_input.a.x, select(48173u, u_input.a.x, global0.x)) | ~(~u_input.a.xwy), ~_wgslsmith_mod_vec3_u32(vec3<u32>(14236u, u_input.a.x, u_input.a.x), u_input.a.yyx)), _wgslsmith_mult_vec2_i32(vec2<i32>(6293i, _wgslsmith_div_i32(u_input.b.x, ~u_input.b.x)), func_2(Struct_1(u_input.b.x, vec3<i32>(2147483647i, -21162i, 0i), u_input.a.x, vec4<i32>(-1i, -2147483647i, -2270i, -16453i), u_input.b.xx)) | u_input.b.yz));
    let var_1 = _wgslsmith_clamp_u32(~_wgslsmith_div_u32(4294967295u, 72858u ^ select(u_input.a.x, var_0.a, global0.x)), firstLeadingBit(~_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), var_0.b.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_0.c - -304f), var_0.c, var_0.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_0.c) - vec3<f32>(1734f, 594f, -465f))), vec3<f32>(var_0.c, 1f, var_0.c), global0.yzz))))));
    let var_3 = global2[_wgslsmith_index_u32(29998u ^ ~(~var_0.b.c), 26u)];
    global1 = array<Struct_2, 2>();
    return global2[_wgslsmith_index_u32(u_input.a.x, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_2, 2>();
    global2 = array<Struct_3, 26>();
    let var_1 = ~_wgslsmith_dot_vec2_u32(~(~u_input.a.xw) << (u_input.a.yw % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(~u_input.a.ww, u_input.a.zx));
    var var_2 = 45540i;
    var var_3 = func_1();
    let var_4 = Struct_2((var_3.d.c << (_wgslsmith_dot_vec2_u32(~u_input.a.yw, u_input.a.zw) % 32u)) | 50383u, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c)) - _wgslsmith_f_op_f32(var_0.c + var_0.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -411f))))) * _wgslsmith_f_op_f32(max(-1000f, var_3.c))), ~(~(~_wgslsmith_mult_vec3_u32(u_input.a.xwy, u_input.a.yxw))), select(-_wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.b.yx), firstLeadingBit(vec2<i32>(-5230i, -38262i))), _wgslsmith_div_vec2_i32(abs(var_0.d.d.yx) ^ abs(vec2<i32>(1i, u_input.b.x)), abs(vec2<i32>(0i, var_3.a.b.x))), false));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e);
}

