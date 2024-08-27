struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_5) -> u32 {
    return 49607u;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_4(Struct_2(~(~abs(vec3<u32>(48248u, 0u, 28004u))), ~max(~vec3<u32>(26116u, 25434u, u_input.b.x), vec3<u32>(10061u, 37876u, u_input.b.x) | vec3<u32>(9687u, u_input.b.x, 1u)), Struct_1(!(68577u <= u_input.b.x), select(any(vec2<bool>(true, true)), false, all(vec3<bool>(true, true, true)))), _wgslsmith_div_u32(10818u, ~func_3(u_input.c.zx, Struct_5(vec4<bool>(true, true, false, false), Struct_1(true, true), u_input.e.xz, vec3<f32>(-1166f, -801f, -306f))))), Struct_1(any(vec3<bool>(true, true, all(vec2<bool>(false, true)))), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)))));
    let var_1 = select(select(vec2<bool>(true, !(var_0.b.b != var_0.a.c.b)), !vec2<bool>(var_0.b.b, true), var_0.a.c.a && any(!vec2<bool>(var_0.a.c.a, false))), !vec2<bool>(var_0.a.c.b, all(vec4<bool>(var_0.b.a, var_0.a.c.a, false, var_0.b.b))), vec2<bool>(1448f <= _wgslsmith_f_op_f32(-264f * _wgslsmith_f_op_f32(select(-1023f, 1180f, var_0.a.c.b))), any(vec4<bool>(all(vec3<bool>(true, var_0.a.c.b, false)), true, var_0.b.b, true))));
    let var_2 = Struct_4(var_0.a, var_0.a.c);
    var var_3 = Struct_3(!(!vec3<bool>(true, any(vec4<bool>(true, true, var_1.x, var_1.x)), any(vec4<bool>(false, var_1.x, true, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-708f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2542f - 289f))), _wgslsmith_f_op_f32(-2520f + _wgslsmith_div_f32(-1683f, -172f)))));
    var var_4 = Struct_3(select(vec3<bool>(all(select(var_1, var_1, false)), true, var_3.a.x), var_3.a, var_0.b.a), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2603f * 693f)), var_3.b.x)), var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2031f, -543f, 1245f, var_4.b.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1411f, -1934f, var_4.b.x, var_4.b.x) * vec4<f32>(var_4.b.x, 604f, var_3.b.x, var_4.b.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1943f, var_4.b.x, var_3.b.x, 1000f), vec4<f32>(1609f, -1000f, -1230f, var_4.b.x))), true)), vec4<bool>(!var_3.a.x, any(vec4<bool>(var_4.a.x, true, var_0.b.a, var_0.b.b)), any(var_4.a.yx), any(var_3.a)))) - vec4<f32>(var_4.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.b.x))), var_4.b.x, 1387f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1072f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(150f + arg_1.b.x), arg_1.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) - _wgslsmith_div_f32(1083f, arg_2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * 450f) * _wgslsmith_f_op_f32(arg_2.x - arg_1.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -206f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 304f) + arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(556f, arg_1.b.x, _wgslsmith_f_op_f32(arg_2.x + arg_2.x), -1000f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()));
    var var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1804f)))), _wgslsmith_div_f32(-1058f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b.x)))), _wgslsmith_f_op_f32(var_0.x + -378f), var_0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())));
    var_1 = 168f;
    return vec3<bool>(arg_1.a.x, (min(abs(u_input.b.x), 4294967295u) | firstLeadingBit(~0u)) > select(arg_3.x, ~u_input.b.x ^ (17515u & u_input.b.x), abs(u_input.a.x) >= firstLeadingBit(u_input.d)), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(255f + 1258f), 1350f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -505f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-3025f, -182f)) - -1537f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-300f, var_0.x) - vec2<f32>(var_0.x, var_0.x)) - vec2<f32>(1000f, 1308f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(446f, var_0.x))) * vec2<f32>(1533f, 987f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(-var_0.x))));
    let var_1 = ~(~vec3<u32>(abs(u_input.b.x), u_input.b.x, 5223u)) & ~vec3<u32>(45543u, _wgslsmith_div_u32(max(21504u, u_input.b.x), ~1u), _wgslsmith_mod_u32(~u_input.b.x, 4294967295u));
    var var_2 = var_0.x;
    var var_3 = Struct_3(select(select(!func_1(vec2<bool>(false, false), Struct_3(vec3<bool>(true, true, false), vec3<f32>(1001f, -458f, var_0.x)), vec4<f32>(var_0.x, -254f, var_0.x, 1409f), vec4<u32>(var_1.x, var_1.x, 102372u, u_input.b.x)), vec3<bool>(true, true, true), true), vec3<bool>(true, _wgslsmith_f_op_f32(exp2(var_0.x)) > _wgslsmith_f_op_f32(ceil(var_0.x)), true), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), vec3<f32>(1513f, _wgslsmith_f_op_f32(select(var_0.x, 1f, any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_2 = -943f;
    var_3 = Struct_3(select(var_3.a, var_3.a, all(!select(var_3.a.zx, var_3.a.zy, var_3.a.xz))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-379f, var_3.b.x), 232f, -1734f), var_3.b, all(!var_3.a.xy))));
    var var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(~(-1i), u_input.a.x, u_input.a.x, ~u_input.d), min(-min(_wgslsmith_sub_vec4_i32(vec4<i32>(-46454i, -32552i, u_input.d, 14506i), vec4<i32>(0i, u_input.c.x, u_input.d, u_input.e.x)), abs(vec4<i32>(u_input.d, -2147483647i, u_input.c.x, 3644i))), vec4<i32>(_wgslsmith_div_i32(0i, u_input.a.x), -2147483647i, -1i, -2147483647i)));
    var_4 = select(vec4<i32>(1i, ~(-2147483647i), firstTrailingBit(abs(var_4.x & var_4.x)), _wgslsmith_sub_i32(~21078i, 10560i)), vec4<i32>(-2147483647i, max(i32(-1i) * -1i, u_input.e.x), -(var_4.x ^ _wgslsmith_mult_i32(0i, u_input.e.x)), firstLeadingBit(1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(trunc(-2265f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_2()).x))) != -255f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f + var_0.x)) - var_3.b.x))), var_1);
}

