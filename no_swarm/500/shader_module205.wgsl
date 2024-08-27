struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(890i, i32(-2147483648), 1276f, vec2<u32>(67257u, 0u)), Struct_1(-28727i, 2147483647i, 2785f, vec2<u32>(4294967295u, 54697u)), Struct_1(2147483647i, -1i, -765f, vec2<u32>(1u, 4294967295u)), Struct_1(2147483647i, -30492i, -960f, vec2<u32>(78684u, 20561u)), Struct_1(1i, 0i, 1975f, vec2<u32>(67511u, 23296u)), Struct_1(-1i, -1i, -139f, vec2<u32>(57406u, 1u)), Struct_1(0i, 1i, 102f, vec2<u32>(4294967295u, 14607u)), Struct_1(-124i, i32(-2147483648), -1000f, vec2<u32>(1u, 1u)), Struct_1(0i, -1291i, 776f, vec2<u32>(1u, 4294967295u)), Struct_1(2147483647i, 4193i, -385f, vec2<u32>(71892u, 4294967295u)), Struct_1(i32(-2147483648), 2532i, 945f, vec2<u32>(1u, 1u)), Struct_1(-83833i, -14799i, -1000f, vec2<u32>(37721u, 0u)), Struct_1(29384i, i32(-2147483648), 221f, vec2<u32>(4294967295u, 1u)), Struct_1(2147483647i, -1i, -1008f, vec2<u32>(0u, 0u)), Struct_1(6484i, 20704i, 699f, vec2<u32>(1u, 1u)), Struct_1(0i, i32(-2147483648), -186f, vec2<u32>(28437u, 7543u)), Struct_1(55442i, 1i, 1639f, vec2<u32>(2593u, 26424u)), Struct_1(-43306i, i32(-2147483648), 428f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(26131i, -1i, -1962f, vec2<u32>(16117u, 21602u)), Struct_1(-38062i, 0i, -973f, vec2<u32>(93327u, 29679u)), Struct_1(14513i, 25537i, 1303f, vec2<u32>(24977u, 14307u)), Struct_1(-19524i, -9436i, -539f, vec2<u32>(142588u, 80132u)), Struct_1(-1i, -41640i, -1252f, vec2<u32>(38960u, 19459u)), Struct_1(1i, i32(-2147483648), -511f, vec2<u32>(4294967295u, 5149u)), Struct_1(45843i, 2147483647i, -1178f, vec2<u32>(4294967295u, 82647u)), Struct_1(-1i, i32(-2147483648), 699f, vec2<u32>(84259u, 0u)));

var<private> global1: Struct_1 = Struct_1(17851i, 2147483647i, -252f, vec2<u32>(16775u, 1u));

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(-45125i, true, vec4<u32>(1u, 4294967295u, 1u, 1u), Struct_2(vec4<i32>(2147483647i, -22719i, -1i, 2147483647i), 24065i, Struct_1(-1i, 1i, -1333f, vec2<u32>(1u, 1u)), vec3<i32>(-13785i, -15961i, -1i)), 13322i), Struct_3(4930i, true, vec4<u32>(4807u, 0u, 1u, 4294967295u), Struct_2(vec4<i32>(-3903i, 0i, -64177i, -1i), -1i, Struct_1(-32212i, 1i, -967f, vec2<u32>(12998u, 0u)), vec3<i32>(-37147i, -10621i, 31456i)), 2147483647i), Struct_3(21283i, true, vec4<u32>(0u, 0u, 1u, 59494u), Struct_2(vec4<i32>(20137i, 15231i, 46585i, 6079i), 0i, Struct_1(87995i, 24242i, 707f, vec2<u32>(13841u, 1u)), vec3<i32>(55841i, 1i, -4549i)), -33530i), Struct_3(2147483647i, false, vec4<u32>(4294967295u, 20603u, 0u, 4294967295u), Struct_2(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 1i), 2147483647i, Struct_1(-24187i, -1i, 1263f, vec2<u32>(22596u, 44621u)), vec3<i32>(-61517i, -1i, 2147483647i)), -42645i), Struct_3(15834i, false, vec4<u32>(0u, 37966u, 27670u, 38493u), Struct_2(vec4<i32>(i32(-2147483648), -1i, 61064i, 0i), i32(-2147483648), Struct_1(2147483647i, 20472i, -454f, vec2<u32>(67327u, 4294967295u)), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), -97344i), Struct_3(-10070i, false, vec4<u32>(1u, 16228u, 43916u, 29742u), Struct_2(vec4<i32>(79432i, 2147483647i, -17054i, 1i), 1i, Struct_1(38846i, 12059i, 1000f, vec2<u32>(9u, 0u)), vec3<i32>(-24350i, -16098i, 2147483647i)), -30903i), Struct_3(0i, true, vec4<u32>(74702u, 4294967295u, 1u, 62385u), Struct_2(vec4<i32>(i32(-2147483648), 23943i, 1i, 0i), -1687i, Struct_1(0i, 1i, 221f, vec2<u32>(20595u, 4294967295u)), vec3<i32>(1i, 12853i, 1i)), -1i), Struct_3(1i, true, vec4<u32>(41285u, 4294967295u, 4294967295u, 2372u), Struct_2(vec4<i32>(220i, i32(-2147483648), 39634i, 15141i), 13369i, Struct_1(-1i, -1i, -1081f, vec2<u32>(1u, 34347u)), vec3<i32>(62374i, 1i, -8830i)), 1i), Struct_3(9210i, false, vec4<u32>(1u, 0u, 48643u, 16483u), Struct_2(vec4<i32>(-1371i, 2147483647i, -18001i, 19486i), 0i, Struct_1(28280i, -1i, -451f, vec2<u32>(1u, 0u)), vec3<i32>(1i, 72995i, 2147483647i)), i32(-2147483648)), Struct_3(i32(-2147483648), true, vec4<u32>(1u, 0u, 59222u, 36226u), Struct_2(vec4<i32>(2147483647i, 0i, -16230i, 1i), i32(-2147483648), Struct_1(737i, -1i, 343f, vec2<u32>(1u, 4294967295u)), vec3<i32>(-1i, i32(-2147483648), -352i)), i32(-2147483648)), Struct_3(24874i, false, vec4<u32>(13303u, 45877u, 1u, 23487u), Struct_2(vec4<i32>(-1i, i32(-2147483648), -1i, 19214i), -1i, Struct_1(0i, 1i, -1642f, vec2<u32>(4294967295u, 1u)), vec3<i32>(-32959i, 38694i, 11349i)), -1i), Struct_3(-30282i, false, vec4<u32>(1u, 27783u, 8739u, 9327u), Struct_2(vec4<i32>(0i, -1i, -56424i, 1i), -1i, Struct_1(-73931i, -7322i, -1046f, vec2<u32>(0u, 4294967295u)), vec3<i32>(-10319i, 2147483647i, -14352i)), 0i), Struct_3(-39762i, true, vec4<u32>(5649u, 1u, 9817u, 41870u), Struct_2(vec4<i32>(-1i, 48329i, -34754i, -1i), 2377i, Struct_1(-1i, -161i, -118f, vec2<u32>(0u, 3543u)), vec3<i32>(-1i, 8094i, -19992i)), 22670i), Struct_3(4091i, false, vec4<u32>(68930u, 38199u, 0u, 1u), Struct_2(vec4<i32>(17424i, 54581i, -1i, i32(-2147483648)), 2147483647i, Struct_1(1i, 56396i, -1000f, vec2<u32>(20719u, 0u)), vec3<i32>(16268i, 11297i, 1i)), -4920i), Struct_3(0i, true, vec4<u32>(46484u, 4294967295u, 0u, 37355u), Struct_2(vec4<i32>(32886i, i32(-2147483648), 0i, 49541i), -19088i, Struct_1(i32(-2147483648), 0i, 437f, vec2<u32>(1u, 41618u)), vec3<i32>(19751i, 0i, 1i)), 9047i), Struct_3(2147483647i, false, vec4<u32>(34290u, 1u, 41659u, 8999u), Struct_2(vec4<i32>(18304i, 6526i, 2147483647i, 2147483647i), -30435i, Struct_1(-13267i, -1i, -132f, vec2<u32>(16420u, 65845u)), vec3<i32>(-1i, 67676i, 8290i)), 2147483647i), Struct_3(28568i, false, vec4<u32>(14161u, 0u, 21926u, 30326u), Struct_2(vec4<i32>(-3852i, 74089i, -1i, 5382i), -1i, Struct_1(i32(-2147483648), -32088i, -1259f, vec2<u32>(12u, 21452u)), vec3<i32>(2147483647i, 2147483647i, 1i)), 40112i), Struct_3(2147483647i, false, vec4<u32>(4294967295u, 9365u, 22192u, 1u), Struct_2(vec4<i32>(1i, 2147483647i, 2147483647i, -13094i), -23648i, Struct_1(765i, -7485i, 503f, vec2<u32>(1u, 4294967295u)), vec3<i32>(-1605i, -23413i, -1i)), 22190i), Struct_3(-1408i, true, vec4<u32>(45692u, 4294967295u, 4294967295u, 1u), Struct_2(vec4<i32>(2868i, -37486i, i32(-2147483648), 2147483647i), -26327i, Struct_1(2147483647i, 1i, -217f, vec2<u32>(22218u, 1109u)), vec3<i32>(2147483647i, 41516i, 0i)), -1154i), Struct_3(1i, true, vec4<u32>(0u, 0u, 0u, 4294967295u), Struct_2(vec4<i32>(2147483647i, 0i, -20721i, 0i), -45485i, Struct_1(1852i, 20663i, -462f, vec2<u32>(8934u, 4294967295u)), vec3<i32>(1i, 8486i, 1i)), -20511i), Struct_3(-10144i, true, vec4<u32>(4294967295u, 1u, 20292u, 54455u), Struct_2(vec4<i32>(7017i, i32(-2147483648), 0i, 0i), -5377i, Struct_1(13856i, 2147483647i, -586f, vec2<u32>(56847u, 87784u)), vec3<i32>(30051i, 25894i, 1i)), 36685i), Struct_3(0i, true, vec4<u32>(101997u, 0u, 9692u, 69960u), Struct_2(vec4<i32>(1i, 1i, 53159i, 0i), 60532i, Struct_1(-26620i, 9095i, 1325f, vec2<u32>(0u, 1u)), vec3<i32>(1i, 48370i, -13198i)), 30276i), Struct_3(2415i, false, vec4<u32>(18736u, 4294967295u, 53695u, 4294967295u), Struct_2(vec4<i32>(2147483647i, -13435i, -16297i, i32(-2147483648)), 1i, Struct_1(-1i, 36581i, 477f, vec2<u32>(4294967295u, 19903u)), vec3<i32>(-1i, 2147483647i, 0i)), -21602i), Struct_3(2147483647i, true, vec4<u32>(40395u, 35369u, 4294967295u, 85022u), Struct_2(vec4<i32>(1i, -1i, 0i, -10389i), -38025i, Struct_1(-7294i, i32(-2147483648), -1000f, vec2<u32>(1u, 1844u)), vec3<i32>(55190i, i32(-2147483648), -6217i)), -6185i), Struct_3(2147483647i, true, vec4<u32>(0u, 78278u, 74820u, 1u), Struct_2(vec4<i32>(-49227i, -1665i, 0i, 1i), 2733i, Struct_1(-6758i, i32(-2147483648), -867f, vec2<u32>(21460u, 0u)), vec3<i32>(12803i, 2147483647i, 0i)), 1107i), Struct_3(20703i, false, vec4<u32>(0u, 0u, 4294967295u, 1006u), Struct_2(vec4<i32>(i32(-2147483648), 0i, 41188i, 0i), -42122i, Struct_1(i32(-2147483648), 2147483647i, 1081f, vec2<u32>(41637u, 40199u)), vec3<i32>(1i, 1i, 48481i)), 2147483647i), Struct_3(i32(-2147483648), false, vec4<u32>(0u, 68879u, 19652u, 0u), Struct_2(vec4<i32>(27786i, 1i, -19663i, 45294i), 0i, Struct_1(-39284i, 2147483647i, -1000f, vec2<u32>(1u, 1u)), vec3<i32>(2246i, 2147483647i, 1i)), -3144i), Struct_3(-1i, false, vec4<u32>(38047u, 1u, 1253u, 9330u), Struct_2(vec4<i32>(29356i, -66342i, 0i, 10157i), 9718i, Struct_1(2147483647i, 1i, 430f, vec2<u32>(0u, 4294967295u)), vec3<i32>(2147483647i, 2147483647i, 1030i)), 5138i), Struct_3(2147483647i, true, vec4<u32>(0u, 3770u, 16648u, 23498u), Struct_2(vec4<i32>(2147483647i, -9310i, -1i, -24092i), -1i, Struct_1(0i, -19964i, 785f, vec2<u32>(69045u, 5518u)), vec3<i32>(2551i, -21019i, 1i)), -1i), Struct_3(36712i, false, vec4<u32>(1u, 1u, 1305u, 90476u), Struct_2(vec4<i32>(i32(-2147483648), -17593i, 1i, 39512i), 33899i, Struct_1(1258i, 0i, -618f, vec2<u32>(4294967295u, 1u)), vec3<i32>(30371i, -19688i, -13848i)), -1136i), Struct_3(-29788i, true, vec4<u32>(35533u, 39797u, 1u, 4294967295u), Struct_2(vec4<i32>(2147483647i, -1i, 69885i, -45000i), -10635i, Struct_1(14225i, 1i, 1264f, vec2<u32>(2281u, 1u)), vec3<i32>(-37021i, -35681i, 1i)), -38166i));

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_2, 27>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> i32 {
    let var_0 = -52486i;
    global4 = array<Struct_2, 27>();
    let var_1 = arg_1.d;
    global3 = select(vec3<bool>(any(!(!global3.yx)), true, true), !vec3<bool>(false, false, global3.x), vec3<bool>(true, !global3.x, !any(!global3.zx)));
    let var_2 = 0u;
    return arg_1.e;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = Struct_1(~global1.a, -arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-798f)) * _wgslsmith_f_op_f32(global1.c + 135f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c.c)))), ~firstLeadingBit(vec2<u32>(4294967295u | arg_0.d.c.d.x, ~43113u)));
    let var_1 = var_0;
    global2 = array<Struct_3, 31>();
    let var_2 = global0[_wgslsmith_index_u32(28825u, 26u)];
    global1 = var_0;
    return firstTrailingBit(arg_0.c);
}

fn func_2() -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1.d.x >> (_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 37095u), max(28682u, u_input.b)), ~(~58148u)) % 32u), ~(~u_input.a.x)), 31u)];
    var var_1 = var_0.b;
    var var_2 = func_4(Struct_3(global1.b, false, _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(var_0.c, vec4<u32>(31974u, var_0.c.x, 29166u, 99422u) & var_0.c), abs(~vec4<u32>(54975u, global1.d.x, var_0.d.c.d.x, var_0.c.x))), global4[_wgslsmith_index_u32(global1.d.x, 27u)], -2147483647i), Struct_2(var_0.d.a, func_3(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), u_input.a.xx), _wgslsmith_clamp_vec2_u32(vec2<u32>(73692u, var_0.c.x), var_0.c.zw, var_0.c.xy)), Struct_3(-1i, !global3.x, ~u_input.c, var_0.d, _wgslsmith_div_i32(global1.b, global1.b))), var_0.d.c, var_0.d.a.xyy));
    var var_3 = global2[_wgslsmith_index_u32(countOneBits(1u), 31u)];
    var var_4 = Struct_1(-29515i, 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), global1.d | _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(5080u, 4294967295u), var_3.c.zy), vec2<u32>(1u, u_input.b), var_3.c.yy));
    return var_0.d.b;
}

fn func_1(arg_0: i32, arg_1: f32) -> vec3<f32> {
    global2 = array<Struct_3, 31>();
    var var_0 = ~(~_wgslsmith_clamp_i32(func_2(), 0i, arg_0));
    let var_1 = vec3<f32>(1964f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-602f + 504f) + global1.c)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(283f)))))), 1506f);
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<f32>) -> Struct_1 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(0i, _wgslsmith_mod_i32(~_wgslsmith_sub_i32(global1.a >> (21006u % 32u), -1i), global1.a), _wgslsmith_f_op_f32(262f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), global1.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.c.x), global1.d), _wgslsmith_mult_u32(~u_input.c.x, abs(1u))), vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, global1.d.x)), ~10315u)));
    global4 = array<Struct_2, 27>();
    var var_0 = firstLeadingBit(global1.a);
    let var_1 = global3.x | !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global1.c)))) != _wgslsmith_div_f32(global1.c, global1.c));
    let var_2 = func_5(Struct_1(_wgslsmith_sub_i32(global1.b, global1.a), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(813f * -108f))), vec2<u32>(~17272u, 4294967295u)), _wgslsmith_div_vec2_i32(vec2<i32>(global1.b, -7369i) | (vec2<i32>(-2147483647i, 18311i) << (vec2<u32>(global1.d.x, u_input.c.x) % vec2<u32>(32u))), select(_wgslsmith_mod_vec2_i32(vec2<i32>(-51438i, -25400i), vec2<i32>(2147483647i, global1.b)), vec2<i32>(47651i, 32937i) ^ vec2<i32>(global1.b, global1.b), !global3.yy)) >> (~(~(~vec2<u32>(global1.d.x, 4294967295u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(480f, _wgslsmith_f_op_f32(-1790f + 580f), _wgslsmith_f_op_f32(324f * -435f)))) * _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(37040i, -26250i), vec2<i32>(global1.b, global1.a), vec2<i32>(1i, 29552i)), firstLeadingBit(vec2<i32>(-32011i, 1i))), _wgslsmith_f_op_f32(f32(-1f) * -265f)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c);
}

