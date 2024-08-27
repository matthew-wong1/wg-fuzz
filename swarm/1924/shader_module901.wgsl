struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>) -> vec2<u32> {
    global0 = Struct_3(vec2<bool>(arg_0.x, !global0.a.x & true));
    global0 = Struct_3(!global0.a);
    let var_0 = i32(-1i) * -(_wgslsmith_mod_i32(0i, _wgslsmith_div_i32(u_input.a, u_input.a)) >> (4294967295u % 32u));
    global0 = Struct_3(!vec2<bool>(any(select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, false, true), arg_0.x)), true));
    var var_1 = global0.a.x;
    return ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, _wgslsmith_mult_u32(1u, ~3680u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_5) -> vec3<f32> {
    var var_0 = Struct_3(select(select(select(vec2<bool>(global0.a.x, true), select(vec2<bool>(arg_3.d.a.x, true), arg_1, arg_1), !vec2<bool>(global0.a.x, global0.a.x)), arg_1, vec2<bool>(arg_3.d.a.x, true)), !arg_1, ~arg_0.x <= 21144u));
    global0 = Struct_3(!select(!vec2<bool>(global0.a.x, false), arg_3.d.a, vec2<bool>(true, true)));
    var var_1 = ~4294967295u << (1u % 32u);
    var_1 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, firstLeadingBit(arg_0.x), ~24583u, 1u), ~abs(vec4<u32>(arg_2.x, arg_2.x, 54296u, 42061u)));
    let var_2 = arg_3.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1674f, -1000f, -2500f) - vec3<f32>(-430f, -1215f, 419f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-307f, -1129f, -1000f), vec3<f32>(-1698f, -1156f, -2659f)))))), vec3<f32>(-1758f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2519f))), 576f), select(vec3<bool>(arg_1.x, false, !arg_3.a.a.x), select(vec3<bool>(var_2.a.x, arg_3.a.a.x, var_2.a.x), select(vec3<bool>(false, var_0.a.x, var_2.a.x), vec3<bool>(arg_1.x, var_0.a.x, false), true), vec3<bool>(global0.a.x, var_2.a.x, false)), true))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = ~firstTrailingBit(~vec3<u32>(reverseBits(8364u), 5416u >> (arg_0.x % 32u), _wgslsmith_clamp_u32(arg_0.x, 78098u, arg_3.b.x)));
    return Struct_2(vec4<u32>(arg_0.x, ~arg_3.b.x << ((var_0.x << (34199u % 32u)) % 32u), ~(arg_0.x ^ _wgslsmith_mult_u32(arg_3.a.x, arg_3.a.x)), 87844u), ~vec3<u32>(arg_3.b.x, 120841u, var_0.x), _wgslsmith_f_op_vec4_f32(arg_3.c - arg_3.c), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-587f * -467f), arg_2.a.x, _wgslsmith_f_op_f32(arg_3.d.a.x * arg_3.c.x)), -2147483647i, ~(_wgslsmith_clamp_i32(arg_3.d.c, arg_3.d.c, arg_3.d.c) << (1u % 32u))));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(select(select(select(select(vec2<bool>(false, global0.a.x), global0.a, false), vec2<bool>(global0.a.x, true), global0.a.x), global0.a, !global0.a.x), global0.a, vec2<bool>(!(global0.a.x | false), true)));
    let var_1 = func_4(~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 57163u), vec2<u32>(1u, 1u)), select(~vec2<u32>(4294967295u, 2133u), abs(vec2<u32>(4294967295u, 38475u)), all(vec3<bool>(true, global0.a.x, var_0.a.x))), vec2<u32>(1u, 1u)), select(vec2<i32>(34807i, -24235i) >> (func_2(vec3<bool>(true, false, true)) % vec2<u32>(32u)), ~(vec2<i32>(arg_0.b, -35791i) >> (vec2<u32>(0u, 19752u) % vec2<u32>(32u))), select(!vec2<bool>(global0.a.x, var_0.a.x), !var_0.a, true || global0.a.x)) | abs(reverseBits(vec2<i32>(0i, u_input.a))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), -927f), _wgslsmith_f_op_vec3_f32(func_3(~vec3<u32>(211u, 36922u, 4294967295u), select(vec2<bool>(true, global0.a.x), vec2<bool>(false, false), vec2<bool>(global0.a.x, true)), vec2<u32>(32015u, 1u), Struct_5(Struct_3(global0.a), 1i, -42448i, Struct_3(vec2<bool>(false, global0.a.x))))), !(!vec3<bool>(var_0.a.x, var_0.a.x, global0.a.x)))), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, ~arg_0.b), _wgslsmith_clamp_i32(2147483647i, arg_0.b >> (4294967295u % 32u), ~(-71759i))), abs(countOneBits(arg_0.c))), Struct_2(vec4<u32>(_wgslsmith_add_u32(~13367u, 1u), countOneBits(~1u), 4294967295u, 41810u), _wgslsmith_mod_vec3_u32(min(firstTrailingBit(vec3<u32>(68003u, 14775u, 1u)), select(vec3<u32>(1u, 13861u, 44541u), vec3<u32>(4294967295u, 18084u, 1170u), vec3<bool>(global0.a.x, global0.a.x, true))), vec3<u32>(reverseBits(42225u), ~45272u, ~34110u)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)), _wgslsmith_f_op_f32(min(-787f, _wgslsmith_f_op_f32(min(-1289f, arg_0.a.x)))), _wgslsmith_f_op_vec3_f32(func_3(~vec3<u32>(4294967295u, 1u, 55510u), var_0.a, ~vec2<u32>(40317u, 16395u), Struct_5(Struct_3(vec2<bool>(global0.a.x, false)), -14957i, u_input.a, Struct_3(global0.a)))).x, -199f), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a - arg_0.a)), firstTrailingBit(_wgslsmith_mod_i32(arg_0.c, arg_0.c)), u_input.a)));
    var var_2 = select(!vec4<bool>(false, global0.a.x, true, var_0.a.x), !select(!select(vec4<bool>(var_0.a.x, var_0.a.x, global0.a.x, true), vec4<bool>(false, false, true, false), false), vec4<bool>(global0.a.x, false, any(vec2<bool>(false, global0.a.x)), true), (0i >= var_1.d.c) & (global0.a.x || global0.a.x)), !(!(!(!vec4<bool>(true, var_0.a.x, true, true)))));
    var var_3 = u_input.a;
    var var_4 = 13792u;
    return Struct_3(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(vec3<f32>(_wgslsmith_div_f32(-596f, -633f), -282f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1088f - 2420f))), i32(-1i) * -(~u_input.a), -2147483647i));
    var var_0 = 1f;
    let var_1 = vec3<f32>(838f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1320f)))))), _wgslsmith_f_op_f32(691f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1736f + 633f) * -1323f), -1591f))));
    var_0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(-29402i, ~u_input.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(999f, var_1.x, var_1.x) - var_1))), var_1)))));
}

