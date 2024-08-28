struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 2> = array<i32, 2>(2147483647i, i32(-2147483648));

var<private> global2: vec4<u32>;

var<private> global3: u32 = 27265u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = firstTrailingBit(vec2<i32>(u_input.c, ~u_input.b.x & reverseBits(countOneBits(u_input.c))));
    global3 = 0u;
    global0 = _wgslsmith_f_op_f32(1182f + arg_0);
    let var_1 = Struct_3(-926f, ~vec2<u32>(select(_wgslsmith_mult_u32(0u, global2.x), ~global2.x, true), global2.x));
    let var_2 = _wgslsmith_sub_i32(~countOneBits(global1[_wgslsmith_index_u32(~1u << (_wgslsmith_sub_u32(6040u, global2.x) % 32u), 2u)]), abs(u_input.c));
    return arg_1.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> vec4<f32> {
    global1 = array<i32, 2>();
    var var_0 = Struct_2(arg_0.x, Struct_1(select(vec2<bool>(true, 55255i > global1[_wgslsmith_index_u32(4294967295u, 2u)]), arg_0.yx, true), -654f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(585f, _wgslsmith_f_op_f32(arg_1 - arg_1), arg_2)) + vec3<f32>(arg_2, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(max(arg_1, -1676f)), any(arg_0))), _wgslsmith_f_op_f32(687f - _wgslsmith_f_op_f32(1149f * -797f)))), func_3(arg_2, Struct_1(arg_0.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_2) + _wgslsmith_f_op_f32(step(-1095f, arg_2)))), Struct_1(!arg_0.xz, 1228f)));
    var var_1 = ~vec4<i32>(select(u_input.c, ~(-2147483647i), (global2.x ^ 0u) >= ~38648u), _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(global2.x, 2u)]), u_input.b), _wgslsmith_div_i32(_wgslsmith_mod_i32(45411i, u_input.b.x), u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-34786i, 2147483647i), abs(-126407i), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(global2.x, 2u)], u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 2u)], 2147483647i, 8127i), vec3<i32>(u_input.c, 1i, 0i)) >> (vec3<u32>(21203u, global2.x, 4294967295u) % vec3<u32>(32u))), -_wgslsmith_mult_i32(-global1[_wgslsmith_index_u32(global2.x, 2u)], ~global1[_wgslsmith_index_u32(global2.x, 2u)]));
    var var_2 = _wgslsmith_f_op_f32(arg_1 - -1274f);
    var_0 = Struct_2(!(var_0.b.b <= _wgslsmith_f_op_f32(-1000f * arg_1)) || false, Struct_1(vec2<bool>(false, all(select(vec4<bool>(true, arg_0.x, true, false), vec4<bool>(arg_0.x, true, false, arg_0.x), var_0.b.a.x))), _wgslsmith_f_op_f32(arg_2 - var_0.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, arg_1, var_0.b.b))), vec3<f32>(1102f, -315f, arg_2)))), arg_0.yz);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(624f, arg_2, var_0.b.b, 1000f));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    let var_0 = false;
    global0 = _wgslsmith_f_op_f32(min(964f, 1000f));
    var var_1 = Struct_1(func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_f32(-arg_1.x)), Struct_1(!(!vec2<bool>(var_0, var_0)), arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f + 1322f) - arg_0.x))));
    let var_2 = arg_0.x;
    var var_3 = vec4<bool>(all(vec3<bool>(true, all(vec3<bool>(var_1.a.x, false, false)) & (2821i <= arg_3), true)), false && var_1.a.x, var_0 || (func_3(arg_1.x, Struct_1(var_1.a, -662f), Struct_1(var_1.a, -790f)).x | true), var_1.a.x);
    return arg_2;
}

fn func_1() -> u32 {
    global0 = -636f;
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), -684f, _wgslsmith_div_f32(-148f, -244f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(885f, -362f, -1000f) + vec3<f32>(1017f, -1514f, -600f)))))), Struct_3(-479f, ~(~vec2<u32>(4294967295u, global2.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, max(u_input.a, 0i)), 1i, u_input.c << (_wgslsmith_mod_u32(4294967295u, 1u) % 32u), -firstLeadingBit(u_input.b.x)), _wgslsmith_add_vec4_i32(max(select(vec4<i32>(u_input.c, -23808i, u_input.b.x, u_input.b.x), vec4<i32>(0i, u_input.a, global1[_wgslsmith_index_u32(global2.x, 2u)], -16262i), false), firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(global2.x, 2u)], global1[_wgslsmith_index_u32(global2.x, 2u)], u_input.a, 2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(-42278i, 0i, 632i, 41773i), _wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global2.x, 2u)], 2147483647i, global1[_wgslsmith_index_u32(30647u, 2u)], 0i), vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(0u, 2u)], -44248i, 1i))))));
    let var_1 = Struct_1(func_3(_wgslsmith_f_op_f32(f32(-1f) * -2730f), Struct_1(vec2<bool>(select(true, false, true), true), _wgslsmith_f_op_f32(max(-476f, _wgslsmith_f_op_f32(-1181f - -1463f)))), Struct_1(select(vec2<bool>(true, true), func_3(648f, Struct_1(vec2<bool>(false, true), var_0.a), Struct_1(vec2<bool>(true, false), var_0.a)), vec2<bool>(true, true)), _wgslsmith_div_f32(-925f, _wgslsmith_f_op_f32(var_0.a - var_0.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(501f, -1282f, var_0.a, 1007f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1424f, 1158f, -207f))), var_0, global1[_wgslsmith_index_u32(global2.x, 2u)]).a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) * _wgslsmith_f_op_f32(var_0.a * var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), -769f, -389f)).x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(619f, -715f) - _wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(false, false, true), var_0.a, -351f)).x)), true)));
    let var_2 = Struct_2(!(!(abs(2147483647i) <= -u_input.a)), var_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -2256f, var_1.b, -833f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -1631f)), func_4(vec4<f32>(var_0.a, 1689f, 857f, var_1.b), vec3<f32>(372f, var_0.a, 1776f), Struct_3(var_1.b, var_0.b), 2147483647i), ~2147483647i).a, _wgslsmith_div_f32(1573f, var_0.a), -134f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_1.b)) * vec3<f32>(-1308f, var_1.b, var_0.a)))), vec2<bool>(false, var_1.a.x));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -648f)));
    return var_0.b.x & 4428u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 2>();
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(757f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1160f) + 1551f)), _wgslsmith_f_op_f32(-1f))));
    let var_0 = global2.x & ~1u;
    let var_1 = func_1() | (global2.x ^ 0u);
    global1 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -168f), -1174f, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(false, true, false), -392f, -1000f)).x)), 697f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-898f, 1396f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-311f, 692f)))) - vec2<f32>(_wgslsmith_div_f32(-649f, 286f), _wgslsmith_f_op_f32(floor(1762f)))), vec2<f32>(-2792f, -805f)), _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.c, u_input.a, 20403i, ~3688i), firstTrailingBit(vec4<i32>(0i, 1i, 1i, u_input.a)) & ~vec4<i32>(global1[_wgslsmith_index_u32(var_1, 2u)], global1[_wgslsmith_index_u32(var_0, 2u)], u_input.c, global1[_wgslsmith_index_u32(4294967295u, 2u)])) ^ (vec4<i32>(u_input.a, 32146i, 1i, u_input.a) | vec4<i32>(1i, _wgslsmith_clamp_i32(22805i, 24240i, u_input.c), min(0i, u_input.c), -1i)), 0i, ~u_input.c);
}

