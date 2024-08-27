struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<u32>,
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 673f)))) + -196f)));
    let var_1 = _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(select(0u, 4294967295u, false), ~arg_0.x, 0u, u_input.a.x & arg_0.x)), abs(~vec4<u32>(_wgslsmith_add_u32(arg_0.x, 10391u), ~4294967295u, 13870u, u_input.a.x)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-838f + _wgslsmith_f_op_f32(-254f - 789f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)) * _wgslsmith_f_op_f32(-1f)) * 1121f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-984f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1919f * -277f) - _wgslsmith_f_op_f32(sign(1625f))) - 1f)));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1037f, 1320f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-188f * _wgslsmith_f_op_f32(select(-324f, 2201f, arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -792f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(551f, -1000f, arg_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1251f - -1068f)));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2129f)) + -1367f);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(~vec3<u32>(13755u, u_input.a.x, u_input.a.x), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, var_0, -1123f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(312f, -1029f, var_0) - vec3<f32>(276f, 1513f, var_0)), vec3<f32>(var_0, -1191f, var_0), vec3<bool>(false, false, true))), vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-732f, var_0, -2235f))), vec3<f32>(1000f, -1521f, 1071f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 1000f, var_0), vec3<f32>(var_0, var_0, var_0), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(1u, u_input.a.x, 29869u), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))))));
    var var_2 = !any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), u_input.a.x >= 4294967295u));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(u_input.a.x, u_input.a.x, 57192u), vec2<bool>(true, false))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 543f, var_0) + vec3<f32>(-109f, -566f, 1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))) - vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -721f), _wgslsmith_f_op_f32(step(var_1.x, -805f)))));
    return Struct_4(~_wgslsmith_dot_vec3_u32(~vec3<u32>(75358u, u_input.a.x, 4294967295u), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(1u, u_input.a.x, 1u), vec3<u32>(4294967295u, u_input.a.x, 1u)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec4<i32> {
    var var_0 = vec4<u32>(~66866u, 4294967295u, abs(_wgslsmith_mult_u32(52363u, 14672u >> (_wgslsmith_div_u32(4294967295u, u_input.a.x) % 32u))), _wgslsmith_add_u32(11994u, u_input.a.x));
    var_0 = vec4<u32>(~arg_0.x, var_0.x, _wgslsmith_add_u32(var_0.x, var_0.x) ^ ~(~26371u), var_0.x);
    var var_1 = func_2();
    var var_2 = ~(~(-37350i));
    return vec4<i32>(min(max(~(-1i), select(-2147483647i, -11474i, arg_1)) ^ countOneBits(43574i), select(1i, 1i, any(vec3<bool>(arg_1, arg_1, false))) & (i32(-1i) * -1i)), -27304i, -1i, 39300i << (~(~1u) % 32u));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_1(!vec2<bool>(all(!vec3<bool>(arg_0, false, arg_0)), any(vec4<bool>(false, arg_0, arg_0, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(~vec3<u32>(31627u, 21797u, u_input.a.x), vec2<bool>(arg_0, false))).xy) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1043f, _wgslsmith_f_op_f32(max(2195f, -1796f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-403f)), _wgslsmith_f_op_f32(210f - -1000f)))), min(firstLeadingBit(u_input.a.x), abs(0u)));
    var_0 = Struct_1(!(!vec2<bool>(941f != var_0.b.x, !arg_0)), vec2<f32>(_wgslsmith_f_op_f32(trunc(131f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x)), var_0.b.x))), u_input.a.x);
    return Struct_3(u_input.a, !(!any(vec3<bool>(false, var_0.a.x, true)) & any(vec2<bool>(false, arg_0))), Struct_2(Struct_1(!(!var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 1053f) - var_0.b)), 1u), Struct_1(!select(vec2<bool>(arg_0, false), var_0.a, true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-975f, var_0.b.x)))), ~1u), _wgslsmith_f_op_f32(-var_0.b.x)), var_0.b.x, !arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_add_vec4_i32(-func_1(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(1u, u_input.a.x, 1u, 22081u)), all(vec4<bool>(false, false, true, false))), vec4<i32>(select(~(-22618i), 40074i, true), -74200i, _wgslsmith_mult_i32(-1i, ~(-30843i)), 1i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1322f + _wgslsmith_f_op_f32(f32(-1f) * -199f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + 1552f)), _wgslsmith_f_op_f32(-520f * _wgslsmith_f_op_f32(f32(-1f) * -2274f))))));
    var var_2 = _wgslsmith_div_vec2_u32(u_input.a, var_0.a);
    let var_3 = var_0.c.b.a;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.c.b.b.x, 3573f, 437f)) + vec4<f32>(-830f, -183f, var_0.d, var_0.c.b.b.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(508f, 780f, 1032f, var_0.d))), _wgslsmith_div_vec4_f32(vec4<f32>(344f, var_0.d, var_0.c.c, -1813f), vec4<f32>(-937f, var_0.d, -219f, var_0.c.a.b.x)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -289f), -146f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1000f, var_0.c.a.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(var_3.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 0i, 1i, 46601i), vec4<i32>(25686i, -31872i, -44719i, 1i), vec4<i32>(-2147483647i, 11523i, 2147483647i, -2147483647i))).d)), var_0.c.c, countOneBits(var_2.x), vec4<u32>(~var_0.a.x, var_0.a.x, reverseBits(var_0.c.b.c >> (var_2.x % 32u)) ^ 32604u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 1u), var_2.x), ~_wgslsmith_mult_u32(var_0.a.x, 1u))));
}

