struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(14839u, 4294967295u);

var<private> global1: array<f32, 18> = array<f32, 18>(1000f, -363f, 1619f, 772f, -804f, 3345f, -412f, 664f, -329f, 393f, -1000f, 317f, 506f, -885f, -2067f, 1000f, 1000f, 851f);

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: Struct_1;

var<private> global4: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> bool {
    var var_0 = Struct_1(global3.a, -11466i ^ select(-17502i, ~u_input.b.x, true), _wgslsmith_f_op_f32(trunc(-2422f)), global3.d);
    let var_1 = -1249f;
    let var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    global4 = !select(vec3<bool>(global0.x >= _wgslsmith_add_u32(u_input.a, 81932u), all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 18u)]) > _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a, 18u)]))), select(!select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(global4.x, global4.x, false), vec3<bool>(global4.x, global4.x, true)), !(!vec3<bool>(false, global4.x, false)), !(!vec3<bool>(global4.x, global4.x, true))), ~_wgslsmith_add_u32(u_input.a, global0.x) < 18259u);
    let var_3 = u_input.b.x;
    return all(!vec4<bool>(select(true, global4.x && true, global4.x), any(select(vec3<bool>(global4.x, true, global4.x), vec3<bool>(false, global4.x, true), false)), reverseBits(8202u) <= global0.x, global4.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = select(vec4<bool>(any(vec3<bool>(false, global4.x, true)), !(!global4.x), func_3(u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_1)) - _wgslsmith_f_op_vec3_f32(max(arg_1, vec3<f32>(-364f, global1[_wgslsmith_index_u32(u_input.a, 18u)], global3.c))))), true), vec4<bool>(global4.x, any(vec2<bool>(any(vec3<bool>(false, true, global4.x)), true)), any(!vec2<bool>(true, global4.x)), true), !select(!vec4<bool>(global4.x, true, global4.x, global4.x), select(select(vec4<bool>(false, global4.x, global4.x, true), vec4<bool>(true, global4.x, false, true), vec4<bool>(global4.x, true, global4.x, true)), !vec4<bool>(true, global4.x, true, false), func_3(vec2<i32>(u_input.b.x, global3.a), vec3<f32>(arg_2.c, global3.c, -763f))), global4.x));
    var var_1 = select(select(var_0.yy, !global4.zy, !var_0.x), !global4.zx, true);
    global1 = array<f32, 18>();
    var var_2 = arg_0.c;
    let var_3 = _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(min(4294967295u, 34313u), 1u, abs(global0.x))) ^ ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, global0.x), vec3<u32>(arg_3, 0u, u_input.a))), ~(reverseBits(vec3<u32>(0u, u_input.a, arg_3)) | vec3<u32>(global0.x, u_input.a, u_input.a)) | vec3<u32>(u_input.a, abs(~arg_3), ~(~46312u)));
    return Struct_1(-_wgslsmith_div_i32(select(countOneBits(global3.a), 11425i, false), global3.b), -2147483647i, 1473f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-599f)) * 1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global3.d, arg_1.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global4 = !select(vec3<bool>(true, !(arg_0.c >= global3.c), (10579i <= global3.a) || (155f < arg_1.d)), select(!vec3<bool>(global4.x, global4.x, global4.x), !select(vec3<bool>(global4.x, true, global4.x), vec3<bool>(global4.x, global4.x, global4.x), false), !(!vec3<bool>(global4.x, global4.x, false))), (false || (false != global4.x)) & global4.x);
    global2 = array<vec2<u32>, 8>();
    let var_0 = -1i;
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    return 1i;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(285f, global1[_wgslsmith_index_u32(42423u, 18u)], global3.d, -1961f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-252f, global1[_wgslsmith_index_u32(global0.x, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)], -1774f), vec4<f32>(global3.c, global1[_wgslsmith_index_u32(66593u, 18u)], -1567f, -1003f))), vec4<bool>(global4.x, any(vec2<bool>(global4.x, global4.x)), false, !global4.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(10545u, 18u)], 332f, global1[_wgslsmith_index_u32(1u, 18u)], -985f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c, -471f, 1305f, -859f) - vec4<f32>(-2127f, global1[_wgslsmith_index_u32(global0.x, 18u)], 134f, 540f)))))));
    let var_1 = ~vec4<u32>(86075u, global0.x << (66991u % 32u), ~(u_input.a >> (global0.x % 32u)), ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(24739u, u_input.a), vec2<u32>(global0.x, 1u)), global0.x));
    var var_2 = abs(countOneBits(u_input.b)) | vec2<i32>(~func_4(Struct_1(u_input.b.x, -2147483647i, global3.d, global1[_wgslsmith_index_u32(u_input.a, 18u)]), func_2(Struct_1(-21087i, u_input.b.x, global3.c, global1[_wgslsmith_index_u32(var_1.x, 18u)]), var_0.zyw, Struct_1(global3.b, u_input.b.x, -721f, 582f), 4294967295u)), global3.b);
    var var_3 = func_2(Struct_1(func_2(Struct_1(var_2.x, ~var_2.x, _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-1065f - -1169f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d, -2148f, -297f) * var_0.yzy) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.a, 18u)], var_0.x) * var_0.zxz)), Struct_1(-u_input.b.x, var_2.x, var_0.x, func_2(Struct_1(u_input.b.x, u_input.b.x, -669f, global1[_wgslsmith_index_u32(global0.x, 18u)]), vec3<f32>(212f, var_0.x, 293f), Struct_1(global3.a, 26012i, 680f, -1486f), 4430u).d), _wgslsmith_clamp_u32(_wgslsmith_div_u32(22930u, 7065u), ~4294967295u, 4294967295u)).b, global3.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -141f)) + _wgslsmith_f_op_f32(step(464f, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(346f)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(13115u, global0.x), 18u)]))), Struct_1(global3.b, 38111i, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 18u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) + -1218f)), ~select(29314u, _wgslsmith_dot_vec4_u32(~var_1, vec4<u32>(59044u, global0.x, global0.x, 56700u)), true));
    global2 = array<vec2<u32>, 8>();
    return 0i;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(-firstLeadingBit(select(vec2<i32>(-50874i, -1i), vec2<i32>(-2147483647i, 51885i), global4.x)), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-12947i, var_0.b), vec2<i32>(u_input.b.x, -2147483647i)), vec2<i32>(-9031i, 7638i), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 0i)))), select(arg_0.a, 1i, global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-509f)) + _wgslsmith_div_f32(277f, global3.d))) * -759f), _wgslsmith_f_op_f32(step(-1000f, -710f)));
    global1 = array<f32, 18>();
    var var_2 = !global4.x;
    let var_3 = vec4<i32>(~(-12757i), 0i, ~select(-8271i, global3.b, true), ~global3.b);
    return Struct_1(~(-37437i), _wgslsmith_mult_i32(var_3.x, var_1.b), _wgslsmith_f_op_f32(max(2460f, 727f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c, 1474f))));
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = func_2(Struct_1((_wgslsmith_div_i32(10702i, arg_1) << ((1u >> (u_input.a % 32u)) % 32u)) >> (global0.x % 32u), ~u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global3.c, 994f))))), func_2(arg_0, vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 18u)]), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(global3.c + -128f)), func_2(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(725f, -1000f, 789f)), arg_0, 1u), ~_wgslsmith_clamp_u32(u_input.a, global0.x, u_input.a)).d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-242f, -1093f, global3.d)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-393f, global3.c, global1[_wgslsmith_index_u32(global0.x ^ u_input.a, 18u)]) - vec3<f32>(1f, 1f, 1f))), arg_0, 1u);
    var var_1 = Struct_1(firstTrailingBit(~var_0.a), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, 348f)), 1f);
    global2 = array<vec2<u32>, 8>();
    let var_2 = arg_0;
    var var_3 = false;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(-_wgslsmith_mult_i32(-u_input.b.x, -16224i), ~global3.b, global1[_wgslsmith_index_u32(1u, 18u)], 276f);
    var var_0 = func_6(func_5(Struct_1(func_1() ^ -global3.a, i32(-1i) * -12345i, _wgslsmith_f_op_f32(step(-603f, _wgslsmith_f_op_f32(-global3.d))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 15309u), vec3<u32>(10168u, 82182u, u_input.a)), 18u)]))), ~(~reverseBits(-8704i << (u_input.a % 32u))));
    let var_1 = Struct_1(7601i, global3.a, global3.d, _wgslsmith_div_f32(-1151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d) * _wgslsmith_f_op_f32(ceil(global3.c)))));
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~min(2147483647i, -24265i), var_0.b, max(2147483647i >> (u_input.a % 32u), func_2(var_1, vec3<f32>(-1376f, -1279f, global1[_wgslsmith_index_u32(u_input.a, 18u)]), Struct_1(1i, 24352i, 2273f, global1[_wgslsmith_index_u32(global0.x, 18u)]), 1u).b), func_1()) << (~vec4<u32>(27923u, _wgslsmith_mult_u32(33404u, u_input.a), global0.x, global0.x) % vec4<u32>(32u)), ((vec4<i32>(-1i) * -vec4<i32>(var_0.a, -40655i, var_0.a, u_input.b.x)) >> ((vec4<u32>(4294967295u, 0u, 5326u, u_input.a) >> (~vec4<u32>(65672u, 35909u, global0.x, 37872u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(20798i, u_input.b.x >> (u_input.a % 32u), global3.b & 0i, abs(var_0.b)), _wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.b.x, 1i, global3.b, var_0.a), vec4<i32>(14409i, 34327i, global3.b, -7854i)), _wgslsmith_div_vec4_i32(vec4<i32>(-49294i, 2147483647i, -49163i, global3.b), vec4<i32>(var_0.a, u_input.b.x, var_1.b, 1i)))), abs(-(~vec4<i32>(-49037i, 1i, 43935i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(-(~_wgslsmith_add_vec3_i32(vec3<i32>(25474i, var_2.x, -1i), vec3<i32>(var_2.x, var_0.a, var_1.a))), vec3<i32>(-1i, var_0.b, _wgslsmith_div_i32(-var_1.b, i32(-1i) * -46096i))), func_6(func_5(func_5(var_1)), var_0.b).c, ~vec4<u32>(20255u, ~reverseBits(75254u), global0.x >> (_wgslsmith_mult_u32(u_input.a, global0.x) % 32u), 0u));
}

