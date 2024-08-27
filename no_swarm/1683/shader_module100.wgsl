struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    var var_0 = min(min(u_input.b, vec3<i32>(abs(countOneBits(u_input.b.x)), _wgslsmith_add_i32(-11039i, u_input.b.x), u_input.a)), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mult_i32(u_input.e, -1i)), ~abs(abs(1i)), _wgslsmith_dot_vec4_i32(min(vec4<i32>(18672i, -10831i, -3667i, 1i), vec4<i32>(2147483647i, 2147483647i, u_input.e, u_input.a)), -vec4<i32>(u_input.a, u_input.d, u_input.e, u_input.a)) & ~(-u_input.a)));
    global0 = array<vec2<i32>, 4>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-457f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(137f - 2336f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1674f)))));
    var_0 = -_wgslsmith_mod_vec3_i32(abs(u_input.b), vec3<i32>(~(~0i), u_input.a, var_0.x));
    let var_2 = select(!any(vec3<bool>(all(vec2<bool>(true, false)), u_input.c == 40761u, false)), true, !any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true)));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-665f, 2222f) * -423f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1897f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(839f, -1000f))))));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global0 = array<vec2<i32>, 4>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3())))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(342f, var_0.x)))));
}

fn func_1() -> bool {
    global0 = array<vec2<i32>, 4>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -954f, 274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1814f * -1000f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1082f, -275f, -1000f, -107f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1061f, -338f, -475f, 431f))))), vec4<f32>(_wgslsmith_div_f32(-308f, _wgslsmith_f_op_f32(-1405f + 491f)), _wgslsmith_f_op_f32(ceil(-888f)), 668f, -1370f)));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -228f))), var_0.x, var_0.x, _wgslsmith_f_op_f32(trunc(-529f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-630f, -1045f, -1000f, var_0.x) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1257f * var_0.x) - _wgslsmith_f_op_f32(-var_0.x)), var_0.x, var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(vec2<u32>(46374u, u_input.c))))))));
    let var_1 = vec3<i32>(~(~24744i), _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(min(u_input.a, 1i), 58177i)), u_input.d);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(568f)), _wgslsmith_f_op_f32(f32(-1f) * -317f)))) + var_0.x), var_0.x, var_0.x);
    return all(vec3<bool>(true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true))), !(!func_1())));
    var var_1 = Struct_1(var_0, select(!(!vec2<bool>(true, var_0)), vec2<bool>(true, true), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1439f, -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1048f))), -281f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-438f, 1155f, -666f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2098f, 1390f, -273f))))), abs(select(~reverseBits(vec4<i32>(2147483647i, u_input.e, u_input.b.x, u_input.d)), vec4<i32>(-28779i, _wgslsmith_div_i32(-4556i, 2147483647i), i32(-1i) * -6164i, ~2147483647i), !vec4<bool>(true, var_0, var_0, var_0))));
    global0 = array<vec2<i32>, 4>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(625u, u_input.c), vec2<u32>(u_input.c, u_input.c)))), _wgslsmith_f_op_f32(func_2(~vec2<u32>(u_input.c, 66713u))), func_1() & var_0)) - _wgslsmith_f_op_f32(min(var_1.d.x, var_1.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.d.x + var_1.c), _wgslsmith_f_op_f32(-var_1.c))))));
    var_1 = Struct_1(var_1.a, vec2<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.x * var_1.d.x), _wgslsmith_f_op_f32(floor(var_1.c))) < _wgslsmith_f_op_f32(min(855f, _wgslsmith_f_op_f32(var_1.c * 1045f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(309f, -1088f, firstLeadingBit(-2147483647i) <= u_input.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.c, -358f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d + vec3<f32>(-218f, var_1.d.x, var_1.c))), var_1.b.x)), firstTrailingBit(vec4<i32>(abs(max(var_1.e.x, var_1.e.x)), -1i, ~firstTrailingBit(var_1.e.x), ~26293i)));
    var_1 = Struct_1(select(var_0, true, !(!var_1.b.x & var_0)), var_1.b, var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_1.d)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(481f, 1267f, 354f))))) + var_1.d), var_1.e);
    let var_3 = Struct_2(u_input.c, vec2<u32>(26819u, u_input.c) >> (~(~(~vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u)), Struct_1(true, select(var_1.b, vec2<bool>(true, var_0), select(vec2<bool>(false, var_0), select(vec2<bool>(false, var_0), var_1.b, vec2<bool>(var_0, var_1.a)), var_1.a & var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3()).x - _wgslsmith_f_op_vec2_f32(func_3()).x), vec3<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.x, -1052f)), _wgslsmith_f_op_f32(-1488f + var_1.c)), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, 1i, 10368i, -2147483647i) << (vec4<u32>(u_input.c, 34990u, u_input.c, u_input.c) % vec4<u32>(32u))), reverseBits(var_1.e | var_1.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~(~70992i)), 13581i, _wgslsmith_sub_i32(-var_3.c.e.x ^ u_input.b.x, abs(u_input.e)), reverseBits(var_1.e.x) << (0u % 32u)));
}

