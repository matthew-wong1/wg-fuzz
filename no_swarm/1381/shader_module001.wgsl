struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_1) -> u32 {
    global0 = array<bool, 10>();
    var var_0 = Struct_2(arg_3.a.x, arg_0.c, Struct_1(abs(select(_wgslsmith_add_vec4_u32(arg_3.a, arg_2.c.a), vec4<u32>(arg_1.x, 1u, 0u, 1u) | arg_2.c.a, arg_2.c.b)), !(!all(vec4<bool>(false, false, true, true))), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(arg_1, u_input.a), firstTrailingBit(select(vec3<u32>(arg_0.b.x, arg_0.c.a.x, arg_3.a.x), arg_0.c.a.xzz, vec3<bool>(arg_0.c.b, arg_0.c.b, arg_2.c.b))))));
    global0 = array<bool, 10>();
    var var_1 = ~(~_wgslsmith_mod_u32(abs(arg_3.c | 4294967295u), arg_2.c.a.x));
    var var_2 = vec3<bool>(var_0.b.b, true, arg_2.c.b);
    return ~(~(~arg_0.c.a.x >> ((arg_2.c.c ^ var_0.b.a.x) % 32u))) >> (_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.b.x, firstTrailingBit(32866u) ^ 1u), max(_wgslsmith_mod_u32(arg_1.x ^ 4294967295u, arg_0.b.x), ~(~var_0.b.a.x))) % 32u);
}

fn func_2() -> Struct_4 {
    global0 = array<bool, 10>();
    var var_0 = Struct_3(Struct_1(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x | u_input.a.x, func_3(Struct_4(71199i, u_input.a.yy, Struct_1(vec4<u32>(u_input.a.x, 37972u, 24844u, 0u), true, u_input.a.x)), u_input.a, Struct_4(u_input.b, vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(vec4<u32>(5087u, 4294967295u, 30327u, 1u), false, 4294967295u)), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 11265u), false, 33500u))), u_input.a.x, reverseBits(0u), 4607u), all(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 10u)], !global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(~u_input.a.x, 10u)], false)), 7471u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1103f))));
    let var_1 = Struct_3(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(410f))));
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, reverseBits(u_input.a.x), abs(var_0.a.a.x)), var_1.a.a), ~reverseBits(~var_1.a.a));
    let var_3 = Struct_1(select(~(~vec4<u32>(12968u, u_input.a.x, u_input.a.x, 0u)), firstTrailingBit(vec4<u32>(var_2.x, ~90044u, _wgslsmith_add_u32(28826u, 26733u), u_input.a.x)), select(select(select(vec4<bool>(var_1.a.b, var_1.a.b, false, true), vec4<bool>(var_0.a.b, var_1.a.b, false, var_0.a.b), vec4<bool>(global0[_wgslsmith_index_u32(19451u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], var_1.a.b, global0[_wgslsmith_index_u32(843u, 10u)])), vec4<bool>(false, var_1.a.b, var_0.a.b, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], false, false, true)), !(!vec4<bool>(global0[_wgslsmith_index_u32(12204u, 10u)], false, var_0.a.b, var_0.a.b)), vec4<bool>(false, var_0.a.b, any(vec2<bool>(global0[_wgslsmith_index_u32(64004u, 10u)], var_0.a.b)), !var_1.a.b))), true, _wgslsmith_mult_u32((var_0.a.a.x | max(57007u, 123861u)) >> (1u % 32u), ~(~(~u_input.a.x))));
    return Struct_4(max(2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-26795i << (u_input.a.x % 32u), u_input.c), 1i)), firstTrailingBit(~countOneBits(var_1.a.a.yy)), var_1.a);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(84587u, u_input.a.x);
    var var_1 = func_2();
    global0 = array<bool, 10>();
    let var_2 = !select(select(vec2<bool>(arg_2.c, any(vec4<bool>(arg_2.b, arg_2.c, false, true))), vec2<bool>(select(global0[_wgslsmith_index_u32(4294967295u, 10u)], true, global0[_wgslsmith_index_u32(arg_0, 10u)]), global0[_wgslsmith_index_u32(1u, 10u)]), true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 10u)], any(select(vec4<bool>(arg_2.b, var_1.c.b, arg_2.b, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<bool>(var_1.c.b, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 10u)], var_1.c.b, true, true)))), arg_2.c);
    let var_3 = var_1.b.x;
    return Struct_1(vec4<u32>(~(~4294967295u), 12568u, arg_0, var_1.b.x), u_input.a.x >= ~_wgslsmith_sub_u32(var_1.c.c | 61735u, 0u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(658f, -1419f)), _wgslsmith_f_op_f32(trunc(1f)))));
    var var_1 = ~(~u_input.a.x);
    var var_2 = true;
    var var_3 = ~(56332i | u_input.d);
    global0 = array<bool, 10>();
    var var_4 = global0[_wgslsmith_index_u32(~abs(1u), 10u)];
    var var_5 = Struct_3(func_1(_wgslsmith_mult_u32(4294967295u, u_input.a.x), vec2<i32>(countOneBits(u_input.d << (u_input.a.x % 32u)), abs(-1i)), Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(511f + var_0) + 1374f), global0[_wgslsmith_index_u32(u_input.a.x, 10u)], !(3285i <= u_input.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 407f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, var_0)) + 1340f) - var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-739f))), u_input.c, u_input.a);
}

