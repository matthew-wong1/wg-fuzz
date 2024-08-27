struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_4,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: u32, arg_3: u32) -> vec4<bool> {
    var var_0 = Struct_4(firstLeadingBit(~(-vec4<i32>(u_input.c.x, arg_0, -1i, arg_0)) ^ firstLeadingBit(vec4<i32>(u_input.c.x, -1i, 0i, arg_0))));
    var_0 = Struct_4(~firstLeadingBit(var_0.a));
    let var_1 = 1211f;
    var_0 = Struct_4(-_wgslsmith_mod_vec4_i32(var_0.a, _wgslsmith_mod_vec4_i32(var_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, 23784i, 18013i, -2147483647i), var_0.a, vec4<i32>(var_0.a.x, arg_1.x, -11256i, arg_1.x)))));
    var_0 = Struct_4(var_0.a);
    return !vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), !(u_input.c.x <= arg_0) || (_wgslsmith_dot_vec3_u32(vec3<u32>(12627u, 22806u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b)) < _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(arg_2, arg_2))), true, true);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-444f, _wgslsmith_f_op_f32(-631f - _wgslsmith_f_op_f32(f32(-1f) * -1366f)))))) - -793f);
    var var_1 = Struct_1(!vec2<bool>(arg_1, false), any(func_3(_wgslsmith_div_i32(~u_input.c.x, -u_input.c.x), vec3<i32>(-28075i | u_input.c.x, u_input.c.x, _wgslsmith_div_i32(u_input.c.x, 2147483647i)), _wgslsmith_mult_u32(98782u, u_input.a), 1u | u_input.a)));
    let var_2 = abs(2147483647i);
    var_1 = Struct_1(vec2<bool>(var_1.a.x, var_1.b), all(vec3<bool>(!any(vec4<bool>(false, true, var_1.a.x, false)), any(!vec3<bool>(true, true, var_1.a.x)), true)));
    var_1 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, false), select(!(!vec2<bool>(arg_1, arg_1)), !select(vec2<bool>(var_1.a.x, arg_1), var_1.a, vec2<bool>(true, var_1.a.x)), any(select(vec2<bool>(false, false), vec2<bool>(arg_1, true), vec2<bool>(true, true))))), arg_1);
    return _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.c.x, 50583i), select(u_input.c, u_input.c, true)), vec2<i32>(var_2, var_2)), vec2<i32>(~(-2147483647i), abs(countOneBits(u_input.c.x)) | u_input.c.x), -vec2<i32>(~_wgslsmith_add_i32(u_input.c.x, u_input.c.x), var_2));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = ~func_2(firstLeadingBit(vec2<u32>(67323u, ~u_input.b)), !(firstTrailingBit(2147483647i) > u_input.c.x));
    var var_1 = -257f;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, arg_1))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -132f) - vec2<f32>(arg_1, -508f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, 1620f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(205f, _wgslsmith_f_op_f32(step(-1396f, arg_1)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) + -1465f) - _wgslsmith_f_op_f32(-arg_1)));
    let var_3 = Struct_4(countOneBits(-vec4<i32>(-3685i, 50517i, -1i, u_input.c.x) | vec4<i32>(2147483647i, var_0.x, 1i, countOneBits(-18349i))));
    return Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, true), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2054f + _wgslsmith_div_f32(1521f, 798f)))));
    var_0 = func_1(1476f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1135f + -411f)));
    var_0 = func_1(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(505f, -417f)) * _wgslsmith_f_op_f32(-117f - -421f)), _wgslsmith_f_op_f32(485f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(113f, 234f)))));
    var var_1 = vec3<i32>(-max(~(-33601i), 72645i), u_input.c.x, 1i);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-487f, 947f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-325f, -1339f, 504f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-379f, 1000f, -855f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1427f, 452f, -1000f) - vec3<f32>(226f, -1400f, -121f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 1338f, 1000f), vec3<f32>(-669f, 566f, -306f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-965f, -106f, 1413f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1028f, -1578f, 2830f), vec3<f32>(2052f, 246f, -1405f)))), vec3<f32>(1319f, -217f, -1006f))));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(var_2.yy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - var_2.xz) - var_2.yy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-437f, var_2.x, -644f) + vec3<f32>(-1549f, var_2.x, var_2.x)))), 0u == ~(~u_input.b)), 2147483647i, Struct_1(vec2<bool>(min(u_input.b, u_input.b) < max(u_input.b, 0u), !any(vec4<bool>(var_0.a.x, var_0.b, false, false))), func_1(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(-256f, var_2.x)), _wgslsmith_f_op_f32(max(-461f, 1095f))).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(37539u, 1u, _wgslsmith_add_vec4_i32(vec4<i32>(0i, ~(u_input.c.x & 44303i), 23328i, func_2(vec2<u32>(u_input.b, u_input.a) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), false).x), _wgslsmith_sub_vec4_i32(abs(select(vec4<i32>(-15642i, u_input.c.x, -27286i, -2147483647i), vec4<i32>(var_1.x, var_1.x, var_3.b, var_3.b), var_0.a.x)), firstLeadingBit(-vec4<i32>(var_3.b, -2147483647i, -2147483647i, var_3.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.a.b, var_3.a.b)));
}

