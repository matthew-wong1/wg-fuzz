struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-3798i, 48429i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, -70394i, -22999i, 4064i), vec4<i32>(-1i, -1i, i32(-2147483648), 14021i), vec4<i32>(19563i, 1i, -1i, 30617i), vec4<i32>(-18687i, 30474i, -31916i, 13046i), vec4<i32>(-1i, -6368i, -17020i, -35333i), vec4<i32>(-34130i, 63525i, 0i, 2147483647i), vec4<i32>(1i, 2147483647i, -22562i, -27680i), vec4<i32>(0i, 1i, 2147483647i, -1i), vec4<i32>(-1i, -15875i, 1i, 852i), vec4<i32>(20671i, 22462i, 0i, i32(-2147483648)), vec4<i32>(9146i, 66704i, -27909i, 0i), vec4<i32>(i32(-2147483648), -24645i, -18912i, 19855i), vec4<i32>(45949i, -56077i, -1i, 70053i), vec4<i32>(0i, 2147483647i, -90257i, 1i), vec4<i32>(-48732i, -28907i, -1660i, -42230i), vec4<i32>(-1i, 1i, -1i, 0i), vec4<i32>(-4437i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 2147483647i, 2147483647i, 96869i), vec4<i32>(-25032i, 2147483647i, -5619i, -1i), vec4<i32>(0i, 2147483647i, -1i, -9504i));

var<private> global2: vec4<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = Struct_1(vec4<bool>(!(!(u_input.a < u_input.a)), false, !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, arg_0, arg_0), vec3<u32>(4294967295u, 0u, 32903u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.b), vec3<u32>(u_input.a, arg_0, u_input.a))), 30u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u ^ ~u_input.b), 30u)]));
    let var_1 = var_0.a.x;
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(204f)), 1000f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x + 983f)), vec4<f32>(_wgslsmith_f_op_f32(2016f * global2.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(1094f + global2.x)), select(var_0.a, vec4<bool>(global0[_wgslsmith_index_u32(30697u, 30u)], global0[_wgslsmith_index_u32(2434u, 30u)], true, false), var_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -1170f, 461f, global2.x), _wgslsmith_div_vec4_f32(vec4<f32>(416f, global2.x, global2.x, -482f), vec4<f32>(global2.x, global2.x, global2.x, global2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, global2.x, -705f, 617f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(199f, 340f, global2.x, global2.x) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, -286f, global2.x, -2166f), vec4<f32>(global2.x, global2.x, -1313f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -2063f, global2.x, -671f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, -1000f, global2.x, 704f) + vec4<f32>(global2.x, -1059f, global2.x, -703f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(651f, -1041f, 617f, -1147f), vec4<f32>(-465f, -1714f, -1575f, global2.x)))))));
    var var_2 = Struct_1(var_0.a);
    let var_3 = u_input.c;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.zx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.xw))) - _wgslsmith_f_op_vec2_f32(-global2.ww))) - vec2<f32>(global2.x, global2.x));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> u32 {
    global1 = array<vec4<i32>, 21>();
    var var_0 = u_input.d;
    let var_1 = Struct_1(!vec4<bool>(select(!arg_1, true, global0[_wgslsmith_index_u32(arg_0.b, 30u)]), ~u_input.d <= -u_input.c.x, !arg_1, true));
    let var_2 = var_1.a.x & arg_1;
    var_0 = ~u_input.c.x;
    return 4294967295u;
}

fn func_2() -> Struct_2 {
    global0 = array<bool, 30>();
    var var_0 = vec3<u32>(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(428f, global2.x, global2.x, global2.x)), 0u), global0[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-796f, global2.x) + global2.ww) * _wgslsmith_f_op_vec2_f32(func_3(u_input.a)))), u_input.b, 0u) << (min(abs(countOneBits(~vec3<u32>(0u, 1u, 4448u))), firstTrailingBit(select(vec3<u32>(4294967295u, u_input.a, 82370u), select(vec3<u32>(0u, 0u, 9060u), vec3<u32>(15712u, 51724u, 16740u), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 30u)], false)), vec3<bool>(true, global0[_wgslsmith_index_u32(148u, 30u)], false)))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_dot_vec2_u32(countOneBits(countOneBits(var_0.xy)), vec2<u32>(~52217u, _wgslsmith_dot_vec4_u32(~vec4<u32>(5808u, u_input.b, 0u, 9213u), vec4<u32>(var_0.x, 4294967295u, 4294967295u, 0u))) & countOneBits(var_0.zy));
    var_1 = ~33867u;
    var_0 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(44658u, 0u, 36448u) >> ((~vec3<u32>(var_0.x, var_0.x, 1u) | vec3<u32>(var_0.x, 7999u, 39126u)) % vec3<u32>(32u))), vec3<u32>(var_0.x, 4294967295u, 3414u));
    return Struct_2(vec4<f32>(global2.x, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(min(-1740f, 1349f))), global2.x, global2.x), u_input.a);
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    global1 = array<vec4<i32>, 21>();
    var var_0 = ~(vec3<u32>(~1u, u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.b, 70417u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 162u, u_input.b, u_input.a), vec4<u32>(23283u, u_input.b, u_input.a, u_input.a), vec4<u32>(47545u, 30295u, 1u, u_input.a)))) | ~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 4294967295u)), vec3<u32>(31567u, 78068u, 34008u)));
    let var_1 = func_2();
    var var_2 = Struct_1(!vec4<bool>(_wgslsmith_f_op_f32(-global2.x) < func_2().a.x, any(select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(var_1.b, 30u)], false, true), global0[_wgslsmith_index_u32(var_1.b, 30u)])), global0[_wgslsmith_index_u32(0u, 30u)], any(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 30u)], true, global0[_wgslsmith_index_u32(var_0.x, 30u)]))));
    let var_3 = 6705i;
    return select(-2147483647i, -27523i, global0[_wgslsmith_index_u32(var_0.x, 30u)]);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = vec3<bool>(true | all(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 30u)])), !global0[_wgslsmith_index_u32(~u_input.b, 30u)], true);
    var var_1 = arg_0.b;
    return _wgslsmith_mult_u32(_wgslsmith_sub_u32(min(arg_0.b << (~0u % 32u), min(arg_2.b | u_input.b, arg_0.b & arg_0.b)), 4294967295u), ~_wgslsmith_clamp_u32(1u, abs(~13001u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(42459u, arg_2.b), vec2<u32>(37821u, arg_0.b)), arg_0.b << (arg_2.b % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1357f, global2.x, global2.x, 575f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, global2.x, global2.x, global2.x))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, global2.x, 193f, -1000f), vec4<f32>(1525f, 634f, global2.x, global2.x))))))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 10221u), ~vec4<u32>(18746u, u_input.a, u_input.a, 3801u)), firstTrailingBit(4294967295u)) ^ func_5(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(126f, global2.x, -502f, 325f)), 88846u >> (u_input.a % 32u)), func_1(u_input.c.wx), Struct_2(func_2().a, max(u_input.a, 1u))));
    var var_1 = vec3<i32>(-32848i, u_input.c.x, -25030i);
    global1 = array<vec4<i32>, 21>();
    global0 = array<bool, 30>();
    let var_2 = var_1.xz;
    let var_3 = ~0u;
    let var_4 = Struct_1(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3, 0u), vec2<u32>(0u, 24026u)), 30u)], true, u_input.c.x <= var_1.x), select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.b, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], true, true, global0[_wgslsmith_index_u32(13304u, 30u)]), !global0[_wgslsmith_index_u32(var_0.b, 30u)]), global0[_wgslsmith_index_u32(u_input.b & ~u_input.a, 30u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1i, _wgslsmith_clamp_i32(var_2.x, -19935i, -24417i), _wgslsmith_add_i32(var_1.x, var_1.x), reverseBits(16161i))), vec4<i32>(min(6184i, firstTrailingBit(u_input.d)), var_1.x, _wgslsmith_div_i32(-2147483647i, ~var_1.x), 45072i), ~u_input.c));
}

