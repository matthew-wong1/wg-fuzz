struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: i32) -> vec3<u32> {
    var var_0 = arg_1.b.d;
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, arg_1.b.d, arg_1.b.d, -192f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.d, arg_0.x, arg_0.x, arg_1.b.d))))))));
    var_0 = _wgslsmith_f_op_f32(abs(2969f));
    var_0 = 439f;
    let var_2 = 1u;
    return vec3<u32>(abs(select(_wgslsmith_add_u32(u_input.d, u_input.a.x), var_2, false)) | u_input.d, _wgslsmith_mod_u32(~62403u, abs(_wgslsmith_add_u32(u_input.a.x, arg_1.b.b.x))) & ~firstTrailingBit(firstLeadingBit(59652u)), reverseBits(_wgslsmith_mod_u32(~var_2, 0u)) | _wgslsmith_mult_u32(abs(4294967295u ^ u_input.d), _wgslsmith_dot_vec3_u32(arg_1.b.b, vec3<u32>(1189u, 0u, arg_1.c.x)) << (var_2 % 32u)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec4<i32>) -> u32 {
    let var_0 = Struct_2(u_input.a.x, Struct_1(_wgslsmith_div_i32(0i, _wgslsmith_sub_i32(49141i, 2147483647i)), ~max(vec3<u32>(42320u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, 39333u)) ^ func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1249f)), Struct_2(u_input.a.x, Struct_1(arg_2.x, vec3<u32>(4294967295u, u_input.a.x, 0u), arg_2.wxx, -1000f), vec4<u32>(u_input.a.x, 96957u, 1u, 39881u)), Struct_4(vec3<i32>(u_input.b, u_input.b, arg_2.x), vec2<f32>(-420f, -616f), vec3<f32>(-143f, -130f, arg_0)), -1i), -(reverseBits(vec3<i32>(12067i, u_input.c, arg_2.x)) | countOneBits(arg_2.xxx)), -562f), ~max(~(~vec4<u32>(0u, 1u, u_input.d, 4294967295u)), ~(~vec4<u32>(1u, u_input.d, u_input.d, u_input.d))));
    var var_1 = reverseBits(~(~(~u_input.a.x))) > u_input.d;
    let var_2 = -select(-abs(vec4<i32>(var_0.b.a, arg_2.x, -21516i, arg_2.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-50226i, var_0.b.a), vec2<i32>(var_0.b.c.x, u_input.b)), arg_2.x ^ u_input.c, _wgslsmith_mod_i32(36674i, -59380i), arg_2.x << (97785u % 32u)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true))) << (vec4<u32>(firstLeadingBit(11891u), 1u, ~16772u, 27900u) % vec4<u32>(32u));
    let var_3 = Struct_3(vec4<u32>(var_0.c.x, 11987u, u_input.a.x, u_input.a.x), vec3<bool>(!any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), -1i == firstTrailingBit(u_input.b), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))), var_0.b, -1i, select(vec4<bool>(reverseBits(var_2.x) <= _wgslsmith_clamp_i32(-65940i, 2147483647i, var_2.x), true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, true)), true));
    var_1 = select((var_3.a.x <= _wgslsmith_mult_u32(80121u << (u_input.a.x % 32u), u_input.d)) & (any(var_3.e) || all(var_3.e)), !(!(!(!var_3.e.x))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, var_3.a.x), 12559u, _wgslsmith_sub_u32(u_input.a.x, 8031u)), ~(~30948u)) > countOneBits(32095u));
    return countOneBits(u_input.d >> (_wgslsmith_mod_u32(1u, 4294967295u << (var_0.c.x % 32u)) % 32u)) | (14213u | ~var_0.c.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    var var_0 = Struct_3(reverseBits(vec4<u32>(u_input.a.x, ~func_2(-726f, -535f, vec4<i32>(-95582i, u_input.b, 0i, arg_2)), _wgslsmith_add_u32(~16838u, max(u_input.a.x, 57297u)), u_input.a.x)), select(vec3<bool>(!any(arg_1), all(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), all(arg_1.ywx)), arg_1.ywz, true), Struct_1(1455i, _wgslsmith_clamp_vec3_u32(~max(vec3<u32>(4294967295u, 0u, 48588u), vec3<u32>(u_input.d, 1u, 1u)), select(firstLeadingBit(vec3<u32>(u_input.d, 7522u, u_input.d)), vec3<u32>(4294967295u, u_input.d, 0u), select(vec3<bool>(true, true, true), arg_1.xww, true)), vec3<u32>(~u_input.d, u_input.d, u_input.a.x)), vec3<i32>(arg_2, min(arg_2, countOneBits(-34364i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-3519i, u_input.c, u_input.c, 19125i), vec4<i32>(-7696i, -12021i, u_input.c, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(313f, _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(2075f + 1000f))), countOneBits(-(~26088i & _wgslsmith_add_i32(u_input.b, arg_2))), arg_1);
    var var_1 = all(vec3<bool>(false & (1i == u_input.c), true, false)) | var_0.e.x;
    var_0 = Struct_3(var_0.a, select(var_0.b, vec3<bool>(false, false, (var_0.a.x & 1u) >= abs(var_0.c.b.x)), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), var_0.e.zxw))), var_0.c, -var_0.d, !arg_1);
    var_0 = Struct_3(select(firstLeadingBit(var_0.a), var_0.a, vec4<bool>(all(vec2<bool>(true, false)) || arg_1.x, select(any(vec2<bool>(arg_1.x, arg_1.x)), !arg_1.x, !arg_1.x), any(vec4<bool>(true, var_0.b.x, var_0.e.x, var_0.b.x)), true)), vec3<bool>(var_0.b.x, !all(var_0.e), var_0.e.x), Struct_1(~arg_2, var_0.c.b, var_0.c.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1108f * 1525f) - var_0.c.d), -1000f))), u_input.b, arg_1);
    var_1 = select(false, !arg_1.x & !(!var_0.b.x), var_0.b.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2057f + -327f), _wgslsmith_f_op_f32(-var_0.c.d))) * 286f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1181f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1265f, -444f) + vec2<f32>(1000f, -1490f))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, false, true), any(vec4<bool>(true, true, true, false))), _wgslsmith_add_i32(25898i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.c, u_input.c, u_input.c)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1135f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(505f, 558f)), _wgslsmith_f_op_f32(round(-1314f)))))));
    var var_1 = Struct_2(u_input.a.x, Struct_1(u_input.c, _wgslsmith_sub_vec3_u32(firstTrailingBit(max(vec3<u32>(9806u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.d, 16396u, u_input.a.x))), min(select(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(u_input.d, u_input.a.x, u_input.d), true), ~vec3<u32>(u_input.a.x, u_input.d, u_input.a.x))), -countOneBits(-vec3<i32>(-2147483647i, 1i, u_input.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))), firstLeadingBit(firstTrailingBit((vec4<u32>(49712u, u_input.d, u_input.a.x, 69927u) ^ vec4<u32>(1u, u_input.a.x, u_input.d, u_input.d)) >> ((vec4<u32>(17117u, u_input.a.x, 62777u, 4294967295u) >> (vec4<u32>(64447u, u_input.a.x, u_input.a.x, 42290u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    var_1 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~var_1.c, select(firstLeadingBit(vec4<u32>(u_input.d, 56763u, u_input.d, 4294967295u)), _wgslsmith_add_vec4_u32(var_1.c, vec4<u32>(u_input.a.x, var_1.a, var_1.a, var_1.b.b.x)), true)), var_1.c.x), var_1.b, ~(~max(abs(var_1.c), _wgslsmith_clamp_vec4_u32(var_1.c, var_1.c, var_1.c))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 626f)))));
    var var_3 = Struct_1(-(~u_input.c), vec3<u32>(u_input.a.x, 34654u, ~1u), vec3<i32>(_wgslsmith_mult_i32(-u_input.c, -2147483647i), ~max(-2147483647i, -5744i), max(-2848i ^ var_1.b.c.x, ~var_1.b.a)), 397f);
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(u_input.c & 0i, var_3.c.x), vec4<i32>(_wgslsmith_div_i32(abs(4149i | var_1.b.a), abs(103828i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_1.b.c.x, 4453i, 2147483647i), vec4<i32>(11406i, 2147483647i, u_input.b, var_3.c.x) & vec4<i32>(u_input.b, u_input.c, var_3.a, var_1.b.c.x)), var_3.c.x | 1i, u_input.c), 1u);
}

