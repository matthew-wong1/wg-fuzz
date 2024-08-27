struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<u32>) -> i32 {
    var var_0 = arg_1.x;
    let var_1 = -(~(-16616i));
    var_0 = all(!vec4<bool>(arg_1.x, arg_1.x, any(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), false));
    return -2147483647i;
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1994f)))), -225f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 309f, !(0u >= select(u_input.b, arg_2.x, true)))));
    let var_1 = Struct_2(vec2<bool>(true, true));
    let var_2 = var_1.a;
    var var_3 = var_1;
    let var_4 = _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_2.x, _wgslsmith_mult_u32((u_input.b >> (u_input.b % 32u)) | ~arg_2.x, 22101u)), 840u);
    return !(!select(!vec4<bool>(false, true, var_3.a.x, var_2.x), vec4<bool>(var_3.a.x, var_1.a.x, true, all(vec3<bool>(var_2.x, true, var_2.x))), !vec4<bool>(var_2.x, false, var_3.a.x, var_2.x)));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = Struct_1(arg_0, max(abs(_wgslsmith_mod_i32(reverseBits(-9489i), func_2(39131u, vec3<bool>(true, false, true), vec4<u32>(87768u, 4294967295u, 4294967295u, u_input.b)))), func_2(abs(~arg_1.x), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), ~(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u) ^ vec4<u32>(arg_1.x, 20420u, u_input.b, 29858u)))));
    var var_1 = select(select(select(func_3(vec4<i32>(var_0.b, 1i, var_0.b, -22242i) >> (vec4<u32>(u_input.b, arg_1.x, arg_1.x, 4294967295u) % vec4<u32>(32u)), -1i >> (u_input.b % 32u), ~vec4<u32>(4294967295u, 0u, 35206u, arg_1.x)), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(1i, u_input.d)) < max(0i, u_input.d)), vec4<bool>(true, false, true, any(vec3<bool>(true, false, false)) | any(vec3<bool>(true, false, true))), vec4<bool>(true, all(func_3(vec4<i32>(var_0.b, -1i, var_0.b, var_0.b), u_input.a, vec4<u32>(21502u, 1u, arg_1.x, arg_1.x))), true, func_3(vec4<i32>(-18549i, -29109i, var_0.b, 19141i), _wgslsmith_sub_i32(-1i, var_0.b), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(arg_1.x, u_input.b, arg_1.x, u_input.b))).x)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), true), vec4<bool>(true, true, (true && all(vec2<bool>(true, true))) | true, func_3(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, u_input.a, 12172i, -1i), vec4<i32>(-21751i, u_input.a, var_0.b, var_0.b), vec4<i32>(u_input.d, u_input.e.x, u_input.e.x, -1i)), vec4<i32>(u_input.e.x, -1i, u_input.d, u_input.e.x), false), firstLeadingBit(~var_0.b), abs(~vec4<u32>(u_input.b, u_input.b, 4443u, 19959u))).x));
    var var_2 = firstLeadingBit(countOneBits(firstTrailingBit(-(u_input.c | 2147483647i))));
    var_2 = _wgslsmith_add_i32(min(var_0.b, 1i), -17631i);
    let var_3 = true;
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_1(-709f, vec3<u32>(u_input.b, reverseBits(0u), ~(1340u << (1u % 32u))), vec2<f32>(1f, 1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -541f))))), -484f, -619f);
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(0u, u_input.b)), ~vec2<u32>(u_input.b, u_input.b)), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, u_input.b), vec2<u32>(32735u, u_input.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(41190u, 1213u), vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.b, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(6036u, 44330u), vec2<u32>(u_input.b, 42952u))) | select(firstTrailingBit(vec2<u32>(u_input.b, 63917u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(1u, u_input.b)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.b, 1u), vec2<u32>(0u, 1u)), ~vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u) & vec2<u32>(u_input.b, u_input.b)), select(func_3(vec4<i32>(u_input.e.x, -1i, u_input.d, -1i), u_input.d, vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)).yw, func_3(vec4<i32>(u_input.a, u_input.a, u_input.e.x, u_input.e.x), u_input.d, vec4<u32>(1u, 24982u, u_input.b, 0u)).xw, all(vec4<bool>(false, true, true, true)))));
    var var_3 = Struct_2(!(!vec2<bool>(func_3(vec4<i32>(u_input.d, -11652i, 2147483647i, u_input.e.x), 24326i, vec4<u32>(1u, 4294967295u, 0u, 71119u)).x, 171f > var_0.x)));
    var var_4 = ~(~_wgslsmith_div_u32(var_2.x, u_input.b));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, 1901f, var_0.x), vec4<f32>(-270f, var_0.x, var_0.x, 1446f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x), var_0.x, -830f) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * 1585f), _wgslsmith_div_f32(1288f, var_0.x), -1000f))));
    let var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-881f + 1172f) - _wgslsmith_f_op_f32(select(-346f, var_0.x, false))), _wgslsmith_f_op_f32(abs(-1349f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1256f))));
    var_2 = vec2<u32>(var_2.x, 57328u);
    let var_6 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_5))), -52649i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.x, 1u, 1u));
}

