struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(false, vec3<f32>(-1223f, 566f, -308f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    global1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.b.b.x, 113f, arg_2.c.x), global1.b)) * _wgslsmith_f_op_vec3_f32(arg_2.b.b - vec3<f32>(arg_2.c.x, arg_2.b.b.x, global1.b.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b), vec3<f32>(-1068f, 1517f, -1068f))))));
    global0 = -25827i;
    let var_0 = Struct_5(firstTrailingBit(~(~26146u)), arg_2.b, vec2<bool>(((arg_3.x & arg_3.x) >= arg_3.x) & true, !((arg_2.b.b.x <= global1.b.x) || arg_2.b.a)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_2.a.zwy, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 112290u), vec3<u32>(arg_2.a.x, 0u, arg_2.a.x))), 0u) << (u_input.b % 32u), Struct_2(arg_2.a, Struct_1(true, _wgslsmith_f_op_vec3_f32(step(global1.b, vec3<f32>(1244f, global1.b.x, arg_2.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), arg_2.b.b.x)));
    let var_1 = var_0.b.b.x;
    var var_2 = var_0.b;
    return arg_3.x;
}

fn func_2() -> vec2<u32> {
    var var_0 = ~vec4<i32>(_wgslsmith_div_i32(~0i, select(~(-2147483647i), -47021i << (u_input.b % 32u), global1.a)), -21656i, -max(-69766i, _wgslsmith_dot_vec2_i32(vec2<i32>(-21856i, 47326i), vec2<i32>(-1i, 2147483647i))), ~1i);
    global0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, 1i << (0u % 32u)), ~select(18252i & var_0.x, func_3(vec3<u32>(u_input.a.x, 1u, u_input.a.x), 4294967295u, Struct_2(vec4<u32>(3021u, u_input.b, u_input.b, u_input.b), Struct_1(false, global1.b), global1.b.xz), var_0.yy), true) & var_0.x);
    var_0 = firstLeadingBit(_wgslsmith_mod_vec4_i32(~_wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.x, var_0.x, -20407i, var_0.x), ~vec4<i32>(-1i, var_0.x, -40309i, var_0.x)), ~(firstLeadingBit(vec4<i32>(var_0.x, var_0.x, var_0.x, -18160i)) << (abs(vec4<u32>(u_input.b, 6555u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))));
    var_0 = ~(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 1i, 0i, -1i), vec4<i32>(var_0.x, 2147483647i, -1i, -33330i))) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, u_input.a.x, u_input.b, 1u), vec4<u32>(firstLeadingBit(1u), _wgslsmith_add_u32(u_input.b, 4294967295u), 29484u, u_input.a.x)) % vec4<u32>(32u)));
    var var_1 = Struct_4(Struct_2(vec4<u32>(firstTrailingBit(u_input.b), 1u, _wgslsmith_mod_u32(56810u & u_input.b, 78876u & u_input.a.x), u_input.a.x), Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.b.x, global1.b.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, 297f, global1.b.x)))), global1.b.xx), _wgslsmith_add_vec3_i32(var_0.xxw, ~var_0.yxz));
    return vec2<u32>(~var_1.a.a.x, var_1.a.a.x);
}

fn func_1() -> Struct_4 {
    var var_0 = select(u_input.a, func_2(), _wgslsmith_mult_u32(4294967295u, select(~u_input.a.x, ~1u, global1.a)) < ~46715u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b.x), -402f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(231f - global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-596f, global1.b.x) * -138f), _wgslsmith_f_op_f32(f32(-1f) * -1185f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1536f, -948f, global1.b.x, global1.b.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-361f, global1.b.x, -193f, global1.b.x), vec4<f32>(global1.b.x, global1.b.x, global1.b.x, 1259f))), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -653f, global1.b.x, global1.b.x))))));
    let var_2 = global1.b.yy;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-1f) >= _wgslsmith_f_op_f32(823f - var_2.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.zyy, vec3<f32>(global1.b.x, -1245f, 3388f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, var_2.x, var_2.x))))))));
    var var_4 = Struct_4(Struct_2(vec4<u32>(4294967295u, 39473u, ~(0u ^ u_input.b), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.x, var_0.x), ~var_0.x)), Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1672f, 473f, global1.b.x))) * _wgslsmith_div_vec3_f32(global1.b, vec3<f32>(-1064f, var_1.x, var_1.x)))), var_3.b.xz), vec3<i32>(i32(-1i) * -31008i, abs(4011i << (~u_input.a.x % 32u)), -1i));
    return Struct_4(Struct_2(~(~reverseBits(var_4.a.a)), Struct_1(!any(vec3<bool>(var_4.a.b.a, var_3.a, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1209f, 1610f, var_3.b.x), vec3<f32>(670f, var_3.b.x, 447f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_3.b.x)), -815f)), var_4.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    var var_0 = func_1();
    let var_1 = func_1().a;
    var var_2 = _wgslsmith_add_vec2_u32(select(vec2<u32>(var_0.a.a.x, 41511u & ~var_0.a.a.x), u_input.a, select(select(!vec2<bool>(var_1.b.a, true), !vec2<bool>(false, var_1.b.a), var_1.b.a), vec2<bool>(true, true), true)), abs(~(~(var_0.a.a.wx & var_0.a.a.yy))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -677f)))))), _wgslsmith_f_op_f32(max(var_0.a.b.b.x, var_1.c.x)));
    global1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, -521f, -876f)), _wgslsmith_f_op_vec3_f32(var_1.b.b + global1.b), select(vec3<bool>(true, true, true), vec3<bool>(true, global1.a, global1.a), vec3<bool>(true, false, global1.a)))))));
    var var_4 = firstLeadingBit(var_0.b.x);
    global1 = func_1().a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(494f, global1.b.x) - var_0.a.c), vec2<f32>(var_1.c.x, global1.b.x), select(vec2<bool>(global1.a, true), vec2<bool>(true, false), vec2<bool>(var_0.a.b.a, false)))) * var_0.a.c) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.a.c)))), vec3<u32>(~_wgslsmith_mult_u32(u_input.b, var_0.a.a.x) >> (var_0.a.a.x % 32u), var_1.a.x, 38366u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-675f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + -522f)))), _wgslsmith_add_u32(~var_2.x, max(~var_0.a.a.x, 1u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -457f), -1000f));
}

