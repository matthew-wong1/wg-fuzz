struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 2147483647i);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(44811u, 694u), vec2<f32>(1290f, -125f), 12136i, 32439u, true);

var<private> global2: array<f32, 26>;

var<private> global3: array<i32, 6>;

var<private> global4: Struct_4;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>) -> i32 {
    global4 = Struct_4(!global4.a, global4.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-477f, -1064f, global4.c.x, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(408f, arg_0.x, arg_0.x, -111f), global4.c)))));
    var var_0 = global4.a;
    var var_1 = !vec3<bool>(true, global4.a.x, any(vec2<bool>(var_0.x && false, true)));
    global4 = Struct_4(global4.a, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1361f)) + _wgslsmith_f_op_f32(-global1.b.x)), global4.b.b.b.x), global4.b.b, Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(77659u, 0u), arg_1), global4.c.zy, 16619i, firstTrailingBit(_wgslsmith_mult_u32(73078u, arg_1.x)), !(!var_1.x))), global4.c);
    let var_2 = vec2<bool>(true, !global4.b.c.e);
    return _wgslsmith_dot_vec4_i32(reverseBits(~vec4<i32>(45833i, 2147483647i, ~16056i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], u_input.b, 2147483647i, global3[_wgslsmith_index_u32(29970u, 6u)]), vec4<i32>(17640i, global3[_wgslsmith_index_u32(1u, 6u)], 2147483647i, 12470i)))), -_wgslsmith_clamp_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.d.x, 6u)], global0.x, global3[_wgslsmith_index_u32(1u, 6u)], -72293i), vec4<i32>(2147483647i, -33809i, -7966i, global1.c), vec4<i32>(1i, global4.b.c.c, global4.b.c.c, global4.b.b.c)), vec4<i32>(~(-23837i), 23181i, 0i, 0i), -vec4<i32>(0i, 1i, 14942i, 2147483647i)));
}

fn func_2() -> Struct_2 {
    var var_0 = abs(global1.a.x);
    var var_1 = global4.a.x;
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~select(~vec4<u32>(u_input.d.x, 4294967295u, global1.a.x, 6657u), vec4<u32>(0u, global1.a.x, 4294967295u, global1.a.x), false), vec4<u32>(global4.b.c.a.x, ~(global4.b.c.d ^ global4.b.c.a.x), u_input.c.x, reverseBits(global4.b.c.a.x)), ~vec4<u32>(global4.b.c.a.x << (u_input.c.x % 32u), _wgslsmith_div_u32(4294967295u, 4294967295u), 4294967295u, u_input.d.x)), vec4<u32>(_wgslsmith_clamp_u32(global4.b.c.a.x << (4294967295u % 32u), ~u_input.d.x, 4294967295u), ~_wgslsmith_mult_u32(global1.d, 22746u), ~abs(4294967295u), 2046u) & min(~vec4<u32>(global1.d, global4.b.b.a.x, 0u, global1.a.x), min(vec4<u32>(0u, u_input.c.x, 119307u, 4294967295u), vec4<u32>(global4.b.c.a.x, u_input.c.x, 1u, global1.a.x)) << (vec4<u32>(93019u, global4.b.b.a.x, u_input.c.x, 23159u) % vec4<u32>(32u))));
    var var_3 = -_wgslsmith_dot_vec2_i32(-min(vec2<i32>(global3[_wgslsmith_index_u32(75403u, 6u)], 2147483647i), vec2<i32>(-2147483647i, global1.c) & vec2<i32>(global4.b.c.c, global4.b.c.c)), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(14248i, global0.x)), vec2<i32>(global3[_wgslsmith_index_u32(global1.a.x, 6u)], -1i) & vec2<i32>(4463i, 1i)) & ~(vec2<i32>(1i, 69858i) ^ vec2<i32>(24347i, global0.x)));
    let var_4 = vec3<i32>(1i, global0.x, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-917f, global1.b.x, -1004f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, global1.b.x, 1289f))))), max(vec2<u32>(global4.b.c.d, u_input.d.x), vec2<u32>(4294967295u, 4294967295u) << (global4.b.b.a % vec2<u32>(32u)))));
    return global4.b;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(437f, 2291f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global2[_wgslsmith_index_u32(arg_1, 26u)]) - global4.c.yy))) * _wgslsmith_f_op_vec2_f32(-global1.b));
    let var_1 = abs(reverseBits(vec4<u32>(global4.b.c.a.x, ~arg_0.c.a.x, reverseBits(4294967295u), 4294967295u)));
    var var_2 = ~_wgslsmith_clamp_u32(global1.d, ~(u_input.c.x | arg_1) ^ global1.d, _wgslsmith_mult_u32(1u, func_2().b.d));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.b.b.x, global2[_wgslsmith_index_u32(global1.d, 26u)], global1.b.x, 1771f)), _wgslsmith_div_vec4_f32(global4.c, vec4<f32>(global1.b.x, var_0.x, -1000f, arg_0.a.x)), !vec4<bool>(true, arg_0.c.e, global4.a.x, global1.e))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.b.x, var_0.x, arg_0.c.b.x, arg_0.b.b.x), vec4<f32>(1239f, 1000f, 631f, global1.b.x)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f - global2[_wgslsmith_index_u32(4294967295u, 26u)]), arg_0.c.b.x, _wgslsmith_div_f32(arg_0.a.x, -489f), 618f), global4.c)), global4.c));
    var var_4 = -reverseBits(select(_wgslsmith_mult_vec4_i32(vec4<i32>(-21829i, global1.c, -2147483647i, u_input.b) >> (var_1 % vec4<u32>(32u)), vec4<i32>(-11541i, global1.c, -70233i, global0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -10836i, 27479i, arg_0.c.c), vec4<i32>(global0.x, 2147483647i, 1i, global4.b.c.c)), true));
    return all(global4.a.xy);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(1i, select(vec3<bool>(!(global1.c != u_input.a), func_4(func_2(), 0u), !(!global4.b.c.e)), vec3<bool>(733f >= _wgslsmith_f_op_f32(-global1.b.x), global4.b.c.e, func_2().c.a.x != u_input.d.x), vec3<bool>(all(vec2<bool>(global4.a.x, true)), false, !(global1.d <= u_input.d.x))), firstTrailingBit(45659u >> (u_input.d.x % 32u)));
    let var_1 = func_2().b;
    global3 = array<i32, 6>();
    var var_2 = Struct_1(global4.b.b.a, global1.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(~16656i, abs(var_0.a)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(global4.b.b.d, 6u)], u_input.b), vec2<i32>(2147483647i, 0i))), 22351u, var_0.b.x);
    return Struct_3(_wgslsmith_add_i32(~(~var_2.c) | _wgslsmith_mult_i32(abs(u_input.a), -25094i), reverseBits(~firstLeadingBit(global3[_wgslsmith_index_u32(22957u, 6u)]))), !vec3<bool>(select(var_2.e, global4.b.c.e, var_0.b.x) && any(vec4<bool>(true, false, global4.b.b.e, var_1.e)), !global4.b.b.e, all(select(vec3<bool>(var_0.b.x, global1.e, true), var_0.b, global4.a))), _wgslsmith_dot_vec2_u32(global1.a << (select(global4.b.b.a, vec2<u32>(global1.d, 9131u), vec2<bool>(true, global4.a.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(14631u, 0u), ~global1.a.x)) >> (30310u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.c, ~(~_wgslsmith_mod_vec3_u32(u_input.c, ~u_input.c))), 26u)];
    global1 = global4.b.c;
    var var_2 = i32(-1i) * -select(_wgslsmith_mod_i32(-52138i, -83617i), -73851i, select(true, var_0.b.x, var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(0u | var_0.c), ~var_0.c, 14081u, ~4294967295u) << (vec4<u32>(0u, ~_wgslsmith_add_u32(u_input.c.x, 1u), var_0.c, ~firstTrailingBit(1u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(870f, 218f, 2088f)), ~u_input.a, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(6077u, ~16352u, _wgslsmith_add_u32(u_input.d.x, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.c, 9342u, u_input.d.x), vec3<u32>(22134u, 4294967295u, u_input.d.x)), _wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(global1.d, 1914u, 1u) | u_input.c, u_input.c)));
}

