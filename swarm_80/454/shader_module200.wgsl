struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-34910i, vec2<bool>(true, true)), 905f, 0u, Struct_1(2147483647i, vec2<bool>(true, false)), vec4<f32>(-501f, 1992f, 556f, -339f));

var<private> global1: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = array<vec2<bool>, 18>();
    let var_0 = abs(max(0u, ~(~select(4294967295u, 24584u, true))));
    return ~firstLeadingBit(46461u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(global0.a, global0.e.x, _wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_3.x, 4294967295u, arg_3.x), 4294967295u), ~firstTrailingBit(global0.c)), Struct_1(-42157i, global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(arg_0.x, ~90347u), select(4294967295u, 4294967295u, arg_2) >> (1u % 32u), _wgslsmith_f_op_f32(-global0.e.x) != _wgslsmith_f_op_f32(-global0.e.x)), 18u)]), global0.e);
    return global0.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> vec4<u32> {
    let var_0 = -(i32(-1i) * -9327i);
    global1 = array<vec2<bool>, 18>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(1353f + global0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(974f - global0.e.x)))) + global0.b));
    global0 = Struct_2(func_3(vec4<u32>(_wgslsmith_clamp_u32(arg_1, ~2897u, func_2(arg_1, 1i, Struct_1(22195i, vec2<bool>(false, false)), Struct_1(7240i, global1[_wgslsmith_index_u32(48273u, 18u)]))), 39442u, abs(global0.c), ~countOneBits(34612u)), ~_wgslsmith_mod_u32(4294967295u, u_input.d) | 1u, global0.a.b.x, arg_0), _wgslsmith_f_op_f32(min(1f, -280f)), ~0u, global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(832f)), _wgslsmith_f_op_f32(-1000f * -578f), _wgslsmith_f_op_f32(ceil(1000f)), 1153f), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(286f, var_1.x)))))));
    var var_2 = select(u_input.b, ~(-u_input.b), true);
    return max(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, arg_0.x)), vec4<u32>(0u, arg_0.x, arg_1, 1u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.c, u_input.d, 31393u), vec4<u32>(arg_1, 0u, arg_0.x, u_input.c.x)) % vec4<u32>(32u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 21729u, firstTrailingBit(39015u), ~u_input.d), vec4<u32>(global0.c, 1u, countOneBits(arg_1), 30059u)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<bool> {
    global0 = Struct_2(arg_3.a, 1f, _wgslsmith_clamp_u32(func_2(~select(global0.c, arg_3.c, false), max(-2147483647i, func_3(arg_1, 38756u, arg_2.a.b.x, vec2<u32>(arg_1.x, 10479u)).a), func_3(arg_1, firstTrailingBit(1u), arg_1.x == 23030u, firstTrailingBit(vec2<u32>(4294967295u, 36817u))), arg_2.d), 0u, arg_3.c), func_3(~arg_1, ~arg_1.x, !((arg_2.d.a << (11655u % 32u)) != ~arg_3.d.a), ~(~(vec2<u32>(30375u, 0u) | arg_1.yx))), _wgslsmith_f_op_vec4_f32(arg_3.e - _wgslsmith_f_op_vec4_f32(-arg_2.e)));
    var var_0 = ~u_input.c.x;
    global0 = arg_3;
    let var_1 = min(15548u, ~0u);
    var var_2 = firstLeadingBit(arg_2.c);
    return select(vec2<bool>(!all(vec3<bool>(true, arg_3.a.b.x, true)), false), global0.d.b, any(!select(!vec4<bool>(false, false, true, arg_2.d.b.x), !vec4<bool>(arg_2.d.b.x, arg_3.a.b.x, arg_2.a.b.x, true), false)));
}

fn func_5(arg_0: vec2<bool>) -> vec2<bool> {
    global0 = Struct_2(Struct_1(1i, select(global0.d.b, vec2<bool>(global0.a.b.x, !arg_0.x), func_4(global0.e.x, _wgslsmith_sub_vec4_u32(vec4<u32>(31346u, u_input.d, global0.c, 1u), vec4<u32>(22741u, u_input.d, 12139u, 76860u)), Struct_2(global0.d, 326f, 1u, global0.a, vec4<f32>(-1183f, global0.e.x, -881f, -695f)), Struct_2(global0.d, global0.b, u_input.d, Struct_1(global0.d.a, global0.d.b), global0.e)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.e.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(617f - global0.b), global0.e.x, arg_0.x)), !global0.d.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(866f))), true))), _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(global0.c, min(_wgslsmith_div_u32(0u, u_input.d), abs(u_input.d)))), global0.d, _wgslsmith_div_vec4_f32(global0.e, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e + vec4<f32>(global0.b, global0.b, global0.e.x, global0.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.e.x, -946f, global0.b, global0.e.x), vec4<f32>(global0.e.x, 1536f, global0.e.x, global0.e.x), global0.d.b.x)))))));
    let var_0 = Struct_2(func_3(min(vec4<u32>(1u, u_input.c.x, ~u_input.c.x, _wgslsmith_add_u32(0u, 59807u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(global0.c, global0.c, u_input.d, u_input.d), vec4<u32>(0u, 0u, 47814u, 64855u))), u_input.c.x, true, ~vec2<u32>(select(57069u, 1u, true), u_input.c.x)), global0.e.x, func_2(select(10011u, 20437u, true), abs(global0.a.a), func_3(~func_1(vec2<u32>(0u, 4294967295u), u_input.c.x), 0u, global0.d.b.x, u_input.c.zy), Struct_1(~abs(u_input.a.x), !vec2<bool>(global0.d.b.x, global0.d.b.x))), global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.e.x, global0.e.x, global0.b, global0.e.x), global0.e))) - global0.e) - vec4<f32>(700f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2964f)) * _wgslsmith_f_op_f32(-1134f + 289f)), global0.e.x, -620f)));
    var var_1 = Struct_2(func_3(func_1(u_input.c.yz, u_input.c.x & ~var_0.c), u_input.d, all(vec3<bool>(any(vec4<bool>(arg_0.x, global0.a.b.x, false, true)), !var_0.a.b.x, any(vec4<bool>(false, global0.a.b.x, true, global0.d.b.x)))), ~u_input.c.xx), _wgslsmith_f_op_f32(sign(var_0.e.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 80121u), u_input.c.zz), Struct_1(_wgslsmith_add_i32(2147483647i, -2147483647i), vec2<bool>(global0.d.b.x, all(select(vec3<bool>(false, false, var_0.a.b.x), vec3<bool>(true, global0.d.b.x, false), vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(423f, -211f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, global0.e.x)) - var_0.b), _wgslsmith_f_op_f32(-var_0.e.x), 471f))));
    global0 = var_0;
    let var_2 = vec4<i32>(global0.d.a, global0.d.a, u_input.b.x, 46852i);
    return vec2<bool>(!var_0.d.b.x, !arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(global0.a.a, 48708i);
    var var_1 = Struct_2(Struct_1(~select(u_input.a.x, 5264i, all(global0.d.b)), func_5(func_4(_wgslsmith_div_f32(1563f, global0.b), func_1(vec2<u32>(global0.c, u_input.c.x), 0u), Struct_2(global0.d, global0.e.x, 4294967295u, global0.a, global0.e), Struct_2(global0.a, -274f, 27129u, global0.d, vec4<f32>(global0.b, -1655f, 1932f, global0.e.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, global0.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1998f)) - 1f))), u_input.c.x, func_3(firstTrailingBit(~abs(vec4<u32>(global0.c, 4294967295u, 4294967295u, 982u))), u_input.c.x, true, vec2<u32>(global0.c, _wgslsmith_add_u32(u_input.d, 4294967295u))), vec4<f32>(677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x - global0.e.x)), -1231f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 149f), global0.b) * -677f)));
    global1 = array<vec2<bool>, 18>();
    global0 = Struct_2(func_3(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.c, 1u, 0u, u_input.c.x), vec4<u32>(var_1.c, global0.c, var_1.c, 28390u)) >> (vec4<u32>(7702u, u_input.c.x, reverseBits(var_1.c), 27249u | u_input.c.x) % vec4<u32>(32u)), u_input.c.x, any(select(!vec4<bool>(global0.d.b.x, global0.d.b.x, false, var_1.a.b.x), select(vec4<bool>(global0.a.b.x, true, global0.d.b.x, false), vec4<bool>(false, var_1.a.b.x, global0.d.b.x, false), var_1.a.b.x), false == var_1.d.b.x)), ~vec2<u32>(~u_input.d, ~u_input.c.x)), _wgslsmith_div_f32(186f, -1231f), var_1.c, Struct_1(firstLeadingBit(16930i), !func_3(firstLeadingBit(vec4<u32>(67267u, 61229u, 29935u, global0.c)), reverseBits(global0.c), true, countOneBits(u_input.c.xy)).b), vec4<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(688f, var_1.b)) + global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(715f, _wgslsmith_f_op_f32(-894f + 465f), 1738f >= var_1.e.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.e.x, global0.b)))), 855f));
    var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(18324i, u_input.a.x, global0.d.a, global0.a.a), vec4<i32>(u_input.b.x, u_input.a.x, var_1.d.a, u_input.b.x), u_input.b)), vec2<bool>(_wgslsmith_f_op_f32(min(global0.b, var_1.b)) < var_1.e.x, global0.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b, -322f)) + 504f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.e.x * -1213f)))))), 12892u, func_3(select(~vec4<u32>(0u, 4294967295u, u_input.d, 0u), _wgslsmith_mult_vec4_u32(func_1(vec2<u32>(global0.c, 0u), global0.c), ~vec4<u32>(4294967295u, var_1.c, 1u, 4294967295u)), vec4<bool>(global0.d.a >= -2147483647i, var_1.a.b.x && true, true, false)), abs(func_1(vec2<u32>(u_input.d, global0.c), var_1.c).x & firstTrailingBit(var_1.c)), true, min(select(u_input.c.zy, vec2<u32>(u_input.c.x, 1u), global0.d.b.x) << (vec2<u32>(global0.c, 0u) % vec2<u32>(32u)), abs(~vec2<u32>(u_input.d, global0.c)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1156f - -1148f) * global0.e.x), _wgslsmith_f_op_f32(round(1854f)))), -865f, 904f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-_wgslsmith_add_i32(0i, 25141i) ^ ((i32(-1i) * -20455i) ^ global0.a.a), abs(-global0.d.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1679f))), _wgslsmith_div_f32(global0.e.x, 129f), _wgslsmith_f_op_f32(select(794f, global0.e.x, var_1.d.b.x))))), global0.e.x, vec4<i32>(2147483647i, countOneBits(countOneBits(3915i)), 0i, -31273i));
}

