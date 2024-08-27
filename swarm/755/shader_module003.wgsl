struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_u32(select(abs(_wgslsmith_sub_vec2_u32(u_input.d.yz, ~u_input.d.zx)), _wgslsmith_mult_vec2_u32(vec2<u32>(abs(12511u), 44460u), firstTrailingBit(~u_input.d.xz)), vec2<bool>(true, any(vec4<bool>(true, false, true, true)))), _wgslsmith_mod_vec2_u32(min(_wgslsmith_clamp_vec2_u32(u_input.d.yy ^ u_input.d.yy, vec2<u32>(u_input.c, 1u), ~u_input.d.yy), countOneBits(vec2<u32>(59725u, u_input.b) >> (u_input.d.zz % vec2<u32>(32u)))), vec2<u32>(~_wgslsmith_mult_u32(27184u, u_input.c), 1u)));
    global0 = array<vec4<i32>, 6>();
    global0 = array<vec4<i32>, 6>();
    var var_1 = -vec2<i32>(1i, _wgslsmith_dot_vec4_i32(min(select(u_input.e, vec4<i32>(arg_0, arg_1, -2147483647i, 0i), vec4<bool>(true, false, false, false)), ~global0[_wgslsmith_index_u32(u_input.c, 6u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.x, 8606u), ~45676u), 6u)]));
    let var_2 = 4294967295u;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1539f), _wgslsmith_f_op_f32(-811f * -160f)))))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_3.a, _wgslsmith_f_op_f32(-arg_3.a)) - vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.a))))), _wgslsmith_f_op_f32(abs(-483f))));
    let var_1 = _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(arg_1.c, arg_3.b) ^ vec2<u32>(arg_1.c, arg_1.c)), vec2<u32>(reverseBits(firstTrailingBit(arg_1.c)), u_input.c), abs(~u_input.d.yx)) | max(vec2<u32>(arg_1.c, ~4294967295u), vec2<u32>(1u, countOneBits(~1u)));
    var var_2 = arg_3;
    global0 = array<vec4<i32>, 6>();
    global0 = array<vec4<i32>, 6>();
    return !(!select(select(select(vec4<bool>(var_2.c.x, false, arg_0, var_2.c.x), vec4<bool>(false, arg_3.c.x, false, false), vec4<bool>(arg_0, var_2.c.x, var_2.c.x, false)), vec4<bool>(true, false, false, var_2.c.x), !vec4<bool>(arg_0, true, true, arg_3.c.x)), vec4<bool>(all(vec4<bool>(true, true, arg_3.c.x, true)), arg_0, arg_1.d.x, var_2.c.x), all(select(arg_1.d, vec3<bool>(true, true, true), var_2.c))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool) -> Struct_1 {
    global0 = array<vec4<i32>, 6>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1771f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-205f, arg_1)))))))), 513u, select(vec3<bool>(select(true, true, true) || true, 827f == _wgslsmith_f_op_f32(arg_1 * -232f), false | (arg_1 == -678f)), vec3<bool>(any(!vec4<bool>(arg_2, true, arg_2, true)), arg_2 || arg_2, !(arg_2 | false)), !vec3<bool>(arg_2, true, !arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(466f, arg_1, -1000f, arg_1))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, arg_1, arg_1)))), vec4<f32>(_wgslsmith_f_op_f32(-1110f + -208f), 1f, _wgslsmith_f_op_f32(-arg_1), arg_1))));
    global0 = array<vec4<i32>, 6>();
    var var_1 = max(u_input.d, ~(_wgslsmith_mult_vec3_u32(u_input.d ^ u_input.d, ~u_input.d) | ~vec3<u32>(13726u, 4294967295u, 0u)));
    let var_2 = 1u;
    return Struct_1(var_0.d.yz, u_input.e.xyw, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(2345u, var_1.x, 5676u, u_input.d.x), vec4<u32>(u_input.b, 59209u, u_input.b, 52667u)), ~vec4<u32>(var_0.b, u_input.b, var_2, 40570u)), vec4<u32>(var_1.x, var_2, _wgslsmith_mult_u32(56325u, 11801u), _wgslsmith_sub_u32(4294967295u, 0u))), vec3<bool>(true, var_0.c.x, false), var_0.c.yx);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_sub_i32(abs(_wgslsmith_div_i32(arg_1.x, 0i) | (u_input.a >> (7656u % 32u))), 5840i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(abs(-2147483647i), _wgslsmith_mod_i32(u_input.a, -2147483647i))) - 274f))), all(!(!func_3(true, Struct_1(vec2<f32>(-1000f, 1307f), vec3<i32>(-22971i, arg_1.x, 0i), u_input.b, arg_0, arg_0.xy), arg_0.x, Struct_2(-1733f, 4294967295u, vec3<bool>(true, false, false), vec4<f32>(-418f, 815f, -1000f, -806f))))));
    global0 = array<vec4<i32>, 6>();
    var var_1 = u_input.c;
    global0 = array<vec4<i32>, 6>();
    global0 = array<vec4<i32>, 6>();
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-259f))))), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6608u, u_input.c, 1u, 82158u), vec4<u32>(1u, 16433u, var_0.c, u_input.d.x)) >> (u_input.d.x % 32u), ~u_input.b), func_4(1i, _wgslsmith_f_op_f32(abs(-209f)), var_0.e.x).d, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(-302f)), -1006f, var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1377f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, -395f, -832f, var_0.a.x)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, var_0.a.x, -1547f, var_0.a.x), vec4<f32>(-1952f, var_0.a.x, var_0.a.x, 2257f)))))))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = ~(select(min(vec2<i32>(u_input.a, -10784i) & vec2<i32>(-2147483647i, -42312i), u_input.e.wy), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -16177i, 1i), u_input.e), func_4(0i, 725f, false).b.x), func_1(!arg_0.c, arg_2.b.yx).c.x) << (u_input.d.xz % vec2<u32>(32u)));
    global0 = array<vec4<i32>, 6>();
    var var_1 = vec4<bool>(arg_2.e.x, !(-447f <= arg_2.a.x), !(u_input.c <= _wgslsmith_div_u32(~1u, arg_0.b ^ u_input.b)), func_3(all(vec3<bool>(arg_2.c <= 8681u, false, func_3(false, arg_2, arg_2.e.x, arg_0).x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, 2730f), arg_0.d.yw))), arg_2.b | vec3<i32>(u_input.e.x, arg_2.b.x, 0i), ~4294967295u, !vec3<bool>(arg_2.e.x, arg_0.c.x, true), vec2<bool>(true, true)), select(arg_0.c.x, !arg_0.c.x | arg_0.c.x, true), Struct_2(183f, max(arg_2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_0.b, u_input.c), u_input.d)), !vec3<bool>(arg_0.c.x, true, true), _wgslsmith_f_op_vec4_f32(round(arg_0.d)))).x);
    var_1 = vec4<bool>(all(!vec2<bool>(true || var_1.x, arg_0.c.x)), false, any(!var_1.xwx), true);
    var_1 = vec4<bool>(func_3(arg_2.d.x, func_4(-4483i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - 1000f)), false), func_1(var_1.zxw, select(vec2<i32>(u_input.e.x, 33093i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.e.x, -1i), vec2<i32>(0i, var_0.x)), any(arg_2.d))).c.x, func_1(vec3<bool>(true, !arg_2.d.x, !arg_0.c.x), var_0)).x, false, any(vec3<bool>(any(select(vec4<bool>(arg_2.e.x, var_1.x, var_1.x, arg_2.d.x), vec4<bool>(arg_2.e.x, arg_2.d.x, arg_0.c.x, var_1.x), vec4<bool>(arg_0.c.x, true, false, true))), false, var_1.x)), var_1.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(-214f, _wgslsmith_f_op_f32(abs(-1183f)))), u_input.b, vec3<bool>(true, true, true), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(617f, -700f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 315f), _wgslsmith_f_op_f32(round(2076f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-190f + -1592f))), -1148f, -1286f));
    var_0 = func_5(func_1(vec3<bool>(true, true, any(vec3<bool>(var_0.c.x, true, var_0.c.x))), vec2<i32>(16747i, _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, 1i), ~(-12925i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), func_4(2147483647i, var_0.a, true));
    let var_1 = 0u;
    var var_2 = Struct_3(var_0.c.yx, !(_wgslsmith_f_op_f32(f32(-1f) * -1431f) == var_0.a), ~global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(32584u, u_input.c, 31223u), vec3<u32>(var_1, 18395u, 1u)) << (var_0.b % 32u)), 6u)], Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(995f)), _wgslsmith_f_op_f32(1062f + -1801f)))), ~vec3<i32>(4593i, _wgslsmith_add_i32(66090i, u_input.e.x), -u_input.e.x), 4294967295u, func_4(func_4(_wgslsmith_mod_i32(u_input.e.x, 1i), var_0.d.x, false).b.x, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(var_0.a + -1582f)), !all(vec4<bool>(var_0.c.x, true, true, var_0.c.x))).d, func_1(!select(vec3<bool>(var_0.c.x, var_0.c.x, true), vec3<bool>(false, true, false), true), ~vec2<i32>(-1i, -1i)).c.xx));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-var_0.d.x), 30054u, func_1(!vec3<bool>(var_0.c.x, true, all(vec2<bool>(var_2.b, true))), vec2<i32>(var_2.c.x, _wgslsmith_mod_i32(u_input.a, u_input.e.x))).c, _wgslsmith_div_vec4_f32(func_5(func_5(func_1(var_0.c, vec2<i32>(-2147483647i, -50998i)), _wgslsmith_f_op_f32(f32(-1f) * -1201f), func_4(26440i, var_0.d.x, var_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-362f + 209f), _wgslsmith_f_op_f32(-var_0.d.x)), var_2.d).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_1(var_2.d.d, u_input.e.wx).d))));
    var_2 = Struct_3(vec2<bool>(true, !(all(vec2<bool>(true, true)) || var_2.b)), true, vec4<i32>(~1860i, var_2.c.x, _wgslsmith_dot_vec4_i32(var_2.c << (_wgslsmith_add_vec4_u32(vec4<u32>(1602u, 47541u, var_3.b, 13507u), vec4<u32>(var_2.d.c, 0u, var_0.b, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(countOneBits(u_input.e.x), firstLeadingBit(2147483647i), var_2.c.x, u_input.a)), -26979i << (var_3.b % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.a, -1000f), vec2<f32>(-479f, var_0.a)))), var_2.d.b, ~_wgslsmith_sub_u32(var_1, var_3.b), var_3.c, !vec2<bool>(false, func_1(vec3<bool>(var_0.c.x, var_3.c.x, false), var_2.c.xw).c.x)));
    var var_4 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.b, vec3<i32>(i32(-1i) * -(var_2.c.x << (var_0.b % 32u)), var_4.b.x, var_4.b.x), vec3<u32>(var_4.c, ~0u, ~var_2.d.c));
}

