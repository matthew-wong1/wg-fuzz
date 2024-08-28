struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: array<u32, 17> = array<u32, 17>(1u, 1u, 732u, 1u, 28341u, 0u, 1u, 1u, 4294967295u, 0u, 4294967295u, 0u, 1u, 35048u, 0u, 34887u, 1u);

var<private> global2: array<Struct_3, 19>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -196f))), arg_1.a.b, ~global1[_wgslsmith_index_u32(arg_0, 17u)]));
    var var_1 = abs(~(~(_wgslsmith_add_u32(0u, 34773u) >> (~arg_1.a.c % 32u))));
    var var_2 = ~1u;
    let var_3 = u_input.a.yz;
    global1 = array<u32, 17>();
    return vec2<bool>(false, arg_1.a.b);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec3<i32>) -> f32 {
    var var_0 = 1i;
    global2 = array<Struct_3, 19>();
    let var_1 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(~13945u), select(reverseBits(69337u), global1[_wgslsmith_index_u32(~arg_1.a.c, 17u)], true)), ~_wgslsmith_sub_u32(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x << (4294967295u % 32u), 17u)]), ~u_input.a.x ^ ~max(global1[_wgslsmith_index_u32(arg_1.a.c, 17u)], 0u), 1508u & _wgslsmith_mult_u32(u_input.b, ~u_input.b)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(384f)))), arg_1.a.b, 4294967295u));
    global1 = array<u32, 17>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1596f)), _wgslsmith_f_op_f32(f32(-1f) * -474f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1365f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(step(2097f, 1527f)))))));
    return arg_0;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_4(!(!select(vec2<bool>(false, false), func_2(23000u, Struct_3(Struct_1(374f, false, u_input.a.x)), u_input.c), vec2<bool>(false, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(-914f, -697f), Struct_3(Struct_1(-676f, false, 1u)), vec3<bool>(true, false, false), _wgslsmith_div_vec3_i32(arg_0, arg_0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-516f, 1030f)), -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(181f * 731f) + _wgslsmith_f_op_f32(f32(-1f) * -1059f)))));
    global0 = array<Struct_4, 31>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3102f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1812f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.x, var_0.b.x, 201f, var_0.b.x), vec4<f32>(-915f, -517f, -764f, -286f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-376f, var_0.b.x, 350f, var_0.b.x), vec4<f32>(var_0.b.x, var_0.b.x, -1141f, 140f), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), var_0.a.x))) + vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(max(1023f, 198f)), var_0.b.x, -389f))), var_0.a.x));
    var var_2 = Struct_5(~(-_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(9621i, u_input.c, 1i, u_input.c), vec4<i32>(u_input.c, -49408i, 17742i, u_input.c)), vec4<i32>(1i, -1i, u_input.c, -2147483647i) | vec4<i32>(u_input.c, 31034i, -12266i, 13576i))), Struct_2(~u_input.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) + -1530f), -arg_0.x == -u_input.c, ~(~23722u))), 18889u);
    var_2 = Struct_5(var_2.a, Struct_2(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.a.x), global1[_wgslsmith_index_u32(9476u, 17u)] | 1u), 17u)], _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), u_input.a, vec4<bool>(true, var_0.a.x, var_0.a.x, true)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 28538u, var_2.b.b.c), vec4<u32>(79360u, 29434u, global1[_wgslsmith_index_u32(60765u, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)]))), select(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 17u)], 4294967295u), u_input.b >> (u_input.a.x % 32u), true), 94993u), var_2.b.b), var_2.c);
    return var_2.b.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-692f, -1272f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-643f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(-1776f + 1000f), 101f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1251f, 562f)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) - vec2<f32>(294f, 256f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1167f, -1820f)))))));
    global0 = array<Struct_4, 31>();
    let var_1 = _wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.c, u_input.c, -2147483647i)));
    let var_2 = Struct_4(vec2<bool>(true, !all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(var_1 - var_1)), -294f, 220f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-344f, 1179f, -1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1112f, 1065f) * vec3<f32>(var_0.x, var_1, var_1))))));
    global0 = array<Struct_4, 31>();
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~u_input.b | _wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(var_3, 17u)]), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(65456u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(15926u, 17u)], var_3), u_input.a.ywz), ~var_3), 17u)], any(!vec2<bool>(false, var_2.a.x))), vec4<i32>(u_input.c, abs(i32(-1i) * -155i), 1i, reverseBits(~_wgslsmith_div_i32(-38181i, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1)), 1149f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_2.b.x)))), ~(~_wgslsmith_mult_u32(firstLeadingBit(4294967295u), ~global1[_wgslsmith_index_u32(0u, 17u)])), vec4<f32>(_wgslsmith_f_op_f32(func_1(max(firstTrailingBit(vec3<i32>(u_input.c, -1i, 0i)), -vec3<i32>(10549i, u_input.c, 40479i)))), var_2.b.x, var_1, 451f));
}

