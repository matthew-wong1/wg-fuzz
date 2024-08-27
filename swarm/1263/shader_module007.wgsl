struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 15> = array<i32, 15>(i32(-2147483648), 1i, 25215i, -1813i, 1i, 20590i, -7499i, 0i, -1i, 53790i, -1i, -1i, 40306i, 1i, -5133i);

var<private> global2: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_2(vec2<i32>(1i, 6712i), Struct_1(true)), Struct_3(vec3<f32>(-501f, -1000f, 702f), vec2<bool>(false, true), true), -91006i, vec4<i32>(47372i, 0i, 1i, -39068i), vec4<i32>(-48881i, 2147483647i, 46218i, 0i)), Struct_4(Struct_2(vec2<i32>(-1i, -53542i), Struct_1(false)), Struct_3(vec3<f32>(-857f, 1395f, -2017f), vec2<bool>(false, true), false), 1i, vec4<i32>(-6362i, 28310i, -110815i, i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 7393i, 1i)), Struct_4(Struct_2(vec2<i32>(26015i, 21244i), Struct_1(false)), Struct_3(vec3<f32>(-835f, -949f, -496f), vec2<bool>(false, true), true), 48839i, vec4<i32>(-1i, 13811i, 25340i, -17083i), vec4<i32>(i32(-2147483648), i32(-2147483648), -97079i, 75078i)), Struct_4(Struct_2(vec2<i32>(-1i, 88086i), Struct_1(false)), Struct_3(vec3<f32>(938f, -350f, 1859f), vec2<bool>(false, false), false), i32(-2147483648), vec4<i32>(0i, i32(-2147483648), -9097i, -6687i), vec4<i32>(37808i, i32(-2147483648), 34881i, -1i)), Struct_4(Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(false)), Struct_3(vec3<f32>(-141f, -630f, 483f), vec2<bool>(false, true), false), -22385i, vec4<i32>(-4186i, i32(-2147483648), -16768i, -34009i), vec4<i32>(-72139i, 21032i, 0i, 4576i)), Struct_4(Struct_2(vec2<i32>(-1i, 29203i), Struct_1(true)), Struct_3(vec3<f32>(-980f, -544f, -676f), vec2<bool>(false, true), false), 1i, vec4<i32>(0i, 11063i, -47354i, 8856i), vec4<i32>(0i, 1i, 15917i, -14502i)), Struct_4(Struct_2(vec2<i32>(-48579i, -1815i), Struct_1(true)), Struct_3(vec3<f32>(-407f, -978f, 368f), vec2<bool>(false, false), false), 3591i, vec4<i32>(1i, -39529i, i32(-2147483648), 57071i), vec4<i32>(-18777i, i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_4(Struct_2(vec2<i32>(-7771i, 29253i), Struct_1(true)), Struct_3(vec3<f32>(837f, 1688f, -2092f), vec2<bool>(false, true), false), 2147483647i, vec4<i32>(3994i, 1i, -6928i, 1i), vec4<i32>(-22618i, -19720i, 1i, -38975i)), Struct_4(Struct_2(vec2<i32>(30126i, -1i), Struct_1(false)), Struct_3(vec3<f32>(-336f, 1452f, 635f), vec2<bool>(false, false), false), -2177i, vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 0i), vec4<i32>(4763i, 2147483647i, -1i, 1i)), Struct_4(Struct_2(vec2<i32>(46058i, 2147483647i), Struct_1(false)), Struct_3(vec3<f32>(1588f, -205f, -1936f), vec2<bool>(false, false), false), 18295i, vec4<i32>(0i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), -56729i, 1i)), Struct_4(Struct_2(vec2<i32>(2147483647i, -35924i), Struct_1(false)), Struct_3(vec3<f32>(222f, -905f, 123f), vec2<bool>(true, false), false), -17686i, vec4<i32>(23917i, 2147483647i, 27850i, 1i), vec4<i32>(i32(-2147483648), 59053i, -1i, 12754i)), Struct_4(Struct_2(vec2<i32>(-1434i, -3064i), Struct_1(true)), Struct_3(vec3<f32>(-119f, 631f, 670f), vec2<bool>(true, false), true), 0i, vec4<i32>(29040i, -24697i, 29711i, -15200i), vec4<i32>(-2221i, -13370i, -4431i, 15455i)), Struct_4(Struct_2(vec2<i32>(29526i, i32(-2147483648)), Struct_1(false)), Struct_3(vec3<f32>(-1630f, -984f, 799f), vec2<bool>(true, true), true), i32(-2147483648), vec4<i32>(-1i, -2026i, 56266i, -12555i), vec4<i32>(2147483647i, -19878i, 0i, 13301i)), Struct_4(Struct_2(vec2<i32>(-7153i, 15502i), Struct_1(false)), Struct_3(vec3<f32>(1000f, -1491f, 261f), vec2<bool>(true, true), true), 32135i, vec4<i32>(-25463i, -14022i, 2147483647i, -1i), vec4<i32>(1i, -33400i, -1i, 59164i)), Struct_4(Struct_2(vec2<i32>(-31583i, 2147483647i), Struct_1(true)), Struct_3(vec3<f32>(-1014f, 493f, -382f), vec2<bool>(true, true), false), -20834i, vec4<i32>(2520i, -33255i, 0i, -1i), vec4<i32>(-46648i, -1i, -41217i, -18520i)), Struct_4(Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(true)), Struct_3(vec3<f32>(277f, -521f, -1191f), vec2<bool>(true, true), true), -1i, vec4<i32>(-39212i, -1i, 1i, 0i), vec4<i32>(27188i, i32(-2147483648), 42537i, 2147483647i)), Struct_4(Struct_2(vec2<i32>(2147483647i, 0i), Struct_1(false)), Struct_3(vec3<f32>(3116f, 1084f, -998f), vec2<bool>(false, true), false), -23605i, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, 20988i, -9760i, 24978i)), Struct_4(Struct_2(vec2<i32>(i32(-2147483648), 46393i), Struct_1(false)), Struct_3(vec3<f32>(744f, -741f, 1323f), vec2<bool>(true, false), true), i32(-2147483648), vec4<i32>(2147483647i, 1i, -40642i, 0i), vec4<i32>(2147483647i, 2147483647i, 1i, -47779i)), Struct_4(Struct_2(vec2<i32>(0i, 0i), Struct_1(false)), Struct_3(vec3<f32>(401f, 1166f, -1000f), vec2<bool>(false, true), false), 13141i, vec4<i32>(2147483647i, 24427i, i32(-2147483648), -42435i), vec4<i32>(2147483647i, 2147483647i, 18766i, 24061i)), Struct_4(Struct_2(vec2<i32>(1000i, 59294i), Struct_1(true)), Struct_3(vec3<f32>(2794f, -1939f, -112f), vec2<bool>(true, true), false), 1i, vec4<i32>(5335i, 47818i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 1i, 6534i, 24222i)), Struct_4(Struct_2(vec2<i32>(-1i, 48215i), Struct_1(true)), Struct_3(vec3<f32>(533f, -943f, -636f), vec2<bool>(false, false), true), 2147483647i, vec4<i32>(-5336i, 52796i, 16916i, -16826i), vec4<i32>(i32(-2147483648), 47672i, i32(-2147483648), i32(-2147483648))), Struct_4(Struct_2(vec2<i32>(2262i, -28531i), Struct_1(true)), Struct_3(vec3<f32>(1630f, -354f, -1266f), vec2<bool>(false, true), true), -53885i, vec4<i32>(i32(-2147483648), -1i, -37896i, i32(-2147483648)), vec4<i32>(0i, -41453i, -11334i, 1i)), Struct_4(Struct_2(vec2<i32>(-1i, -1190i), Struct_1(false)), Struct_3(vec3<f32>(-551f, 835f, -790f), vec2<bool>(false, false), true), 2147483647i, vec4<i32>(2147483647i, 1i, i32(-2147483648), 2147483647i), vec4<i32>(-25068i, 15468i, -36877i, i32(-2147483648))), Struct_4(Struct_2(vec2<i32>(-16204i, -37253i), Struct_1(false)), Struct_3(vec3<f32>(-930f, 1238f, -173f), vec2<bool>(false, false), true), 2147483647i, vec4<i32>(0i, i32(-2147483648), 1i, -21498i), vec4<i32>(17324i, i32(-2147483648), -10493i, -21578i)), Struct_4(Struct_2(vec2<i32>(1i, 2147483647i), Struct_1(true)), Struct_3(vec3<f32>(632f, 1106f, 483f), vec2<bool>(false, true), false), -34058i, vec4<i32>(i32(-2147483648), 30789i, -36017i, 9147i), vec4<i32>(3855i, 10347i, 0i, -1915i)), Struct_4(Struct_2(vec2<i32>(23490i, 0i), Struct_1(false)), Struct_3(vec3<f32>(-1975f, 327f, 1653f), vec2<bool>(false, true), true), -1i, vec4<i32>(-49015i, -38332i, -13402i, -2615i), vec4<i32>(-10676i, -20103i, -1i, i32(-2147483648))), Struct_4(Struct_2(vec2<i32>(-1i, i32(-2147483648)), Struct_1(false)), Struct_3(vec3<f32>(877f, 800f, 1584f), vec2<bool>(false, true), false), 0i, vec4<i32>(-1i, -11604i, i32(-2147483648), -28821i), vec4<i32>(-1i, i32(-2147483648), -1i, i32(-2147483648))), Struct_4(Struct_2(vec2<i32>(29733i, 58223i), Struct_1(true)), Struct_3(vec3<f32>(182f, -117f, -183f), vec2<bool>(false, true), false), 21380i, vec4<i32>(0i, 49472i, 7590i, 9207i), vec4<i32>(12452i, -1i, 2147483647i, -335i)), Struct_4(Struct_2(vec2<i32>(47543i, i32(-2147483648)), Struct_1(false)), Struct_3(vec3<f32>(-224f, 1251f, 2053f), vec2<bool>(true, true), true), -61048i, vec4<i32>(4525i, 2147483647i, 24340i, 43618i), vec4<i32>(33952i, -32764i, -1i, 27125i)));

var<private> global3: array<Struct_1, 8>;

var<private> global4: array<Struct_2, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_add_i32(reverseBits(_wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(countOneBits(u_input.c) & (u_input.c & u_input.c), 15u)])), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~(~u_input.c) | min(u_input.c | u_input.c, ~u_input.c), 15u)], 1i));
    var var_1 = 4294967295u | _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, ~u_input.c, _wgslsmith_mod_u32(u_input.c, 92903u)), vec3<u32>(u_input.c, (48542u << (u_input.c % 32u)) ^ 102261u, 1u));
    let var_2 = ~(select(vec2<u32>(19773u, 4294967295u) | reverseBits(vec2<u32>(57063u, u_input.c)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 524u))), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))) << (~vec2<u32>(countOneBits(6432u), ~4294967295u) % vec2<u32>(32u)));
    let var_3 = true;
    var var_4 = Struct_4(Struct_2(~max(_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_2.x, 15u)], u_input.a), vec2<i32>(global1[_wgslsmith_index_u32(38920u, 15u)], u_input.a)), -vec2<i32>(global1[_wgslsmith_index_u32(var_2.x, 15u)], global1[_wgslsmith_index_u32(53186u, 15u)])), Struct_1((var_2.x >> (u_input.c % 32u)) >= u_input.c)), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 742f, arg_0)))) * vec3<f32>(_wgslsmith_f_op_f32(1080f + arg_0), -1754f, -228f)), vec2<bool>(select(true, var_3, !var_3), var_3 || any(vec4<bool>(false, var_3, var_3, var_3))), false), -5657i, select((countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], -32547i, 28713i, global1[_wgslsmith_index_u32(56675u, 15u)])) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, var_2.x, 4294967295u, 26826u), vec4<u32>(78919u, var_2.x, 72932u, 4294967295u)) % vec4<u32>(32u))) ^ (-vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(u_input.c, 15u)], -1i, 69754i) | vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(var_2.x, 15u)], -2147483647i, -22280i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -1i, global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(1u, 15u)]) ^ -vec4<i32>(u_input.a, u_input.a, 2147483647i, global1[_wgslsmith_index_u32(u_input.c, 15u)]), reverseBits(vec4<i32>(30808i, -10378i, 0i, u_input.b))), (true | (var_3 || var_3)) | var_3), vec4<i32>(~countOneBits(i32(-1i) * -14307i), 0i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, var_2.x, 4294967295u), vec3<u32>(1u, u_input.c, 13845u)) ^ ~4294967295u, 15u)], -(i32(-1i) * -u_input.b)));
    return _wgslsmith_f_op_f32(f32(-1f) * -137f);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(498f + 326f), _wgslsmith_f_op_f32(-796f - -872f), _wgslsmith_f_op_f32(func_3(373f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1005f), _wgslsmith_f_op_f32(-378f * -1000f), _wgslsmith_f_op_f32(min(-902f, 315f)))), vec3<bool>(select(true, false, true) == true, false, any(vec3<bool>(true, true, true))))), vec2<bool>(!(_wgslsmith_dot_vec3_i32(vec3<i32>(2492i, u_input.b, u_input.a), vec3<i32>(9266i, -15156i, global1[_wgslsmith_index_u32(u_input.c, 15u)])) != (-1233i ^ u_input.b)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(493f, 1108f)))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(367f)) * -898f))));
    global4 = array<Struct_2, 10>();
    var var_1 = var_0.a.zy;
    var var_2 = -(~select(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.b, 1i, 12715i), vec3<i32>(1i, 9510i, 20255i), vec3<bool>(var_0.c, true, var_0.b.x)), reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)], -20741i))), abs(vec3<i32>(global1[_wgslsmith_index_u32(53150u, 15u)], -1i, 1979i) | vec3<i32>(-21581i, 0i, u_input.b)), !(u_input.c <= u_input.c)));
    global1 = array<i32, 15>();
    return Struct_3(var_0.a, var_0.b, global1[_wgslsmith_index_u32(1u, 15u)] > u_input.b);
}

fn func_4(arg_0: Struct_4) -> vec3<u32> {
    let var_0 = arg_0.a;
    var var_1 = select(select(vec4<bool>(select(true, !var_0.b.a, true), (arg_0.a.b.a | false) || all(vec4<bool>(true, true, false, true)), var_0.b.a, false), !(!select(vec4<bool>(false, true, var_0.b.a, true), vec4<bool>(true, arg_0.b.c, arg_0.a.b.a, var_0.b.a), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b.a, arg_0.a.b.a | true, arg_0.b.c | var_0.b.a, true), vec4<bool>(all(vec4<bool>(true, true, false, arg_0.b.c)), all(vec4<bool>(false, false, false, arg_0.a.b.a)), any(arg_0.b.b), false))), select(vec4<bool>(false, all(vec2<bool>(false, arg_0.a.b.a)), all(vec3<bool>(var_0.b.a, true, true)), !(u_input.a != 2147483647i)), select(select(!vec4<bool>(arg_0.a.b.a, var_0.b.a, var_0.b.a, false), vec4<bool>(var_0.b.a, true, arg_0.b.c, true), vec4<bool>(var_0.b.a, arg_0.a.b.a, var_0.b.a, true)), vec4<bool>(true, var_0.b.a, func_2().b.x, false), select(!vec4<bool>(false, arg_0.a.b.a, arg_0.b.c, var_0.b.a), vec4<bool>(var_0.b.a, false, var_0.b.a, var_0.b.a), global1[_wgslsmith_index_u32(32816u, 15u)] < global1[_wgslsmith_index_u32(48393u, 15u)])), false), vec4<bool>(var_0.b.a, false, var_0.b.a | false, true));
    let var_2 = vec2<bool>(false, var_0.b.a);
    global4 = array<Struct_2, 10>();
    let var_3 = max(1u, 4294967295u);
    return vec3<u32>(31934u, 84994u, _wgslsmith_mod_u32(0u, u_input.c));
}

fn func_1() -> i32 {
    global1 = array<i32, 15>();
    let var_0 = _wgslsmith_div_vec3_u32(func_4(Struct_4(global4[_wgslsmith_index_u32(0u << (1u % 32u), 10u)], func_2(), 22407i, ~(-vec4<i32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)])), _wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 15u)], -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 15u)], 1i), vec4<i32>(-2147483647i, -77281i, global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)])))), vec3<u32>(~_wgslsmith_add_u32(firstTrailingBit(21310u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c))), _wgslsmith_div_u32(u_input.c, _wgslsmith_add_u32(firstTrailingBit(1u), u_input.c)), 0u));
    let var_1 = func_2().a.zz;
    global2 = array<Struct_4, 29>();
    global1 = array<i32, 15>();
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (firstLeadingBit(vec3<i32>(31787i, u_input.a >> (8058u % 32u), func_1())) ^ (firstLeadingBit(-vec3<i32>(381i, 37986i, -1i)) << (~vec3<u32>(u_input.c, 14194u, u_input.c) % vec3<u32>(32u)))) & reverseBits(countOneBits(~vec3<i32>(2147483647i, u_input.a, u_input.a)) & _wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 15u)], 47656i, 0i), vec3<i32>(47960i, global1[_wgslsmith_index_u32(u_input.c, 15u)], 0i)));
    let var_1 = any(vec2<bool>(true, !(true != all(vec2<bool>(false, true)))));
    let var_2 = Struct_2(vec2<i32>(_wgslsmith_mod_i32(15154i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(86665u, 15u)], var_0.x, 2147483647i), vec4<i32>(var_0.x, u_input.a, -25328i, var_0.x) | vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.c, 15u)], 8070i, var_0.x))), 2147483647i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, u_input.c), u_input.c), (vec2<u32>(u_input.c, 75931u) | vec2<u32>(u_input.c, u_input.c)) & vec2<u32>(u_input.c, 1u)), ~vec2<u32>(~u_input.c, u_input.c)), 8u)]);
    global4 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-377f)) - _wgslsmith_f_op_f32(-1419f - 647f)), -734f), ~(~(~max(vec3<u32>(u_input.c, 8421u, 4294967295u), vec3<u32>(u_input.c, 17582u, 4294967295u)))), global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.c), 15u)], countOneBits(_wgslsmith_mod_i32(u_input.a, abs(-global1[_wgslsmith_index_u32(u_input.c, 15u)]))), var_2.a.x);
}

