struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: f32) -> bool {
    var var_0 = -u_input.a;
    var var_1 = -_wgslsmith_div_i32(select(-(~2147483647i), _wgslsmith_div_i32(-17256i, -u_input.a), false), u_input.a);
    let var_2 = Struct_3(Struct_2(Struct_1(false), arg_0), 33086i << (1u % 32u), u_input.a >> (~(~u_input.d) % 32u), vec3<f32>(1467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1735f * arg_1))), -214f), Struct_1(!all(select(vec2<bool>(arg_0, false), vec2<bool>(true, false), vec2<bool>(arg_0, true)))));
    var var_3 = Struct_3(Struct_2(var_2.e, all(!select(vec4<bool>(var_2.a.b, arg_0, false, true), vec4<bool>(var_2.e.a, true, var_2.e.a, false), vec4<bool>(arg_0, true, false, arg_0)))), -(~_wgslsmith_div_i32(-2147483647i, 9567i) & _wgslsmith_add_i32(~var_2.b, 1i)), _wgslsmith_dot_vec3_i32(select(~u_input.b, u_input.b, !arg_0), _wgslsmith_add_vec3_i32(abs(u_input.b), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) + var_2.d)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.d.x, -342f, var_2.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1252f, 1000f, arg_1) + var_2.d), u_input.d >= u_input.d)), _wgslsmith_f_op_vec3_f32(-var_2.d)))), var_2.a.a);
    var_1 = countOneBits(2147483647i);
    return !select(any(!(!vec3<bool>(arg_0, var_3.a.a.a, arg_0))), true, all(!(!vec4<bool>(false, false, arg_0, true))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(all(vec3<bool>(!func_3(false, arg_0.x), select(true, any(vec4<bool>(true, true, false, false)), select(false, false, true)), true || all(vec2<bool>(false, true)))));
    let var_1 = firstTrailingBit(reverseBits(u_input.c)) & -_wgslsmith_add_i32(0i, -u_input.a);
    var_0 = Struct_1(all(vec2<bool>(true, true)));
    let var_2 = arg_0.yxy;
    let var_3 = vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, min(0u, u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 28794u), vec2<u32>(0u, 34421u))), reverseBits(vec4<u32>(1u, u_input.d, 4294967295u, u_input.d))), _wgslsmith_div_u32(~max(u_input.d, u_input.d), reverseBits(countOneBits(u_input.d))) >> (11309u % 32u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.d, u_input.d) ^ vec2<u32>(38427u, u_input.d)), ~vec2<u32>(select(19307u, u_input.d, var_0.a), 1u)));
    return Struct_1(var_0.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = !func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-585f, _wgslsmith_f_op_f32(select(-253f, 314f, arg_1.b)), _wgslsmith_f_op_f32(332f * -441f), _wgslsmith_f_op_f32(min(-1533f, 1059f)))))).a;
    var var_1 = arg_1;
    let var_2 = 1649f;
    var var_3 = ~countOneBits(countOneBits(firstLeadingBit(vec3<u32>(u_input.d, arg_2.x, 10733u))) >> (vec3<u32>(_wgslsmith_sub_u32(u_input.d, u_input.d), reverseBits(1u), u_input.d) % vec3<u32>(32u)));
    var_3 = vec3<u32>(u_input.d, ~firstLeadingBit(2681u), u_input.d);
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * 520f), 892f, _wgslsmith_f_op_f32(-530f - var_2), 1000f)) * vec4<f32>(var_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 + var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f) + -245f), var_2)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> f32 {
    var var_0 = func_4(u_input.b, Struct_2(func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1409f, -260f, 1083f, 107f) + vec4<f32>(-1046f, -515f, 840f, 1046f))))), false), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 37060u, arg_1.x), _wgslsmith_mod_vec3_u32(arg_1.zwx, arg_1.zxz))), 1u));
    let var_1 = _wgslsmith_mod_u32(reverseBits(u_input.d), ~_wgslsmith_div_u32(4294967295u & arg_0, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.x, arg_0), 408u)));
    let var_2 = var_1;
    var_0 = Struct_1(any(vec3<bool>(all(select(vec4<bool>(false, var_0.a, true, false), vec4<bool>(false, var_0.a, false, false), vec4<bool>(var_0.a, false, var_0.a, var_0.a))), var_0.a, all(select(vec3<bool>(true, true, true), vec3<bool>(var_0.a, false, false), false)))));
    var var_3 = Struct_3(Struct_2(func_4(firstLeadingBit(firstLeadingBit(vec3<i32>(6641i, 12890i, u_input.b.x))), Struct_2(func_4(vec3<i32>(0i, u_input.a, -1i), Struct_2(Struct_1(var_0.a), var_0.a), vec2<u32>(4294967295u, 0u)), any(vec2<bool>(true, true))), select(arg_1.xz, vec2<u32>(77058u, 1815u), vec2<bool>(var_0.a, false))), any(vec2<bool>(all(vec2<bool>(var_0.a, true)), all(vec3<bool>(var_0.a, true, var_0.a))))), min(2147483647i, _wgslsmith_add_i32(-u_input.b.x, 2147483647i) | _wgslsmith_div_i32(-1i, _wgslsmith_add_i32(-24180i, -10757i))), 17559i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(107f, 1029f, -108f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(394f, -200f, -1317f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(752f, -534f, -942f)))))), Struct_1(!select(false && var_0.a, true, var_0.a)));
    return var_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.d, vec4<u32>(1u, 60965u, 0u, u_input.d)))) * _wgslsmith_f_op_f32(387f - 1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(sign(688f)), true)), _wgslsmith_f_op_f32(-1f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - var_0.x))) - var_0.x), u_input.d);
}

