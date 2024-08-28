struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(arg_3, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1296f)), arg_3.x));
    let var_1 = _wgslsmith_clamp_i32(-(-1i & arg_0), arg_0, -1i);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, var_0.x, arg_3.x) + vec3<f32>(-325f, arg_3.x, -754f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, 1619f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1718f, 883f, arg_3.x))), vec3<f32>(-835f, var_0.x, _wgslsmith_f_op_f32(floor(695f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, var_0.x, 729f) + vec3<f32>(-1000f, arg_3.x, 313f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-449f, arg_3.x, arg_3.x))))), select(vec3<bool>(true, true, any(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), true))), !(!vec3<bool>(true, arg_2, false)), !vec3<bool>(arg_3.x < var_0.x, arg_2, arg_2))));
    return _wgslsmith_f_op_f32(max(-1270f, _wgslsmith_div_f32(1453f, -512f)));
}

fn func_4(arg_0: f32) -> i32 {
    var var_0 = countOneBits(u_input.c);
    let var_1 = !(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, false))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1016f, -323f, -1187f), vec3<f32>(arg_0, -1689f, arg_0))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-254f, arg_0, 1446f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, 293f, arg_0)))))))))));
    let var_3 = u_input.a.x;
    var var_4 = false || !select(all(!vec3<bool>(false, var_1.x, false)), all(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, false, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true))), all(vec4<bool>(true, false, var_1.x, false)));
    return ~0i;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: u32) -> i32 {
    global0 = -_wgslsmith_div_i32(-func_4(_wgslsmith_f_op_f32(func_3(u_input.b.x, 40208u, false, vec2<f32>(arg_2, -2016f)))), _wgslsmith_div_i32(~_wgslsmith_sub_i32(7904i, -95875i), -2147483647i));
    return -(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) | min(-_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.c, 1i)), -u_input.c));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> f32 {
    global0 = ~func_2(_wgslsmith_f_op_f32(trunc(-1000f)), -1000f, arg_0.x, 4294967295u);
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_0.x)) - arg_0.x), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1186f)) - _wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1968f)) - 1f)));
    global0 = 0i;
    global0 = func_4(var_0.x);
    let var_1 = 15335u;
    return arg_0.x;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    let var_0 = 1089f;
    let var_1 = _wgslsmith_div_vec4_u32(select(arg_2, ~vec4<u32>(62208u, ~u_input.a.x, 4294967295u, firstTrailingBit(89510u)), vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), any(vec2<bool>(true, true)), !all(vec2<bool>(true, true)))), arg_2);
    global0 = u_input.c;
    var var_2 = var_0;
    global0 = -4055i;
    return 115595u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-(~(u_input.d | -1702i) << (abs(u_input.a.x & 1u) % 32u)));
    global0 = abs(firstLeadingBit(u_input.b.x) << (func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(1000f, -490f), 0i))), Struct_1(max(u_input.b, vec2<i32>(u_input.b.x, 2147483647i))), ~vec4<u32>(24491u, 0u, u_input.a.x, u_input.a.x)) % 32u));
    global0 = _wgslsmith_div_i32(23175i & abs(~(-34758i & u_input.b.x)), -2147483647i);
    global0 = abs(_wgslsmith_mod_i32(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-8550i, u_input.c, u_input.b.x, 2147483647i), vec4<i32>(-61381i, -11544i, u_input.d, 0i))), _wgslsmith_mult_i32(~u_input.d, _wgslsmith_mod_i32(abs(u_input.b.x), u_input.c))));
    global0 = _wgslsmith_clamp_i32(u_input.d, ~(-_wgslsmith_mod_i32(u_input.b.x, -12533i)), _wgslsmith_sub_i32(37516i, _wgslsmith_clamp_i32(-1i, u_input.c, u_input.d) | u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(max(~(~vec2<u32>(4294967295u, 0u)), abs(vec2<u32>(u_input.a.x, u_input.a.x)))), ~(~1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1652f, 911f, -935f, -1992f) + vec4<f32>(140f, 344f, 673f, -924f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-579f, 987f, -1388f, -938f) - vec4<f32>(-697f, -114f, -515f, -651f))))), 1u, u_input.c);
}

