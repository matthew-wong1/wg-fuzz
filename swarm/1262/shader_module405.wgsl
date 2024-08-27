struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-13714i, 1i), vec2<i32>(24279i, 1i), vec2<i32>(-1i, 625i), vec2<i32>(1i, 29068i), vec2<i32>(59961i, -1i), vec2<i32>(-16237i, 0i), vec2<i32>(3018i, 1i), vec2<i32>(-34176i, -15190i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, -1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<f32> {
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~0u | u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xw ^ u_input.a.wz, vec2<u32>(107505u, u_input.a.x))), ~reverseBits(56055u)), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(1u), firstTrailingBit(abs(28476u))), ~vec2<u32>(u_input.c, 3775u) << ((countOneBits(u_input.a.yy) ^ vec2<u32>(u_input.c, u_input.a.x)) % vec2<u32>(32u))), _wgslsmith_add_u32(firstLeadingBit(u_input.a.x), ~u_input.a.x));
    var var_1 = u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1135f, _wgslsmith_f_op_f32(sign(-251f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-254f))))), _wgslsmith_f_op_f32(abs(1030f)))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global0 = array<vec2<i32>, 10>();
    var var_0 = -312f;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3());
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    return Struct_1(select(select(vec4<u32>(1u, arg_0.x, u_input.c, 0u), ~vec4<u32>(u_input.a.x, u_input.c, u_input.c, u_input.a.x), true) | (~vec4<u32>(46526u, 4294967295u, 40161u, arg_0.x) | select(vec4<u32>(9106u, 15761u, 4294967295u, arg_0.x), u_input.a, vec4<bool>(false, false, true, false))), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(9024u, arg_0.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x)), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, true, false), true)), -_wgslsmith_div_vec2_i32(~max(vec2<i32>(u_input.b, u_input.b), global0[_wgslsmith_index_u32(20305u, 10u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(18482i, -1i), _wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(arg_0.x, 10u)], global0[_wgslsmith_index_u32(49032u, 10u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true), !all(vec4<bool>(true, true, true, true))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(u_input.a), u_input.a), 1u << (_wgslsmith_add_u32(arg_0.x, arg_0.x) % 32u), arg_0.x), _wgslsmith_clamp_vec3_u32(u_input.a.xwx, u_input.a.wxz, reverseBits(vec3<u32>(1u, arg_0.x, u_input.a.x)) & ~vec3<u32>(63153u, u_input.a.x, arg_0.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-471f * arg_3.x) * _wgslsmith_f_op_f32(sign(-1326f)))));
    var var_1 = countOneBits(select(~u_input.a.wz, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.c), 39399u), u_input.a.x), _wgslsmith_mult_u32(u_input.a.x << (4294967295u % 32u), ~80557u) >= 1u));
    let var_2 = global0[_wgslsmith_index_u32(0u, 10u)];
    global0 = array<vec2<i32>, 10>();
    let var_3 = func_2(firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(42830u, var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 9905u, u_input.c, var_1.x), vec4<u32>(4294967295u, var_1.x, 0u, 4294967295u)))) | ~select(~u_input.a.yw, ~u_input.a.yy, vec2<bool>(true, arg_1.x)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.c, select(~u_input.c, 0u, true)), 72030u, 108529u), ~(max(vec2<i32>(-765i, 19526i), -vec2<i32>(-8948i, 21078i)) | -global0[_wgslsmith_index_u32(u_input.c, 10u)]), _wgslsmith_f_op_f32(func_1(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), !select(false, true, false)), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(639f, 1609f) + vec2<f32>(-1981f, -175f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(500f, -458f))))), !(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)))), vec3<u32>(max(_wgslsmith_dot_vec2_u32(~u_input.a.zx, _wgslsmith_div_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, u_input.c))), _wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, u_input.a))), 1u, u_input.c));
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_u32(1u, u_input.a.x)), ~vec4<u32>(min(~u_input.c, _wgslsmith_mult_u32(42447u, 1u)), var_0.e.x, max(31753u, 72478u), ~var_0.e.x));
}

