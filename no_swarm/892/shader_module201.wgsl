struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
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

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(35184i, -1798f, 1797f, vec4<f32>(119f, -248f, -734f, 1561f), true), Struct_1(-1i, -1853f, 449f, vec4<f32>(418f, -962f, 158f, -790f), true), Struct_1(1i, 797f, 227f, vec4<f32>(-613f, -158f, -819f, -462f), false), Struct_1(-52038i, -528f, 391f, vec4<f32>(-1463f, -165f, -1080f, 1253f), true), Struct_1(2147483647i, 905f, -773f, vec4<f32>(-867f, 729f, -1238f, 891f), true), Struct_1(i32(-2147483648), -1308f, 1222f, vec4<f32>(-1211f, -797f, -632f, -2208f), false), Struct_1(11706i, 1111f, -132f, vec4<f32>(716f, 539f, 385f, -217f), false), Struct_1(2147483647i, -1789f, 384f, vec4<f32>(175f, 2267f, 1140f, 1000f), true), Struct_1(-10816i, 246f, 1059f, vec4<f32>(1255f, -1037f, 452f, 783f), true), Struct_1(17057i, -1360f, 822f, vec4<f32>(1000f, -392f, -2219f, 604f), false), Struct_1(-19930i, -726f, 119f, vec4<f32>(-1000f, -187f, 1068f, -1145f), false), Struct_1(2147483647i, -397f, 950f, vec4<f32>(-1132f, 651f, 336f, 627f), false), Struct_1(-70119i, -1437f, -132f, vec4<f32>(-220f, -610f, 505f, -853f), true), Struct_1(i32(-2147483648), -153f, -1891f, vec4<f32>(102f, 550f, 681f, 416f), true), Struct_1(-5943i, -709f, -1425f, vec4<f32>(-1775f, -327f, 267f, 784f), true), Struct_1(33240i, 1000f, 104f, vec4<f32>(110f, 344f, 347f, 1198f), false), Struct_1(1i, 758f, 759f, vec4<f32>(811f, 1577f, -1305f, 1981f), true), Struct_1(-29926i, -1000f, -753f, vec4<f32>(907f, 1893f, 1731f, 769f), true), Struct_1(-28259i, 285f, -1408f, vec4<f32>(1397f, -347f, -1000f, 1951f), false), Struct_1(2147483647i, -1192f, 323f, vec4<f32>(-1275f, -974f, -1586f, -710f), true));

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-16591i, i32(-2147483648)), vec2<i32>(23703i, 32677i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-66778i, 2147483647i), vec2<i32>(2147483647i, 52368i), vec2<i32>(-1i, 23732i), vec2<i32>(1i, 11645i), vec2<i32>(-17251i, 2147483647i), vec2<i32>(7151i, -1i), vec2<i32>(-1661i, i32(-2147483648)), vec2<i32>(-12444i, 2147483647i), vec2<i32>(2147483647i, -10176i), vec2<i32>(557i, -65696i), vec2<i32>(1i, -39753i), vec2<i32>(1i, -15750i), vec2<i32>(74283i, i32(-2147483648)));

var<private> global2: array<u32, 17>;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 13441u, 58043u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<f32>) -> bool {
    var var_0 = select(true & (-38441i <= abs(arg_1.a.x)), true == arg_1.b.e, true);
    let var_1 = arg_1;
    return all(!(!(!vec3<bool>(arg_1.b.e, true, false))));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.c, arg_1, -931f) - vec4<f32>(-506f, arg_0.c, 398f, 1585f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, 217f, -1000f, arg_0.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1369f, arg_1, arg_0.c, 889f) + vec4<f32>(arg_1, 355f, 123f, arg_1))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, arg_0.c, arg_1, arg_1)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-117f, arg_0.c, arg_0.c, arg_0.c))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-837f, 1636f, 427f, arg_0.c) * vec4<f32>(arg_0.c, arg_0.c, arg_0.c, -905f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1178f, 103f, -1432f, arg_1), vec4<f32>(arg_0.c, -1000f, -713f, arg_1))) + _wgslsmith_div_vec4_f32(vec4<f32>(-2049f, -2346f, arg_0.c, -458f), vec4<f32>(-2058f, arg_1, arg_0.c, arg_0.c)))))));
    let var_1 = u_input.b.xz;
    let var_2 = Struct_2(-select(_wgslsmith_clamp_vec2_i32(~global1[_wgslsmith_index_u32(4294967295u, 16u)], vec2<i32>(4554i, u_input.e.x), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b, -1i), vec2<i32>(u_input.e.x, -15291i))), u_input.e.zz, arg_0.a.x), any(arg_0.a), var_0.x, max(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i ^ arg_0.b, -arg_0.b, u_input.e.x), vec3<i32>(~arg_0.b, arg_0.b & 0i, ~12457i)), vec3<i32>(-1291i, 1i, -_wgslsmith_clamp_i32(arg_0.b, u_input.e.x, u_input.e.x))));
    global2 = array<u32, 17>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-arg_0.c))))) + _wgslsmith_f_op_f32(-var_0.x));
    return ~34457u;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> vec2<u32> {
    let var_0 = !any(vec2<bool>(func_2(u_input.e, arg_2, arg_2.b.d), arg_2.b.a <= 37501i)) & all(!vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, arg_1.e, arg_1.e)), arg_1.e));
    global3 = ~(vec4<u32>(1u, 0u, 27247u, _wgslsmith_add_u32(u_input.d, u_input.a.x)) << (_wgslsmith_mult_vec4_u32(~u_input.a, vec4<u32>(60077u << (u_input.c.x % 32u), ~20154u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 17u)], 17u)], func_3(Struct_5(vec4<bool>(true, arg_2.b.e, false, arg_2.b.e), 0i, arg_1.b), 101f))) % vec4<u32>(32u)));
    return u_input.a.zz;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>) -> f32 {
    global3 = u_input.a;
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(select(1u, 60607u, true), global2[_wgslsmith_index_u32(4294967295u, 17u)]), 77137u, ~_wgslsmith_sub_u32(4294967295u, 1110u), 1u), u_input.a);
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -185i, _wgslsmith_sub_i32(~0i, arg_0.x) | ~14338i), 49239i, ~u_input.e.x, -u_input.e.x);
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1056f)))) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2643f, -203f))) - 1f) + _wgslsmith_f_op_f32(157f - _wgslsmith_f_op_f32(floor(1788f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(false | (483f > _wgslsmith_f_op_f32(trunc(-163f))));
    var var_1 = Struct_2(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-u_input.e.x, -15599i << (u_input.a.x % 32u)), i32(-1i) * -u_input.e.x, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, 42882i), u_input.e))), 88693i), !var_0, _wgslsmith_f_op_f32(func_4(~(vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.e.x)), ~select(vec2<u32>(global2[_wgslsmith_index_u32(0u, 17u)], u_input.d), func_1(vec3<f32>(583f, 1161f, -664f), Struct_1(0i, -534f, 1155f, vec4<f32>(1251f, -786f, 1000f, 234f), false), Struct_3(u_input.e.zx, Struct_1(-1i, -1000f, 1231f, vec4<f32>(-289f, -846f, 1074f, 659f), var_0), 1233f), 164f), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, var_0))))), u_input.e);
    let var_2 = Struct_2(vec2<i32>(-abs(var_1.a.x), ~u_input.e.x) << (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), !(!((global2[_wgslsmith_index_u32(55626u, 17u)] < 323u) & func_2(vec3<i32>(var_1.d.x, var_1.a.x, -53359i), Struct_3(var_1.d.yx, Struct_1(var_1.d.x, var_1.c, 333f, vec4<f32>(var_1.c, var_1.c, 2355f, 1603f), var_1.b), -1416f), vec4<f32>(var_1.c, 1793f, var_1.c, 1192f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1000f)), -1088f, true)) - _wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_div_f32(var_1.c, var_1.c)))) + var_1.c), abs(vec3<i32>(~(~u_input.e.x), -29841i, -1i)));
    let var_3 = true;
    global1 = array<vec2<i32>, 16>();
    global3 = _wgslsmith_mult_vec4_u32(u_input.a, abs(vec4<u32>(_wgslsmith_mod_u32(4294967295u >> (u_input.a.x % 32u), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 17u)]), global3.x, global3.x | 32160u, 0u)));
    global0 = array<Struct_1, 20>();
    var var_4 = vec3<bool>(select(false, false, true), select(var_2.b, var_0, any(select(vec3<bool>(var_2.b, true, true), !vec3<bool>(true, var_3, var_3), !vec3<bool>(var_0, false, var_1.b)))), all(select(vec2<bool>(any(vec3<bool>(var_2.b, false, false)), false || var_1.b), vec2<bool>(true, select(var_3, var_2.b, true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(36902u);
}

