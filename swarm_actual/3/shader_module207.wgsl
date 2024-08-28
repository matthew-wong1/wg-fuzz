struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<u32>) -> f32 {
    global0 = arg_2.x & ~_wgslsmith_sub_u32(~arg_2.x, abs(2095u) & select(arg_2.x, arg_2.x, true));
    var var_0 = 1985f;
    var_0 = _wgslsmith_f_op_f32(131f + _wgslsmith_f_op_f32(f32(-1f) * -1359f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, arg_0.x), -956f);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))), Struct_1(countOneBits(u_input.a.x) << (~(~arg_2.x) % 32u), !all(vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(1614f + -1561f))))) - -508f);
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(364f, _wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(-612f - -2257f), 1000f), vec4<f32>(-515f, -2137f, _wgslsmith_div_f32(1000f, 100f), -705f), ~(~vec2<u32>(693u, arg_0))))));
    let var_1 = !select(vec4<bool>(true, any(vec2<bool>(false, false)) || any(vec3<bool>(true, false, true)), false, true), vec4<bool>(true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false)), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false))));
    let var_2 = vec4<u32>(arg_0, 84862u, arg_0, firstLeadingBit(select(~arg_0, reverseBits(36996u), var_1.x)));
    global0 = ~reverseBits(firstTrailingBit(_wgslsmith_add_u32(~var_2.x, arg_0)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-560f + var_0))) + 708f) - 1671f)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1965f)), _wgslsmith_f_op_f32(func_2(4294967295u)))) + _wgslsmith_div_f32(_wgslsmith_div_f32(1430f, 165f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(4294967295u)), 1033f, select(true, true, true))))), Struct_1(_wgslsmith_div_i32(u_input.a.x, -u_input.c >> (reverseBits(76932u) % 32u)), any(vec4<bool>(true, true, true, true))));
    global0 = 1u;
    let var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~max(vec3<u32>(0u, 0u, 59219u), _wgslsmith_mult_vec3_u32(vec3<u32>(25603u, 17652u, 0u), vec3<u32>(28514u, 61580u, 4294967295u))));
    var var_2 = max(select(select(select(vec2<u32>(var_1, var_1), vec2<u32>(66762u, var_1), vec2<bool>(false, var_0.b.b)), vec2<u32>(4294967295u, var_1), !var_0.b.b) & vec2<u32>(var_1, 66499u), ~(~vec2<u32>(9251u, 45129u)) & ~vec2<u32>(var_1, var_1), !vec2<bool>(var_0.b.b, any(vec4<bool>(true, var_0.b.b, var_0.b.b, false)))), vec2<u32>(max(~var_1, select(26561u, 8620u | var_1, var_0.b.b && var_0.b.b)), var_1));
    var var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(var_1, _wgslsmith_mult_u32(~4294967295u, ~(~1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(4294967295u, var_2.x), 54372u), abs(vec2<u32>(4294967295u, 4294967295u)) | (vec2<u32>(7290u, 26874u) | vec2<u32>(103915u, var_1)))), vec3<u32>(~(0u ^ var_1), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(45396u, var_2.x), vec2<u32>(var_2.x, var_1) >> (vec2<u32>(44769u, var_1) % vec2<u32>(32u))), ~abs(var_1)), ~reverseBits(4294967295u >> (var_2.x % 32u))));
    return Struct_2(_wgslsmith_f_op_f32(sign(var_0.a)), var_0.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    global0 = 1u ^ firstTrailingBit(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(64116u, 4294967295u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(48107u, 54790u), vec2<u32>(1u, 77470u))));
    global0 = ~(~(~1u));
    return 533f;
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: vec4<f32>) -> bool {
    global0 = countOneBits(~(~4294967295u));
    return !(!all(vec3<bool>(any(vec3<bool>(true, false, false)), true, 63271i != u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~(~vec3<u32>(1u, 1u, 1u)));
    var var_1 = vec2<bool>(var_0.x < ~(~28069u), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), func_1()))), 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(572f, 2060f, -1968f, -319f))) * vec4<f32>(-586f, _wgslsmith_f_op_f32(-209f - -2046f), _wgslsmith_f_op_f32(-144f - -857f), _wgslsmith_f_op_f32(1854f - -1289f)))));
    var var_2 = 2886f;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(1418f)), Struct_1(u_input.a.x, true));
    var_3 = Struct_2(1079f, Struct_1(_wgslsmith_clamp_i32(select(7518i, -1i, any(vec2<bool>(var_1.x, false))), 1i, u_input.a.x), false));
    var var_4 = _wgslsmith_f_op_f32(func_2(~(~(~_wgslsmith_mod_u32(var_0.x, var_0.x)))));
    let var_5 = select(!select(select(vec3<bool>(var_1.x, true, var_3.b.b), !vec3<bool>(var_1.x, var_3.b.b, var_3.b.b), false), !(!vec3<bool>(var_1.x, false, false)), select(vec3<bool>(true, var_1.x, false), !vec3<bool>(var_3.b.b, false, true), vec3<bool>(true, true, false))), vec3<bool>(any(select(!vec3<bool>(var_1.x, var_3.b.b, var_3.b.b), vec3<bool>(true, var_3.b.b, var_3.b.b), select(vec3<bool>(var_3.b.b, true, false), vec3<bool>(false, var_1.x, var_3.b.b), vec3<bool>(true, var_3.b.b, var_1.x)))), false, var_3.b.b), select(vec3<bool>(var_3.b.b, true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, var_3.b.b), vec3<bool>(var_1.x, false, var_3.b.b)))), select(select(vec3<bool>(true, var_3.b.b, var_1.x), vec3<bool>(var_1.x, false, var_1.x), true), vec3<bool>(true, var_1.x, !var_1.x), select(vec3<bool>(false, false, var_1.x), select(vec3<bool>(true, false, false), vec3<bool>(var_1.x, var_1.x, false), false), !var_3.b.b)), vec3<bool>(!var_1.x, !all(vec2<bool>(var_3.b.b, false)), var_1.x)));
    var var_6 = var_3.b;
    var_0 = ~(~firstTrailingBit(vec3<u32>(var_0.x & var_0.x, firstTrailingBit(4294967295u), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(1u, abs(57016u), 1u, var_0.x) >> (~(~vec4<u32>(0u, var_0.x, var_0.x, var_0.x)) % vec4<u32>(32u)), countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 0u, var_0.x, 17163u)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1f)));
}

