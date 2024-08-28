struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>) -> u32 {
    global0 = array<u32, 14>();
    global1 = array<vec2<bool>, 23>();
    let var_0 = vec4<bool>(true, any(select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.d.x, 23u)], false)), false, (~(u_input.d.x << (31167u % 32u)) < u_input.d.x) != false);
    var var_1 = -1i;
    global1 = array<vec2<bool>, 23>();
    return firstLeadingBit(u_input.a.x) >> (38917u % 32u);
}

fn func_3() -> i32 {
    global1 = array<vec2<bool>, 23>();
    global1 = array<vec2<bool>, 23>();
    return -1i;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> StorageBuffer {
    var var_0 = (_wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, arg_1.a), u_input.c) & _wgslsmith_dot_vec4_i32(vec4<i32>(28727i, func_3(), arg_1.a | u_input.c, 9925i), vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c) >> (~vec4<u32>(61824u, arg_0, u_input.a.x, 1u) % vec4<u32>(32u)))) != u_input.c;
    var var_1 = vec4<u32>(_wgslsmith_div_u32(arg_0, min(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 46297u) << ((global0[_wgslsmith_index_u32(1u, 14u)] >> (81873u % 32u)) % 32u), 14u)], 0u)), global0[_wgslsmith_index_u32(u_input.d.x, 14u)], _wgslsmith_div_u32(1u, 4130u), min(countOneBits(reverseBits(~62202u)), 4919u));
    var var_2 = Struct_1(-arg_1.a, arg_1.b);
    var var_3 = ~arg_2;
    global0 = array<u32, 14>();
    return StorageBuffer(~_wgslsmith_dot_vec4_i32(select(max(vec4<i32>(arg_1.a, u_input.c, -23766i, var_2.a), vec4<i32>(-23287i, 0i, -37414i, arg_1.a)), vec4<i32>(0i, 1i, u_input.c, -1i), true), vec4<i32>(-arg_1.a, var_2.a | var_2.a, u_input.c, -1i)), max(vec3<i32>(_wgslsmith_add_i32(-20890i, var_2.a) & -44658i, 29442i, _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -1i, 19865i), vec3<i32>(arg_1.a, arg_1.a, u_input.c) & vec3<i32>(arg_1.a, arg_1.a, 0i))), vec3<i32>(-16045i, 1i, ~u_input.c)), global0[_wgslsmith_index_u32(1u, 14u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~select(func_1(vec3<f32>(1149f, -511f, 724f), vec2<f32>(-236f, -1704f)), 1u, true), global0[_wgslsmith_index_u32(~select(global0[_wgslsmith_index_u32(38968u, 14u)], 64382u, false) >> (global0[_wgslsmith_index_u32(u_input.a.x, 14u)] % 32u), 14u)]) < 8303u;
    let var_1 = Struct_1(-u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-324f, 1000f)))));
    let x = u_input.a;
    s_output = func_2(~1u & _wgslsmith_mult_u32(u_input.b, _wgslsmith_clamp_u32(1u << (1u % 32u), 25497u, 1u)), var_1, reverseBits(_wgslsmith_add_u32(abs(firstTrailingBit(u_input.b)), ~_wgslsmith_clamp_u32(10613u, global0[_wgslsmith_index_u32(94906u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37643u, 14u)], 14u)]))));
}

