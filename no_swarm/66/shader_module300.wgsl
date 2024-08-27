struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<bool>(false, false), vec4<f32>(852f, -741f, 995f, 938f), vec4<f32>(203f, -398f, 1249f, -2040f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-1648f, 541f, 861f, -799f), vec4<f32>(-1014f, -494f, -1561f, 1339f)), Struct_1(vec2<bool>(true, false), vec4<f32>(324f, 140f, -1000f, -1188f), vec4<f32>(320f, 699f, -1498f, 108f)), Struct_1(vec2<bool>(true, true), vec4<f32>(-254f, 1331f, -690f, 1612f), vec4<f32>(-719f, -370f, 1283f, 597f)), Struct_1(vec2<bool>(true, false), vec4<f32>(148f, 965f, 1490f, -2067f), vec4<f32>(-428f, -742f, 1411f, 238f)), Struct_1(vec2<bool>(false, true), vec4<f32>(-740f, -1000f, 172f, -2088f), vec4<f32>(-600f, 1012f, 476f, -995f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-133f, 978f, 1696f, 1066f), vec4<f32>(1155f, -1000f, -1056f, -205f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> i32 {
    var var_0 = any(vec4<bool>(true, ((u_input.a.x ^ -74302i) <= countOneBits(-1i)) || true, (!arg_1.a || (true && arg_1.a)) && !(!arg_1.a), global1.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -1492f))));
    var var_1 = _wgslsmith_dot_vec4_i32(-max(_wgslsmith_add_vec4_i32(u_input.a, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.d), u_input.a)), u_input.a) << (max(u_input.b << (max(arg_1.c.x, 29801u) % 32u), _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(4294967295u, ~u_input.b))) % 32u);
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1789f, _wgslsmith_f_op_f32(f32(-1f) * -1894f), _wgslsmith_f_op_f32(f32(-1f) * -617f), 1000f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-558f, -830f, -1139f, -135f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 615f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-635f, global1.x, global1.x, -741f)))));
    var var_3 = Struct_3(global1.x, _wgslsmith_mod_i32(-max(u_input.a.x, -45746i), -17116i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1301f - var_2.x))))))), vec4<f32>(-974f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.x)), -860f))), -275f, 761f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.wy, vec2<f32>(global1.x, global1.x)))), vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-var_2.x))))));
    let var_4 = 0u;
    return i32(-1i) * -36980i;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> u32 {
    let var_0 = -52505i ^ _wgslsmith_add_i32(func_3(-2147483647i, Struct_4(false, vec2<i32>(u_input.d, u_input.d), vec4<u32>(u_input.c, arg_0.b.x, u_input.c, arg_0.b.x))) << (arg_0.b.x % 32u), u_input.d | 1i);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(min(arg_2.x, arg_0.c.c.x))), _wgslsmith_f_op_f32(-arg_2.x), true)))));
    global2 = array<Struct_1, 7>();
    var var_2 = Struct_2(vec2<u32>(arg_0.a.x << ((_wgslsmith_dot_vec2_u32(vec2<u32>(103653u, arg_0.a.x), arg_0.b.wy) >> (_wgslsmith_div_u32(u_input.c, 21951u) % 32u)) % 32u), ~95875u), arg_0.b, Struct_1(select(arg_0.c.a, vec2<bool>(true, true), !select(vec2<bool>(arg_0.c.a.x, true), vec2<bool>(arg_1, arg_1), arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_0.d.x, global1.x, 1000f))))), vec4<f32>(-1918f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -227f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-426f * -209f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.x, arg_0.c.c.x))), _wgslsmith_f_op_f32(min(-144f, _wgslsmith_f_op_f32(trunc(arg_2.x))))), 870f, -343f, _wgslsmith_f_op_f32(1547f + 383f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_2.d.x), -2025f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, -1000f) + _wgslsmith_f_op_vec2_f32(max(global1.xy, global1.yx))), arg_2)) * vec2<f32>(arg_2.x, -1000f));
    return ~_wgslsmith_sub_u32(12847u | (1u >> (arg_0.a.x % 32u)), 23578u);
}

fn func_1() -> Struct_3 {
    let var_0 = min(u_input.d, i32(-1i) * -75053i);
    let var_1 = vec4<u32>(0u << (1u % 32u), u_input.c >> (~4294967295u % 32u), _wgslsmith_div_u32(func_2(Struct_2(vec2<u32>(0u, u_input.c), vec4<u32>(u_input.b, u_input.c, 51344u, u_input.e), Struct_1(vec2<bool>(true, false), vec4<f32>(global1.x, 115f, global1.x, global1.x), vec4<f32>(731f, 1827f, 1226f, -1000f)), vec4<f32>(-901f, -1000f, global1.x, -1217f)), select(false, true, true), _wgslsmith_div_vec2_f32(global1.wy, global1.yx)), 61955u), ~u_input.e) << (firstLeadingBit(select(~reverseBits(vec4<u32>(14055u, 70478u, 0u, u_input.e)), vec4<u32>(u_input.e, ~u_input.e, countOneBits(u_input.c), max(u_input.b, u_input.b)), true)) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 693f)), -794f), false)) == 3659f;
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1418f, global1.x, 1696f), vec4<f32>(global1.x, 485f, global1.x, -801f))))), vec4<f32>(_wgslsmith_f_op_f32(285f * _wgslsmith_f_op_f32(abs(-1340f))), 1138f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) + -1414f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), 1206f, _wgslsmith_f_op_f32(sign(1556f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 1394f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-300f, -257f, global1.x, 1320f) - vec4<f32>(global1.x, -744f, global1.x, global1.x)))), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x + -528f), _wgslsmith_f_op_f32(global1.x * global1.x), global1.x)))), !any(vec2<bool>(false, true))));
    var_2 = select(true, select(false, any(vec4<bool>(true, true, true, true)), false), _wgslsmith_f_op_f32(-global1.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-371f, _wgslsmith_f_op_f32(max(-1309f, -383f)))) - global1.x));
    return Struct_3(global1.x, -select(abs(-3036i), 0i, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))) + _wgslsmith_f_op_f32(max(global1.x, -940f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 371f, 950f, global1.x)))), vec4<f32>(-1212f, global1.x, global1.x, _wgslsmith_f_op_f32(max(567f, 403f))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) * vec4<f32>(1089f, -2642f, global1.x, 1057f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1688f, global1.x, global1.x) * vec4<f32>(global1.x, -882f, 1047f, -405f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(920f, -488f, 998f, 514f) - vec4<f32>(global1.x, -428f, global1.x, global1.x)))))), global1.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.e, 1u)];
    let var_1 = func_1();
    var var_2 = global1.xxw;
    var var_3 = global2[_wgslsmith_index_u32(u_input.c, 7u)];
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_0.a.x, 17026u, 0u), vec4<u32>(75579u >> (max(var_0.b.x, 50181u) % 32u), u_input.c, ~u_input.c, u_input.c & ~var_0.a.x)));
}

