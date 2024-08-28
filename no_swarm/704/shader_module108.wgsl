struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 89753u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.d.x;
    var_0 = _wgslsmith_clamp_i32(-((i32(-1i) * -46431i) >> (countOneBits(~u_input.a.x) % 32u)), arg_0.d.x, arg_0.d.x);
    let var_1 = select(~firstTrailingBit((vec4<u32>(20616u, 4294967295u, u_input.a.x, 44372u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 41002u, arg_0.a.b)) | ~vec4<u32>(u_input.a.x, 4294967295u, 0u, 14565u)), ~countOneBits(~vec4<u32>(u_input.a.x, 4294967295u, 0u, 20891u)) >> (min(select(select(vec4<u32>(57319u, u_input.a.x, arg_0.a.b, 34261u), vec4<u32>(arg_0.a.b, 44405u, 0u, arg_0.a.b), true), vec4<u32>(u_input.a.x, 0u, 0u, 132273u), false), vec4<u32>(countOneBits(arg_0.a.b), 4294967295u, 69873u, u_input.a.x)) % vec4<u32>(32u)), vec4<bool>(false, (arg_0.c.x | true) || arg_0.c.x, any(arg_0.c), arg_0.c.x));
    global0 = ~(0u << ((4294967295u & ((u_input.a.x | 42293u) ^ countOneBits(arg_0.a.b))) % 32u));
    var_0 = _wgslsmith_mod_i32(-2147483647i, arg_0.a.a.x);
    return _wgslsmith_f_op_f32(-1374f - _wgslsmith_f_op_f32(-1493f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -349f) - _wgslsmith_f_op_f32(320f * _wgslsmith_f_op_f32(-1285f - -773f)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<i32>(-2147483647i, -1i, 2147483647i, -1i), u_input.a.x), arg_0, vec4<bool>(true, false, true, true), vec3<i32>(-1i, 6360i, -55521i)))), -336f), 509f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(884f + -1030f) - _wgslsmith_f_op_f32(907f * -911f)), _wgslsmith_f_op_f32(f32(-1f) * -180f)))), Struct_2(Struct_1(min(vec4<i32>(5505i, 0i, 1i, 10289i), vec4<i32>(2147483647i, 0i, 0i, -1i)) << (select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_1.x), vec4<u32>(0u, u_input.a.x, 103983u, u_input.a.x), false) % vec4<u32>(32u)), arg_1.x), !arg_0, arg_0, firstLeadingBit(-vec3<i32>(34892i, 25283i, 2147483647i)) | firstTrailingBit(select(vec3<i32>(-50912i, -1789i, -20117i), vec3<i32>(-32315i, 0i, -7222i), vec3<bool>(false, true, arg_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-624f + 1285f) - _wgslsmith_f_op_f32(f32(-1f) * -550f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-492f * 576f), _wgslsmith_div_f32(-250f, 510f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(288f - -939f), _wgslsmith_f_op_f32(f32(-1f) * -535f))), _wgslsmith_f_op_f32(f32(-1f) * -583f))), Struct_2(Struct_1(-countOneBits(vec4<i32>(79307i, -1i, 18921i, 2147483647i)), u_input.a.x), vec4<bool>(_wgslsmith_f_op_f32(floor(1000f)) <= _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<i32>(-25942i, 49794i, 1i, -2147483647i), u_input.a.x), arg_0, arg_0, vec3<i32>(26192i, -21291i, 123i)))), false, arg_0.x, arg_0.x), arg_0, select(-(~vec3<i32>(-2147483647i, 20439i, 12726i)), firstTrailingBit(-vec3<i32>(22188i, 0i, -50014i)), vec3<bool>(arg_0.x, arg_0.x || false, any(vec3<bool>(true, true, arg_0.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2812f, -942f, 295f, -213f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-113f, 326f, 1541f, 319f) + vec4<f32>(-678f, -2851f, 957f, 504f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(318f, -710f, -1423f, 633f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-877f, -1000f, -591f, -942f)))), true == select(false, true, true))));
    global0 = 67451u;
    var var_1 = var_0;
    let var_2 = u_input.a;
    var var_3 = ~vec3<i32>(2147483647i ^ ~_wgslsmith_mod_i32(-14591i, var_0.d.d.x), select(_wgslsmith_add_i32(firstTrailingBit(0i), -27571i & var_1.d.a.a.x), 2378i, any(select(arg_0.wz, var_1.b.b.wy, arg_0.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.d.a.a.yxw, var_1.b.d), -var_0.d.a.a.xyy ^ var_0.b.a.a.xxy));
    return 0u;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    global0 = ~(~func_2(vec4<bool>(arg_1, arg_1, all(vec4<bool>(false, true, arg_1, true)), true), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x)) % vec4<u32>(32u))));
    var var_0 = select(select(select(!(!vec2<bool>(arg_1, true)), select(select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_1), false), select(vec2<bool>(arg_1, true), vec2<bool>(false, arg_1), false), !arg_1), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(false, true))), vec2<bool>(!arg_1, true), !(!vec2<bool>(arg_1, true))), vec2<bool>(false, true), all(!vec3<bool>(arg_1 && true, !arg_1, true)));
    var_0 = vec2<bool>(true, true);
    global0 = u_input.a.x;
    var_0 = !select(vec2<bool>(true, arg_1 && false), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), var_0.x), select(vec2<bool>(true, false), vec2<bool>(true, false), arg_1), true), !vec2<bool>(arg_1, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), arg_1)), select(vec2<bool>(false, !arg_1), !vec2<bool>(arg_1, arg_1), false));
    return min(~u_input.a.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(1948f, -291f), -1099f, -360f), vec3<f32>(1f, 1f, 1f))), true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-221f, -574f)), -1240f, -363f));
    let var_0 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-firstTrailingBit(1i), min(-1i, ~0i), -926i, 1i), ~firstTrailingBit(vec4<i32>(-10707i, 0i, -10956i, 12170i))), 1u);
    global0 = u_input.a.x;
    global0 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 0u)), 11750u), _wgslsmith_mult_u32(max(u_input.a.x, ~var_0.b) & 10367u, ~var_0.b));
    var var_1 = Struct_1(vec4<i32>(-48106i, var_0.a.x, ~abs(-var_0.a.x), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_0.a.wy, vec2<i32>(-2147483647i, 1i)), _wgslsmith_dot_vec3_i32(var_0.a.wyz, vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x)))), 4294967295u);
    let var_2 = vec2<f32>(-723f, -1463f);
    let var_3 = var_0.b;
    var var_4 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_1.a.zx, -var_1.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2 - var_2) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x * var_2.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))))), min(23380u, ~firstTrailingBit(u_input.a.x)) & (37036u | var_3));
}

