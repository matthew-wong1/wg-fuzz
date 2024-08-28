struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 18>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    return ~(~55294u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f)), global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -930f, global0.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-715f)), _wgslsmith_f_op_f32(-global0.x), global0.x) * vec3<f32>(_wgslsmith_div_f32(global0.x, 1399f), _wgslsmith_f_op_f32(-493f * global0.x), _wgslsmith_f_op_f32(floor(1053f))))), any(vec4<bool>(!global1.c, true, func_3(vec4<bool>(arg_0.c, arg_1.c, true, arg_0.c), true) >= 111446u, true))));
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~(-(~vec2<i32>(arg_0.b, 1i))), vec2<i32>(-_wgslsmith_add_i32(arg_0.a, 2147483647i), global1.a)), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(12016i, arg_1.a >> (4294967295u % 32u)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(0i, global1.b)), reverseBits(vec2<i32>(arg_0.b, 2147483647i)), ~vec2<i32>(arg_0.a, 29577i)))));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1121f)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1670f, 1402f, -617f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -634f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(259f, 907f, global0.x), vec3<f32>(global0.x, global0.x, global0.x))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.x, global0.x)))), 1636f, global0.x)));
    var var_1 = global1.d;
    var_1 = 66350u;
    return !((-(~arg_0.a) << (arg_0.d % 32u)) <= 2147483647i);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(reverseBits(62092i), i32(-1i) * -global1.a, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))) < 884f) && !((arg_1.c && arg_1.c) && all(vec3<bool>(false, false, arg_1.c))), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.d | 32844u, 1u, 1u >> (arg_1.d % 32u), min(global1.d, global1.d)), ~u_input.c));
    return Struct_1(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.a, arg_1.a)), min(vec2<i32>(arg_1.b, 8507i), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 71857i), vec2<i32>(arg_1.a, -13246i)))), ~reverseBits(arg_0), global1.c, max(1u, var_0.d));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: i32) -> vec2<i32> {
    var var_0 = Struct_1(19126i, -1i | arg_3, true, ~_wgslsmith_clamp_u32(abs(0u), reverseBits(_wgslsmith_div_u32(arg_0.x, 0u)), _wgslsmith_div_u32(1u, arg_0.x)));
    var var_1 = -(1i & firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, 61791i, var_0.b, global1.b), vec4<i32>(-8500i, global1.b, arg_2, global1.a)) & ~1i));
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1726f)) + -1000f)))));
    var var_2 = ~(~4995u);
    var var_3 = func_4(firstTrailingBit(abs(i32(-1i) * -var_0.b)), Struct_1(global1.b, 2147483647i, select(!global1.c, false, global1.c) & var_0.c, _wgslsmith_mod_u32(select(arg_0.x, ~u_input.d.x, func_2(Struct_1(arg_2, global1.b, arg_1, global1.d), Struct_1(global1.a, -12804i, false, var_0.d))), ~37855u)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~u_input.b, _wgslsmith_add_u32(global1.d, arg_0.x), 23382u << (global1.d % 32u), 49174u)), max(u_input.c, vec4<u32>(21658u, 1u, 1u, 0u) & ~vec4<u32>(39929u, u_input.d.x, 29055u, 119059u))));
    return abs(vec2<i32>(max(~var_3.b >> (var_0.d % 32u), -1i), ~_wgslsmith_sub_i32(global1.b, -1i) ^ arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(select(vec4<bool>(false, true, global1.c, global1.c), !vec4<bool>(true, global1.c, global1.c, false), true), vec4<bool>(any(vec3<bool>(global1.c, true, false)), true, global1.c, false), select(!vec4<bool>(true, false, global1.c, true), !vec4<bool>(global1.c, global1.c, global1.c, true), !vec4<bool>(global1.c, false, global1.c, true))));
    var var_1 = vec3<f32>(-484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) * 893f) * 1176f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-825f + global0.x) * _wgslsmith_f_op_f32(global0.x + 1887f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1720f)))), abs(func_1(abs(u_input.c.zzy), global1.c, 2147483647i, _wgslsmith_mod_i32(global1.a, global1.a))) & ~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(1i, global1.b)), vec2<i32>(51537i, -2147483647i)), ~reverseBits(global1.d));
}

