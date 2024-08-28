struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<i32>, 28>;

var<private> global2: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.a.a.x)) * 1000f));
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = Struct_4(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0.a.e, u_input.b), u_input.b, arg_0.a.e), arg_0.a, select(var_1, var_1, all(vec4<bool>(true, all(vec4<bool>(false, arg_0.b.x, false, false)), 4028u > u_input.a.x, select(arg_0.b.x, var_1.x, true)))));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(arg_0.a.d, arg_0.a.d, var_1), countOneBits(_wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.a.x, 48383u, 35717u), reverseBits(vec3<u32>(arg_0.a.a.c, 41810u, 25376u))), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, 15635u, u_input.a.x)), var_2.b.d, ~vec3<u32>(u_input.a.x, var_2.b.a.c, var_2.b.d.x))))), 28u)];
    var var_4 = var_2;
    return i32(-1i) * -511i;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    var var_0 = Struct_4(func_3(Struct_3(Struct_2(arg_1.b.a, arg_1.a, vec4<i32>(arg_1.a, 25090i, arg_0, u_input.b), arg_1.b.d, u_input.b), vec2<bool>(true, true))) << (~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_2.b.a.c, arg_2.b.d.x), vec3<u32>(arg_2.b.d.x, 0u, arg_2.b.d.x)), arg_2.b.a.c) % 32u), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.b.a.a.x, -1141f, 900f, -1583f))), arg_2.b.c.zyz, 114580u), firstTrailingBit(max(1686i, arg_0)), arg_1.b.c, arg_2.b.d, -43220i), vec3<bool>(false, any(!vec2<bool>(true, arg_2.c.x)), true));
    let var_1 = var_0.b.a.a.x;
    global2 = 40424u ^ _wgslsmith_dot_vec3_u32(var_0.b.d << (vec3<u32>(_wgslsmith_mod_u32(7264u, 2550u), _wgslsmith_mod_u32(arg_2.b.d.x, 0u), 40733u) % vec3<u32>(32u)), vec3<u32>(73924u, firstTrailingBit(21181u) ^ ~29866u, 1u));
    var var_2 = Struct_3(Struct_2(var_0.b.a, ~_wgslsmith_dot_vec3_i32(var_0.b.c.yww, _wgslsmith_add_vec3_i32(arg_2.b.a.b, var_0.b.a.b)), -var_0.b.c, select(~(~arg_2.b.d), arg_1.b.d, var_0.c), arg_2.b.a.b.x), vec2<bool>(true, true));
    var var_3 = var_2.a.a;
    return var_0.b.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_3 {
    global0 = false;
    var var_0 = arg_1;
    var var_1 = ~arg_1.a.b;
    var_1 = ~vec3<i32>(firstLeadingBit(~(arg_1.c.x | -2147483647i)), abs(_wgslsmith_div_i32(reverseBits(-21942i), -var_0.c.x)), arg_1.e);
    let var_2 = min((u_input.a ^ u_input.a) << (vec4<u32>(arg_0.b.a.c, ~(~4294967295u), 4294967295u, var_0.d.x) % vec4<u32>(32u)), ~(~(u_input.a & ~u_input.a)));
    return Struct_3(Struct_2(func_2(~2147483647i, Struct_4(var_1.x, Struct_2(arg_0.b.a, arg_0.a, vec4<i32>(u_input.b, -19003i, arg_0.b.a.b.x, 2147483647i), var_2.yyz, -1370i), arg_0.c), arg_0), reverseBits(arg_0.a), arg_1.c & vec4<i32>(var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1i, arg_1.c.x, 20420i), arg_0.b.c), _wgslsmith_add_i32(2147483647i, arg_0.b.e), var_0.b), _wgslsmith_mod_vec3_u32(countOneBits(select(vec3<u32>(var_0.a.c, 17210u, var_0.d.x), arg_1.d, arg_0.c.x)), countOneBits(select(vec3<u32>(var_2.x, arg_0.b.a.c, 1u), var_0.d, false))), -func_3(Struct_3(arg_1, arg_0.c.zz))), select(vec2<bool>(all(select(vec4<bool>(true, arg_2.x, arg_0.c.x, arg_2.x), vec4<bool>(arg_0.c.x, false, arg_0.c.x, true), vec4<bool>(arg_2.x, false, true, arg_0.c.x))), !any(arg_2)), vec2<bool>(all(!arg_2), false), arg_0.c.x));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = func_4(Struct_4(~(~_wgslsmith_mod_i32(u_input.b, -2147483647i)), Struct_2(func_2(-1i | u_input.b, Struct_4(u_input.b, Struct_2(Struct_1(vec4<f32>(1000f, -1427f, arg_0, 745f), vec3<i32>(u_input.b, 13968i, 1i), u_input.a.x), -64966i, vec4<i32>(-6489i, -39405i, 1774i, -56819i), vec3<u32>(4294967295u, 78894u, u_input.a.x), -72892i), vec3<bool>(true, true, true)), Struct_4(u_input.b, Struct_2(Struct_1(vec4<f32>(arg_0, -2005f, arg_0, -664f), vec3<i32>(u_input.b, u_input.b, 41346i), 29665u), u_input.b, vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), u_input.a.xzz, u_input.b), vec3<bool>(true, false, true))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 70867i) | vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 49879i, u_input.b)), ~vec4<i32>(-14520i, 1i, u_input.b, u_input.b), vec3<u32>(4294967295u, ~17861u, _wgslsmith_dot_vec3_u32(u_input.a.yxz, u_input.a.ywy)), -(u_input.b ^ u_input.b)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(101f, -485f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1791f + 680f)), vec3<i32>(-603i, -11285i, 47098i) >> (~u_input.a.zyz % vec3<u32>(32u)), u_input.a.x), u_input.b, firstTrailingBit(~vec4<i32>(u_input.b, 2147483647i, -1i, u_input.b)) | select(~vec4<i32>(-2419i, u_input.b, -2147483647i, -1i), -vec4<i32>(0i, 2147483647i, u_input.b, 73929i), vec4<bool>(true, true, true, true)), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, u_input.a.x, 38959u)), u_input.a.zyx), u_input.a.x), 25676i), vec3<bool>(false, false, true));
    global0 = ~_wgslsmith_mod_i32(1i, var_0.a.c.x) <= _wgslsmith_dot_vec3_i32(reverseBits(var_0.a.a.b), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -4243i, -2147483647i), var_0.a.c.xzz));
    var var_1 = func_4(Struct_4(_wgslsmith_add_i32((var_0.a.b ^ -33767i) >> (var_0.a.d.x % 32u), firstLeadingBit(u_input.b)), var_0.a, select(vec3<bool>(var_0.b.x, false, all(var_0.b)), select(!vec3<bool>(var_0.b.x, var_0.b.x, false), !vec3<bool>(false, var_0.b.x, true), var_0.b.x), !any(vec3<bool>(false, true, true)))), var_0.a, !vec3<bool>(!all(vec4<bool>(true, false, var_0.b.x, var_0.b.x)), !var_0.b.x | any(vec3<bool>(true, true, var_0.b.x)), true)).a;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.a.a) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.a.a.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1021f * var_0.a.a.a.x)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1707f - var_0.a.a.a.x) + _wgslsmith_f_op_f32(var_0.a.a.a.x * -402f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(986f, -1000f, 1261f, var_1.a.a.x)), _wgslsmith_f_op_vec4_f32(round(var_1.a.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.a.a, vec4<f32>(var_1.a.a.x, 901f, var_1.a.a.x, arg_0)))), select(!vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), vec4<bool>(true, false || var_0.b.x, true, all(var_0.b)), !var_0.b.x))));
    var var_3 = Struct_3(var_0.a, var_0.b);
    return _wgslsmith_mult_u32(var_1.a.c, _wgslsmith_mod_u32(0u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 58542u & u_input.a.x;
    global1 = array<vec2<i32>, 28>();
    let var_0 = !((38123u | ~u_input.a.x) <= _wgslsmith_div_u32(u_input.a.x, u_input.a.x));
    global2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1664f - 221f) * -1000f)));
    let var_1 = min(~(~vec4<i32>(1i, abs(39370i), 0i << (u_input.a.x % 32u), reverseBits(1i))), -abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 21326i, u_input.b, u_input.b), vec4<i32>(2147483647i, 26755i, u_input.b, 18954i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1036f, -132f, 1000f, -255f), vec4<f32>(540f, 1655f, 1075f, -450f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1279f, 221f, 2203f, 411f)))), vec4<f32>(_wgslsmith_div_f32(-537f, 1457f), _wgslsmith_f_op_f32(604f + -459f), _wgslsmith_div_f32(406f, -366f), _wgslsmith_f_op_f32(floor(1467f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(941f - 1000f), _wgslsmith_f_op_f32(abs(-2038f)), -1000f, -585f))), vec2<f32>(1468f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-355f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1000f, 196f)), _wgslsmith_f_op_f32(trunc(-775f)), true)))));
}

