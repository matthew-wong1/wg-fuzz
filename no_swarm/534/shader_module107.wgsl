struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<bool, 31> = array<bool, 31>(true, false, false, false, false, false, false, false, false, true, false, false, true, true, false, false, true, false, false, true, true, true, true, false, true, true, true, true, false, true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_1(!select(select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 31u)]), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(18950u, 31u)]))), vec2<bool>(global1[_wgslsmith_index_u32(10528u, 31u)], all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], true))), false));
    global0 = array<Struct_1, 13>();
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    global0 = array<Struct_1, 13>();
    return var_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> i32 {
    let var_0 = Struct_1(arg_0.a);
    let var_1 = !vec3<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(3734u, u_input.e.x, u_input.c.x, 75394u), ~vec4<u32>(u_input.c.x, 4294967295u, 8543u, 8460u)), 31u)], false, all(select(vec2<bool>(true, true), var_0.a, false)));
    let var_2 = Struct_1(select(var_0.a, func_1(), var_0.a.x | var_0.a.x));
    global1 = array<bool, 31>();
    var var_3 = var_0;
    return u_input.b;
}

fn func_2() -> vec2<bool> {
    let var_0 = min(max(-8921i, u_input.d.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.d.x, func_3(Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(0u, 31u)], false)), _wgslsmith_f_op_f32(-248f + 1640f), true), ~(-41703i)), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.b, u_input.b)))));
    var var_1 = abs(~(~(~25928i)));
    var var_2 = 5015u;
    var var_3 = ~(~min(u_input.a.zy, u_input.a.yx));
    var_2 = u_input.e.x;
    return !(!(!select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(var_3.x, 31u)]), true), !vec2<bool>(true, global1[_wgslsmith_index_u32(68244u, 31u)]), global1[_wgslsmith_index_u32(1081u, 31u)] && global1[_wgslsmith_index_u32(u_input.c.x, 31u)])));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(23376u, 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1766f, 1245f))) != 409f));
    let var_1 = Struct_1(select(!select(vec2<bool>(true, true), select(var_0.a, vec2<bool>(arg_0.a.x, global1[_wgslsmith_index_u32(22647u, 31u)]), var_0.a), true), var_0.a, var_0.a));
    var var_2 = reverseBits(vec4<u32>(~(abs(12365u) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, 21239u, arg_1.x), arg_1)), arg_1.x, 4294967295u, countOneBits(arg_1.x)));
    var var_3 = u_input.d;
    let var_4 = vec4<bool>(any(vec3<bool>(false | any(vec2<bool>(var_1.a.x, false)), all(!arg_0.a), true)), true, true, global1[_wgslsmith_index_u32(26632u, 31u)]);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.c.x, 31u)], true), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 31u)], global1[_wgslsmith_index_u32(u_input.e.x, 31u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 31u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 31u)], false), global1[_wgslsmith_index_u32(45683u, 31u)]), false))), select(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 31u)], all(vec2<bool>(true, true))), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x << (_wgslsmith_mult_u32(83778u, 0u) % 32u), 31u)], any(select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], true), vec2<bool>(false, false)))), !select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 31u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 31u)], true), false), select(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], false), vec2<bool>(true, true)), select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 31u)]), vec2<bool>(global1[_wgslsmith_index_u32(3334u, 31u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], true)))), select(vec2<bool>(u_input.d.x < _wgslsmith_sub_i32(0i, u_input.b), !(0i >= u_input.b)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(!global1[_wgslsmith_index_u32(u_input.e.x, 31u)], true), select(func_1(), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], true), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(0u, 31u)])), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 31u)]))));
    var var_1 = func_4(Struct_1(!func_2()), vec4<u32>(0u, 0u, _wgslsmith_mod_u32(~3280u, ~41861u) >> (u_input.c.x % 32u), ~(~(~u_input.a.x))));
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var_1 = global0[_wgslsmith_index_u32(abs(11289u), 13u)];
    var_1 = global0[_wgslsmith_index_u32(~(~select(u_input.a.x, 1u, var_1.a.x) & select(_wgslsmith_clamp_u32(64699u, 0u, 59581u), u_input.e.x >> (abs(40440u) % 32u), true)), 13u)];
    var var_2 = ~vec2<i32>(u_input.b, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(328f);
}

