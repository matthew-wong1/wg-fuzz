struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(4294967295u, 4294967295u, 0u, 21580u, 59905u, 7373u, 65646u, 1u, 4294967295u, 88145u, 75871u, 31572u, 7893u, 1u, 0u);

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(30274i, 0i, -26598i, i32(-2147483648)), vec4<i32>(-56655i, -1i, 1i, 17964i), vec4<i32>(-46411i, -4803i, 2147483647i, 66534i), vec4<i32>(0i, 2147483647i, -17642i, 1i), vec4<i32>(-31507i, -28394i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, -7986i, -32089i, -9742i), vec4<i32>(0i, 2147483647i, -38586i, 61698i), vec4<i32>(2147483647i, 2147483647i, -1i, 1i), vec4<i32>(1i, -1i, -3526i, 2147483647i), vec4<i32>(-14469i, -1i, 1i, 0i), vec4<i32>(0i, 3560i, 2147483647i, -6683i), vec4<i32>(-1i, 20545i, -4889i, -46729i), vec4<i32>(0i, -10685i, -931i, 4833i), vec4<i32>(90448i, 4621i, -55609i, 11164i), vec4<i32>(46991i, 2147483647i, 12810i, i32(-2147483648)), vec4<i32>(1i, -1446i, -8673i, -1i), vec4<i32>(i32(-2147483648), 1i, 5866i, -1i), vec4<i32>(1i, 2147483647i, 1i, -20838i), vec4<i32>(2147483647i, 1i, 0i, 11019i), vec4<i32>(25804i, -1i, -45280i, -1i), vec4<i32>(37714i, 41027i, 2147483647i, -30720i), vec4<i32>(0i, 43061i, -32708i, 0i), vec4<i32>(0i, 0i, -1i, 10177i), vec4<i32>(2147483647i, -3939i, 17780i, 40027i), vec4<i32>(-1i, -10782i, 22799i, 48604i), vec4<i32>(-1i, -43421i, i32(-2147483648), 0i), vec4<i32>(53820i, -16767i, -6629i, 1i), vec4<i32>(41560i, 2147483647i, -9695i, 0i), vec4<i32>(2147483647i, -67525i, 323i, -71949i));

var<private> global4: Struct_2 = Struct_2(469f, 2147483647i, Struct_1(3622i, vec4<i32>(2147483647i, i32(-2147483648), -9516i, -1i)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_3(vec3<bool>(_wgslsmith_f_op_f32(select(-421f, _wgslsmith_f_op_f32(-774f * 1162f), all(vec2<bool>(true, true)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-394f, 2352f))), arg_0, true));
    let var_1 = vec3<f32>(486f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2008f)) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)))));
    global4 = arg_2;
    global3 = array<vec4<i32>, 29>();
    let var_2 = false;
    return select(~global0[_wgslsmith_index_u32(~0u, 15u)] | reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(8091u, global0[_wgslsmith_index_u32(1u, 15u)], 0u), vec3<u32>(global0[_wgslsmith_index_u32(7421u, 15u)], global0[_wgslsmith_index_u32(5476u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47496u, 15u)], 15u)], 15u)]))), _wgslsmith_mod_u32(reverseBits(1u), 40823u | firstLeadingBit(global0[_wgslsmith_index_u32(abs(76560u), 15u)])), false);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = arg_0.zw;
    global4 = Struct_2(_wgslsmith_f_op_f32(sign(global4.a)), u_input.a.x, global2[_wgslsmith_index_u32(~arg_0.x, 25u)]);
    let var_1 = max(u_input.a.x, ~14290i);
    global2 = array<Struct_1, 25>();
    global0 = array<u32, 15>();
    return Struct_1(-u_input.a.x, vec4<i32>(countOneBits(u_input.a.x & -18416i), 2147483647i, _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, min(var_1, u_input.a.x)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, var_1, var_1), ~vec3<i32>(36919i, 70548i, 2147483647i))), 1i));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<f32>) -> vec3<bool> {
    global2 = array<Struct_1, 25>();
    let var_0 = -827f;
    global4 = Struct_2(-201f, ~1i, func_3(~select(vec4<u32>(4294967295u, 0u, 1129u, 56437u), _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 15u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 15u)], 40707u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21154u, 15u)], 15u)])), !vec4<bool>(false, arg_0.x, arg_0.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1391f), vec4<bool>(arg_0.x, any(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, arg_1.a.x), arg_0.x)), global0[_wgslsmith_index_u32(func_2(false, global4.c, Struct_2(global1.x, global4.b, global2[_wgslsmith_index_u32(28217u, 25u)])), 15u)] <= global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], 15u)], arg_1.a.x)));
    let var_1 = select(!select(select(!vec4<bool>(false, true, arg_1.a.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_1.a.x), -2147483647i <= u_input.a.x), vec4<bool>(arg_1.a.x, false, true, all(vec2<bool>(false, arg_1.a.x))), true), vec4<bool>(all(arg_0), all(select(select(arg_1.a.xx, vec2<bool>(arg_1.a.x, true), false), vec2<bool>(true, false), true)), arg_0.x, false), select(select(select(!vec4<bool>(false, false, false, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_1.a.x, true), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_0.x), vec4<bool>(false, arg_1.a.x, arg_0.x, arg_0.x)), !arg_1.a.x), !vec4<bool>(true, true, true, arg_1.a.x), vec4<bool>(true, !arg_1.a.x, true, true)), select(vec4<bool>(any(vec2<bool>(true, false)), true, u_input.a.x != -3588i, all(vec2<bool>(arg_0.x, false))), !(!vec4<bool>(false, false, true, arg_1.a.x)), select(!vec4<bool>(arg_1.a.x, arg_0.x, arg_0.x, arg_1.a.x), select(vec4<bool>(arg_0.x, true, arg_1.a.x, arg_1.a.x), vec4<bool>(false, arg_1.a.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_1.a.x, arg_0.x, true)), select(vec4<bool>(true, arg_1.a.x, false, true), vec4<bool>(false, arg_1.a.x, arg_0.x, arg_0.x), true))), true));
    var var_2 = ~(~abs(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(10741u, 15u)] & global0[_wgslsmith_index_u32(47445u, 15u)], abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)]))));
    return vec3<bool>(all(select(vec3<bool>(var_1.x, arg_0.x && false, !arg_0.x), !vec3<bool>(arg_1.a.x, arg_0.x, arg_0.x), false)), !arg_0.x, var_1.x & (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(96947u, 15u)], 13865u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56100u, 15u)], 15u)], 1u)), ~vec2<u32>(1u, 23211u)) > select(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50802u, 15u)], 15u)], ~50407u, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(all(vec3<bool>(false, false, true)), true, !any(vec4<bool>(false, true, false, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(func_1(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, false, true)), vec4<f32>(-1677f, global4.a, -563f, 263f)), vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)] > 13498u, true, select(false, false, true)), vec3<bool>(true, true, true)), select(func_1(vec3<bool>(true, true, true), Struct_3(vec3<bool>(false, false, false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(491f, -1169f, 302f, global4.a), vec4<f32>(global4.a, 588f, 441f, global4.a), true))).x, !select(false, false, false), true)));
    let var_1 = global4.c;
    let var_2 = -firstTrailingBit(-2147483647i);
    var var_3 = Struct_1(~(-1i), _wgslsmith_add_vec4_i32(global4.c.b, global4.c.b));
    global2 = array<Struct_1, 25>();
    let var_4 = Struct_2(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-283f + global4.a)), _wgslsmith_div_i32(var_3.a, var_3.a << (abs(~global0[_wgslsmith_index_u32(21319u, 15u)]) % 32u)), Struct_1(countOneBits(global4.b), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, -17712i), _wgslsmith_dot_vec4_i32(global4.c.b, var_1.b)), 1i, -1i, -u_input.a.x ^ _wgslsmith_dot_vec3_i32(global4.c.b.xzz, var_3.b.zzy))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.b.wy, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.x), -524f, _wgslsmith_f_op_f32(f32(-1f) * -363f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(1305f)), _wgslsmith_f_op_f32(abs(-911f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 1003f)) - _wgslsmith_f_op_f32(ceil(353f)))), true)));
}

