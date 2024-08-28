struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(663f, vec3<bool>(false, false, true)), Struct_1(-334f, vec3<bool>(true, false, false)), Struct_1(1210f, vec3<bool>(true, false, true)), Struct_1(2534f, vec3<bool>(false, true, false)), Struct_1(1390f, vec3<bool>(false, true, false)), Struct_1(-238f, vec3<bool>(true, false, false)), Struct_1(-1000f, vec3<bool>(true, false, false)), Struct_1(1677f, vec3<bool>(true, true, true)), Struct_1(-582f, vec3<bool>(false, true, false)), Struct_1(1000f, vec3<bool>(false, false, false)), Struct_1(-732f, vec3<bool>(false, false, false)), Struct_1(-667f, vec3<bool>(true, true, true)), Struct_1(1884f, vec3<bool>(true, true, false)), Struct_1(-1138f, vec3<bool>(false, false, true)), Struct_1(-330f, vec3<bool>(false, false, true)), Struct_1(-315f, vec3<bool>(true, false, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = 898f;
    var var_1 = u_input.a;
    var var_2 = ~abs(vec2<u32>(~0u, u_input.a));
    global0 = array<Struct_1, 16>();
    let var_3 = global0[_wgslsmith_index_u32(~var_2.x, 16u)];
    return firstTrailingBit(firstTrailingBit(14214u));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> vec4<u32> {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_0 = 10087i;
    var_0 = arg_1.x;
    let var_1 = arg_0;
    return vec4<u32>(~u_input.a, u_input.a | 65441u, ~_wgslsmith_clamp_u32(~88095u << (u_input.a % 32u), _wgslsmith_mult_u32(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(44206u, 0u, 33822u, u_input.a))), ~(~19276u)), func_3(true));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(max(u_input.a, _wgslsmith_div_u32(~u_input.a, ~_wgslsmith_add_u32(~u_input.a, firstTrailingBit(20194u)))), 16u)];
    global0 = array<Struct_1, 16>();
    let var_1 = abs(~select(func_2(_wgslsmith_f_op_f32(-var_0.a), countOneBits(vec4<i32>(-2147483647i, -37116i, 12536i, 49298i)), i32(-1i) * -1i), _wgslsmith_sub_vec4_u32(~vec4<u32>(58481u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, 4294967295u, 16100u, u_input.a)), vec4<bool>(any(vec4<bool>(arg_0, false, arg_0, arg_0)), arg_0 & var_0.b.x, var_0.b.x, arg_0)));
    var var_2 = ~(vec2<i32>(-1i) * -select(vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, -16956i), var_0.b.x));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-249f + -811f), var_0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1117f), 469f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(417f * 443f), _wgslsmith_f_op_f32(-335f * -128f))), 885f, -383f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-778f, -330f)), _wgslsmith_f_op_f32(func_1(var_0)), all(vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1326f), 1791f), !select(!select(vec3<bool>(false, false, false), vec3<bool>(true, var_0, false), vec3<bool>(true, var_0, var_0)), !(!vec3<bool>(var_0, var_0, var_0)), select(!vec3<bool>(var_0, true, false), !vec3<bool>(var_0, var_0, false), !vec3<bool>(var_0, true, true)))));
    var var_2 = -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~(~vec2<i32>(0i, -2147483647i)), abs(vec2<i32>(-37088i, 37714i))), vec2<i32>(-1i) * -vec2<i32>(-933i, -14787i));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -548f)), 551f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(360f - 1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), -1000f)));
    var var_3 = Struct_1(580f, !(!vec3<bool>(true, true, true & var_0)));
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-225f + -129f), 1000f, _wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-327f, var_4, -1763f))), !(var_3.a <= -176f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1298f, var_3.a)))));
    global0 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(~54039u, u_input.a, u_input.a | ~29051u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, var_3.a, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 845f) - vec4<f32>(562f, 496f, var_3.a, -841f))))), _wgslsmith_f_op_vec2_f32(var_1.xz - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_4 * 2378f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.yy)))))), ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, 0u, u_input.a) ^ vec3<u32>(22282u, u_input.a, u_input.a)), vec3<u32>(1u, 10679u, 1u) ^ select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 0u, u_input.a), false)));
}

