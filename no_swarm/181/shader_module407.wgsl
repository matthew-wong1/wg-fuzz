struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 18> = array<i32, 18>(15495i, 49478i, 0i, 0i, -16604i, -56348i, -1i, -20035i, 2147483647i, i32(-2147483648), 1i, 1i, 2375i, 1i, i32(-2147483648), 1i, 1i, -76215i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec2<i32> {
    global0 = Struct_3(-506f, _wgslsmith_div_vec2_i32(global0.b, vec2<i32>(global1[_wgslsmith_index_u32(countOneBits(arg_1.a.x), 18u)], i32(-1i) * -2147483647i)), global0.e.c, firstTrailingBit(24324u), Struct_1(select(~(0i | global0.b.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.a ^ vec2<u32>(arg_1.a.x, 42389u), arg_0.a), 18u)], true), vec2<bool>((global0.b.x >= global1[_wgslsmith_index_u32(u_input.a.x, 18u)]) || true, all(vec3<bool>(true, true, true))), global0.c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_f_op_f32(-global0.a), arg_0.b, _wgslsmith_f_op_f32(min(arg_1.b, arg_1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e.d) + global0.e.d), select(true, true, global0.e.c & true))), 1u));
    global0 = Struct_3(1467f, vec2<i32>(-(~(2147483647i << (global0.e.e % 32u))), firstTrailingBit(_wgslsmith_div_i32(global0.b.x, global0.e.a)) | global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 30077u), 18u)]), !all(!vec3<bool>(true, global0.e.c, true)), 4294967295u << (arg_0.a.x % 32u), Struct_1(abs(global0.e.a), select(select(global0.e.b, global0.e.b, select(global0.e.b, vec2<bool>(global0.e.b.x, false), true)), select(vec2<bool>(global0.e.c, false), select(vec2<bool>(true, global0.e.b.x), vec2<bool>(global0.c, global0.e.b.x), global0.e.b), vec2<bool>(global0.e.b.x, global0.c)), !global0.c), false, _wgslsmith_f_op_vec4_f32(global0.e.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.e.d, vec4<f32>(353f, global0.e.d.x, -904f, global0.a))))), arg_1.a.x & arg_0.a.x));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -286f))));
    var var_1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(arg_0.a.x, 41533u, global0.e.e) ^ vec3<u32>(1u, 1u, 1u)), ~(min(vec3<u32>(57820u, arg_0.a.x, 22451u), vec3<u32>(0u, 4294967295u, arg_0.a.x)) | _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a.x, 19942u, global0.e.e), vec3<u32>(21698u, arg_1.a.x, arg_0.a.x)))) ^ arg_0.a.x;
    global0 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f - -1538f))))), -vec2<i32>(reverseBits(abs(-16814i)), -global1[_wgslsmith_index_u32(~arg_1.a.x, 18u)]), !any(select(vec3<bool>(false, false, false), !vec3<bool>(global0.c, false, global0.c), true)), arg_0.a.x, global0.e);
    return ~select(countOneBits(_wgslsmith_clamp_vec2_i32(~vec2<i32>(0i, global1[_wgslsmith_index_u32(6418u, 18u)]), vec2<i32>(1i, -14285i) | vec2<i32>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]), reverseBits(global0.b))), ~(~global0.b), select(!global0.e.b, vec2<bool>(global0.c || false, true), vec2<bool>(global0.e.b.x, global0.c)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<i32>) -> i32 {
    var var_0 = 4294967295u;
    var var_1 = ~(-arg_1.a);
    let var_2 = abs(countOneBits(29811u));
    global1 = array<i32, 18>();
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-921f, -1113f, true)) - arg_1.d.x))), func_3(Struct_2(vec2<u32>(arg_1.e, 0u), _wgslsmith_f_op_f32(-global0.a)), Struct_2(~u_input.a, arg_1.d.x)), true, ~1u, arg_1);
    return global0.b.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> vec2<i32> {
    let var_0 = Struct_1((((0i >> (global0.e.e % 32u)) ^ (-6821i & global1[_wgslsmith_index_u32(25089u, 18u)])) | (func_2(arg_0.b, Struct_1(-9600i, arg_0.e.b, arg_0.c, vec4<f32>(1000f, -106f, global0.a, 572f), 50263u), vec2<i32>(arg_0.b.x, arg_0.b.x)) << (_wgslsmith_sub_u32(u_input.b, arg_2.a.x) % 32u))) & -17678i, !global0.e.b, any(vec3<bool>(false, any(!vec3<bool>(arg_0.e.c, false, true)), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.e.d) + arg_0.e.d), 3569u);
    var var_1 = _wgslsmith_div_i32(-27219i, -1i);
    var_1 = i32(-1i) * -(~(~0i));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(428f - global0.e.d.x), _wgslsmith_f_op_f32(exp2(arg_2.b))))), firstTrailingBit(vec2<i32>(-1i, select(var_0.a, -var_0.a, var_0.a <= -1i))), false && global0.c, u_input.a.x, var_0);
    let var_3 = arg_0.e;
    return ~global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_f_op_f32(trunc(-224f)), select(firstLeadingBit(global0.b), min(-vec2<i32>(global0.b.x, -18973i) ^ func_1(Struct_3(global0.a, global0.b, false, 33062u, global0.e), vec2<f32>(global0.e.d.x, global0.e.d.x), Struct_2(vec2<u32>(3845u, 0u), -1083f), 1000f), global0.b), select(!select(vec2<bool>(global0.c, global0.c), vec2<bool>(global0.c, true), vec2<bool>(global0.e.b.x, global0.e.b.x)), vec2<bool>(false | global0.e.c, global0.e.c), true)), true, firstTrailingBit(~_wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(u_input.b, 16389u))), Struct_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(25837u, 18u)]), global0.e.a) & firstTrailingBit(global0.e.a), select(vec2<bool>(all(vec3<bool>(false, true, false)), 0u == global0.d), vec2<bool>(any(vec4<bool>(global0.e.c, global0.c, false, global0.c)), global0.e.c), vec2<bool>(true, all(vec4<bool>(true, global0.e.b.x, global0.e.c, global0.e.c)))), true, vec4<f32>(_wgslsmith_f_op_f32(round(-1038f)), -1528f, global0.e.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.e.d.x * -1876f)))), firstLeadingBit(reverseBits(reverseBits(61394u)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e.d.xzx) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a, 163f, global0.a), _wgslsmith_div_vec3_f32(vec3<f32>(363f, global0.a, -482f), global0.e.d.xxx))), vec3<f32>(_wgslsmith_f_op_f32(-133f * 259f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.e.d.x), !(-875f > global0.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(global0.e.d.wwx, global0.e.d.wxx, vec3<bool>(false, global0.c, false))))) - vec3<f32>(_wgslsmith_f_op_f32(global0.a - global0.a), global0.e.d.x, _wgslsmith_f_op_f32(max(global0.a, -441f))))));
    global0 = Struct_3(_wgslsmith_f_op_f32(-2048f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-746f)))), global0.b, !global0.c, ~39169u, Struct_1(-(~(i32(-1i) * -1i)), global0.e.b, true, global0.e.d, 0u));
    var var_1 = ~select(~u_input.c, ~u_input.a, select(global0.e.b, vec2<bool>(global0.c, !global0.e.c), any(vec2<bool>(true, false))));
    var var_2 = 50695u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(global0.e.e & global0.e.e, min(1u, 66327u), var_1.x)) >> (~firstLeadingBit(~vec3<u32>(0u, 4294967295u, 31970u)) % vec3<u32>(32u)), _wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, 16834u), 18u)]), global0.b), _wgslsmith_div_vec4_u32((~vec4<u32>(14882u, u_input.b, global0.d, 4294967295u) ^ ~vec4<u32>(global0.e.e, 0u, u_input.c.x, global0.d)) | vec4<u32>(var_1.x, var_1.x, _wgslsmith_div_u32(var_1.x, 1u), global0.e.e), (firstTrailingBit(vec4<u32>(global0.e.e, var_1.x, var_1.x, var_1.x)) & vec4<u32>(0u, var_1.x, 31113u, 24952u)) << (abs(vec4<u32>(4294967295u, 0u, var_1.x, 4294967295u)) % vec4<u32>(32u))), ~_wgslsmith_add_vec2_i32(firstTrailingBit(global0.b), global0.b) | vec2<i32>(0i, ~1i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(904f, _wgslsmith_f_op_f32(var_0.x - var_0.x), global0.e.b.x)) - -316f))));
}

