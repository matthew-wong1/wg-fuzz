struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 210f;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(978f, 12112u, vec2<bool>(true, false), i32(-2147483648), vec3<bool>(true, false, false)), Struct_1(512f, 45610u, vec2<bool>(false, false), 1i, vec3<bool>(true, true, false)), Struct_1(1000f, 69123u, vec2<bool>(true, true), i32(-2147483648), vec3<bool>(false, true, false)), Struct_1(633f, 4294967295u, vec2<bool>(true, true), 0i, vec3<bool>(false, false, true)), Struct_1(-922f, 1u, vec2<bool>(true, true), 52251i, vec3<bool>(true, true, true)), Struct_1(-1134f, 34083u, vec2<bool>(false, true), 7512i, vec3<bool>(false, false, true)), Struct_1(-191f, 23263u, vec2<bool>(true, true), 2147483647i, vec3<bool>(true, true, true)));

var<private> global2: i32;

var<private> global3: array<f32, 8> = array<f32, 8>(2154f, 1000f, -1290f, 1408f, 162f, -297f, 458f, 353f);

var<private> global4: array<vec4<bool>, 7>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    return arg_0.c.b;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<bool>) -> vec2<bool> {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~(~arg_2)), vec2<u32>(abs(1u), _wgslsmith_div_u32(func_3(Struct_2(u_input.a, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(arg_2.x, 7u)], vec3<f32>(260f, global3[_wgslsmith_index_u32(arg_2.x, 8u)], arg_0), vec4<bool>(arg_3.x, true, false, arg_3.x))), reverseBits(arg_2.x)))), 8u)], func_3(Struct_2(u_input.a, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~arg_2.x), 7u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(773f, arg_1, -902f), vec3<f32>(-262f, 826f, arg_1)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-225f, arg_0, 1000f) + vec3<f32>(-1000f, arg_0, -811f))), global4[_wgslsmith_index_u32(~(~arg_2.x), 7u)])), !arg_3, -33668i, vec3<bool>((-31048i < _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, 9379i), vec3<i32>(u_input.a, 7518i, u_input.a))) | any(vec3<bool>(arg_3.x, false, false)), (select(true, arg_3.x, true) != arg_3.x) && (all(global4[_wgslsmith_index_u32(0u, 7u)]) != all(vec4<bool>(arg_3.x, arg_3.x, true, true))), arg_3.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1665f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1641f - arg_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0, arg_0)))))))));
    let var_1 = Struct_1(var_0.a, 33834u, vec2<bool>(var_0.e.x, arg_3.x), _wgslsmith_mult_i32(u_input.a, -(0i ^ u_input.a)), !var_0.e);
    let var_2 = global1[_wgslsmith_index_u32(~firstLeadingBit(countOneBits(25739u)), 7u)];
    return var_0.e.yz;
}

fn func_1() -> vec2<u32> {
    global1 = array<Struct_1, 7>();
    global2 = abs(-1i);
    let var_0 = Struct_3(!all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), func_2(-131f, -1252f, vec2<u32>(77758u, 48550u), vec2<bool>(false, false)), vec2<bool>(true, false))));
    var var_1 = Struct_2(firstTrailingBit(0i), Struct_1(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(~4294967295u), 8u)]), 0u, select(vec2<bool>(!var_0.a, all(vec2<bool>(var_0.a, var_0.a))), select(!vec2<bool>(false, var_0.a), !vec2<bool>(var_0.a, var_0.a), var_0.a), var_0.a), 2147483647i, select(select(vec3<bool>(true, false, var_0.a), vec3<bool>(var_0.a, false, true), select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, true, false), var_0.a)), vec3<bool>(false, !var_0.a, !var_0.a), var_0.a && true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(204512u, 43329u, 12147u, abs(27721u) >> (0u % 32u)), abs(~abs(vec4<u32>(0u, 4294967295u, 1u, 29154u)))), 7u)], _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(0u, 8u)], -1000f, 691f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1263f, 429f, 1069f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3[_wgslsmith_index_u32(6186u, 8u)], global3[_wgslsmith_index_u32(27319u, 8u)], global3[_wgslsmith_index_u32(37627u, 8u)]))))))), global4[_wgslsmith_index_u32(~4294967295u, 7u)]);
    var var_2 = !var_1.e.wx;
    return abs(select(vec2<u32>(1u << (var_1.c.b % 32u), ~4294967295u), ~(vec2<u32>(28313u, var_1.c.b) ^ ~vec2<u32>(0u, 0u)), true));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: f32) -> vec4<i32> {
    global4 = array<vec4<bool>, 7>();
    let var_0 = Struct_3(!(!any(vec4<bool>(true, false, false, true))));
    var var_1 = Struct_4(var_0);
    var var_2 = Struct_2(-1i, Struct_1(-269f, _wgslsmith_sub_u32(1u, 1u) << (firstLeadingBit(56970u) % 32u), select(!func_2(-848f, -1752f, vec2<u32>(8211u, 70489u), vec2<bool>(var_1.a.a, var_1.a.a)), select(select(vec2<bool>(false, var_1.a.a), vec2<bool>(false, true), false), select(vec2<bool>(true, var_0.a), vec2<bool>(true, var_1.a.a), true), vec2<bool>(var_0.a, var_1.a.a)), func_2(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(min(-994f, arg_2)), min(vec2<u32>(89596u, 0u), vec2<u32>(4294967295u, 1u)), !vec2<bool>(var_1.a.a, var_1.a.a))), ~(-10075i | (u_input.a ^ u_input.a)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, var_1.a.a), vec3<bool>(true, var_0.a, false)), !vec3<bool>(false, var_0.a, false), select(vec3<bool>(var_1.a.a, false, false), vec3<bool>(true, false, var_1.a.a), var_1.a.a)), select(select(vec3<bool>(true, false, var_1.a.a), vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_1.a.a, false, var_0.a)), !vec3<bool>(var_0.a, var_1.a.a, var_0.a), !var_1.a.a), var_0.a)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(max(16786u, 0u)), ~(1u >> (0u % 32u))), ~firstLeadingBit(abs(vec2<u32>(1u, 14591u)))), 7u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), arg_2)) + 1f), -340f, _wgslsmith_f_op_f32(-138f * -223f)), !select(global4[_wgslsmith_index_u32(select(4294967295u, 32959u, false) & ~37399u, 7u)], !vec4<bool>(var_1.a.a, var_0.a, var_0.a, false), false));
    let var_3 = 4294967295u;
    return -_wgslsmith_clamp_vec4_i32((_wgslsmith_sub_vec4_i32(vec4<i32>(-8036i, u_input.a, 57196i, 2147483647i), vec4<i32>(u_input.a, 58054i, u_input.a, 2147483647i)) | vec4<i32>(-22761i, u_input.a, u_input.a, -52120i)) << (min(select(vec4<u32>(var_2.c.b, var_2.c.b, 73360u, var_3), vec4<u32>(var_3, var_2.c.b, var_3, 73382u), false), _wgslsmith_sub_vec4_u32(vec4<u32>(88963u, var_2.c.b, 4294967295u, var_2.b.b), vec4<u32>(1u, 4294967295u, var_3, var_3))) % vec4<u32>(32u)), vec4<i32>(u_input.a | 0i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-16636i, 4804i), 0i), i32(-1i) * -var_2.b.d, 37162i), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, 212i, 1507i, 0i), ~vec4<i32>(u_input.a, var_2.b.d, u_input.a, 29915i)), abs(vec4<i32>(-5534i, u_input.a, -60132i, 0i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(55207i, -2147483647i, 20364i, 17185i), vec4<i32>(var_2.a, 64906i, var_2.c.d, var_2.c.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-789f, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 1u), func_1()), vec2<u32>(1u, _wgslsmith_mod_u32(0u, 68427u))), 8u)], -205f);
    let var_1 = _wgslsmith_add_u32(1u, 1u);
    global1 = array<Struct_1, 7>();
    var var_2 = abs(vec3<i32>(_wgslsmith_sub_i32(-(var_0.x | u_input.a), max(-2147483647i, _wgslsmith_mult_i32(u_input.a, 6445i))), i32(-1i) * -_wgslsmith_sub_i32(1i, u_input.a), firstLeadingBit(-53177i)));
    var var_3 = Struct_3(false);
    let var_4 = Struct_2(var_2.x, Struct_1(1680f, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(66871u, 1u, 0u, var_1), vec4<u32>(var_1, 1u, var_1, var_1)), _wgslsmith_add_vec4_u32(vec4<u32>(26449u, var_1, 1u, var_1), vec4<u32>(var_1, 76939u, 0u, 1u))), vec4<u32>(_wgslsmith_add_u32(var_1, var_1), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, var_1), vec3<u32>(44869u, var_1, 4294967295u)), var_1, abs(var_1))), select(vec2<bool>(var_3.a, any(global4[_wgslsmith_index_u32(var_1, 7u)])), select(vec2<bool>(var_3.a, true), !vec2<bool>(var_3.a, var_3.a), !vec2<bool>(false, var_3.a)), -773f >= global3[_wgslsmith_index_u32(75408u, 8u)]), 22943i, vec3<bool>(any(select(vec3<bool>(var_3.a, var_3.a, true), vec3<bool>(false, var_3.a, false), var_3.a)), func_2(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1, 8u)] * global3[_wgslsmith_index_u32(var_1, 8u)]), -196f, vec2<u32>(0u, var_1), vec2<bool>(var_3.a, var_3.a)).x, var_3.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(774f, global3[_wgslsmith_index_u32(var_1, 8u)])))), var_1, vec2<bool>(true, select(select(true, false, false), any(vec2<bool>(var_3.a, true)), false)), 0i, vec3<bool>(true, all(global4[_wgslsmith_index_u32(~1u, 7u)]), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(var_1, 8u)], -612f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1, 8u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1984f, -340f, var_3.a))))), vec4<bool>(var_3.a, var_3.a, !var_3.a, true));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(var_1, 8u)], var_0.x);
}

