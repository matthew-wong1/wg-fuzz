struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<bool>(true, false), -1021f, vec3<i32>(0i, 0i, 6053i), -865f, vec2<u32>(1u, 45361u));

var<private> global1: array<bool, 30>;

var<private> global2: array<vec4<f32>, 21>;

var<private> global3: array<u32, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 21186u & global3[_wgslsmith_index_u32(select(global0.e.x, _wgslsmith_mult_u32(global0.e.x, abs(global3[_wgslsmith_index_u32(0u, 11u)])), all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 11u)], 30u)]), global0.a, vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 30u)], false)))), 11u)]), 11u)];
    var var_1 = Struct_3(-2074f);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(291f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2183f, global0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, var_1.a)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(456f, var_1.a), vec2<f32>(global0.d, -264f), global0.a)))), !vec2<bool>(global0.e.x <= 0u, !global0.a.x)))));
    global2 = array<vec4<f32>, 21>();
    let var_3 = vec4<i32>(-(~(~1i) & _wgslsmith_sub_i32(u_input.b.x | u_input.b.x, -global0.c.x)), abs(global0.c.x), _wgslsmith_add_i32((u_input.b.x | global0.c.x) >> (4349u % 32u), global0.c.x), ~arg_0);
    return vec2<bool>(!(true | !(1u == global0.e.x)), !global1[_wgslsmith_index_u32(6579u, 30u)]);
}

fn func_3() -> bool {
    global0 = Struct_5(vec2<bool>(!global1[_wgslsmith_index_u32(global0.e.x << (~1u % 32u), 30u)], global1[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(940f * -159f))) - -257f)), min(abs(abs(~global0.c)), global0.c ^ ~global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d, -142f)))) * 1374f), global0.e);
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-498f, -180f)) - vec2<f32>(global0.d, -214f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, -952f) * vec2<f32>(-747f, 527f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.d, global0.d), vec2<f32>(global0.d, -417f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.d, 1757f), vec2<f32>(global0.d, 751f)))))))))));
    var var_1 = select(vec4<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 11u)], 11u)], 30u)], select(0u, min(1u, 19202u), true) <= _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), firstTrailingBit(vec2<u32>(global3[_wgslsmith_index_u32(9537u, 11u)], global3[_wgslsmith_index_u32(u_input.a, 11u)]))), true, all(global0.a)), select(select(!vec4<bool>(false, global0.a.x, false, true), select(!vec4<bool>(true, true, true, global0.a.x), !vec4<bool>(true, global0.a.x, true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24607u, 11u)], 30u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(26920u, global3[_wgslsmith_index_u32(global0.e.x, 11u)]), 30u)]), select(select(vec4<bool>(global1[_wgslsmith_index_u32(61982u, 30u)], false, true, global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 30u)], global0.a.x, true, global0.a.x), true), !vec4<bool>(true, true, global0.a.x, true), false)), vec4<bool>(true || global0.a.x, func_2(_wgslsmith_clamp_i32(u_input.b.x, -10835i, 2147483647i)).x, global1[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(0u, 46411u), 58550u), 30u)], true), var_0.x > var_0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 30u)], ~global3[_wgslsmith_index_u32(1u, 11u)] != _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global0.e, global0.e), vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 11u)], global3[_wgslsmith_index_u32(49702u, 11u)]) ^ global0.e), any(vec4<bool>(!global1[_wgslsmith_index_u32(8682u, 30u)], true, true, -1i < u_input.b.x)), true));
    let var_2 = u_input.a <= firstTrailingBit(~select(global3[_wgslsmith_index_u32(1u, 11u)], 0u & global3[_wgslsmith_index_u32(4294967295u, 11u)], true));
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(floor(234f))))));
    return (all(!vec4<bool>(global0.a.x, false, true, global1[_wgslsmith_index_u32(global0.e.x, 30u)])) | !select(var_1.x, global0.e.x >= global3[_wgslsmith_index_u32(0u, 11u)], var_1.x)) || !any(vec3<bool>(global3[_wgslsmith_index_u32(global0.e.x, 11u)] != u_input.a, true, any(vec3<bool>(global1[_wgslsmith_index_u32(87716u, 30u)], var_1.x, false))));
}

fn func_1() -> f32 {
    global0 = Struct_5(func_2(_wgslsmith_mult_i32(8430i, global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(global0.b * 2332f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * 776f))), -(~global0.c), _wgslsmith_f_op_f32(-global0.b), abs(min(max(_wgslsmith_div_vec2_u32(global0.e, vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(45640u, 11u)])), select(vec2<u32>(global0.e.x, global0.e.x), vec2<u32>(u_input.a, 47484u), global0.a)), (vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 11u)]) >> (global0.e % vec2<u32>(32u))) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), global0.e))));
    let var_0 = Struct_1(func_3(), vec2<f32>(554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d + global0.d) * 875f) - _wgslsmith_f_op_f32(-527f - _wgslsmith_f_op_f32(f32(-1f) * -263f)))), vec4<u32>(1u, ~_wgslsmith_sub_u32(59096u, _wgslsmith_clamp_u32(0u, u_input.a, 4294967295u)), 4294967295u, 1u), vec4<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 137146u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, 45183u), vec3<u32>(u_input.a, 41921u, 27314u))), max(global3[_wgslsmith_index_u32(70110u >> (u_input.a % 32u), 11u)] | 0u, _wgslsmith_add_u32(~1u, global0.e.x << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.e.x, 11u)], 11u)] % 32u))), global3[_wgslsmith_index_u32(u_input.a, 11u)], firstTrailingBit(~(~u_input.a))), abs(_wgslsmith_add_u32(4294967295u, global0.e.x)));
    global3 = array<u32, 11>();
    var var_1 = true;
    let var_2 = global0.b;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1229f, var_0.b.x)), 1209f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + global0.d)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 21>();
    var var_0 = _wgslsmith_f_op_f32(func_1());
    global3 = array<u32, 11>();
    var var_1 = u_input.b.x;
    global2 = array<vec4<f32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(floor(-151f)), _wgslsmith_f_op_f32(global0.b * 559f), _wgslsmith_f_op_f32(-global0.d)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.d, global0.b, 683f)))))));
}

