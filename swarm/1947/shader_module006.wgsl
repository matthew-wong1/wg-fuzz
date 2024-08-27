struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(4294967295u, 14900u, 54295u, 4294967295u, 4294967295u, 89419u, 4294967295u, 1993u, 128158u, 1u, 19300u, 4294967295u, 4294967295u, 1u, 34224u, 42909u, 66416u, 1u, 325u, 0u, 38927u, 33666u, 49887u, 4294967295u, 0u, 39916u, 4680u);

var<private> global1: vec3<f32> = vec3<f32>(-183f, -604f, -574f);

var<private> global2: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-273f, _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(abs(635f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1279f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -591f), false)))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(600f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(236f - -608f) - _wgslsmith_f_op_f32(select(1247f, _wgslsmith_f_op_f32(f32(-1f) * -1033f), all(vec3<bool>(true, true, false))))), arg_0.x));
    var var_1 = vec4<bool>(true, max(select(-45902i >> (0u % 32u), ~58814i, true), -1i) >= -1i, !(!any(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), false);
    global2 = array<vec4<bool>, 14>();
    var_1 = vec4<bool>(true, select(false, !var_1.x, true), !((select(-43896i, 2147483647i, var_1.x) < -37174i) & select(true, any(vec3<bool>(true, var_1.x, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(468f * arg_0.x), 1000f)) > 1661f);
    var_1 = vec4<bool>(any(!select(vec2<bool>(var_1.x, true), vec2<bool>(true, true), !var_1.yw)), !any(global2[_wgslsmith_index_u32(u_input.b, 14u)]), any(!vec4<bool>(true, !var_1.x, var_1.x, any(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 27u)], 27u)], 14u)]))), true);
    return abs(_wgslsmith_div_i32(~(-10644i), abs(_wgslsmith_clamp_i32(-1i, 1i, 0i))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(606f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.b.b.x)) + -1471f), -298f, global1.x) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(arg_3.a.b))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, arg_3.b.b.x, arg_3.a.a.x, _wgslsmith_div_f32(global1.x, arg_3.a.b.x)))))));
    var var_1 = var_0;
    var var_2 = reverseBits(arg_1.zx);
    var var_3 = !(!select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(all(vec2<bool>(true, false)), true), true));
    var_1 = var_0;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.a.b.wwx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.a.zzy, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1381f), global1.x, -319f)))));
}

fn func_2(arg_0: bool) -> vec4<i32> {
    global0 = array<u32, 27>();
    let var_0 = ~2147483647i;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~var_0, var_0, -27754i), -var_0);
    global1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_div_f32(global1.x, global1.x), true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], u_input.c.x, u_input.a, 9506u), countOneBits(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 27u)], 27u)], 27u)], 27u)], 37892u, global0[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], u_input.d.x, 616u, 56721u), vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(7093u, 27u)], 16354u, 13178u))), func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -415f, global1.x, global1.x)))), Struct_2(Struct_1(vec4<f32>(global1.x, 1112f, -364f, global1.x), vec4<f32>(1957f, -1424f, 148f, 774f)), Struct_1(vec4<f32>(-815f, global1.x, 1695f, global1.x), vec4<f32>(global1.x, -1340f, global1.x, -564f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-206f, -2574f, -1358f), vec3<f32>(1209f, global1.x, -1691f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, -895f, global1.x), vec3<f32>(global1.x, 669f, -732f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1852f, global1.x, global1.x)), vec3<f32>(-652f, global1.x, 587f)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))), vec4<f32>(-137f, 760f, 1251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(round(685f))))));
    return select(-reverseBits(_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, var_0, 21199i, var_0), vec4<i32>(var_0, -1i, 1i, var_0) >> (vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(16344u, 27u)], 16971u, 7693u) % vec4<u32>(32u)))), vec4<i32>(var_0, -1i, var_0, ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0, -42927i), var_0)), vec4<bool>(!all(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0))), !(!arg_0) | (any(vec2<bool>(arg_0, true)) && arg_0), true, false));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec3_i32(arg_2 | arg_2, max(arg_2, vec3<i32>(arg_2.x, -2147483647i, arg_2.x))), ~max(arg_2.x, arg_2.x >> (u_input.b % 32u)), -arg_2.x, ~2147483647i), vec4<i32>(-1i, arg_2.x, ~_wgslsmith_mod_i32(arg_2.x, arg_2.x) & 275i, _wgslsmith_mod_i32(countOneBits(countOneBits(arg_2.x)), arg_2.x)), func_2(arg_1));
    var var_1 = var_0.yx;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-16374i, 37407i) | var_0.yx, ~vec2<i32>(arg_2.x, 20997i)), -_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2.x, 0i), ~21763i)), vec2<i32>(_wgslsmith_sub_i32(var_1.x, -arg_2.x & (i32(-1i) * -1i)), countOneBits(_wgslsmith_mult_i32(9862i, arg_2.x)) >> (0u % 32u)));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> StorageBuffer {
    global2 = array<vec4<bool>, 14>();
    let var_0 = u_input.d.x > 27287u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, -1000f, -243f, -1323f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_3.a.a, vec4<f32>(arg_3.b.b.x, arg_1, 1293f, arg_0.b.b.x)) - _wgslsmith_f_op_vec4_f32(-arg_3.a.b)), true)), arg_3.b.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.b.x, arg_0.a.a.x))), _wgslsmith_f_op_f32(abs(arg_3.a.b.x)), _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, -907f, -1588f, 693f))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.b.x), _wgslsmith_div_f32(-310f, -719f), arg_1, 1000f))));
    let var_2 = arg_3.b;
    global2 = array<vec4<bool>, 14>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(402f, arg_0.b.a.x, arg_0.a.b.x) - var_1.b.yzx), var_2.a.ywx)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.b.wyy) - vec3<f32>(-603f, -881f, arg_3.a.b.x))) + var_1.a.wxx), -vec3<i32>((arg_2.x & 1i) & -1i, i32(-1i) * -11843i, arg_2.x | arg_2.x), vec4<i32>(-1i) * -countOneBits(-vec4<i32>(7073i, 32509i, arg_2.x, -2147483647i)), arg_2.x, _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, arg_2.x) & -vec3<i32>(42236i, arg_2.x, -1i), ~(~vec3<i32>(-37066i, arg_2.x, arg_2.x)), -(~vec3<i32>(-29190i, arg_2.x, arg_2.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, 32859i, arg_2.x) ^ vec3<i32>(1i, 47777i, arg_2.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-12625i, -1i, arg_2.x), vec3<i32>(arg_2.x, 0i, arg_2.x))) << ((_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 27u)], u_input.d.x, u_input.c.x), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22589u, 27u)], 27u)], 8832u, u_input.d.x)) | u_input.c) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.wxx;
    global2 = array<vec4<bool>, 14>();
    global2 = array<vec4<bool>, 14>();
    let var_1 = ~var_0.x;
    var var_2 = false;
    let x = u_input.a;
    s_output = func_5(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1243f, 1026f, global1.x, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -727f, global1.x, global1.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-205f, global1.x, -179f, 703f)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 619f, 1116f, -108f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -841f, global1.x) + vec4<f32>(-332f, global1.x, -823f, global1.x))))), -822f, select(vec2<i32>(1i, 1i) >> (~vec2<u32>(var_0.x, 70627u) % vec2<u32>(32u)), -func_1(global2[_wgslsmith_index_u32(u_input.d.x, 14u)], -836f > global1.x, vec3<i32>(6106i, -45851i, -2147483647i)), true), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(global1.x, 373f)), 206f, _wgslsmith_f_op_f32(max(global1.x, -640f))), vec4<f32>(global1.x, 1873f, -548f, 1f)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 174f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, 1074f, 786f, 177f)))))));
}

