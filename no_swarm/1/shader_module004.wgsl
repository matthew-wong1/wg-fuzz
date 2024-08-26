struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: bool) -> i32 {
    var var_0 = all(select(vec2<bool>(true, true), !vec2<bool>(!arg_2, !arg_1), false));
    let var_1 = select(!vec3<bool>(arg_1, all(vec4<bool>(false, false, arg_1, true)), false), !vec3<bool>(true, true, arg_1), vec3<bool>(false, select(!arg_1, true, false) || false, true));
    var var_2 = Struct_1(~_wgslsmith_clamp_vec2_i32(select(-vec2<i32>(0i, 41593i), vec2<i32>(-1i, -9676i), arg_2), vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(max(vec2<i32>(5682i, 29759i), vec2<i32>(-1i, 1i)), -vec2<i32>(-17846i, 2147483647i))));
    var var_3 = vec2<f32>(-785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_4 = Struct_1(abs(_wgslsmith_mult_vec2_i32(min(vec2<i32>(0i, var_2.a.x), var_2.a), vec2<i32>(var_2.a.x, var_2.a.x))));
    return var_2.a.x;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = !vec4<bool>(false, false, -func_3(vec3<u32>(u_input.b, u_input.b, u_input.a.x), true, false) > 42330i, !(!all(vec2<bool>(false, true))));
    var var_1 = max(countOneBits(~max(vec3<u32>(16527u, 4294967295u, 0u), vec3<u32>(u_input.b, 60971u, 1u)) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 110151u, u_input.b), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b))), select(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 12890u), vec3<u32>(21589u, 10628u, 0u)), ~abs(vec3<u32>(49953u, 4294967295u, u_input.a.x))), vec3<u32>(u_input.b ^ 1u, 1u, min(u_input.a.x, 11062u)) >> (vec3<u32>(max(13913u, u_input.a.x), 21229u, u_input.b) % vec3<u32>(32u)), any(vec4<bool>(var_0.x, true, !var_0.x, var_0.x))));
    var_1 = abs(vec3<u32>(69107u, ~1u, u_input.b));
    var_1 = reverseBits(reverseBits(abs(vec3<u32>(1u, u_input.b, ~u_input.b))));
    var_1 = ~(~(min(~vec3<u32>(1u, 0u, 14530u), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, var_1.x, 15678u), vec3<u32>(var_1.x, 8250u, 1u))) ^ ~vec3<u32>(var_1.x, 4294967295u, u_input.a.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(869f + 1899f))))));
}

fn func_4(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))))))));
    let var_1 = ~vec3<u32>(9153u, _wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(u_input.a.x, 0u)), 30442u);
    var var_2 = vec3<bool>(false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-787f)))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - 224f), -645f))), _wgslsmith_mult_u32(~(~u_input.b), u_input.b) > min(~_wgslsmith_mod_u32(var_1.x, var_1.x), u_input.b));
    var var_3 = false;
    let var_4 = ~vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_1, var_1), var_1.x), 60925u);
    return Struct_1(select(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-11305i, -56970i, 11884i) << (var_1 % vec3<u32>(32u)))), ~(~vec2<i32>(-1i, -2147483647i)), true));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(383f, 755f, _wgslsmith_f_op_f32(-837f - -200f) > _wgslsmith_f_op_f32(round(706f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f + _wgslsmith_f_op_f32(func_2(arg_2))) + _wgslsmith_f_op_f32(227f - _wgslsmith_f_op_f32(472f * -111f))))));
    var var_1 = func_4(_wgslsmith_f_op_f32(-1332f + -1509f), _wgslsmith_f_op_f32(sign(-715f)));
    var var_2 = arg_1.x;
    let var_3 = func_4(-521f, _wgslsmith_f_op_f32(715f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f))));
    let var_4 = arg_2;
    return Struct_1(min(var_3.a, vec2<i32>(~(-37603i), 1i) & ((vec2<i32>(-1i, var_0.a.x) << (vec2<u32>(arg_1.x, arg_1.x) % vec2<u32>(32u))) & vec2<i32>(2147483647i, -2147483647i))));
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = ~(~(max(vec4<u32>(u_input.a.x, 47473u, u_input.a.x, u_input.b), vec4<u32>(91439u, u_input.a.x, u_input.b, 106540u)) << (vec4<u32>(47872u, u_input.b, 65170u, u_input.a.x) % vec4<u32>(32u)))) | (_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x, 4294967295u, 2446u & u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 12482u), vec3<u32>(u_input.b, 68061u, 1u))), vec4<u32>(u_input.b ^ 4294967295u, ~u_input.a.x, 1u, max(47921u, u_input.b))) ^ ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 1u, u_input.b), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_1 = u_input.a.x;
    var var_2 = Struct_1(~max(~abs(arg_0.a), (arg_0.a | vec2<i32>(0i, arg_0.a.x)) & func_4(-384f, 1406f).a));
    var_2 = arg_0;
    let var_3 = vec2<bool>(true, !all(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, false))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2146f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1193f + -1098f)))) * _wgslsmith_f_op_f32(504f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(400f - -1000f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-1077f * -1287f), any(var_3))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(500f * 648f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(498f, 318f)) * _wgslsmith_f_op_f32(1068f * 1916f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1949f, 1380f)) - -1463f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1052f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(func_1(true, vec2<u32>(0u, 4294967295u), Struct_1(vec2<i32>(2147483647i, 1i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-514f, -364f)) - 993f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -468f))) - 739f)), 605f, 7354i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(198f)), _wgslsmith_f_op_f32(856f * 1000f), _wgslsmith_div_f32(-1122f, 999f), _wgslsmith_f_op_f32(f32(-1f) * -475f)))))), _wgslsmith_clamp_vec3_i32(max(~vec3<i32>(18662i, -1i, 966i) << (~vec3<u32>(u_input.b, u_input.a.x, u_input.b) % vec3<u32>(32u)), select(vec3<i32>(-2147483647i, -12124i, 12494i), -vec3<i32>(8520i, 0i, 190i), vec3<bool>(false, true, false))), vec3<i32>(-2147483647i, abs(2147483647i), -_wgslsmith_add_i32(-32757i, 0i)), vec3<i32>(1i, 1i, 1i)));
}

