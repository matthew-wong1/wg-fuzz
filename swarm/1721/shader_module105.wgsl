struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_1(52886u, 48560i, true, vec4<i32>(-1i, -55663i, -48256i, -26683i), true), Struct_1(60834u, 2147483647i, true, vec4<i32>(32517i, 0i, -3140i, -47801i), false), Struct_1(1u, -1347i, false, vec4<i32>(3845i, 28420i, 0i, 34407i), true)), Struct_4(Struct_1(26147u, 0i, true, vec4<i32>(2147483647i, 46864i, 1i, 8774i), true), Struct_1(4294967295u, 0i, true, vec4<i32>(2147483647i, -14867i, 18996i, -36653i), false), Struct_1(67489u, 17948i, true, vec4<i32>(24606i, 23413i, -1i, -1i), true)), Struct_4(Struct_1(0u, -28316i, false, vec4<i32>(-1i, 37722i, 52922i, 17860i), false), Struct_1(66592u, 2114i, false, vec4<i32>(47955i, 36107i, -73619i, -1i), false), Struct_1(0u, i32(-2147483648), true, vec4<i32>(-35728i, 15757i, 77504i, 2147483647i), true)), Struct_4(Struct_1(38143u, 31624i, true, vec4<i32>(i32(-2147483648), -481i, 36454i, -33649i), true), Struct_1(99202u, -33249i, true, vec4<i32>(1i, 2147483647i, -26187i, -15809i), false), Struct_1(1u, 2147483647i, true, vec4<i32>(12019i, i32(-2147483648), -15171i, i32(-2147483648)), true)), Struct_4(Struct_1(0u, 2147483647i, true, vec4<i32>(2147483647i, 1i, 11433i, -7764i), true), Struct_1(0u, -1i, true, vec4<i32>(29066i, -17719i, -30034i, 0i), false), Struct_1(4294967295u, 0i, true, vec4<i32>(-3379i, -1i, -1i, 13664i), false)), Struct_4(Struct_1(7471u, 1i, true, vec4<i32>(-1i, -58817i, i32(-2147483648), i32(-2147483648)), false), Struct_1(2076u, -2982i, true, vec4<i32>(46209i, -1i, 29392i, 1i), false), Struct_1(63902u, -14226i, true, vec4<i32>(-30234i, -407i, 54535i, 2147483647i), false)), Struct_4(Struct_1(56289u, -43868i, false, vec4<i32>(2147483647i, 1i, 6246i, -1i), false), Struct_1(4431u, -6555i, false, vec4<i32>(-1i, 2147483647i, 62518i, -1i), true), Struct_1(78617u, 14984i, true, vec4<i32>(-19802i, 1i, -1i, 40805i), false)), Struct_4(Struct_1(4294967295u, 0i, true, vec4<i32>(42319i, 1i, 2147483647i, 1994i), false), Struct_1(1u, 1i, true, vec4<i32>(51320i, 1i, 1i, 2147483647i), true), Struct_1(0u, 1i, true, vec4<i32>(28988i, -28927i, -1i, i32(-2147483648)), false)), Struct_4(Struct_1(0u, 0i, true, vec4<i32>(-1i, -1i, -980i, 24549i), false), Struct_1(6242u, i32(-2147483648), false, vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 2147483647i), true), Struct_1(30672u, -32660i, true, vec4<i32>(2147483647i, -28584i, -10697i, -1i), false)), Struct_4(Struct_1(0u, -21595i, true, vec4<i32>(11941i, i32(-2147483648), 2147483647i, 0i), false), Struct_1(25041u, 2147483647i, false, vec4<i32>(2147483647i, 46353i, 10104i, 0i), false), Struct_1(0u, 1717i, true, vec4<i32>(2147483647i, 42079i, -30726i, 1i), true)), Struct_4(Struct_1(43945u, 2885i, false, vec4<i32>(-56648i, 0i, -16569i, -3085i), false), Struct_1(0u, -45679i, false, vec4<i32>(1i, 0i, 1623i, 2147483647i), true), Struct_1(121572u, i32(-2147483648), false, vec4<i32>(-7555i, 0i, -60889i, i32(-2147483648)), false)), Struct_4(Struct_1(4294967295u, 6022i, false, vec4<i32>(-8912i, 0i, 23402i, -1i), false), Struct_1(5058u, 26586i, true, vec4<i32>(0i, 1858i, 2133i, -52956i), true), Struct_1(4294967295u, 1i, false, vec4<i32>(-24486i, i32(-2147483648), 17994i, 13349i), false)), Struct_4(Struct_1(75287u, 3927i, true, vec4<i32>(1i, -37637i, 40268i, i32(-2147483648)), false), Struct_1(3058u, 27180i, true, vec4<i32>(20340i, -37574i, 0i, i32(-2147483648)), false), Struct_1(0u, 16226i, true, vec4<i32>(-12514i, 0i, -2325i, -9213i), false)), Struct_4(Struct_1(34535u, i32(-2147483648), true, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -6482i), false), Struct_1(0u, 0i, true, vec4<i32>(1i, 3471i, 0i, -25315i), false), Struct_1(20761u, i32(-2147483648), false, vec4<i32>(-27082i, 2147483647i, -27468i, -5994i), false)), Struct_4(Struct_1(38066u, i32(-2147483648), false, vec4<i32>(i32(-2147483648), 0i, 0i, i32(-2147483648)), false), Struct_1(2205u, 4497i, true, vec4<i32>(2147483647i, i32(-2147483648), -1i, 7893i), true), Struct_1(9753u, 537i, true, vec4<i32>(19392i, 2147483647i, -16924i, -33188i), false)), Struct_4(Struct_1(65968u, 0i, true, vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 51011i), true), Struct_1(4294967295u, 2147483647i, true, vec4<i32>(1i, 0i, 0i, 1i), false), Struct_1(10174u, 0i, false, vec4<i32>(-50831i, -16087i, -6482i, -1i), false)), Struct_4(Struct_1(15387u, 2147483647i, false, vec4<i32>(-1i, 1i, 1i, 0i), false), Struct_1(82581u, -28300i, false, vec4<i32>(2147483647i, 43886i, 1i, 1i), false), Struct_1(2659u, 2147483647i, true, vec4<i32>(i32(-2147483648), -16001i, 34395i, -1i), false)), Struct_4(Struct_1(4294967295u, 7286i, true, vec4<i32>(1i, -1i, -13521i, 24544i), false), Struct_1(0u, i32(-2147483648), false, vec4<i32>(-30857i, 1i, 23776i, 1i), false), Struct_1(4294967295u, 14504i, true, vec4<i32>(-38632i, -6076i, 50343i, 0i), true)), Struct_4(Struct_1(0u, -5037i, true, vec4<i32>(1i, 6272i, -4762i, -1i), true), Struct_1(4294967295u, 23046i, false, vec4<i32>(-21007i, 4335i, -47153i, 26555i), false), Struct_1(35459u, 51783i, true, vec4<i32>(-6482i, -1i, 36689i, -3152i), true)), Struct_4(Struct_1(20674u, 37546i, true, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 1i), true), Struct_1(76541u, 29503i, false, vec4<i32>(2147483647i, 2419i, 0i, -1i), false), Struct_1(52140u, 7544i, true, vec4<i32>(0i, 16380i, -18443i, -1i), false)));

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<bool, 18>;

var<private> global3: array<Struct_1, 27>;

var<private> global4: array<i32, 12>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = global3[_wgslsmith_index_u32(reverseBits(u_input.a), 27u)];
    var var_1 = ~1i;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-1437f, _wgslsmith_f_op_f32(min(-1000f, 1466f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), 1203f, -228f));
    var var_4 = min(~abs((vec2<u32>(15106u, u_input.a) & vec2<u32>(var_0.a, u_input.a)) >> (firstTrailingBit(vec2<u32>(var_0.a, var_0.a)) % vec2<u32>(32u))), vec2<u32>(4294967295u, 49u));
    return _wgslsmith_mod_vec2_u32(max(select(vec2<u32>(1u, 1u), vec2<u32>(~4294967295u, ~var_4.x), select(true && global2[_wgslsmith_index_u32(var_4.x, 18u)], any(vec4<bool>(true, var_0.e, global2[_wgslsmith_index_u32(20034u, 18u)], true)), all(vec4<bool>(var_0.e, true, false, false)))), vec2<u32>(4294967295u, _wgslsmith_div_u32(1u, var_0.a)) << (~min(vec2<u32>(var_0.a, 22788u), vec2<u32>(1945u, 60717u)) % vec2<u32>(32u))), ~(~(min(vec2<u32>(4294967295u, var_4.x), vec2<u32>(var_4.x, var_4.x)) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global4 = array<i32, 12>();
    return 346f;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> u32 {
    global4 = array<i32, 12>();
    var var_0 = global1[_wgslsmith_index_u32(arg_2.x, 30u)];
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -952f) - _wgslsmith_f_op_f32(f32(-1f) * -336f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(select(arg_2.x, 0u, var_0.a), global4[_wgslsmith_index_u32(4294967295u << (0u % 32u), 12u)], var_0.d.d.x == u_input.c.x, var_0.b.d, !var_0.d.c), Struct_3(-761f), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2 << (vec2<u32>(68106u, var_0.c.x) % vec2<u32>(32u)), func_3()), 27u)]))));
    let var_2 = 4294967295u;
    return ~min(firstTrailingBit(var_2), 1u);
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global3 = array<Struct_1, 27>();
    global0 = array<Struct_4, 20>();
    let var_0 = global3[_wgslsmith_index_u32(func_2(~(~abs(91753u << (u_input.a % 32u))), abs(50164u) | u_input.a, vec2<u32>(~u_input.a, _wgslsmith_sub_u32(_wgslsmith_add_u32(36101u, 30097u), ~(~u_input.a)))), 27u)];
    global4 = array<i32, 12>();
    global3 = array<Struct_1, 27>();
    return Struct_2(any(vec4<bool>(global2[_wgslsmith_index_u32(var_0.a, 18u)], arg_0.x, false, arg_0.x)), global3[_wgslsmith_index_u32(func_2(u_input.a, _wgslsmith_div_u32(13449u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a, var_0.a, var_0.a), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a))), reverseBits(~vec2<u32>(4294967295u, 13116u) | max(vec2<u32>(0u, var_0.a), vec2<u32>(4294967295u, var_0.a)))), 27u)], ~select(~vec3<u32>(42384u, var_0.a, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(26263u, 0u, 14240u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<bool>(true, true, false)) & vec3<u32>(~u_input.a, u_input.a, 4294967295u), global3[_wgslsmith_index_u32(max(~var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a), 1u, ~0u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 35279u, 40959u), vec3<u32>(u_input.a, u_input.a, 46544u)) >> (~vec3<u32>(u_input.a, 13988u, 11277u) % vec3<u32>(32u)))), 27u)]);
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-604f, _wgslsmith_div_f32(-1082f, -450f)) + -117f)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1835f, -842f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-726f, var_0.a))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-540f - 1117f), -543f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -296f), var_0.a) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 169f), vec2<f32>(var_0.a, 1052f), false)) + vec2<f32>(var_0.a, var_0.a))) * vec2<f32>(369f, var_0.a)));
    global2 = array<bool, 18>();
    let var_2 = Struct_3(1160f);
    return _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(0u, 21262u, u_input.a, arg_1.c.x)) >> (firstTrailingBit(reverseBits(~vec4<u32>(60716u, 1u, arg_0, 4294967295u))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(1u, 10071u), ~(~(~48159u)), arg_1.d.a >> (0u % 32u), ~34673u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1261f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(886f * 1000f)))));
    let var_1 = vec3<u32>(countOneBits(u_input.a), u_input.a, abs(72936u));
    let var_2 = Struct_2(select(9386u != var_1.x, select(false != global2[_wgslsmith_index_u32(var_1.x, 18u)], true, global2[_wgslsmith_index_u32(u_input.a, 18u)] != global2[_wgslsmith_index_u32(1u, 18u)]), !global2[_wgslsmith_index_u32(108368u, 18u)] & global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 18u)]) || global2[_wgslsmith_index_u32(~var_1.x, 18u)], global3[_wgslsmith_index_u32(~abs(var_1.x), 27u)], var_1, Struct_1(~func_5(select(u_input.a, var_1.x, false), func_1(vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 18u)], global2[_wgslsmith_index_u32(var_1.x, 18u)], global2[_wgslsmith_index_u32(u_input.a, 18u)]))), 1i, true, abs(vec4<i32>(u_input.b, -1i, -1i, 1i)), !any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(var_1.x, 18u)])) || true));
    global1 = array<Struct_2, 30>();
    let var_3 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(abs(u_input.d ^ var_2.b.d.yzw), u_input.d), countOneBits(-vec3<i32>(min(global4[_wgslsmith_index_u32(var_2.d.a, 12u)], global4[_wgslsmith_index_u32(15571u, 12u)]), -var_2.d.b, global4[_wgslsmith_index_u32(1u, 12u)])), abs(_wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(28390i, global4[_wgslsmith_index_u32(28495u, 12u)], 77992i), vec3<i32>(global4[_wgslsmith_index_u32(u_input.a, 12u)], 1i, var_2.b.d.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-9328i, global4[_wgslsmith_index_u32(4294967295u, 12u)], 1i), var_2.b.d.zxy) & var_2.d.d.zyw, vec3<i32>(max(global4[_wgslsmith_index_u32(u_input.a, 12u)], var_2.b.b), func_1(vec3<bool>(true, false, false)).b.d.x, _wgslsmith_sub_i32(-1i, -7028i)))));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(700f, -1540f)))) * 322f));
    global2 = array<bool, 18>();
    var_4 = Struct_3(-532f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.x, 68313u), ~vec3<u32>(2434u, 75254u, 0u))));
}

