struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(335f, 1000f, -1000f, 1122f, -1583f, -297f, 1068f, 626f, -464f, -106f, -1067f, 1000f, 1480f, -1801f, 931f, 867f, 240f, 756f, -631f, -1092f, 846f, -831f, -214f, -339f, 1184f, 1000f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let var_0 = Struct_1(~1u);
    var var_1 = vec2<bool>((u_input.a << (4294967295u % 32u)) < -_wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, u_input.a), ~u_input.a), true);
    return -1268f;
}

fn func_2() -> Struct_1 {
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(1u), global0[_wgslsmith_index_u32(30095u, 26u)]))))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3071u, 82750u, 27730u, 16506u), vec4<u32>(0u, 15960u, 0u, 6025u)), 19000u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(53066u, 48033u, 57930u))), 26u)])) * global0[_wgslsmith_index_u32(~1u, 26u)]);
    let var_2 = vec2<bool>(all(!vec2<bool>(any(vec4<bool>(true, true, false, false)), u_input.a == 1i)), true);
    var_0 = _wgslsmith_clamp_u32(82668u, ~countOneBits(1u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(6193u, 2934u), reverseBits(0u)), countOneBits(_wgslsmith_add_u32(1u, 33799u)))) & ~1u;
    return Struct_1(abs(~_wgslsmith_dot_vec2_u32(~vec2<u32>(47370u, 1u), vec2<u32>(67945u, 62880u))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = ~(~4294967295u);
    var_0 = countOneBits(4294967295u);
    let var_1 = !(true || !(true || (u_input.a != arg_3)));
    var_0 = ~_wgslsmith_dot_vec2_u32(~(vec2<u32>(arg_1.a, 4294967295u) ^ (vec2<u32>(arg_1.a, arg_1.a) | vec2<u32>(arg_1.a, arg_1.a))), vec2<u32>(_wgslsmith_sub_u32(func_2().a, 1u), ~(~arg_1.a)));
    global0 = array<f32, 26>();
    return Struct_1(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(35640u, 0u, arg_1.a, arg_1.a), vec4<u32>(0u, arg_1.a, 0u, arg_1.a)))));
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 26>();
    let var_0 = func_4(-671f, func_2(), vec3<i32>(-reverseBits(u_input.a) | -30673i, u_input.a, u_input.a), _wgslsmith_mult_i32(firstTrailingBit(u_input.a), u_input.a) >> (0u % 32u));
    var var_1 = !(~(-(~1i)) > (u_input.a | firstTrailingBit(firstTrailingBit(u_input.a))));
    var var_2 = ~u_input.a;
    var var_3 = var_0;
    return Struct_1(var_3.a & ~(~func_4(116f, Struct_1(var_3.a), vec3<i32>(22244i, u_input.a, u_input.a), u_input.a).a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 26>();
    let var_0 = true;
    let var_1 = 1177f;
    var var_2 = vec3<bool>(false, !all(vec2<bool>(var_0, var_0)) && true, !(true || !var_0));
    global0 = array<f32, 26>();
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_clamp_i32(44021i, -10298i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, 2147483647i), vec3<i32>(1i, u_input.a, u_input.a))), 1i));
}

