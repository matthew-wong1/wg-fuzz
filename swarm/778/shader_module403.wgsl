struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: u32;

var<private> global1: array<u32, 9>;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<i32>(42368i, 59993i, -89770i, -4125i)), Struct_2(vec4<i32>(1i, -27899i, 0i, 2147483647i)), Struct_2(vec4<i32>(1i, i32(-2147483648), -1i, -16847i)), Struct_2(vec4<i32>(i32(-2147483648), -27838i, 0i, 1i)), Struct_2(vec4<i32>(-1i, -41319i, 34851i, 43761i)), Struct_2(vec4<i32>(-26463i, 24391i, -19182i, -1i)), Struct_2(vec4<i32>(31303i, -1i, 39218i, -76300i)), Struct_2(vec4<i32>(25760i, 61922i, i32(-2147483648), 42287i)), Struct_2(vec4<i32>(2752i, -24644i, -19082i, -117i)), Struct_2(vec4<i32>(2147483647i, -3776i, -56513i, -12113i)), Struct_2(vec4<i32>(-11386i, -1i, -7638i, i32(-2147483648))), Struct_2(vec4<i32>(2147483647i, -21144i, 7511i, 0i)), Struct_2(vec4<i32>(-45273i, i32(-2147483648), 4034i, 12046i)), Struct_2(vec4<i32>(-1i, -1i, 36088i, 2147483647i)), Struct_2(vec4<i32>(i32(-2147483648), -57983i, i32(-2147483648), i32(-2147483648))));

var<private> global3: array<i32, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(_wgslsmith_f_op_f32(min(-290f, 303f)), -139f, -1000f, _wgslsmith_f_op_f32(112f - -1223f)))));
    let var_1 = Struct_1(-countOneBits(-1i));
    let var_2 = Struct_4(abs(~_wgslsmith_div_u32(firstLeadingBit(4294967295u), arg_0.b)), reverseBits(1u), arg_1);
    global1 = array<u32, 9>();
    let var_3 = Struct_4(1u, reverseBits(firstLeadingBit(countOneBits(~arg_1))), firstLeadingBit(_wgslsmith_add_u32(20512u, var_2.b)));
    return !select(select(vec3<bool>(true, true, select(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(false, true, false)), all(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, all(vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true), vec3<bool>(true, true, true));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_3) -> u32 {
    global3 = array<i32, 10>();
    var var_0 = max(~global1[_wgslsmith_index_u32(50672u, 9u)], firstTrailingBit(0u));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(1000f, -157f)), 1144f, 1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1053f, 383f, -301f))), _wgslsmith_div_vec3_f32(vec3<f32>(486f, 1363f, 314f), vec3<f32>(314f, 184f, 1218f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(187f, -1177f, 280f)), vec3<f32>(-703f, -370f, 798f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-672f, -1333f, -174f) + vec3<f32>(-1000f, 252f, 290f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(502f, 1314f, -815f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1352f, 1063f, 1000f), vec3<f32>(-337f, 813f, -388f), arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-596f, -382f, 302f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1756f, 381f, 225f) - vec3<f32>(476f, -1267f, -203f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1376f, var_1.x, 1070f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-191f, -173f)), _wgslsmith_f_op_f32(trunc(452f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + var_1.x)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 799f, 581f, 430f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(647f, -135f, var_1.x, 1000f) + vec4<f32>(var_1.x, var_1.x, var_1.x, -115f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -267f, var_1.x, -1866f), vec4<f32>(var_1.x, -314f, 2819f, 124f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 959f, var_1.x, var_1.x) * vec4<f32>(-1000f, var_1.x, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(-471f * -172f), var_1.x, var_1.x))), select(!vec4<bool>(arg_0.x, true, true, arg_2.a.x), vec4<bool>(false, arg_0.x, arg_2.a.x, arg_0.x), true)));
    let var_3 = arg_2;
    return 0u;
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_2, 15>();
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(11477u, 4294967295u, 0u >> (~(u_input.a >> (u_input.a % 32u)) % 32u), func_4(func_3(Struct_4(global1[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a, 4294967295u), 69758u), ~vec3<u32>(14475u, 31682u, u_input.a), Struct_3(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec4<u32>(1u, 52067u, u_input.a, 1842u), 1u, Struct_2(vec4<i32>(global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(1u, 10u)], 16574i, 1i)), vec2<bool>(true, true)))), vec4<u32>(1265u ^ _wgslsmith_clamp_u32(34844u, 50556u, u_input.a), u_input.a, _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a, 0u, global1[_wgslsmith_index_u32(26727u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]), vec4<u32>(u_input.a, 4529u, 38354u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 65528u, global1[_wgslsmith_index_u32(77732u, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<u32>(4294967295u, 18692u, u_input.a, 50035u))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(global1[_wgslsmith_index_u32(41437u, 9u)], 58043u, u_input.a), vec3<bool>(true, false, true)), ~vec3<u32>(18988u, global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]))) << (vec4<u32>(abs(1u), 1u, abs(abs(4294967295u)), 52064u) % vec4<u32>(32u)));
    let var_1 = -(~global3[_wgslsmith_index_u32(22986u, 10u)]);
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_1, var_1), vec3<i32>(-36442i, 1i, -31202i) ^ vec3<i32>(global3[_wgslsmith_index_u32(39747u, 10u)], 2147483647i, var_1)), select(vec3<i32>(2147483647i, -1i, 54056i), vec3<i32>(13458i, -26570i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 10u)]) >> (vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(44687u, 9u)]) % vec3<u32>(32u)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))), _wgslsmith_sub_vec3_i32(-vec3<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 10u)], var_1, var_1), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_1, -32364i, var_1), vec3<i32>(-54724i, 2147483647i, 2147483647i)))), -var_1, -min(-var_1, _wgslsmith_sub_i32(-27106i, _wgslsmith_sub_i32(var_1, var_1))), _wgslsmith_div_i32(0i, ~(~global3[_wgslsmith_index_u32(u_input.a, 10u)])));
    let var_3 = Struct_4(4294967295u, 1u, ~reverseBits(~u_input.a ^ global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a), 9u)]));
    return Struct_1(reverseBits(countOneBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_2.x, global3[_wgslsmith_index_u32(4294967295u, 10u)]), ~(-1i)))));
}

fn func_1() -> bool {
    let var_0 = -24i;
    global2 = array<Struct_2, 15>();
    var var_1 = func_2();
    let var_2 = true;
    var var_3 = true;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 15>();
    let var_0 = !vec3<bool>(false, !(!func_1()), ~(~116717u) < ~(104868u << (u_input.a % 32u)));
    var var_1 = false;
    var var_2 = Struct_2(_wgslsmith_div_vec4_i32(min(_wgslsmith_sub_vec4_i32(~vec4<i32>(-94267i, global3[_wgslsmith_index_u32(77413u, 10u)], global3[_wgslsmith_index_u32(45178u, 10u)], global3[_wgslsmith_index_u32(u_input.a, 10u)]), vec4<i32>(22973i, -2147483647i, global3[_wgslsmith_index_u32(43908u, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)])), -(vec4<i32>(-1221i, -47956i, -2147483647i, global3[_wgslsmith_index_u32(u_input.a, 10u)]) ^ vec4<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40775u, 9u)], 9u)], 10u)], -32459i, global3[_wgslsmith_index_u32(u_input.a, 10u)], global3[_wgslsmith_index_u32(0u, 10u)]))), vec4<i32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a, reverseBits(global1[_wgslsmith_index_u32(u_input.a, 9u)])), 10u)], _wgslsmith_div_i32(global3[_wgslsmith_index_u32(1u, 10u)] << (global1[_wgslsmith_index_u32(u_input.a, 9u)] % 32u), -9837i >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)] % 32u)), -29482i & global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(97686u, 9u)] ^ 30674u, 9u)], 10u)], 1i << (select(1u, u_input.a, var_0.x) % 32u))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-600f - 1936f), _wgslsmith_f_op_f32(956f - 2422f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -377f) - _wgslsmith_f_op_f32(-861f - 271f)), 798f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1486f + 565f), _wgslsmith_f_op_f32(f32(-1f) * -1384f), _wgslsmith_f_op_f32(-458f + -747f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, -1254f, 1766f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_4 = global2[_wgslsmith_index_u32(~(~0u), 15u)];
    global2 = array<Struct_2, 15>();
    global2 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~global3[_wgslsmith_index_u32(min(u_input.a, u_input.a), 10u)]) >> (4294967295u % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1000f)))));
}

