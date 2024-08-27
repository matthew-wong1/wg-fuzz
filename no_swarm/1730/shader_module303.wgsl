struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, true, false, false, false, false, false, true, true);

var<private> global1: Struct_3 = Struct_3(62333u, false, vec2<i32>(0i, 2147483647i), Struct_1(vec4<i32>(-1i, 3998i, -60401i, 0i), vec3<i32>(0i, 24952i, 58858i), -1863f, -236f), Struct_1(vec4<i32>(2147483647i, -5919i, -34299i, 39856i), vec3<i32>(0i, 29565i, 36367i), 357f, 198f));

var<private> global2: Struct_3;

var<private> global3: array<i32, 1> = array<i32, 1>(i32(-2147483648));

var<private> global4: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(11676u, true, vec2<i32>(i32(-2147483648), 1i), Struct_1(vec4<i32>(-35073i, 91280i, -24357i, 50259i), vec3<i32>(0i, 12198i, 31589i), 1000f, -192f), Struct_1(vec4<i32>(i32(-2147483648), -10228i, 1i, -23156i), vec3<i32>(-7369i, -3845i, -13061i), -1798f, -1299f)), Struct_3(0u, false, vec2<i32>(-1i, -12017i), Struct_1(vec4<i32>(22714i, i32(-2147483648), -39685i, 2147483647i), vec3<i32>(1i, 0i, 0i), -1452f, 759f), Struct_1(vec4<i32>(i32(-2147483648), -1i, 51221i, 23115i), vec3<i32>(-7490i, i32(-2147483648), -1i), 1820f, 1166f)), Struct_3(4294967295u, false, vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec4<i32>(-1i, 9909i, -37475i, -1i), vec3<i32>(i32(-2147483648), 23099i, -1489i), -1821f, 510f), Struct_1(vec4<i32>(2147483647i, -1i, i32(-2147483648), -47544i), vec3<i32>(0i, -1i, 1i), 881f, -1720f)), Struct_3(20673u, true, vec2<i32>(0i, -67358i), Struct_1(vec4<i32>(14215i, 0i, 16744i, 32004i), vec3<i32>(-1i, -40080i, -1i), -530f, 309f), Struct_1(vec4<i32>(0i, i32(-2147483648), 2147483647i, 1i), vec3<i32>(0i, -13755i, 0i), 1327f, 239f)), Struct_3(0u, true, vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec4<i32>(-13796i, 42906i, -7699i, -41000i), vec3<i32>(-38443i, 40165i, 1i), 1198f, 185f), Struct_1(vec4<i32>(1i, 21246i, 21136i, -51500i), vec3<i32>(23978i, i32(-2147483648), -22821i), -1000f, 843f)), Struct_3(50736u, true, vec2<i32>(10908i, -1i), Struct_1(vec4<i32>(-57401i, -8890i, 3431i, -35442i), vec3<i32>(0i, i32(-2147483648), -51167i), 268f, 693f), Struct_1(vec4<i32>(17598i, 56351i, 0i, -36018i), vec3<i32>(-1i, 1i, i32(-2147483648)), 600f, 761f)), Struct_3(4294967295u, false, vec2<i32>(0i, 2147483647i), Struct_1(vec4<i32>(-1i, 10728i, 44151i, 39312i), vec3<i32>(1i, 1i, i32(-2147483648)), 207f, 443f), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 13106i, 30958i), vec3<i32>(i32(-2147483648), -14139i, 36280i), -105f, 1058f)), Struct_3(1u, true, vec2<i32>(-1i, -51335i), Struct_1(vec4<i32>(-16608i, i32(-2147483648), 13873i, 53731i), vec3<i32>(0i, 28708i, -20555i), 166f, 1187f), Struct_1(vec4<i32>(-1i, -1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, -16538i, 0i), -483f, 456f)), Struct_3(4294967295u, true, vec2<i32>(-26444i, -31382i), Struct_1(vec4<i32>(1i, 32699i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 40388i, 2147483647i), -153f, 660f), Struct_1(vec4<i32>(-10338i, -42057i, -5686i, -35562i), vec3<i32>(86547i, 1i, 63221i), 2207f, 1000f)), Struct_3(4294967295u, false, vec2<i32>(1i, -1i), Struct_1(vec4<i32>(-1i, -5774i, -11637i, 55082i), vec3<i32>(-5340i, 5492i, 2147483647i), 1085f, -1302f), Struct_1(vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, -47885i, -3753i), -612f, -1252f)), Struct_3(32468u, true, vec2<i32>(2147483647i, 40739i), Struct_1(vec4<i32>(-1i, 12206i, 0i, 0i), vec3<i32>(-55532i, 2147483647i, -19075i), -1214f, -172f), Struct_1(vec4<i32>(-22067i, 0i, 30947i, -73711i), vec3<i32>(1i, 14780i, 73378i), -922f, -1565f)), Struct_3(1u, true, vec2<i32>(-17986i, 23471i), Struct_1(vec4<i32>(2147483647i, 46674i, 1i, -48649i), vec3<i32>(-11313i, 0i, 1i), 1403f, 1303f), Struct_1(vec4<i32>(-15525i, 18445i, 6096i, -21919i), vec3<i32>(-82271i, -8425i, -5714i), -247f, 984f)), Struct_3(22826u, false, vec2<i32>(-20285i, 9919i), Struct_1(vec4<i32>(29534i, 1i, -1i, -16030i), vec3<i32>(14121i, 269i, -1i), -1029f, 1411f), Struct_1(vec4<i32>(1i, -1i, 2147483647i, 0i), vec3<i32>(0i, -8498i, 27581i), -2204f, 1319f)), Struct_3(0u, false, vec2<i32>(23067i, 18809i), Struct_1(vec4<i32>(-1i, 0i, 1i, i32(-2147483648)), vec3<i32>(28329i, -35728i, 2147483647i), -216f, 996f), Struct_1(vec4<i32>(-738i, i32(-2147483648), 2147483647i, -23078i), vec3<i32>(5666i, -30641i, -33038i), 345f, -603f)), Struct_3(0u, false, vec2<i32>(-1i, -37966i), Struct_1(vec4<i32>(-1i, 2147483647i, 2147483647i, 23153i), vec3<i32>(0i, i32(-2147483648), 9168i), 326f, -157f), Struct_1(vec4<i32>(2147483647i, 74052i, 5966i, 1i), vec3<i32>(57034i, 69228i, 2147483647i), -1270f, 965f)), Struct_3(29091u, false, vec2<i32>(2147483647i, 32625i), Struct_1(vec4<i32>(-22800i, i32(-2147483648), -19322i, 41897i), vec3<i32>(-19481i, 11054i, 0i), -1000f, 1052f), Struct_1(vec4<i32>(6539i, 7619i, -4413i, 27951i), vec3<i32>(321i, -31796i, -6159i), -441f, 1000f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_5 {
    global2 = Struct_3(_wgslsmith_div_u32(u_input.c, global1.a) & _wgslsmith_dot_vec3_u32(max(u_input.b, vec3<u32>(u_input.c, 25807u, u_input.c)), ~(~u_input.b)), global3[_wgslsmith_index_u32(global1.a, 1u)] == firstLeadingBit(0i), reverseBits(abs(-global2.e.a.yx)), global2.e, global2.e);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1164f))), global2.e.c, _wgslsmith_f_op_f32(exp2(global1.e.d))));
    return Struct_5(max(-firstTrailingBit(global2.d.a.zz), _wgslsmith_mult_vec2_i32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 1075f), _wgslsmith_f_op_f32(select(var_0.x, -1807f, global1.b))) - _wgslsmith_f_op_f32(ceil(1211f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.e.d, global1.e.d) + var_0.x) - var_0.x)), false);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_5) -> bool {
    var var_0 = arg_0.c;
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(abs(u_input.b ^ (vec3<u32>(77471u, global1.a, 62912u) << (u_input.b % vec3<u32>(32u)))), vec3<u32>(~firstLeadingBit(0u), _wgslsmith_add_u32(~global1.a, global2.a), arg_1.a)), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 1u, arg_1.a), u_input.b), ~vec3<u32>(1u, 1u, global2.a)), u_input.b, u_input.b));
    var var_2 = !vec4<bool>(false, global1.b, true, func_1().c);
    global0 = array<bool, 9>();
    var var_3 = Struct_2(Struct_1(-_wgslsmith_mult_vec4_i32(arg_1.e.a, ~vec4<i32>(arg_1.c.x, -57456i, u_input.a.x, global3[_wgslsmith_index_u32(7279u, 1u)])), vec3<i32>(2147483647i, abs(-2147483647i), u_input.a.x), _wgslsmith_f_op_f32(-arg_1.d.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1974f + _wgslsmith_f_op_f32(global1.d.c * global2.d.d)), -925f))));
    return (u_input.a.x >= -60277i) & true;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: vec2<bool>) -> i32 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(12894u, 26346u), 4294967295u), 16u)];
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(~firstLeadingBit(1u), 0u, ~67571u), ~countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(29981u, global1.a, 0u, var_0.a), vec4<u32>(1u, global2.a, global1.a, u_input.b.x)), abs(global2.a), var_0.a)));
    global4 = array<Struct_3, 16>();
    var_1 = vec3<u32>(~(~0u) ^ _wgslsmith_div_u32(min(_wgslsmith_sub_u32(var_0.a, 24117u), abs(1u)), abs(reverseBits(global1.a))), countOneBits(u_input.c), ~_wgslsmith_div_u32(21945u, _wgslsmith_div_u32(4294967295u, ~global1.a)));
    var var_2 = ~(vec4<u32>(1u, 23136u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, global2.a), vec2<u32>(4294967295u, var_0.a)), 1833u) << (vec4<u32>(global1.a, _wgslsmith_add_u32(47006u, 74545u), 1u, global2.a ^ global2.a) % vec4<u32>(32u))) | ~select(vec4<u32>(select(4294967295u, var_1.x, arg_1.x), var_1.x, ~global1.a, firstLeadingBit(var_1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 12818u, u_input.b.x) | vec4<u32>(0u, 75181u, 4294967295u, 23255u), vec4<u32>(global2.a, 6917u, 3424u, 1u)), !select(vec4<bool>(global1.b, true, global1.b, false), arg_1, arg_1));
    return global3[_wgslsmith_index_u32(40283u << ((30413u << (u_input.b.x % 32u)) % 32u), 1u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_4(arg_2, abs(2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.d.d, -1415f, -1023f), vec3<f32>(-1034f, 937f, -1289f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.d, 2339f, -788f)))), true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, global2.e.d, arg_3.c))))), arg_1);
    var var_1 = Struct_5(abs(-vec2<i32>(-21012i, arg_0.a.b.x) & ~abs(vec2<i32>(-13316i, 1i))), _wgslsmith_f_op_f32(-func_1().b), false);
    global3 = array<i32, 1>();
    let var_2 = -1i;
    global0 = array<bool, 9>();
    return Struct_2(global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 16>();
    var var_0 = func_4(Struct_2(global1.e), select(vec3<bool>(true && (true | global1.b), true, !global0[_wgslsmith_index_u32(~global2.a, 9u)]), vec3<bool>(any(vec4<bool>(global2.b, true, global1.b, global0[_wgslsmith_index_u32(4294967295u, 9u)])), global2.a > ~22047u, func_2(Struct_5(vec2<i32>(0i, global2.c.x), -1654f, true), Struct_3(global2.a, global2.b, vec2<i32>(-4466i, global3[_wgslsmith_index_u32(43210u, 1u)]), global1.d, global2.d), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global2.b), func_1())), global1.b), vec3<i32>(u_input.a.x, max(func_3(Struct_2(global1.e), vec4<bool>(false, global2.b, true, false), _wgslsmith_div_vec4_f32(vec4<f32>(-633f, global1.d.c, 1309f, global2.e.c), vec4<f32>(global2.d.d, -1274f, global1.d.d, -1000f)), !vec2<bool>(global1.b, global0[_wgslsmith_index_u32(global2.a, 9u)])), _wgslsmith_add_i32(~global3[_wgslsmith_index_u32(u_input.b.x, 1u)], _wgslsmith_mod_i32(-41018i, 2147483647i))), -global1.c.x), global2.d);
    let var_1 = _wgslsmith_f_op_f32(sign(-371f)) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.a.c));
    var var_2 = select(select(select(select(select(vec4<bool>(var_1, global1.b, global2.b, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, var_1)), !vec4<bool>(global2.b, false, var_1, var_1), any(vec2<bool>(var_1, false))), !vec4<bool>(true, true, false, global1.b), true), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(29445u, 9u)], global1.b, true, false), !vec4<bool>(var_1, true, global2.b, global1.b)), vec4<bool>(all(vec2<bool>(var_1, global1.b)), select(true, true, false), global1.e.d <= -815f, any(vec3<bool>(global2.b, false, global2.b))), true), !(global2.b | global2.b)), !vec4<bool>(true, func_2(Struct_5(global1.c, global1.d.c, false), Struct_3(global2.a, global2.b, global2.e.b.yy, Struct_1(vec4<i32>(var_0.a.a.x, global2.d.b.x, 41284i, global1.d.a.x), var_0.a.a.xzy, -1325f, var_0.a.c), var_0.a), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 9u)], false), func_1()), all(select(vec3<bool>(global1.b, global2.b, global1.b), vec3<bool>(true, global1.b, global1.b), vec3<bool>(true, false, false))), false), !any(select(select(vec3<bool>(true, global2.b, var_1), vec3<bool>(global1.b, var_1, false), vec3<bool>(true, global0[_wgslsmith_index_u32(global1.a, 9u)], var_1)), !vec3<bool>(global1.b, false, false), var_1)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.c, 1457f) - vec2<f32>(global2.e.c, 370f)))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(1844f, global1.d.c))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(592f, 441f) * vec2<f32>(var_0.a.d, -316f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.c, var_0.a.c) * vec2<f32>(global2.d.d, global1.d.d)), true)))))));
    let var_4 = var_3;
    var_0 = Struct_2(Struct_1(var_0.a.a, vec3<i32>(0i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global2.e.a.x, -9243i, 2147483647i, var_0.a.a.x)), _wgslsmith_div_vec4_i32(global2.d.a, var_0.a.a)), func_1().a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-839f - global1.e.d))) + -1938f), -1424f));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 1f, _wgslsmith_div_i32(global1.d.b.x, 1i), firstLeadingBit(global1.c.x));
}

