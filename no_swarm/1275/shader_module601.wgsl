struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_2(u_input.c.x, Struct_1(vec3<u32>(_wgslsmith_div_u32(arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 100024u, 51694u, u_input.a), u_input.c)), max(~23844u, 23844u | u_input.b), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b))), select(global1.c, global1.c, false), global1.d), -vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 0i, global0[_wgslsmith_index_u32(global1.a.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<i32>(global0[_wgslsmith_index_u32(143432u, 14u)], -17175i, global0[_wgslsmith_index_u32(arg_2, 14u)], 1i)), -(~global0[_wgslsmith_index_u32(4294967295u, 14u)]), 22949i, -arg_1), Struct_1(u_input.c.ywx, 303f, vec3<bool>(true, true, true), _wgslsmith_add_u32(~1u, firstTrailingBit(firstLeadingBit(u_input.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -927f))))));
    global1 = Struct_1(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1806f)))), global1.c, ~_wgslsmith_mod_u32(u_input.c.x | 0u, firstTrailingBit(30325u)) ^ _wgslsmith_mod_u32(arg_2, 1u));
    let var_1 = _wgslsmith_add_u32(firstLeadingBit(1u) >> (arg_2 % 32u), abs(var_0.b.a.x) | arg_2);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(149f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(457f)) * -395f)))), _wgslsmith_f_op_f32(1128f * 1263f));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, global1.b) - vec2<f32>(230f, 823f)) - vec2<f32>(164f, var_0.b.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b, var_0.e)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1745f, 850f) - vec2<f32>(-1162f, global1.b)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, 771f), vec2<f32>(268f, 1000f)))), vec2<bool>(global1.c.x, (false == var_0.d.c.x) | !var_0.b.c.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1908f, -679f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -1809f), vec2<f32>(global1.b, 1403f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-851f, global1.b))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-403f, var_0.e)))));
    return vec3<bool>(!any(var_0.d.c.zz), any(vec4<bool>(!all(vec2<bool>(true, var_0.d.c.x)), global1.c.x, true, global1.c.x)), true);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<bool>) -> u32 {
    global1 = Struct_1(u_input.c.wwy | countOneBits(select(vec3<u32>(1u, 1u, global1.d), ~vec3<u32>(global1.a.x, global1.a.x, 33005u), !arg_2.x)), 704f, vec3<bool>(true, _wgslsmith_f_op_f32(-global1.b) != global1.b, true), 1u);
    global0 = array<i32, 14>();
    var var_0 = ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(2464u ^ u_input.c.x, u_input.e), ~vec2<u32>(global1.a.x, 14931u)));
    global1 = Struct_1(vec3<u32>(var_0.x, 1u, min(0u, _wgslsmith_add_u32(~13019u, 1u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b))), !select(vec3<bool>(arg_3.x, !arg_0, false), select(vec3<bool>(false, arg_0, false), select(global1.c, vec3<bool>(arg_2.x, true, arg_0), arg_2.x), false), func_3(_wgslsmith_f_op_f32(-arg_1), global0[_wgslsmith_index_u32(~global1.d, 14u)], global1.a.x)), firstTrailingBit(u_input.b));
    var var_1 = Struct_3(Struct_1(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f - _wgslsmith_f_op_f32(f32(-1f) * -1010f))), global1.c, ~global1.a.x), max(-vec4<i32>(-2147483647i, ~global0[_wgslsmith_index_u32(0u, 14u)], abs(-12030i), global0[_wgslsmith_index_u32(var_0.x, 14u)]), vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.e, 14u)], _wgslsmith_clamp_i32(min(global0[_wgslsmith_index_u32(u_input.e, 14u)], 0i), global0[_wgslsmith_index_u32(~var_0.x, 14u)], 69104i), reverseBits(_wgslsmith_mod_i32(47265i, global0[_wgslsmith_index_u32(1u, 14u)])))));
    return 111112u;
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    global0 = array<i32, 14>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-219f * global1.b))), 1161f));
    let var_1 = global0[_wgslsmith_index_u32(0u, 14u)];
    var var_2 = 4294967295u;
    let var_3 = u_input.c;
    return Struct_3(Struct_1(abs(vec3<u32>(4294967295u, var_3.x, _wgslsmith_sub_u32(arg_0.x, 54142u))), -1131f, select(global1.c, global1.c, all(!global1.c.zy)), func_2(min(global1.a.x, 57303u) < global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(957f * -606f) * var_0), !vec2<bool>(false, global1.c.x), select(!vec2<bool>(global1.c.x, true), global1.c.yy, vec2<bool>(global1.c.x, global1.c.x)))), vec4<i32>(1i, _wgslsmith_div_i32(-23282i, 1i), reverseBits(countOneBits(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b, 14u)]))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.c.x, 14u)], -1500i) << (global1.a % vec3<u32>(32u)), ~vec3<i32>(global0[_wgslsmith_index_u32(global1.d, 14u)], -8718i, global0[_wgslsmith_index_u32(13656u, 14u)]), ~vec3<i32>(526i, global0[_wgslsmith_index_u32(38836u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)])), vec3<i32>(select(-2147483647i, -1i, global1.c.x), global0[_wgslsmith_index_u32(63108u, 14u)], ~global0[_wgslsmith_index_u32(47243u, 14u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~max(vec4<u32>(u_input.b >> (u_input.b % 32u), 25876u, ~73929u, global1.a.x), vec4<u32>(1u, global1.d, 4769u, 15448u)));
    global1 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(func_1(max(vec4<u32>(0u, global1.d, var_0.a.d, var_0.a.a.x), u_input.c)).a.a.x, _wgslsmith_sub_u32(107364u, 53495u), 37457u), global1.a), var_0.a.b, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b - -211f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f + -620f) - global1.b)), -1i, 29790u), firstTrailingBit(global1.d));
    var var_1 = var_0.a.c.x;
    global1 = var_0.a;
    let var_2 = ~_wgslsmith_dot_vec2_u32(global1.a.zy, vec2<u32>(firstLeadingBit(u_input.b), _wgslsmith_div_u32(13979u, u_input.d.x))) >> (1u % 32u);
    global0 = array<i32, 14>();
    var var_3 = _wgslsmith_f_op_f32(var_0.a.b - var_0.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1365f, var_0.a.b) * _wgslsmith_div_vec2_f32(vec2<f32>(global1.b, -1081f), vec2<f32>(global1.b, -953f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.b, var_0.a.b), vec2<f32>(1620f, global1.b), global1.c.yz))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.b, var_0.a.b), vec2<f32>(var_0.a.b, global1.b)))))), func_3(_wgslsmith_f_op_f32(exp2(global1.b)), 1i, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global1.a, u_input.c.xzx), ~global1.a)).x)), var_2, var_0.b.xx, func_2(var_0.a.c.x, _wgslsmith_f_op_f32(step(var_0.a.b, _wgslsmith_f_op_f32(step(func_1(u_input.c).a.b, _wgslsmith_f_op_f32(max(var_0.a.b, var_0.a.b)))))), var_0.a.c.xz, !var_0.a.c.yx));
}

