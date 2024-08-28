struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(2147483647i, 31828i), true, vec3<bool>(false, false, true), 169f, 11374u), Struct_1(vec2<i32>(1i, i32(-2147483648)), false, vec3<bool>(true, false, false), -571f, 35793u), Struct_1(vec2<i32>(-6779i, 2147483647i), true, vec3<bool>(false, true, false), -1100f, 4294967295u), Struct_1(vec2<i32>(i32(-2147483648), 61864i), true, vec3<bool>(true, true, true), -1392f, 27710u), Struct_1(vec2<i32>(-1i, -1i), true, vec3<bool>(false, true, false), 278f, 0u), Struct_1(vec2<i32>(-1902i, 2147483647i), true, vec3<bool>(false, true, true), 598f, 0u), Struct_1(vec2<i32>(-1i, -31235i), true, vec3<bool>(true, false, true), 1000f, 76892u), Struct_1(vec2<i32>(0i, -1i), true, vec3<bool>(false, true, false), -1165f, 32945u), Struct_1(vec2<i32>(1i, -24798i), false, vec3<bool>(false, true, false), 371f, 57220u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32, arg_1: f32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 388f)), -766f)));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_0 = false;
    global0 = array<Struct_1, 9>();
    var var_1 = Struct_4(21062u, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1284f, 1602f, true)) - 1648f)));
    return ~_wgslsmith_mod_u32(~var_1.a, 28411u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = !all(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), all(vec3<bool>(true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    let var_1 = Struct_3(u_input.c);
    var var_2 = var_1.a;
    var_2 = max(_wgslsmith_dot_vec2_u32(select(countOneBits(vec2<u32>(u_input.d, arg_0.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0.xyy, vec3<u32>(arg_0.x, arg_0.x, 0u)), ~arg_0.x), var_0), _wgslsmith_mod_vec2_u32(vec2<u32>(115090u, 1u) | vec2<u32>(var_1.a, 75153u), vec2<u32>(82051u, 4294967295u)) & vec2<u32>(u_input.c, arg_0.x)), _wgslsmith_clamp_u32(1u, 1u, _wgslsmith_sub_u32(4294967295u, 1u)) | arg_0.x);
    var var_3 = Struct_3(var_1.a);
    return ~var_3.a;
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = max(_wgslsmith_add_u32(firstTrailingBit(4294967295u), 4294967295u), ~(~abs(52645u))) << (~func_4(vec4<u32>(u_input.b.x & u_input.a.x, ~29296u, u_input.a.x, func_3()), _wgslsmith_f_op_vec2_f32(vec2<f32>(-107f, -164f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-738f, 711f), vec2<f32>(-1860f, 1025f))))) % 32u);
    let var_1 = 1320u;
    global0 = array<Struct_1, 9>();
    let var_2 = Struct_3(_wgslsmith_div_u32(firstLeadingBit(0u), (_wgslsmith_div_u32(4294967295u, var_1) | (var_1 >> (var_1 % 32u))) << (1u % 32u)));
    var var_3 = Struct_4(41020u, 0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1523f * 315f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -469f) * 1871f))))));
    return _wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-654f, 986f)) + var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(430f, 1015f))), _wgslsmith_div_f32(-661f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-1633f, 184f)) * _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, false)))))));
    let var_1 = 1182f;
    var var_2 = Struct_2(!vec4<bool>(var_1 < _wgslsmith_f_op_f32(var_1 - var_1), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))), true, true));
    let var_3 = _wgslsmith_mult_i32((i32(-1i) * -13072i) >> (u_input.b.x % 32u), ~firstTrailingBit(-u_input.e)) & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(u_input.e, u_input.e, u_input.e)), vec3<i32>(_wgslsmith_add_i32(16707i, u_input.e), u_input.e, -12582i & u_input.e)), -vec3<i32>(1i, reverseBits(58727i), -2147483647i));
    let var_4 = Struct_4(u_input.a.x, ~60296u << (firstLeadingBit(_wgslsmith_div_u32(u_input.b.x, u_input.b.x)) % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-389f - 319f) * _wgslsmith_f_op_f32(var_1 * var_0.x)) + -397f))));
    var var_5 = u_input.e;
    var_2 = Struct_2(var_2.a);
    let var_6 = 1231f;
    var_2 = Struct_2(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.e, -84738i), abs(2147483647i), firstLeadingBit(~vec2<i32>(-2147483647i, 1i)) | ~countOneBits(-vec2<i32>(0i, var_3)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1335f, 1192f, -368f)) + _wgslsmith_div_vec4_f32(vec4<f32>(344f, var_6, var_6, -261f), vec4<f32>(var_4.c, 781f, -1334f, -1280f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1341f, 593f, 1766f, var_6) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1747f, var_1, 272f, 269f)))))), abs(4294967295u));
}

