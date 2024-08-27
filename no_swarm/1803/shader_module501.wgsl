struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-672f, 2548f, -671f), vec3<f32>(173f, -749f, -1186f), vec3<f32>(228f, 991f, -694f), vec3<f32>(2190f, 151f, 1692f), vec3<f32>(1000f, -1000f, 126f), vec3<f32>(-1720f, -649f, -1099f), vec3<f32>(1000f, 825f, 405f), vec3<f32>(-1628f, 149f, 1000f), vec3<f32>(1069f, -1322f, -1615f), vec3<f32>(676f, -1490f, 321f), vec3<f32>(-557f, -268f, -489f), vec3<f32>(-374f, -2548f, 1000f), vec3<f32>(1000f, -1000f, 191f), vec3<f32>(1556f, 832f, 1116f), vec3<f32>(-1174f, 369f, -2066f), vec3<f32>(-1155f, 2643f, -117f), vec3<f32>(-1253f, -904f, 2409f), vec3<f32>(-1300f, -629f, -830f), vec3<f32>(-1360f, -472f, 672f), vec3<f32>(612f, 2109f, 437f), vec3<f32>(239f, -475f, 511f), vec3<f32>(-367f, 1000f, 598f), vec3<f32>(1078f, 824f, 148f), vec3<f32>(2320f, -270f, 673f), vec3<f32>(225f, -825f, 1060f), vec3<f32>(116f, 1363f, -143f));

var<private> global1: bool = false;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    var var_0 = true;
    let var_1 = ~vec4<u32>(abs(firstTrailingBit(1u)), 1u, ~(~(~49889u)), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(22977u, 0u), max(4294967295u, 44348u)));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(58659i, u_input.a.x), arg_1, arg_2.x);
    var var_3 = 36272i;
    var var_4 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * _wgslsmith_f_op_f32(1177f - arg_0)) - arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -355f)), arg_0);
    return 2360f;
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = select(select(vec4<bool>(global2.x & global2.x, select(global2.x, arg_0.x <= arg_0.x, global2.x && true), false, global2.x), !(!(!vec4<bool>(global2.x, global2.x, global2.x, global2.x))), select(select(vec4<bool>(true, true, true, global2.x), !vec4<bool>(global2.x, global2.x, false, false), all(vec2<bool>(global2.x, false))), vec4<bool>(any(vec2<bool>(true, global2.x)), true, true, false), select(vec4<bool>(global2.x, true, false, true), select(vec4<bool>(false, global2.x, true, true), vec4<bool>(false, false, global2.x, true), global2.x), global2.x && global2.x))), !select(vec4<bool>(1i < u_input.a.x, global2.x, global2.x, any(global2.zy)), select(!vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(false, false, global2.x, global2.x), !global2.x), global2.x), select(!vec4<bool>(global2.x, global2.x, select(false, false, true), global2.x), vec4<bool>(true, true, !global2.x, true), select(select(vec4<bool>(global2.x, global2.x, true, false), select(vec4<bool>(global2.x, false, true, true), vec4<bool>(false, true, global2.x, true), true), global2.x), !vec4<bool>(false, false, global2.x, global2.x), all(select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, false, true, global2.x), global2.x)))));
    global0 = array<vec3<f32>, 26>();
    global1 = firstTrailingBit(_wgslsmith_mult_i32(min(i32(-1i) * -52265i, 2147483647i), ~0i)) > _wgslsmith_div_i32(6439i, -2147483647i);
    let var_1 = _wgslsmith_clamp_u32(firstLeadingBit(3848u), 13820u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, abs(~arg_1)), abs(select(~vec2<u32>(arg_1, arg_1), abs(vec2<u32>(arg_1, arg_1)), any(var_0)))));
    var var_2 = var_1;
    return ~_wgslsmith_add_i32(arg_2.a, -83584i);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = vec4<f32>(1362f, arg_0.a.x, -1211f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(arg_0.a.x)), false))) * _wgslsmith_f_op_f32(-749f - arg_0.a.x)));
    global1 = !(14549u >= ~reverseBits(arg_0.d.x));
    var var_1 = ~_wgslsmith_div_i32(u_input.a.x, func_3(vec3<f32>(_wgslsmith_f_op_f32(min(1870f, arg_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1836f), _wgslsmith_f_op_f32(var_0.x + arg_2)), ~_wgslsmith_clamp_u32(88129u, 1u, arg_0.d.x), Struct_1(0i)));
    global1 = true;
    var_1 = -2147483647i;
    return Struct_1(-42311i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(223f))) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1585f, -1000f), _wgslsmith_f_op_f32(351f + 1622f), any(global2.zx)))), 891f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-174f * _wgslsmith_f_op_f32(2553f - 120f)) + _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(115f * -1028f), -26626i, select(vec4<i32>(u_input.a.x, u_input.a.x, 557i, u_input.a.x), vec4<i32>(-23347i, u_input.a.x, 29766i, -1i), true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f))))));
    let var_1 = vec4<i32>(-u_input.a.x, 45735i, u_input.a.x, -(u_input.a.x | 0i));
    global0 = array<vec3<f32>, 26>();
    var var_2 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-884f, 1013f) * vec2<f32>(241f, -1000f)))), !vec3<bool>(true, global2.x || global2.x, true), vec3<u32>(4294967295u, ~firstTrailingBit(47781u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 9554u, 4294967295u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u))), abs(vec3<u32>(4294967295u, _wgslsmith_div_u32(1u, 4294967295u), reverseBits(33409u))), var_1.yyw), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 6546u, 71145u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u)) >= ~(~_wgslsmith_mult_u32(4294967295u, 0u)), -1490f, 32045u);
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 26u)];
    let var_4 = ~vec3<u32>(~4294967295u << (1u % 32u), ~0u, 338u);
    global1 = !(!all(!(!global2.xy)));
    var_2 = Struct_1(i32(-1i) * -10454i);
    global1 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~(-2147483647i)))), var_4.x);
}

