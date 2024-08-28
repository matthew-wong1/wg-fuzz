struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = countOneBits(_wgslsmith_clamp_vec2_i32(max(reverseBits(vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(u_input.a, u_input.a)) | (vec2<i32>(1i, -39019i) & abs(vec2<i32>(1i, u_input.a))), -vec2<i32>(_wgslsmith_sub_i32(47036i, u_input.a), u_input.a), ~countOneBits(vec2<i32>(u_input.a, -36203i) & vec2<i32>(u_input.a, 2147483647i))));
    let var_1 = Struct_2(false);
    let var_2 = Struct_1(-1355f, abs(vec2<u32>(~(~0u), _wgslsmith_div_u32(~10158u, firstLeadingBit(37042u)))));
    let var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_2.a, var_2.a)), _wgslsmith_div_f32(1070f, 1026f))))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)) + var_2.a);
    return min(var_2.b.x, ~1u);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-462f + 140f)), vec2<u32>(4294967295u, func_3(Struct_2(false), Struct_2(true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    global0 = false;
    let var_0 = vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(77830u), ~arg_0.b.x, 48866u, arg_0.b.x), ~(~vec4<u32>(4294967295u, 29161u, arg_0.b.x, 1u))), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.b.x, arg_0.b.x) >> (_wgslsmith_sub_vec2_u32(select(vec2<u32>(4294967295u, 14409u), arg_0.b, vec2<bool>(false, true)), select(arg_0.b, vec2<u32>(arg_0.b.x, arg_0.b.x), true)) % vec2<u32>(32u)), firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b.x, 1u), arg_0.b)))), arg_0.b.x);
    var var_1 = arg_1;
    var_1 = Struct_2(firstLeadingBit(~_wgslsmith_sub_u32(45118u, 0u)) > var_0.x);
    let var_2 = arg_1.a;
    return arg_0.a;
}

fn func_1() -> bool {
    var var_0 = Struct_2(false);
    var var_1 = ~(~1u);
    let var_2 = !(!vec3<bool>(var_0.a, !all(vec2<bool>(true, var_0.a)), var_0.a));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1252f, -162f, 467f)))), Struct_2(1i < _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(383f))))) + _wgslsmith_f_op_f32(func_4(Struct_1(-1517f, ~vec2<u32>(0u, 27394u)), Struct_2(var_2.x)))));
    global0 = -4137i >= _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a & _wgslsmith_dot_vec2_i32(vec2<i32>(4377i, 26384i), vec2<i32>(u_input.a, u_input.a)), 2147483647i), _wgslsmith_sub_i32(u_input.a, ~u_input.a));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !((-3070f != _wgslsmith_f_op_f32(floor(1566f))) | true) && any(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), func_1(), ~82792u < _wgslsmith_dot_vec3_u32(vec3<u32>(55245u, 1u, 27447u), vec3<u32>(27997u, 3151u, 66268u))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-176f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(820f - 1212f))))), vec2<u32>(~0u, 1u));
    var_0 = Struct_1(-551f, reverseBits(select(abs(var_0.b), var_0.b, true)));
    let var_1 = -vec2<i32>(-_wgslsmith_add_i32(min(-15602i, 6280i), ~u_input.a), min(u_input.a, u_input.a));
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1837f), vec2<u32>(var_0.b.x, ~var_0.b.x) & reverseBits(var_0.b));
    var var_2 = Struct_1(var_0.a, ~_wgslsmith_sub_vec2_u32(min(~var_0.b, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x), vec2<u32>(1u, 0u))), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x), var_0.b)));
    var var_3 = !select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.a) >= var_1.x, true), !(44648i == ~u_input.a));
    var_3 = !(!select(!vec2<bool>(true, var_3.x), select(vec2<bool>(var_3.x, false), select(vec2<bool>(false, true), vec2<bool>(var_3.x, false), vec2<bool>(false, false)), !var_3.x), var_3.x || false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~0i), 2147483647i, abs(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_1.x, 2147483647i), vec3<i32>(549i, u_input.a, u_input.a)), firstLeadingBit(0i))), ~_wgslsmith_mult_i32(u_input.a, 0i) >> (var_0.b.x % 32u)));
}

