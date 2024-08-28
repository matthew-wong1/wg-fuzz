struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> vec2<i32> {
    global0 = array<f32, 23>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(528f, 1000f))), _wgslsmith_f_op_f32(-arg_1.x)), true, vec4<i32>(_wgslsmith_mod_i32(2147483647i, 1i), ~(-42107i), min(1i, 48132i), _wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(23942i, 0i), vec2<i32>(55928i, 1i)), 1i))), u_input.a.x, firstLeadingBit(vec3<i32>(-32133i, reverseBits(2147483647i << (u_input.a.x % 32u)), 1i)));
    let var_1 = vec4<bool>(1u < _wgslsmith_div_u32(~u_input.a.x << ((var_0.d | 4294967295u) % 32u), ~_wgslsmith_sub_u32(u_input.a.x, 4294967295u)), arg_0, false, !arg_0);
    global0 = array<f32, 23>();
    var var_2 = -_wgslsmith_add_vec3_i32(var_0.e, _wgslsmith_clamp_vec3_i32(countOneBits(var_0.e) & _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 3535i, 39985i), vec3<i32>(var_0.c.x, var_0.e.x, 1i)), _wgslsmith_sub_vec3_i32(var_0.c.wzx, var_0.e), abs(-vec3<i32>(18149i, -3656i, 2147483647i))));
    return var_0.e.xz;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: bool) -> vec2<u32> {
    global0 = array<f32, 23>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~14337u, 23u)]))) + global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x) >> (_wgslsmith_dot_vec2_u32(u_input.a.zz ^ u_input.a.xx, u_input.a.xy | u_input.a.xy) % 32u), 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -465f)), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~30340u, 23u)])), _wgslsmith_f_op_f32(sign(1411f)) >= -267f))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(min(393f, 1743f)))))) * vec2<f32>(1216f, -1000f));
    var var_1 = ~abs(vec3<i32>(-_wgslsmith_clamp_i32(-11595i, 59517i, arg_1.x), ~select(arg_0, arg_1.x, false), func_1(all(vec3<bool>(true, arg_2, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1037f, -161f, 375f))).x));
    let var_2 = u_input.a.x;
    return u_input.a.xx;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = reverseBits(_wgslsmith_sub_vec3_u32(u_input.a << (~reverseBits(u_input.a) % vec3<u32>(32u)), vec3<u32>(0u & (4294967295u & arg_0.b.x), 59776u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, arg_2.d), vec2<u32>(arg_2.a, 48487u))))));
    var_0 = max(abs(_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(var_0.x, arg_0.b.x, 1u)), ~vec3<u32>(arg_0.b.x, arg_0.b.x, 57564u))), ~u_input.a);
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    return vec3<bool>(false, any(vec2<bool>(-1334f < arg_2.b, true)), false != all(vec4<bool>(arg_2.d >= 0u, true, true, arg_1.a.x == arg_0.a.a.x)));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(753f, 1336f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], 889f, 240f) * vec3<f32>(350f, global0[_wgslsmith_index_u32(38639u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])))), vec3<f32>(2171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 23u)]) - global0[_wgslsmith_index_u32(u_input.a.x & 4294967295u, 23u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))) * 335f)));
    let var_1 = select(vec3<bool>(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))), true & ((21719u & u_input.a.x) < 1u), 49940u <= abs(u_input.a.x)), func_4(Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], -1414f, 226f))), ~u_input.a.xy << (func_3(23438i, vec3<i32>(-4994i, -1i, -1i), false) % vec2<u32>(32u))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2067f, 700f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])))), Struct_4(u_input.a.x, var_0.x, 4042i, ~u_input.a.x)), vec3<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false), global0[_wgslsmith_index_u32(u_input.a.x, 23u)] < global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), select(true, true, any(vec4<bool>(true, true, false, true))) && true, false));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(621f, -1000f, var_1.x)), !var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + global0[_wgslsmith_index_u32(66514u, 23u)])))))) - global0[_wgslsmith_index_u32(30508u, 23u)]);
    var var_3 = Struct_4(abs(min(select(min(u_input.a.x, 1u), 1u, !var_1.x), countOneBits(~u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))))), -_wgslsmith_mod_i32(29268i, -(~38247i)), u_input.a.x);
    let var_4 = ~vec2<u32>(var_3.d, ~reverseBits(0u));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(func_1(false, vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], 1086f, 238f)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -46689i), vec2<i32>(25700i, -1i), vec2<i32>(10713i, 26494i))), -select(23039i, -38542i, false)) << (~4513u % 32u));
    let var_1 = firstTrailingBit(-1i);
    var_0 = func_2();
    var var_2 = u_input.a.zy;
    let var_3 = max(u_input.a, select(~select(vec3<u32>(1u, 86677u, 6942u), vec3<u32>(var_2.x, u_input.a.x, var_2.x), true), vec3<u32>(abs(_wgslsmith_div_u32(1u, u_input.a.x)), 1u, ~u_input.a.x), !all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)))));
    var var_4 = Struct_2(Struct_1(var_1 > reverseBits(var_1), !(all(vec4<bool>(false, false, true, true)) || true), (vec4<i32>(-1i) * -vec4<i32>(-15948i, var_1, var_1, var_1)) | vec4<i32>(~var_1, var_1, 4170i, ~var_1), select(_wgslsmith_mult_u32(38688u, 57119u), ~u_input.a.x, any(vec2<bool>(true, false))) & 4294967295u, max(min(select(vec3<i32>(-50440i, var_1, var_1), vec3<i32>(-1i, var_1, -2147483647i), vec3<bool>(false, true, true)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, var_1, var_1), vec3<i32>(var_1, var_1, -38375i))), _wgslsmith_mod_vec3_i32(vec3<i32>(-22030i, var_1, var_1), vec3<i32>(var_1, 44590i, -1i)) >> (vec3<u32>(1u, var_3.x, 10751u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(var_3.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -447f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(121f, 1749f, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(34071u, 23u)])), true)))), _wgslsmith_clamp_i32(select(2147483647i, var_1, any(vec3<bool>(true, false, var_4.a.a)) && true), var_1, 2476i), ~_wgslsmith_add_u32(~(~var_4.a.d), var_2.x));
}

