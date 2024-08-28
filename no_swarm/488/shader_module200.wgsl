struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<i32>) -> i32 {
    let var_0 = arg_2.x;
    var var_1 = ~_wgslsmith_div_u32(~countOneBits(abs(u_input.a.x)), u_input.a.x);
    var var_2 = global0[_wgslsmith_index_u32(min(countOneBits(u_input.a.x & abs(u_input.a.x >> (1u % 32u))), 12902u), 4u)];
    let var_3 = 0i | var_0;
    var var_4 = _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x);
    return -u_input.b.x;
}

fn func_3() -> bool {
    let var_0 = Struct_1(0i);
    global0 = array<Struct_1, 4>();
    global1 = array<vec2<bool>, 16>();
    global1 = array<vec2<bool>, 16>();
    var var_1 = ~u_input.b.x;
    return true;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~((_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(22121u, u_input.a.x, 47611u, 4294967295u), vec4<u32>(u_input.a.x, 81505u, u_input.a.x, u_input.a.x))) << (u_input.a.x % 32u)) | 1u), 4u)];
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(1u), 4u)];
    var var_2 = any(vec4<bool>(func_3(), arg_1, all(vec4<bool>(true, arg_1, arg_1, arg_1)) | true, true));
    var_2 = arg_1;
    var var_3 = u_input.a.x;
    return arg_2;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32) -> StorageBuffer {
    global1 = array<vec2<bool>, 16>();
    let var_0 = false;
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(abs(~select(vec4<i32>(arg_0.x, -21583i, u_input.b.x, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -2147483647i), false)), -reverseBits(vec4<i32>(arg_0.x, -2147483647i, 2147483647i, arg_0.x) ^ vec4<i32>(arg_0.x, u_input.b.x, 48355i, -2147483647i))));
    let var_2 = ~(u_input.a.x >> (18180u % 32u));
    var_1 = Struct_1(_wgslsmith_sub_i32(-firstTrailingBit(~var_1.a), _wgslsmith_add_i32(abs(u_input.b.x), -var_1.a)));
    return StorageBuffer(_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_2), vec3<u32>(var_2, u_input.a.x, 32745u)), vec3<u32>(var_2, 29515u, u_input.a.x)), ~firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2, 0u, 72285u), vec3<u32>(u_input.a.x, u_input.a.x, var_2)))), arg_0.x, ~countOneBits(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1206f;
    global1 = array<vec2<bool>, 16>();
    var var_1 = 141f;
    global0 = array<Struct_1, 4>();
    let var_2 = var_0;
    var var_3 = Struct_1(2147483647i);
    global1 = array<vec2<bool>, 16>();
    let x = u_input.a;
    s_output = func_4(reverseBits(vec2<i32>(min(func_1(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], vec4<bool>(true, true, true, true), vec4<i32>(u_input.b.x, -1i, -1i, 2147483647i)), _wgslsmith_clamp_i32(var_3.a, -24243i, -10216i)), _wgslsmith_mod_i32(~u_input.b.x, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(var_0, true, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1249f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(860f * -545f)))));
}

