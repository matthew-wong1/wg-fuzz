struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    let var_0 = vec3<bool>(arg_0.c.x && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1194f, arg_2.x)) + _wgslsmith_f_op_f32(-1000f + arg_1)) != 1755f), all(arg_0.c), false);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(arg_2)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x), _wgslsmith_f_op_f32(step(-226f, -1880f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-222f)))), vec3<f32>(368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) + _wgslsmith_f_op_f32(-arg_1)), -551f))), arg_0.a.x > _wgslsmith_mult_i32(-u_input.a, u_input.b.x)));
    let var_2 = vec2<bool>(true, arg_0.c.x);
    var var_3 = var_0;
    let var_4 = arg_1;
    return _wgslsmith_div_u32(1u, 4294967295u);
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1088f, -1938f)), 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(310f, 553f)), -2319f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1652f), _wgslsmith_f_op_f32(f32(-1f) * -608f), true)), 1220f)));
    let var_1 = Struct_4(Struct_1(~abs(vec2<i32>(u_input.b.x, 20072i) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))), ~vec3<u32>(firstLeadingBit(227u), func_3(Struct_1(vec2<i32>(u_input.a, u_input.a), vec3<u32>(u_input.d.x, u_input.d.x, 38305u), vec2<bool>(true, false)), var_0.x, var_0.wzy), 40556u), vec2<bool>(true, true)), vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(2059u, arg_0, 3517u, arg_0)), vec4<u32>(4252u, arg_0, 4294967295u, u_input.d.x)), 24722u, abs(35772u >> (u_input.d.x % 32u)), arg_0) | reverseBits(countOneBits(vec4<u32>(1u, u_input.d.x, 4294967295u, 2118u)) & firstTrailingBit(vec4<u32>(60873u, 37178u, 7168u, 11043u))));
    var var_2 = var_0.x > var_0.x;
    var var_3 = Struct_4(Struct_1(-(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 0i)), vec3<u32>(arg_0, _wgslsmith_div_u32(u_input.d.x, _wgslsmith_mult_u32(0u, var_1.b.x)), 1u), vec2<bool>(true, true)), reverseBits(~var_1.b));
    let var_4 = var_1;
    return -1417f;
}

fn func_1(arg_0: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1318f * _wgslsmith_div_f32(163f, 860f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1082f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(3838u, Struct_3(22973i))) + -1100f))));
    let var_1 = select(u_input.b, vec3<i32>(~u_input.a, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-21451i, -1i, u_input.b.x), vec3<i32>(-1i, u_input.a, u_input.c))), ~u_input.a), select(select(vec3<bool>(select(true, true, true), true, any(vec4<bool>(true, true, false, true))), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), false), vec3<bool>(true, true, 4294967295u > _wgslsmith_mod_u32(arg_0, 0u))));
    let var_2 = Struct_2(var_0.x, select(true, false, (-694f > _wgslsmith_f_op_f32(trunc(-823f))) || select(any(vec2<bool>(true, false)), 0u < arg_0, false)), Struct_1((vec2<i32>(-36074i, u_input.c) ^ _wgslsmith_add_vec2_i32(var_1.zz, u_input.b.zz)) & -vec2<i32>(u_input.c, 0i), _wgslsmith_mod_vec3_u32(vec3<u32>(55445u, 4537u, arg_0), ~vec3<u32>(arg_0, 2049u, 61184u)) & _wgslsmith_mult_vec3_u32(abs(vec3<u32>(253u, 4294967295u, 4294967295u)), abs(vec3<u32>(17353u, arg_0, 3476u))), vec2<bool>(true && any(vec2<bool>(true, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))))), vec2<u32>(_wgslsmith_mod_u32(~arg_0, 35086u), arg_0), u_input.b);
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(9610i, var_1.x & -19331i), -var_1.x), ~(-60934i)), -36178i, -2147483647i);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(~(~u_input.d.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1(u_input.d.x)).x, _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1837f))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(u_input.d.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-211f, var_0.x, var_0.x) + vec3<f32>(-2002f, 1413f, 191f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1379f) + vec3<f32>(-144f, var_0.x, 192f)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1415f, 338f, _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1663f, -1456f) + vec3<f32>(123f, -1672f, var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_vec3_f32(func_1(78427u)).x, var_0.x))), !select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

