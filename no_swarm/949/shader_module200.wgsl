struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec4<f32> = vec4<f32>(502f, 766f, -1793f, -1280f);

var<private> global2: array<vec2<u32>, 32>;

var<private> global3: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    var var_0 = any(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))));
    var var_1 = Struct_1(max(vec4<i32>(-u_input.a, u_input.a | reverseBits(-2147483647i), u_input.c, u_input.a >> (min(1u, 4294967295u) % 32u)), vec4<i32>(-44819i, -2147483647i, -min(2147483647i, u_input.a), i32(-1i) * -u_input.c)), vec4<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), true | select(any(vec2<bool>(true, false)), all(vec4<bool>(false, true, false, true)), true), all(vec2<bool>(true, true)), true | (_wgslsmith_add_i32(u_input.c, u_input.c) < firstTrailingBit(1i))), true, global1.xy, -218f);
    let var_2 = _wgslsmith_clamp_i32(max(max(~(~u_input.c), _wgslsmith_add_i32(~25460i, u_input.a)), var_1.a.x), 2147483647i, u_input.c);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1910f, 1369f, var_1.e, global1.x)), vec4<f32>(_wgslsmith_f_op_f32(global1.x + 375f), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(sign(-1157f)), _wgslsmith_f_op_f32(-841f * 1000f)))));
    global2 = array<vec2<u32>, 32>();
    return _wgslsmith_dot_vec2_i32(var_1.a.yy, vec2<i32>(_wgslsmith_mod_i32(var_2, -1i), -_wgslsmith_div_i32(var_2, var_1.a.x))) & (u_input.a | var_1.a.x);
}

fn func_2(arg_0: u32) -> f32 {
    global2 = array<vec2<u32>, 32>();
    var var_0 = global1.x;
    let var_1 = Struct_1(max(~(~(-vec4<i32>(-2147483647i, 7866i, u_input.c, u_input.c))), vec4<i32>((i32(-1i) * -1i) << (0u % 32u), u_input.c, (i32(-1i) * -2147483647i) << ((arg_0 ^ 1u) % 32u), max(~u_input.a, u_input.c))), vec4<bool>(u_input.a <= func_3(), !(u_input.c != 27616i) == false, select(true, !(u_input.c < u_input.c), true), true), true, global1.wz, global3.x);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.e + var_1.e), global1.x, _wgslsmith_f_op_f32(-var_1.e), global1.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1561f, global3.x, global1.x, global3.x))))));
    global2 = array<vec2<u32>, 32>();
    return 663f;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = arg_2.b.xzy;
    global2 = array<vec2<u32>, 32>();
    let var_1 = true;
    let var_2 = Struct_1(vec4<i32>(-firstTrailingBit(-arg_3.x), u_input.a >> (750u % 32u), -2147483647i, -21146i), select(vec4<bool>(select(arg_2.a.x, u_input.c, true) < ~(-1i), var_0.x, true, any(vec4<bool>(false, false, var_0.x, var_0.x))), arg_2.b, vec4<bool>(true, !(global1.x != global3.x), all(vec3<bool>(false, true, true)) || var_0.x, select(!var_0.x, true, !var_0.x))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x + arg_2.d.x), _wgslsmith_f_op_f32(arg_1 - -217f), any(arg_2.b.wy))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f - global1.x)), _wgslsmith_f_op_f32(func_2(1u))));
    return !arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    var var_1 = Struct_1(-(~(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), vec4<i32>(-24482i, u_input.c, -1i, 2147483647i)))), select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), func_1(true, global3.x, Struct_1(vec4<i32>(1276i, -2147483647i, u_input.c, u_input.c), vec4<bool>(false, false, false, true), true, vec2<f32>(1156f, -1316f), global1.x), countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.c, 6004i))), false), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(false, true, true)), vec4<bool>(true, true, u_input.a <= -1i, true), true), !(!(u_input.b.x > 4232u))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xx * global1.wx)), -769f);
    global1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1831f, 551f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) - 629f), 1586f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.yw, -386f, ~u_input.b.x, 530f, ~_wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x));
}

