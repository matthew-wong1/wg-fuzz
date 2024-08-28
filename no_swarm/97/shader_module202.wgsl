struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<i32>(20452i, i32(-2147483648), i32(-2147483648), 1i), 0i, vec4<f32>(311f, -1018f, -858f, 916f), false, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(18633i, 33252i, 38056i, 1i), 1i, vec4<f32>(1329f, 615f, -361f, -1409f), false, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-11932i, 2147483647i, 1i, i32(-2147483648)), 1i, vec4<f32>(1207f, -597f, -781f, 1154f), false, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-7364i, -55883i, -21376i, 18115i), 21407i, vec4<f32>(-910f, 795f, -305f, 795f), false, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(3900i, 462i, 4398i, i32(-2147483648)), 0i, vec4<f32>(667f, -1320f, -512f, 945f), true, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(1i, -1i, 75247i, 2147483647i), -2581i, vec4<f32>(-1621f, 1124f, -1010f, 1000f), true, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(13i, i32(-2147483648), -1i, -37785i), 1i, vec4<f32>(554f, 748f, 1031f, 1289f), true, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-847i, -1i, -2679i, -1i), 45461i, vec4<f32>(368f, 485f, -1494f, -809f), false, vec3<bool>(true, true, false)));

var<private> global1: array<u32, 26>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(0i, 2147483647i, -37627i, 0i), -11453i, vec4<f32>(1000f, 1400f, -1109f, 613f), false, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(11733i, 48069i, i32(-2147483648), -1i), 27052i, vec4<f32>(459f, -1770f, 974f, 1000f), false, vec3<bool>(false, true, false)));

var<private> global3: array<vec4<u32>, 13>;

var<private> global4: array<vec3<f32>, 5>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>) -> Struct_1 {
    global2 = Struct_2(global2.a, global2.b);
    let var_0 = Struct_2(global2.a, global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~4294967295u, abs(u_input.a))), 8u)]);
    var var_1 = var_0;
    global2 = var_0;
    let var_2 = ~abs(vec4<u32>(~u_input.b.x, arg_0.x ^ u_input.a, 1u, 4294967295u) | ~abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 26u)], 26u)], 26u)], 0u, u_input.b.x, 25821u)));
    return global2.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: u32) -> Struct_2 {
    var var_0 = countOneBits(vec3<i32>(-1i) * -reverseBits(vec3<i32>(0i, 24071i, 1i)));
    return Struct_2(func_2(arg_0.yx, vec4<bool>(!(!global2.a.d), all(!vec3<bool>(global2.a.e.x, true, true)), global2.b.d, true)), func_2(arg_0.wx, !vec4<bool>(all(vec2<bool>(false, global2.b.d)), true, 6146u <= arg_2, !global2.a.d)));
}

fn func_3(arg_0: u32, arg_1: bool) -> Struct_2 {
    let var_0 = global2.b;
    global3 = array<vec4<u32>, 13>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~90747u, 26u)], _wgslsmith_div_u32(41454u & (arg_0 ^ global1[_wgslsmith_index_u32(arg_0, 26u)]), 0u)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.a, 0u)), vec3<u32>(arg_0, 1u, _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(u_input.a, 26u)], 3217u), 13u)], vec4<u32>(u_input.a, arg_0, arg_0, 16685u) & vec4<u32>(global1[_wgslsmith_index_u32(64771u, 26u)], 91066u, 61321u, 1u))))), 8u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -346f), -322f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1042f * 428f) + -482f), -851f)));
    var var_3 = firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 39291u), vec2<u32>(4294967295u, arg_0) >> (u_input.b % vec2<u32>(32u))) | _wgslsmith_sub_u32(1u, u_input.b.x)) ^ firstTrailingBit(u_input.b.x);
    return func_1(vec4<u32>(arg_0, u_input.b.x, ~(firstTrailingBit(34796u) ^ ~23243u), _wgslsmith_mult_u32((1u << (0u % 32u)) << (~global1[_wgslsmith_index_u32(1u, 26u)] % 32u), global1[_wgslsmith_index_u32(1u, 26u)])), i32(-1i) * -1i, global1[_wgslsmith_index_u32(44960u << (_wgslsmith_div_u32(~(~global1[_wgslsmith_index_u32(9675u, 26u)]), global1[_wgslsmith_index_u32(96739u, 26u)]) % 32u), 26u)]);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_add_u32(reverseBits(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(65034u, 1u), 26u)], 26u)]) | u_input.b.x, global1[_wgslsmith_index_u32(~(~countOneBits(u_input.a)), 26u)]);
    var var_1 = all(func_3(~u_input.b.x, global2.b.e.x).a.e.xz);
    let var_2 = func_3(53536u, !func_1(~_wgslsmith_clamp_vec4_u32(global3[_wgslsmith_index_u32(0u, 13u)], vec4<u32>(1u, 0u, u_input.a, 81661u), global3[_wgslsmith_index_u32(0u, 13u)]), min(_wgslsmith_sub_i32(1i, arg_3.a.b), firstLeadingBit(19747i)), _wgslsmith_mod_u32(1u, ~17148u)).b.d);
    let var_3 = var_2;
    var var_4 = var_3.a.c.wzw;
    return _wgslsmith_mod_vec3_u32(max(~(~vec3<u32>(u_input.b.x, 38871u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 26u)], 26u)])), ~select(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], u_input.a, 0u), vec3<u32>(u_input.b.x, u_input.a, 6729u), false)), abs(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 101865u, global1[_wgslsmith_index_u32(0u, 26u)])), ~vec3<u32>(global1[_wgslsmith_index_u32(20149u, 26u)], 15051u, global1[_wgslsmith_index_u32(u_input.a, 26u)])))) & vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(reverseBits(u_input.b), u_input.b), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(~global3[_wgslsmith_index_u32(39818u, 13u)], global3[_wgslsmith_index_u32(4424u, 13u)]), min(~(~global1[_wgslsmith_index_u32(20550u, 26u)]), 26186u)), 13u)], u_input.c << ((~u_input.b.x >> ((u_input.a << (_wgslsmith_div_u32(70590u, u_input.b.x) % 32u)) % 32u)) % 32u), select(~u_input.b.x, ~_wgslsmith_sub_u32(4294967295u, 14882u), true & select(global2.a.d, all(global2.b.e), any(vec4<bool>(false, false, false, global2.a.e.x)))));
    var var_0 = -32720i;
    let var_1 = Struct_2(global2.b, global2.b);
    var var_2 = ~(~func_4(func_1(global3[_wgslsmith_index_u32(4294967295u, 13u)] & vec4<u32>(17907u, u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66124u, 26u)], 26u)]), ~87543i, global1[_wgslsmith_index_u32(~6943u, 26u)]), !func_2(u_input.b, vec4<bool>(true, global2.a.e.x, var_1.b.e.x, true)).e.yy, Struct_1(var_1.b.a, u_input.c >> (1568u % 32u), _wgslsmith_f_op_vec4_f32(global2.a.c + var_1.a.c), true, !var_1.b.e), func_3(_wgslsmith_mod_u32(u_input.a, u_input.b.x), true)));
    global1 = array<u32, 26>();
    var_0 = select(_wgslsmith_add_i32(countOneBits(_wgslsmith_mod_i32(-25873i, var_1.a.b)), var_1.a.b), reverseBits(-10628i), !(var_1.a.c.x > -384f)) ^ global2.b.a.x;
    global3 = array<vec4<u32>, 13>();
    let var_3 = _wgslsmith_mod_u32(u_input.b.x >> (_wgslsmith_div_u32(u_input.b.x, ~u_input.a) % 32u), ~var_2.x ^ 93220u) | ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(70303u, ~(~var_2.x)), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(-firstLeadingBit(select(vec4<i32>(-67885i, u_input.c, 65182i, 2147483647i), vec4<i32>(u_input.d, 2147483647i, u_input.d, 0i), vec4<bool>(var_1.b.d, global2.a.d, var_1.a.d, false))), reverseBits(vec4<i32>(firstTrailingBit(0i), -global2.a.b, -2147483647i, global2.a.a.x ^ global2.b.b))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 6155u), firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_3, 0u, var_3, var_2.x), global3[_wgslsmith_index_u32(var_2.x, 13u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1063f - _wgslsmith_f_op_f32(var_1.b.c.x + -177f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)), _wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_3(u_input.a, var_1.b.d).b.c.x), -1745f))), var_3);
}

