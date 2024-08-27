struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<u32, 22>;

var<private> global2: array<vec4<f32>, 27>;

var<private> global3: array<bool, 29> = array<bool, 29>(true, false, true, true, false, true, false, false, true, true, true, true, true, false, false, false, true, true, false, true, false, false, false, true, true, true, true, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: u32, arg_3: u32) -> vec4<bool> {
    let var_0 = Struct_2(u_input.c.x, u_input.c.x, true, false);
    var var_1 = Struct_2(i32(-1i) * -u_input.c.x, 2147483647i, var_0.d && true, var_0.c);
    global3 = array<bool, 29>();
    var var_2 = u_input.d;
    return vec4<bool>(any(select(vec2<bool>(var_0.c, 4294967295u != global1[_wgslsmith_index_u32(76701u, 22u)]), vec2<bool>(true, true), select(select(vec2<bool>(var_0.c, global3[_wgslsmith_index_u32(33402u, 29u)]), vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(arg_0, 29u)], true)), select(vec2<bool>(var_0.d, false), vec2<bool>(false, var_0.c), vec2<bool>(false, true)), global3[_wgslsmith_index_u32(abs(12821u), 29u)]))), false, !any(!(!vec4<bool>(false, true, var_1.d, true))), !(!all(select(vec2<bool>(var_1.c, false), vec2<bool>(global3[_wgslsmith_index_u32(arg_2, 29u)], true), true))));
}

fn func_2(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = Struct_1(select(true, true, !((arg_0.a.a <= -29787i) || true)), !(!vec4<bool>(true && global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 29u)], false, true || global3[_wgslsmith_index_u32(arg_0.d.x, 29u)], false)), false);
    var var_1 = Struct_1(!(!(!any(vec3<bool>(arg_0.a.d, var_0.b.x, true)))), !func_3(~countOneBits(u_input.e), arg_0.d.yx, ~reverseBits(13689u), arg_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(-1221f)))) * global0.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x) + _wgslsmith_div_f32(-145f, _wgslsmith_f_op_f32(-global0.x))));
    global3 = array<bool, 29>();
    var var_2 = var_0.b.yx;
    var var_3 = ~_wgslsmith_mult_i32(countOneBits(arg_0.a.a << (0u % 32u)), _wgslsmith_mult_i32(arg_0.c.a, u_input.d));
    return var_0.b;
}

fn func_1() -> u32 {
    let var_0 = global0.yzz;
    global3 = array<bool, 29>();
    var var_1 = Struct_3(Struct_2(-1i, -19777i, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(82229u, 22u)], 29u)] && false), !select(select(!vec4<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)], global3[_wgslsmith_index_u32(u_input.e, 29u)]), !vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 29u)], global3[_wgslsmith_index_u32(47418u, 29u)], global3[_wgslsmith_index_u32(993u, 29u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e, 22u)], 29u)]), func_2(Struct_3(Struct_2(u_input.b, -1050i, false, global3[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec4<bool>(global3[_wgslsmith_index_u32(62901u, 29u)], false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)]), Struct_2(u_input.b, -1i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)], 29u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 29u)]), vec4<u32>(u_input.e, 1u, 8079u, global1[_wgslsmith_index_u32(1u, 22u)])))), vec4<bool>(!global3[_wgslsmith_index_u32(4294967295u, 29u)], select(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 29u)], false, true), any(vec4<bool>(true, false, false, false)), select(true, false, global3[_wgslsmith_index_u32(4294967295u, 29u)])), global3[_wgslsmith_index_u32(firstLeadingBit(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e, 22u)], 22u)], 22u)]), 29u)]), Struct_2(u_input.d, -2147483647i, true, global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(37770u, 22u)]), vec2<u32>(1u, 4294967295u)), ~u_input.a.xw)), 29u)]), vec4<u32>(~u_input.a.x, ~_wgslsmith_mult_u32(5595u, _wgslsmith_div_u32(4294967295u, u_input.e)), u_input.a.x, ~53775u));
    global1 = array<u32, 22>();
    let var_2 = Struct_1(global3[_wgslsmith_index_u32(39756u, 29u)], !(!vec4<bool>(all(vec3<bool>(var_1.c.d, true, false)), global0.x < -1368f, 0u > var_1.d.x, true)), ((select(u_input.b, -1i, false) << (0u % 32u)) != -18860i) || select(true, all(select(vec4<bool>(true, var_1.a.c, var_1.c.c, global3[_wgslsmith_index_u32(var_1.d.x, 29u)]), var_1.b, var_1.b)), !(62165u > u_input.a.x)));
    return ~(1u << ((~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)] | ~1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 22>();
    var var_0 = ~40763u;
    var var_1 = Struct_1(global3[_wgslsmith_index_u32(34913u, 29u)], vec4<bool>(!global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41444u, 22u)], 22u)] | 0u, ~0u, func_1()), 29u)], true, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, ~46036u)), 29u)], true), false);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -637f)));
    let var_3 = ~(~min(~vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(36086u, 22u)]), ~u_input.a.yx));
    let var_4 = Struct_3(Struct_2(u_input.b, _wgslsmith_add_i32(firstLeadingBit(1926i), _wgslsmith_div_i32(u_input.c.x, 42378i)), global3[_wgslsmith_index_u32(~var_3.x, 29u)], true), vec4<bool>(!global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(48893u, ~1u), 29u)], true, false && var_1.a, all(!func_2(Struct_3(Struct_2(2147483647i, 49020i, var_1.a, var_1.b.x), var_1.b, Struct_2(-4790i, 6615i, var_1.c, false), vec4<u32>(28507u, u_input.a.x, 4294967295u, 0u))).xz)), Struct_2(_wgslsmith_dot_vec3_i32(-(~u_input.c), u_input.c), u_input.b & select(u_input.c.x, u_input.b, true), !all(var_1.b.zz), any(var_1.b)), ~reverseBits(countOneBits(vec4<u32>(34845u, global1[_wgslsmith_index_u32(var_3.x, 22u)], 4294967295u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_f_op_vec3_f32(-global0.xxx), min(u_input.c, ~u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(-9894i, 22237i, -1i, _wgslsmith_mod_i32(select(u_input.c.x, var_4.c.a, var_1.c), 1i)), vec4<i32>(-1i, var_4.c.b, ~18334i, u_input.d), vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, 1i), _wgslsmith_clamp_i32(var_4.c.a | u_input.d, -28809i, 20966i), ~var_4.a.a >> ((0u >> (global1[_wgslsmith_index_u32(var_3.x, 22u)] % 32u)) % 32u), var_4.c.b)));
}

