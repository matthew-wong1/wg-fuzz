struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f))), vec2<f32>(_wgslsmith_f_op_f32(-1159f * _wgslsmith_f_op_f32(min(1463f, -1322f))), _wgslsmith_f_op_f32(trunc(2903f))), vec2<bool>(!(!arg_0.x), !arg_0.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1204f)), -1292f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2571f, 774f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1195f, 174f) - vec2<f32>(-2534f, 1284f)))), select(true & any(arg_0), false, arg_0.x))));
    let var_1 = Struct_5(Struct_3(!vec2<bool>(arg_0.x | arg_0.x, arg_0.x)), Struct_2(vec2<bool>(all(vec4<bool>(arg_0.x, arg_0.x, true, false)), arg_0.x), Struct_1(u_input.b, min(~2147483647i, u_input.a ^ u_input.a), min(u_input.a, u_input.a), true), Struct_1(~(4294967295u | u_input.c), max(_wgslsmith_div_i32(u_input.e.x, u_input.d.x), _wgslsmith_add_i32(-23204i, u_input.d.x)), 0i, !(arg_0.x && true)), select(vec4<u32>(7552u, firstTrailingBit(0u), _wgslsmith_mult_u32(u_input.c, 1u), u_input.b), select(vec4<u32>(0u, 4294967295u, 82088u, u_input.b) & vec4<u32>(u_input.c, 1u, u_input.b, 6320u), reverseBits(vec4<u32>(0u, 3381u, 72362u, u_input.c)), arg_0.x), true), false), Struct_4(Struct_2(!vec2<bool>(arg_0.x, arg_0.x), Struct_1(29969u, -u_input.a, u_input.d.x, select(arg_0.x, arg_0.x, arg_0.x)), Struct_1(_wgslsmith_add_u32(1u, u_input.b), _wgslsmith_div_i32(u_input.a, u_input.a), reverseBits(u_input.e.x), any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), ~(vec4<u32>(u_input.c, u_input.c, u_input.b, 4294967295u) << (vec4<u32>(0u, 4294967295u, u_input.b, u_input.b) % vec4<u32>(32u))), arg_0.x), arg_0.x));
    let var_2 = vec2<u32>(4294967295u, 1u);
    global0 = array<vec3<u32>, 22>();
    let var_3 = var_1.b.b;
    return -2147483647i <= _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~(-vec4<i32>(-13135i, var_3.c, var_1.b.c.b, var_3.b)), -countOneBits(vec4<i32>(u_input.a, var_3.b, -271i, -2147483647i))), abs(vec4<i32>(var_3.b, 10094i, var_3.b, var_1.b.b.b)) ^ reverseBits(-vec4<i32>(var_1.b.c.b, 1i, var_3.c, u_input.d.x)));
}

fn func_2(arg_0: Struct_3) -> f32 {
    global0 = array<vec3<u32>, 22>();
    let var_0 = Struct_3(vec2<bool>(!func_3(vec3<bool>(arg_0.a.x, arg_0.a.x, true)), true));
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    return 1000f;
}

fn func_1(arg_0: Struct_5) -> u32 {
    var var_0 = arg_0;
    var var_1 = -2147483647i;
    let var_2 = var_0.a.a.x;
    global0 = array<vec3<u32>, 22>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1176f), _wgslsmith_f_op_f32(-560f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -399f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(var_0.a)), -120f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1015f) * 364f)) + 1673f));
    return min(u_input.c, 4294967295u);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: u32) -> vec4<bool> {
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    let var_0 = true;
    global0 = array<vec3<u32>, 22>();
    let var_1 = Struct_2(vec2<bool>(any(select(select(vec3<bool>(arg_0, true, var_0), vec3<bool>(var_0, false, false), var_0), vec3<bool>(true, true, false), !arg_0)), var_0), Struct_1(34106u << (arg_2 % 32u), 1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(abs(32581i), -20828i << (u_input.c % 32u), ~11705i), 0i), all(vec3<bool>(false, var_0, true))), Struct_1(20906u, countOneBits(abs(arg_1)) & -1i, 2147483647i, all(vec3<bool>(1u > u_input.b, any(vec4<bool>(true, false, false, false)), true))), vec4<u32>(reverseBits(u_input.b), ~min(0u, 1u), ~(~1u), ~(1u ^ (u_input.c & 6222u))), var_0);
    return !(!vec4<bool>(select(all(vec4<bool>(true, var_1.b.d, var_1.c.d, var_1.b.d)), var_1.a.x, true), arg_0, arg_0 || false, var_1.b.c > reverseBits(arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(false != (~func_1(Struct_5(Struct_3(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false), Struct_1(u_input.c, 1i, u_input.e.x, false), Struct_1(u_input.c, 1i, 2147483647i, true), vec4<u32>(4294967295u, 1u, u_input.b, 24888u), true), Struct_4(Struct_2(vec2<bool>(true, false), Struct_1(u_input.c, u_input.d.x, -2147483647i, false), Struct_1(51374u, u_input.a, 43325i, true), vec4<u32>(23664u, 1u, 4294967295u, u_input.b), true), false))) != 4294967295u), u_input.a, 25441u);
    var var_1 = Struct_3(var_0.wz);
    global0 = array<vec3<u32>, 22>();
    let var_2 = _wgslsmith_f_op_f32(trunc(1157f));
    global0 = array<vec3<u32>, 22>();
    var var_3 = Struct_5(Struct_3(vec2<bool>(!any(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)), all(select(vec3<bool>(var_1.a.x, var_1.a.x, false), var_0.yyy, var_0.x)))), Struct_2(var_0.wx, Struct_1(~reverseBits(3385u), ~5210i, -19941i, false), Struct_1(~u_input.b, ~u_input.a, u_input.a, func_4(any(vec3<bool>(var_1.a.x, var_1.a.x, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -10017i), u_input.e.zx), ~1u).x), vec4<u32>(~(~76692u), ~u_input.c, u_input.c, _wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 70978u), vec2<u32>(u_input.c, u_input.b)))), var_0.x), Struct_4(Struct_2(vec2<bool>(false, var_1.a.x), Struct_1(~89122u, -13451i, firstLeadingBit(u_input.e.x), var_0.x), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(30298u, 1u, u_input.c, 27534u), vec4<u32>(15606u, u_input.b, 3336u, u_input.b)), 0i, ~(-1i), !var_1.a.x), ~vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.c), all(!vec4<bool>(true, var_0.x, false, var_1.a.x))), all(!vec4<bool>(false, var_1.a.x, true, false))));
    global0 = array<vec3<u32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~u_input.c, abs(~func_1(Struct_5(Struct_3(var_0.yw), Struct_2(var_0.ww, Struct_1(var_3.b.b.a, var_3.c.a.c.b, -1i, var_3.b.c.d), var_3.b.b, var_3.b.d, false), var_3.c))), ~u_input.c ^ countOneBits(63687u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(935f, var_2, -366f, var_2), vec4<f32>(-824f, -1089f, var_2, var_2), vec4<bool>(var_3.a.a.x, var_3.b.c.d, true, var_0.x))), vec4<f32>(var_2, 526f, -1120f, -140f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<bool>(var_0.x, false)))), _wgslsmith_f_op_f32(-var_2), -456f))));
}

