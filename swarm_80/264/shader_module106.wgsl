struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3>;

var<private> global1: vec2<i32>;

var<private> global2: Struct_5 = Struct_5(199f, vec3<f32>(-206f, 873f, 499f), Struct_3(Struct_2(Struct_1(-785f, -37273i, vec4<i32>(0i, -12714i, -16178i, -2068i), vec3<u32>(44606u, 0u, 1u), false))), Struct_1(-603f, 9300i, vec4<i32>(-32375i, -1i, -1i, -6927i), vec3<u32>(25716u, 38111u, 4294967295u), true));

var<private> global3: vec3<u32>;

var<private> global4: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    global0 = array<vec3<i32>, 3>();
    var var_0 = (global2.d.c.x < _wgslsmith_div_i32(firstTrailingBit(7849i) >> (~global2.c.a.a.d.x % 32u), ~28274i)) || arg_0.x;
    global4 = 21962u ^ firstLeadingBit(~_wgslsmith_div_u32(81770u, _wgslsmith_mult_u32(global2.c.a.a.d.x, 18444u)));
    return abs(global2.d.d.x >> (~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global2.c.a.a.d.x, global3.x, global3.x, 0u)), ~vec4<u32>(36865u, global2.c.a.a.d.x, global3.x, 0u)) % 32u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - arg_1.c.a.a.a) - -1552f) + arg_1.a) + _wgslsmith_f_op_f32(arg_3 * -1311f)), 156f, 1000f);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-615f * 240f), arg_1.c.a.a.b, vec4<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1.c.a.a.b, -2147483647i, arg_1.c.a.a.c.x), -global1.x, -2147483647i), -2147483647i << (arg_0.x % 32u), arg_1.d.c.x), vec3<u32>(_wgslsmith_add_u32(87995u, arg_1.c.a.a.d.x) >> (1u % 32u), abs(max(arg_1.d.d.x, 4050u)), min(~44980u, _wgslsmith_mod_u32(arg_1.d.d.x, 0u))), true));
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = func_3(vec4<u32>(~(~(~0u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(countOneBits(arg_0.a.d.x), global3.x), firstTrailingBit(81501u)), func_2(vec3<bool>(true, 661f == global2.b.x, !arg_0.a.e), u_input.c), _wgslsmith_add_u32(_wgslsmith_div_u32(max(arg_0.a.d.x, 1u), _wgslsmith_add_u32(253u, arg_0.a.d.x)), _wgslsmith_mod_u32(global3.x, 6914u))), Struct_5(459f, global2.b, Struct_3(Struct_2(Struct_1(-1200f, -1i, arg_0.a.c, global2.d.d, global2.d.e))), Struct_1(_wgslsmith_div_f32(arg_0.a.a, arg_0.a.a), _wgslsmith_clamp_i32(global2.d.b, ~global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 45891i, arg_0.a.c.x, arg_0.a.c.x), arg_0.a.c)), arg_0.a.c, vec3<u32>(52205u, firstTrailingBit(global2.c.a.a.d.x), 15400u), all(vec4<bool>(arg_0.a.e, global2.d.e, true, global2.c.a.a.e)) && global2.d.e)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.a)))), _wgslsmith_mod_i32(~min(u_input.c, global1.x), reverseBits(727i)), global2.c.a.a.c, ~vec3<u32>(1u, arg_0.a.d.x, ~global3.x), !arg_0.a.e), -1000f);
    return vec4<bool>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~global2.c.a.a.c, global2.c.a.a.c), vec4<i32>(arg_0.a.b, global2.d.c.x, -u_input.a, _wgslsmith_mult_i32(arg_0.a.b, 2147483647i))) != -(~var_0.a.c.x << (_wgslsmith_mult_u32(var_0.a.d.x, global3.x) % 32u)), !(!(!arg_0.a.e)) || true, global2.c.a.a.e, false);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    global1 = arg_1.xz;
    global3 = select(global2.c.a.a.d, ~global2.d.d, arg_3.wxx);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(720f)) * global2.a);
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.a.a.a - _wgslsmith_f_op_f32(-global2.b.x))), vec3<f32>(_wgslsmith_f_op_f32(floor(global2.d.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-359f + 786f), global2.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(395f)), func_3(vec4<u32>(global2.d.d.x, global2.d.d.x, global2.c.a.a.d.x, 33940u), Struct_5(global2.c.a.a.a, global2.b, global2.c, Struct_1(-1317f, -26216i, global2.c.a.a.c, global2.d.d, global2.d.e)), global2.d, global2.b.x).a.a, any(vec4<bool>(global2.d.e, true, arg_3.x, arg_2)))))), Struct_3(Struct_2(func_3(~vec4<u32>(global2.d.d.x, 66015u, 4294967295u, 4294967295u), Struct_5(global2.a, vec3<f32>(global2.a, 874f, global2.d.a), Struct_3(global2.c.a), global2.d), global2.d, _wgslsmith_f_op_f32(min(-1075f, 901f))).a)), func_3(_wgslsmith_div_vec4_u32(max(vec4<u32>(9741u, 36427u, 4294967295u, 30051u), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.c.a.a.d.x, global3.x, 0u, 52450u), vec4<u32>(global3.x, global2.d.d.x, 0u, global3.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.c.a.a.d.x), vec2<u32>(13925u, global3.x)), _wgslsmith_add_u32(1u, 0u), _wgslsmith_mult_u32(65106u, 15395u), 4294967295u)), Struct_5(1863f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.a, global2.c.a.a.a, global2.d.a) * vec3<f32>(-261f, 1000f, 645f)) * global2.b), global2.c, Struct_1(_wgslsmith_f_op_f32(-global2.c.a.a.a), arg_0.a << (global2.c.a.a.d.x % 32u), -vec4<i32>(global2.d.c.x, 9119i, 41509i, arg_0.a), abs(global2.c.a.a.d), true)), Struct_1(func_3(~vec4<u32>(55151u, global2.d.d.x, 11985u, 0u), Struct_5(global2.b.x, vec3<f32>(819f, 2575f, global2.d.a), global2.c, global2.d), Struct_1(-1606f, -23833i, vec4<i32>(arg_1.x, 3104i, -34101i, 2058i), vec3<u32>(0u, global2.d.d.x, 73878u), true), _wgslsmith_f_op_f32(-global2.d.a)).a.a, ~(-1i) << (firstTrailingBit(global2.d.d.x) % 32u), _wgslsmith_div_vec4_i32(-vec4<i32>(arg_1.x, 5685i, arg_1.x, -52036i), vec4<i32>(global2.d.c.x, arg_0.a, -2147483647i, u_input.c) | global2.c.a.a.c), vec3<u32>(123061u, _wgslsmith_dot_vec3_u32(global2.c.a.a.d, vec3<u32>(global3.x, global2.c.a.a.d.x, 1u)), ~24340u), arg_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(919f - global2.b.x))), 1210f)).a);
    var var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a))) * global2.b.x), global2.b, Struct_3(global2.c.a), Struct_1(_wgslsmith_f_op_f32(-2284f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(553f))))), _wgslsmith_mod_i32(-24120i, ~(~u_input.c)), abs(-var_1.d.c | func_3(vec4<u32>(global2.d.d.x, 0u, 59244u, 4294967295u), Struct_5(-917f, vec3<f32>(var_1.b.x, global2.b.x, -1137f), Struct_3(Struct_2(var_1.c.a.a)), var_1.c.a.a), Struct_1(-1136f, u_input.c, var_1.c.a.a.c, var_1.d.d, arg_3.x), global2.b.x).a.c), func_3(_wgslsmith_div_vec4_u32(vec4<u32>(48993u, global2.d.d.x, 88651u, var_1.c.a.a.d.x), vec4<u32>(37762u, 170312u, 31815u, 3081u)), Struct_5(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1203f, var_1.c.a.a.a, 378f) - vec3<f32>(global2.b.x, global2.b.x, 1692f)), var_1.c, var_1.c.a.a), Struct_1(_wgslsmith_f_op_f32(-var_1.a), global1.x, vec4<i32>(26107i, -1i, 10393i, arg_1.x) & vec4<i32>(global2.d.b, -2147483647i, global2.d.b, var_1.d.c.x), global2.d.d, var_1.d.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f))).a.d, true));
    return global2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 22714u, 9687u, global2.c.a.a.d.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global3.x, global2.d.d.x, global2.c.a.a.d.x, 524u), select(vec4<u32>(9636u, global3.x, 0u, global3.x), vec4<u32>(global3.x, 0u, global2.d.d.x, 4294967295u), global2.d.e)) % vec4<u32>(32u)), ~firstTrailingBit(vec4<u32>(global3.x, 12350u, 17594u, 44846u) & vec4<u32>(global3.x, global3.x, 1u, 0u)));
    let var_1 = func_4(Struct_4(firstLeadingBit(_wgslsmith_mod_i32(global2.c.a.a.c.x, -1i)) << (global3.x % 32u)), vec3<i32>(0i, firstLeadingBit(abs(global1.x)), ~global1.x), !((u_input.b != _wgslsmith_mod_i32(2147483647i, u_input.c)) || global2.d.e), select(!(!(!vec4<bool>(false, true, global2.d.e, global2.d.e))), select(func_1(Struct_2(Struct_1(global2.c.a.a.a, -2147483647i, vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 0i), global2.c.a.a.d, false))), func_1(Struct_2(global2.c.a.a)), false), !select(func_1(Struct_2(global2.c.a.a)), !vec4<bool>(false, true, global2.d.e, false), false)));
    var var_2 = var_1;
    var var_3 = firstLeadingBit(var_0);
    let var_4 = func_3(vec4<u32>(1u, ~(global3.x & ~0u), ~_wgslsmith_mod_u32(34851u, global2.c.a.a.d.x) >> (~15749u % 32u), 1u), Struct_5(2088f, vec3<f32>(var_1.a.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(629f - var_1.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a))), Struct_3(var_1), func_4(Struct_4(1i), -vec3<i32>(var_2.a.b, global1.x, var_2.a.b), false, vec4<bool>(true, global2.c.a.a.e, true, true)).a), func_3(~vec4<u32>(~global2.c.a.a.d.x, max(global2.c.a.a.d.x, var_1.a.d.x), var_2.a.d.x, ~global2.c.a.a.d.x), Struct_5(_wgslsmith_f_op_f32(-268f + _wgslsmith_f_op_f32(-global2.d.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.a, global2.a, var_1.a.a) * vec3<f32>(523f, var_1.a.a, global2.a)), Struct_3(func_4(Struct_4(3792i), vec3<i32>(-32348i, global1.x, global2.c.a.a.c.x), var_2.a.e, vec4<bool>(var_1.a.e, true, false, var_2.a.e))), global2.d), Struct_1(var_1.a.a, _wgslsmith_mod_i32(global1.x & 40468i, _wgslsmith_mult_i32(0i, global1.x)), vec4<i32>(-2147483647i, u_input.c, global2.d.b, 1i << (var_2.a.d.x % 32u)), var_2.a.d, 0u == global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.a.a + 371f))))).a, -181f).a;
    let var_5 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global2.b - global2.b)));
    var var_6 = _wgslsmith_div_vec3_f32(var_5, _wgslsmith_f_op_vec3_f32(-var_5));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(321f)))), var_2.a.a, 405f, var_4.a))));
}

