struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = 42631i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1120f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1891f, -332f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1059f, _wgslsmith_f_op_f32(-369f - 888f), true)), _wgslsmith_f_op_f32(abs(348f)))));
    return select(vec4<u32>(~arg_0.a, ~16967u | _wgslsmith_sub_u32(~arg_0.a, 0u), _wgslsmith_div_u32(~57908u, ~arg_0.a), select(4294967295u, arg_0.a, true)), _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(4294967295u, arg_0.a), arg_0.a, countOneBits(85821u), firstTrailingBit(arg_0.a)), vec4<u32>(arg_0.a, arg_0.a, firstLeadingBit(abs(0u)), ~(~17179u))), select(select(select(select(vec4<bool>(true, false, arg_1.x, arg_2.a), vec4<bool>(false, arg_2.a, false, true), false), vec4<bool>(false, arg_0.b, false, true), select(vec4<bool>(arg_2.a, arg_2.a, true, arg_1.x), vec4<bool>(arg_2.a, false, arg_0.b, true), vec4<bool>(arg_1.x, arg_0.b, arg_0.b, true))), vec4<bool>(true, arg_1.x, true, !arg_0.b), arg_0.b), select(vec4<bool>(false == arg_1.x, any(vec3<bool>(true, arg_0.b, arg_2.a)), true, any(vec3<bool>(false, arg_2.a, true))), vec4<bool>(true, arg_0.b, u_input.a <= arg_3.x, true), vec4<bool>(select(arg_0.b, true, false), var_1 >= 586f, false, all(arg_1))), !(!vec4<bool>(arg_0.b, arg_1.x, true, arg_0.b))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> vec4<u32> {
    return ~func_3(Struct_2(45u, arg_0.b), !(!(!vec2<bool>(false, arg_0.b))), Struct_1(any(global0[_wgslsmith_index_u32(arg_1, 18u)])), _wgslsmith_mult_vec4_i32(-vec4<i32>(23600i, u_input.a, 2147483647i, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, -36759i)) & vec4<i32>(u_input.a, -33448i, u_input.a, u_input.a));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>) -> f32 {
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    let var_0 = countOneBits(vec3<u32>(arg_1.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(33073u, 5733u, arg_1.x, 46236u) >> (vec4<u32>(1u, 6706u, 47823u, 1u) % vec4<u32>(32u))), func_2(Struct_2(53054u, false), arg_1.x, arg_0.yzz) | ~vec4<u32>(0u, arg_1.x, arg_1.x, arg_1.x)), 29338u));
    global0 = array<vec2<bool>, 18>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(957f, arg_0.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(999f, 807f) + _wgslsmith_f_op_f32(-arg_0.x)))), arg_0.x)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(select(741f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(552f * -1000f) - _wgslsmith_f_op_f32(min(arg_0.x, 627f))), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 18>();
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-354f * -664f)))), _wgslsmith_f_op_f32(func_1(vec4<f32>(_wgslsmith_f_op_f32(-568f * 885f), _wgslsmith_div_f32(2155f, 1034f), _wgslsmith_f_op_f32(floor(-711f)), _wgslsmith_f_op_f32(-1000f * 524f)), vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-762f, -1000f)))))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, var_0.x, -1000f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -475f, 1000f, var_0.x) - vec4<f32>(1309f, var_0.x, var_0.x, -1620f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1584f, -271f, var_0.x, -281f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 885f, -1055f, -1000f)), vec4<f32>(-1276f, var_0.x, var_0.x, 350f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2058f, -558f, 1219f, var_0.x)))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 1373f, var_0.x, 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1327f, var_0.x, var_0.x, var_0.x) + vec4<f32>(-1000f, -1000f, var_0.x, var_0.x)))), var_0.x != var_0.x)));
    var var_2 = u_input.a;
    let var_3 = -min(_wgslsmith_mod_i32(-30442i, u_input.a), u_input.a);
    var_2 = reverseBits(countOneBits(~var_3 ^ 23781i) | _wgslsmith_mod_i32(u_input.a ^ (72025i ^ u_input.a), -1i));
    let var_4 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(var_3, u_input.a, u_input.a, 6010i) >> (vec4<u32>(0u, 0u, 15007u, 25770u) % vec4<u32>(32u))), ~reverseBits(min(vec4<i32>(39949i, u_input.a, u_input.a, var_3), vec4<i32>(2147483647i, 51687i, 18938i, -1i))));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(207f, _wgslsmith_div_f32(-749f, -1000f), all(vec4<bool>(false, false, false, false)))), var_1.x, _wgslsmith_f_op_f32(-var_1.x), -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -2173f, 216f) - vec4<f32>(634f, 260f, var_1.x, var_0.x))) + vec4<f32>(_wgslsmith_div_f32(-417f, 1210f), 186f, 435f, var_1.x)), vec4<bool>(true, true, true, true)))));
    var_2 = -26774i;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, var_0, max(_wgslsmith_mod_u32(_wgslsmith_div_u32(13553u, ~1u), _wgslsmith_mod_u32(max(34654u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(18884u, 115633u), vec2<u32>(1u, 4294967295u)))), min(39372u, firstTrailingBit(func_2(Struct_2(127799u, false), 0u, vec3<f32>(var_0.x, var_1.x, 705f)).x))), 1i);
}

