struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<i32>) -> vec2<i32> {
    var var_0 = vec2<bool>(!all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)), abs(arg_1.x) > _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), arg_1.zy), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 60607u, arg_1.x, u_input.b.x), vec4<u32>(106100u, arg_1.x, u_input.b.x, u_input.b.x))), u_input.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.b.x), u_input.b)));
    let var_1 = var_0.x;
    return _wgslsmith_div_vec2_i32(select(~vec2<i32>(-2147483647i, arg_0.a.x), vec2<i32>(-2147483647i, 18924i), select(!(!vec2<bool>(true, var_0.x)), select(vec2<bool>(var_0.x, false), !vec2<bool>(var_0.x, var_0.x), false), !(!vec2<bool>(true, var_0.x)))), arg_2.zy);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(func_3(Struct_1(vec2<i32>(arg_0.x, -1i), -989f), vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.a), vec3<i32>(58860i, -18944i, 1i)) ^ ~arg_0, _wgslsmith_mult_vec2_i32(select(arg_0, vec2<i32>(2147483647i, 0i), vec2<bool>(false, true)), abs(arg_0))), -_wgslsmith_clamp_vec2_i32(firstTrailingBit(arg_0), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, arg_0.x), vec2<i32>(-11862i, -25694i)), arg_0)), _wgslsmith_f_op_f32(-arg_1.x));
    let var_1 = !all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), true));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_1.zx);
    let var_3 = -(~(~vec2<i32>(~(-2147483647i), -var_0.a.x)));
    var var_4 = !(!(!select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, var_1, false), var_1), !vec3<bool>(var_1, true, var_1), false)));
    return vec3<bool>(var_1, 1u == ~(u_input.a >> (~46282u % 32u)), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    return Struct_1(-vec2<i32>(1i, i32(-1i) * -25974i), _wgslsmith_f_op_f32(arg_2 + arg_2));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = 1f;
    let var_1 = func_4(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), u_input.b.x <= ~arg_0.x), vec4<bool>(!(1000f <= arg_3), any(vec3<bool>(true, false, false)), !any(vec3<bool>(false, true, true)), true), vec4<bool>(true, true, true, _wgslsmith_f_op_f32(-1596f * arg_2.b) > 1362f)), !func_2(arg_2.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3, -1211f, 359f, 1049f), vec4<f32>(arg_2.b, arg_3, 351f, 1289f), true))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -319f))))));
    let var_2 = u_input.b;
    var_0 = arg_3;
    let var_3 = vec4<u32>(~(_wgslsmith_clamp_u32(~var_2.x, 74458u, u_input.b.x) >> (firstTrailingBit(~var_2.x) % 32u)), _wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(arg_0.x, var_2.x, var_2.x) << (vec3<u32>(max(73875u, var_2.x), 59462u, var_2.x) % vec3<u32>(32u))), arg_0.x, ~36098u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b + 413f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1000f))));
    var var_1 = Struct_1(select(~(~select(vec2<i32>(1i, 0i), vec2<i32>(-2147483647i, -1i), vec2<bool>(false, false))), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(-5801i, -1i), vec2<i32>(12018i, -51634i)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(abs(~vec2<u32>(4294967295u, 79558u)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(1333i, -4165i)), firstLeadingBit(vec2<i32>(7386i, 0i))), Struct_1(vec2<i32>(-2147483647i, 41046i), _wgslsmith_f_op_f32(abs(-703f))), _wgslsmith_f_op_f32(f32(-1f) * -266f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-646f * _wgslsmith_f_op_f32(select(-1526f, -1081f, false))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f) - _wgslsmith_f_op_f32(f32(-1f) * -959f)))));
    var var_2 = func_4(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))), vec4<bool>(true, false, any(vec2<bool>(true, true)), all(vec3<bool>(false, true, false))), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), any(vec3<bool>(true, false, true)))), vec4<bool>(true, func_3(Struct_1(vec2<i32>(var_1.a.x, 22941i), -1000f), vec4<u32>(4294967295u, u_input.a, 26652u, 4334u), vec3<i32>(var_1.a.x, 2147483647i, var_1.a.x)).x >= var_1.a.x, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(0u != u_input.b.x, 0u >= u_input.b.x, any(vec3<bool>(false, false, false)), true))), func_2(vec2<i32>(_wgslsmith_add_i32(var_1.a.x, 1i), var_1.a.x) >> (abs(vec2<u32>(u_input.a, 78324u) ^ vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-1485f + _wgslsmith_f_op_f32(f32(-1f) * -230f)), -753f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(360f + _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-330f, var_1.b))));
    var_1 = Struct_1(var_2.a, var_2.b);
    var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(var_2.a, var_1.a, reverseBits(vec2<i32>(1i << (u_input.b.x % 32u), var_1.a.x))), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(127870u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1172f, var_2.b, var_1.b, var_1.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_2.b, -307f, 324f) + vec4<f32>(-205f, var_1.b, 532f, var_2.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(259f, var_2.b, var_2.b, -221f) * vec4<f32>(692f, 636f, -2369f, var_1.b))))));
}

