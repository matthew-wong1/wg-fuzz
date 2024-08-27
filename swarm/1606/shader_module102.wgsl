struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-1156f, 1323f), vec2<f32>(618f, -2132f), vec2<f32>(-389f, -851f), vec2<f32>(-966f, -1068f), vec2<f32>(-1632f, 375f), vec2<f32>(-669f, 1172f), vec2<f32>(-1000f, 859f), vec2<f32>(707f, -3118f), vec2<f32>(-1015f, -521f), vec2<f32>(-163f, 934f), vec2<f32>(654f, 336f), vec2<f32>(-1107f, 517f), vec2<f32>(1710f, 1429f), vec2<f32>(-449f, 728f), vec2<f32>(1245f, 191f), vec2<f32>(-143f, 220f), vec2<f32>(514f, -211f), vec2<f32>(-2260f, -1000f), vec2<f32>(607f, 111f), vec2<f32>(-1000f, -1593f), vec2<f32>(573f, 838f), vec2<f32>(-1001f, -862f), vec2<f32>(999f, -462f), vec2<f32>(-1000f, -165f), vec2<f32>(-705f, -517f), vec2<f32>(-1000f, 189f), vec2<f32>(781f, -658f), vec2<f32>(1944f, 616f), vec2<f32>(-1000f, -484f));

var<private> global2: array<vec2<bool>, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<i32>) -> u32 {
    let var_0 = Struct_5(max(vec4<i32>(countOneBits(-19307i), arg_2.x, -(arg_2.x ^ 1i), _wgslsmith_div_i32(1i, 2147483647i)), -select(vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -2147483647i), min(vec4<i32>(12150i, arg_2.x, 19678i, arg_2.x), vec4<i32>(arg_2.x, -1i, -37815i, 0i)), false)), vec4<f32>(1f, 1f, 1f, 1f));
    var var_1 = var_0;
    var var_2 = select(-865f > _wgslsmith_f_op_f32(-var_1.b.x), !(!all(vec4<bool>(arg_0, false, arg_1.x, global0.x))), true);
    var var_3 = Struct_4(vec4<bool>(true, var_0.b.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -590f)), global0.x, arg_0), false);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1641f)), _wgslsmith_f_op_f32(trunc(-869f)));
    return 28616u;
}

fn func_2() -> u32 {
    var var_0 = Struct_3(global0.xw, ~(~func_3(global0.x, vec2<bool>(false, global0.x), vec2<i32>(-12809i, -30818i)) | ~1u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-637f, 1263f, 1443f), vec3<f32>(902f, -183f, -1623f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(907f, -1619f, -212f)))), abs(0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(924f, -640f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2628f, 471f, -290f) + vec3<f32>(-1082f, 742f, -624f))) - vec3<f32>(_wgslsmith_f_op_f32(-576f + -826f), _wgslsmith_f_op_f32(floor(-139f)), _wgslsmith_f_op_f32(abs(-2224f)))), 2268i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f) - 410f) * 704f));
    var var_1 = Struct_3(!(!vec2<bool>(true, all(global0.yzz))), _wgslsmith_div_u32(max(_wgslsmith_add_u32(reverseBits(var_0.b), firstTrailingBit(u_input.a.x)), ~4294967295u), select(u_input.a.x, ~u_input.a.x, all(vec3<bool>(false, var_0.a.x, false)))), var_0.c, _wgslsmith_f_op_f32(-188f - _wgslsmith_f_op_f32(-1292f * 760f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f * -915f), _wgslsmith_f_op_f32(-var_1.d), 265f) * vec3<f32>(-2185f, _wgslsmith_f_op_f32(floor(var_1.d)), var_0.c.a.x))), max(4294967295u, 0u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, -710f, 375f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1520f), 2226f, _wgslsmith_f_op_f32(var_0.d + -2097f))))), -13445i);
    global2 = array<vec2<bool>, 17>();
    let var_3 = u_input.a;
    return u_input.a.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec4<bool>) -> f32 {
    let var_0 = Struct_3(vec2<bool>(arg_2.a.x, arg_3.x), (arg_2.c.b << (arg_2.c.b % 32u)) << (~func_2() % 32u), arg_2.c, -516f);
    let var_1 = all(select(vec4<bool>(true, true, false, true), vec4<bool>(!arg_3.x, global0.x, arg_3.x, false), any(!(!arg_2.a))));
    let var_2 = ~var_0.c.d;
    global2 = array<vec2<bool>, 17>();
    var var_3 = vec4<i32>(min(_wgslsmith_add_i32(-arg_0.x, 1i), var_0.c.d), arg_2.c.d, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, var_0.c.d, var_0.c.d, 69551i)), _wgslsmith_add_vec4_i32(vec4<i32>(53833i, 2147483647i, 1i, var_2) & vec4<i32>(arg_2.c.d, -31681i, 19950i, -2147483647i), countOneBits(vec4<i32>(2147483647i, var_0.c.d, var_0.c.d, arg_0.x)))), _wgslsmith_sub_i32(arg_0.x, -43634i)) & (vec4<i32>(-1i) * -vec4<i32>(-30986i, var_2, -arg_0.x, var_0.c.d));
    return _wgslsmith_f_op_f32(-arg_2.c.a.x);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    global2 = array<vec2<bool>, 17>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_1.c.c.x, _wgslsmith_f_op_f32(func_1(vec3<i32>(0i, arg_1.c.d, arg_1.c.d), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), arg_1, vec4<bool>(false, true, global0.x, arg_1.a.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c.a + arg_1.c.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.c.a * vec3<f32>(2193f, arg_1.d, arg_0)) + arg_1.c.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c.a + arg_1.c.a)))), arg_1.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.c.x)), arg_0, arg_0), ~(~(33322i >> (u_input.a.x % 32u))));
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = -884f;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.c * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1496f, 350f, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(188f, arg_0.a.x, var_0) - arg_0.c)))), 1u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1010f, arg_0.c.x, false)), _wgslsmith_f_op_f32(step(arg_0.c.x, arg_0.c.x))), var_0), -68028i), vec4<i32>(i32(-1i) * -19084i, 2842i, 2147483647i, abs(-select(0i, arg_0.d, global0.x))));
    let var_2 = ~(~(~var_1.a.b >> (u_input.a.x % 32u)));
    var var_3 = var_2;
    global1 = array<vec2<f32>, 29>();
    return _wgslsmith_div_u32(4346u, abs(func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(520f, arg_0.c.x)), Struct_3(select(vec2<bool>(global0.x, false), vec2<bool>(false, true), global2[_wgslsmith_index_u32(arg_0.b, 17u)]), var_2, func_4(972f, Struct_3(global0.ww, 30212u, arg_0, arg_0.a.x)), _wgslsmith_f_op_f32(var_1.a.a.x + arg_0.c.x))).b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 29>();
    var var_0 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-vec3<i32>(37588i, 1i, -2147483647i), u_input.a, Struct_3(global0.ww, 26737u, Struct_1(vec3<f32>(-220f, 3142f, -676f), 4294967295u, vec3<f32>(-540f, -255f, 1000f), -5321i), 1882f), !vec4<bool>(false, false, true, global0.x)))), Struct_3(select(vec2<bool>(global0.x, true), !vec2<bool>(global0.x, global0.x), true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 1u)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-848f, 1053f, -154f))), u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -653f, 1211f)), i32(-1i) * -50134i), 399f)));
    var var_1 = func_4(-2108f, Struct_3(vec2<bool>(true, true), func_2(), func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-151f + 981f), _wgslsmith_f_op_f32(min(1319f, 2064f)))), Struct_3(global2[_wgslsmith_index_u32(func_3(global0.x, vec2<bool>(true, global0.x), vec2<i32>(1i, 2147483647i)), 17u)], 32796u, func_4(514f, Struct_3(global0.wx, u_input.a.x, Struct_1(vec3<f32>(712f, -430f, 113f), 8573u, vec3<f32>(-1774f, -530f, 865f), -9039i), -669f)), -465f)), -519f));
    global0 = !(!select(select(!vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), true), vec4<bool>(true, var_1.b < var_1.b, global0.x, false), any(!vec2<bool>(global0.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-23943i), -1227i, _wgslsmith_mod_vec3_u32(~firstLeadingBit(u_input.a >> (vec3<u32>(var_1.b, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), firstLeadingBit(u_input.a)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(526f + 1167f), -124f)), var_1.a.x), var_1.c.x));
}

