struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 50105u;

var<private> global1: Struct_1 = Struct_1(81485u, vec2<f32>(772f, 1000f), vec3<f32>(-1000f, 1000f, 810f), vec4<f32>(-427f, -578f, -112f, 212f), 2147483647i);

var<private> global2: array<i32, 12>;

var<private> global3: Struct_1 = Struct_1(42609u, vec2<f32>(1435f, -152f), vec3<f32>(1000f, -1120f, -1773f), vec4<f32>(1000f, -2023f, 919f, 1448f), -938i);

var<private> global4: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-480f, 177f, -1679f, 1000f), vec4<f32>(-1738f, 311f, 1303f, -321f), vec4<f32>(1998f, 1279f, 631f, -1931f), vec4<f32>(-1325f, -246f, 301f, -1304f), vec4<f32>(174f, 551f, -670f, -1211f), vec4<f32>(-354f, 506f, 794f, -858f), vec4<f32>(903f, -466f, 892f, 759f), vec4<f32>(-635f, 1338f, -563f, -216f), vec4<f32>(1481f, -498f, -1284f, -211f), vec4<f32>(-1372f, 1054f, 1113f, -1471f), vec4<f32>(763f, -143f, -935f, -1882f), vec4<f32>(127f, 1000f, -1000f, -821f), vec4<f32>(-1021f, -167f, 538f, -805f), vec4<f32>(711f, 1000f, 321f, 1000f), vec4<f32>(669f, -762f, 597f, 627f), vec4<f32>(-1905f, -614f, 530f, -1000f), vec4<f32>(-1769f, 270f, -1020f, -438f), vec4<f32>(-899f, -326f, 196f, 674f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c.d.x)) * arg_1.c.b.x))))));
    global4 = array<vec4<f32>, 18>();
    global0 = 3993u;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(561f * _wgslsmith_f_op_f32(global1.d.x * -278f)) - _wgslsmith_f_op_f32(-1322f + -146f))), vec3<bool>(true, true, arg_1.d | true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2061f * _wgslsmith_f_op_f32(-384f + global3.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1179f - arg_1.c.b.x) + -543f)))));
    let var_2 = Struct_2(global3.a ^ _wgslsmith_add_u32(23393u, arg_1.c.a));
    return ~(~arg_0.a);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_div_u32(min(~67382u & _wgslsmith_dot_vec2_u32(arg_1.zy, vec2<u32>(4294967295u, global3.a)), _wgslsmith_div_u32(reverseBits(arg_2.a), 0u)), 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b + global1.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, -1073f))) * global1.d.yy), vec3<f32>(global1.d.x, -1361f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global3.d.x))))), vec4<f32>(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1924f + -365f) * _wgslsmith_f_op_f32(floor(global1.c.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1573f), _wgslsmith_f_op_f32(454f - global1.d.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c.x)))), -arg_3.x);
    let var_1 = Struct_3(arg_2, ~vec2<u32>(_wgslsmith_clamp_u32(select(global3.a, var_0.a, true), firstTrailingBit(38017u), 4294967295u), 0u), Struct_1(~4294967295u, vec2<f32>(global1.b.x, 729f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.x, -311f, 305f))), vec4<f32>(-413f, -495f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1012f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-443f)) - global3.d.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.zx, ~arg_3.xy), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(41136i, -1i), arg_3.xx, arg_3.zy), vec2<i32>(0i, global2[_wgslsmith_index_u32(arg_2.a, 12u)]) ^ arg_3.xz))), true);
    global2 = array<i32, 12>();
    let var_2 = -reverseBits(u_input.b.x);
    global3 = var_1.c;
    return Struct_3(Struct_2(_wgslsmith_add_u32(global1.a, 16368u) | 75118u), abs(arg_1.xz), Struct_1(100472u, global3.c.yz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-273f, 1343f, 280f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.x, var_0.c.x, 2187f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1217f, -223f, -421f, global1.c.x) + var_1.c.d)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.c.x, -693f, 1267f, var_1.c.d.x), vec4<f32>(249f, var_0.d.x, global3.b.x, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1602f, 2767f, -558f, 1092f)))), ~12443i), var_1.d);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<i32>) -> vec4<i32> {
    var var_0 = func_3(!all(vec4<bool>(true, true, true, true)) & (_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-222f + -1000f)) <= -1000f), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(func_2(Struct_2(4294967295u), Struct_3(Struct_2(4294967295u), vec2<u32>(global1.a, u_input.a.x), Struct_1(0u, vec2<f32>(global3.b.x, global3.d.x), vec3<f32>(360f, arg_1, arg_1), vec4<f32>(830f, arg_1, global1.d.x, global1.b.x), global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), true), vec3<bool>(false, true, false), vec2<i32>(global3.e, -1i)), ~4294967295u, ~57763u), global1.a), ~50099u << ((~0u & ~global1.a) % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(~global1.a, global3.a), ~(~global1.a))), Struct_2(_wgslsmith_clamp_u32(u_input.a.x, ~global1.a, ~global1.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -reverseBits(u_input.b), arg_2.zyw));
    global4 = array<vec4<f32>, 18>();
    let var_1 = global1.d.x;
    var_0 = Struct_3(Struct_2(min(4294967295u, 7948u)), ~(~(vec2<u32>(4294967295u, global1.a) ^ var_0.b) & vec2<u32>(0u, func_2(Struct_2(2835u), Struct_3(Struct_2(0u), vec2<u32>(global3.a, 1u), var_0.c, true), vec3<bool>(var_0.d, var_0.d, true), vec2<i32>(var_0.c.e, global2[_wgslsmith_index_u32(61125u, 12u)])))), var_0.c, false);
    var var_2 = func_3(~global3.a > _wgslsmith_mod_u32(select(0u, 1u, !var_0.d), var_0.a.a), ~((u_input.a.xxw & _wgslsmith_clamp_vec3_u32(u_input.a.xxw, u_input.a.xwx, vec3<u32>(1u, 73582u, global3.a))) | reverseBits(select(vec3<u32>(global1.a, 21221u, u_input.a.x), u_input.a.yzw, var_0.d))), func_3(false, _wgslsmith_div_vec3_u32(~vec3<u32>(global3.a, global3.a, 3243u), u_input.a.wyx), func_3(false, countOneBits(u_input.a.zwy), func_3(var_0.d, u_input.a.wwy, func_3(var_0.d, vec3<u32>(global3.a, global3.a, var_0.a.a), Struct_2(79788u), vec3<i32>(var_0.c.e, -1i, -26541i)).a, vec3<i32>(-29718i, 2147483647i, global3.e) >> (u_input.a.wxy % vec3<u32>(32u))).a, -(~vec3<i32>(var_0.c.e, 0i, -2147483647i))).a, vec3<i32>(_wgslsmith_div_i32(global3.e, u_input.b.x), firstTrailingBit(abs(-38501i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, arg_2.x), arg_0.zwy))).a, -firstTrailingBit(max(~arg_0.zwz, ~vec3<i32>(1i, arg_2.x, -289i)))).a;
    return abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-14454i, i32(-1i) * -5882i, reverseBits(global3.e), ~var_0.c.e) ^ -arg_2, _wgslsmith_mult_vec4_i32(vec4<i32>(-6489i, u_input.b.x, arg_0.x, u_input.b.x) & arg_2, _wgslsmith_mult_vec4_i32(arg_2, arg_2) << (vec4<u32>(global1.a, 1u, global3.a, 4294967295u) % vec4<u32>(32u))), min(vec4<i32>(1569i, global3.e, -1i, 1i) | _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, -2147483647i, 29936i, arg_2.x), arg_2), -_wgslsmith_clamp_vec4_i32(arg_0, vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], -14199i, 2147483647i, global1.e), vec4<i32>(-2147483647i, u_input.b.x, -10160i, 5038i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(67729u, _wgslsmith_dot_vec4_u32(abs(u_input.a) << (~u_input.a % vec4<u32>(32u)), vec4<u32>(41007u, ~18487u, u_input.a.x, u_input.a.x)) & 4294967295u, 1u);
    var var_1 = func_1(vec4<i32>(~global1.e, ~firstLeadingBit(global2[_wgslsmith_index_u32(64230u, 12u)]), -(~(global2[_wgslsmith_index_u32(u_input.a.x, 12u)] >> (global1.a % 32u))), global1.e), global3.d.x, -_wgslsmith_add_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], -18260i, 2147483647i, -13432i), vec4<i32>(global3.e, global3.e, 1i, u_input.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(11157i, 32142i, u_input.b.x, u_input.b.x), vec4<i32>(-2147483647i, global3.e, global3.e, -2446i)) << (~vec4<u32>(global3.a, var_0.x, u_input.a.x, 1u) % vec4<u32>(32u))));
    let var_2 = -_wgslsmith_div_vec3_i32(~u_input.b, vec3<i32>(-countOneBits(-32900i), ~(~u_input.b.x), countOneBits(-1i & u_input.b.x)));
    var var_3 = !(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))));
    global0 = abs(~func_3(func_3(false, u_input.a.yxx, Struct_2(1u), var_1.yxz).d & true, _wgslsmith_add_vec3_u32(~u_input.a.zzx, vec3<u32>(global3.a, 60137u, 8773u) ^ u_input.a.xwz), func_3(true, vec3<u32>(var_0.x, 1u, 0u) & u_input.a.yzx, func_3(var_3.x, vec3<u32>(0u, global1.a, 18513u), Struct_2(global1.a), var_1.xzy).a, vec3<i32>(0i, global2[_wgslsmith_index_u32(global3.a, 12u)], global2[_wgslsmith_index_u32(11156u, 12u)]) ^ var_1.yxy).a, vec3<i32>(~43943i, _wgslsmith_clamp_i32(-14920i, 0i, 1i), select(-1i, var_2.x, false))).b.x);
    var var_4 = ~(74068u | u_input.a.x);
    var var_5 = _wgslsmith_f_op_vec4_f32(max(global4[_wgslsmith_index_u32(u_input.a.x, 18u)], global3.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

