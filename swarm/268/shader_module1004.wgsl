struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 14570u);

var<private> global1: vec2<f32> = vec2<f32>(2108f, -682f);

var<private> global2: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.c, -1017f)));
    global0 = ~firstTrailingBit(max(vec2<u32>(~u_input.c, 24806u << (global0.x % 32u)), firstTrailingBit(firstLeadingBit(vec2<u32>(73426u, u_input.c)))));
    var var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, u_input.c, u_input.c, global0.x), vec4<u32>(global0.x, global0.x, 55308u, u_input.c)), _wgslsmith_sub_vec4_u32(max(vec4<u32>(16390u, u_input.c, 4294967295u, 4294967295u), vec4<u32>(22603u, global0.x, global0.x, u_input.c)), ~vec4<u32>(u_input.c, 4294967295u, 4294967295u, 4294967295u)) << (vec4<u32>(~global0.x, 22568u, _wgslsmith_mult_u32(73981u, u_input.c), 0u) % vec4<u32>(32u))), ~reverseBits(_wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, u_input.c, u_input.c, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c, 18092u, global0.x), vec4<u32>(1u, 0u, 1u, 4294967295u)))));
    global2 = ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.c, 86406u), _wgslsmith_sub_u32(global0.x, 28571u), _wgslsmith_dot_vec3_u32(vec3<u32>(40899u, 4294967295u, u_input.c), vec3<u32>(23471u, 86901u, u_input.c))), reverseBits(vec3<u32>(0u, 37088u, u_input.c)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(21431u, 29339u, 0u), vec3<u32>(global0.x, u_input.c, 0u), vec3<u32>(u_input.c, 0u, 4294967295u)))));
    return _wgslsmith_f_op_f32(-arg_1.c);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(201f - _wgslsmith_f_op_f32(-763f * 1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.d, Struct_1(vec2<bool>(arg_0, arg_1.a.x), vec4<bool>(true, arg_0, arg_0, arg_0), 309f, arg_0)))), _wgslsmith_f_op_f32(min(-768f, _wgslsmith_f_op_f32(-284f + -1506f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - _wgslsmith_f_op_f32(f32(-1f) * -1078f))) * arg_1.c), _wgslsmith_f_op_f32(step(global1.x, arg_1.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(ceil(846f))))));
    var var_2 = var_1.wyz;
    var var_3 = _wgslsmith_add_vec4_i32(firstLeadingBit(u_input.a), u_input.a);
    return Struct_1(arg_1.b.zy, vec4<bool>(true, all(select(arg_1.b.yz, vec2<bool>(true, false), arg_1.b.zx)), false, all(!select(vec2<bool>(arg_1.b.x, true), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_1.d, false)))), -587f, all(vec2<bool>(true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, !arg_0.b, _wgslsmith_f_op_f32(exp2(global1.x)), arg_0.a.x);
    var var_1 = ~(~(~vec2<u32>(4294967295u, global0.x)));
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, var_0.c) - vec2<f32>(-1348f, 1728f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, var_0.c))))))));
    var var_2 = _wgslsmith_div_i32(-u_input.e.x, abs(-abs(u_input.a.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1000f, -1332f) * vec3<f32>(var_0.c, global1.x, var_0.c)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.c, -369f))))))));
    return arg_0;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global2 = 37829u;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(select(888f, global1.x, any(select(vec3<bool>(arg_0.x, true, true), !vec3<bool>(arg_0.x, true, arg_0.x), arg_0.x | false)))), global1.x);
    var var_0 = 1i;
    var var_1 = vec4<u32>(global0.x, ~(~firstLeadingBit(u_input.c)), ~(~_wgslsmith_sub_u32(global0.x, ~55534u)), u_input.c);
    var var_2 = u_input.e.x == -1i;
    return func_4(func_2(true, Struct_1(!arg_0, !vec4<bool>(arg_0.x, true, true, arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -769f), reverseBits(0i) < u_input.a.x)), ~(var_1.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, 0u, 4294967295u) << (vec4<u32>(95283u, 41401u, 0u, 847u) % vec4<u32>(32u)), vec4<u32>(85717u, global0.x, 1u, global0.x)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(true, true));
    global2 = ~(~21878u);
    let var_1 = var_0;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, 1424f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-837f, var_0.c), vec2<f32>(var_1.c, 835f))))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.c, var_1.c)))))));
    let var_3 = ~(-countOneBits(u_input.e));
    var var_4 = func_4(Struct_1(vec2<bool>(~u_input.a.x > max(-1i, var_3.x), func_1(select(vec2<bool>(var_0.a.x, var_1.d), vec2<bool>(var_0.a.x, var_1.b.x), var_0.a)).a.x), vec4<bool>(!any(var_1.b), true, !(!var_1.d), !var_0.b.x), 679f, false), ~(~38477u));
    let var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

