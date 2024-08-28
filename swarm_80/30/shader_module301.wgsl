struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 62271u), vec2<u32>(44163u, 18065u), vec2<u32>(4851u, 4294967295u), vec2<u32>(34354u, 4294967295u), vec2<u32>(38230u, 10878u), vec2<u32>(1u, 34364u), vec2<u32>(7790u, 0u), vec2<u32>(72070u, 31894u));

var<private> global2: f32 = 1167f;

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec4<i32>) -> u32 {
    let var_0 = Struct_1(vec3<bool>(all(vec3<bool>(any(vec3<bool>(false, true, true)), u_input.c != u_input.d.x, arg_1.x != -369f)), min(reverseBits(arg_0), ~21845u) == 4294967295u, all(vec4<bool>(!global3.x, global3.x, global3.x, arg_0 >= u_input.c))), ~(arg_3.x ^ 16466i), u_input.d);
    var var_1 = global0[_wgslsmith_index_u32(var_0.c.x, 18u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -245f)) * _wgslsmith_f_op_f32(f32(-1f) * -668f));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.e, arg_1.x, -190f, arg_1.x))) - vec4<f32>(-1000f, -277f, _wgslsmith_f_op_f32(arg_1.x * -1776f), 1480f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(max(-1663f, arg_1.x))))));
    global3 = !vec4<bool>(true, var_0.a.x, !global3.x, true);
    return 0u & _wgslsmith_clamp_u32(0u, var_1.a.c.x, ~select(~20605u, 54095u, var_1.a.a.x));
}

fn func_3() -> vec3<f32> {
    var var_0 = (true | global3.x) && all(global3.zyy);
    var var_1 = -435f;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(347f - _wgslsmith_f_op_f32(step(1453f, 932f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1495f - -1122f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(371f + 898f))), !select(true, false != global3.x, global3.x || global3.x)))));
    var var_3 = u_input.a;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, var_2)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(529f - 187f), -424f)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1051f, 1000f, 415f), vec3<f32>(var_2, var_4, var_2), global3.xyw)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-805f, 888f, var_4)))))), vec3<f32>(_wgslsmith_f_op_f32(-298f + _wgslsmith_f_op_f32(max(859f, 369f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2))), _wgslsmith_f_op_f32(var_2 * 1984f))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>) -> vec2<i32> {
    let var_0 = global3.ywz;
    var var_1 = Struct_3(reverseBits(vec4<u32>(arg_0.a.c.x, _wgslsmith_dot_vec3_u32(arg_0.a.c.wxz, arg_0.a.c.zwy), ~firstTrailingBit(arg_0.a.c.x), u_input.c)));
    var_1 = Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(1u, select(_wgslsmith_div_u32(arg_0.c, 0u), reverseBits(0u), true), ~4294967295u, max(17000u, 1u)), ~vec4<u32>(arg_0.a.c.x, u_input.c, ~u_input.d.x, arg_0.c)));
    var var_2 = Struct_2(Struct_1(!select(arg_0.a.a, !vec3<bool>(var_0.x, var_0.x, arg_0.a.a.x), true), -(~1i), vec4<u32>(~13907u, _wgslsmith_div_u32(1u, u_input.c), firstLeadingBit(_wgslsmith_add_u32(80636u, 23533u)), 1u)), -arg_0.b, ~(~countOneBits(1u)), all(select(vec4<bool>(true, false, arg_0.d, arg_0.e < -838f), !select(vec4<bool>(true, arg_0.a.a.x, true, false), vec4<bool>(false, var_0.x, arg_0.a.a.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(!var_0.x, any(arg_0.a.a.zx), any(vec2<bool>(arg_0.d, arg_0.d)), any(vec4<bool>(true, arg_0.a.a.x, false, arg_0.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.e, _wgslsmith_f_op_f32(-arg_2.x)))));
    var var_3 = arg_0;
    return max(_wgslsmith_clamp_vec2_i32(u_input.e.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, i32(-1i) * -1i), firstTrailingBit(-vec2<i32>(arg_1, var_2.b.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(u_input.e.x), 29768i), ~arg_0.b.zy)), firstLeadingBit(var_2.b.zx) & var_3.b.yx);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> i32 {
    let var_0 = ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(26758u, ~u_input.d.x, 4294967295u), vec3<u32>(firstTrailingBit(u_input.c), 38287u, u_input.d.x), u_input.d.wzy));
    global0 = array<Struct_2, 18>();
    var var_1 = select(!select(!select(vec4<bool>(false, global3.x, arg_3.x, false), arg_3, arg_3), vec4<bool>(false, arg_3.x, true, false), all(vec2<bool>(global3.x, arg_3.x))), vec4<bool>(false, !any(!vec3<bool>(arg_1, arg_3.x, false)), !(!(false && arg_1)), arg_0.x <= -arg_0.x), select(arg_3, !(!arg_3), vec4<bool>(global3.x, arg_3.x, arg_2 < arg_2, (u_input.d.x >> (4294967295u % 32u)) < ~var_0.x)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, _wgslsmith_mod_u32(54046u, select(1u, 1u, global3.x)) << (var_0.x % 32u), 1u), u_input.d), 18u)];
    let var_3 = vec3<bool>(true, (reverseBits(~33834u) >= var_2.a.c.x) && true, var_2.d);
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~(vec2<i32>(var_2.a.b, 2147483647i) << (vec2<u32>(var_2.c, u_input.a) % vec2<u32>(32u))), ~select(firstLeadingBit(var_2.b.xz), ~var_2.b.xx, vec2<bool>(var_2.d, false))), func_4(Struct_2(var_2.a, firstTrailingBit(vec3<i32>(-2147483647i, -26118i, arg_0.x)), 11432u, !all(arg_3), _wgslsmith_f_op_f32(_wgslsmith_div_f32(148f, var_2.e) + _wgslsmith_f_op_f32(-737f + -510f))), -4915i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e, 1000f, 251f) * vec3<f32>(-734f, 601f, 2074f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -2398f, arg_2)), false)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_2.e, var_2.e), vec3<f32>(821f, 1799f, var_2.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(u_input.d.x, u_input.c, ~(~func_1(u_input.a & u_input.d.x, vec2<f32>(-1029f, 426f), _wgslsmith_add_u32(u_input.c, u_input.c), ~vec4<i32>(-24404i, u_input.b, u_input.b, u_input.e.x))));
    let var_1 = !(!all(!(!vec3<bool>(false, true, global3.x))));
    global1 = array<vec2<u32>, 9>();
    let var_2 = !select(vec4<bool>(false, true, true, false), vec4<bool>(true, !(!global3.x), !any(global3.wy), global3.x), global3.x);
    var var_3 = true;
    let var_4 = Struct_1(select(!global3.xwx, vec3<bool>(false, var_0 == 18118u, var_2.x), !vec3<bool>(any(global3.xx), global3.x, var_2.x)), _wgslsmith_add_i32(func_2(_wgslsmith_sub_vec2_i32(u_input.e.zx, u_input.e.zx), global3.x, _wgslsmith_f_op_f32(step(-821f, 1026f)), var_2) ^ _wgslsmith_add_i32(25743i, 1i), -2147483647i), firstTrailingBit(vec4<u32>(4447u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a, u_input.a), vec3<u32>(4294967295u, 38208u, var_0)), var_0), ~(~0u), u_input.c)));
    var var_5 = global0[_wgslsmith_index_u32(var_4.c.x, 18u)];
    var_5 = global0[_wgslsmith_index_u32(34392u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_5.e))))));
}

