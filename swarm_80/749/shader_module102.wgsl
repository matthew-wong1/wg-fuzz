struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(2147483647i, 644f), Struct_1(1746i, -486f), Struct_1(-1i, -891f), Struct_1(2147483647i, -984f), Struct_1(0i, 514f), Struct_1(-13943i, 370f), Struct_1(7771i, 338f), Struct_1(0i, -1260f), Struct_1(-37014i, -1336f), Struct_1(1i, -1322f), Struct_1(i32(-2147483648), -1178f), Struct_1(1i, 644f), Struct_1(30615i, 454f), Struct_1(-1i, 303f), Struct_1(40415i, -100f));

var<private> global1: array<bool, 30> = array<bool, 30>(false, true, false, true, true, false, false, true, false, true, true, true, false, false, true, true, true, true, true, true, true, false, true, false, true, true, false, false, false, false);

var<private> global2: Struct_1;

var<private> global3: array<f32, 23>;

var<private> global4: vec4<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = !global1[_wgslsmith_index_u32(u_input.b.x, 30u)];
    global1 = array<bool, 30>();
    global0 = array<Struct_1, 15>();
    global2 = Struct_1(global4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(165f)) - 1186f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.b)) - arg_1.b), 265f))));
    global2 = Struct_1(countOneBits(firstLeadingBit(firstLeadingBit(44396i))), -535f);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1602f - arg_0.b))));
}

fn func_2() -> Struct_1 {
    var var_0 = global2.a;
    global2 = global0[_wgslsmith_index_u32(0u, 15u)];
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 15u)];
    global4 = ~(-vec4<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global4.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(-33383i, -2147483647i), u_input.c.yy, vec2<i32>(var_1.a, var_1.a))), -_wgslsmith_div_i32(var_1.a, global2.a), -1i));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(472f, var_1.b) * vec2<f32>(-703f, global3[_wgslsmith_index_u32(34201u, 23u)]))))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(global2.a, global3[_wgslsmith_index_u32(21809u, 23u)]), Struct_1(2147483647i, _wgslsmith_f_op_f32(-var_1.b)))))));
    return global0[_wgslsmith_index_u32(~u_input.a, 15u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<i32> {
    return u_input.c.ywx;
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, u_input.a), 15u)];
    global0 = array<Struct_1, 15>();
    global3 = array<f32, 23>();
    var var_1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(u_input.a, ~11833u)) & _wgslsmith_mult_u32(select(u_input.a, _wgslsmith_sub_u32(38579u, u_input.a), var_0.b >= -691f) << (_wgslsmith_dot_vec3_u32(vec3<u32>(27617u, 4294967295u, u_input.a) | u_input.b, u_input.b) % 32u), 75125u), 15u)];
    let var_2 = ~_wgslsmith_mult_i32(_wgslsmith_div_i32(~firstTrailingBit(global4.x), firstLeadingBit(_wgslsmith_sub_i32(arg_0, var_1.a))), select(_wgslsmith_clamp_i32(2147483647i, 28998i, -23695i) & _wgslsmith_mult_i32(global2.a, -34928i), -arg_0, false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471f * 477f));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1501f, global2.b)) * 1358f))) <= _wgslsmith_f_op_f32(func_5(global2.a & global4.x, !vec3<bool>(false, true, !global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), !vec2<bool>(all(vec4<bool>(arg_0, true, false, arg_0)), !global1[_wgslsmith_index_u32(arg_2, 30u)]), func_4(Struct_1(abs(global2.a), _wgslsmith_f_op_f32(f32(-1f) * -1158f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(2061f)), _wgslsmith_f_op_f32(-global2.b), _wgslsmith_div_f32(global2.b, global2.b), _wgslsmith_f_op_f32(-arg_1)), func_2())));
    var var_1 = !select(!vec3<bool>(true, !global1[_wgslsmith_index_u32(4294967295u, 30u)], all(vec4<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)]))), vec3<bool>(arg_0, all(select(vec2<bool>(arg_0, global1[_wgslsmith_index_u32(arg_2, 30u)]), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true))), false), u_input.c.x > abs(_wgslsmith_clamp_i32(u_input.c.x, 0i, global2.a)));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, ~_wgslsmith_mod_vec3_u32(u_input.b, u_input.b)) << ((min(u_input.b.x, func_1(true, _wgslsmith_div_f32(-189f, 1000f), _wgslsmith_add_u32(u_input.b.x, u_input.a))) & _wgslsmith_add_u32(u_input.a, 19931u)) % 32u), 15u)];
    global0 = array<Struct_1, 15>();
    let var_1 = Struct_1(~global4.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u << (u_input.a % 32u), 23u)]));
    global3 = array<f32, 23>();
    var var_2 = vec2<i32>(-2147483647i, ~(-2147483647i));
    global4 = u_input.c;
    let var_3 = Struct_1(u_input.c.x & abs(1i), global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(67792u, u_input.a), u_input.b.xy));
}

