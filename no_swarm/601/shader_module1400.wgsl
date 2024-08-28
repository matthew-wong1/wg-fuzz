struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec3<f32>;

var<private> global2: array<u32, 9>;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(0u), Struct_1(1u), Struct_1(6858u), Struct_1(20013u), Struct_1(71940u), Struct_1(44277u), Struct_1(1u), Struct_1(0u), Struct_1(2389u), Struct_1(0u), Struct_1(0u), Struct_1(61607u), Struct_1(15821u), Struct_1(34738u), Struct_1(4294967295u), Struct_1(4294967295u));

var<private> global4: Struct_1 = Struct_1(4761u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(arg_0.a, 16u)];
    var_0 = Struct_1(_wgslsmith_sub_u32(select(reverseBits(0u), ~24794u, true), u_input.c));
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i << (_wgslsmith_sub_u32(28526u, var_0.a) % 32u), arg_1, reverseBits(-23331i), ~(-15004i)), vec4<i32>(arg_1, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 1i, arg_1), _wgslsmith_mod_vec3_i32(u_input.b.wxw, vec3<i32>(u_input.d, arg_1, 0i))), 1i, 16756i));
    var var_1 = Struct_1(~(min(1u, global4.a) ^ ~1u) << (9243u % 32u));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 495f))), vec3<f32>(global1.x, 570f, _wgslsmith_f_op_f32(ceil(1369f))), any(vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-410f, global1.x, global1.x), vec3<f32>(global1.x, global1.x, global1.x), vec3<bool>(false, false, false))) - vec3<f32>(-1000f, global1.x, 412f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1170f, 634f, 836f) + vec3<f32>(1014f, -405f, global1.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -871f), global1.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-2176f, 487f)))))) * -1337f);
}

fn func_2(arg_0: vec2<i32>) -> vec4<i32> {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(~1807u), firstTrailingBit(min(-2147483647i, u_input.d)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-860f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.x, global1.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1401f)));
    return abs(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-2147483647i, ~arg_0.x), 1i, -1i, firstLeadingBit(-49182i)), u_input.b >> (firstTrailingBit(vec4<u32>(0u, 66759u, u_input.e, u_input.c)) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_div_vec4_i32(u_input.b, func_2(vec2<i32>(~0i, ~(-1i))));
    var var_1 = arg_3;
    global2 = array<u32, 9>();
    let var_2 = _wgslsmith_f_op_f32(-global1.x);
    global2 = array<u32, 9>();
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1051f, global1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1923f, global1.x, -882f), vec3<f32>(1861f, global1.x, 1000f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(992f, -536f, 105f), vec3<f32>(global1.x, global1.x, global1.x)))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-842f, -932f, -212f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1203f, -308f, -870f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(657f + global1.x), -374f, _wgslsmith_f_op_f32(round(-1185f))) + vec3<f32>(global1.x, -204f, -120f)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(739f, global1.x, 257f) + vec3<f32>(global1.x, global1.x, 2545f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -128f, -312f)))), vec3<f32>(_wgslsmith_f_op_f32(global1.x - global1.x), -599f, global1.x)))));
    let var_0 = all(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), u_input.d >= 2147483647i));
    var var_1 = Struct_1(firstLeadingBit(4294967295u));
    let var_2 = firstLeadingBit(_wgslsmith_mod_i32(-countOneBits(max(u_input.b.x, u_input.a)), firstLeadingBit(u_input.a)));
    var var_3 = ~abs(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-13702i, -16977i), u_input.b.x), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zy, -863f, _wgslsmith_mult_i32(1i, abs(func_1(~vec2<u32>(22285u, global4.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1284f, global1.x, global1.x, global1.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a, global2[_wgslsmith_index_u32(3598u, 9u)]), vec2<u32>(11831u, u_input.e)), global3[_wgslsmith_index_u32(firstLeadingBit(global4.a), 16u)]))), vec4<u32>(58945u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(56771u, global4.a, var_1.a, 1737u) << (vec4<u32>(global4.a, 44857u, u_input.e, 31666u) % vec4<u32>(32u)), select(vec4<u32>(global2[_wgslsmith_index_u32(22081u, 9u)], 7362u, global2[_wgslsmith_index_u32(14716u, 9u)], 40350u), vec4<u32>(18168u, global4.a, 30061u, 58438u), vec4<bool>(var_0, var_0, false, var_0))), 19094u), abs(41641u), _wgslsmith_add_u32(u_input.c, u_input.e << (global2[_wgslsmith_index_u32(max(48995u, 0u), 9u)] % 32u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(34557u, var_1.a | 11547u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 9u)], 1u, 0u, global4.a), vec4<u32>(0u, u_input.c, global2[_wgslsmith_index_u32(global4.a, 9u)], 1u))), ~vec3<u32>(2637u, 442u, global2[_wgslsmith_index_u32(u_input.e, 9u)])));
}

