struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-122f, 399f, 312f, -359f, -1874f, 220f, 1000f, 1584f, 683f, -1012f, 333f, 532f, -706f, -116f, -170f, -705f, -111f, -543f, -672f, 983f, -467f, -466f, -1258f, -640f, 564f, -362f, -885f);

var<private> global1: array<vec4<u32>, 22>;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 27u)];
    global2 = Struct_2(Struct_1(-_wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(2147483647i, global2.a.b, global2.a.a), 60072i), ~global2.a.a, ~(~_wgslsmith_clamp_u32(4294967295u, 0u, 31823u)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1111f + global2.a.d), _wgslsmith_f_op_f32(-global2.a.d)), global2.b))), global2.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(66260u, 27u)], 779f), global2.a.d)), global2.a.d)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.d, global0[_wgslsmith_index_u32(0u, 27u)]), vec2<f32>(-187f, 863f), global2.b)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)])))), vec2<f32>(2045f, _wgslsmith_f_op_f32(f32(-1f) * -263f))) + vec2<f32>(global0[_wgslsmith_index_u32(global2.a.c, 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f) + global2.a.d))));
    var var_2 = Struct_1(abs(global2.a.a), _wgslsmith_sub_i32(global2.a.b, reverseBits(global2.a.b)), 1u, 1064f);
    var var_3 = global2.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + 1044f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: vec3<u32>) -> vec4<f32> {
    var var_0 = 0u;
    var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_3, ~arg_3), arg_3);
    global1 = array<vec4<u32>, 22>();
    var var_1 = 1042f;
    var var_2 = Struct_2(arg_1.a, true);
    return _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.d))), global0[_wgslsmith_index_u32(4294967295u & (reverseBits(4294967295u) | (global2.a.c | arg_3.x)), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(217f, var_2.a.d, global0[_wgslsmith_index_u32(51966u, 27u)], global0[_wgslsmith_index_u32(arg_2, 27u)]) + vec4<f32>(231f, -1276f, 1263f, arg_0.d)), vec4<f32>(global2.a.d, -754f, arg_0.d, 141f), select(vec4<bool>(var_2.b, true, global2.b, var_2.b), vec4<bool>(arg_1.b, false, global2.b, false), global2.b))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.d, -138f, -414f, global0[_wgslsmith_index_u32(10511u, 27u)])))))));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec4<f32> {
    global0 = array<f32, 27>();
    global1 = array<vec4<u32>, 22>();
    var var_0 = ~(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(global2.a.c, 4294967295u), 126388u) ^ abs(~(~1u)));
    let var_1 = global2.a;
    global1 = array<vec4<u32>, 22>();
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.d, global2.a.d, 674f, global2.a.d))) * vec4<f32>(310f, -470f, -1400f, 1633f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1071f, -260f, 337f, -1790f) + vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 1158f, -676f, -678f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, _wgslsmith_f_op_f32(var_1.d * 2480f), _wgslsmith_f_op_f32(max(-1578f, 530f)), arg_0) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a.d, -271f, -910f, var_1.d)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-254f, var_1.d, global2.a.d, -807f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(global2.a, Struct_2(Struct_1(var_1.a, 0i, 0u, 2144f), arg_1), u_input.a, vec3<u32>(71159u, 80120u, 34057u))))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, var_1.d, var_1.d, -616f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-394f, var_1.d, 678f, -1122f), vec4<f32>(490f, global2.a.d, -135f, 663f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: bool, arg_3: f32) -> Struct_2 {
    let var_0 = select(vec4<bool>(global2.b, !all(arg_1.zy), true, true), !vec4<bool>(all(!vec2<bool>(true, global2.b)), firstTrailingBit(u_input.b) == 4518u, any(arg_1.yx), global2.b), !select(select(!vec4<bool>(true, arg_2, arg_2, false), select(vec4<bool>(true, false, global2.b, true), vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, true)), global2.b), select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_2, global2.b, arg_1.x, true), vec4<bool>(false, arg_1.x, true, false), vec4<bool>(true, arg_2, true, arg_1.x)), true), select(select(vec4<bool>(global2.b, false, true, false), vec4<bool>(arg_1.x, false, arg_1.x, true), arg_2), select(vec4<bool>(arg_1.x, arg_2, global2.b, arg_1.x), vec4<bool>(false, arg_2, true, arg_2), arg_2), select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(global2.b, true, arg_1.x, arg_1.x), vec4<bool>(global2.b, true, arg_2, true)))));
    var var_1 = ~select(vec3<u32>(8073u, 21941u, firstTrailingBit(32588u)), vec3<u32>(firstLeadingBit(global2.a.c), 62211u, global2.a.c), 84172u > abs(global2.a.c)) << ((_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, u_input.b, u_input.c), vec3<u32>(u_input.c, global2.a.c, 4294967295u) ^ vec3<u32>(u_input.b, 1u, global2.a.c)), firstLeadingBit(firstTrailingBit(vec3<u32>(1u, 74402u, 57177u)))) | vec3<u32>(0u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(88242u, global2.a.c)), ~vec2<u32>(global2.a.c, 0u)), 22596u)) % vec3<u32>(32u));
    var var_2 = Struct_2(global2.a, any(arg_1.yy));
    var var_3 = select(~vec2<u32>(var_2.a.c, 94794u), vec2<u32>(var_1.x, ~(~(u_input.c >> (var_2.a.c % 32u)))), all(var_0));
    var var_4 = global2.a;
    return Struct_2(Struct_1(10321i | ~var_2.a.a, global2.a.b, 22497u, global0[_wgslsmith_index_u32(select(1u, global2.a.c, false), 27u)]), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    let var_0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), -258f, global2.a.d, -707f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(-238f, any(vec3<bool>(global2.b, true, global2.b)))))), !vec3<bool>((global2.a.c <= u_input.a) | (u_input.a < global2.a.c), all(vec2<bool>(true, global2.b)), global2.b), !all(vec2<bool>(global2.a.b >= global2.a.a, select(global2.b, global2.b, global2.b))), _wgslsmith_f_op_f32(-global2.a.d));
    let var_1 = ~var_0.a.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, global0[_wgslsmith_index_u32(7640u, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)], var_0.a.d) * vec4<f32>(global2.a.d, global0[_wgslsmith_index_u32(global2.a.c, 27u)], 1000f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.d - global0[_wgslsmith_index_u32(4294967295u, 27u)]), global0[_wgslsmith_index_u32(u_input.c, 27u)], _wgslsmith_f_op_vec4_f32(func_1(-1000f, false)).x, _wgslsmith_f_op_f32(-var_0.a.d)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(626f, -789f, global0[_wgslsmith_index_u32(4294967295u, 27u)], -112f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global2.a.d, 795f, global0[_wgslsmith_index_u32(var_1, 27u)], var_0.a.d), vec4<f32>(global2.a.d, global2.a.d, global0[_wgslsmith_index_u32(var_1, 27u)], var_0.a.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, global2.a.c);
}

