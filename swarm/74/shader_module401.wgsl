struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false));

var<private> global1: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(400f, 1437f, 783f), vec3<f32>(313f, 1000f, 303f), vec3<f32>(1094f, -1609f, 517f), vec3<f32>(672f, 1000f, 391f), vec3<f32>(590f, 256f, -547f), vec3<f32>(-1393f, -950f, 957f), vec3<f32>(928f, -747f, -1007f), vec3<f32>(-391f, 144f, 1000f), vec3<f32>(-567f, 1591f, 1013f), vec3<f32>(-1646f, 248f, -2156f), vec3<f32>(-668f, 303f, -547f), vec3<f32>(-412f, -987f, -363f), vec3<f32>(1398f, -370f, -425f), vec3<f32>(-995f, 257f, -633f), vec3<f32>(-1709f, 198f, 2055f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> f32 {
    let var_0 = vec2<bool>(false, !(!arg_2.e.x) || any(vec4<bool>(2147483647i < arg_0.x, any(global0[_wgslsmith_index_u32(1u, 32u)]), arg_1 != true, arg_1)));
    var var_1 = vec2<bool>(true != var_0.x, firstLeadingBit(u_input.a) != u_input.a);
    let var_2 = Struct_1(select(select(!vec2<bool>(var_0.x, false), !select(vec2<bool>(true, arg_2.b.x), vec2<bool>(true, arg_1), false), false), var_0, select(var_0, var_0, true)), arg_2.c.b);
    var var_3 = vec3<f32>(arg_2.a.x, arg_2.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.c.b * arg_2.a.x), var_2.b, arg_1)));
    let var_4 = !vec3<bool>(all(select(!var_2.a, vec2<bool>(arg_1, var_2.a.x), select(var_0, var_2.a, arg_2.b.x))), !any(!arg_2.b), arg_2.e.x);
    return -1090f;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_3 {
    global1 = array<vec3<f32>, 15>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2663f, _wgslsmith_f_op_f32(abs(575f)), _wgslsmith_f_op_f32(func_3(vec4<i32>(arg_0, -95150i, arg_0, -2147483647i), true, Struct_2(global1[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(1u, 32u)], Struct_1(vec2<bool>(arg_1, false), 653f), vec3<u32>(3589u, 0u, 101265u), vec2<bool>(true, true)), vec3<u32>(0u, 152436u, 4294967295u))))), !global0[_wgslsmith_index_u32(75793u, 32u)], Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(196f - -251f) * -233f)), firstLeadingBit(vec3<u32>(~20805u, _wgslsmith_mult_u32(3099u, 47545u), 4294967295u)), select(select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, true), all(global0[_wgslsmith_index_u32(86729u, 32u)])), !vec2<bool>(arg_1, arg_1), arg_1)), Struct_1(select(!vec2<bool>(true, arg_1), select(!vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), true), !vec2<bool>(arg_1, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(423f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1895f) + _wgslsmith_f_op_f32(min(1633f, 598f))))), _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, reverseBits(1u)), vec2<u32>(1u, 1u)), firstLeadingBit(_wgslsmith_add_u32(select(_wgslsmith_mult_u32(10487u, 0u), _wgslsmith_mod_u32(9476u, 2049u), true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(90811u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)))));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(13427i, u_input.a, 2147483647i), vec3<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, -48896i, -2147483647i), vec3<i32>(u_input.a, u_input.a, arg_0)), -vec3<i32>(-17758i, arg_0, arg_0)), max(arg_0, -8750i) ^ 0i, 39723i)) >> (abs(reverseBits(~(vec3<u32>(0u, 1u, var_0.d) & var_0.a.d))) % vec3<u32>(32u));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(firstTrailingBit(50431u) << (~1u % 32u), 15u)] * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(43867u, 15u)] + global1[_wgslsmith_index_u32(0u, 15u)]))) + vec3<f32>(_wgslsmith_f_op_f32(select(752f, _wgslsmith_f_op_f32(-var_0.b.b), !arg_1)), var_0.b.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-501f * var_0.b.b), _wgslsmith_f_op_f32(select(var_0.a.c.b, 383f, var_0.b.a.x)))))), var_0.a.b, Struct_1(vec2<bool>(select(any(var_0.b.a), arg_1, false | arg_1), any(vec3<bool>(false, false, true))), var_0.b.b), vec3<u32>(~firstLeadingBit(var_0.a.d.x), 4294967295u, _wgslsmith_mod_u32(81503u, 51371u)), var_0.b.a);
    var var_3 = _wgslsmith_f_op_f32(trunc(-1115f));
    return Struct_3(var_0.a, var_0.b, var_0.a.d.x, var_2.d.x);
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.b.a.x;
    global0 = array<vec3<bool>, 32>();
    var var_1 = func_2(-(u_input.a ^ countOneBits(-u_input.a)), !any(vec3<bool>(all(arg_1.a.c.a), select(arg_1.b.a.x, true, arg_1.a.c.a.x), true)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.b), arg_1.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a.a.x)) - func_2(u_input.a, arg_1.b.a.x).b.b))), !vec3<bool>(any(!vec4<bool>(true, false, var_1.b.a.x, arg_1.a.b.x)), var_1.a.e.x, true), func_2(firstTrailingBit(u_input.a), all(!arg_1.b.a)).a.c, ~((var_1.a.d ^ _wgslsmith_mult_vec3_u32(var_1.a.d, var_1.a.d)) << (vec3<u32>(var_1.a.d.x, 0u, arg_0) % vec3<u32>(32u))), !var_1.b.a);
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.b.b - arg_1.a.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f * var_3.b.b))) - -528f)));
}

fn func_1(arg_0: f32, arg_1: u32) -> f32 {
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(arg_1, func_2(62224i, false)))))));
    var var_1 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(0u, 15u)], vec3<bool>(true, true, true), func_2(u_input.a, !(arg_1 >= arg_1)).b, vec3<u32>(arg_1, select(arg_1, arg_1, false) & 1u, 111031u), vec2<bool>(_wgslsmith_f_op_f32(min(2428f, -1143f)) < _wgslsmith_div_f32(-484f, arg_0), !select(false, false, true))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(true, true)), arg_0), ~arg_1, ~arg_1 & (((arg_1 ^ 4294967295u) | arg_1) << (arg_1 % 32u)));
    let var_2 = !any(select(!var_1.b.a, var_1.b.a, select(var_1.a.c.a, select(var_1.a.c.a, var_1.a.e, true), select(vec2<bool>(var_1.a.e.x, true), var_1.b.a, false))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(802f + _wgslsmith_f_op_f32(-var_1.a.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1140f)) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1116f + -1386f))), _wgslsmith_f_op_f32(239f * _wgslsmith_f_op_f32(func_1(-1527f, 0u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -401f) * 842f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -295f, _wgslsmith_f_op_f32(-1182f * _wgslsmith_f_op_f32(f32(-1f) * -1206f))))), vec4<f32>(690f, _wgslsmith_f_op_f32(1269f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(280f - -208f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -910f)), 1367f));
}

