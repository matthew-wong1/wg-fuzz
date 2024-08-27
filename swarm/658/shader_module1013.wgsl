struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<f32, 18> = array<f32, 18>(-1000f, 963f, -501f, 433f, 488f, -1811f, 273f, -1920f, -574f, -281f, 1764f, -221f, -1018f, -3134f, 1000f, -495f, 753f, 1893f);

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(1197f, vec3<i32>(-1i, 32464i, 28514i), -1i, 49084u), 1172u, vec4<bool>(false, true, true, true)), Struct_2(Struct_1(-935f, vec3<i32>(-1i, i32(-2147483648), -1i), 46648i, 1u), 19781u, vec4<bool>(true, false, false, false)), Struct_2(Struct_1(1166f, vec3<i32>(0i, -34583i, 29678i), 63465i, 0u), 4294967295u, vec4<bool>(true, false, false, true)), Struct_2(Struct_1(-289f, vec3<i32>(2147483647i, 2147483647i, -1173i), -6841i, 0u), 4294967295u, vec4<bool>(true, true, false, false)), Struct_2(Struct_1(-871f, vec3<i32>(-1i, -25339i, -34446i), 1i, 1u), 1u, vec4<bool>(false, false, false, true)), Struct_2(Struct_1(1014f, vec3<i32>(-1i, i32(-2147483648), -32070i), 1i, 0u), 77584u, vec4<bool>(true, false, false, false)), Struct_2(Struct_1(-1099f, vec3<i32>(6164i, i32(-2147483648), -1i), 2147483647i, 7703u), 1u, vec4<bool>(false, true, true, false)), Struct_2(Struct_1(445f, vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), 1i, 71904u), 52232u, vec4<bool>(true, true, true, true)), Struct_2(Struct_1(-1035f, vec3<i32>(-53107i, -20623i, 35360i), 0i, 1u), 0u, vec4<bool>(false, true, false, false)), Struct_2(Struct_1(1304f, vec3<i32>(-1i, 0i, 2147483647i), 1i, 4294967295u), 0u, vec4<bool>(true, false, true, true)), Struct_2(Struct_1(-640f, vec3<i32>(0i, -1i, 18503i), i32(-2147483648), 0u), 0u, vec4<bool>(true, true, false, true)), Struct_2(Struct_1(169f, vec3<i32>(-20542i, 1i, 2027i), 2147483647i, 36192u), 4294967295u, vec4<bool>(false, true, true, false)), Struct_2(Struct_1(-1774f, vec3<i32>(2147483647i, -51126i, i32(-2147483648)), 18811i, 0u), 77384u, vec4<bool>(true, false, false, false)), Struct_2(Struct_1(842f, vec3<i32>(-1649i, 0i, i32(-2147483648)), 9026i, 4294967295u), 1u, vec4<bool>(false, true, true, false)), Struct_2(Struct_1(-162f, vec3<i32>(2147483647i, -58639i, -50787i), i32(-2147483648), 0u), 9756u, vec4<bool>(false, false, false, false)), Struct_2(Struct_1(-2171f, vec3<i32>(26925i, 25482i, 0i), 46138i, 75666u), 0u, vec4<bool>(false, false, false, false)), Struct_2(Struct_1(450f, vec3<i32>(-1i, -61562i, -10578i), 8508i, 0u), 4294967295u, vec4<bool>(true, false, false, true)), Struct_2(Struct_1(129f, vec3<i32>(6321i, 0i, 3601i), 33677i, 60220u), 59018u, vec4<bool>(false, false, true, true)), Struct_2(Struct_1(-364f, vec3<i32>(2147483647i, 1i, -1i), -25239i, 4294967295u), 0u, vec4<bool>(false, true, false, true)), Struct_2(Struct_1(774f, vec3<i32>(i32(-2147483648), i32(-2147483648), -7310i), -1i, 1u), 33879u, vec4<bool>(true, true, false, false)), Struct_2(Struct_1(2081f, vec3<i32>(2147483647i, 23711i, 1i), 42914i, 4294967295u), 1u, vec4<bool>(false, true, false, false)));

var<private> global3: array<i32, 9> = array<i32, 9>(i32(-2147483648), 17297i, 1i, -33944i, i32(-2147483648), 2147483647i, -9118i, -16125i, 0i);

var<private> global4: vec3<i32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> u32 {
    global0 = ~_wgslsmith_sub_i32(~firstLeadingBit(arg_1.a.c), reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, arg_1.b), 9u)]) ^ 26658i);
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    var var_0 = Struct_3(_wgslsmith_mod_vec3_i32(arg_0.b, vec3<i32>(-35182i, countOneBits(_wgslsmith_mult_i32(arg_0.c, global3[_wgslsmith_index_u32(4294967295u, 9u)])), _wgslsmith_dot_vec2_i32(abs(arg_0.b.xz), -global4.zx))), Struct_2(Struct_1(arg_2.x, arg_1.a.b ^ u_input.a.wxy, ~_wgslsmith_add_i32(-1i, arg_0.b.x), 7299u), abs(~arg_0.d) ^ 53302u, !(!(!vec4<bool>(arg_1.c.x, false, arg_1.c.x, arg_1.c.x)))), select(!select(select(arg_1.c.yw, arg_1.c.ww, arg_1.c.x), arg_1.c.zw, true), vec2<bool>(!arg_1.c.x, false), true));
    var var_1 = -u_input.d;
    return abs(_wgslsmith_add_u32(234u, 0u));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> Struct_3 {
    global0 = _wgslsmith_mult_i32(u_input.d.x, -select(abs(global3[_wgslsmith_index_u32(1u, 9u)]), global4.x, false));
    let var_0 = -10754i;
    global3 = array<i32, 9>();
    global1 = array<f32, 18>();
    let var_1 = abs(select(_wgslsmith_mod_u32(arg_1.x, firstLeadingBit(4294967295u ^ arg_0)), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(20926u, u_input.b), 1u, max(u_input.b, 11270u)), false));
    return Struct_3(~_wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -20313i, var_0, u_input.a.x), -u_input.d.yyz, countOneBits(-u_input.d.zyy)), Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 18u)]), _wgslsmith_f_op_f32(min(153f, global1[_wgslsmith_index_u32(var_1, 18u)])))), reverseBits(u_input.a.yxz), countOneBits(53376i), firstTrailingBit(reverseBits(0u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, 4294967295u, arg_1.x), arg_1) << (func_3(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 18u)], u_input.a.xxy, u_input.d.x, 0u), global2[_wgslsmith_index_u32(~115920u, 21u)], vec2<f32>(global1[_wgslsmith_index_u32(0u, 18u)], 1194f)) % 32u), !vec4<bool>(false, true, true, any(vec3<bool>(false, true, true)))), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 18u)] == 1256f, all(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_u32(~(abs(abs(vec4<u32>(arg_0.b.b, arg_0.b.b, u_input.b, u_input.b))) | vec4<u32>(select(u_input.b, arg_0.b.a.d, arg_0.c.x), firstLeadingBit(u_input.b), arg_0.b.b, ~arg_0.b.b)), vec4<u32>(32654u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.b.b), vec2<u32>(36377u, 0u))), countOneBits(4294967295u), 2243u));
    return arg_0.b.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec2<bool> {
    var var_0 = Struct_2(func_4(func_2(_wgslsmith_sub_u32(4294967295u, arg_1.d) ^ ~16526u, vec4<u32>(4294967295u, arg_1.d >> (60583u % 32u), 0u, ~1u))), _wgslsmith_sub_u32(u_input.b, 33570u), !vec4<bool>(false, any(select(vec2<bool>(false, arg_2), vec2<bool>(true, arg_2), vec2<bool>(true, arg_2))), !(global1[_wgslsmith_index_u32(arg_1.d, 18u)] > -1111f), true));
    var var_1 = func_2(var_0.a.d, ~select(vec4<u32>(4294967295u, ~0u, ~0u, _wgslsmith_add_u32(1u, u_input.b)), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(arg_1.d, 0u, arg_1.d, var_0.a.d)), ~vec4<u32>(17276u, 23415u, 0u, 1u)), !any(var_0.c))).b;
    let var_2 = Struct_3(u_input.a.yyw, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(func_3(var_1.a, Struct_2(var_0.a, u_input.b, vec4<bool>(var_0.c.x, false, true, var_1.c.x)), vec2<f32>(var_0.a.a, 316f)) ^ firstLeadingBit(var_1.b), ~vec4<u32>(4294967295u, 11319u, 1u, 43298u)).b.b, u_input.b), 21u)], var_1.c.yz);
    var var_3 = vec2<bool>(false, true);
    global2 = array<Struct_2, 21>();
    return func_2(~func_4(Struct_3(var_0.a.b, Struct_2(var_2.b.a, 21184u, vec4<bool>(true, false, var_2.b.c.x, arg_2)), !var_1.c.yz)).d, vec4<u32>(_wgslsmith_clamp_u32(arg_1.d, func_4(func_2(var_1.b, vec4<u32>(u_input.b, arg_1.d, 0u, var_1.a.d))).d, var_1.b), _wgslsmith_mult_u32(4294967295u, ~_wgslsmith_mult_u32(u_input.b, arg_1.d)), u_input.b, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 114866u, 0u, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b.a.d, var_1.b, 4294967295u, 0u), vec4<u32>(60173u, 0u, u_input.b, 66401u))))).b.c.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(func_1(reverseBits(global4.zz), Struct_1(121f, vec3<i32>(u_input.d.x ^ global3[_wgslsmith_index_u32(12988u, 9u)], global4.x & 0i, u_input.a.x), ~0i, u_input.b), !all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), 5595i));
    global4 = u_input.d.zxw;
    global4 = abs(countOneBits(_wgslsmith_mod_vec3_i32(u_input.d.ywz, max(vec3<i32>(-34316i, -33109i, -8436i), vec3<i32>(13033i, u_input.c, global3[_wgslsmith_index_u32(u_input.b, 9u)]) | u_input.a.wzy))));
    global3 = array<i32, 9>();
    global0 = -71760i;
    var var_1 = func_4(Struct_3(~vec3<i32>(~(-2147483647i), func_4(Struct_3(vec3<i32>(u_input.e, u_input.a.x, -7156i), Struct_2(Struct_1(-465f, vec3<i32>(2147483647i, 0i, global3[_wgslsmith_index_u32(112939u, 9u)]), -3567i, u_input.b), u_input.b, vec4<bool>(true, true, false, false)), vec2<bool>(true, true))).c, abs(-2147483647i)), Struct_2(Struct_1(-1232f, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, u_input.d.x, global3[_wgslsmith_index_u32(26579u, 9u)]), u_input.a.wyx), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.b, 9u)], 2147483647i), abs(1u)), ~(1u | u_input.b), vec4<bool>(select(false, true, false), true, true, func_1(u_input.d.yw, Struct_1(global1[_wgslsmith_index_u32(u_input.b, 18u)], u_input.d.xzz, 22840i, 4294967295u), true, 1i).x)), vec2<bool>(true, true))).a;
    let var_2 = vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), global1[_wgslsmith_index_u32(75449u, 18u)] >= -1419f), vec4<bool>(true, true, true, true))));
    var var_3 = func_2(_wgslsmith_add_u32(~_wgslsmith_mod_u32(firstLeadingBit(u_input.b), ~4172u), 16510u), vec4<u32>(_wgslsmith_sub_u32(u_input.b, ~(u_input.b >> (u_input.b % 32u))), 4294967295u, _wgslsmith_div_u32(~(~1u), u_input.b | ~4294967295u), u_input.b | u_input.b)).b.c.x;
    var var_4 = Struct_3(vec3<i32>(-2147483647i, 18859i, 32126i), global2[_wgslsmith_index_u32(~0u, 21u)], select(var_2, vec2<bool>(true, true), vec2<bool>(var_2.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(max(~_wgslsmith_mod_u32(u_input.b & 31289u, _wgslsmith_add_u32(0u, u_input.b)), u_input.b), 9u)], var_4.b.a.a);
}

