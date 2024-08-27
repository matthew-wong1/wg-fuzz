struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(1229f, -660f, -1249f), vec3<f32>(-1087f, 345f, -207f), vec3<f32>(-334f, -1096f, 1045f), vec3<f32>(-399f, -1070f, -667f), vec3<f32>(-574f, 1000f, 1274f), vec3<f32>(1075f, 461f, 1000f), vec3<f32>(1500f, -165f, -2549f), vec3<f32>(162f, -268f, -811f), vec3<f32>(1166f, 1000f, 578f));

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1374f, vec4<u32>(20921u, 1u, 43375u, 7055u), vec4<bool>(false, false, true, true), -651f), Struct_1(453f, vec4<u32>(4294967295u, 0u, 79886u, 4294967295u), vec4<bool>(false, true, false, false), -474f), Struct_1(1144f, vec4<u32>(0u, 33808u, 4294967295u, 112493u), vec4<bool>(true, false, true, true), -1441f), Struct_1(-720f, vec4<u32>(102058u, 20471u, 1u, 86837u), vec4<bool>(true, false, true, false), 487f), Struct_1(-292f, vec4<u32>(25922u, 8494u, 46803u, 37026u), vec4<bool>(false, true, true, true), -792f), Struct_1(-879f, vec4<u32>(117075u, 49249u, 21392u, 22931u), vec4<bool>(true, false, true, false), 823f), Struct_1(-839f, vec4<u32>(0u, 1u, 4294967295u, 13552u), vec4<bool>(false, true, true, false), -1000f), Struct_1(-311f, vec4<u32>(1u, 1u, 1u, 0u), vec4<bool>(true, false, true, true), -1376f), Struct_1(511f, vec4<u32>(54186u, 4294967295u, 29194u, 65356u), vec4<bool>(true, true, false, true), -664f), Struct_1(923f, vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<bool>(false, true, false, false), 1000f), Struct_1(-1745f, vec4<u32>(24970u, 0u, 3546u, 1u), vec4<bool>(false, false, false, true), 1034f), Struct_1(1000f, vec4<u32>(29676u, 37281u, 45038u, 4649u), vec4<bool>(false, true, true, false), -848f), Struct_1(-575f, vec4<u32>(1u, 1u, 58171u, 4294967295u), vec4<bool>(true, false, true, true), -676f), Struct_1(-675f, vec4<u32>(4294967295u, 4294967295u, 40272u, 1u), vec4<bool>(true, true, false, true), -443f), Struct_1(1451f, vec4<u32>(12517u, 17023u, 1u, 0u), vec4<bool>(false, false, false, true), 517f), Struct_1(473f, vec4<u32>(4294967295u, 0u, 49057u, 14552u), vec4<bool>(false, false, true, false), 2260f), Struct_1(-1680f, vec4<u32>(19522u, 4294967295u, 0u, 4294967295u), vec4<bool>(true, true, true, true), -491f), Struct_1(-1786f, vec4<u32>(27294u, 1u, 54667u, 4294967295u), vec4<bool>(true, true, false, true), -1000f), Struct_1(1656f, vec4<u32>(57388u, 28509u, 4294967295u, 1u), vec4<bool>(true, true, false, true), 1232f), Struct_1(873f, vec4<u32>(35262u, 1u, 0u, 47987u), vec4<bool>(false, true, true, false), 1146f), Struct_1(417f, vec4<u32>(57464u, 58164u, 4294967295u, 1u), vec4<bool>(true, false, false, true), -276f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global0 = arg_2.b.b.x << (1u % 32u);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-arg_2.a.x, -57797i, -2147483647i, -countOneBits(38422i ^ arg_2.a.x)), arg_2.a | (arg_2.a >> (select(vec4<u32>(u_input.a, arg_2.b.b.x, 4294967295u, arg_1.b.x), arg_2.b.b, all(arg_1.c)) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    let var_0 = ~vec4<i32>(reverseBits(-31605i), func_3(arg_1.b, Struct_1(_wgslsmith_f_op_f32(sign(arg_1.c)), ~arg_1.b.b, !arg_1.b.c, arg_1.b.d), Struct_2(arg_1.a, Struct_1(207f, arg_1.b.b, arg_1.b.c, arg_1.c), _wgslsmith_f_op_f32(f32(-1f) * -1467f))), ~reverseBits(_wgslsmith_sub_i32(37533i, arg_1.a.x)), ~arg_1.a.x);
    let var_1 = arg_1;
    var var_2 = arg_1.b.b;
    global2 = array<Struct_1, 21>();
    var var_3 = global2[_wgslsmith_index_u32(1u, 21u)];
    return 88754u;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = u_input.a;
    global2 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(1251f)), -1733f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1291f * 435f)))), -410f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(828f * _wgslsmith_f_op_f32(-473f - 809f)) - 1587f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -246f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2051f, -1000f))), -242f, true)), _wgslsmith_f_op_f32(f32(-1f) * -872f)), false));
    global2 = array<Struct_1, 21>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(534f)), vec4<u32>(~u_input.a, 9325u, 39103u, _wgslsmith_mod_u32(~0u, 1u)) ^ abs(~vec4<u32>(0u, 0u, 0u, 4294967295u) & reverseBits(vec4<u32>(4294967295u, u_input.a, 25720u, 71838u))), select(vec4<bool>(select(true, any(vec4<bool>(true, false, true, true)), -1000f > var_0.x), true, true, !any(vec2<bool>(true, true))), vec4<bool>(all(vec3<bool>(true, true, true)), true, true, any(vec3<bool>(true, true, true))), true), var_0.x);
    return Struct_1(_wgslsmith_f_op_f32(max(416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f)))), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x | 23409u, func_2(vec2<u32>(u_input.a, 1u), Struct_2(vec4<i32>(-22817i, arg_0.x, -6840i, 1i), Struct_1(var_0.x, var_1.b, vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), var_1.a), var_1.d), var_1.c.xz), ~u_input.a) << (var_1.b % vec4<u32>(32u)), vec4<u32>(u_input.a, var_1.b.x, 0u, ~91011u)), var_1.c, -2423f);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> vec4<bool> {
    global2 = array<Struct_1, 21>();
    let var_0 = any(!func_1(vec3<i32>(arg_0.a.x, 7096i, arg_0.a.x) << (arg_0.b.b.xwy % vec3<u32>(32u))).c.xzx) | true;
    var var_1 = (arg_0.a.ww & _wgslsmith_div_vec2_i32(arg_0.a.xy, arg_0.a.wy)) >> (~vec2<u32>(_wgslsmith_mod_u32(55356u << (0u % 32u), 4294967295u), _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(u_input.a, 1u))) % vec2<u32>(32u));
    var var_2 = true;
    let var_3 = vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~6540u), arg_0.b.b.xy) == 39259u, false);
    return func_1(arg_0.a.xzy).c;
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = ~(~abs(_wgslsmith_div_u32(1u, ~arg_0.b.x)));
    var var_1 = global2[_wgslsmith_index_u32(9963u, 21u)];
    var var_2 = -1590f;
    var var_3 = Struct_1(func_1(~(~vec3<i32>(1i, 1i, 1i))).d, var_1.b, vec4<bool>(all(var_1.c), true, var_1.c.x, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-arg_0.d)));
    var_3 = global2[_wgslsmith_index_u32(arg_0.b.x, 21u)];
    return ~select(-69153i, firstTrailingBit(3881i), var_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 21>();
    var var_0 = 1i;
    global2 = array<Struct_1, 21>();
    var_0 = -2147483647i;
    let var_1 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(730f + 265f))), ~_wgslsmith_div_vec4_u32(vec4<u32>(22537u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 12076u, u_input.a, 667u)) | vec4<u32>(~u_input.a, 1u, u_input.a, _wgslsmith_mult_u32(0u, u_input.a)), func_4(Struct_2(vec4<i32>(-2147483647i, -6633i, 0i, 33236i), func_1(vec3<i32>(16631i, -2147483647i, 0i)), _wgslsmith_f_op_f32(min(1149f, -1502f))), max(4294967295u, u_input.a), _wgslsmith_mod_i32(i32(-1i) * -32848i, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1107f - _wgslsmith_f_op_f32(trunc(569f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1547f, 166f)))));
    var var_2 = Struct_2(min(_wgslsmith_add_vec4_i32(-firstLeadingBit(vec4<i32>(var_1, var_1, -53759i, 0i)), vec4<i32>(~var_1, ~(-3519i), var_1, ~(-4556i))), abs(vec4<i32>(1i, var_1 | var_1, var_1, 28201i))), func_1(~_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-2147483647i, 70367i, 0i)), reverseBits(vec3<i32>(var_1, -1i, -2147483647i)))), -492f);
    var_0 = -53382i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b.wy, 2147483647i, countOneBits(_wgslsmith_clamp_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 0i), var_2.a.zx, var_2.a.yw)), vec2<i32>(~(-25918i), -2147483647i), -vec2<i32>(var_2.a.x, var_1) << (abs(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))), var_2.a.ww, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(262f)), -950f, _wgslsmith_f_op_f32(646f * 463f), _wgslsmith_f_op_f32(var_2.b.a * var_2.c)))));
}

