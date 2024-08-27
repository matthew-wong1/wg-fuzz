struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2>;

var<private> global1: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: f32) -> vec4<i32> {
    global1 = 17141i;
    let var_0 = Struct_1(vec2<i32>(arg_0, _wgslsmith_mult_i32(arg_0, firstTrailingBit(2147483647i))), select(vec3<bool>(!arg_2, -542f != _wgslsmith_f_op_f32(min(706f, arg_3)), arg_0 == _wgslsmith_add_i32(-34392i, arg_0)), !select(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(~u_input.a.x, 2u)], false), arg_2), vec2<i32>(_wgslsmith_div_i32(countOneBits(arg_0), 2147483647i) ^ arg_0, _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0 | 7109i, arg_0 ^ -26470i), -8839i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-534f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_3 - -591f)), _wgslsmith_f_op_f32(max(-2284f, 322f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3 * -138f)))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3, _wgslsmith_f_op_f32(ceil(arg_3)), _wgslsmith_f_op_f32(sign(-689f)), _wgslsmith_f_op_f32(min(-425f, arg_3)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(arg_3, arg_3), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_div_f32(arg_3, -514f)), vec3<f32>(_wgslsmith_f_op_f32(arg_3 * -200f), _wgslsmith_f_op_f32(round(-139f)), _wgslsmith_f_op_f32(min(-727f, 1000f))), vec3<bool>(!arg_2, true, true))))));
    global0 = array<vec3<bool>, 2>();
    let var_1 = arg_1;
    global0 = array<vec3<bool>, 2>();
    return -vec4<i32>(var_0.a.x, _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 17974i, var_0.c.x), vec3<i32>(51917i, var_0.a.x, var_0.a.x)), -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_0.a.x, 0i), vec3<i32>(-1i, var_0.a.x, arg_0))), arg_0, (-23242i << (~arg_1 % 32u)) >> (4294967295u % 32u));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1472f, 165f, 482f), vec3<f32>(-316f, -1590f, 1103f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2435f + -1912f)), _wgslsmith_f_op_f32(f32(-1f) * -3050f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(708f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1692f, -1400f, 1403f), vec3<f32>(-1155f, 1000f, -1280f)) * vec3<f32>(-721f, 221f, -1460f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(552f, -1617f, -1091f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(593f, 255f, -167f) - vec3<f32>(-548f, 112f, -1550f))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-853f, 1183f, -288f) * vec3<f32>(273f, -1415f, 129f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1336f, 933f, 715f) + vec3<f32>(509f, 745f, 1531f)), vec3<bool>(true, true, true)))))), false));
    global1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(76539i, _wgslsmith_dot_vec4_i32(-func_3(12250i, 0u, true, 675f), _wgslsmith_mod_vec4_i32(-vec4<i32>(-58466i, -24191i, 2147483647i, -676i), vec4<i32>(-30512i, 1i, 1i, 2147483647i)))), ~28092i);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1432f)) + var_0.x), 197f);
    var var_2 = Struct_1(vec2<i32>(0i, 13820i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x | u_input.a.x, u_input.a.x), 2u)], -func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(26825i, 32578i, -15330i, -68636i), vec4<i32>(1i, 1i, 1i, 1i)), ~(75084u ^ arg_0.x), -104f <= _wgslsmith_f_op_f32(var_1.x * -678f), 1275f).zy, vec4<f32>(var_0.x, 195f, -1517f, var_1.x), var_0);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(sign(1190f))), _wgslsmith_f_op_f32(var_2.d.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x)))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_2.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 996f), var_2.e.x))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f) + var_1.x)))));
    return !(!(!(all(vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x)) | true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = select(vec2<bool>(func_2(~vec2<u32>(103414u, u_input.b)), all(vec4<bool>(true, arg_2.b.x, arg_2.b.x, false))), vec2<bool>(arg_3.b.x | all(global0[_wgslsmith_index_u32(~56076u, 2u)]), (min(arg_2.c.x, -3570i) > _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(-41751i, arg_0.c.x, arg_0.c.x, -20237i))) || (arg_0.e.x == arg_3.e.x)), select(vec2<bool>(true, false), select(!select(vec2<bool>(false, arg_3.b.x), arg_2.b.yx, arg_0.b.zy), arg_3.b.zz, select(arg_3.b.zy, !vec2<bool>(arg_3.b.x, true), !arg_3.b.yz)), false));
    var var_1 = 2147483647i;
    global1 = -select(arg_1.x, -1i, (arg_3.b.x && arg_2.b.x) || true) ^ 0i;
    var var_2 = ~arg_0.c.x;
    var var_3 = vec4<i32>(9423i, i32(-1i) * -19993i, _wgslsmith_mod_i32(arg_1.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_3.c.x, -1i), ~_wgslsmith_add_vec2_i32(arg_2.a, vec2<i32>(arg_2.a.x, 0i)))), 2147483647i);
    return arg_2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 2>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_1(Struct_1(vec2<i32>(0i, 0i), global0[_wgslsmith_index_u32(51109u, 2u)], vec2<i32>(2147483647i, 221i), vec4<f32>(1267f, -1143f, 1409f, 205f), vec3<f32>(-546f, -176f, -1190f)), abs(vec4<i32>(51722i, 8221i, 0i, -17222i)), Struct_1(vec2<i32>(75207i, 30790i), global0[_wgslsmith_index_u32(u_input.a.x, 2u)], vec2<i32>(-38395i, -18563i), vec4<f32>(501f, 1556f, 658f, -133f), vec3<f32>(-1854f, -143f, -1640f)), Struct_1(vec2<i32>(2147483647i, 51307i), vec3<bool>(true, false, false), vec2<i32>(-1i, 34754i), vec4<f32>(188f, -402f, -503f, 1000f), vec3<f32>(1000f, -1799f, -813f))))), -126f, any(global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 64665u, 45944u), u_input.a.zxx), _wgslsmith_mod_u32(30454u, 88202u)), 2u)])))));
    var var_1 = !(!(-1406f >= var_0));
    var var_2 = Struct_1(~(~_wgslsmith_add_vec2_i32(min(vec2<i32>(4500i, 4582i), vec2<i32>(36918i, 2147483647i)), ~vec2<i32>(0i, 1i))), global0[_wgslsmith_index_u32(u_input.a.x, 2u)], func_3(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -32637i), abs(vec2<i32>(0i, 32529i))), abs(1u), u_input.a.x > _wgslsmith_mod_u32(3903u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(530f * 806f))).wx | (vec2<i32>(~(-2147483647i), -2147483647i << (u_input.a.x % 32u)) << (~(~vec2<u32>(u_input.b, 20214u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1672f, var_0, 862f, 1031f), vec4<f32>(-382f, -491f, -847f, 2544f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 396f, -492f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(abs(-267f))))));
    var_1 = var_2.b.x;
    var var_3 = ~vec3<i32>(_wgslsmith_add_i32(-2147483647i, var_2.a.x), -var_2.c.x, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(2147483647i, var_2.a.x, -1i, -2147483647i)), reverseBits(vec4<i32>(var_2.c.x, -32870i, var_2.c.x, -1i) & vec4<i32>(2147483647i, 21805i, var_2.c.x, -2147483647i))));
    var_2 = Struct_1(-countOneBits(vec2<i32>(var_2.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 1i, 0i), vec4<i32>(-1i, -1i, 13772i, var_2.a.x)))), select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(max(u_input.b, 12723u), u_input.a.x), firstLeadingBit(0u) << (u_input.a.x % 32u)), 2u)], !vec3<bool>(var_2.b.x, var_2.b.x, 39824i <= var_3.x), -42642i < firstLeadingBit(_wgslsmith_mod_i32(var_3.x, var_2.c.x))), vec2<i32>(var_2.a.x, 1i), _wgslsmith_f_op_vec4_f32(var_2.d * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(847f, -451f, var_2.e.x, -373f))), _wgslsmith_f_op_vec4_f32(-var_2.d))), var_2.e);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.d.x, _wgslsmith_f_op_f32(-var_2.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-729f)) * var_2.d.x)) * var_2.e.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1611f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1415f, var_2.e.x)))))));
    let var_5 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.x), -809f))));
    let x = u_input.a;
    s_output = StorageBuffer(~96765u ^ ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, 78811u, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, 63154u)), ~u_input.a), 25384u, var_5);
}

