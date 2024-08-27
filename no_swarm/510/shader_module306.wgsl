struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(2147483647i, i32(-2147483648), -28627i), vec3<i32>(395i, -1i, i32(-2147483648)), vec3<i32>(-10714i, 2147483647i, 19713i), vec3<i32>(-56934i, 2147483647i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 1i, 14411i), vec3<i32>(4657i, -49605i, 0i), vec3<i32>(-1i, -1i, -2774i), vec3<i32>(1i, -9997i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(i32(-2147483648), -9203i, 0i), vec3<i32>(1i, 2147483647i, -2807i), vec3<i32>(-65668i, 2147483647i, 1i), vec3<i32>(0i, 1i, 17035i), vec3<i32>(-1i, i32(-2147483648), -38619i), vec3<i32>(-21707i, 5786i, -31859i), vec3<i32>(i32(-2147483648), 2147483647i, 17588i), vec3<i32>(-1i, 1i, 87932i), vec3<i32>(2147483647i, 4147i, 1i), vec3<i32>(-22923i, 0i, -14817i));

var<private> global1: array<f32, 29>;

var<private> global2: array<bool, 12>;

var<private> global3: array<i32, 30> = array<i32, 30>(2147483647i, 1i, -43140i, 2147483647i, -1168i, -4272i, i32(-2147483648), 1i, 30412i, -3392i, 0i, -42i, 1i, 2147483647i, -29685i, 75967i, 0i, 0i, -1i, -14761i, -15767i, -24359i, 0i, 30638i, 0i, -23433i, 2147483647i, 24298i, 1i, 1i);

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global3 = array<i32, 30>();
    global0 = array<vec3<i32>, 20>();
    var var_0 = Struct_2(_wgslsmith_clamp_i32(2147483647i, 0i, firstLeadingBit(-_wgslsmith_add_i32(global3[_wgslsmith_index_u32(4294967295u, 30u)], u_input.a.x))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, -60705i, -31719i), -select(u_input.a.wyz, global0[_wgslsmith_index_u32(30860u, 20u)], vec3<bool>(false, false, false))), u_input.a.zwy), Struct_1(-u_input.a.yz, true, vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(22363u, 29u)])), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(35771u, 29u)]))), select(!(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], true)), !(!vec2<bool>(global2[_wgslsmith_index_u32(36280u, 12u)], global2[_wgslsmith_index_u32(8752u, 12u)])), !(1695f <= global1[_wgslsmith_index_u32(4294967295u, 29u)]))), Struct_1(vec2<i32>(-1i, -24743i), true, vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(959f, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(21242u, 29u)])) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-210f, global1[_wgslsmith_index_u32(19252u, 29u)], 3843f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], 876f) - vec3<f32>(-281f, -710f, -915f)))), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(83455u, 8946u), 12u)]), vec2<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(37527u, 12u)], global2[_wgslsmith_index_u32(3867u, 12u)])), true), global2[_wgslsmith_index_u32(1u, 12u)])), Struct_1(u_input.a.zz, true, ~vec3<u32>(_wgslsmith_sub_u32(4294967295u, 0u), 4294967295u, ~0u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(11680u, 29u)], global1[_wgslsmith_index_u32(44748u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)]) * vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], -801f, -1523f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1[_wgslsmith_index_u32(18734u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)])))), vec3<bool>(global2[_wgslsmith_index_u32(36092u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)] | global2[_wgslsmith_index_u32(1u, 12u)], true))), vec2<bool>(any(select(vec2<bool>(global2[_wgslsmith_index_u32(75282u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<bool>(global2[_wgslsmith_index_u32(21738u, 12u)], false), vec2<bool>(global2[_wgslsmith_index_u32(81200u, 12u)], global2[_wgslsmith_index_u32(16566u, 12u)]))), false)));
    var_0 = Struct_2(-6091i, (vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(var_0.c.a.x, u_input.a.x), select(15479i, u_input.a.x, true)) | abs(vec3<i32>(774i, u_input.a.x, global3[_wgslsmith_index_u32(var_0.d.c.x, 30u)]) << (var_0.d.c % vec3<u32>(32u)))) >> (vec3<u32>(40521u, 4294967295u, var_0.d.c.x) % vec3<u32>(32u)), var_0.d, var_0.e, var_0.c);
    global0 = array<vec3<i32>, 20>();
    return reverseBits(~var_0.d.c.x);
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(func_3(), 29u)])), arg_0);
    let var_1 = ~_wgslsmith_div_u32(1u, 1u);
    let var_2 = min(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, 34783u, var_1), vec3<u32>(var_1, 38418u, var_1)) ^ (vec3<u32>(var_1, var_1, var_1) | vec3<u32>(1u, 27421u, var_1))), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 4294967295u, var_1, 63012u), vec4<u32>(var_1, var_1, 4294967295u, var_1)), var_1, firstTrailingBit(~1753u))), 30u)], u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(6304u, 29u)], -774f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    var var_4 = Struct_3(var_1, countOneBits(abs(var_1 << (var_1 % 32u)) & ~var_1), vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3)) - _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 29u)], var_3, true))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 29u)] - 681f)), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1, var_1, var_1), ~vec3<u32>(30395u, 0u, 0u))), 12u)], false), Struct_2(2147483647i, vec3<i32>(firstLeadingBit(-u_input.a.x), _wgslsmith_div_i32(-1i, var_2), ~(~6338i)), Struct_1(u_input.a.zw, false, _wgslsmith_div_vec3_u32(vec3<u32>(30189u, var_1, var_1), vec3<u32>(var_1, 37676u, var_1)) << (~vec3<u32>(var_1, var_1, 4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2862f, global1[_wgslsmith_index_u32(var_1, 29u)], arg_0))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3, global1[_wgslsmith_index_u32(var_1, 29u)], 416f)))), select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(var_1, 12u)], true), global2[_wgslsmith_index_u32(~var_1, 12u)])), Struct_1(reverseBits(max(vec2<i32>(-22166i, -27i), vec2<i32>(var_2, 32575i))), global2[_wgslsmith_index_u32(~1u | ~var_1, 12u)], _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1, 0u), ~vec3<u32>(0u, var_1, var_1)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-242f)), _wgslsmith_div_f32(286f, global1[_wgslsmith_index_u32(33486u, 29u)]), _wgslsmith_f_op_f32(step(-1049f, -1000f))), !select(vec2<bool>(global2[_wgslsmith_index_u32(33366u, 12u)], false), vec2<bool>(true, global2[_wgslsmith_index_u32(var_1, 12u)]), global2[_wgslsmith_index_u32(var_1, 12u)])), Struct_1(reverseBits(_wgslsmith_div_vec2_i32(u_input.a.ww, vec2<i32>(1i, -2147483647i))), false, vec3<u32>(~35449u, 1u << (1u % 32u), var_1 << (var_1 % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, 902f, arg_0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(360f, var_3, 693f))), select(vec2<bool>(true, true), vec2<bool>(true, global2[_wgslsmith_index_u32(var_1, 12u)]), any(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(var_1, 12u)]))))));
    return var_4.d;
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = arg_0.d.x;
    global4 = all(vec2<bool>(!(_wgslsmith_add_u32(25944u, arg_0.c.x) != ~0u), true));
    let var_1 = func_2(_wgslsmith_f_op_f32(-arg_0.d.x));
    global0 = array<vec3<i32>, 20>();
    global3 = array<i32, 30>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-857f, global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(arg_0.c.x, 47473u) << (arg_0.c.x % 32u)), 29u)], var_1.c.d.x, var_1.c.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(815f, global1[_wgslsmith_index_u32(60845u, 29u)], global1[_wgslsmith_index_u32(38552u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)]) - vec4<f32>(-1247f, -829f, global1[_wgslsmith_index_u32(1u, 29u)], -867f))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(39389u, 29u)], global1[_wgslsmith_index_u32(27355u, 29u)]), _wgslsmith_f_op_f32(-970f + global1[_wgslsmith_index_u32(0u, 29u)]), _wgslsmith_f_op_f32(abs(918f)), 1939f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1[_wgslsmith_index_u32(1u, 29u)], 794f, global1[_wgslsmith_index_u32(0u, 29u)])))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1651f, -393f, global1[_wgslsmith_index_u32(0u, 29u)], 1330f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(4294967295u, 12u)], vec3<u32>(4294967295u, 4294967295u, 29447u), vec3<f32>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], 382f), vec2<bool>(true, false))))))))));
    let var_2 = Struct_3(firstTrailingBit(4294967295u) & 1903u, ~(~(~1u)), select(select(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(80163u, 12u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(10842u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(29570u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)]), true), select(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], false, global2[_wgslsmith_index_u32(0u, 12u)], false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], true, global2[_wgslsmith_index_u32(1u, 12u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(20750u, 12u)], global2[_wgslsmith_index_u32(19555u, 12u)], false)), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(74262u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(27713u, 12u)]), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(1u, 12u)]), global2[_wgslsmith_index_u32(0u, 12u)]), true), vec4<bool>(!global2[_wgslsmith_index_u32(75523u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], func_2(136f).e.b, !global2[_wgslsmith_index_u32(1u, 12u)])), vec4<bool>(true, !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 42269u, 1u), vec4<u32>(4294967295u, 58573u, 27003u, 0u)), 12u)], true, true), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, countOneBits(11531u) | _wgslsmith_clamp_u32(46466u, 1u, 109029u)), 12u)]), Struct_2(-1i, _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -1i, var_0, -24010i), global0[_wgslsmith_index_u32(91356u, 20u)]), Struct_1(_wgslsmith_sub_vec2_i32(u_input.a.zx, vec2<i32>(global3[_wgslsmith_index_u32(1u, 30u)], var_0)), !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(61845u, 51252u, 50339u), vec3<u32>(0u, 10400u, 4294967295u)), 12u)], min(vec3<u32>(0u, 52322u, 22645u), vec3<u32>(7096u, 1u, 72649u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(31696u, 0u, 25228u), vec3<u32>(4294967295u, 10685u, 14993u), vec3<u32>(0u, 1u, 1u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.xzy)), vec3<f32>(2131f, var_1.x, 279f)), select(!vec2<bool>(global2[_wgslsmith_index_u32(74373u, 12u)], false), vec2<bool>(global2[_wgslsmith_index_u32(54629u, 12u)], false), !vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(26324u, 12u)]))), Struct_1(u_input.a.yw, true, vec3<u32>(1u, 1u, 1u), vec3<f32>(global1[_wgslsmith_index_u32(reverseBits(1u), 29u)], _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_div_f32(var_1.x, 1131f)), vec2<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], true, global2[_wgslsmith_index_u32(23747u, 12u)], global2[_wgslsmith_index_u32(65318u, 12u)])), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 12u)])), func_2(_wgslsmith_f_op_f32(abs(1489f))).d));
    var var_3 = Struct_3(var_2.b, func_2(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~1u, 29u)], _wgslsmith_f_op_f32(-830f - _wgslsmith_f_op_f32(-590f * -758f)))).d.c.x, select(!vec4<bool>(!var_2.d.d.e.x, !global2[_wgslsmith_index_u32(var_2.b, 12u)], true, var_2.d.e.e.x), vec4<bool>(false, all(func_2(var_2.d.e.d.x).e.e), _wgslsmith_f_op_f32(abs(var_2.d.e.d.x)) > var_1.x, 0u < var_2.b), false), var_2.d);
    var var_4 = ~11525u;
    global3 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~var_2.b, 30u)] & func_2(_wgslsmith_f_op_f32(-var_3.d.d.d.x)).c.a.x, abs(abs(u_input.a)), _wgslsmith_f_op_f32(ceil(var_1.x)));
}

