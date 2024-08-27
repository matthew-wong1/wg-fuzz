struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-1518i, -1i, i32(-2147483648), -44907i, -6578i, -43247i, -1i, i32(-2147483648), 17208i, 2147483647i, 2147483647i, -10076i, -1502i);

var<private> global1: array<bool, 29> = array<bool, 29>(true, false, true, true, true, true, true, false, false, false, true, true, true, true, false, true, false, true, true, false, false, true, false, false, true, false, false, true, false);

var<private> global2: array<u32, 29>;

var<private> global3: array<f32, 30>;

var<private> global4: f32 = -1000f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(!arg_2.a, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 21928u, global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<u32>(u_input.c, u_input.c, 0u)), select(vec3<u32>(52586u, 22379u, u_input.c), vec3<u32>(33754u, global2[_wgslsmith_index_u32(4294967295u, 29u)], u_input.c), arg_2.c)) < u_input.c, any(arg_2.d.xxz) && arg_2.d.x, !select(!vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(0u, 29u)]), !arg_2.d, vec4<bool>(true, true, select(arg_2.a.x, false, true), false)));
    var var_1 = Struct_1(select(select(vec4<bool>(true, !arg_2.b, 0u != global2[_wgslsmith_index_u32(4879u, 29u)], 4651u <= u_input.c), var_0.d, !(!var_0.d)), !(!var_0.a), true | !all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 29u)], arg_2.b, global1[_wgslsmith_index_u32(4294967295u, 29u)]))), global1[_wgslsmith_index_u32(34842u, 29u)], var_0.a.x, !var_0.a);
    var var_2 = _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], 29u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)] % 32u), ~global2[_wgslsmith_index_u32(u_input.c, 29u)], 1u, u_input.c) >> (reverseBits(~vec4<u32>(21393u, 2196u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 29u)])) % vec4<u32>(32u))), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], ~36733u, 0u, global2[_wgslsmith_index_u32(u_input.c, 29u)]));
    var_1 = Struct_1(var_0.a, !(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u ^ var_2.x, 29u)], 30u)] > 990f), true, select(arg_2.a, !(!select(var_1.d, vec4<bool>(false, false, global1[_wgslsmith_index_u32(35867u, 29u)], true), var_0.b)), vec4<bool>(false, true, true, any(!vec4<bool>(true, var_1.d.x, true, var_0.b)))));
    global3 = array<f32, 30>();
    return vec3<bool>(false, true, true || !any(select(var_1.d.wwy, var_1.a.wxz, arg_2.c)));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>) -> vec3<i32> {
    global1 = array<bool, 29>();
    var var_0 = true;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(28001u, 30u)], global3[_wgslsmith_index_u32(32233u, 30u)]))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-326f, 590f, global3[_wgslsmith_index_u32(88872u, 30u)]) * vec3<f32>(-1716f, -810f, -1012f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(324f, -903f, global3[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<f32>(1320f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11601u, 29u)], 29u)], 30u)], global3[_wgslsmith_index_u32(u_input.c, 30u)]))))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1863f, 1630f, global3[_wgslsmith_index_u32(1u, 30u)]))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59961u, 29u)], 30u)], -939f, 405f)) + vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 30u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 30u)], 1000f))))));
    let var_2 = Struct_1(vec4<bool>(true, arg_1.x, select(global1[_wgslsmith_index_u32(0u, 29u)], 1u == global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c & 4294967295u, 29u)], 29u)], !any(arg_1.xx)), (true || (49491u < u_input.c)) || arg_1.x), _wgslsmith_f_op_f32(-1206f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1234f))) >= var_1.x, !all(!arg_1.zx), select(!vec4<bool>(false, true, all(arg_1), true), vec4<bool>(!(36292u <= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)]), any(arg_1.xy), u_input.c == ~4479u, global1[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(62453u, 29u)], u_input.c), 61305u), 29u)]), arg_1.x));
    var var_3 = var_2;
    return ~reverseBits(abs(u_input.a));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = !arg_1.d.x;
    var var_1 = u_input.d;
    global0 = array<i32, 13>();
    var var_2 = vec2<f32>(-313f, global3[_wgslsmith_index_u32(87360u, 30u)]);
    var_1 = _wgslsmith_div_vec3_i32(~_wgslsmith_sub_vec3_i32(~u_input.a, _wgslsmith_sub_vec3_i32(u_input.d, -u_input.d)), func_4(_wgslsmith_div_i32(-var_1.x, var_1.x), !func_3(_wgslsmith_f_op_f32(min(arg_0, -583f)), -2080f, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], arg_2.x, arg_3.x, false), true, arg_1.c, arg_1.a))));
    return vec4<bool>(false, true, arg_1.b, global1[_wgslsmith_index_u32(4294967295u, 29u)] == global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(1u, ~global2[_wgslsmith_index_u32(u_input.c, 29u)])), 29u)]);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = 1u;
    var var_1 = arg_0.d.x;
    let var_2 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(296f, 936f))) - _wgslsmith_f_op_f32(1346f * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(85074u, 30u)] * global3[_wgslsmith_index_u32(15950u, 30u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(39833u, 30u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51681u, 29u)], 30u)])) - _wgslsmith_f_op_f32(trunc(1007f)))))), arg_0, arg_0.a, !vec2<bool>(true, all(func_2(-643f, arg_0, vec4<bool>(arg_0.c, true, arg_0.c, arg_1), vec2<bool>(false, false)).yyw))).x;
    let var_3 = arg_0;
    var var_4 = var_3.a.x;
    return 40009u | countOneBits(_wgslsmith_dot_vec4_u32((vec4<u32>(45187u, global2[_wgslsmith_index_u32(4294967295u, 29u)], u_input.c, var_0) | vec4<u32>(u_input.c, 0u, var_0, 1u)) | countOneBits(vec4<u32>(5076u, 0u, u_input.c, 31251u)), min(vec4<u32>(7528u, 88992u, 56256u, var_0), abs(vec4<u32>(26343u, u_input.c, 12373u, var_0)))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c, 15727u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60456u, 29u)], 29u)], 59943u), vec4<u32>(arg_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], arg_0.x, 4294967295u), vec4<bool>(global1[_wgslsmith_index_u32(17256u, 29u)], true, false, global1[_wgslsmith_index_u32(1u, 29u)])), vec4<u32>(arg_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43773u, 29u)], 29u)], global2[_wgslsmith_index_u32(arg_0.x, 29u)], 44925u), vec4<u32>(0u, 7985u, 14059u, arg_0.x)), ~_wgslsmith_add_vec4_u32(max(vec4<u32>(26091u, 1192u, 1u, arg_0.x), vec4<u32>(47580u, u_input.c, arg_0.x, 0u)), vec4<u32>(global2[_wgslsmith_index_u32(20598u, 29u)], global2[_wgslsmith_index_u32(54878u, 29u)], 26323u, u_input.c) << (vec4<u32>(arg_0.x, global2[_wgslsmith_index_u32(48675u, 29u)], arg_0.x, u_input.c) % vec4<u32>(32u)))), global2[_wgslsmith_index_u32(~func_5(Struct_1(func_2(global3[_wgslsmith_index_u32(28361u, 30u)], Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 29u)], 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], false), true, false, vec4<bool>(true, true, global1[_wgslsmith_index_u32(35777u, 29u)], true)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 29u)], false, false, false), vec2<bool>(global1[_wgslsmith_index_u32(36999u, 29u)], true)), global1[_wgslsmith_index_u32(1u, 29u)] && true, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, 24716u), 29u)], !vec4<bool>(global1[_wgslsmith_index_u32(6189u, 29u)], global1[_wgslsmith_index_u32(69631u, 29u)], global1[_wgslsmith_index_u32(4678u, 29u)], global1[_wgslsmith_index_u32(arg_0.x, 29u)])), false), 29u)]);
    global2 = array<u32, 29>();
    let var_1 = Struct_1(!select(vec4<bool>(global1[_wgslsmith_index_u32(abs(4294967295u), 29u)], 4294967295u >= arg_0.x, global1[_wgslsmith_index_u32(~arg_0.x, 29u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 4294967295u), vec3<u32>(91605u, 56983u, u_input.c)), 29u)]), vec4<bool>(true, true, true, true), false), all(func_3(458f, _wgslsmith_f_op_f32(select(-481f, -1094f, false)), Struct_1(!vec4<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], global1[_wgslsmith_index_u32(arg_0.x, 29u)], true), true, global1[_wgslsmith_index_u32(arg_0.x | 4294967295u, 29u)], !vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], true, global1[_wgslsmith_index_u32(6425u, 29u)]))).zz), false, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(~4294967295u, 30u)]))), Struct_1(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 29u)], global1[_wgslsmith_index_u32(u_input.c, 29u)], false)), !(!global1[_wgslsmith_index_u32(arg_0.x, 29u)]), false, !(!vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(u_input.c, 29u)]))), !vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(60060u, global2[_wgslsmith_index_u32(42127u, 29u)]), 29u)], true, !global1[_wgslsmith_index_u32(arg_0.x, 29u)]), vec2<bool>((u_input.d.x & -35031i) != _wgslsmith_sub_i32(-5823i, -58749i), all(func_3(1432f, global3[_wgslsmith_index_u32(19451u, 30u)], Struct_1(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.c, 29u)]), true, false, vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], true, true)))))));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.c, u_input.c, 19776u), vec4<u32>(1u, 119048u, 10850u, global2[_wgslsmith_index_u32(u_input.c, 29u)])) & u_input.c, 29u)], global2[_wgslsmith_index_u32(~u_input.c, 29u)]), ~(~(~(~global2[_wgslsmith_index_u32(38432u, 29u)]))));
    global3 = array<f32, 30>();
    return Struct_1(var_1.d, true && any(vec2<bool>(!var_1.d.x, global1[_wgslsmith_index_u32(arg_0.x, 29u)])), false || any(vec3<bool>(global1[_wgslsmith_index_u32(11187u, 29u)], arg_0.x >= u_input.c, true)), select(select(vec4<bool>(!var_1.c, true, !global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], global1[_wgslsmith_index_u32(func_5(Struct_1(vec4<bool>(false, var_1.a.x, false, false), var_1.c, false, vec4<bool>(var_1.d.x, false, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(29434u, 29u)])), var_1.c), 29u)]), !select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 29u)], var_1.a.x, global1[_wgslsmith_index_u32(4294967295u, 29u)], false), vec4<bool>(var_1.a.x, true, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 29u)]), var_1.d), !(!var_1.a)), var_1.d, !(u_input.d.x < ~(-2147483647i))));
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = func_1(select(~(abs(vec2<u32>(1u, u_input.c)) | ~vec2<u32>(31965u, u_input.c)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, 0u)), vec2<u32>(3051u, 2337u)) >> (vec2<u32>(global2[_wgslsmith_index_u32(u_input.c, 29u)], u_input.c) % vec2<u32>(32u)), arg_1));
    global1 = array<bool, 29>();
    var_0 = arg_0;
    var var_1 = Struct_1(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2877f))) - 1088f), Struct_1(func_2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23646u, 29u)], 30u)]), func_1(vec2<u32>(298u, 94704u)), func_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30979u, 29u)], 29u)], 22461u)).d, vec2<bool>(arg_1, arg_1)), true, func_3(-1868f, _wgslsmith_f_op_f32(-869f - 1550f), func_1(vec2<u32>(0u, 68456u))).x, arg_0.a), func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(347f, global3[_wgslsmith_index_u32(0u, 30u)]))), func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(57331u, u_input.c), vec2<u32>(381u, 41928u))), vec4<bool>(true | var_0.b, true, -2147483647i < u_input.e, false), arg_0.d.xx), vec2<bool>(arg_0.c || var_0.b, false)), false, arg_1, vec4<bool>(true, true, true, true));
    let var_2 = any(!(!select(vec2<bool>(true, true), arg_0.a.yw, var_0.a.xx)));
    return 6332u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(func_6(func_1(vec2<u32>(1u, 23834u) | vec2<u32>(global2[_wgslsmith_index_u32(u_input.c, 29u)], 1u)), false), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, u_input.c, u_input.c, global2[_wgslsmith_index_u32(1u, 29u)])), ~vec4<u32>(global2[_wgslsmith_index_u32(78402u, 29u)], global2[_wgslsmith_index_u32(u_input.c, 29u)], 0u, 1u)), 0u, select(u_input.c, 13104u, !any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 29u)])))) ^ ~(~(~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(45643u, 29u)], 39540u, 23619u) ^ vec4<u32>(4294967295u, 17731u, u_input.c, 1u)));
    global0 = array<i32, 13>();
    var var_1 = false;
    global4 = 367f;
    var var_2 = func_1(~min(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 32259u) | vec2<u32>(214u, 6564u), vec2<u32>(global2[_wgslsmith_index_u32(var_0.x, 29u)], 37627u)), vec2<u32>(3181u, _wgslsmith_dot_vec4_u32(vec4<u32>(11025u, u_input.c, global2[_wgslsmith_index_u32(41535u, 29u)], 81076u), vec4<u32>(u_input.c, var_0.x, u_input.c, u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~(~0u)), ~68144u, 4294967295u, countOneBits(max(6203u, 4294967295u))), -(~_wgslsmith_div_i32(u_input.b >> (85951u % 32u), 2147483647i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(639f))))), 4294967295u, min(_wgslsmith_mult_u32(104245u, _wgslsmith_clamp_u32(1u, var_0.x, 4294967295u)) ^ ~19894u, firstTrailingBit(~(~var_0.x))));
}

