struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    global0 = array<u32, 20>();
    return min(-3149i, u_input.c);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.d.x))))), -151f)), 1000f);
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(431f, var_0.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1064f, arg_3.d.x))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(arg_3.d.yy)), _wgslsmith_f_op_vec2_f32(arg_2.d.zx * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 451f)), _wgslsmith_f_op_vec2_f32(select(arg_3.d.zx, vec2<f32>(var_0.x, arg_3.d.x), arg_3.e)), select(vec2<bool>(arg_2.a, arg_3.b), vec2<bool>(true, arg_3.a), arg_3.a)))))));
    var var_1 = -vec3<i32>(_wgslsmith_dot_vec4_i32(-u_input.b, u_input.b), ~_wgslsmith_div_i32(-2147483647i, -2147483647i), u_input.b.x) ^ (vec3<i32>(u_input.c, u_input.c, ~arg_1.x << (_wgslsmith_clamp_u32(4294967295u, arg_0.x, u_input.a) % 32u)) & (abs(_wgslsmith_add_vec3_i32(vec3<i32>(-2200i, -18641i, 0i), u_input.b.wxy)) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xww, vec3<i32>(-2147483647i, arg_1.x, 21672i)), u_input.c, 0i)));
    let var_2 = Struct_3(arg_1.x, arg_3.d.wzz, arg_3.d.x, false, arg_2.a);
    var var_3 = var_2;
    return arg_2.c.a;
}

fn func_2(arg_0: vec2<u32>) -> vec4<u32> {
    global0 = array<u32, 20>();
    var var_0 = Struct_1(arg_0.x);
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    let var_1 = vec3<u32>(~65379u, arg_0.x, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(~max(arg_0.x >> (u_input.a % 32u), 4294967295u), 20u)]));
    return ~vec4<u32>(_wgslsmith_mod_u32(0u | var_0.a, _wgslsmith_clamp_u32(arg_0.x, 0u, _wgslsmith_add_u32(arg_0.x, global0[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(6375u, u_input.a, 72432u, 4294967295u)), vec4<u32>(func_3(vec4<u32>(global0[_wgslsmith_index_u32(55u, 20u)], 72528u, 0u, 34293u), u_input.b.yx, Struct_2(false, false, Struct_1(34079u), vec4<f32>(137f, 964f, 362f, 835f), false), Struct_2(true, true, Struct_1(1u), vec4<f32>(-575f, -205f, -1337f, -954f), true)), 0u, ~0u, abs(0u))), 0u, max(1u, max(~43303u, countOneBits(26772u))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_1(u_input.a);
    var var_1 = ~2147483647i;
    global0 = array<u32, 20>();
    let var_2 = Struct_2(true, true || any(vec3<bool>(true, true, true)), Struct_1(~(73784u | global0[_wgslsmith_index_u32(70726u, 20u)])), vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(arg_0 + -1180f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(597f, arg_0, true)) * arg_0) + -1681f), 473f), true);
    let var_3 = arg_0;
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c, arg_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(705f, arg_1.x))), 488f, arg_0.d)))));
    global0 = array<u32, 20>();
    var_0 = vec3<f32>(arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1715f * var_0.x)) + 878f), arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.x, 469f)) * _wgslsmith_f_op_f32(-675f - 705f)))));
    var_0 = vec3<f32>(arg_1.x, 258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-595f - -1492f)))));
    global0 = array<u32, 20>();
    return Struct_1(max(~(~select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 1u, arg_0.d)), ~(~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(any(vec4<bool>(false, true, true, false)) || (func_1() >= -u_input.c)), !(all(vec3<bool>(false, true, false)) | false), func_5(Struct_3(~u_input.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(936f, -147f, 1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-657f, -1177f, 361f) + vec3<f32>(-1235f, 203f, 634f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1104f) - -196f), false | any(vec3<bool>(false, false, false)), false), vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -236f), func_2(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1632f, 529f) * _wgslsmith_f_op_f32(f32(-1f) * -762f)))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-988f, -1000f) + _wgslsmith_f_op_f32(-423f - -296f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1057f, 1919f)))), _wgslsmith_f_op_f32(-943f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-793f)) * -1486f))), false);
    global0 = array<u32, 20>();
    var var_1 = vec2<i32>(i32(-1i) * -52272i, u_input.b.x);
    let var_2 = select(select(!select(vec4<bool>(var_0.e, false, true, var_0.b), select(vec4<bool>(true, true, var_0.b, false), vec4<bool>(false, var_0.b, false, var_0.e), vec4<bool>(false, var_0.e, false, false)), !var_0.a), select(select(vec4<bool>(var_0.e, var_0.b, var_0.b, true), select(vec4<bool>(var_0.e, false, false, var_0.a), vec4<bool>(var_0.a, true, var_0.e, var_0.b), var_0.a), select(vec4<bool>(false, var_0.b, false, true), vec4<bool>(var_0.a, var_0.b, var_0.b, var_0.e), vec4<bool>(true, false, false, true))), vec4<bool>(true, all(vec3<bool>(var_0.b, false, var_0.e)), false, var_0.a), !select(vec4<bool>(true, var_0.e, true, true), vec4<bool>(false, false, var_0.e, true), vec4<bool>(false, true, var_0.b, true))), var_0.e), !select(vec4<bool>(select(true, var_0.b, var_0.a), var_0.b, !var_0.a, !var_0.a), !select(vec4<bool>(var_0.a, var_0.e, var_0.e, var_0.b), vec4<bool>(var_0.e, false, var_0.a, var_0.a), vec4<bool>(false, var_0.b, var_0.e, var_0.a)), select(select(vec4<bool>(false, var_0.a, var_0.b, var_0.e), vec4<bool>(false, true, var_0.b, var_0.a), true), select(vec4<bool>(var_0.b, true, var_0.e, true), vec4<bool>(var_0.a, var_0.b, false, true), false), select(vec4<bool>(var_0.a, false, true, var_0.e), vec4<bool>(true, false, true, var_0.e), false))), any(!select(vec3<bool>(var_0.a, var_0.b, false), vec3<bool>(false, true, false), false)));
    var var_3 = u_input.b.xw;
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(var_0.d.zxy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(102f, 1905f, 1156f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d.xyy + var_0.d.wzy))))), var_0.d);
}

