struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -81067i;

var<private> global1: array<f32, 31>;

var<private> global2: i32;

var<private> global3: i32 = 0i;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    let var_0 = select(!select(vec3<bool>(false, any(vec4<bool>(false, true, false, true)), true), vec3<bool>(false, all(vec2<bool>(false, false)), true), all(vec3<bool>(false, false, false))), !(!vec3<bool>(true, any(vec2<bool>(true, true)), 24349u == arg_1.x)), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, !any(vec3<bool>(false, true, false))), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), false)));
    var var_1 = arg_0;
    global2 = 41571i;
    global3 = _wgslsmith_mod_i32(arg_0.a.b, abs(u_input.b.x)) | -41898i;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1039f + var_1.a.c)), 757f, _wgslsmith_f_op_f32(round(-110f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(871f, var_1.a.c, 1102f, 1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.c, 687f, var_1.a.c, var_1.a.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(34916u, 31u)], global1[_wgslsmith_index_u32(arg_0.a.d.x, 31u)], -878f, global1[_wgslsmith_index_u32(u_input.c.x, 31u)])))));
    return arg_0.b.x;
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_1(-24027i, abs(countOneBits(u_input.b.x)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(1u, 31u)], u_input.c), _wgslsmith_mod_vec3_u32(u_input.c.wyx, vec3<u32>(arg_0.x, arg_0.x, 0u)), vec3<u32>(6988u, 68152u, 0u)), u_input.c), 31u)] * _wgslsmith_f_op_f32(834f * _wgslsmith_f_op_f32(f32(-1f) * -1311f))), u_input.c);
    return _wgslsmith_sub_u32(~(arg_0.x >> (_wgslsmith_mult_u32(~13022u, _wgslsmith_add_u32(u_input.c.x, var_0.d.x)) % 32u)), u_input.c.x);
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~(~_wgslsmith_mult_u32(u_input.a, u_input.a)), 71621u, func_2(vec2<u32>(1u, 39378u)) >> (~u_input.a % 32u)), ~vec4<u32>(~(~u_input.c.x), ~(~u_input.c.x), u_input.a, func_2(u_input.c.yw)));
    global0 = _wgslsmith_div_i32(-u_input.b.x, 14822i);
    var var_1 = ~u_input.b.x;
    let var_2 = !(1u >= ~var_0.x);
    let var_3 = _wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(-vec3<i32>(-50114i, -12857i, 1i), -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(10075i, 35866i, -1i))), max(vec3<i32>(i32(-1i) * -31010i, u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), -vec2<i32>(u_input.b.x, u_input.b.x))), -vec3<i32>(-u_input.b.x, i32(-1i) * -1i, u_input.b.x)));
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_i32(u_input.b.x, -abs(_wgslsmith_add_i32(22806i, u_input.b.x) << (25300u % 32u)));
    let var_0 = !(!vec2<bool>(0u <= u_input.c.x, true));
    let var_1 = -550i;
    global3 = var_1;
    global3 = u_input.b.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x & ~_wgslsmith_add_u32(u_input.c.x, 1u), 31u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -920f))), _wgslsmith_f_op_f32(f32(-1f) * -842f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(7699u, 31u)] + 529f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 31u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f + global1[_wgslsmith_index_u32(u_input.c.x, 31u)]))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(324f, -1845f, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], 450f, 272f))))), vec3<bool>(func_1(!var_0.x), true, !any(vec3<bool>(var_0.x, var_0.x, var_0.x)))));
    var var_3 = func_3(Struct_2(Struct_1(firstLeadingBit(-u_input.b.x), _wgslsmith_div_i32(_wgslsmith_div_i32(33005i, 54386i), -4666i), 210f, ~vec4<u32>(1u, u_input.a, 29173u, u_input.c.x)), vec3<u32>(_wgslsmith_mod_u32(u_input.c.x ^ u_input.a, 1u), _wgslsmith_mod_u32(~4294967295u, u_input.a | 1u), 0u), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, u_input.a, 1u), u_input.c.yyz)), vec4<u32>(u_input.a | u_input.c.x, ~(firstTrailingBit(4294967295u) << (4294967295u % 32u)), 80323u, _wgslsmith_mult_u32(~(28738u << (u_input.a % 32u)), 1u)));
    let var_4 = Struct_1(-3154i, -u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~u_input.c.x), 31u)]))), ~(~(~vec4<u32>(u_input.a, u_input.c.x, u_input.a, 22894u))));
    var var_5 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_2.x, global1[_wgslsmith_index_u32(var_4.d.x, 31u)], -2611f) * vec4<f32>(var_4.c, -1738f, -118f, 335f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(453f, global1[_wgslsmith_index_u32(var_4.d.x, 31u)], var_2.x, 101f), vec4<f32>(1993f, global1[_wgslsmith_index_u32(0u, 31u)], 141f, -474f))), select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_4.c, var_2.x)), -556f, _wgslsmith_f_op_f32(trunc(1047f)), -1878f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(718f, var_2.x, 1232f, 751f)))), !select(func_1(var_0.x), var_0.x, func_1(true) | true), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(var_4.d.x, 31u)], -419f, 894f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c, var_4.c, 419f, -609f)))))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f * var_4.c), min(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(2147483647i, var_4.b, 0i, 0i)), vec4<i32>(var_4.b, var_4.b, var_4.a, i32(-1i) * -61298i)), ~(-vec4<i32>(0i, var_1, -38393i, 1i))));
}

