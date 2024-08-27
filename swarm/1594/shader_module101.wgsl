struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1496f)))))), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-300f + -436f) * _wgslsmith_div_f32(1000f, -1000f)), _wgslsmith_f_op_f32(1323f * _wgslsmith_f_op_f32(floor(-1117f))))), vec4<bool>(true, true, true, true));
    let var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(select(vec4<u32>(_wgslsmith_mod_u32(2167u, 18507u), u_input.a.x, select(var_0.b, u_input.d.x, var_0.e.x), 4294967295u), vec4<u32>(var_0.b, u_input.d.x, 59853u, u_input.a.x) ^ vec4<u32>(44212u, 4294967295u, var_0.b, var_0.b), !var_0.e.x)), ~abs(~vec4<u32>(36621u, 35667u, 23476u, var_0.b)) << (vec4<u32>(1u, 9142u, reverseBits(_wgslsmith_clamp_u32(18926u, u_input.c, var_0.b)), u_input.a.x) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.d, var_0.a))))) - vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.a)), 1262f))));
    let var_3 = 1u;
    var_0 = Struct_1(341f, ~(~8595u), _wgslsmith_mult_u32(1u, ~66528u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, var_0.a)) * var_2.x) * _wgslsmith_f_op_f32(f32(-1f) * -445f)) + var_0.a), var_0.e);
    return vec4<bool>(var_0.e.x, false, var_0.e.x, !(!var_0.e.x));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_3(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32((u_input.a ^ u_input.a) << (countOneBits(vec2<u32>(arg_0.b, u_input.a.x)) % vec2<u32>(32u)), u_input.a | vec2<u32>(4294967295u, 132138u)), vec2<u32>(~u_input.a.x << (arg_0.c % 32u), abs(1u))), arg_0.e.x, firstLeadingBit(~(i32(-1i) * -2147483647i)));
    return !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1189f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.d, 523f)))) >= _wgslsmith_f_op_f32(max(arg_0.d, arg_0.d)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    var var_0 = Struct_1(arg_1.x, ~(~5086u), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)) - _wgslsmith_f_op_f32(-arg_1.x)), !func_2());
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1063f - arg_1.x), _wgslsmith_f_op_f32(arg_1.x * var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1547f, var_0.d)) * -991f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) - 296f)))), _wgslsmith_mult_u32(u_input.d.x, 42263u), ~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(arg_1.x - -560f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-271f)) * _wgslsmith_f_op_f32(round(-1595f))))), select(select(select(!vec4<bool>(var_0.e.x, false, true, var_0.e.x), vec4<bool>(false, false, var_0.e.x, false), true), vec4<bool>(309f <= arg_1.x, var_0.e.x & true, false, true), !var_0.e), vec4<bool>(true, func_3(Struct_1(-1489f, u_input.c, u_input.c, var_0.d, var_0.e)), true, var_0.e.x), func_2()));
    var_0 = var_1;
    let var_2 = vec4<i32>(-33666i, arg_0.x, arg_2, ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b.x, -arg_2), 2147483647i, ~(-2738i) & select(2147483647i, u_input.e, true)));
    let var_3 = arg_0.wy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 70338u;
    global0 = 69040u;
    global0 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -235f);
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(u_input.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-660f, -311f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-317f, 1034f) * vec2<f32>(1130f, 278f)))))), 22566i)), _wgslsmith_div_f32(304f, -847f)));
    var var_1 = min(u_input.a.x, u_input.c) << (~u_input.a.x % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.b.x, -2147483647i, -38944i, u_input.e), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1784f, -1659f))), u_input.b.x)), _wgslsmith_div_f32(2548f, _wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.b.x, 1i, u_input.e, u_input.e), vec2<f32>(-345f, -545f), u_input.b.x))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -392f), -1114f))), _wgslsmith_dot_vec4_u32(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 10386u, u_input.d.x, 1u), vec4<u32>(22129u, u_input.a.x, 4294967295u, u_input.a.x))), min(~(vec4<u32>(u_input.a.x, u_input.c, u_input.c, 28648u) | vec4<u32>(1u, 0u, 104264u, u_input.a.x)), ~vec4<u32>(12217u, u_input.d.x, 65165u, u_input.a.x))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1242f + 294f)))), vec4<bool>(true, true, true, true));
    var var_3 = Struct_2(vec3<u32>(select(49093u, 4294967295u, var_2.e.x && !var_2.e.x), u_input.d.x, ~(~_wgslsmith_mod_u32(var_2.b, 64963u))));
    let var_4 = Struct_2(~_wgslsmith_div_vec3_u32(vec3<u32>(select(36418u, 42512u, true), firstLeadingBit(var_3.a.x), countOneBits(var_3.a.x)), _wgslsmith_mult_vec3_u32(var_3.a, vec3<u32>(33765u, 0u, u_input.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~u_input.b.xwx), u_input.e, var_3.a.zz, vec3<i32>(abs(40469i), u_input.e, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(countOneBits(u_input.e)), ~_wgslsmith_clamp_i32(-1i, u_input.b.x, u_input.e), -_wgslsmith_mult_i32(-1i, -2147483647i)), u_input.b.wyx));
}

