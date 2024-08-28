struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 30>;

var<private> global2: vec3<bool>;

var<private> global3: array<u32, 16> = array<u32, 16>(9689u, 8368u, 17606u, 50968u, 20991u, 4294967295u, 4294967295u, 42699u, 0u, 24718u, 0u, 34886u, 1u, 1u, 10567u, 41457u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> f32 {
    global3 = array<u32, 16>();
    var var_0 = 17073u;
    var var_1 = true;
    let var_2 = firstTrailingBit(arg_0) ^ arg_0;
    var var_3 = !(!select(global0.yz, vec2<bool>(all(global2.xx), all(vec4<bool>(global0.x, true, true, true))), global0.xy));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(select(u_input.b, ~u_input.b, var_3.x), vec3<u32>(_wgslsmith_add_u32(arg_1.a.c, 4294967295u), ~0u, abs(1u)))), 30u)]);
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = Struct_3(abs(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 0i, 33018i, -2147483647i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-38737i, 40031i, -25080i, -1i), vec4<i32>(47984i, 42917i, 17833i, -10380i)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(517f, -904f, 1375f, global1[_wgslsmith_index_u32(0u, 30u)]), vec4<f32>(global1[_wgslsmith_index_u32(5792u, 30u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 1345f, -1521f), vec4<bool>(global0.x, true, false, false))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(28081u, 16u)], 30u)], -506f, _wgslsmith_f_op_f32(sign(1612f)), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(19599u, 30u)], global0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(389f, global1[_wgslsmith_index_u32(arg_0, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(53254u, 30u)]))))), true))), Struct_1(vec3<u32>(u_input.a, 4294967295u, u_input.a), 0i, global3[_wgslsmith_index_u32(1u, 16u)] & select(arg_0, 52790u, true)), true, Struct_2(Struct_1(~u_input.b, -14087i ^ select(34229i, 61367i, false), 4294967295u), Struct_1(select(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), ~vec3<u32>(4294967295u, u_input.b.x, 0u), global2.x), -73740i, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_0, u_input.a & 7581u, 1u), 16u)]), _wgslsmith_add_i32(abs(19138i), ~(~64902i))));
    let var_1 = vec3<u32>(~u_input.a, 0u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(1862u, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.e.b.a.x, var_0.c.c), 16u)]), ~var_0.c.a.x));
    let var_2 = !select(global2.xz, vec2<bool>(!global2.x, true), var_0.d);
    let var_3 = var_2.x;
    var var_4 = var_0.a.ww;
    return global0.wxw;
}

fn func_2(arg_0: f32, arg_1: f32) -> vec4<bool> {
    var var_0 = Struct_1(vec3<u32>(global3[_wgslsmith_index_u32(1u, 16u)], 70424u, global3[_wgslsmith_index_u32((u_input.a | _wgslsmith_mod_u32(u_input.b.x, 0u)) | global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], global3[_wgslsmith_index_u32(0u, 16u)], 55025u, global3[_wgslsmith_index_u32(4294967295u, 16u)]) << (vec4<u32>(u_input.a, u_input.a, 4763u, 6590u) % vec4<u32>(32u)), vec4<u32>(global3[_wgslsmith_index_u32(28600u, 16u)], 22932u, global3[_wgslsmith_index_u32(58412u, 16u)], 0u)), 16u)], 16u)]), -25904i, _wgslsmith_div_u32(~(~u_input.a), 81100u >> (~(u_input.a << (101075u % 32u)) % 32u)));
    var var_1 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~(var_0.a | var_0.a), ~vec3<u32>(1u, 1u, 31177u) ^ select(u_input.b, var_0.a, true)), var_0.a), _wgslsmith_sub_i32(39074i, ~firstTrailingBit(1i)) ^ 18903i, var_0.a.x);
    global2 = vec3<bool>(true, global2.x, true);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(abs(~u_input.b.x), 30u)])), 227f)));
    let var_3 = Struct_3(-reverseBits(vec4<i32>(13430i, var_0.b, -2147483647i, var_1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(224f, global1[_wgslsmith_index_u32(31092u, 30u)], -1507f, var_2), vec4<f32>(global1[_wgslsmith_index_u32(54400u, 30u)], arg_1, global1[_wgslsmith_index_u32(41669u, 30u)], 1299f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1704f, 159f, arg_0) * vec4<f32>(-220f, -738f, -1000f, var_2)), true))) - vec4<f32>(1340f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~var_1.a.x, 30u)], -1312f), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(func_1(1u, Struct_2(Struct_1(var_1.a, var_0.b, var_1.c), Struct_1(vec3<u32>(global3[_wgslsmith_index_u32(16u, 16u)], 4294967295u, var_1.a.x), var_0.b, global3[_wgslsmith_index_u32(var_1.c, 16u)]), var_0.b)))))), Struct_1(u_input.b, 9870i, u_input.a), any(func_3(~_wgslsmith_sub_u32(var_0.a.x, 25056u))), Struct_2(Struct_1(vec3<u32>(u_input.b.x, _wgslsmith_clamp_u32(u_input.a, var_0.a.x, var_1.a.x), var_1.c), _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_1.b, var_0.b, -14912i, var_0.b), vec4<i32>(-2147483647i, var_0.b, var_1.b, var_1.b)), vec4<i32>(var_1.b, var_1.b, var_1.b, 2147483647i) << (vec4<u32>(4294967295u, u_input.a, u_input.a, 4635u) % vec4<u32>(32u))), var_0.a.x), Struct_1(var_0.a, reverseBits(max(var_0.b, 26929i)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, 8712u), var_1.a.yz), firstLeadingBit(vec2<u32>(u_input.b.x, var_1.c)))), var_0.b));
    return vec4<bool>(global0.x, true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(-755f, -1262f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_0) * _wgslsmith_f_op_f32(-669f - -1000f)) * var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    global0 = !vec4<bool>(!any(global0.zxx), true, !(!global0.x), _wgslsmith_f_op_f32(func_1(u_input.a << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)] % 32u), Struct_2(Struct_1(vec3<u32>(1u, u_input.a, u_input.b.x), 2147483647i, u_input.a), Struct_1(vec3<u32>(0u, 0u, 1u), 11343i, 0u), 0i))) != -1233f);
    global2 = !vec3<bool>(global0.x, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 30u)])) - 654f) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-625f, -1664f)))));
    let var_1 = vec3<i32>(0i, _wgslsmith_div_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(68834i, -51597i), vec2<i32>(1i, -3614i)), -1i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(30368i, -55095i, -1i), vec3<i32>(1i, 2147483647i, 5561i), false), vec3<i32>(4527i, 4220i, 249i))), ~(-min(-2147483647i, 2147483647i))) ^ vec3<i32>(-(~(-1i)), _wgslsmith_add_i32(1i, -28903i), -(firstTrailingBit(12323i) >> (1u % 32u)));
    var var_2 = var_1.x;
    var_2 = -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(var_1, abs(var_1)), vec3<i32>(~1i, 19332i, -var_1.x)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(var_1, var_1) & countOneBits(var_1), var_1));
    global0 = select(func_2(-530f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-652f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 30u)], 1796f))))), vec4<bool>(true, all(vec4<bool>(any(global0.wyy), true, all(vec3<bool>(false, global0.x, global0.x)), all(vec2<bool>(global0.x, global2.x)))), !any(vec4<bool>(false, false, global0.x, global2.x)), !(all(vec4<bool>(global2.x, false, true, global2.x)) || any(vec4<bool>(false, false, global0.x, false)))), !func_2(1277f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(firstTrailingBit(46547u), 30u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, vec4<i32>(-1i, ~var_1.x, -15075i, var_1.x), firstLeadingBit(var_1.yx), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.a, 16u)], ~(~global3[_wgslsmith_index_u32(~102958u, 16u)])));
}

