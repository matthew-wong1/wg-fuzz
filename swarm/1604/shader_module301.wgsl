struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: i32,
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    var var_0 = any(vec4<bool>(true, true, true, true));
    let var_1 = Struct_4(Struct_1(select(~vec4<u32>(u_input.b.x, 0u, u_input.a.x, u_input.b.x), vec4<u32>(89664u, u_input.b.x, 35794u, 4294967295u), true) >> ((~vec4<u32>(u_input.b.x, 0u, 29312u, u_input.b.x) >> (~vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), any(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec4<u32>(u_input.a.x, select(77780u, 5182u, true), ~u_input.a.x, 18055u), !any(vec4<bool>(false, false, true, true))), _wgslsmith_dot_vec2_u32(~(~u_input.b), reverseBits(abs(u_input.a))), select(~vec3<u32>(u_input.a.x, 0u, 7340u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 41240u, u_input.a.x), vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x)), vec3<bool>(true, true, true)) & firstTrailingBit(~vec3<u32>(5510u, u_input.a.x, u_input.b.x))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), !all(vec4<bool>(false, true, true, false))), !select(true, true, true) != true));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -883f), _wgslsmith_f_op_f32(min(-485f, -1000f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1279f, -397f, var_1.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1235f + -1337f), 1f, !var_1.a.b)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(288f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(264f, -579f), _wgslsmith_f_op_f32(f32(-1f) * -744f))))));
    let var_3 = Struct_1(vec4<u32>(1u, var_1.a.a.x, 15733u, 1u), any(vec4<bool>(true | select(var_1.c.x, false, var_1.a.b), true, var_1.b.a.b, true)));
    var_0 = all(vec2<bool>(!any(vec3<bool>(var_3.b, false, var_3.b)), any(select(!vec3<bool>(var_1.c.x, false, var_1.b.a.b), !vec3<bool>(true, var_1.b.a.b, var_3.b), vec3<bool>(false, false, true)))));
    return vec2<bool>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 2147483647i, -2147483647i) >> (var_1.b.a.a % vec4<u32>(32u)), vec4<i32>(0i, 1i, -491i, -25296i))) != 2147483647i, var_1.b.a.b);
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(136f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1894f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(771f, 202f)))));
    var_0 = -1393f;
    var var_1 = select(vec4<i32>(1i, abs(-2147483647i), (1i >> (_wgslsmith_sub_u32(u_input.b.x, 13372u) % 32u)) << (~u_input.a.x % 32u), 18867i), vec4<i32>(firstLeadingBit(~abs(11017i)), 2147483647i, -10657i ^ ((-596i << (arg_0 % 32u)) ^ 1i), 15098i), !vec4<bool>(true, true, true, false & any(vec3<bool>(false, false, true))));
    let var_2 = all(select(select(func_3(), vec2<bool>(true, all(vec3<bool>(false, true, true))), !any(vec3<bool>(true, false, true))), !select(vec2<bool>(true, true), vec2<bool>(true, false), -47472i < var_1.x), u_input.a.x <= abs(abs(1u))));
    let var_3 = !(!func_3());
    return -250f;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(751f, 156f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(372f, -1806f)))))) * vec2<f32>(_wgslsmith_f_op_f32(func_2(~arg_1.a.a.x)), _wgslsmith_f_op_f32(floor(1580f)))), vec2<bool>(!arg_3.x, any(select(vec4<bool>(arg_3.x, true, true, arg_0.x), vec4<bool>(arg_1.a.b, false, false, true), arg_1.a.b)) | !arg_2.b), select(-select(min(vec2<i32>(63433i, 2147483647i), vec2<i32>(-1i, 2147483647i)), -vec2<i32>(56986i, -1i), select(vec2<bool>(arg_3.x, false), arg_0.wz, vec2<bool>(false, arg_3.x))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(select(vec2<i32>(1i, 2147483647i), vec2<i32>(-2324i, -1i), vec2<bool>(false, arg_3.x))), ~reverseBits(vec2<i32>(0i, 0i)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 3889i), vec2<i32>(0i, -5391i)))), select(!(!vec2<bool>(arg_3.x, arg_1.a.b)), vec2<bool>(true, arg_2.b), vec2<bool>(select(arg_1.a.b, true, true), true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(var_0.a));
    let var_2 = arg_1.a.b;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(trunc(var_1.x))) - _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(trunc(var_1.x)))), 1790f)) + _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x));
    var var_4 = Struct_3(vec2<f32>(_wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-722f)), _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * 268f)))), var_0.b, var_0.c);
    return ~arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u ^ u_input.b.x;
    var var_1 = Struct_1(vec4<u32>(firstLeadingBit(~0u), 4294967295u, var_0, ~u_input.b.x) ^ vec4<u32>(firstLeadingBit(u_input.b.x), reverseBits(func_1(vec4<bool>(false, true, false, false), Struct_2(Struct_1(vec4<u32>(var_0, 51738u, u_input.b.x, 2014u), false), 0u, vec3<u32>(var_0, 1u, u_input.b.x)), Struct_1(vec4<u32>(26227u, var_0, 0u, var_0), true), vec4<bool>(false, true, true, false))), u_input.a.x, u_input.a.x), true);
    var var_2 = 1157f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1934f) - _wgslsmith_f_op_f32(f32(-1f) * -925f)))) - 358f);
    var var_3 = !any(!vec3<bool>(var_1.b, select(var_1.b, true, false), true));
    let var_4 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1099f)))));
    var_1 = Struct_1(vec4<u32>(97481u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, _wgslsmith_dot_vec2_u32(var_1.a.xx, vec2<u32>(var_0, var_0))), vec3<u32>(~0u, ~var_0, 8507u)), abs(~0u) >> (~var_0 % 32u), ~1u), min(var_1.a.x, _wgslsmith_add_u32(0u, var_1.a.x)) < max(~u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(48993u, var_0), ~u_input.a.x)));
    var var_5 = (firstTrailingBit(_wgslsmith_mod_vec2_u32(select(u_input.a, vec2<u32>(0u, 74588u), true), vec2<u32>(var_0, 57749u))) | var_1.a.wz) & vec2<u32>(4294967295u, _wgslsmith_clamp_u32(min(countOneBits(0u), ~var_1.a.x), _wgslsmith_clamp_u32(~var_0, var_0 ^ u_input.b.x, 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, var_0, var_1.a.x, var_0), var_1.a)));
    let var_6 = (-(vec4<i32>(-1i) * -vec4<i32>(-1i, -2147483647i, -19152i, 18188i)) >> (_wgslsmith_mod_vec4_u32(var_1.a, var_1.a) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(var_1.a, ~min(min(vec4<u32>(66898u, 24666u, u_input.b.x, 30236u), var_1.a), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, var_1.a.x))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-140f)), var_6.x, u_input.b, var_6.x);
}

