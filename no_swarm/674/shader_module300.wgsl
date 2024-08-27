struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(632f, -2355f), vec2<f32>(125f, -1703f), vec2<f32>(-352f, -224f), vec2<f32>(-1184f, 355f), vec2<f32>(-1000f, -757f), vec2<f32>(505f, -104f), vec2<f32>(1262f, -949f), vec2<f32>(607f, 212f), vec2<f32>(838f, -805f), vec2<f32>(189f, 1045f), vec2<f32>(-1105f, -231f), vec2<f32>(-476f, -1844f), vec2<f32>(-149f, 2209f), vec2<f32>(-1248f, 1253f), vec2<f32>(-966f, -1668f), vec2<f32>(-477f, 809f), vec2<f32>(2129f, 425f), vec2<f32>(-121f, -656f), vec2<f32>(1000f, -1000f), vec2<f32>(-880f, 187f), vec2<f32>(1542f, 590f), vec2<f32>(871f, 998f), vec2<f32>(2350f, 596f), vec2<f32>(-1740f, 436f), vec2<f32>(-352f, -820f), vec2<f32>(-476f, -418f), vec2<f32>(-461f, -1162f), vec2<f32>(585f, -1000f), vec2<f32>(439f, -801f));

var<private> global1: array<vec4<i32>, 28>;

var<private> global2: array<vec3<i32>, 3>;

var<private> global3: array<f32, 15> = array<f32, 15>(-718f, 351f, 180f, -330f, -627f, 1000f, -435f, -1000f, 889f, -1522f, -722f, 292f, 1074f, 168f, -1163f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> f32 {
    let var_0 = _wgslsmith_mod_u32(u_input.a.x, arg_1.b.x);
    global2 = array<vec3<i32>, 3>();
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    return _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(max(_wgslsmith_add_u32(~(~1u), 15911u), 4294967295u), 15u)]));
}

fn func_2(arg_0: f32, arg_1: f32) -> bool {
    var var_0 = u_input.a.x << (countOneBits(abs(1u)) % 32u);
    global3 = array<f32, 15>();
    global3 = array<f32, 15>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(arg_0 * 522f), arg_1)))));
    let var_2 = 15456i;
    return _wgslsmith_f_op_f32(min(arg_1, 1845f)) != -103f;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1155f), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(2136u, 15u)])), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(0u, 15u)])), _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(arg_0.a, 15u)]))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(arg_0.b, 15u)], global3[_wgslsmith_index_u32(arg_0.a, 15u)], -643f, global3[_wgslsmith_index_u32(arg_0.a, 15u)]) + vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)], -506f, global3[_wgslsmith_index_u32(76760u, 15u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(arg_0.b, 15u)], global3[_wgslsmith_index_u32(81329u, 15u)], global3[_wgslsmith_index_u32(arg_0.b, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)])))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-312f, global3[_wgslsmith_index_u32(0u, 15u)], -299f, 663f) * vec4<f32>(global3[_wgslsmith_index_u32(arg_0.b, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(0u, 15u)], -986f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1802f, -883f, global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(arg_0.a, 15u)], 185f, 1072f))))));
    var var_1 = _wgslsmith_f_op_f32(var_0.x - -1332f);
    let var_2 = Struct_4(select(max(firstLeadingBit(_wgslsmith_add_vec2_i32(arg_1.zz, arg_1.zy)), ~abs(vec2<i32>(0i, -1i))), _wgslsmith_add_vec2_i32(~countOneBits(vec2<i32>(-24340i, -2787i)), vec2<i32>(-41906i, -34617i)), vec2<bool>(true, true)), abs(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 38817u, u_input.a.x) >> (vec4<u32>(4294967295u, 1u, 13257u, arg_0.a) % vec4<u32>(32u))), ~(~vec4<u32>(34653u, 0u, 0u, u_input.a.x)))));
    var var_3 = global1[_wgslsmith_index_u32(min(max(~74187u, ~select(~1u, u_input.a.x, false)), ~var_2.b.x), 28u)];
    let var_4 = var_2;
    return 26847i;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: f32) -> Struct_1 {
    global1 = array<vec4<i32>, 28>();
    var var_0 = Struct_4(vec2<i32>(1688i, select(-24329i, select(arg_1, arg_1, arg_0.x), any(vec2<bool>(false, false)))) ^ firstTrailingBit(-vec2<i32>(-34439i, 1i)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 79427u, 1u, u_input.a.x) << (vec4<u32>(u_input.a.x, 21378u, 4294967295u, 59222u) % vec4<u32>(32u)), vec4<u32>(min(4294967295u, 4294967295u), min(u_input.a.x, u_input.a.x), firstLeadingBit(u_input.a.x), 1u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(4294967295u, u_input.a.x, 30942u, u_input.a.x))));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(min(min(max(u_input.a, vec3<u32>(0u, 52153u, 0u)), vec3<u32>(var_0.b.x, 4294967295u, 68369u)), vec3<u32>(1u, 82083u, var_0.b.x)), var_0.b.zxx), max(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, var_0.b.x) & var_0.b.x, _wgslsmith_dot_vec2_u32(select(var_0.b.xx, var_0.b.yw, false), ~vec2<u32>(u_input.a.x, var_0.b.x)))));
    global2 = array<vec3<i32>, 3>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1372f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-729f, Struct_4(vec2<i32>(-2147483647i, 0i), vec4<u32>(24248u, u_input.a.x, 4294967295u, u_input.a.x)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(707f + 475f))))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, 7330u), ~u_input.a.x, 4294967295u, u_input.a.x), ~(~vec4<u32>(5855u, 1u, u_input.a.x, 11482u))) >> ((_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) | (~u_input.a.x >> (_wgslsmith_add_u32(37823u, u_input.a.x) % 32u))) % 32u), 15u)], _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(~0u, 15u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 15u)] - 2120f), global3[_wgslsmith_index_u32(29797u, 15u)]))), -957f);
    let var_1 = vec4<bool>(true, !any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))) || false, !(!any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)))), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, u_input.a.x), u_input.a.zy) > u_input.a.x);
    let var_2 = Struct_3(func_4(vec2<bool>(_wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(min(var_0.x, -171f)), func_2(_wgslsmith_f_op_f32(-var_0.x), -2039f)), ~func_3(Struct_1(4294967295u, 51595u), global2[_wgslsmith_index_u32(u_input.a.x | 1u, 3u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 15u)] - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 15u)] + 148f)) * _wgslsmith_f_op_f32(step(var_0.x, 598f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1222f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))), u_input.a.x, reverseBits(vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(min(2036f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1791f)), var_0.x))));
    let var_3 = u_input.a.x;
    var var_4 = func_4(var_1.xz, 46473i, _wgslsmith_div_f32(-166f, _wgslsmith_f_op_f32(-var_0.x)));
    var_4 = Struct_1(86982u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.a.xx, ~vec2<u32>(var_2.a.a, u_input.a.x)), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_4.b, 4294967295u), select(vec2<u32>(var_4.b, u_input.a.x), u_input.a.zz, var_1.yx))), ~min(4294967295u & var_3, var_2.c)));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.e))));
    let var_6 = var_1.yw;
    global1 = array<vec4<i32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, var_2.d.x)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(var_4.b >> (_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u), ~reverseBits(105909u))), _wgslsmith_sub_vec4_u32(select(firstTrailingBit(reverseBits(vec4<u32>(4294967295u, 27491u, 41807u, u_input.a.x))), abs(~vec4<u32>(1u, 97754u, var_3, var_4.b)), !vec4<bool>(true, var_1.x, var_1.x, false)), min(~_wgslsmith_div_vec4_u32(vec4<u32>(37101u, u_input.a.x, var_3, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 104032u, 12764u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(69933u, 78942u, 71642u, 4294967295u), vec4<u32>(20718u, 9076u, var_3, 1u)), ~vec4<u32>(3380u, var_3, 42877u, 1u)))), ~(~(~(vec4<u32>(16227u, var_4.b, var_2.c, 1u) & vec4<u32>(var_4.b, 3176u, var_3, 24178u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-670f - _wgslsmith_f_op_f32(func_1(_wgslsmith_div_f32(665f, var_0.x), Struct_4(vec2<i32>(var_2.d.x, 0i), vec4<u32>(34058u, 22908u, 56472u, 4294967295u))))))));
}

