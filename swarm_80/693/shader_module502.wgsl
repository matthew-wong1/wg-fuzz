struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<f32>, 5>;

var<private> global3: array<f32, 1>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = !((~1u & ~(u_input.b | 5494u)) <= 1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.c.xww)))) + arg_0.c.yzx);
    let var_2 = true;
    global2 = array<vec2<f32>, 5>();
    var var_3 = _wgslsmith_clamp_u32(~1u, u_input.b, u_input.b);
    return ~62814u ^ u_input.c.x;
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    global2 = array<vec2<f32>, 5>();
    let var_0 = Struct_2(Struct_1(~countOneBits(u_input.b) >> (1u % 32u), reverseBits(~1u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 1u)], _wgslsmith_f_op_f32(abs(159f)), _wgslsmith_f_op_f32(f32(-1f) * -138f), global3[_wgslsmith_index_u32(27868u, 1u)]), vec4<f32>(global3[_wgslsmith_index_u32(countOneBits(7891u), 1u)], _wgslsmith_f_op_f32(f32(-1f) * -729f), -258f, _wgslsmith_f_op_f32(round(-855f))), select(arg_0.x, global0[_wgslsmith_index_u32(u_input.c.x, 29u)], true) && !global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), u_input.c.yz, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 1u)] * _wgslsmith_f_op_f32(-1200f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 1u)] - 2122f)))), Struct_1(4294967295u, u_input.c.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1079f, _wgslsmith_f_op_f32(min(1317f, global3[_wgslsmith_index_u32(u_input.b, 1u)])), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(15858u, 1u)] - 2086f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-842f, global3[_wgslsmith_index_u32(4294967295u, 1u)], -777f, global3[_wgslsmith_index_u32(37792u, 1u)])), arg_0)), vec2<u32>(52974u << (_wgslsmith_mult_u32(u_input.a.x, 4294967295u) % 32u), _wgslsmith_mod_u32(max(u_input.a.x, u_input.b), 0u)), _wgslsmith_f_op_f32(f32(-1f) * -994f)), global1.x, min(vec4<u32>(~u_input.b, u_input.b, u_input.a.x, u_input.a.x) | vec4<u32>(1u, func_3(Struct_1(u_input.b, u_input.b, vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(u_input.b, 1u)], -272f, global3[_wgslsmith_index_u32(0u, 1u)]), u_input.c.yx, global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), global2[_wgslsmith_index_u32(u_input.b, 5u)], Struct_1(u_input.b, 12384u, vec4<f32>(-931f, global3[_wgslsmith_index_u32(59966u, 1u)], global3[_wgslsmith_index_u32(30455u, 1u)], global3[_wgslsmith_index_u32(1u, 1u)]), vec2<u32>(4294967295u, 42673u), global3[_wgslsmith_index_u32(u_input.b, 1u)]), global3[_wgslsmith_index_u32(1u, 1u)]), ~u_input.c.x, 1u), ~vec4<u32>(0u, 1u, u_input.c.x, func_3(Struct_1(0u, 0u, vec4<f32>(global3[_wgslsmith_index_u32(64316u, 1u)], -2509f, global3[_wgslsmith_index_u32(u_input.b, 1u)], global3[_wgslsmith_index_u32(u_input.c.x, 1u)]), u_input.c.zz, -2215f), global2[_wgslsmith_index_u32(0u, 5u)], Struct_1(54136u, 1u, vec4<f32>(-241f, -642f, global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(u_input.b, 1u)]), u_input.c.zx, global3[_wgslsmith_index_u32(u_input.b, 1u)]), 1758f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(85090u, 1u)], -592f, 1542f, global3[_wgslsmith_index_u32(40604u, 1u)])) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(206f, 1613f, global3[_wgslsmith_index_u32(1u, 1u)], 142f) + vec4<f32>(global3[_wgslsmith_index_u32(0u, 1u)], 1753f, global3[_wgslsmith_index_u32(66913u, 1u)], -1715f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(38984u, 1u)], global3[_wgslsmith_index_u32(93434u, 1u)], 888f, global3[_wgslsmith_index_u32(u_input.c.x, 1u)]), vec4<f32>(-234f, global3[_wgslsmith_index_u32(90052u, 1u)], global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(u_input.c.x, 1u)]))))), vec4<f32>(_wgslsmith_f_op_f32(abs(-1116f)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.c ^ vec3<u32>(u_input.a.x, 4294967295u, u_input.c.x)), 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 1u)]) + _wgslsmith_f_op_f32(-1935f - -1047f)), global3[_wgslsmith_index_u32(22114u, 1u)]), arg_0)));
    let var_1 = -1083f;
    let var_2 = var_0.c;
    var var_3 = Struct_2(Struct_1(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.a, 37741u, var_0.b.b), vec3<u32>(var_0.b.b, var_0.b.a, 0u)), select(4294967295u, u_input.a.x, all(!arg_0.yyw)), _wgslsmith_f_op_vec4_f32(var_0.b.c + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.b.c), _wgslsmith_div_vec4_f32(var_0.e, var_0.a.c), true))), _wgslsmith_mod_vec2_u32(~vec2<u32>(26524u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.d.x, 4294967295u), vec2<u32>(u_input.a.x, var_0.b.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.e) - 1000f) * -1000f)), var_0.a, _wgslsmith_mult_i32(i32(-1i) * -2147483647i, var_0.c), var_0.d | var_0.d, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(247f, _wgslsmith_f_op_f32(545f - -808f), true)) * _wgslsmith_div_f32(var_1, -463f)), var_0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 1u)] + -508f)) - -906f), global3[_wgslsmith_index_u32(4294967295u, 1u)]));
    return _wgslsmith_f_op_f32(-var_0.e.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>) -> bool {
    let var_0 = Struct_2(Struct_1(0u, ~(~u_input.b), vec4<f32>(_wgslsmith_f_op_f32(func_2(!arg_0)), _wgslsmith_f_op_f32(floor(-1579f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(arg_0)), global3[_wgslsmith_index_u32(~u_input.c.x, 1u)]), global3[_wgslsmith_index_u32(0u, 1u)]), vec2<u32>(~(arg_1.x >> (90009u % 32u)), ~u_input.c.x), 1152f), Struct_1(firstTrailingBit((u_input.a.x << (arg_1.x % 32u)) ^ _wgslsmith_clamp_u32(4294967295u, 0u, arg_1.x)), 40512u, vec4<f32>(_wgslsmith_f_op_f32(-520f + _wgslsmith_f_op_f32(1049f + 995f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 1u)] * global3[_wgslsmith_index_u32(0u, 1u)]), global3[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) * _wgslsmith_f_op_f32(701f + global3[_wgslsmith_index_u32(arg_1.x, 1u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 1u)]) * -1049f)), ~(~firstLeadingBit(vec2<u32>(u_input.c.x, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 1u)]) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 1u)] + global3[_wgslsmith_index_u32(u_input.b, 1u)])))), global1.x & global1.x, firstLeadingBit(~reverseBits(abs(vec4<u32>(34707u, arg_1.x, u_input.a.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(arg_1.x, 1u)], 815f, global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(66953u, 1u)]), vec4<f32>(413f, global3[_wgslsmith_index_u32(u_input.c.x, 1u)], -1078f, global3[_wgslsmith_index_u32(arg_1.x, 1u)]), arg_0)) + vec4<f32>(global3[_wgslsmith_index_u32(arg_1.x, 1u)], -266f, global3[_wgslsmith_index_u32(arg_1.x, 1u)], global3[_wgslsmith_index_u32(u_input.b, 1u)])) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(642f, global3[_wgslsmith_index_u32(3083u, 1u)], global3[_wgslsmith_index_u32(u_input.b, 1u)], global3[_wgslsmith_index_u32(55546u, 1u)])))))))));
    var var_1 = Struct_1(select(0u, select(arg_1.x, arg_1.x, true), all(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 29u)] || arg_0.x, 20205i < global1.x, all(vec2<bool>(false, global0[_wgslsmith_index_u32(33677u, 29u)]))))), ~4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(arg_1.x, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 305f, -349f), vec4<f32>(1000f, global3[_wgslsmith_index_u32(var_0.b.a, 1u)], var_0.a.c.x, global3[_wgslsmith_index_u32(u_input.b, 1u)]))), vec4<f32>(115f, var_0.a.e, -570f, global3[_wgslsmith_index_u32(arg_1.x, 1u)])))) - var_0.e), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(33849u, 12148u)), min(vec2<u32>(59373u, 0u), ~vec2<u32>(80604u, u_input.b))), u_input.a.zz), _wgslsmith_f_op_f32(max(var_0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 1u)] + global3[_wgslsmith_index_u32(1u, 1u)]) - 992f)))));
    global0 = array<bool, 29>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1476f - 628f));
    let var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, var_0.c, global1.x), vec3<i32>(-4947i, -1424i, var_0.c)), 42456i), _wgslsmith_mod_i32(firstTrailingBit(~global1.x), global1.x)), min(-select(~vec2<i32>(global1.x, var_0.c), ~vec2<i32>(var_0.c, 2147483647i), select(vec2<bool>(true, arg_0.x), arg_0.wy, true)), vec2<i32>(-46630i, global1.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(~firstLeadingBit(vec4<i32>(global1.x, global1.x, -43497i, 0i))));
    var var_1 = all(vec4<bool>(global0[_wgslsmith_index_u32(~(~u_input.a.x), 29u)], select(false, global0[_wgslsmith_index_u32(u_input.c.x, 29u)], func_1(vec4<bool>(global0[_wgslsmith_index_u32(5993u, 29u)], global0[_wgslsmith_index_u32(58863u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.b, 29u)]), vec2<u32>(43480u, u_input.b))), true, global0[_wgslsmith_index_u32(u_input.a.x, 29u)] | !global0[_wgslsmith_index_u32(4294967295u, 29u)])) | false;
    var_1 = true;
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~u_input.b, ~_wgslsmith_mod_u32(1u, 4294967295u)), 1u)];
    let var_3 = Struct_1(u_input.c.x, min(~firstTrailingBit(1u), firstLeadingBit(u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(min(1u, 28380u), 1u)], global3[_wgslsmith_index_u32(65776u, 1u)], global3[_wgslsmith_index_u32(countOneBits(u_input.c.x), 1u)], 299f))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.c.x, 34161u), u_input.a.yx, max(~vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.c.x, 108699u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-379f)))) * 1583f));
    var var_4 = select(~(-global1.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(global1.x, -global1.x), -1587i), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x, 1i), 0i)), false);
    let var_5 = Struct_2(var_3, Struct_1(~u_input.c.x, u_input.c.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, global3[_wgslsmith_index_u32(u_input.c.x, 1u)], var_3.e, var_3.e)), vec4<f32>(var_3.c.x, _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.a.x, 1u)])), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, var_3.a), 1u)], -116f)), ~var_3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1453f + 923f) * _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.c.x, 1u)], -1147f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 1u)])))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global1.x, global1.x), abs(global1.x)), ~firstTrailingBit(0i), global1.x), var_0.zzz), vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x ^ 54293u, var_3.a), ~_wgslsmith_clamp_u32(var_3.a, 6310u, 22851u)), ~abs(u_input.b), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.b, var_3.d.x, u_input.c.x) & vec4<u32>(1507u, 1u, u_input.b, u_input.a.x)), select(vec4<u32>(u_input.b, u_input.b, var_3.a, var_3.b), vec4<u32>(0u, var_3.a, var_3.d.x, 0u), global0[_wgslsmith_index_u32(var_3.a, 29u)]) & ~vec4<u32>(u_input.a.x, var_3.b, u_input.b, u_input.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1044f)), -1000f, _wgslsmith_f_op_f32(-1286f + _wgslsmith_f_op_f32(-var_3.e)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_3.c.x))))));
    var_1 = global0[_wgslsmith_index_u32(~var_3.a, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(~vec2<u32>(3792u, 35011u), var_3.d) | ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 14595u), vec2<u32>(var_3.b, var_3.b), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 7185u), var_3.d)), -49001i, vec2<i32>(-var_5.c, -1i), _wgslsmith_clamp_vec2_u32(~vec2<u32>(72357u, var_5.b.b & var_3.a), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_5.d.x, var_5.a.d.x), vec2<u32>(10545u, var_3.a)), u_input.a.yz) << (_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(var_5.a.b, 23631u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_3.d)) % vec2<u32>(32u)), ~abs(vec2<u32>(u_input.b, var_5.b.b))), ~(var_5.b.d.x << (4294967295u % 32u)));
}

