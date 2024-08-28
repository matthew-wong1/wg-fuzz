struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<u32>(44056u, 0u), i32(-2147483648), 75038u, 54483u, 566f), Struct_1(vec2<u32>(454u, 12009u), 1i, 44847u, 73062u, 707f), Struct_1(vec2<u32>(1u, 0u), 4743i, 25590u, 4294967295u, 656f), Struct_1(vec2<u32>(1u, 1u), i32(-2147483648), 0u, 1u, -1000f), Struct_1(vec2<u32>(1u, 4294967295u), 1i, 1u, 4294967295u, 1323f), Struct_1(vec2<u32>(24442u, 1u), -12840i, 4294967295u, 0u, 254f), Struct_1(vec2<u32>(4294967295u, 48936u), -50243i, 4294967295u, 79485u, 172f), Struct_1(vec2<u32>(17699u, 47614u), 30490i, 1u, 12120u, -1452f), Struct_1(vec2<u32>(22410u, 42767u), 1i, 4294967295u, 6205u, -1000f), Struct_1(vec2<u32>(0u, 84256u), -1i, 39018u, 1u, -1669f), Struct_1(vec2<u32>(4294967295u, 39786u), 43728i, 17154u, 1u, -390f), Struct_1(vec2<u32>(4294967295u, 10327u), -13381i, 110511u, 0u, -723f), Struct_1(vec2<u32>(16061u, 25183u), 2147483647i, 15375u, 1u, -1417f), Struct_1(vec2<u32>(85204u, 1u), -9333i, 31705u, 49872u, 684f), Struct_1(vec2<u32>(0u, 34360u), 0i, 6304u, 24894u, 1437f), Struct_1(vec2<u32>(5197u, 19666u), 38046i, 11718u, 48625u, 219f), Struct_1(vec2<u32>(1u, 4294967295u), -54325i, 4294967295u, 4294967295u, -1475f), Struct_1(vec2<u32>(4294967295u, 58541u), 0i, 4294967295u, 70069u, -587f), Struct_1(vec2<u32>(117713u, 15183u), 2147483647i, 0u, 4294967295u, 1023f), Struct_1(vec2<u32>(39869u, 71355u), -27399i, 2254u, 0u, -1217f), Struct_1(vec2<u32>(1u, 0u), 2147483647i, 6941u, 73692u, -1788f), Struct_1(vec2<u32>(1u, 0u), -36338i, 4294967295u, 45376u, 388f), Struct_1(vec2<u32>(31046u, 15450u), 15254i, 39461u, 56740u, -244f), Struct_1(vec2<u32>(0u, 1u), -1i, 1u, 23925u, 306f), Struct_1(vec2<u32>(55551u, 1u), -14588i, 63037u, 1u, -1005f), Struct_1(vec2<u32>(24023u, 17598u), 8262i, 104110u, 1u, -1017f), Struct_1(vec2<u32>(0u, 1u), i32(-2147483648), 95279u, 26918u, -797f), Struct_1(vec2<u32>(60190u, 49311u), -13007i, 0u, 0u, 839f), Struct_1(vec2<u32>(0u, 1u), i32(-2147483648), 4294967295u, 33150u, 2176f));

var<private> global1: Struct_3;

var<private> global2: vec4<u32> = vec4<u32>(91656u, 0u, 1u, 9831u);

var<private> global3: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, 1i), vec2<i32>(2516i, 2147483647i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>) -> vec4<u32> {
    global2 = vec4<u32>(15434u, ~_wgslsmith_mult_u32(u_input.e, global1.a.c) | global1.a.c, ~_wgslsmith_sub_u32(u_input.a, global1.a.c), global2.x) << ((~abs(vec4<u32>(global2.x, 4294967295u, 4294967295u, 124624u) >> (vec4<u32>(global1.a.c, u_input.a, u_input.c, 85121u) % vec4<u32>(32u))) ^ (~(~vec4<u32>(1u, 77320u, global1.a.d, u_input.e)) ^ _wgslsmith_sub_vec4_u32(select(vec4<u32>(global1.a.c, global1.a.d, 0u, 1u), vec4<u32>(u_input.e, global2.x, 1u, 34160u), vec4<bool>(true, arg_0.x, arg_0.x, false)), vec4<u32>(2016u, u_input.c, u_input.a, global2.x) | vec4<u32>(1u, 1u, 36962u, u_input.e)))) % vec4<u32>(32u));
    let var_0 = global0[_wgslsmith_index_u32(~global1.a.d, 29u)];
    return min(vec4<u32>(_wgslsmith_mod_u32(4294967295u, max(reverseBits(0u), _wgslsmith_clamp_u32(78755u, global1.a.d, u_input.c))), 1u, 0u | global1.a.a.x, 1u), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(global1.a.d, 1u), countOneBits(4294967295u)), 14392u, 22085u, max(global2.x | u_input.a, u_input.a)) & ~select(reverseBits(vec4<u32>(1u, 1u, 70142u, global1.a.d)), ~vec4<u32>(u_input.e, global1.a.d, 1u, 74104u), vec4<bool>(true, arg_0.x, false, false)));
}

fn func_3() -> i32 {
    return -2147483647i;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> vec4<u32> {
    global3 = array<vec2<i32>, 4>();
    global2 = countOneBits((~vec4<u32>(1u, 28335u, 21329u, 0u) | _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.c, global1.a.c, u_input.c, 3714u), vec4<u32>(global2.x, global2.x, 37519u, u_input.a)), abs(vec4<u32>(global1.a.c, u_input.a, global1.a.c, global1.a.d)))) >> (countOneBits(~vec4<u32>(global1.a.d, global1.a.a.x, global1.a.d, 10110u)) % vec4<u32>(32u)));
    return vec4<u32>(firstLeadingBit(global1.a.a.x), 64443u, global2.x, ~global2.x);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32) -> vec4<u32> {
    var var_0 = arg_0.a;
    let var_1 = ~var_0.c;
    var_0 = global0[_wgslsmith_index_u32(16478u, 29u)];
    var var_2 = vec2<bool>(false, true);
    var_2 = !(!arg_1.zy);
    return func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -u_input.b, ~func_3(), ~(~arg_0.a.b), -17784i), reverseBits(~abs(vec4<i32>(34989i, 2147483647i, -45172i, -1i))), vec4<i32>(_wgslsmith_sub_i32(abs(u_input.d), -u_input.d), var_0.b, 5650i, global1.a.b)), i32(-1i) * -10033i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 4>();
    global0 = array<Struct_1, 29>();
    global2 = ~(func_1(vec2<bool>(true, true)) ^ vec4<u32>(global1.a.a.x, global2.x, u_input.a, 36524u));
    global1 = Struct_3(global1.a);
    var var_0 = global1.a.b == _wgslsmith_div_i32(min(_wgslsmith_sub_i32(u_input.d, global1.a.b), countOneBits(1i)), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1.a.b, 1i), vec3<i32>(global1.a.b, global1.a.b, u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -10208i, 1i, 1i), vec4<i32>(46130i, -35220i, -1i, -3046i))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(4294967295u, 22900u, _wgslsmith_div_u32(global1.a.a.x, 4294967295u), ~u_input.c), func_2(Struct_3(global1.a), vec3<bool>(false, true, true), 184f) & ~vec4<u32>(0u, global1.a.c, global2.x, u_input.a)) ^ ((max(vec4<u32>(global1.a.d, 78425u, 81169u, 17734u), vec4<u32>(87193u, global1.a.c, u_input.e, 0u)) >> (vec4<u32>(global1.a.a.x, 6628u, 1u, 0u) % vec4<u32>(32u))) << (vec4<u32>(50677u, firstTrailingBit(0u), u_input.a, ~981u) % vec4<u32>(32u))), ~func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))).x, max(max(select(vec4<i32>(51516i, 32349i, 1i, global1.a.b), vec4<i32>(u_input.d, u_input.d, -2147483647i, 26607i), vec4<bool>(false, true, true, true)) & vec4<i32>(-2788i, 59916i, u_input.d, -36681i), -(vec4<i32>(-1i, global1.a.b, global1.a.b, u_input.b) >> (vec4<u32>(global2.x, 65608u, 0u, u_input.e) % vec4<u32>(32u)))), vec4<i32>(select(~(-22788i), -51011i, 4294967295u > u_input.a), min(select(-12865i, 14991i, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 1i), vec2<i32>(u_input.d, global1.a.b))), _wgslsmith_mult_i32(global1.a.b ^ 2147483647i, 37952i), select(2147483647i, -2147483647i, true))), -vec2<i32>(u_input.b, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.d, u_input.b), global1.a.b)));
}

