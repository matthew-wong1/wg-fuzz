struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-910f, -155f, -625f, 1342f), vec4<f32>(1000f, -1457f, 452f, 1000f), vec4<f32>(484f, 1773f, -1359f, -878f), vec4<f32>(-164f, 1250f, 909f, -569f), vec4<f32>(1000f, -1000f, -1613f, -278f), vec4<f32>(803f, -1074f, -549f, 196f), vec4<f32>(685f, 312f, 149f, 493f), vec4<f32>(-1672f, -633f, -278f, 930f), vec4<f32>(-344f, 1353f, 514f, 1801f));

var<private> global1: f32;

var<private> global2: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-205f, -955f, 1000f), vec3<f32>(-2282f, 1000f, -885f), vec3<f32>(617f, 725f, 1556f), vec3<f32>(-171f, -946f, 360f), vec3<f32>(698f, -251f, -1000f), vec3<f32>(435f, -298f, 939f), vec3<f32>(701f, 243f, -768f), vec3<f32>(782f, -1255f, -788f), vec3<f32>(1094f, -191f, -326f), vec3<f32>(1000f, 1214f, 1701f), vec3<f32>(-1052f, -1332f, -717f), vec3<f32>(221f, 1384f, -317f), vec3<f32>(-656f, -522f, -1489f));

var<private> global3: array<vec4<bool>, 22>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    var var_0 = countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, _wgslsmith_mult_u32(0u, 4294967295u), 1u), vec4<u32>(min(32046u, 55590u), 46622u >> (0u % 32u), 1u, ~4294967295u))) | ~(~(~_wgslsmith_clamp_u32(1u, 11610u, 1u)));
    return _wgslsmith_sub_u32(abs(firstTrailingBit(_wgslsmith_add_u32(4294967295u, select(74828u, 27359u, true)))), select(abs(~4294967295u) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 31866u, 0u), ~vec3<u32>(16147u, 0u, 7161u)) % 32u), ~(0u >> (0u % 32u)), false));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(55713u, arg_0.x), vec2<u32>(40637u, arg_0.x));
    var var_1 = ~vec4<u32>(34666u, _wgslsmith_dot_vec3_u32(arg_0, arg_0), _wgslsmith_mult_u32(func_3(Struct_2(vec3<bool>(true, false, true)), arg_1.x), ~51569u), max(var_0, ~arg_0.x) & 0u);
    let var_2 = select(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)) == 1258f, true), !vec3<bool>(true, true, all(vec2<bool>(true, false)) || false), !select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), vec3<bool>(any(vec4<bool>(true, false, false, true)), true, true), true));
    return var_2.x || !any(!var_2);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = Struct_4(u_input.a, u_input.a, Struct_1(!select(select(vec3<bool>(true, arg_2, false), vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, true, arg_2)), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, false, false), vec3<bool>(false, arg_2, arg_2)), true), -206f, ~1i, vec3<f32>(162f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-313f, -679f) * _wgslsmith_f_op_f32(trunc(2299f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2432f + -756f)))));
    global0 = array<vec4<f32>, 9>();
    let var_1 = -3803i;
    var var_2 = vec4<bool>(func_2(firstTrailingBit(select(arg_0.zzx, vec3<u32>(97664u, arg_0.x, 0u), var_0.c.a)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.b, -586f, var_0.c.d.x, var_0.c.b), vec4<f32>(var_0.c.b, var_0.c.b, -634f, var_0.c.b))) & true, false, var_0.c.a.x, !(true && arg_2));
    global3 = array<vec4<bool>, 22>();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 13>();
    let var_0 = Struct_3(all(!vec3<bool>(any(vec3<bool>(true, false, true)), true, false)));
    var var_1 = -112f;
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~select(reverseBits(vec2<i32>(u_input.a, 43708i)), -vec2<i32>(u_input.a, -31336i), !vec2<bool>(true, var_0.a)), vec2<i32>(_wgslsmith_mod_i32(-u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)), ~(-15506i))), _wgslsmith_div_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a)), (vec2<i32>(u_input.a, -1i) ^ abs(vec2<i32>(1i, 76194i))) & ~(-vec2<i32>(u_input.a, u_input.a))));
    var_1 = -1214f;
    global3 = array<vec4<bool>, 22>();
    var var_3 = -1205f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~0u, select(9897u, 4294967295u, var_0.a)), ~(~0u), 1u, func_1(~vec4<u32>(50977u, 0u, 4294967295u, 1u), ~(-2147483647i), true)), abs(vec4<u32>(4294967295u, ~937u, 1u, 1u))), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(max(~vec2<u32>(59178u, 4294967295u), vec2<u32>(97291u, 1u)), _wgslsmith_add_vec2_u32(min(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 4294967295u)), select(vec2<u32>(1u, 3553u), vec2<u32>(43179u, 1u), var_0.a))), abs(vec2<u32>(1u, 72355u))), i32(-1i) * -(_wgslsmith_clamp_i32(u_input.a, var_2, 39756i) | _wgslsmith_add_i32(39618i, var_2)), -3754i);
}

