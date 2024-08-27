struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = min(firstTrailingBit(1u), min(~(_wgslsmith_div_u32(u_input.e, u_input.e) >> (u_input.e % 32u)), 0u));
    let var_1 = u_input.d;
    global0 = array<vec3<f32>, 21>();
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 70122i, 4673i, var_1), vec4<i32>(1i, var_1, u_input.c, 50460i), vec4<i32>(2147483647i, -51521i, 39814i, u_input.d)), vec4<i32>(2147483647i, u_input.c, -29374i, 30408i) << (vec4<u32>(4294967295u, 31422u, u_input.e, 0u) % vec4<u32>(32u))), -(vec4<i32>(22953i, -45778i, -1607i, var_1) | vec4<i32>(-7932i, u_input.a, u_input.a, 36519i)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(843f * 351f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(592f)) - -777f)))), _wgslsmith_f_op_f32(-861f - -909f), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, 44030i)) & reverseBits(vec2<i32>(var_1, 15015i)), ~select(abs(vec2<i32>(u_input.a, 2147483647i)), vec2<i32>(2147483647i, 2147483647i), vec2<bool>(true, false))), 57033i);
    var var_3 = false;
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-859f, _wgslsmith_f_op_f32(-1000f * 1296f))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1538f, 2389f)))))));
    var var_1 = u_input.e;
    let var_2 = Struct_1(u_input.a, -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_3()).x, arg_0.b)), -1527f)), ~1i, ~(-31801i));
    var_1 = ~(0u | u_input.e);
    return (arg_0.e >> (1u % 32u)) & -19031i;
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    global0 = array<vec3<f32>, 21>();
    let var_0 = Struct_1(-4313i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, -843f))) - -160f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2273f + 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2140f, 562f) - 703f) - 1f)), ~(-1i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b, 56531i << (u_input.e % 32u)), func_2(Struct_1(u_input.c, 953f, 503f, 11937i, u_input.a), vec4<bool>(true, true, false, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, -2147483647i))), _wgslsmith_div_i32(1i, reverseBits(u_input.d))), u_input.c));
    var var_1 = Struct_1(-select(~75623i, max(u_input.c, ~20002i), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b))), var_0.c, 1i, var_0.e | (-_wgslsmith_mult_i32(var_0.d, 1i) ^ u_input.b));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_0.b - 1616f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -760f), var_1.c))), -951f);
    var var_3 = countOneBits(_wgslsmith_clamp_u32(reverseBits(74096u), ~0u, arg_0.x) | arg_0.x) & _wgslsmith_clamp_u32(4294967295u, arg_0.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), firstTrailingBit(vec4<u32>(u_input.e, arg_0.x, 1u, arg_0.x))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e >> (1u % 32u), 66675u) >> (vec2<u32>(_wgslsmith_add_u32(~u_input.e, _wgslsmith_mult_u32(20651u, 1u)), _wgslsmith_div_u32(arg_0.x, 44483u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(arg_0.x, u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e) ^ vec3<u32>(1u, u_input.e, arg_0.x), ~vec3<u32>(arg_0.x, arg_0.x, 44756u))), ~(_wgslsmith_div_vec2_u32(arg_0, arg_0) & ~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e)), reverseBits(vec4<u32>(u_input.e, 9195u, u_input.e, u_input.e)))), 11483u, abs(abs(abs(49720u)))), vec3<u32>(0u, u_input.e, func_1(select(vec2<u32>(58513u, u_input.e), countOneBits(vec2<u32>(u_input.e, u_input.e)), true))));
    var var_1 = u_input.b;
    global0 = array<vec3<f32>, 21>();
    let var_2 = select(~(~reverseBits(vec4<u32>(var_0.x, 0u, var_0.x, u_input.e))), vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(firstLeadingBit(4294967295u), u_input.e)), 19622u, ~23877u, ~(~func_1(var_0.zy))), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true)), true));
    global0 = array<vec3<f32>, 21>();
    var_1 = _wgslsmith_mod_i32(countOneBits(1i), -2147483647i);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 283f)) * -703f), -1700f)), -1560f));
    var var_4 = vec4<u32>(abs(var_0.x), ~var_0.x, 97392u, u_input.e) >> (var_2 % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.e), vec3<u32>(var_0.x, u_input.e, 75748u)) | _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 26294u, 0u), var_4.xxz), var_2.zwz));
}

