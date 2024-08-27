struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    let var_0 = Struct_1(min(select(vec3<i32>(-1i) * -vec3<i32>(u_input.b, 1i, 3418i), select(~vec3<i32>(-3844i, 16092i, -2147483647i), ~vec3<i32>(u_input.b, 0i, u_input.b), all(vec2<bool>(true, true))), true), ~vec3<i32>(_wgslsmith_mod_i32(arg_0, -26546i), _wgslsmith_add_i32(arg_0, u_input.b), -24309i)), ~reverseBits(~vec3<i32>(arg_0, -1i, arg_0) ^ vec3<i32>(arg_0, -2147483647i, u_input.b)), vec2<u32>(~min(~117160u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 39778u), vec4<u32>(13290u, u_input.a, u_input.a, u_input.a))), 4294967295u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-436f)))), ~max(60984u, ~69463u ^ _wgslsmith_mult_u32(u_input.a, 4294967295u)));
    var var_1 = ~(0i ^ arg_0);
    let var_2 = var_0;
    var_1 = ~_wgslsmith_mod_i32(max(~(-31613i), 0i), i32(-1i) * -var_2.a.x);
    var_1 = arg_0;
    return vec4<i32>(var_0.a.x, reverseBits(u_input.b), var_0.b.x, i32(-1i) * -_wgslsmith_dot_vec3_i32(var_2.b, var_2.a));
}

fn func_2() -> f32 {
    var var_0 = true;
    var var_1 = u_input.a;
    var_0 = true;
    var var_2 = false;
    let var_3 = min(vec4<i32>(-1i) * -(~func_3(19069i)), ~_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b) ^ vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), select(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), vec4<i32>(0i, 28194i, u_input.b, u_input.b), true)), reverseBits(vec4<i32>(-2147483647i, u_input.b, -1i, 3163i))));
    return 1338f;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> vec3<i32> {
    var var_0 = Struct_1(vec3<i32>(u_input.b, -u_input.b, u_input.b), vec3<i32>(0i, u_input.b, u_input.b), abs(vec2<u32>(~u_input.a, u_input.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - -1000f), -827f, true)), 0u);
    var var_1 = !(!(var_0.a.x > -var_0.a.x)) & select(false, true, any(vec3<bool>(all(vec2<bool>(false, false)), true, any(vec2<bool>(true, true)))));
    let var_2 = max((_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.x, arg_1, var_0.e), vec3<u32>(arg_1, 1u, arg_1)), ~vec3<u32>(var_0.c.x, 6497u, arg_1)) | ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 28216u, var_0.c.x), vec3<u32>(u_input.a, 1u, 1u))) & firstLeadingBit(vec3<u32>(arg_1, arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 41315u, 0u), vec4<u32>(0u, 80647u, 25651u, 21451u)))), vec3<u32>(54949u, 44440u, _wgslsmith_add_u32(arg_1, 34457u)));
    var var_3 = _wgslsmith_add_u32(24038u, ~(~(~select(var_2.x, arg_1, true))));
    var var_4 = Struct_1(var_0.b, min(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.b, reverseBits(vec3<i32>(var_0.b.x, var_0.b.x, 0i))), _wgslsmith_clamp_vec3_i32(var_0.b, var_0.a, var_0.b) << (var_2 % vec3<u32>(32u))), var_0.b | firstTrailingBit(vec3<i32>(-2147483647i, 1i, 0i) >> (var_2 % vec3<u32>(32u)))), vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(76070u, u_input.a, 48022u), var_2), max(~vec3<u32>(var_0.c.x, u_input.a, 38977u), min(vec3<u32>(0u, 1u, u_input.a), vec3<u32>(0u, 4294967295u, 35296u)))), reverseBits(~_wgslsmith_add_u32(arg_1, var_2.x))), _wgslsmith_f_op_f32(ceil(arg_0.x)), var_0.c.x);
    return ~var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-176f, 1546f, -522f)) - vec3<f32>(-2201f, 644f, 2131f)), 15186u), -_wgslsmith_sub_vec3_i32(-abs(vec3<i32>(u_input.b, u_input.b, u_input.b)), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, -13640i, u_input.b)))), vec2<u32>(~abs(_wgslsmith_mult_u32(u_input.a, 26769u)), u_input.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2())))))), _wgslsmith_add_u32(u_input.a, firstTrailingBit(~0u << (_wgslsmith_mult_u32(u_input.a, 7352u) % 32u))));
    let var_1 = 0i;
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(2147483647i, 2147483647i | -var_0.a.x), ~var_0.a.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b) ^ var_0.b.xy, min(vec2<i32>(-1i, -3634i), vec2<i32>(-8511i, 45349i)))), abs(var_0.a), ~vec2<u32>(_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 10325u, 4294967295u, var_0.e), vec4<u32>(var_0.e, 33974u, 42798u, 44773u))), max(firstTrailingBit(u_input.a), countOneBits(27218u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-773f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f))))), (u_input.a | min(var_0.e, 1u)) | var_0.e);
    var var_3 = -469f;
    let var_4 = abs(_wgslsmith_add_vec3_u32(~(~(~vec3<u32>(u_input.a, var_0.e, u_input.a))), vec3<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u))), ~(~u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.e, 0u, u_input.a), vec3<u32>(1u, 1u, 1u)))));
    var_0 = Struct_1(abs(vec3<i32>(-_wgslsmith_add_i32(u_input.b, var_2.a.x), countOneBits(1i), -1i)), var_2.b, ~select(vec2<u32>(var_4.x, 4294967295u), vec2<u32>(36198u, var_4.x), vec2<bool>(true, true)) ^ (reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(var_4.x, 1u))) >> (vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 4294967295u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(sign(352f)), var_0.e);
    let var_5 = !any(vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), any(vec4<bool>(true, true, true, true))));
    var var_6 = vec2<bool>(var_5, all(!vec3<bool>(true, select(var_5, var_5, var_5), all(vec3<bool>(false, false, var_5)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f) + -172f))))));
}

