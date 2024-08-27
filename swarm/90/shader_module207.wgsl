struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 28>;

var<private> global2: array<vec4<i32>, 15>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> u32 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(arg_1);
    global1 = array<f32, 28>();
    global1 = array<f32, 28>();
    global2 = array<vec4<i32>, 15>();
    return u_input.a | (u_input.a | 15158u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = array<vec4<i32>, 15>();
    global0 = !vec4<bool>(global0.x, !(func_3(Struct_1(5988i), 21274i, vec3<f32>(361f, global1[_wgslsmith_index_u32(25925u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)])) < 1u), arg_0 > firstLeadingBit(u_input.a), false);
    let var_0 = global1[_wgslsmith_index_u32(~max(1u, 51241u), 28u)];
    global1 = array<f32, 28>();
    let var_1 = -vec2<i32>(-1i, abs(~_wgslsmith_mod_i32(43106i, -39024i)));
    return Struct_1(_wgslsmith_mult_i32(var_1.x, ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1.x, var_1.x, var_1.x), abs(var_1.x))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global2 = array<vec4<i32>, 15>();
    let var_0 = func_2(1u);
    let var_1 = 26708u & _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, u_input.a))), ~vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.a, 117794u), min(1u, u_input.a)));
    global2 = array<vec4<i32>, 15>();
    var var_2 = Struct_1(2147483647i);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-(~1i));
    let var_1 = var_0;
    let var_2 = func_1(global0.yzw);
    var var_3 = firstTrailingBit(-func_2(~(~u_input.a)).a);
    var var_4 = false | any(!select(!vec4<bool>(global0.x, true, true, true), !vec4<bool>(true, global0.x, true, global0.x), global1[_wgslsmith_index_u32(u_input.a, 28u)] > -1195f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_f32(-808f - -333f)))) - global1[_wgslsmith_index_u32(~u_input.a, 28u)]), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, u_input.a) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(71343u, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~(21391u << (u_input.a % 32u))), vec2<u32>(u_input.a >> (u_input.a % 32u), max(_wgslsmith_add_u32(1u, ~u_input.a), min(u_input.a, 30215u) | ~0u)));
}

