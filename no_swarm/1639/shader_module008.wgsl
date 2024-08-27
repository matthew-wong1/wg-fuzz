struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec3<i32>(-14203i, -1i, 2147483647i), false, vec3<f32>(-1108f, 1730f, 1620f)), Struct_4(vec3<i32>(15086i, 2147483647i, -29523i), false, vec3<f32>(-363f, -934f, -1290f)), Struct_4(vec3<i32>(-1i, -15454i, i32(-2147483648)), false, vec3<f32>(1000f, -1147f, 683f)), Struct_4(vec3<i32>(-44617i, -30712i, 2147483647i), true, vec3<f32>(528f, -1986f, 769f)), Struct_4(vec3<i32>(1i, 2147483647i, 2147483647i), false, vec3<f32>(747f, -895f, -528f)), Struct_4(vec3<i32>(-29773i, 2498i, 16428i), false, vec3<f32>(1000f, -894f, 288f)), Struct_4(vec3<i32>(-33697i, 0i, 60578i), false, vec3<f32>(264f, 1000f, -809f)), Struct_4(vec3<i32>(2147483647i, 3300i, -80661i), true, vec3<f32>(956f, -456f, -746f)), Struct_4(vec3<i32>(-1i, 31510i, 2147483647i), false, vec3<f32>(1000f, 104f, -1000f)));

var<private> global3: array<vec4<bool>, 31>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<u32>) -> u32 {
    var var_0 = select(arg_2.x, false && arg_2.x, false);
    global3 = array<vec4<bool>, 31>();
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(4294967295u, arg_3.x, 85827u, 53482u), vec4<u32>(4294967295u, 4294967295u, arg_3.x, arg_3.x)), vec4<u32>(0u, 8959u, 35444u, 52970u) << (vec4<u32>(arg_3.x, arg_3.x, 0u, 33781u) % vec4<u32>(32u))), _wgslsmith_mult_u32(~(arg_3.x | arg_3.x), ~11772u), 21893u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(max(arg_3.x, _wgslsmith_mod_u32(arg_3.x, 70619u)), ~arg_1), ~(~94164u)));
    var var_2 = -vec2<i32>(-2147483647i, -5911i);
    var var_3 = abs(arg_1);
    return min(arg_3.x, 38895u);
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_3.a, countOneBits(_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(arg_3.a, arg_3.a), firstLeadingBit(arg_1.a.c.a.x))));
    global2 = array<Struct_4, 9>();
    var_0 = arg_1.a.c;
    let var_1 = select(arg_2, !vec2<bool>(!arg_2.x, true), arg_2.x);
    let var_2 = vec2<i32>(var_0.b, _wgslsmith_dot_vec4_i32(-arg_3.a, vec4<i32>(arg_1.a.c.b, arg_0, ~(~arg_1.a.c.a.x), var_0.b)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(257f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(812f - -275f) + _wgslsmith_f_op_f32(894f * 119f)))))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(func_4((_wgslsmith_div_i32(-9349i, 1i) >> (func_3(_wgslsmith_add_i32(u_input.a, 23221i), arg_3.x, select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), arg_3.zz) % 32u)) << (arg_3.x % 32u), Struct_5(Struct_3(vec4<u32>(~1u, arg_3.x, 3123u, arg_0 << (arg_0 % 32u)), Struct_2(Struct_1(vec4<i32>(-1i, arg_2, arg_2, 29606i), 17004i)), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, arg_2, u_input.a, u_input.a), vec4<i32>(arg_2, -35912i, -2147483647i, u_input.a), vec4<i32>(46867i, 0i, 15291i, -49561i)), 1i), Struct_2(Struct_1(vec4<i32>(-32096i, arg_2, 8824i, arg_2), arg_2))), arg_2), !vec2<bool>(!any(global3[_wgslsmith_index_u32(arg_3.x, 31u)]), 1i != arg_2), Struct_1(max(_wgslsmith_div_vec4_i32(select(vec4<i32>(arg_2, -1i, -1i, u_input.a), vec4<i32>(31675i, 0i, u_input.a, 1i), global3[_wgslsmith_index_u32(arg_3.x, 31u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, u_input.a, arg_2, 2147483647i), vec4<i32>(1i, -105497i, -10928i, u_input.a))), _wgslsmith_sub_vec4_i32(-vec4<i32>(arg_2, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, arg_2, 20326i))), (7005i >> (func_3(2147483647i, arg_0, vec3<bool>(false, false, true), vec2<u32>(arg_0, arg_3.x)) % 32u)) << (57107u % 32u))));
    var var_1 = ~arg_3.x;
    var var_2 = (any(vec3<bool>(false, all(vec2<bool>(false, false)), false)) | (!any(vec2<bool>(true, true)) | !any(vec2<bool>(true, false)))) | true;
    let var_3 = countOneBits(~arg_3.yw);
    global2 = array<Struct_4, 9>();
    return arg_3;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> u32 {
    var var_0 = 322f;
    global3 = array<vec4<bool>, 31>();
    global3 = array<vec4<bool>, 31>();
    let var_1 = Struct_5(Struct_3(func_2(~(~1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(105f, 2142f, 1359f, -686f) + vec4<f32>(2246f, 1000f, -1042f, 289f)) - vec4<f32>(2067f, -1169f, 115f, -472f)), -1i, vec4<u32>(~arg_3.x, _wgslsmith_div_u32(1u, arg_3.x), arg_3.x, arg_3.x | 5937u)), Struct_2(arg_1), arg_1, Struct_2(arg_1)), ~(-2147483647i));
    var_0 = -1047f;
    return countOneBits(~53878u) ^ func_2(reverseBits(_wgslsmith_mod_u32(countOneBits(arg_3.x), arg_3.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(357f, -420f, 1782f, -1036f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(512f, 1408f, 126f, -1716f))))), _wgslsmith_mod_i32(4124i ^ arg_2.x, var_1.b), countOneBits(~vec4<u32>(4294967295u, 0u, 20068u, var_1.a.a.x))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, _wgslsmith_div_f32(-300f, 804f), -1057f)))));
    global1 = 1672f;
    var var_1 = true | (4294967295u < (13773u >> (max(1u, func_1(true, Struct_1(vec4<i32>(u_input.a, -28619i, -8038i, -2147483647i), 5860i), vec2<i32>(u_input.a, u_input.a), vec3<u32>(1u, 1u, 0u))) % 32u)));
    var var_2 = u_input.a;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(529f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))))), var_0.x);
    var var_3 = abs(vec2<u32>(1u, 1u));
    global1 = -192f;
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(76280u, 0u, 1u, var_3.x)), vec4<u32>(var_3.x, 45935u, var_3.x, 0u)), firstTrailingBit(abs(func_2(4294967295u, vec4<f32>(1564f, 351f, -285f, 566f), 0i, vec4<u32>(0u, 81354u, var_3.x, 1u))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(u_input.a, Struct_5(Struct_3(vec4<u32>(var_3.x, var_3.x, var_3.x, 0u), Struct_2(Struct_1(vec4<i32>(-15001i, u_input.a, u_input.a, 2147483647i), u_input.a)), Struct_1(vec4<i32>(1i, u_input.a, u_input.a, -2147483647i), u_input.a), Struct_2(Struct_1(vec4<i32>(2147483647i, u_input.a, u_input.a, -52337i), u_input.a))), -1i), vec2<bool>(false, true), Struct_1(vec4<i32>(-2147483647i, 74194i, 1i, u_input.a), u_input.a))))), -811f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1416f))), false)), 1847f), 1i);
}

