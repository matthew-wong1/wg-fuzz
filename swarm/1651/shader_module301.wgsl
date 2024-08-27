struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(-50408i, -8983i, vec3<i32>(-29458i, -42713i, -281i), -146f, vec4<i32>(2147483647i, -63907i, 1i, -32682i)), true, Struct_1(25619u, -33474i, vec4<bool>(false, true, true, false), vec2<bool>(true, true), vec3<bool>(true, false, false)), Struct_1(0u, 67189i, vec4<bool>(false, true, true, false), vec2<bool>(true, true), vec3<bool>(false, false, false))), Struct_3(Struct_2(1i, 25240i, vec3<i32>(33930i, 0i, 2147483647i), -1628f, vec4<i32>(-39282i, i32(-2147483648), 2147483647i, -57187i)), false, Struct_1(21388u, 93706i, vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(6748u, i32(-2147483648), vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec3<bool>(true, true, true))), Struct_3(Struct_2(-1002i, i32(-2147483648), vec3<i32>(0i, 1i, 1i), 885f, vec4<i32>(0i, 2147483647i, 2147483647i, i32(-2147483648))), true, Struct_1(1u, 12537i, vec4<bool>(true, false, true, false), vec2<bool>(false, false), vec3<bool>(false, false, false)), Struct_1(4294967295u, -1i, vec4<bool>(true, true, true, true), vec2<bool>(true, false), vec3<bool>(false, true, false))), Struct_3(Struct_2(9061i, 2147483647i, vec3<i32>(2147483647i, -14897i, -26827i), -1000f, vec4<i32>(0i, 122i, -1i, 2147483647i)), false, Struct_1(1u, -18711i, vec4<bool>(true, false, true, true), vec2<bool>(true, true), vec3<bool>(true, true, true)), Struct_1(44666u, -1i, vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec3<bool>(true, false, false))), Struct_3(Struct_2(-60522i, -30461i, vec3<i32>(-1i, 2147483647i, -17931i), -499f, vec4<i32>(-1i, -1i, -6696i, -18728i)), false, Struct_1(239u, 47568i, vec4<bool>(true, false, true, true), vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(1u, 264i, vec4<bool>(false, false, true, false), vec2<bool>(true, true), vec3<bool>(false, true, true))), Struct_3(Struct_2(7873i, 10942i, vec3<i32>(2147483647i, 0i, 486i), -1429f, vec4<i32>(1730i, 50686i, -25027i, 1i)), false, Struct_1(4624u, 5172i, vec4<bool>(true, true, true, false), vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_1(4294967295u, 0i, vec4<bool>(false, true, true, false), vec2<bool>(true, true), vec3<bool>(false, false, true))), Struct_3(Struct_2(-13865i, i32(-2147483648), vec3<i32>(765i, 16600i, 2147483647i), 728f, vec4<i32>(17908i, -49004i, -8672i, -1i)), false, Struct_1(0u, -1i, vec4<bool>(false, true, false, true), vec2<bool>(true, false), vec3<bool>(false, true, true)), Struct_1(27163u, 1072i, vec4<bool>(false, false, false, true), vec2<bool>(true, true), vec3<bool>(true, true, false))), Struct_3(Struct_2(1i, 0i, vec3<i32>(12686i, i32(-2147483648), i32(-2147483648)), 1574f, vec4<i32>(0i, -44309i, 2147483647i, 1i)), false, Struct_1(4294967295u, -50038i, vec4<bool>(false, false, false, false), vec2<bool>(true, false), vec3<bool>(false, true, true)), Struct_1(4392u, 0i, vec4<bool>(false, false, true, false), vec2<bool>(true, true), vec3<bool>(false, false, false))), Struct_3(Struct_2(-20788i, -10923i, vec3<i32>(1i, i32(-2147483648), -6877i), -799f, vec4<i32>(2963i, -23102i, -23548i, 3596i)), false, Struct_1(0u, 20784i, vec4<bool>(false, true, false, false), vec2<bool>(false, false), vec3<bool>(true, true, false)), Struct_1(4294967295u, 0i, vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec3<bool>(false, false, true))), Struct_3(Struct_2(1i, 1i, vec3<i32>(36491i, 2147483647i, i32(-2147483648)), 1284f, vec4<i32>(3953i, 1i, -30290i, 7301i)), true, Struct_1(53124u, 1217i, vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec3<bool>(false, true, false)), Struct_1(17494u, 34047i, vec4<bool>(false, true, true, true), vec2<bool>(false, true), vec3<bool>(true, false, false))), Struct_3(Struct_2(28708i, -30568i, vec3<i32>(0i, -1i, -40592i), 783f, vec4<i32>(-1i, i32(-2147483648), 0i, 1i)), true, Struct_1(1u, -1i, vec4<bool>(false, false, false, true), vec2<bool>(false, true), vec3<bool>(false, true, false)), Struct_1(7022u, -1703i, vec4<bool>(false, false, true, true), vec2<bool>(true, false), vec3<bool>(false, false, true))), Struct_3(Struct_2(14930i, 19154i, vec3<i32>(2147483647i, -17981i, i32(-2147483648)), 1266f, vec4<i32>(2147483647i, 5314i, 1i, 24091i)), true, Struct_1(4294967295u, 0i, vec4<bool>(true, false, true, true), vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(4294967295u, -45026i, vec4<bool>(false, true, true, false), vec2<bool>(true, true), vec3<bool>(false, true, true))), Struct_3(Struct_2(-30051i, 4297i, vec3<i32>(-9610i, -14292i, 1i), 1639f, vec4<i32>(29185i, i32(-2147483648), 17817i, 46882i)), false, Struct_1(1u, 45117i, vec4<bool>(false, false, false, false), vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(1u, 2147483647i, vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec3<bool>(true, true, false))));

var<private> global2: array<u32, 7>;

var<private> global3: array<i32, 9> = array<i32, 9>(-1i, -56579i, 35385i, -17343i, -33298i, 29790i, -20724i, 2147483647i, 2147483647i);

var<private> global4: array<i32, 30> = array<i32, 30>(2147483647i, 2147483647i, -1645i, -1819i, 6243i, i32(-2147483648), 2147483647i, -52086i, -1i, 1i, i32(-2147483648), 1i, -9990i, 1i, 15865i, 2147483647i, 4585i, 1i, -774i, 0i, -32451i, -1i, -1i, 21271i, -61774i, 2147483647i, -26398i, -2197i, i32(-2147483648), -25101i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    var var_0 = Struct_2(_wgslsmith_mult_i32(~(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59010u, 7u)], 9u)] | -18884i), _wgslsmith_add_i32(reverseBits(global4[_wgslsmith_index_u32(u_input.a.x, 30u)]), 1i)) >> (countOneBits(19446u ^ u_input.c.x) % 32u), (-2147483647i ^ global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~25769u), 30u)]) & ~firstLeadingBit(-1i), u_input.b ^ select(_wgslsmith_sub_vec3_i32(max(vec3<i32>(-12706i, u_input.b.x, 2147483647i), u_input.b), select(vec3<i32>(global4[_wgslsmith_index_u32(1u, 30u)], global4[_wgslsmith_index_u32(13622u, 30u)], -56051i), u_input.b, false)), _wgslsmith_mod_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 30u)], -1i, 31595i), vec3<i32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 7u)], 30u)], 22382i, 1i)), vec3<bool>(true, true, true)), -1208f, ~(~vec4<i32>(~23434i, -47432i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, global3[_wgslsmith_index_u32(14248u, 9u)]), _wgslsmith_add_i32(u_input.b.x, -2147483647i))));
    let var_1 = abs(~global2[_wgslsmith_index_u32(abs(select(69037u, 1u, u_input.a.x >= 0u)), 7u)]);
    var var_2 = -1058f;
    global2 = array<u32, 7>();
    var var_3 = any(vec4<bool>(true, true, true, true));
    return true;
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_4(Struct_2(u_input.b.x, ~(~u_input.b.x), ~vec3<i32>(0i & global4[_wgslsmith_index_u32(u_input.c.x, 30u)], min(0i, -7199i), select(-23673i, 4636i, false)), 234f, ~vec4<i32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~65740u, 7u)], 30u)], 0i, 1i, -u_input.b.x)));
    global3 = array<i32, 9>();
    let var_1 = !vec3<bool>(!(all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)) && arg_0.x), func_3(), arg_0.x);
    var_0 = Struct_4(var_0.a);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.d))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.d), _wgslsmith_f_op_f32(select(1000f, -1294f, true)))))));
    return ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(36694u, 1u, u_input.a.x, 1u), select(vec4<u32>(59290u, 42300u, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(18736u, 7u)]), vec4<u32>(u_input.c.x, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 7u)], 14053u), true))), 7u)], 7u)]);
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(global2[_wgslsmith_index_u32(abs(~(37700u & u_input.a.x) ^ 42168u), 7u)], 16239u);
    global2 = array<u32, 7>();
    global4 = array<i32, 30>();
    global2 = array<u32, 7>();
    global0 = countOneBits(global3[_wgslsmith_index_u32(func_2(select(vec3<bool>(true, u_input.b.x > u_input.b.x, arg_0.x), select(!arg_0.zxw, !vec3<bool>(false, arg_0.x, true), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), select(vec3<bool>(arg_0.x, arg_0.x, false), select(vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, false, false)), !arg_0.yyx))), 9u)]);
    return Struct_2(-2147483647i, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(global3[_wgslsmith_index_u32(21867u, 9u)], u_input.b.x, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39694u, 7u)], 7u)], 30u)]))), u_input.b), -(~u_input.b & ~u_input.b) << (vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, u_input.a.x), ~4294967295u), firstLeadingBit(reverseBits(u_input.a.x)), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0, 16740u), 7u)], func_2(arg_0.xxw))) % vec3<u32>(32u)), 1000f, _wgslsmith_sub_vec4_i32(-(vec4<i32>(u_input.b.x, global4[_wgslsmith_index_u32(69039u, 30u)], -23950i, 1i) >> (vec4<u32>(u_input.a.x, 4294967295u, 91048u, u_input.c.x) % vec4<u32>(32u))), vec4<i32>(firstLeadingBit(2147483647i), ~_wgslsmith_mod_i32(u_input.b.x, 4679i), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.c.x, 7u)], _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 10927u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), vec3<u32>(75802u, var_0, 4294967295u))), 9u)], u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 13>();
    var var_0 = func_1(vec4<bool>(false, false, false, true));
    global4 = array<i32, 30>();
    global3 = array<i32, 9>();
    global0 = (global3[_wgslsmith_index_u32(u_input.a.x, 9u)] << (u_input.a.x % 32u)) << (_wgslsmith_mult_u32(4294967295u, u_input.a.x) % 32u);
    var var_1 = func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, _wgslsmith_f_op_f32(-172f - var_0.d) <= 735f, 0i > -u_input.b.x, false), select(vec4<bool>(true, true, any(vec2<bool>(false, true)), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~global3[_wgslsmith_index_u32(4294967295u, 9u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~133780u, 7u)], 7u)] % 32u)), _wgslsmith_div_vec3_u32(~((vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 7u)], global2[_wgslsmith_index_u32(1u, 7u)], 30125u) << (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(84289u, 7u)], 7u)], global2[_wgslsmith_index_u32(u_input.c.x, 7u)], 51632u) % vec3<u32>(32u))) | ~vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 6127u, global2[_wgslsmith_index_u32(1u, 7u)]) << (vec3<u32>(19849u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 7u)], 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)]) % vec3<u32>(32u)), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 7u)], 7u)], 7u)], u_input.a.x, global2[_wgslsmith_index_u32(21186u, 7u)])))), min(countOneBits(var_0.e.x), max(var_1.c.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(~1u), 7u)], 9u)])));
}

