struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: Struct_1 = Struct_1(194i, vec4<i32>(2147483647i, i32(-2147483648), -18603i, -39296i), 29793i, vec3<i32>(-6276i, -49807i, i32(-2147483648)));

var<private> global2: f32 = -309f;

var<private> global3: array<bool, 22> = array<bool, 22>(false, true, false, true, true, true, true, false, true, true, true, true, false, true, false, false, false, true, false, false, false, true);

var<private> global4: array<u32, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2548f, -1253f, 218f, -1316f) + vec4<f32>(805f, -324f, 621f, 1000f)) - vec4<f32>(-295f, 720f, -548f, 411f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1701f * -240f) * _wgslsmith_f_op_f32(ceil(-2344f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), ~u_input.a < u_input.a)), _wgslsmith_f_op_f32(697f + _wgslsmith_f_op_f32(-660f + _wgslsmith_f_op_f32(f32(-1f) * -517f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(452f - 1000f))));
    let var_1 = Struct_3(any(vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e, u_input.e, vec3<u32>(1u, global4[_wgslsmith_index_u32(1u, 1u)], u_input.d)), _wgslsmith_mult_vec3_u32(u_input.e, u_input.e)), 22u)], !(global3[_wgslsmith_index_u32(1u, 22u)] == arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(var_0.x + var_0.x)))), var_0.x));
    let var_2 = Struct_1(-1i, reverseBits(countOneBits(-vec4<i32>(0i, -26882i, global1.d.x, global1.d.x))), -1i & (1i >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1, 14469u, 4294967295u, 50630u), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1, 1u)], 1u)], 0u, u_input.d, 17112u), false), vec4<u32>(u_input.e.x, arg_1, arg_1, 31495u)) % 32u)), global1.d);
    global4 = array<u32, 1>();
    global1 = var_2;
    return _wgslsmith_f_op_f32(1489f - 1145f);
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1143f)))) * _wgslsmith_div_f32(409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(1u, 22u)]), vec3<bool>(false, false, false), false), u_input.e.x, 54877i)))));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    global3 = array<bool, 22>();
    global1 = Struct_1(-_wgslsmith_dot_vec3_i32(~vec3<i32>(-24443i, arg_0, global1.c), vec3<i32>(countOneBits(-43819i), 3110i, 13961i)), _wgslsmith_mod_vec4_i32(global1.b, ~firstLeadingBit(_wgslsmith_mult_vec4_i32(global1.b, vec4<i32>(1i, arg_0, global1.a, arg_0)))), arg_0, vec3<i32>(min(abs(0i), 0i), countOneBits(min(~u_input.a, countOneBits(-63i))), 8282i));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1207f) - 1812f);
    let var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    return firstTrailingBit(_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(1u, 47063u, u_input.d, 1u) & vec4<u32>(1u, 4294967295u, u_input.d, 4294967295u)), ~(~select(vec4<u32>(u_input.e.x, 54222u, 4294967295u, 1u), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(u_input.d, 1u)], 17609u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)]), vec4<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(u_input.d, 22u)])))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec3<u32> {
    global0 = array<Struct_1, 26>();
    global3 = array<bool, 22>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(223f + -1517f))), arg_1.x, arg_1.x));
    var var_1 = -1000f;
    global1 = global0[_wgslsmith_index_u32(1u, 26u)];
    return ~abs(min(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 2283u), u_input.e), u_input.e));
}

fn func_5(arg_0: vec3<u32>) -> Struct_1 {
    global3 = array<bool, 22>();
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(global1.d.x, 581i), u_input.b);
    global0 = array<Struct_1, 26>();
    global4 = array<u32, 1>();
    let var_1 = select(!select(!vec3<bool>(true, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 1u)], 22u)], global3[_wgslsmith_index_u32(arg_0.x, 22u)]), !vec3<bool>(true, true, global3[_wgslsmith_index_u32(29708u, 22u)]), true && select(global3[_wgslsmith_index_u32(u_input.e.x, 22u)], false, false)), select(!vec3<bool>(true, false | global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16829u, 1u)], 22u)], global3[_wgslsmith_index_u32(u_input.e.x, 22u)]), vec3<bool>(any(!vec4<bool>(true, false, global3[_wgslsmith_index_u32(33060u, 22u)], true)), false, var_0 == select(12599i, -2147483647i, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f - 842f))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1230f, -1028f, global3[_wgslsmith_index_u32(arg_0.x, 22u)])), _wgslsmith_div_f32(1065f, -1145f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1431f) - _wgslsmith_f_op_f32(floor(559f))))));
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(6862u << (arg_0.x % 32u), firstLeadingBit(~46584u)), ~func_1(abs(var_0) >> (0u % 32u)).x), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(reverseBits(_wgslsmith_div_vec4_u32(select(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 1u)], 1u)], u_input.d, 1u, u_input.d), vec4<u32>(73758u, 1u, global4[_wgslsmith_index_u32(72855u, 1u)], global4[_wgslsmith_index_u32(0u, 1u)]), global3[_wgslsmith_index_u32(1u, 22u)]), func_1(u_input.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-656f, -1085f, 863f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-614f, -670f, 1733f))), vec3<f32>(1f, 1f, 1f), true))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(1058f, -1702f)), -614f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1005f, 270f) + vec2<f32>(-377f, -1139f))), select(vec2<bool>(false, false), vec2<bool>(false, false), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, u_input.e.x), 22u)]))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-609f, 901f) - vec2<f32>(3058f, -363f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1024f, 755f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(reverseBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e.zy, u_input.e.yx), 1u)], 1u)]), 1u)], ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, global4[_wgslsmith_index_u32(1u, 1u)]), 1u, countOneBits(63835u), global4[_wgslsmith_index_u32(60992u, 1u)]), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.d, 24200u, 7845u) >> (vec4<u32>(u_input.e.x, global4[_wgslsmith_index_u32(46592u, 1u)], 28742u, 1u) % vec4<u32>(32u)), vec4<u32>(global4[_wgslsmith_index_u32(u_input.e.x, 1u)], u_input.d, 31793u, u_input.e.x) >> (vec4<u32>(23003u, u_input.e.x, 594u, global4[_wgslsmith_index_u32(u_input.e.x, 1u)]) % vec4<u32>(32u)))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(26808i, 0i, global1.c), abs(vec3<i32>(6012i, 14231i, 56411i))), -2147483647i) | global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1572f)))) * var_0.x) + _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))))));
}

