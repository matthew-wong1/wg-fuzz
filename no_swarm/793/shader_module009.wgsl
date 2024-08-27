struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 36363i;

var<private> global1: array<bool, 6> = array<bool, 6>(true, true, true, true, true, false);

var<private> global2: array<vec2<i32>, 19>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<u32> {
    var var_0 = true;
    let var_1 = arg_2.b.x;
    global0 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.d), global2[_wgslsmith_index_u32(arg_3.x, 19u)]), vec2<i32>(u_input.d, arg_1)), ~(-(~global2[_wgslsmith_index_u32(arg_3.x, 19u)])), ~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.a, u_input.c.x), vec2<i32>(-2147483647i, arg_1) << (arg_3.yx % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(-u_input.c, _wgslsmith_clamp_vec2_i32(firstLeadingBit(~u_input.c), u_input.c, vec2<i32>(arg_1 & u_input.d, 1i))));
    global2 = array<vec2<i32>, 19>();
    let var_2 = arg_2;
    return vec2<u32>(~arg_3.x, abs(~1u));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = arg_0;
    let var_1 = u_input.d;
    global0 = u_input.d;
    let var_2 = select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(6330u, 6u)], true, global1[_wgslsmith_index_u32(0u, 6u)], true), select(vec4<bool>(true, false, false, true), !vec4<bool>(global1[_wgslsmith_index_u32(47074u, 6u)], global1[_wgslsmith_index_u32(18761u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], false), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(0u, 6u)]), global1[_wgslsmith_index_u32(u_input.b, 6u)])), true), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(35480u, 6u)], true, global1[_wgslsmith_index_u32(29797u, 6u)]), select(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(121969u, 6u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 6u)], false)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(2324u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)])), global1[_wgslsmith_index_u32(~u_input.a.x, 6u)] & true), select(!vec4<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], false, global1[_wgslsmith_index_u32(u_input.b, 6u)], false)), var_1 > 0i, !global1[_wgslsmith_index_u32(0u, 6u)], any(vec2<bool>(global1[_wgslsmith_index_u32(20220u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)]))), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(67468u, 6u)], true, global1[_wgslsmith_index_u32(0u, 6u)])), true), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(0u, 6u)]), global1[_wgslsmith_index_u32(99055u, 6u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 6u)], false, global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(18033u, 6u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 6u)], false)), global1[_wgslsmith_index_u32(~0u, 6u)]), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false, true, global1[_wgslsmith_index_u32(29303u, 6u)])), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], false, global1[_wgslsmith_index_u32(83231u, 6u)], false))), select(select(!vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], true, true), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], true), false), vec4<bool>(global1[_wgslsmith_index_u32(31670u, 6u)], true, any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 6u)], false)), all(vec4<bool>(global1[_wgslsmith_index_u32(70652u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false, global1[_wgslsmith_index_u32(4294967295u, 6u)])))), !(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(87820u, 6u)], true)), select(select(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], true, global1[_wgslsmith_index_u32(41691u, 6u)], global1[_wgslsmith_index_u32(32105u, 6u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)])), !(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 6u)], false)), global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u) ^ _wgslsmith_add_u32(17010u, u_input.a.x), 6u)])));
    var_0 = arg_0;
    return ~(-2147483647i);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.b.x))), 1000f)) * -1000f);
    global2 = array<vec2<i32>, 19>();
    var var_1 = _wgslsmith_div_vec4_i32(min(-_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_2.a, u_input.c.x, u_input.c.x, -2840i), vec4<i32>(u_input.d, 27270i, -1i, u_input.d)), select(vec4<i32>(_wgslsmith_mod_i32(arg_2.a, arg_3.a), arg_2.a, ~u_input.d, ~arg_2.a), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.d, 1i, 2147483647i, 2147483647i), select(vec4<i32>(-1i, arg_2.a, arg_3.a, arg_3.a), vec4<i32>(1i, -1i, u_input.c.x, 57150i), vec4<bool>(arg_1.x, global1[_wgslsmith_index_u32(6491u, 6u)], global1[_wgslsmith_index_u32(arg_0.x, 6u)], false)), countOneBits(vec4<i32>(-36233i, 0i, arg_2.a, 21870i))), -1000f >= _wgslsmith_f_op_f32(arg_3.b.x * arg_2.b.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(arg_3.a, 0i))), 2147483647i, u_input.c.x, -11325i));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1435f - arg_2.b.x)))) - _wgslsmith_f_op_f32(-arg_2.b.x)), 1389f);
    let var_3 = arg_3;
    return -5307i;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = func_4(reverseBits(_wgslsmith_div_vec2_u32(~firstLeadingBit(u_input.a), _wgslsmith_sub_vec2_u32(func_2(true, -48976i, Struct_1(-3193i, vec4<f32>(668f, arg_0, -438f, -1926f)), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.a.x)), vec2<u32>(u_input.b, 0u)))), !select(vec3<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)])), all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(73690u, 6u)], true, true)), global1[_wgslsmith_index_u32(59518u & u_input.b, 6u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)] && global1[_wgslsmith_index_u32(4294967295u, 6u)], select(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(3414u, 6u)], false), global1[_wgslsmith_index_u32(0u, 6u)]), true), Struct_1(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(-438f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -1000f)))) - vec4<f32>(arg_0, _wgslsmith_f_op_f32(select(arg_0, -1037f, false)), _wgslsmith_div_f32(-1000f, arg_0), -272f))), Struct_1(11349i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(211f, arg_0, arg_0, -1438f))))))));
    var var_0 = select(vec3<u32>(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.b)), u_input.b), u_input.b, 1u), _wgslsmith_mult_vec3_u32(~vec3<u32>(~u_input.a.x, u_input.a.x, u_input.b), ~select(vec3<u32>(u_input.a.x, u_input.b, 1u) << (vec3<u32>(30446u, 12023u, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(69572u, 0u, 31553u), vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], true, false))), -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, 40081i, u_input.c.x)), -vec3<i32>(2147483647i, -24856i, u_input.d)) >= u_input.c.x);
    var var_1 = ~(-1i);
    let var_2 = 1u;
    var_1 = -2147483647i;
    return Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -3017f, arg_0, -1087f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -300f, arg_0, -149f) + vec4<f32>(arg_0, 977f, arg_0, arg_0)))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1662f, arg_0, -522f, 1741f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(121f, arg_0, arg_0, -1097f), vec4<f32>(331f, arg_0, arg_0, 1000f)))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<f32> {
    return vec4<f32>(-867f, -116f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) - _wgslsmith_f_op_f32(1000f + arg_3.b.x))) + -335f), 1651f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 6>();
    let var_0 = !global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~_wgslsmith_mult_u32(1u, 1u), reverseBits(u_input.b)), 6u)];
    global0 = -870i;
    let var_1 = min(u_input.a, ~(~(~(~vec2<u32>(u_input.a.x, u_input.b)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -1108f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1402f - 1281f) - -460f) * -110f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)), _wgslsmith_f_op_f32(-2010f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-191f, -1341f, var_0)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(-18246i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2457f, 2567f, -364f, -328f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1340f, -458f, 2260f, 1164f)) - vec4<f32>(-662f, -511f, 601f, 1374f)), select(~vec4<u32>(1u, var_1.x, var_1.x, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 46697u, 932u, u_input.a.x), vec4<u32>(var_1.x, u_input.a.x, 0u, var_1.x)), select(vec4<bool>(true, var_0, true, false), vec4<bool>(true, false, false, true), var_0)), func_1(_wgslsmith_div_f32(-685f, -327f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-170f, 1483f, 576f, 664f))))))));
    let var_3 = func_1(-1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1096f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_3.b.x) - var_2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x + -483f), _wgslsmith_f_op_f32(var_3.b.x * 1000f))))), _wgslsmith_add_u32(~u_input.a.x, var_1.x) ^ var_1.x, vec3<u32>(58964u, countOneBits(u_input.a.x), ~reverseBits(var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_3.b)) * var_3.b), 1i);
}

