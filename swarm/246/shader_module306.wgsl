struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<f32> {
    var var_0 = global1.x;
    let var_1 = select(global1.zz, select(select(select(vec2<bool>(true, false), global1.zz, global1.x), select(select(vec2<bool>(global1.x, global1.x), global1.zz, global1.yy), global1.yz, !global1.x), !global1.x), !select(!vec2<bool>(true, global1.x), !vec2<bool>(global1.x, global1.x), select(global1.yz, vec2<bool>(global1.x, global1.x), global1.xx)), !global1.x), any(select(global1.zz, !(!vec2<bool>(global1.x, true)), any(!vec4<bool>(false, false, false, global1.x)))));
    global2 = ~(max(countOneBits(abs(u_input.a)), _wgslsmith_mult_i32(1i, -u_input.b.x)) >> (((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), 7u)], 7u)], 7u)] & ~global0[_wgslsmith_index_u32(31735u, 7u)]) & ~firstLeadingBit(1u)) % 32u));
    var var_2 = u_input.e;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1344f) + vec2<f32>(-2792f, 1615f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(660f, -1400f) + vec2<f32>(-422f, -2091f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-390f, -939f), vec2<f32>(-486f, -1275f)))), select(select(vec2<bool>(false, false), vec2<bool>(true, var_1.x), false), !var_1, vec2<bool>(false, false))))), !(!(global1.x && var_1.x)) || (1u != _wgslsmith_mult_u32(~26185u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3771u, 7u)], 7u)], global0[_wgslsmith_index_u32(0u, 7u)]))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1153f * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-668f - 116f), _wgslsmith_f_op_f32(step(1586f, -360f))))), abs(firstTrailingBit(~u_input.c) >> (_wgslsmith_mult_u32(447u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50368u, 7u)], 7u)]), vec2<u32>(16159u, 26464u))) % 32u)));
    return vec4<f32>(_wgslsmith_f_op_f32(sign(var_3.a.x)), -465f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(578f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.a.x))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<u32>) -> vec4<bool> {
    global0 = array<u32, 7>();
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(635f * _wgslsmith_f_op_f32(f32(-1f) * -1497f)), 1948f), arg_1.zw), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -1227f) - arg_1.x)), -599f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -315f) * arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-763f + _wgslsmith_f_op_f32(abs(arg_0.x))))), _wgslsmith_div_i32(-18378i, 2147483647i));
    var var_1 = var_0;
    var var_2 = Struct_3(!(!select(select(vec4<bool>(false, false, global1.x, var_1.b), vec4<bool>(global1.x, var_0.b, false, var_1.b), true), vec4<bool>(false, true, var_0.b, true), true)), var_1.e, var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.wyy, vec3<f32>(var_1.c, _wgslsmith_f_op_f32(446f - arg_0.x), _wgslsmith_f_op_f32(sign(1398f)))))), _wgslsmith_sub_vec2_u32(vec2<u32>(~arg_3.x, ~1u), arg_3.wx));
    var var_3 = vec4<u32>(1u & _wgslsmith_mult_u32(1u, var_2.e.x), _wgslsmith_sub_u32(4294967295u, 4294967295u), ~1u, 20622u);
    return vec4<bool>(true, !(!var_2.c.b), arg_2.a.x, !any(!var_2.a));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_3(!func_4(_wgslsmith_f_op_vec2_f32(arg_3.a - arg_3.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * _wgslsmith_div_vec4_f32(vec4<f32>(-2002f, -1427f, -722f, arg_3.c), vec4<f32>(153f, arg_3.d, 812f, 360f))), Struct_2(vec2<bool>(true, true), i32(-1i) * -2147483647i), vec4<u32>(global0[_wgslsmith_index_u32(0u, 7u)] & global0[_wgslsmith_index_u32(42625u, 7u)], 114836u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11081u, 7u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33508u, 7u)], 7u)], 7u)])), ~u_input.d.x, arg_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1681f, -855f, -3065f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.d, -180f, arg_1.a.x)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.c, arg_3.a.x, arg_1.d), vec3<f32>(arg_3.a.x, arg_1.a.x, arg_1.a.x), arg_3.b)))))), vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(14631u, 19839u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(4294967295u, 7u)], abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)])), 7u)], 7u)]), 7u)], ~0u));
    global2 = -2147483647i;
    let var_1 = vec2<u32>(25030u, 2917u ^ firstTrailingBit(firstTrailingBit(32191u)));
    var var_2 = !all(!(!vec2<bool>(var_0.a.x, false)));
    var var_3 = ((-2147483647i & abs(_wgslsmith_mult_i32(-1i, arg_0))) >> (var_0.e.x % 32u)) << (var_0.e.x % 32u);
    return 61610u >> (var_1.x % 32u);
}

fn func_1(arg_0: vec4<i32>) -> vec3<u32> {
    return _wgslsmith_sub_vec3_u32(select(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49740u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53372u, 7u)], 7u)], 7u)])), ~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(54712u, 7u)], 74096u)), vec3<u32>(13049u, func_2(u_input.a, Struct_1(vec2<f32>(2225f, 336f), global1.x, -1244f, -1449f, -1i), vec4<i32>(28671i, 28524i, arg_0.x, u_input.a), Struct_1(vec2<f32>(819f, -1000f), global1.x, -1000f, 477f, 1528i)), global0[_wgslsmith_index_u32(1u, 7u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)]), true) & vec3<u32>(reverseBits(0u << (0u % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 42683u), vec2<u32>(18774u, 67469u)), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)])), 7u)], abs(global0[_wgslsmith_index_u32(78733u, 7u)]) | global0[_wgslsmith_index_u32(~19561u, 7u)]), vec3<u32>(_wgslsmith_clamp_u32(func_2(_wgslsmith_mult_i32(-42926i, arg_0.x), Struct_1(vec2<f32>(1351f, 1615f), global1.x, 1196f, -622f, -27771i), vec4<i32>(u_input.c, u_input.c, arg_0.x, -55570i), Struct_1(vec2<f32>(1331f, -259f), true, -446f, 764f, 10807i)), ~(~global0[_wgslsmith_index_u32(28354u, 7u)]), 20952u), _wgslsmith_mod_u32((1086u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(80210u, 7u)], 7u)], 7u)], 7u)]) ^ global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)]), 7u)], _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(10675u, 7u)]))), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, u_input.e.xwx), u_input.d), vec3<i32>(53453i, ~_wgslsmith_mult_i32(28570i, u_input.a), _wgslsmith_add_i32(u_input.d.x, u_input.d.x)));
    var var_1 = vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(0u), ~_wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20992u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)])), 7u)], 7u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(34130u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70542u, 7u)], 7u)], 7u)], 44817u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], global0[_wgslsmith_index_u32(40634u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)])), 7u)], 7u)], _wgslsmith_div_u32(~(~48254u), 69635u & global0[_wgslsmith_index_u32(~4294967295u, 7u)])) >> (~func_1(_wgslsmith_add_vec4_i32(-u_input.e, _wgslsmith_mult_vec4_i32(u_input.e, vec4<i32>(u_input.a, u_input.b.x, u_input.d.x, 1i)))) % vec3<u32>(32u));
    var var_2 = vec4<bool>(all(select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(true, true, true, true), vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, false, global1.x, global1.x)), !vec4<bool>(global1.x, global1.x, global1.x, global1.x))), -22562i == u_input.c, !global1.x, _wgslsmith_dot_vec3_i32(u_input.e.yyw, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), u_input.e.yxw), vec3<i32>(-6033i, 30413i, u_input.c))) <= _wgslsmith_div_i32(-abs(u_input.b.x), ~(-u_input.c)));
    let var_3 = _wgslsmith_sub_vec3_i32(abs(-vec3<i32>(-42879i, u_input.a, _wgslsmith_mult_i32(1i, u_input.c))), u_input.e.yyz);
    var var_4 = vec4<f32>(-639f, 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-117f, -1417f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(464f)) + -836f))));
    let x = u_input.a;
    s_output = StorageBuffer(-2170f);
}

