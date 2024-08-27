struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(12073i, 1u, 1u, vec2<f32>(108f, -294f), true), Struct_1(i32(-2147483648), 4294967295u, 1u, vec2<f32>(-552f, -1016f), true), Struct_1(-22127i, 14637u, 50786u, vec2<f32>(585f, 953f), true), true), Struct_2(Struct_1(7413i, 0u, 4294967295u, vec2<f32>(-1295f, -1126f), false), Struct_1(i32(-2147483648), 1u, 4294967295u, vec2<f32>(-1252f, -2967f), true), Struct_1(-26200i, 1103u, 47382u, vec2<f32>(820f, -262f), false), true), Struct_2(Struct_1(23091i, 18426u, 4294967295u, vec2<f32>(969f, -439f), true), Struct_1(1i, 79555u, 32420u, vec2<f32>(-1074f, -1000f), true), Struct_1(1i, 73052u, 74359u, vec2<f32>(-735f, -1128f), true), true), Struct_2(Struct_1(-57759i, 13876u, 62055u, vec2<f32>(-1797f, 2080f), true), Struct_1(0i, 1u, 1u, vec2<f32>(-1120f, 448f), true), Struct_1(1i, 4294967295u, 10294u, vec2<f32>(1207f, 337f), false), false), Struct_2(Struct_1(-3159i, 0u, 0u, vec2<f32>(147f, 259f), false), Struct_1(-2075i, 42971u, 67128u, vec2<f32>(-399f, -516f), true), Struct_1(18303i, 83210u, 7484u, vec2<f32>(293f, -1264f), false), true), Struct_2(Struct_1(i32(-2147483648), 1u, 32426u, vec2<f32>(-1000f, 2257f), true), Struct_1(-1i, 1u, 17420u, vec2<f32>(-1654f, 339f), false), Struct_1(-92418i, 45943u, 4294967295u, vec2<f32>(-800f, -1787f), false), false), Struct_2(Struct_1(-17630i, 1u, 4294967295u, vec2<f32>(488f, -1439f), false), Struct_1(1i, 0u, 0u, vec2<f32>(1094f, 281f), true), Struct_1(i32(-2147483648), 4294967295u, 0u, vec2<f32>(-277f, -923f), false), false), Struct_2(Struct_1(46065i, 0u, 4294967295u, vec2<f32>(-1070f, -1335f), true), Struct_1(98i, 30736u, 27988u, vec2<f32>(-216f, 1215f), false), Struct_1(i32(-2147483648), 5692u, 7062u, vec2<f32>(-1468f, 1103f), false), true), Struct_2(Struct_1(i32(-2147483648), 0u, 37387u, vec2<f32>(155f, 1285f), true), Struct_1(67018i, 42339u, 138617u, vec2<f32>(1041f, 778f), false), Struct_1(1i, 4294967295u, 0u, vec2<f32>(412f, -1950f), false), false), Struct_2(Struct_1(-1i, 54355u, 4294967295u, vec2<f32>(1000f, -1000f), true), Struct_1(-1i, 15615u, 0u, vec2<f32>(1000f, -1393f), false), Struct_1(-34939i, 1u, 18435u, vec2<f32>(-1080f, -246f), true), true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_1.c.d.x, arg_0)) - _wgslsmith_div_vec4_f32(vec4<f32>(243f, -386f, arg_0, arg_0), vec4<f32>(arg_1.a.d.x, 1516f, 536f, arg_1.b.d.x))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(-arg_1.a.d.x), _wgslsmith_f_op_f32(arg_0 - arg_1.b.d.x), arg_1.c.d.x))));
    var var_1 = Struct_1(-firstTrailingBit(u_input.a >> (~arg_1.a.b % 32u)), u_input.c.x, ~(~(arg_1.a.c & u_input.c.x)), var_0.wz, !all(vec2<bool>(false, arg_1.c.e)) & !arg_1.d);
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(657f, var_0.x, var_0.x, -1905f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-793f, 1066f, var_0.x, -1145f) + vec4<f32>(950f, 1407f, arg_1.a.d.x, var_1.d.x))))))));
    var var_2 = vec3<u32>(arg_1.b.b, 41328u, _wgslsmith_mult_u32(~57910u, ~firstLeadingBit(~arg_1.a.b)));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f * 390f) + _wgslsmith_f_op_f32(f32(-1f) * -478f)))), 1048f));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.d.x + arg_0)));
}

fn func_2() -> bool {
    global0 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-348f, global0[_wgslsmith_index_u32(4294967295u, 10u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2048f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(254f + -1131f)), true)), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(871f, _wgslsmith_f_op_f32(step(-1038f, _wgslsmith_f_op_f32(-914f * 537f))), _wgslsmith_f_op_f32(trunc(-764f)), _wgslsmith_f_op_f32(step(-694f, _wgslsmith_f_op_f32(632f - -567f)))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(472f, _wgslsmith_div_f32(-1711f, 613f), 2374f, _wgslsmith_f_op_f32(1764f * -888f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1104f, -1000f, -1000f, -1006f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1860f, -327f, 1684f, -134f), vec4<f32>(-633f, -1000f, 1365f, -977f), vec4<bool>(true, false, true, false))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(716f, -1008f, 1613f, -1835f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -742f, -1499f, -598f)), any(vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-817f, -932f, 1044f, 1467f), vec4<f32>(708f, -824f, 194f, 2011f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(465f, 147f, 945f, -1000f) - _wgslsmith_div_vec4_f32(vec4<f32>(455f, 2191f, -365f, 1545f), vec4<f32>(-802f, -573f, 1983f, 2004f))))));
    var var_2 = u_input.d;
    let var_3 = ~u_input.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x));
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    global0 = array<Struct_2, 10>();
    var var_0 = !func_2();
    let var_1 = !(!select(vec4<bool>(-26744i <= u_input.a, all(vec3<bool>(arg_0.c.e, arg_0.c.e, false)), arg_0.b.e | arg_0.b.e, all(vec3<bool>(arg_0.c.e, true, false))), vec4<bool>(true, arg_0.a.e, true, -68840i <= arg_0.c.a), vec4<bool>(all(vec4<bool>(false, true, arg_0.c.e, false)), true, select(false, true, arg_0.c.e), arg_0.c.e)));
    var var_2 = arg_0.b;
    var_0 = !var_2.e;
    return vec4<f32>(arg_0.a.d.x, var_2.d.x, var_2.d.x, var_2.d.x);
}

fn func_4(arg_0: vec4<f32>) -> vec4<u32> {
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    let var_0 = -vec3<i32>(u_input.a, -1i, u_input.a | -(~u_input.d));
    let var_1 = vec2<u32>(countOneBits(1u), u_input.c.x);
    return select(max(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(43567u, u_input.c.x, 85380u, 43723u), vec4<u32>(49674u, u_input.c.x, var_1.x, 0u)), ~vec4<u32>(50870u, 1u, 42808u, u_input.c.x)), vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c.x), 0u, ~u_input.c.x, var_1.x)), vec4<u32>(_wgslsmith_mod_u32(var_1.x, 12356u), 1u, ~4294967295u, 0u) | firstTrailingBit(abs(vec4<u32>(u_input.c.x, var_1.x, 25386u, 1u)))), ~(~(~vec4<u32>(var_1.x, 0u, var_1.x, 4294967295u))) >> (~select(~vec4<u32>(4294967295u, u_input.c.x, 0u, var_1.x), ~vec4<u32>(var_1.x, u_input.c.x, var_1.x, 0u), false) % vec4<u32>(32u)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), false));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    let var_0 = arg_0.b.d.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.d.x), arg_0.a.d.x, arg_0.c.d.x))));
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    let var_2 = global0[_wgslsmith_index_u32((select(firstTrailingBit(~arg_0.a.c), ~(u_input.c.x << (19456u % 32u)), false) >> (0u % 32u)) | max(~arg_0.b.b << ((u_input.c.x & _wgslsmith_sub_u32(44067u, arg_0.a.c)) % 32u), select(_wgslsmith_mult_u32(select(1u, 1u, false), u_input.c.x & 24845u), 1u, var_0 == _wgslsmith_f_op_f32(trunc(var_0)))), 10u)];
    return Struct_2(Struct_1(~(var_2.c.a | max(var_2.a.a, -1i)), max(firstLeadingBit(4294967295u), 11339u), ~(~firstTrailingBit(arg_0.a.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_2.b.d.x) + vec2<f32>(-207f, var_0))) - _wgslsmith_f_op_vec2_f32(select(var_2.c.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.d.x, -180f)), !vec2<bool>(var_2.b.e, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) + _wgslsmith_f_op_f32(-var_2.b.d.x)) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b.d.x - var_2.c.d.x), 704f))), Struct_1(-1i, ~abs(abs(1u)), _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(1u, u_input.c.x, u_input.c.x, var_2.b.c)), vec4<u32>(u_input.c.x & u_input.c.x, abs(4294967295u), firstLeadingBit(0u), ~59527u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.a.d, vec2<f32>(1794f, var_1.x))))), true), Struct_1(_wgslsmith_add_i32(arg_1, u_input.b), var_2.b.b, ~arg_0.c.b, vec2<f32>(var_0, 324f), 49060u == ~u_input.c.x), !all(vec4<bool>(false, false, false, arg_0.a.e)) || (_wgslsmith_mod_u32(u_input.c.x, max(0u, arg_0.c.b)) > abs(~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    let var_0 = ~abs(u_input.c.x);
    var var_1 = func_5(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(func_4(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(u_input.d, var_0, 25815u, vec2<f32>(-411f, 1000f), false), Struct_1(0i, var_0, var_0, vec2<f32>(1178f, 1000f), false), Struct_1(0i, 1u, var_0, vec2<f32>(1244f, -824f), false), false)))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0, var_0, u_input.c.x, 0u), vec4<u32>(1u, 14838u, 1910u, 1u)) | _wgslsmith_div_vec4_u32(vec4<u32>(30220u, u_input.c.x, u_input.c.x, var_0), vec4<u32>(4294967295u, u_input.c.x, 58727u, 55483u)))), 10u)], 4095i);
    global0 = array<Struct_2, 10>();
    let var_2 = max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, _wgslsmith_clamp_i32(u_input.d, var_1.c.a, u_input.d) ^ 1i, 30722i), (~vec3<i32>(var_1.a.a, var_1.c.a, var_1.a.a) ^ -vec3<i32>(2147483647i, u_input.d, u_input.d)) | select(vec3<i32>(var_1.a.a, -2147483647i, 0i), vec3<i32>(24956i, 1i, -1i), !vec3<bool>(true, false, var_1.b.e))), vec3<i32>(-30437i, -1i, 1i));
    let var_3 = _wgslsmith_mult_vec4_i32(select(min(vec4<i32>(var_1.c.a, var_1.b.a, var_2.x, var_1.b.a) | vec4<i32>(var_1.b.a, -1i, 2147483647i, var_1.c.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-997i, var_2.x, var_2.x, -1i), vec4<i32>(-1i, 1i, u_input.a, u_input.d))), ~vec4<i32>(u_input.d, 2287i, 6727i, 16111i) >> ((vec4<u32>(var_0, 55242u, var_1.b.c, 0u) ^ vec4<u32>(31013u, 0u, 42088u, var_1.c.b)) % vec4<u32>(32u)), !(!var_1.c.e)), -select(abs(vec4<i32>(var_1.b.a, -2147483647i, 28590i, -2147483647i)), vec4<i32>(var_2.x, var_2.x, var_1.a.a, 30368i), any(vec3<bool>(false, false, var_1.c.e)))) & -vec4<i32>(u_input.a, -var_2.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-16157i, var_1.a.a), -2147483647i ^ u_input.a), var_2.x);
    let var_4 = true;
    var var_5 = 32265i;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec3_u32(select(select(vec3<u32>(var_0, var_1.a.b, var_0), vec3<u32>(0u, 97430u, var_0), vec3<bool>(true, true, var_1.a.e)), func_4(vec4<f32>(var_1.c.d.x, var_1.a.d.x, 142f, var_1.a.d.x)).xwx, !vec3<bool>(false, true, var_4)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 29887u, var_0), vec3<u32>(var_0, 1u, 6319u)))), vec3<u32>(_wgslsmith_div_u32(4294967295u, ~40320u), abs(0u), var_0), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1054f)), _wgslsmith_f_op_f32(-var_1.c.d.x), var_1.b.d.x)), var_1.b.a, var_2.x, 1u);
}

