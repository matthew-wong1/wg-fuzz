struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec4<bool>(false, true, false, false)), Struct_3(vec4<bool>(true, true, true, false)), Struct_3(vec4<bool>(false, true, false, true)), Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(false, false, false, true)), Struct_3(vec4<bool>(false, true, true, true)), Struct_3(vec4<bool>(true, true, true, true)), Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(true, false, false, true)), Struct_3(vec4<bool>(false, true, false, false)), Struct_3(vec4<bool>(false, true, true, true)), Struct_3(vec4<bool>(false, true, true, false)), Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(true, false, true, false)), Struct_3(vec4<bool>(true, false, true, true)), Struct_3(vec4<bool>(false, false, false, true)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 16u)];
    let var_1 = vec4<u32>(0u, _wgslsmith_clamp_u32(min(u_input.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 33752u, u_input.a, u_input.a), vec4<u32>(arg_0.x, u_input.c, u_input.a, 21139u))), 33175u, 78158u | _wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(9810u, u_input.a, arg_0.x))), _wgslsmith_sub_u32(1u, u_input.a), _wgslsmith_dot_vec2_u32(~arg_0.xx, arg_0.zz));
    global0 = array<Struct_3, 16>();
    return var_1.x >> (4294967295u % 32u);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(!arg_0.b.a);
    let var_1 = Struct_1(true);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(116f, -266f, false))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_3 = arg_0.b;
    var var_4 = 1348f;
    return arg_0.c;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32) -> Struct_3 {
    global0 = array<Struct_3, 16>();
    var var_0 = ~u_input.b.xzz;
    var_0 = vec3<i32>(1i, -(~(-10607i)), -(1i ^ u_input.b.x) | -2147483647i);
    var var_1 = !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !func_3(Struct_2(Struct_1(false), Struct_1(true), vec4<bool>(false, true, false, true)))));
    var_1 = true;
    return global0[_wgslsmith_index_u32(1u, 16u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 16u)];
    let var_1 = _wgslsmith_add_vec4_u32(~vec4<u32>((4294967295u & u_input.a) >> ((39111u | u_input.a) % 32u), u_input.a, ~_wgslsmith_add_u32(81966u, 8895u), min(~u_input.a, _wgslsmith_mult_u32(u_input.a, 1u))), _wgslsmith_add_vec4_u32(~(vec4<u32>(8281u, u_input.c, 0u, 31414u) & (vec4<u32>(1u, u_input.a, u_input.c, 14213u) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, 53140u) % vec4<u32>(32u)))), ~vec4<u32>(min(u_input.a, u_input.c), u_input.c, u_input.a ^ u_input.a, 0u)));
    global0 = array<Struct_3, 16>();
    var var_2 = any(arg_0.a.zx);
    let var_3 = select(_wgslsmith_clamp_u32(~4294967295u, 1u << (firstTrailingBit(u_input.a) % 32u), var_1.x), 1u, min(u_input.b.x, u_input.b.x) >= -24846i);
    return ~var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>((func_1(vec3<u32>(u_input.a, u_input.c, 1u) & vec3<u32>(1u, u_input.c, 4294967295u)) | func_4(func_2(60953u, 919f, u_input.a), func_2(4294967295u, -305f, u_input.c), Struct_2(Struct_1(false), Struct_1(true), vec4<bool>(false, false, true, false)), Struct_3(vec4<bool>(false, true, true, true)))) ^ ~(~abs(u_input.a)), ~u_input.c);
    let var_1 = !vec3<bool>(any(func_2(u_input.a, -1024f, _wgslsmith_div_u32(u_input.a, 8454u)).a.zyw), !(!all(vec2<bool>(false, false))), true);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1354f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-242f, -1018f), -1291f)) - -1040f))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1091f)), var_2)));
    var var_4 = vec4<bool>(var_1.x, select(var_1.x, var_1.x || (-u_input.b.x < -u_input.b.x), select(true, !all(var_1.xx), var_1.x)), abs(_wgslsmith_sub_i32(u_input.b.x >> (var_0.x % 32u), -2147483647i)) > (u_input.b.x ^ u_input.b.x), var_1.x);
    global0 = array<Struct_3, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_mult_i32(u_input.b.x & u_input.b.x, ~49233i), -u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -763f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(f32(-1f) * -2740f), var_3))), ~0i);
}

