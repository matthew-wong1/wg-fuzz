struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec3<bool>(true, all(vec2<bool>(true, true)), select(false, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), all(vec2<bool>(false, true)))), true));
    let var_1 = firstLeadingBit(u_input.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)), -395f)));
    var_2 = 702f;
    let var_3 = ~4294967295u;
    return vec4<i32>(firstTrailingBit(2147483647i) | -var_1, select(~firstLeadingBit(abs(22025i)), firstLeadingBit(_wgslsmith_clamp_i32(-1i, -2147483647i, var_1) & ~1i), true), ~reverseBits(-30919i), ~var_1);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    let var_0 = 0i;
    var var_1 = ~abs(~(~vec3<i32>(var_0, 32618i, var_0)));
    let var_2 = Struct_3(_wgslsmith_add_vec4_i32(func_3(), func_3()));
    let var_3 = vec2<u32>(~(_wgslsmith_add_u32(0u, 4294967295u) >> (arg_3 % 32u)) << (~((17347u & u_input.b) | 1u) % 32u), u_input.b << (0u % 32u));
    var var_4 = u_input.b;
    return _wgslsmith_sub_u32(1100u, arg_0.b.a >> (_wgslsmith_mod_u32(arg_3, _wgslsmith_sub_u32(~369u, abs(arg_3))) % 32u));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0, ~(~0u)), firstLeadingBit(~min(u_input.b, var_0))), _wgslsmith_dot_vec4_u32(select(reverseBits(~vec4<u32>(var_0, arg_1, arg_1, arg_1)), firstTrailingBit(~vec4<u32>(19064u, 4294967295u, var_0, u_input.b)), !(!vec4<bool>(true, arg_0.x, true, true))), countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(3092u, arg_1, arg_1, 39211u), vec4<u32>(6005u, u_input.b, 39804u, var_0)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, arg_1, 1u, 58026u), vec4<u32>(u_input.b, u_input.b, u_input.b, arg_1))))));
    let var_2 = vec3<bool>(!arg_0.x, false, true);
    var var_3 = Struct_1((_wgslsmith_clamp_u32(func_2(Struct_2(vec4<bool>(true, false, arg_0.x, arg_0.x), Struct_1(31669u, 32642u)), vec4<u32>(var_1, var_1, 47018u, 1u), var_2, 21616u), var_0, min(u_input.b, 22576u)) >> (var_1 % 32u)) | 4294967295u, ~_wgslsmith_dot_vec4_u32(max(min(vec4<u32>(var_0, 1u, var_1, u_input.b), vec4<u32>(22003u, 4294967295u, 0u, var_0)), ~vec4<u32>(var_0, 25753u, 4652u, var_0)), countOneBits(abs(vec4<u32>(arg_1, 67858u, 11780u, 1u)))));
    var_3 = Struct_1(4294967295u, 0u);
    return _wgslsmith_div_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(736f, -361f) + -668f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2554f) - _wgslsmith_f_op_f32(-2855f + -1125f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, -1237f, -535f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 148f, -135f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(330f, 957f, -738f) + vec3<f32>(1440f, 1000f, 113f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-123f, -1821f, 114f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, -875f, 1372f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1376f, -668f, 761f) - vec3<f32>(-603f, -1000f, 654f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(274f, 1000f, -535f) * vec3<f32>(132f, 928f, -1574f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(true, false), 10465u, Struct_3(vec4<i32>(u_input.a, -36598i, -67252i, u_input.a)))))));
    var var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(692f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_f_op_f32(-1160f + var_0.x)), _wgslsmith_f_op_f32(trunc(-739f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(step(703f, -376f)), _wgslsmith_f_op_f32(var_0.x - -662f)))))));
    var var_2 = Struct_4(Struct_1(~(u_input.b << (~u_input.b % 32u)), 1u), abs(vec2<i32>(max(_wgslsmith_sub_i32(u_input.a, -1i), firstLeadingBit(u_input.a)), -15687i)), vec4<bool>(false, true, true, 1u < _wgslsmith_div_u32(~u_input.b, u_input.b)), 2288f, _wgslsmith_f_op_f32(ceil(var_0.x)));
    var var_3 = 6369i;
    var var_4 = Struct_3(-vec4<i32>(var_2.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 56801u), vec3<u32>(1669u, var_2.a.b, u_input.b)) % 32u), 1i, 20727i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_2.b.x, u_input.a)), vec2<i32>(-2147483647i, 53918i))));
    var var_5 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(1i, 216f, ~_wgslsmith_mod_vec4_u32(vec4<u32>(64035u, var_2.a.a, 1u, u_input.b) >> (vec4<u32>(u_input.b, 1u, var_2.a.b, u_input.b) % vec4<u32>(32u)), vec4<u32>(98431u, u_input.b, u_input.b, var_2.a.a) ^ vec4<u32>(u_input.b, var_2.a.a, 10849u, 33650u)) & (vec4<u32>(1u, countOneBits(36281u), 1u, _wgslsmith_mod_u32(u_input.b, var_2.a.a)) << (firstLeadingBit(select(vec4<u32>(1u, 1u, u_input.b, 68539u), vec4<u32>(0u, 0u, 59403u, 35259u), false)) % vec4<u32>(32u))), -653f);
}

