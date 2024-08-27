struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(-43054i, 0i, -41539i, 0i, -5967i, -1i, -3173i, -50905i, 2147483647i, 54467i, -42887i, -1i);

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(-569f, -747f, -1795f), vec3<f32>(169f, -1000f, 464f), vec3<f32>(-1080f, -1000f, 774f), vec3<f32>(-1751f, -724f, -1087f), vec3<f32>(-1041f, -147f, -135f), vec3<f32>(-771f, -709f, 1521f), vec3<f32>(2129f, -394f, 444f), vec3<f32>(2080f, -312f, -972f), vec3<f32>(611f, -1320f, -974f), vec3<f32>(-1421f, -1419f, 386f), vec3<f32>(992f, 729f, -1178f), vec3<f32>(1297f, -1000f, 745f), vec3<f32>(-453f, -191f, -517f), vec3<f32>(-1000f, 1210f, -184f), vec3<f32>(-1000f, 1459f, 1141f), vec3<f32>(149f, -1368f, 836f), vec3<f32>(-508f, -409f, 327f), vec3<f32>(-1065f, 947f, -1387f), vec3<f32>(-688f, -851f, -2227f), vec3<f32>(-122f, -1544f, -2068f), vec3<f32>(-942f, -981f, 389f), vec3<f32>(-1176f, -1000f, 706f), vec3<f32>(-431f, -934f, -936f), vec3<f32>(839f, 735f, 1886f), vec3<f32>(3908f, -325f, -1000f), vec3<f32>(-1645f, 707f, -671f), vec3<f32>(-270f, -1114f, -715f), vec3<f32>(681f, 2349f, -275f), vec3<f32>(-265f, -1000f, 1151f), vec3<f32>(-346f, -1000f, 684f));

var<private> global3: vec3<i32>;

var<private> global4: array<vec3<bool>, 6>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec4<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, 1967f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1788f, 969f, true)), _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_div_f32(global1.x, global1.x)));
    let var_0 = arg_0 | false;
    let var_1 = ~(~vec2<u32>(~_wgslsmith_mod_u32(1u, 1u), ~(~1u)));
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1 | arg_1, abs(arg_1), select(max(arg_1, arg_1), -vec4<i32>(5330i, 21850i, -19769i, global0[_wgslsmith_index_u32(0u, 12u)]), var_0)), ~vec4<i32>(-global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(~7171u, 12u)], _wgslsmith_dot_vec3_i32(arg_1.xwy, arg_1.yyw), 2147483647i)) | _wgslsmith_sub_vec4_i32(-arg_1 & firstTrailingBit(firstLeadingBit(vec4<i32>(-1i, 1079i, arg_1.x, arg_1.x))), arg_1);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, -317f, global1.x, -173f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1357f, global1.x, 455f, 1929f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1124f, 679f, global1.x, 219f), vec4<f32>(-3113f, -614f, global1.x, -1000f), vec4<bool>(false, true, true, true)))))) - vec4<f32>(_wgslsmith_f_op_f32(step(-315f, global1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), -136f)), -1956f, -300f)), vec4<i32>(-2147483647i, ~(1i ^ arg_1.x), _wgslsmith_div_i32(arg_1.x, ~(-2147483647i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.x, global3.x), arg_1.xy)) | ~abs(arg_1));
    return select(!select(select(vec4<bool>(arg_0, var_0, var_0, var_0), vec4<bool>(true, var_0, false, true), select(vec4<bool>(false, arg_0, var_0, var_0), vec4<bool>(false, false, var_0, true), vec4<bool>(false, true, var_0, false))), !(!vec4<bool>(var_0, true, var_0, arg_0)), var_0), select(select(!select(vec4<bool>(var_0, true, arg_0, var_0), vec4<bool>(arg_0, true, true, arg_0), false), !(!vec4<bool>(true, var_0, var_0, arg_0)), false), !(!select(vec4<bool>(false, false, var_0, arg_0), vec4<bool>(true, true, var_0, false), vec4<bool>(var_0, var_0, var_0, true))), true), arg_0);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + -1096f), arg_1)), _wgslsmith_f_op_f32(1268f - _wgslsmith_f_op_f32(max(164f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * arg_1), 1f, true))))));
    return any(!select(vec4<bool>(false, all(vec2<bool>(false, true)), true, all(vec2<bool>(false, false))), select(func_3(true, vec4<i32>(-1i, arg_2.x, -51681i, 48099i)), func_3(true, arg_3), true), func_3(true, _wgslsmith_div_vec4_i32(arg_3, arg_3))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398f + 1358f) - _wgslsmith_f_op_f32(sign(arg_1.a.x))) - 761f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1098f)))), arg_1.a.x));
    let var_1 = firstLeadingBit(313u);
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(128f, _wgslsmith_div_f32(578f, -675f), global1.x));
    let var_2 = arg_0;
    var var_3 = arg_0;
    return all(vec2<bool>(true, true));
}

fn func_1(arg_0: f32) -> i32 {
    global3 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(19431i, u_input.d, -13187i, -59535i), max(vec4<i32>(global3.x, -22543i, global3.x, -1i) << (vec4<u32>(80447u, 0u, 154313u, 44524u) % vec4<u32>(32u)), vec4<i32>(-64941i, u_input.b, 2147483647i, 2147483647i))), select(countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.c, -16298i, 0i)) & ~vec4<i32>(2147483647i, 34452i, -68707i, 2147483647i), select(vec4<i32>(2147483647i, 2147483647i, global0[_wgslsmith_index_u32(13997u, 12u)], u_input.c), vec4<i32>(global0[_wgslsmith_index_u32(1u, 12u)], u_input.c, -1i, global3.x), vec4<bool>(true, true, true, true)), func_4(func_2(arg_0, global1.x, vec3<i32>(-39702i, 10188i, -2147483647i), vec4<i32>(global3.x, 23586i, u_input.c, -30330i)), Struct_1(vec4<f32>(arg_0, global1.x, 569f, -786f), vec4<i32>(1i, 27683i, global3.x, 2147483647i)), min(0i, u_input.a)))), ~(~1i), -16985i);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))))), -721f, _wgslsmith_f_op_f32(sign(global1.x)));
    global2 = array<vec3<f32>, 30>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, global1.x, global1.x) - vec4<f32>(arg_0, arg_0, -143f, -765f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -277f, global1.x, 1113f) - vec4<f32>(global1.x, global1.x, 808f, -519f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global1.x, 204f, arg_0) + vec4<f32>(arg_0, -351f, -334f, global1.x)))))), ~(~(~vec4<i32>(28550i, 28087i, 0i, global3.x))) | (countOneBits(vec4<i32>(-13212i, u_input.b, global3.x, 1i)) & (max(vec4<i32>(global3.x, 2147483647i, -1i, global0[_wgslsmith_index_u32(67815u, 12u)]), vec4<i32>(global3.x, 32431i, global3.x, 0i)) << (~vec4<u32>(4294967295u, 11581u, 0u, 1u) % vec4<u32>(32u)))));
    global4 = array<vec3<bool>, 6>();
    return firstTrailingBit(-global0[_wgslsmith_index_u32(57206u, 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(0u, 30u)];
    global3 = _wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.a, func_1(-102f), global0[_wgslsmith_index_u32(4294967295u, 12u)])), vec3<i32>(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -178f))), select(1i, func_1(_wgslsmith_f_op_f32(global1.x - global1.x)), any(vec4<bool>(false, true, false, false))), -firstTrailingBit(-9036i)));
    var var_0 = !any(select(vec3<bool>(func_3(false, vec4<i32>(11512i, -2147483647i, 2147483647i, -73858i)).x, true, all(vec2<bool>(true, false))), vec3<bool>(true, true, func_3(false, vec4<i32>(global3.x, -3223i, global0[_wgslsmith_index_u32(384u, 12u)], u_input.d)).x), all(vec4<bool>(false, false, true, true))));
    let var_1 = select(vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(true, true), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false)) && ((all(vec3<bool>(true, false, false)) | true) != true));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -269f), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -116f), 997f), _wgslsmith_div_vec4_f32(vec4<f32>(2144f, global1.x, global1.x, -597f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 1422f))))), select(min(abs(-vec4<i32>(u_input.c, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])), ~vec4<i32>(u_input.c, u_input.d, global3.x, 14839i)), reverseBits(select(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b, u_input.c, global3.x), -vec4<i32>(u_input.d, 2147483647i, 1i, 0i), true)), 1u > _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(26485u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(107004u, 0u), vec2<u32>(61468u, 22215u)))));
    let var_3 = !func_3(!(-54676i != -u_input.a), vec4<i32>(u_input.c, -37741i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global3.x), vec2<i32>(-1683i, var_2.b.x)), 11796i));
    var var_4 = var_3.x;
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.zz)));
    let var_6 = firstLeadingBit(_wgslsmith_clamp_u32(~40189u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(44173u, 0u, 63394u, 72136u), vec4<u32>(1u, 1u, 1u, 1u)), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.b), vec2<u32>(select(_wgslsmith_div_u32(21626u, ~var_6), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18905u, 50264u, var_6, var_6), vec4<u32>(14035u, var_6, 4294967295u, 11703u)), 35676u), false), (94439u ^ _wgslsmith_add_u32(var_6, var_6)) ^ 76702u));
}

