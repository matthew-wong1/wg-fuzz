struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec2<f32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 24>;

var<private> global2: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-1741f, 804f, -949f, 1000f), vec4<f32>(-766f, -397f, -226f, 131f), vec4<f32>(-1457f, 629f, 1113f, 640f), vec4<f32>(576f, 424f, 638f, 340f), vec4<f32>(813f, -3238f, -586f, 530f), vec4<f32>(-386f, 360f, -1000f, 1353f), vec4<f32>(188f, 658f, 442f, 927f), vec4<f32>(469f, 421f, 583f, -1009f), vec4<f32>(425f, 1897f, -220f, -1058f), vec4<f32>(-1376f, -825f, 1349f, -1160f), vec4<f32>(-103f, -325f, 331f, -1679f), vec4<f32>(728f, -1059f, -163f, -624f), vec4<f32>(636f, 1488f, -1005f, -1471f), vec4<f32>(927f, 1334f, 257f, 1066f), vec4<f32>(1037f, 682f, 109f, 328f), vec4<f32>(-1723f, 1414f, 1000f, 1005f));

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true, vec4<u32>(40271u, 788u, 30485u, 4294967295u)), Struct_1(true, vec4<u32>(27728u, 26003u, 41984u, 23685u)), Struct_1(true, vec4<u32>(22106u, 1u, 59281u, 678u)), Struct_1(true, vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), Struct_1(true, vec4<u32>(4294967295u, 82633u, 1u, 60758u)), Struct_1(true, vec4<u32>(33711u, 65252u, 77594u, 4294967295u)), Struct_1(false, vec4<u32>(13851u, 50313u, 4294967295u, 0u)), Struct_1(false, vec4<u32>(1u, 0u, 1u, 1u)), Struct_1(false, vec4<u32>(81033u, 45715u, 204u, 91193u)), Struct_1(false, vec4<u32>(1u, 1u, 1u, 4294967295u)), Struct_1(false, vec4<u32>(1u, 8859u, 17708u, 14149u)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_mult_i32(-countOneBits(-2147483647i), _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 6778i, u_input.c), vec3<i32>(1i, u_input.e, u_input.e)), -vec3<i32>(2147483647i, u_input.c, u_input.c)) << (38642u % 32u));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(~0u, 24u)], global3[_wgslsmith_index_u32(countOneBits(u_input.d.x), 11u)], global3[_wgslsmith_index_u32(~arg_0.x, 11u)]);
    let var_2 = var_1;
    var var_3 = var_1.b;
    var var_4 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(20847i, -2147483647i, u_input.c, u_input.e), vec4<i32>(u_input.e, 2147483647i, u_input.e, u_input.c), vec4<i32>(4052i, 2147483647i, -2147483647i, 10410i)), vec4<i32>(-1i, 24183i, 0i, 0i) | vec4<i32>(u_input.e, -10497i, u_input.e, u_input.e)), ~vec4<i32>(u_input.e, u_input.c, _wgslsmith_sub_i32(u_input.e, u_input.e), u_input.c)), abs(-vec4<i32>(~u_input.e, select(0i, -1i, false), max(u_input.c, u_input.c), reverseBits(-56412i))));
    return ~firstTrailingBit(~vec2<u32>(min(0u, u_input.a), _wgslsmith_add_u32(u_input.b, var_3.b.x)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.e, u_input.c, u_input.c, u_input.c), -vec4<i32>(u_input.c, u_input.e, -14113i, -15022i) | (vec4<i32>(-2147483647i, u_input.c, 0i, -19071i) | vec4<i32>(0i, u_input.c, u_input.e, 24367i))), vec4<i32>(u_input.e, -(abs(-14181i) & ~u_input.e), u_input.e, ~2147483647i));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a)), !vec2<bool>(global1[_wgslsmith_index_u32(arg_1.d.c.b.x, 24u)], any(arg_0.b) || arg_0.b.x), u_input.a);
    var var_2 = all(vec4<bool>(arg_0.b.x, true, !var_1.b.x, true));
    var_2 = false && all(vec4<bool>(true, any(vec2<bool>(false, arg_0.b.x)), false, !(global1[_wgslsmith_index_u32(u_input.b, 24u)] || arg_0.b.x)));
    let var_3 = 2147483647i;
    return firstLeadingBit(_wgslsmith_clamp_u32(0u, ~(~8815u), ~1u) & (~(~1u) << (var_1.c % 32u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<i32>) -> bool {
    var var_0 = Struct_2(all(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(76902u, 24u)]), select(vec2<bool>(false, global1[_wgslsmith_index_u32(33023u, 24u)]), vec2<bool>(global1[_wgslsmith_index_u32(22246u, 24u)], true), global1[_wgslsmith_index_u32(23411u, 24u)]), true), select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 24u)], global1[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(true, true), false), _wgslsmith_sub_i32(arg_3.x, u_input.e) < 16521i)), global3[_wgslsmith_index_u32(27426u, 11u)], Struct_1(abs(4294967295u) > select(arg_0.x << (arg_0.x % 32u), 0u, global1[_wgslsmith_index_u32(u_input.d.x & arg_0.x, 24u)]), arg_0));
    var var_1 = Struct_2(any(!select(!vec2<bool>(var_0.c.a, true), vec2<bool>(true, true), vec2<bool>(false, false))), Struct_1(var_0.a, var_0.c.b), var_0.c);
    var_0 = Struct_2(global1[_wgslsmith_index_u32(func_4(Struct_4(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2)), !(!vec2<bool>(false, var_0.a)), var_1.b.b.x), Struct_3(_wgslsmith_mod_u32(var_1.c.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.b.b.x, 42454u, 117220u), var_0.c.b)), var_1.b.a, ~func_3(vec2<u32>(4294967295u, 60924u)), Struct_2(global1[_wgslsmith_index_u32(reverseBits(16218u), 24u)], Struct_1(true, vec4<u32>(136524u, var_1.b.b.x, 25372u, 37749u)), Struct_1(true, vec4<u32>(35267u, 82338u, 9850u, 31908u))), _wgslsmith_f_op_f32(trunc(377f)))), 24u)], var_0.c, var_0.c);
    global0 = arg_1.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-341f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 1086f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1))))), vec2<bool>(true, false)));
    return var_0.a;
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = Struct_3(117704u | ~(~u_input.b << (~19397u % 32u)), func_2(_wgslsmith_clamp_vec4_u32(abs(min(vec4<u32>(u_input.a, u_input.b, 73732u, u_input.a), vec4<u32>(109455u, u_input.a, 23952u, u_input.b))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, 33587u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.a, 0u, 1968u)), ~(vec4<u32>(u_input.b, 1u, 43507u, u_input.d.x) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0, arg_0))))), arg_0, countOneBits(reverseBits(min(vec4<i32>(24850i, 1i, -2147483647i, 0i), vec4<i32>(u_input.e, 1i, u_input.e, 2781i))))), countOneBits(vec2<u32>(~_wgslsmith_div_u32(3469u, 4294967295u), 0u)), Struct_2(!all(vec4<bool>(true, arg_1.x, false, true)), global3[_wgslsmith_index_u32(u_input.a, 11u)], Struct_1(all(vec3<bool>(false, arg_1.x, arg_1.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.a, 15483u), countOneBits(vec4<u32>(u_input.d.x, 67302u, u_input.b, u_input.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1228f * _wgslsmith_f_op_f32(abs(arg_0))))));
    let var_1 = 1u >= ~select(firstTrailingBit(0u), u_input.a, arg_1.x);
    global1 = array<bool, 24>();
    var var_2 = global3[_wgslsmith_index_u32(~0u, 11u)];
    let var_3 = select(!vec2<bool>(any(!vec2<bool>(var_0.d.b.a, false)), false), vec2<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f + var_0.e)) >= _wgslsmith_f_op_f32(select(-640f, _wgslsmith_f_op_f32(arg_0 - var_0.e), any(vec3<bool>(arg_1.x, false, arg_2.x))))), arg_1.x);
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 569f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1232f))))), !select(select(vec2<bool>(var_3.x, global1[_wgslsmith_index_u32(1u, 24u)]), !var_3, vec2<bool>(true, false)), select(select(vec2<bool>(var_1, true), arg_1.wy, var_1), !vec2<bool>(false, arg_1.x), vec2<bool>(var_0.d.a, true)), !select(vec2<bool>(true, true), arg_2.yx, var_3)), ~var_0.d.c.b.x);
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_5(func_5(_wgslsmith_f_op_f32(round(-1231f)), !vec4<bool>(!global1[_wgslsmith_index_u32(u_input.b, 24u)], true, true, func_2(vec4<u32>(u_input.b, 36313u, 0u, u_input.b), vec2<f32>(741f, 141f), -794f, vec4<i32>(-36878i, u_input.e, 35435i, u_input.c))), select(!select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 24u)], false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], true, global1[_wgslsmith_index_u32(1u, 24u)]), global1[_wgslsmith_index_u32(37927u, 24u)]), !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(68790u, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)])))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.b, 0u, 19872u), vec3<u32>(u_input.b, 45330u, 1u), true), ~vec3<u32>(0u, 33733u, 0u), vec3<u32>(u_input.d.x, 0u, 0u)), vec3<u32>(608u, 15962u, u_input.a) & vec3<u32>(4294967295u, u_input.a, 26776u)), countOneBits(_wgslsmith_clamp_u32(u_input.d.x << (103485u % 32u), reverseBits(4294967295u), 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-547f, 1000f))))))), Struct_2(global1[_wgslsmith_index_u32(u_input.a, 24u)], global3[_wgslsmith_index_u32(select(firstLeadingBit(0u), ~67679u, any(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(70612u, 24u)]))), 11u)], Struct_1(global1[_wgslsmith_index_u32(~u_input.a, 24u)] | true, ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 13498u, u_input.b, u_input.b), vec4<u32>(74949u, u_input.b, 0u, 1557u)))), true);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x));
    let var_1 = -176f;
    let var_2 = var_0.a;
    var var_3 = -277f;
    return func_5(_wgslsmith_f_op_f32(2012f * -1642f), !vec4<bool>(any(var_2.b), var_0.a.b.x, true, global1[_wgslsmith_index_u32(4100u, 24u)]), vec3<bool>(u_input.c < reverseBits(_wgslsmith_sub_i32(u_input.c, 16448i)), any(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 24u)], false, global1[_wgslsmith_index_u32(21357u, 24u)])), false)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1062f, 399f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-446f, 780f), vec2<f32>(-644f, -901f), global1[_wgslsmith_index_u32(u_input.a, 24u)]))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1534f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-138f, 1373f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1683f, -168f), vec2<f32>(-1732f, -239f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2096f, 1000f), vec2<f32>(162f, 1208f))))), select(vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 24u)] || true, any(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], true))), func_1(), u_input.e == max(2147483647i, _wgslsmith_mult_i32(-46871i, u_input.c))), 18409u);
    global0 = _wgslsmith_f_op_f32(exp2(var_0.a.x));
    global1 = array<bool, 24>();
    global2 = array<vec4<f32>, 16>();
    let var_1 = var_0.a.x < _wgslsmith_f_op_f32(exp2(var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, ~u_input.b, ~(-u_input.c), max(vec3<i32>(~_wgslsmith_div_i32(0i, u_input.c), max(max(62812i, u_input.c), u_input.c | u_input.e), _wgslsmith_sub_i32(-2147483647i << (var_0.c % 32u), u_input.e)), ~(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -45613i, 0i), vec3<i32>(u_input.c, -16829i, u_input.c)))));
}

