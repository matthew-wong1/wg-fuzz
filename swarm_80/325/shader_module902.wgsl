struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(min(~(~(~5098u)), ~max(u_input.c, 34451u)), u_input.e);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1240f));
    var_0 = Struct_1(firstLeadingBit(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 0u), vec2<u32>(0u, u_input.c)), vec2<u32>(var_0.a, 45023u))), u_input.e);
    var var_2 = Struct_1(~(~reverseBits(var_0.a)), u_input.e);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(select(var_1, var_1, select(3373i >= var_2.b.x, true, true)))));
    return var_2.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec3<f32>) -> u32 {
    var var_0 = countOneBits(max(firstTrailingBit(vec4<u32>(u_input.c, 0u, 0u, 4294967295u) >> (vec4<u32>(0u, 12866u, u_input.c, 25734u) % vec4<u32>(32u))), ~(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))))) & min(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, u_input.c)), 16555u, ~0u, func_3()), vec4<u32>(1u, 0u, ~(~80601u), u_input.c));
    var_0 = vec4<u32>(u_input.c, ~(~_wgslsmith_sub_u32(~52500u, 0u)), var_0.x, 1u);
    var var_1 = ~0u;
    var var_2 = 25365u;
    let var_3 = Struct_1(u_input.c, ~vec2<i32>(u_input.e.x, u_input.b));
    return ~u_input.c;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = 4294967295u;
    var var_2 = arg_0;
    var var_3 = Struct_1(u_input.c, var_2.b);
    var_2 = var_0;
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_i32(arg_2, vec2<i32>(arg_0.b.x, 24491i));
    let var_1 = Struct_1(8771u, min(~(arg_1.b | vec2<i32>(0i, 20852i)) | ~(~arg_2), vec2<i32>(-29763i, firstTrailingBit(select(-2147483647i, u_input.d.x, false)))));
    var_0 = min(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 12075i, 2147483647i, 2147483647i), ~vec4<i32>(arg_1.b.x, var_0.x, -39906i, var_0.x)), 1i), _wgslsmith_sub_vec2_i32(firstTrailingBit(abs(arg_1.b)), vec2<i32>(var_0.x, u_input.e.x >> (20161u % 32u)))) ^ firstLeadingBit(arg_2);
    var var_2 = _wgslsmith_f_op_f32(-arg_3.x);
    var var_3 = arg_3.yxz;
    return func_4(Struct_1(func_2(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, var_3.x, var_3.x), arg_3.xwx, vec3<bool>(true, false, false))))), -vec2<i32>(-44161i, arg_2.x)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(60439i <= arg_1.b.x, true, arg_0 == arg_1.a, any(vec3<bool>(true, true, true)))), !vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), all(vec4<bool>(true, true, true, true)), countOneBits(arg_2.a) < 23464u, true), !vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, true))));
    var_0 = vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-2260f, _wgslsmith_f_op_f32(-2997f * -219f), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1443f, 195f))))) == 1871f, all(vec4<bool>(!all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), var_0.x, var_0.x, true)), var_0.x, var_0.x);
    var var_1 = ((-vec2<i32>(arg_1.b.x, -6438i) & (u_input.e & (arg_2.b | arg_2.b))) << (vec2<u32>(_wgslsmith_mod_u32(8188u << (arg_2.a % 32u), ~1u), func_2(select(vec2<bool>(var_0.x, var_0.x), var_0.xw, false), vec2<bool>(var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-389f, 985f, -313f))))) % vec2<u32>(32u))) ^ ~u_input.d.zy;
    var_1 = arg_2.b;
    var_1 = arg_2.b;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(657f, 255f)));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = func_4(arg_1);
    var_0 = arg_1;
    var_0 = func_4(arg_1);
    let var_1 = Struct_1(_wgslsmith_div_u32(var_0.a, firstTrailingBit(70392u | var_0.a)), firstTrailingBit(~u_input.e));
    let var_2 = firstTrailingBit(~(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(52561i, 47613i, var_1.b.x, 0i), vec4<i32>(-34798i, var_1.b.x, var_1.b.x, var_0.b.x), vec4<i32>(-1i, -54832i, 2147483647i, var_1.b.x)) & vec4<i32>(var_1.b.x, -13873i, -25579i, u_input.e.x))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1546f - arg_0.x), arg_0.x, _wgslsmith_f_op_f32(arg_0.x + -191f), _wgslsmith_f_op_f32(-201f - arg_0.x)) * vec4<f32>(923f, 1004f, 102f, _wgslsmith_f_op_f32(func_5(51050u, arg_1, Struct_1(6118u, var_2.wz)))))), _wgslsmith_dot_vec2_u32(reverseBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.a), vec2<u32>(4294967295u, arg_1.a))), ~(~select(vec2<u32>(arg_1.a, arg_1.a), vec2<u32>(1u, 1u), vec2<bool>(false, true)))), u_input.d, ~select(var_1.b.x, var_0.b.x, ~32324u <= (1u >> (u_input.c % 32u))), _wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(43520u, var_0.a, u_input.c)) ^ firstTrailingBit(vec3<u32>(var_0.a, 51249u, arg_1.a)), select(vec3<u32>(abs(var_0.a), var_0.a, ~u_input.c), _wgslsmith_add_vec3_u32(~vec3<u32>(4283u, arg_1.a, 1u), vec3<u32>(1u, 4294967295u, var_1.a) >> (vec3<u32>(1u, 33440u, var_1.a) % vec3<u32>(32u))), !all(vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -945f;
    let var_1 = vec4<u32>(u_input.c ^ 1u, 9084u, _wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, 0u))), 42630u);
    let x = u_input.a;
    s_output = func_6(vec3<f32>(-169f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(95691u, func_1(Struct_1(4294967295u, u_input.d.yy), Struct_1(4294967295u, u_input.e), u_input.e, vec4<f32>(var_0, var_0, var_0, var_0)), func_1(Struct_1(u_input.c, vec2<i32>(-31680i, u_input.e.x)), Struct_1(u_input.c, vec2<i32>(u_input.a, -15792i)), vec2<i32>(u_input.e.x, 0i), vec4<f32>(-453f, -1595f, -1163f, var_0)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0)), _wgslsmith_f_op_f32(-1705f + var_0)), Struct_1(u_input.c | 27133u, firstTrailingBit(_wgslsmith_mult_vec2_i32(-vec2<i32>(37957i, 20464i), u_input.e))));
}

