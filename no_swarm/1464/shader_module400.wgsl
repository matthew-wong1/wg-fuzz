struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> u32 {
    var var_0 = firstTrailingBit(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, u_input.b), ~u_input.b, 0u) << (~_wgslsmith_sub_u32(~u_input.c, ~u_input.b) % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-750f, 813f), vec2<f32>(539f, 261f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-126f, 593f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-289f, -237f))) + vec2<f32>(1282f, 386f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -1266f))) - vec2<f32>(-1000f, -282f)))) + vec2<f32>(-502f, -1000f));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - _wgslsmith_div_vec2_f32(vec2<f32>(-246f, var_1.x), vec2<f32>(var_1.x, 508f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1267f, -1932f), vec2<f32>(var_1.x, var_1.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, var_1.x))), vec2<f32>(var_1.x, -851f)))));
    var_0 = 4294967295u;
    var_0 = _wgslsmith_mult_u32(1u, 0u);
    return 4294967295u;
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    let var_0 = ~vec4<u32>(4294967295u, 86009u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 74878u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 52703u))), u_input.b), 87474u >> (abs(_wgslsmith_add_u32(u_input.b, u_input.b)) % 32u));
    var var_1 = 69502u << (func_3(-vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, 0i, -16861i), _wgslsmith_mod_i32(18990i, arg_0.x), -2147483647i, arg_0.x), !vec4<bool>(true, true, select(false, false, false), true)) % 32u);
    var_1 = 4294967295u;
    let var_2 = ~func_3(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 0i, u_input.a.x, _wgslsmith_dot_vec2_i32(arg_0.yz, min(arg_0.xy, vec2<i32>(arg_0.x, u_input.a.x)))), vec4<bool>(!any(vec4<bool>(false, false, false, false)), all(vec3<bool>(true, false, false)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true));
    let var_3 = any(vec2<bool>(true, true)) != true;
    return _wgslsmith_f_op_f32(f32(-1f) * -215f);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32((vec4<i32>(u_input.a.x, -44922i, -1i, 2147483647i) << (vec4<u32>(4294967295u, 4294967295u, 0u, arg_0) % vec4<u32>(32u))) & (vec4<i32>(4834i, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.b, 32540u, 53655u, 4294967295u) % vec4<u32>(32u))), max(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 1189i), vec4<i32>(1i, 32918i, u_input.a.x, u_input.a.x) & vec4<i32>(-34497i, 85836i, u_input.a.x, u_input.a.x))), ~u_input.a.x);
    let var_1 = Struct_1(vec4<f32>(arg_2, 1023f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) + _wgslsmith_f_op_f32(func_2(u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1134f) + -156f) * arg_2)), vec2<i32>(_wgslsmith_add_i32(1i, select(u_input.a.x, 2147483647i, !arg_1)), 47830i));
    var var_2 = ~(-2147483647i);
    var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.a.yx, vec2<i32>(abs(select(42243i, u_input.a.x, true)), 1i)), u_input.a.zy);
    let var_3 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~u_input.b << ((_wgslsmith_sub_u32(37576u, reverseBits(0u)) & u_input.b) % 32u), any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), -8107i >= u_input.a.x)) == ((_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) ^ -1i) <= u_input.a.x), 265f);
    var var_1 = Struct_2(reverseBits(~select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 54739u, 20900u), vec3<u32>(u_input.c, 1u, u_input.b)), vec3<u32>(0u, u_input.b, 1u), true)), var_0.a.x, countOneBits(select(var_0.b, vec2<i32>(~(-2961i), ~var_0.b.x), false)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, -642f, 1595f, 1219f), vec4<f32>(1014f, var_0.a.x, var_0.a.x, 1327f), false))) - vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), -1000f, _wgslsmith_f_op_f32(select(-729f, -1060f, false)))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(14266i, -44208i, u_input.a.x, -43077i), vec4<i32>(-2147483647i, u_input.a.x, var_0.b.x, 1i)), u_input.a.x) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(80984i, -18333i), _wgslsmith_add_vec2_i32(var_0.b, vec2<i32>(-17881i, u_input.a.x)))), vec2<i32>(var_0.b.x, -u_input.a.x));
    var var_2 = _wgslsmith_clamp_i32(var_1.e.x >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(47356u, u_input.c, u_input.b, 0u), vec4<u32>(66714u, var_1.a.x, 25516u, u_input.b)), 4294967295u) % 32u), -_wgslsmith_mult_i32(-var_0.b.x, -47459i), -1i) == -var_0.b.x;
    var var_3 = Struct_2(firstLeadingBit(vec3<u32>(var_1.a.x & _wgslsmith_dot_vec2_u32(var_1.a.zz, vec2<u32>(var_1.a.x, 4294967295u)), var_1.a.x | 1u, 1u)), 1f, vec2<i32>(var_0.b.x, abs(var_0.b.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -894f))), 1021f, var_1.b, -1000f), min(_wgslsmith_clamp_vec2_i32(var_1.d.b, vec2<i32>(u_input.a.x, var_0.b.x), vec2<i32>(var_1.d.b.x, 13635i)) | -var_0.b, var_0.b)), -_wgslsmith_div_vec2_i32(~(~vec2<i32>(78505i, var_1.e.x)), vec2<i32>(u_input.a.x, 0i)));
    var var_4 = _wgslsmith_sub_i32(countOneBits(_wgslsmith_mult_i32(var_1.c.x, max(1i, ~var_1.c.x))), -_wgslsmith_sub_i32(4572i, 2147483647i));
    let var_5 = ~max(1i, 60912i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, countOneBits(1i), abs(-8973i));
}

