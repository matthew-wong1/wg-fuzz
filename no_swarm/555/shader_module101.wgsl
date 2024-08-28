struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<u32, 30>;

var<private> global2: vec3<f32> = vec3<f32>(-119f, 1094f, -695f);

var<private> global3: Struct_1;

var<private> global4: array<vec3<u32>, 1>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = vec3<bool>(_wgslsmith_mult_u32(24188u, select(~global1[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a, global3.e.x > 1359f)) <= (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)]) & vec2<u32>(75734u, 4262u)) ^ (firstLeadingBit(4294967295u) | global1[_wgslsmith_index_u32(max(843u, global1[_wgslsmith_index_u32(9777u, 30u)]), 30u)])), all(!vec3<bool>(true, true, 1173f > arg_0.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.e.x))), -284f) >= arg_0.e.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1267f * arg_0.e.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global2.x)), global2.x)))), _wgslsmith_add_vec4_i32(arg_0.d, arg_2.d | arg_3.d), vec2<bool>(any(select(!vec3<bool>(var_0.x, var_0.x, arg_0.c.x), select(var_0, var_0, var_0), var_0)), all(vec2<bool>(true, true))), u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.e)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a, global3.a, global3.e.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.a, 238f, arg_3.a))), false)) * vec3<f32>(arg_3.e.x, _wgslsmith_f_op_f32(-674f * 125f), 641f))));
    global1 = array<u32, 30>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.e.yz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.a, global2.x), _wgslsmith_f_op_vec2_f32(-global3.e.yz)))));
    global4 = array<vec3<u32>, 1>();
    return vec2<bool>(arg_3.c.x, arg_3.c.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(68899u, 14u)];
    var var_1 = !(true && all(select(!vec4<bool>(var_0.c.x, var_0.c.x, true, arg_0.c.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.c.x, global3.c.x, true), false), select(vec4<bool>(false, true, var_0.c.x, true), vec4<bool>(true, var_0.c.x, global3.c.x, global3.c.x), global3.c.x))));
    global1 = array<u32, 30>();
    global3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(818f)) + _wgslsmith_f_op_f32(max(983f, 373f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, 269f)))) - -195f), arg_0.b, !select(func_3(Struct_1(global2.x, arg_0.b, vec2<bool>(false, false), arg_0.b, global3.e), u_input.d, Struct_1(global2.x, var_0.d, vec2<bool>(true, true), global3.b, arg_0.e), global0[_wgslsmith_index_u32(arg_1 & 0u, 14u)]), var_0.c, -19071i == firstLeadingBit(arg_0.b.x)), -_wgslsmith_mod_vec4_i32(global3.b ^ var_0.d, vec4<i32>(~arg_0.d.x, _wgslsmith_sub_i32(21224i, -10789i), _wgslsmith_add_i32(-1i, 0i), -36926i << (global1[_wgslsmith_index_u32(0u, 30u)] % 32u))), var_0.e);
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.e.zx), vec2<f32>(-1000f, arg_0.a)))));
    return global0[_wgslsmith_index_u32(arg_1, 14u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<f32> {
    global1 = array<u32, 30>();
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))), _wgslsmith_div_f32(-134f, -938f), func_2(func_2(func_2(Struct_1(arg_0.e.x, global3.b, vec2<bool>(global3.c.x, arg_0.c.x), vec4<i32>(-46347i, 13632i, 0i, arg_0.b.x), vec3<f32>(825f, -2751f, 208f)), u_input.a), global1[_wgslsmith_index_u32(~58183u, 30u)]), abs(4294967295u ^ u_input.a)).a), global3.e);
    var var_0 = arg_0;
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0.d, -global3.b, vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(10023i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(-10928i, u_input.c.x))), -6415i, 1i, -_wgslsmith_mult_i32(28469i, -55670i))), arg_0.b);
    let var_2 = Struct_1(-1000f, ~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(26288i, 2147483647i, u_input.b, 52019i)) >> (abs(vec4<u32>(47087u, u_input.a, global1[_wgslsmith_index_u32(59564u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)])) % vec4<u32>(32u)), vec4<i32>(1i, 318i, var_0.d.x, var_0.b.x << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)] % 32u))), vec2<bool>(true, all(vec2<bool>(true, false))), u_input.c, vec3<f32>(_wgslsmith_f_op_f32(arg_0.e.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2294f)))), global2.x, 1483f));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1f, _wgslsmith_f_op_f32(-466f * var_2.e.x)));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    global0 = array<Struct_1, 14>();
    var var_0 = ~vec2<u32>(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 11736u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)]), vec4<u32>(0u, 22947u, 64275u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61382u, 30u)], 30u)]))), ~4294967295u);
    global4 = array<vec3<u32>, 1>();
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, 333f, global2.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-252f - global2.x), global3.e.x, -295f) - _wgslsmith_f_op_vec3_f32(func_4(func_2(global0[_wgslsmith_index_u32(23779u, 14u)], 73860u), global3.c))));
    var var_1 = vec3<bool>(any(select(vec3<bool>(!global3.c.x, all(vec2<bool>(false, global3.c.x)), func_3(global0[_wgslsmith_index_u32(var_0.x, 14u)], global3.b.x, Struct_1(256f, global3.d, global3.c, vec4<i32>(1i, -24453i, 22021i, arg_0.x), vec3<f32>(global3.e.x, global3.e.x, -1629f)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10188u, 30u)], 30u)], 14u)]).x), vec3<bool>(global3.c.x, global3.c.x, false), func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 35414u, 50958u), 14u)], var_0.x).c.x)), global3.c.x, u_input.a == u_input.a);
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    var var_0 = true;
    var var_1 = select(_wgslsmith_div_vec3_u32(~global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(1587u, 30u)]), 30u)], 1u)], vec3<u32>(~57141u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(37147u, u_input.a, 12636u), 1u), max(4294967295u << (global1[_wgslsmith_index_u32(85690u, 30u)] % 32u), u_input.a))), global4[_wgslsmith_index_u32(21682u, 1u)], ~select(~4294967295u, ~u_input.a, true) != _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(27258u, 30u)], u_input.a, 29119u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], func_1(vec3<i32>(global3.d.x, -47012i, -63767i))), vec4<u32>(func_1(u_input.c.zxx), 60605u, 0u, _wgslsmith_add_u32(u_input.a, u_input.a))));
    global3 = global0[_wgslsmith_index_u32(firstLeadingBit(~countOneBits(~max(var_1.x, u_input.a))), 14u)];
    var var_2 = select(vec3<bool>(true & func_2(global0[_wgslsmith_index_u32(0u, 14u)], ~u_input.a).c.x, global3.c.x, global3.c.x), vec3<bool>(all(select(vec4<bool>(global3.c.x, false, global3.c.x, global3.c.x), vec4<bool>(global3.c.x, global3.c.x, true, global3.c.x), false)) | all(global3.c), !(global3.c.x & all(vec3<bool>(global3.c.x, false, global3.c.x))), global3.c.x), false);
    let var_3 = _wgslsmith_f_op_vec3_f32(-global3.e);
    var var_4 = ~u_input.c;
    var var_5 = func_2(Struct_1(global2.x, _wgslsmith_mult_vec4_i32(max(-global3.b, -u_input.c), _wgslsmith_mod_vec4_i32(global3.d | vec4<i32>(global3.d.x, var_4.x, var_4.x, global3.d.x), _wgslsmith_mod_vec4_i32(vec4<i32>(global3.d.x, 2147483647i, -2147483647i, 51622i), u_input.c))), vec2<bool>(select(false || var_2.x, func_3(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 14u)], 1i, Struct_1(global2.x, u_input.c, var_2.zy, vec4<i32>(u_input.b, u_input.d, global3.d.x, 59214i), vec3<f32>(1479f, global3.e.x, -364f)), Struct_1(-630f, u_input.c, vec2<bool>(global3.c.x, false), u_input.c, vec3<f32>(global3.e.x, -1201f, global3.a))).x, global3.c.x), true), vec4<i32>(global3.d.x, ~(~var_4.x), ~var_4.x, var_4.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, -1072f, var_3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_3, var_3))))), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 4294967295u), max(u_input.a, func_1(vec3<i32>(var_4.x, -2147483647i, u_input.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~12882u, var_5.e.x, vec4<u32>(~(_wgslsmith_mult_u32(u_input.a, global1[_wgslsmith_index_u32(var_1.x, 30u)]) & firstLeadingBit(var_1.x)), ~(func_1(vec3<i32>(var_5.d.x, -1i, -3067i)) | global1[_wgslsmith_index_u32(~u_input.a, 30u)]), u_input.a, reverseBits(_wgslsmith_sub_u32(22951u, var_1.x)) | ~(~0u)), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 4294967295u) ^ ~0u, var_1.x));
}

