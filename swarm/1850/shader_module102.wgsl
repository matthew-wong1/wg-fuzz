struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -1000f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> u32 {
    return ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x) | max(vec3<u32>(4294967295u, u_input.e.x, 7676u), u_input.e)), vec3<u32>((u_input.e.x | 0u) | 1u, ~(u_input.e.x >> (u_input.e.x % 32u)), 41864u));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(firstLeadingBit(arg_2), !arg_3.b, !arg_3.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-608f, arg_1, -1000f, arg_1) * vec4<f32>(1000f, arg_3.d.x, arg_3.d.x, 1117f)))) - _wgslsmith_div_vec4_f32(arg_3.d, _wgslsmith_f_op_vec4_f32(-arg_3.d))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3.d - vec4<f32>(arg_1, -667f, -186f, 194f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(390f, -508f, arg_1, arg_1))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_3.d.x, arg_1, 159f))))), (1u ^ arg_3.e) & 1u);
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(~arg_2, abs(~40774u << ((29406u ^ arg_2) % 32u))), 12173u, arg_3.e, 1u);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, arg_1)) + _wgslsmith_f_op_f32(-1000f - var_0.d.x)))));
    var var_2 = 285f;
    let var_3 = ~u_input.a.x;
    return -927f;
}

fn func_2() -> bool {
    var var_0 = firstTrailingBit(reverseBits(0u) | u_input.e.x);
    var var_1 = !select(vec2<bool>(true, true), !vec2<bool>(true, any(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(false, true, true, true))), _wgslsmith_f_op_f32(func_3(vec3<i32>(-55213i, -72453i, 0i), 251f, u_input.e.x, Struct_1(u_input.e.x, vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec4<f32>(-1851f, -159f, 2202f, -1670f), u_input.e.x))) > -2126f));
    var var_2 = Struct_1(5763u, vec3<bool>(var_1.x != true, var_1.x, !any(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x)))), vec3<bool>(true, !select(var_1.x, all(vec2<bool>(true, var_1.x)), var_1.x), any(!select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1188f * _wgslsmith_f_op_f32(1000f - 841f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-557f, 1158f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1292f * -690f), -491f))), _wgslsmith_f_op_f32(-127f - -757f), _wgslsmith_div_f32(-312f, 1000f)), ~u_input.e.x);
    let var_3 = 0u;
    let var_4 = var_2.d.x;
    return var_2.d.x == -566f;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1205f - var_0.d.x) * 1903f)), _wgslsmith_f_op_f32(-var_0.d.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))))));
    var var_2 = _wgslsmith_div_i32(~0i, -2147483647i);
    var var_3 = var_0.d.x;
    var var_4 = vec3<u32>(~(~firstLeadingBit(_wgslsmith_add_u32(1u, arg_1.e))), min(arg_1.a ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 2101u), abs(u_input.e.zy)), ~71259u << (_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_3.e, 1u), 46674u) % 32u)), 1u);
    return arg_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, _wgslsmith_div_u32(u_input.e.x, 4799u), max(96588u, 21603u), func_1(true)), vec4<u32>(4294967295u, u_input.e.x << (1u % 32u), u_input.e.x, 0u), vec4<u32>(4294967295u, _wgslsmith_add_u32(4294967295u, u_input.e.x), u_input.e.x ^ 72291u, reverseBits(0u))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2(), Struct_1(8087u, select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(560f, -463f, -1587f, -1327f), vec4<f32>(-314f, 697f, 475f, -737f))), 4294967295u), -1000f, Struct_1(~var_0.x, vec3<bool>(true, false, false), vec3<bool>(false, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1167f, -468f, 770f, 563f)), u_input.e.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1000f, -1579f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = Struct_1(abs(abs(~select(u_input.e.x, var_0.x, true))), !select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), var_0.x <= var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true)), !select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, true))), vec3<bool>(true, any(vec3<bool>(true, true, false)), true), vec3<bool>(true, false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-162f - 2146f), _wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(abs(-190f)), -1000f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(606f, -232f, 132f, 365f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -117f, 579f, 1109f), vec4<f32>(585f, 810f, 456f, -893f))), vec4<bool>(true, true, true, true))))), u_input.e.x & u_input.e.x);
    global1 = _wgslsmith_f_op_f32(486f + var_1.d.x);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) - var_1.d.x)));
    global1 = _wgslsmith_div_f32(-1018f, _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f), -351f))));
    let var_2 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.xw, vec2<u32>(1u, u_input.e.x));
}

