struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

var<private> global1: Struct_2 = Struct_2(Struct_1(false), vec4<bool>(false, true, false, false), -26748i, vec3<u32>(0u, 0u, 44109u), Struct_1(false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(all(vec3<bool>(false, any(arg_0.a), true))), select(vec4<bool>(true, true, false, arg_0.a.x), global1.b, vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, firstLeadingBit(global1.d.x)), 1u)], true, !all(vec3<bool>(global1.e.a, global1.b.x, false)), all(select(global1.b, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(69085u, 1u)], global1.b.x), vec4<bool>(global1.e.a, true, false, false))))), max(-min(_wgslsmith_add_i32(13240i, -2147483647i), u_input.a), firstLeadingBit(~(global1.c | u_input.a))), _wgslsmith_sub_vec3_u32(global1.d | min(~vec3<u32>(20161u, 4294967295u, 41850u), global1.d), countOneBits(u_input.c.wwx)), global1.a);
    global0 = array<bool, 1>();
    global1 = Struct_2(Struct_1(all(vec4<bool>(any(global1.b), u_input.c.x > 0u, false, true))), select(var_0.b, vec4<bool>(var_0.a.a, all(arg_0.a), false, any(select(var_0.b, vec4<bool>(var_0.b.x, global1.a.a, arg_0.a.x, false), var_0.b))), var_0.d.x < (~global1.d.x >> (0u % 32u))), select(_wgslsmith_mult_i32(~u_input.b.x, _wgslsmith_add_i32(countOneBits(global1.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-40699i, -1i, var_0.c), u_input.b))), 0i, all(select(!global1.b.xy, select(global1.b.zx, vec2<bool>(global1.e.a, var_0.e.a), global1.b.x), true))), reverseBits(_wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(global1.d, vec3<u32>(u_input.c.x, var_0.d.x, var_0.d.x)), vec3<u32>(1u, 1u, _wgslsmith_mult_u32(723u, u_input.c.x)))), Struct_1(false));
    var var_1 = reverseBits(u_input.b.xy);
    var var_2 = var_0.d.x;
    return !(!select(select(vec4<bool>(var_0.e.a, false, var_0.a.a, global1.b.x), var_0.b, var_0.b), !vec4<bool>(var_0.a.a, arg_0.a.x, var_0.b.x, false), vec4<bool>(true, true, var_0.a.a, global1.e.a)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = global1.c;
    var_0 = u_input.b.x;
    global1 = Struct_2(Struct_1(!arg_0.x), func_3(Struct_3(select(select(global1.b.ww, vec2<bool>(arg_1, false), vec2<bool>(arg_0.x, false)), vec2<bool>(false, global1.b.x), vec2<bool>(false, global1.e.a)))), -(~arg_2) & firstLeadingBit(~arg_2), ~vec3<u32>(~0u, global1.d.x, 0u), Struct_1(global0[_wgslsmith_index_u32(~countOneBits(~u_input.c.x), 1u)]));
    global1 = Struct_2(global1.e, vec4<bool>(u_input.b.x >= _wgslsmith_div_i32(arg_2, _wgslsmith_clamp_i32(-41323i, -2147483647i, u_input.a)), !(!arg_1), !(~global1.d.x > 1u), global0[_wgslsmith_index_u32(4294967295u, 1u)]), i32(-1i) * -7819i, global1.d, global1.a);
    let var_1 = Struct_1(!all(vec4<bool>(!arg_1, true, !global1.b.x, true)));
    return func_3(Struct_3(!global1.b.wy)).x;
}

fn func_1(arg_0: vec4<u32>) -> bool {
    return all(vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(global1.a.a, false, global1.a.a), true)), !(!(!global0[_wgslsmith_index_u32(arg_0.x, 1u)])), global0[_wgslsmith_index_u32(~u_input.c.x, 1u)], func_2(!global1.b.xxy, false, _wgslsmith_div_i32(u_input.a, -7178i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(1u), 0u, true);
    global0 = array<bool, 1>();
    var var_1 = Struct_3(vec2<bool>(func_1(~abs(u_input.c)), any(vec3<bool>(all(vec4<bool>(true, false, global1.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 1u)])), false, true))));
    global0 = array<bool, 1>();
    global1 = Struct_2(global1.a, global1.b, -_wgslsmith_clamp_i32(_wgslsmith_add_i32(33822i, abs(u_input.a)), u_input.a, _wgslsmith_mod_i32(0i, u_input.b.x) ^ -2147483647i), ~u_input.c.xyw, Struct_1(true));
    global1 = Struct_2(Struct_1(true), !global1.b, _wgslsmith_mult_i32(1i, global1.c), ~countOneBits(select(u_input.c.xww, u_input.c.xzw, global1.b.wxw)), global1.a);
    let var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(global1.d, 1151f, _wgslsmith_sub_vec4_u32(u_input.c, u_input.c) & (~u_input.c ^ vec4<u32>(0u, global1.d.x, 9699u, 24552u)), vec2<i32>(-2147483647i, select((i32(-1i) * -12172i) | global1.c, abs(1i), !(!global0[_wgslsmith_index_u32(global1.d.x, 1u)]))), _wgslsmith_f_op_f32(abs(-1000f)));
}

