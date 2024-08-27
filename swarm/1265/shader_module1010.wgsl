struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    let var_0 = all(!select(vec2<bool>(all(vec2<bool>(true, true)), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), false));
    var var_1 = Struct_3(Struct_1(~(~vec2<u32>(arg_0.x, arg_3)), -1264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1302f, arg_2.x, var_0)))), vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(156f - _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(vec2<u32>(firstLeadingBit(48331u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(73441u, 1u, 32866u), vec3<u32>(arg_0.x, arg_0.x, 1u)), firstLeadingBit(vec3<u32>(u_input.a.x, 55168u, arg_0.x)))), arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(803f, -106f), _wgslsmith_f_op_f32(max(781f, arg_1.b))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1.a)), arg_2.x)), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1387f)))) - vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + arg_2.x)), -662f, arg_2.x)), arg_1);
    var var_2 = Struct_3(Struct_1(vec2<u32>(countOneBits(15880u), ~_wgslsmith_mult_u32(1u, 1u)), arg_1.a, _wgslsmith_f_op_f32(min(199f, _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(step(-985f, var_1.e.a)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.e.b))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f), _wgslsmith_f_op_f32(arg_1.a + -1656f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x))), var_1.a.b), var_1.c, vec4<f32>(arg_1.b, -1000f, -1000f, 1f), Struct_2(var_1.a.c, -749f));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(sign(448f)), var_1.b.x);
    let var_4 = ~abs(var_1.a.a.x);
    return -209f;
}

fn func_2() -> i32 {
    var var_0 = -(~(select(abs(0i), _wgslsmith_mult_i32(17156i, 0i), true) >> (~abs(4873u) % 32u)));
    let var_1 = vec3<bool>(true, any(vec2<bool>(false, true)), true);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(112f + 1084f))) - _wgslsmith_f_op_f32(func_3(abs(vec2<u32>(4614u, 1u)), Struct_2(2330f, 547f), _wgslsmith_f_op_vec4_f32(vec4<f32>(680f, -1858f, -1087f, 1000f) * vec4<f32>(-3996f, 857f, 583f, 1400f)), u_input.a.x | 1709u))))), true, Struct_3(Struct_1(vec2<u32>(u_input.a.x, u_input.a.x) ^ vec2<u32>(28452u, 6687u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1009f * 1101f)), 583f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-954f - 1583f)), -804f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(firstTrailingBit(~vec2<u32>(11647u, u_input.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1070f * 738f), -907f)), 235f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(u_input.a, Struct_2(1000f, 1820f), vec4<f32>(1986f, 119f, -522f, 398f), 1u)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -996f), -1421f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-730f, -108f, -1448f, 735f)), vec4<f32>(275f, 662f, 401f, -272f))), Struct_2(-1233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f - 1547f)))), true);
    var var_3 = firstLeadingBit(vec2<u32>(~1u, 1u) >> (~_wgslsmith_div_vec2_u32(u_input.a >> (vec2<u32>(u_input.a.x, var_2.c.a.a.x) % vec2<u32>(32u)), vec2<u32>(15064u, var_2.c.a.a.x)) % vec2<u32>(32u)));
    var_0 = -17130i;
    return _wgslsmith_add_i32(1i, 1i);
}

fn func_1(arg_0: vec2<u32>) -> vec4<u32> {
    var var_0 = false;
    let var_1 = vec2<i32>(func_2(), i32(-1i) * -21635i);
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-110f, 1000f)) - -455f), _wgslsmith_f_op_f32(ceil(-1000f))))) >= _wgslsmith_f_op_f32(303f * -958f);
    var var_2 = vec3<f32>(-414f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), -205f), _wgslsmith_f_op_f32(ceil(-143f)));
    var var_3 = Struct_1(abs(min(vec2<u32>(arg_0.x, 3122u) ^ vec2<u32>(arg_0.x, 0u), firstLeadingBit(vec2<u32>(u_input.a.x, 4294967295u)))) >> (vec2<u32>(~u_input.a.x, _wgslsmith_add_u32(23618u, arg_0.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -310f));
    return _wgslsmith_div_vec4_u32(select(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(var_3.a.x, var_3.a.x)), 1u, var_3.a.x, 1u), abs(vec4<u32>(var_3.a.x, arg_0.x, abs(var_3.a.x), _wgslsmith_clamp_u32(arg_0.x, 1452u, u_input.a.x))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true), true))), ~select(vec4<u32>(1u, var_3.a.x, var_3.a.x, var_3.a.x), select(vec4<u32>(u_input.a.x, u_input.a.x, 27458u, var_3.a.x), vec4<u32>(arg_0.x, arg_0.x, u_input.a.x, var_3.a.x), true), false) | vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, arg_0.x, u_input.a.x), vec4<u32>(43239u, 4294967295u, 0u, arg_0.x)), ~firstLeadingBit(32983u), 52766u ^ (0u | var_3.a.x), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_dot_vec4_u32(abs(~(~func_1(vec2<u32>(1u, 18645u)))), _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(5555u, u_input.a.x, 7150u, u_input.a.x)) & func_1(u_input.a << (vec2<u32>(24823u, u_input.a.x) % vec2<u32>(32u))), vec4<u32>(u_input.a.x ^ u_input.a.x, abs(19213u), ~u_input.a.x, 29024u) & select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 58668u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 31644u, 2917u, 0u)), vec4<bool>(true, var_0, true, false))));
    let var_2 = 0u;
    var_1 = u_input.a.x;
    var var_3 = false;
    var_3 = (firstTrailingBit(select(max(25453i, -2275i), 1i, any(vec4<bool>(var_0, true, var_0, false)))) != -28077i) || var_0;
    var var_4 = Struct_4(113f, all(!vec2<bool>(false, var_0)) & var_0, Struct_3(Struct_1(vec2<u32>(_wgslsmith_clamp_u32(0u, 8352u, 5395u), 1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1254f + 2198f), _wgslsmith_f_op_f32(f32(-1f) * -1324f), false)), -711f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-116f, _wgslsmith_f_op_f32(floor(-473f)), -2138f) * vec3<f32>(1127f, 1451f, _wgslsmith_div_f32(876f, -1633f))), Struct_1(u_input.a, _wgslsmith_f_op_f32(max(1575f, 189f)), _wgslsmith_f_op_f32(-176f - _wgslsmith_f_op_f32(1375f * 230f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(968f, -1000f, -963f, 1495f))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-562f)) - _wgslsmith_f_op_f32(1323f - -925f)), 774f)), true);
    var var_5 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, firstLeadingBit(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(2147483647i, -13271i), vec2<i32>(-13938i, -17593i))) ^ vec2<i32>(abs(-34599i), 1i)), i32(-1i) * -28231i, 445f);
}

