struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1662f;

var<private> global1: array<vec2<f32>, 2>;

var<private> global2: array<Struct_2, 28>;

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<bool>(false, false, true), vec2<u32>(31625u, 13155u), vec2<bool>(false, true), 4294967295u, 1174f), Struct_3(vec3<bool>(true, true, true), vec2<u32>(1u, 84583u), vec2<bool>(false, false), 0u, 1211f), Struct_3(vec3<bool>(true, false, false), vec2<u32>(0u, 66791u), vec2<bool>(true, true), 64006u, -181f), Struct_3(vec3<bool>(false, false, false), vec2<u32>(15149u, 21191u), vec2<bool>(false, false), 1u, 1454f), Struct_3(vec3<bool>(false, false, true), vec2<u32>(0u, 7929u), vec2<bool>(true, false), 12823u, 1500f), Struct_3(vec3<bool>(false, true, true), vec2<u32>(28979u, 19374u), vec2<bool>(true, true), 13429u, -2409f), Struct_3(vec3<bool>(true, false, false), vec2<u32>(4597u, 70634u), vec2<bool>(true, true), 96709u, -645f), Struct_3(vec3<bool>(false, true, false), vec2<u32>(1u, 0u), vec2<bool>(true, true), 1u, -978f), Struct_3(vec3<bool>(true, true, false), vec2<u32>(29155u, 11951u), vec2<bool>(true, false), 1u, -513f), Struct_3(vec3<bool>(false, false, true), vec2<u32>(4294967295u, 8756u), vec2<bool>(false, false), 1u, 1656f), Struct_3(vec3<bool>(false, false, false), vec2<u32>(4294967295u, 0u), vec2<bool>(false, false), 4294967295u, -359f), Struct_3(vec3<bool>(true, true, true), vec2<u32>(60943u, 1u), vec2<bool>(false, true), 37141u, 598f), Struct_3(vec3<bool>(true, false, false), vec2<u32>(80308u, 0u), vec2<bool>(false, false), 0u, -372f), Struct_3(vec3<bool>(false, true, false), vec2<u32>(110583u, 8405u), vec2<bool>(true, false), 53919u, 457f), Struct_3(vec3<bool>(false, true, true), vec2<u32>(1u, 0u), vec2<bool>(false, true), 70156u, -506f), Struct_3(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 64622u), vec2<bool>(true, true), 0u, -1417f), Struct_3(vec3<bool>(true, false, true), vec2<u32>(47549u, 31363u), vec2<bool>(false, true), 90280u, -1657f), Struct_3(vec3<bool>(true, true, true), vec2<u32>(128375u, 0u), vec2<bool>(false, true), 33968u, 1000f), Struct_3(vec3<bool>(false, false, false), vec2<u32>(1u, 0u), vec2<bool>(false, true), 0u, -1000f), Struct_3(vec3<bool>(true, true, true), vec2<u32>(1u, 30169u), vec2<bool>(true, true), 94767u, -279f), Struct_3(vec3<bool>(false, false, false), vec2<u32>(13331u, 58193u), vec2<bool>(true, false), 4294967295u, 564f), Struct_3(vec3<bool>(true, false, true), vec2<u32>(4294967295u, 20334u), vec2<bool>(false, true), 36921u, 1117f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(arg_1.b.e, _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1.b.e.x, arg_1.b.e.x, 4294967295u), ~vec3<u32>(arg_1.b.d, arg_1.b.d, u_input.b), _wgslsmith_clamp_vec3_u32(arg_1.b.e, arg_1.b.e, arg_1.b.e))), ~(50356u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_1.b.d, 0u), arg_1.b.e) % 32u)), _wgslsmith_clamp_u32(77666u, u_input.b, ~reverseBits(41318u)));
    let var_1 = u_input.a;
    let var_2 = arg_1;
    let var_3 = vec3<i32>(max(var_2.b.b.x, -u_input.a), ~(-select(var_2.b.b.x, 31029i, arg_1.a.x)), -1i);
    global2 = array<Struct_2, 28>();
    return ~_wgslsmith_clamp_i32(abs(0i), select(var_3.x, var_2.b.b.x, !(arg_1.b.e.x != u_input.b)), -1i << (min(_wgslsmith_clamp_u32(0u, 1u, var_2.b.e.x), arg_1.b.d) % 32u));
}

fn func_2() -> Struct_3 {
    let var_0 = -_wgslsmith_mod_vec4_i32(vec4<i32>(func_3(vec4<f32>(-1391f, -389f, -143f, -944f), Struct_2(vec2<bool>(false, false), Struct_1(vec4<f32>(362f, 1711f, 1685f, -833f), vec3<i32>(-70636i, u_input.a, u_input.a), vec2<i32>(-44509i, -2147483647i), 4294967295u, vec3<u32>(u_input.b, 1u, 54590u)), vec2<bool>(true, false))), 20945i, ~u_input.a, ~2620i) ^ _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 2990i, 2147483647i), vec4<i32>(u_input.a, -1i, -22772i, 2906i)), ~(-firstLeadingBit(vec4<i32>(-35437i, u_input.a, -1i, -11663i))));
    var var_1 = -var_0.wx;
    global3 = array<Struct_3, 22>();
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-655f * _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-2544f * _wgslsmith_f_op_f32(round(-1051f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global1 = array<vec2<f32>, 2>();
    return Struct_3(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, select(true, false, true))), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b | 11314u, 0u, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 94230u, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b))), select(vec4<u32>(1u, u_input.b, 12061u, u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 12759u, u_input.b, 1u), vec4<u32>(u_input.b, 68864u, u_input.b, 26168u)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true))), ~u_input.b), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), any(vec4<bool>(true, false, false, false)))), u_input.b << (0u % 32u), _wgslsmith_f_op_f32(-1f));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(vec3<bool>(!arg_1.a.x, !arg_1.c.x, any(vec2<bool>(true, true)) | (true && arg_1.c.x)), ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1.b.e.xy, abs(arg_1.b.e.xz), ~arg_0.b), arg_0.b), !select(select(vec2<bool>(arg_1.c.x, arg_0.c.x), !arg_0.c, arg_0.e < 1000f), select(arg_0.a.xy, func_2().a.zz, true), vec2<bool>(true, !arg_0.a.x)), 1u, arg_0.e);
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2().e - 221f)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1727f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e * arg_0.e)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b.a.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b.a + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-235f, -1007f, 235f, var_0.e), arg_1.b.a, !vec4<bool>(true, arg_1.a.x, var_0.a.x, false))))), select(firstLeadingBit(-arg_1.b.b), _wgslsmith_mult_vec3_i32(-countOneBits(arg_1.b.b), vec3<i32>(firstLeadingBit(-1i), -8152i, arg_1.b.b.x)), all(vec3<bool>(arg_0.e > var_0.e, false, arg_0.a.x))), arg_1.b.c, u_input.b, ~(~arg_1.b.e));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1.b.a, vec4<f32>(1f, 322f, -352f, 2161f), vec4<bool>(false, arg_1.a.x && arg_1.c.x, var_0.a.x && arg_1.a.x, arg_1.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.b.a.x, var_1.a.x, true)), -451f, _wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(-arg_0.e)))), vec4<f32>(-2319f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a.x + 490f)), _wgslsmith_f_op_f32(step(-1100f, func_2().e)), var_0.e));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.a.x * var_0.e), 308f, _wgslsmith_f_op_f32(-197f + -1095f), var_1.a.x)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_2.x)), _wgslsmith_f_op_f32(-115f + 1f), _wgslsmith_f_op_f32(trunc(var_0.e)), _wgslsmith_f_op_f32(f32(-1f) * -1009f))), vec3<i32>(u_input.a, arg_1.b.c.x, 1i), arg_1.b.c | -(vec2<i32>(arg_1.b.c.x, var_1.b.x) >> (arg_1.b.e.yz % vec2<u32>(32u))), 34590u, vec3<u32>(u_input.b, var_1.d, _wgslsmith_add_u32(max(1u | arg_0.b.x, firstTrailingBit(arg_1.b.e.x)), ~arg_1.b.d)));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> vec4<f32> {
    let var_0 = countOneBits(~(~countOneBits(_wgslsmith_mult_u32(u_input.b, 1u))));
    global3 = array<Struct_3, 22>();
    global2 = array<Struct_2, 28>();
    global2 = array<Struct_2, 28>();
    let var_1 = func_4(func_2(), Struct_2(!vec2<bool>(all(vec3<bool>(false, false, false)), true), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(787f)), -532f, _wgslsmith_f_op_f32(3097f * 737f), -1804f), max(countOneBits(vec3<i32>(u_input.a, u_input.a, 51366i)), ~vec3<i32>(u_input.a, u_input.a, u_input.a)), (vec2<i32>(u_input.a, 2147483647i) | vec2<i32>(arg_1.x, arg_1.x)) >> (vec2<u32>(var_0, u_input.b) % vec2<u32>(32u)), max(abs(0u), var_0), countOneBits(~vec3<u32>(9814u, var_0, var_0))), vec2<bool>(all(vec2<bool>(false, false)), !any(vec3<bool>(false, false, false)))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(430f, 1390f) * var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x))), _wgslsmith_f_op_f32(-var_1.a.x), func_4(global3[_wgslsmith_index_u32(1u, 22u)], Struct_2(vec2<bool>(true, true), var_1, vec2<bool>(false, false))).a.x) - vec4<f32>(_wgslsmith_f_op_f32(step(-125f, var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + -2088f)), 1445f, var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 22>();
    let var_0 = Struct_2(vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-983f - 1230f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + -783f), true), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(u_input.b, vec3<i32>(u_input.a, -66874i, u_input.a)))))), vec3<i32>(1i, max(2147483647i, -1i), ~(-34821i)) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b)) % vec3<u32>(32u)), -select(vec2<i32>(u_input.a, 45266i), vec2<i32>(-1i, u_input.a), vec2<bool>(true, true)) & min(select(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, -2147483647i), true), vec2<i32>(-30283i, -53158i)), u_input.b, ~(~(~vec3<u32>(20589u, 1u, u_input.b)))), vec2<bool>(true, true));
    global1 = array<vec2<f32>, 2>();
    global0 = _wgslsmith_f_op_f32(floor(var_0.b.a.x));
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(881i, -2147483647i)), var_1.b.c.x, (var_0.b.b.x & (var_1.b.b.x & var_0.b.c.x)) >> (func_4(Struct_3(vec3<bool>(var_0.c.x, var_0.c.x, true), vec2<u32>(u_input.b, 0u), var_0.a, u_input.b, 513f), global2[_wgslsmith_index_u32(39524u, 28u)]).d % 32u), _wgslsmith_add_i32(-1i, reverseBits(var_0.b.c.x | -2147483647i))), ~_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(1i, 2147483647i, -53338i)), -firstLeadingBit(vec3<i32>(var_1.b.c.x, 0i, -2147483647i))));
}

