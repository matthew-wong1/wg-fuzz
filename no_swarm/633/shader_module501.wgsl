struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(155f)));
    var var_1 = arg_0;
    var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(ceil(-426f))))));
    return _wgslsmith_mult_u32(min(_wgslsmith_mod_u32(65895u, 4294967295u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(28110u, ~66565u, ~0u), _wgslsmith_mult_u32(1u, 1u))), ~27787u);
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    global0 = array<Struct_1, 31>();
    var var_0 = global0[_wgslsmith_index_u32(~func_3(global0[_wgslsmith_index_u32(3737u, 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-559f, 839f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1569f, -292f, 278f, 2088f))), vec4<f32>(1f, 1f, 1f, 1f)) * vec4<f32>(_wgslsmith_f_op_f32(min(554f, 1106f)), _wgslsmith_f_op_f32(trunc(-257f)), _wgslsmith_f_op_f32(sign(349f)), _wgslsmith_f_op_f32(f32(-1f) * -1380f))), firstLeadingBit(~1u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30222u, 28911u), firstLeadingBit(vec3<u32>(0u, 0u, 0u)))), 31u)];
    global0 = array<Struct_1, 31>();
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~countOneBits(67589u)), 16000u), 31u)];
    global0 = array<Struct_1, 31>();
    return max(-2147483647i, 1i);
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 31>();
    var var_0 = firstLeadingBit(~_wgslsmith_mod_i32(~func_2(vec2<bool>(true, false)), ~(-2147483647i)));
    var_0 = max(max(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b.x, u_input.b.x, 0i), vec3<i32>(u_input.b.x, -14235i, 2147483647i), true), select(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), vec3<i32>(6917i, u_input.b.x, u_input.a.x), vec3<bool>(true, false, true))), ~(~u_input.b.x)), u_input.a.x), _wgslsmith_div_i32(-_wgslsmith_mult_i32(max(u_input.a.x, u_input.a.x), _wgslsmith_clamp_i32(-1i, 26467i, -16454i)), 0i));
    let var_1 = -1652f;
    var_0 = -39240i;
    return ~_wgslsmith_div_i32(abs(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.a.x)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(-1487f));
    var var_1 = vec3<i32>(reverseBits(func_1()) ^ u_input.a.x, u_input.b.x, u_input.a.x);
    let var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(firstTrailingBit(select(var_1.x, -39886i, true)), u_input.a.x, ~_wgslsmith_div_i32(u_input.b.x, 3851i), ~(-var_1.x)), -u_input.a);
    let var_3 = global0[_wgslsmith_index_u32(27266u, 31u)];
    let var_4 = reverseBits(1u);
    let var_5 = all(vec4<bool>(!(1u < var_4) || !(var_4 >= 17680u), false, all(vec4<bool>(any(vec3<bool>(true, true, true)), select(false, true, true), any(vec4<bool>(false, true, true, false)), true)), _wgslsmith_f_op_f32(sign(var_0)) != _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(min(138f, var_3.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_i32(-firstLeadingBit(-2147483647i), 1i)), 48894u);
}

