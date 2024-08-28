struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, false, false, true, false, true, true, true, true, false, false, true, true, false, true, false, true, true, false, true, true, false, false, true, true, false, true, true, true, false, true);

var<private> global1: array<Struct_3, 12>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    global1 = array<Struct_3, 12>();
    var var_0 = abs(vec4<u32>(~(u_input.d.x ^ 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 1u, u_input.d.x), ~vec4<u32>(0u, 0u, 1u, u_input.c)), 13754u, u_input.b.x | u_input.b.x));
    global1 = array<Struct_3, 12>();
    var var_1 = global0[_wgslsmith_index_u32(select(var_0.x, ~(~0u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(95148u, var_0.x, var_0.x, var_0.x)), firstTrailingBit(vec4<u32>(4294967295u, var_0.x, var_0.x, 0u) ^ vec4<u32>(var_0.x, 89948u, var_0.x, var_0.x))), 50072u | var_0.x, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x, var_0.x, 72662u), 3596u)), 31u)]), 31u)];
    global1 = array<Struct_3, 12>();
    return abs(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(u_input.a, -1i, -1i), u_input.a | u_input.a)), max(vec2<i32>(540i, u_input.a) & firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(~1i, ~(-73524i)))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = ~u_input.d;
    global1 = array<Struct_3, 12>();
    global0 = array<bool, 31>();
    let var_1 = Struct_1(-454f, firstTrailingBit(_wgslsmith_mod_vec2_i32(-func_3(-1180f), abs(-vec2<i32>(u_input.a, u_input.a)))), -13132i, _wgslsmith_add_u32(min(_wgslsmith_div_u32(arg_0, ~u_input.c), firstLeadingBit(var_0.x)), 1u), !(true | !(arg_1.x && false)));
    let var_2 = Struct_3(~(-_wgslsmith_div_vec4_i32(-vec4<i32>(-6759i, u_input.a, 2147483647i, var_1.b.x), vec4<i32>(var_1.b.x, -12561i, 0i, var_1.b.x))), u_input.a);
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = select(select(!vec4<bool>(true, !global0[_wgslsmith_index_u32(45409u, 31u)], true, global0[_wgslsmith_index_u32(0u, 31u)] && arg_1), !select(select(vec4<bool>(arg_1, global0[_wgslsmith_index_u32(4294967295u, 31u)], arg_2.e, global0[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.d, 31u)], true, arg_1, arg_2.e), true), vec4<bool>(false, arg_1, false, arg_1), arg_2.e | false), !(!select(vec4<bool>(arg_1, false, false, false), vec4<bool>(arg_1, arg_2.e, true, arg_2.e), arg_2.e))), select(!func_2(4294967295u, !vec4<bool>(arg_2.e, global0[_wgslsmith_index_u32(20881u, 31u)], true, arg_1)), func_2(_wgslsmith_clamp_u32(~40982u, 4294967295u, u_input.b.x), !select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.d, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)], true, global0[_wgslsmith_index_u32(arg_2.d, 31u)]), vec4<bool>(arg_1, arg_2.e, arg_1, arg_2.e), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.d, 31u)], true, true, global0[_wgslsmith_index_u32(11334u, 31u)]))), any(select(vec2<bool>(arg_2.e, false), select(vec2<bool>(true, arg_2.e), vec2<bool>(global0[_wgslsmith_index_u32(arg_2.d, 31u)], arg_2.e), global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), vec2<bool>(arg_1, false)))), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, 4294967295u ^ u_input.d.x), 31u)] && (firstLeadingBit(arg_2.b.x << (0u % 32u)) != reverseBits(arg_2.c)));
    global0 = array<bool, 31>();
    var_0 = !vec4<bool>(any(vec4<bool>(all(vec4<bool>(false, arg_1, false, arg_2.e)), true, !arg_1, true)), false, false, func_2(18463u, func_2(1u, vec4<bool>(true, true, true, arg_1))).x);
    global1 = array<Struct_3, 12>();
    var_0 = !(!select(!func_2(u_input.b.x, vec4<bool>(arg_1, arg_1, global0[_wgslsmith_index_u32(u_input.c, 31u)], true)), func_2(~14094u, select(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(arg_2.d, 31u)], true, global0[_wgslsmith_index_u32(42263u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.d, 31u)], var_0.x, true, true), true)), any(vec3<bool>(false, arg_2.e, arg_2.e))));
    return !(!vec2<bool>(true, arg_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 12>();
    let var_0 = all(select(vec2<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)])), !(!global0[_wgslsmith_index_u32(0u, 31u)])), vec2<bool>(true, !global0[_wgslsmith_index_u32(u_input.c, 31u)]), !select(func_1(-286f, global0[_wgslsmith_index_u32(0u, 31u)], Struct_1(634f, vec2<i32>(u_input.a, 2147483647i), u_input.a, 97282u, true)), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), !global0[_wgslsmith_index_u32(u_input.b.x, 31u)])));
    var var_1 = 690f;
    global0 = array<bool, 31>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-2494f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-252f)), _wgslsmith_f_op_f32(f32(-1f) * -403f), global0[_wgslsmith_index_u32(15669u, 31u)]))), ~abs(min(select(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a), false), vec2<i32>(u_input.a, -56660i) | vec2<i32>(2147483647i, u_input.a))), u_input.a, 1u, any(!vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], false, var_0, true)), true)));
    var_2 = Struct_1(var_2.a, vec2<i32>(u_input.a, u_input.a), ~29814i, u_input.c, all(vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(265f)), ~u_input.b);
}

