struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    return _wgslsmith_div_f32(-309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(206f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000f, 375f, false)))), true))));
}

fn func_3() -> bool {
    var var_0 = 613f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(468f - _wgslsmith_f_op_f32(f32(-1f) * -730f))))));
    let var_1 = -23130i;
    let var_2 = Struct_2(Struct_1(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-149f, 1122f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(725f, -1866f) * vec2<f32>(-1000f, 327f)))), 2147483647i, vec2<bool>(true, true)), true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1167f, 1436f) + vec2<f32>(447f, -1392f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1105f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1041f, 1527f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-891f, -616f)))))), _wgslsmith_mod_i32(firstTrailingBit(firstTrailingBit(-2147483647i)), 0i | var_1), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), true))), u_input.a.x, reverseBits(u_input.a.x));
    var_0 = var_2.a.b.x;
    return any(vec3<bool>(var_2.a.d.x, !(89196u < _wgslsmith_mult_u32(u_input.b, u_input.b)), var_2.a.d.x));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec2<f32> {
    var var_0 = select(u_input.a.zxz & vec3<u32>(1u, abs(u_input.a.x), min(~53927u, 1u)), vec3<u32>(firstLeadingBit(arg_1) & ~0u, 95725u, 1u << (~_wgslsmith_div_u32(arg_1, 18777u) % 32u)), !vec3<bool>(false, (arg_0 <= arg_0) || func_3(), true));
    var var_1 = ~vec2<u32>(var_0.x, var_0.x);
    var_0 = min(vec3<u32>(reverseBits(~(~34694u)), arg_1, ~(_wgslsmith_div_u32(arg_1, arg_1) | arg_1)), select(u_input.a.yzx, vec3<u32>(13008u, var_0.x, arg_1), vec3<bool>(true, any(vec3<bool>(false, false, true)), all(vec3<bool>(true, true, true)) | true)));
    var_0 = u_input.a.xyy;
    var_1 = _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(~var_0.zz, ~var_0.yx), vec2<u32>(_wgslsmith_sub_u32(4294967295u, 61530u ^ (40641u >> (var_1.x % 32u))), 1u));
    return vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-arg_0))), 1228f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true))), 1u)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(432f, _wgslsmith_f_op_f32(f32(-1f) * -733f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-635f, 1035f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1708f, 645f) + vec2<f32>(-400f, -344f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-336f, -686f) - vec2<f32>(-534f, -1884f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(618f, -662f)))))), firstLeadingBit(1i), vec2<bool>((1i << (u_input.a.x % 32u)) > abs(_wgslsmith_dot_vec3_i32(vec3<i32>(3414i, 0i, -2147483647i), vec3<i32>(1i, -40253i, -44975i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false)))))));
    var var_1 = ~67323i;
    let var_2 = Struct_2(var_0, (1u | u_input.a.x) < abs(55278u), var_0, reverseBits(27973u), 0u);
    var_1 = -_wgslsmith_mult_i32(firstTrailingBit(-2147483647i) ^ _wgslsmith_mult_i32(1i, -44652i), _wgslsmith_mod_i32(~var_0.c >> ((u_input.b >> (var_2.e % 32u)) % 32u), ~2147483647i));
    var var_3 = ~vec4<u32>(abs(33654u), 4294967295u, ~1u, min(~u_input.a.x, 32823u));
    var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.xy), reverseBits(firstLeadingBit(min(countOneBits(vec2<u32>(u_input.a.x, u_input.b)), vec2<u32>(17633u, 1u)))), _wgslsmith_add_vec2_i32(select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-33138i, var_0.c, var_0.c), vec3<i32>(var_0.c, var_0.c, var_0.c)), reverseBits(var_2.c.c)), countOneBits(select(vec2<i32>(1i, -19173i), vec2<i32>(var_2.c.c, -1i), vec2<bool>(false, true))), !(var_3.x > var_3.x)), vec2<i32>(max(var_0.c >> (u_input.a.x % 32u), -2147483647i), var_2.c.c)));
}

