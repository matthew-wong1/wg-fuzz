struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a.x, arg_3.a.x, arg_0.a.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, 925f, arg_0.a.x) + vec3<f32>(-1071f, arg_3.a.x, 1000f))))));
    var var_1 = arg_3;
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_3.a), (_wgslsmith_f_op_f32(exp2(var_0.x)) == -1570f) & any(vec3<bool>(true, !var_1.b, any(vec3<bool>(true, arg_3.b, false)))));
    let var_2 = Struct_1(true || !arg_3.b);
    var var_3 = var_2;
    return !select(!select(!vec2<bool>(true, arg_0.b), vec2<bool>(var_2.a, var_1.b), u_input.a.x <= u_input.a.x), !vec2<bool>(var_1.b, arg_2.x < arg_1.x), vec2<bool>(!(u_input.a.x == 40902u), true));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_1(any(select(func_3(Struct_2(vec2<f32>(637f, -767f), true), -vec4<i32>(-16154i, 35781i, 0i, -1i), vec2<i32>(1i, 1i), Struct_2(vec2<f32>(-822f, 131f), false)), vec2<bool>(true, true), false)));
    var var_1 = -1000f;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-439f, 120f)))))), 476f));
    let var_2 = var_0;
    let var_3 = !(!select(select(vec4<bool>(var_2.a, true, false, false), select(vec4<bool>(true, var_0.a, false, var_0.a), vec4<bool>(false, false, true, var_2.a), vec4<bool>(true, var_2.a, var_0.a, true)), true), select(select(vec4<bool>(var_0.a, var_2.a, false, var_0.a), vec4<bool>(var_0.a, var_2.a, var_2.a, false), true), vec4<bool>(true, true, true, true), true), var_0.a));
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1983f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1494f, -684f, var_2.a)) + _wgslsmith_f_op_f32(-1309f * 994f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1556f - 323f) - _wgslsmith_f_op_f32(f32(-1f) * -1121f)), var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), -805f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f), -913f)))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: u32) -> i32 {
    var var_0 = -2147483647i >> (0u % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(func_2());
    var var_2 = _wgslsmith_f_op_f32(957f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    let var_3 = select(~(~min(vec2<u32>(arg_2, 4294967295u) >> (vec2<u32>(61162u, 9301u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 48499u))), ~max(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(arg_2, 0u), vec2<u32>(0u, arg_0)), firstLeadingBit(u_input.a), vec2<u32>(10334u, 1u)), u_input.a), !vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -410f) != var_1.x, true));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 188f) - var_1.x);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = 1i;
    var_1 = _wgslsmith_sub_i32(1i, ~_wgslsmith_clamp_i32(max(1i, 1i), 2147483647i, 26529i));
    var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~(-8877i), 1i), vec2<i32>(1i, firstLeadingBit(2147483647i))), firstLeadingBit(max(firstLeadingBit(vec2<i32>(0i, -2147483647i)), reverseBits(vec2<i32>(-2147483647i, 5047i))))), 1i);
    let var_2 = vec3<i32>(firstLeadingBit(~(-35062i)), func_1(var_0, -24876i, var_0 & countOneBits(41777u)), min(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 18127i, 0i), vec3<i32>(8776i, -2147483647i, -2147483647i)), _wgslsmith_mult_i32(0i, 5339i)), -2147483647i)) | (vec3<i32>(-1i) * -(~_wgslsmith_add_vec3_i32(vec3<i32>(0i, 27262i, 2147483647i), vec3<i32>(-69953i, 1138i, -12117i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-(vec4<i32>(var_2.x, -21792i, 1i, var_2.x) >> (vec4<u32>(0u, u_input.a.x, 0u, var_0) % vec4<u32>(32u))) ^ -(~vec4<i32>(var_2.x, var_2.x, 77409i, var_2.x)), vec4<i32>(-1i, var_2.x, 0i, _wgslsmith_mod_i32(var_2.x, reverseBits(0i)))), vec4<u32>(4294967295u, ~(var_0 >> (4294967295u % 32u)), 4294967295u, 1u) << ((max(vec4<u32>(1u, 0u, u_input.a.x, var_0), vec4<u32>(4295u, u_input.a.x, 91440u, 0u)) << (vec4<u32>(_wgslsmith_mult_u32(839u, u_input.a.x), var_0, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), 4191u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -748f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-624f - -1034f), 1000f)) + _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_add_u32(_wgslsmith_mod_u32(~17340u, min(8940u, ~44626u)), 1u));
}

