struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    return (~_wgslsmith_mod_u32(~75683u, reverseBits(12912u)) << (_wgslsmith_div_u32(~(~4294967295u), select(4294967295u, _wgslsmith_div_u32(52722u, 1u), true)) % 32u)) & (58822u & select(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(11339u, 171261u, 18995u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), !all(vec2<bool>(false, true))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-528f, -1000f, 1946i == u_input.a)), _wgslsmith_f_op_f32(abs(-664f))))), 20235u, firstTrailingBit(arg_0.c), vec2<u32>(1u, 23479u | _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.d.x, arg_0.b, arg_0.d.x)), select(vec3<u32>(4294967295u, arg_0.c, arg_0.b), vec3<u32>(arg_0.b, 10119u, 49957u), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1327f, arg_0.e))), arg_1)));
    var var_1 = u_input.a;
    let var_2 = var_0.e;
    var_1 = u_input.a;
    var var_3 = Struct_1(-1152f, 27410u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.d.x, var_0.c, var_0.d.x, 0u), vec4<u32>(1u, arg_0.b, reverseBits(1u), min(1u, 5489u))) >> (_wgslsmith_dot_vec2_u32(~countOneBits(var_0.d), vec2<u32>(arg_0.c ^ arg_0.c, var_0.c)) % 32u), vec2<u32>(~arg_0.b, ~4294967295u << (arg_0.d.x % 32u)), arg_0.a);
    return select(false, any(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), all(vec3<bool>(true, true, true)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<f32>) -> f32 {
    let var_0 = ~(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(84456u, arg_0, 0u))) & vec3<u32>(arg_0, 37751u, 47320u));
    let var_1 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_add_i32(_wgslsmith_add_i32(-29034i, u_input.a), -(~(~(-21268i)))));
    let var_2 = select(vec4<bool>(func_4(Struct_1(_wgslsmith_f_op_f32(-1112f + -338f), func_3(arg_2.x, vec3<f32>(arg_2.x, -2425f, arg_1), var_1), _wgslsmith_add_u32(var_0.x, var_0.x), var_0.xz, _wgslsmith_f_op_f32(step(arg_2.x, arg_1))), 401f, vec4<i32>(2147483647i, var_1, var_1, u_input.a) | (vec4<i32>(u_input.a, 0i, 19907i, u_input.a) | vec4<i32>(var_1, 61540i, 45238i, 1i))), true != any(vec2<bool>(false, true)), ((var_1 > u_input.a) & any(vec4<bool>(true, false, false, true))) | (_wgslsmith_f_op_f32(arg_2.x + 176f) >= _wgslsmith_f_op_f32(min(-543f, arg_2.x))), all(vec4<bool>(true, true, true, true))), vec4<bool>(!(_wgslsmith_div_f32(895f, arg_2.x) != _wgslsmith_f_op_f32(-322f - arg_1)), true, false, true), !any(vec3<bool>(true, true, false)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_1)))), 16558u, min(~(~var_0.x), ~(~38488u)) & var_0.x, ~var_0.xz, -316f);
    var var_4 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(261f)), _wgslsmith_f_op_f32(abs(-1345f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_2.x, 877f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, var_3.e, -1823f), vec3<f32>(arg_2.x, -586f, arg_2.x))))))), u_input.a | max(i32(-1i) * -1i, firstTrailingBit(u_input.a)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = ~select(~vec4<u32>(~0u, _wgslsmith_mult_u32(arg_0.d.x, 1u), arg_0.c, countOneBits(arg_0.d.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.c, 8223u, 4294967295u), vec4<u32>(arg_0.c, 82042u, 4294967295u, 23289u)), min(vec4<u32>(38972u, arg_0.d.x, 58689u, 28873u), vec4<u32>(arg_0.b, arg_0.d.x, arg_0.d.x, arg_0.b))) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.d.x, arg_0.b, 4294967295u), vec4<u32>(4294967295u, arg_0.c, arg_0.c, 1u)) % vec4<u32>(32u)), !vec4<bool>(true, arg_0.b > arg_0.b, true, true));
    var var_1 = 206f;
    let var_2 = reverseBits(u_input.a);
    let var_3 = Struct_1(-744f, arg_0.b, arg_0.b, var_0.zz, 674f);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), var_3.e)) + 851f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a - -851f), arg_0.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.c, _wgslsmith_f_op_f32(1784f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e + 189f) * -441f)), vec2<f32>(arg_0.a, -886f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_f32(1125f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_1(-1000f, 2425u, 0u, vec2<u32>(4294967295u, 4294967295u), 304f))), 1f))))), _wgslsmith_sub_u32(~countOneBits(_wgslsmith_mod_u32(43721u, 4294967295u)), _wgslsmith_div_u32(52011u, ~(~4294967295u))), _wgslsmith_div_u32(countOneBits(1u), abs(130493u)), _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 12614u), vec2<u32>(29856u, 17090u)), vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(0u, 0u)), vec2<u32>(countOneBits(4294967295u), 26431u)), 1464f);
    let var_1 = var_0;
    let var_2 = var_0;
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.d.x, 1u), select(0u, 4294967295u, false), 50484u) ^ (_wgslsmith_add_u32(var_1.c, var_2.c) >> (~var_1.c % 32u)), 1u), _wgslsmith_div_vec2_u32(abs(vec2<u32>(_wgslsmith_div_u32(1u, 4294967295u), var_2.d.x | var_2.b)), ~vec2<u32>(func_3(var_1.e, vec3<f32>(1321f, -953f, -690f), -48789i), 4294967295u)));
    let var_4 = reverseBits(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_2.d.x & var_3.x, min(13002u, 21419u), min(var_0.b, var_0.b))), ~vec3<u32>(var_0.c, 4294967295u, 1u)));
    var var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(~vec4<u32>(36726u, var_3.x, var_0.b, var_1.d.x) << (min(vec4<u32>(4294967295u, 45648u, 63222u, 10146u), vec4<u32>(79606u, 0u, var_2.b, 36088u)) % vec4<u32>(32u)), vec4<u32>(var_2.b, 4294967295u << (var_0.b % 32u), _wgslsmith_mult_u32(0u, var_1.c), ~29074u)), vec4<f32>(2191f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-594f - _wgslsmith_f_op_f32(var_0.e + -1348f))), -959f, -454f), firstTrailingBit(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(48341i, 2147483647i), vec2<i32>(-1i, u_input.a) | vec2<i32>(-9457i, u_input.a)))));
}

