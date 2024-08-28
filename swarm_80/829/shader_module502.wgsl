struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5>;

var<private> global1: array<bool, 18>;

var<private> global2: array<f32, 23>;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: bool = true;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> f32 {
    let var_0 = -_wgslsmith_mod_i32(~(-46417i), ~(-2147483647i & arg_1.a.a));
    let var_1 = ~(((vec3<u32>(3255u, 0u, 4294967295u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) ^ vec3<u32>(20915u, _wgslsmith_dot_vec3_u32(vec3<u32>(20608u, 1u, 1u), vec3<u32>(58537u, 146u, 19620u)), 16596u)) & _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 1u, 14130u), _wgslsmith_clamp_vec3_u32(vec3<u32>(74030u, 49449u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 73590u, 19302u))), vec3<u32>(max(1u, 4294967295u), 43404u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 75907u, 4294967295u, 1690u), vec4<u32>(26761u, 63569u, 0u, 0u))), firstLeadingBit(vec3<u32>(1u, 1u, 1u))));
    global1 = array<bool, 18>();
    global4 = !(!(4294967295u >= var_1.x));
    global2 = array<f32, 23>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-271f)))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2;
    let var_1 = Struct_4(Struct_3(Struct_2(countOneBits(arg_2.c))), Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-525i, -13288i, var_0.d.x), var_0.d, vec3<bool>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(27639u, 18u)], false)), -vec3<i32>(14271i, 20057i, arg_1)))));
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(var_0.a.x, var_1.b)), var_0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(~36922u, 23u)], var_1.b)))), _wgslsmith_f_op_f32(floor(-2072f))), _wgslsmith_div_i32(u_input.a.x, ~firstLeadingBit(_wgslsmith_add_i32(-46842i, 18907i))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i | ~u_input.a.x, var_0.d.x), _wgslsmith_add_i32(countOneBits(var_1.a.a.a), arg_1)), arg_2.d);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)), u_input.a.x, countOneBits(_wgslsmith_add_i32(-var_0.b, reverseBits(abs(27640i)))), firstLeadingBit(vec3<i32>(firstTrailingBit(arg_1 >> (14450u % 32u)), var_0.b, var_0.c)));
    var var_3 = false;
    return ~(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 42013u, 2508u), vec3<u32>(0u, 3988u, 4294967295u))) << (max(firstLeadingBit(~4294967295u), ~1u) % 32u));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_4(Struct_3(Struct_2(1i)), Struct_3(Struct_2(~0i)));
    global2 = array<f32, 23>();
    global1 = array<bool, 18>();
    let var_1 = vec4<u32>(~(~(~_wgslsmith_add_u32(60u, 23365u))), func_2(arg_0, -75555i, arg_2), 1u, arg_1.x);
    var var_2 = ~(~countOneBits(var_1.x << (var_1.x % 32u)));
    return Struct_3(var_0.b.a);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    global1 = array<bool, 18>();
    global0 = array<vec4<i32>, 5>();
    global1 = array<bool, 18>();
    global2 = array<f32, 23>();
    var var_0 = 3332u;
    return Struct_3(func_4(false, vec3<u32>(1u, 1u, 1u), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 579f, arg_1) + vec4<f32>(725f, arg_1, global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1543f, arg_1, global2[_wgslsmith_index_u32(57143u, 23u)], arg_1))), abs(-43245i), ~2147483647i, select(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 0i, 1i), vec3<i32>(u_input.a.x, u_input.a.x, -1i)), u_input.a, all(vec3<bool>(global3.x, global3.x, global1[_wgslsmith_index_u32(2635u, 18u)]))))).a);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>) -> vec2<u32> {
    global3 = select(!vec2<bool>(true, global3.x), vec2<bool>(true, true), true);
    var var_0 = func_5(func_4(_wgslsmith_add_u32(1u, func_2(false, arg_1.a, Struct_1(arg_2, arg_1.a, 1i, vec3<i32>(2147483647i, 1i, arg_1.a)))) == _wgslsmith_clamp_u32(1u, ~23897u, abs(0u)), vec3<u32>(0u, 4294967295u, ~1u), Struct_1(_wgslsmith_f_op_vec4_f32(arg_2 - vec4<f32>(1000f, -1728f, global2[_wgslsmith_index_u32(4294967295u, 23u)], arg_0)), arg_1.a, arg_1.a, _wgslsmith_add_vec3_i32(u_input.a, u_input.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(42009u, 23u)]))))), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1332f - global2[_wgslsmith_index_u32(1u, 23u)]))), global3.x)), func_4(global1[_wgslsmith_index_u32(23622u, 18u)], ~vec3<u32>(_wgslsmith_mod_u32(26940u, 44425u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 32554u, 0u), vec4<u32>(83907u, 75131u, 1u, 28019u)), 1u), Struct_1(_wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(1380f, arg_0, -1435f, -878f)), ~(-arg_1.a), u_input.a.x, u_input.a)));
    global2 = array<f32, 23>();
    global1 = array<bool, 18>();
    global0 = array<vec4<i32>, 5>();
    return _wgslsmith_mult_vec2_u32(vec2<u32>(~firstTrailingBit(~1u), 1u), vec2<u32>(func_2(global1[_wgslsmith_index_u32(~(~79370u), 18u)], _wgslsmith_mod_i32(arg_1.a & -2147483647i, -59666i), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(270f, -1521f, global2[_wgslsmith_index_u32(4004u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]) + arg_2), -1i, -2391i, u_input.a)), ~(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.a ^ _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, u_input.a.x, 3432i), u_input.a >> (vec3<u32>(4294967295u, 14581u, 0u) % vec3<u32>(32u)), u_input.a), ~u_input.a), vec3<i32>(i32(-1i) * -41772i, u_input.a.x, u_input.a.x));
    global2 = array<f32, 23>();
    var var_1 = -952f;
    var var_2 = _wgslsmith_div_u32(4498u, firstLeadingBit(~_wgslsmith_dot_vec2_u32(func_1(global2[_wgslsmith_index_u32(1u, 23u)], Struct_2(u_input.a.x), vec4<f32>(-514f, global2[_wgslsmith_index_u32(13990u, 23u)], -465f, -592f)), _wgslsmith_mod_vec2_u32(vec2<u32>(54971u, 4294967295u), vec2<u32>(41806u, 4294967295u)))));
    var var_3 = func_5(func_5(Struct_3(Struct_2(~u_input.a.x)), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), min(vec2<u32>(38489u, 4294967295u), vec2<u32>(19395u, 4294967295u))), 23u)], func_5(func_5(Struct_3(Struct_2(64418i)), _wgslsmith_f_op_f32(856f - global2[_wgslsmith_index_u32(3905u, 23u)]), func_4(global3.x, vec3<u32>(0u, 35110u, 4294967295u), Struct_1(vec4<f32>(-1180f, 1000f, 447f, 400f), 0i, -13537i, u_input.a))), 2068f, func_4(true, _wgslsmith_sub_vec3_u32(vec3<u32>(38246u, 4294967295u, 4294967295u), vec3<u32>(1u, 11641u, 4294967295u)), Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(11621u, 23u)], -1790f, global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(18939u, 23u)]), 2147483647i, u_input.a.x, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1349f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(32670u, 23u)]))) * _wgslsmith_f_op_f32(-406f * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(func_2(global3.x, 30796i, Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(37372u, 23u)], 1070f, 334f, 1000f), u_input.a.x, -3340i, vec3<i32>(var_0, u_input.a.x, 16752i))), 23u)], _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(5634u, 23u)]))))), func_5(func_5(func_5(Struct_3(Struct_2(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -374f), Struct_3(Struct_2(-10187i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1048f)) - _wgslsmith_f_op_f32(323f - global2[_wgslsmith_index_u32(372u, 23u)])), Struct_3(func_5(Struct_3(Struct_2(70992i)), global2[_wgslsmith_index_u32(4294967295u, 23u)], Struct_3(Struct_2(12827i))).a)), global2[_wgslsmith_index_u32(func_1(global2[_wgslsmith_index_u32(~(~4294967295u), 23u)], func_5(func_5(Struct_3(Struct_2(28442i)), -1018f, Struct_3(Struct_2(0i))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 23u)], func_4(false, vec3<u32>(1u, 47065u, 5921u), Struct_1(vec4<f32>(-784f, -129f, global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]), var_0, 2147483647i, u_input.a))).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(15655u, 23u)], global2[_wgslsmith_index_u32(30251u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)]) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1954f, 408f, -192f, global2[_wgslsmith_index_u32(25841u, 23u)]))))).x, 23u)], func_5(func_5(func_4(global3.x, vec3<u32>(41259u, 15856u, 0u), Struct_1(vec4<f32>(1394f, global2[_wgslsmith_index_u32(18147u, 23u)], -1000f, global2[_wgslsmith_index_u32(0u, 23u)]), 61023i, var_0, u_input.a)), -619f, func_4(global3.x, vec3<u32>(4958u, 7756u, 1u), Struct_1(vec4<f32>(2602f, global2[_wgslsmith_index_u32(0u, 23u)], 811f, -211f), var_0, u_input.a.x, vec3<i32>(var_0, 1i, u_input.a.x)))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 23u)]), Struct_3(Struct_2(var_0))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(var_3.a, i32(-1i) * -21087i)), ~_wgslsmith_mult_i32(~(~(-2147483647i)), 1i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(14755u, 23u)]) + vec2<f32>(889f, global2[_wgslsmith_index_u32(27034u, 23u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(234f, global2[_wgslsmith_index_u32(21710u, 23u)]), vec2<f32>(global2[_wgslsmith_index_u32(39135u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]))) - _wgslsmith_div_vec2_f32(vec2<f32>(-836f, -150f), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(1118u, 23u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(30856u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<f32>(-405f, global2[_wgslsmith_index_u32(1u, 23u)]))) - vec2<f32>(1048f, -1000f))))), vec4<i32>(var_0, func_5(Struct_3(func_5(Struct_3(Struct_2(11809i)), global2[_wgslsmith_index_u32(66530u, 23u)], Struct_3(Struct_2(-15261i))).a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 23u)], -1130f)), Struct_3(Struct_2(2147483647i))).a.a, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(27299i, var_0)), _wgslsmith_add_vec2_i32(vec2<i32>(var_3.a, 1i), vec2<i32>(u_input.a.x, 26289i))), -abs(var_0) & -1i));
}

