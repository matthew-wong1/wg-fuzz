struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(Struct_1(true), Struct_4(true, Struct_2(false, 4294967295u), vec2<u32>(18280u, 4294967295u), -435f, Struct_1(true))), Struct_5(Struct_1(false), Struct_4(false, Struct_2(true, 1u), vec2<u32>(5038u, 27345u), -974f, Struct_1(false))), Struct_5(Struct_1(true), Struct_4(false, Struct_2(false, 4081u), vec2<u32>(13979u, 4294967295u), -268f, Struct_1(false))), Struct_5(Struct_1(true), Struct_4(true, Struct_2(false, 4294967295u), vec2<u32>(4294967295u, 11640u), 295f, Struct_1(false))), Struct_5(Struct_1(true), Struct_4(false, Struct_2(false, 1u), vec2<u32>(79201u, 0u), -1092f, Struct_1(true))), Struct_5(Struct_1(false), Struct_4(true, Struct_2(true, 10171u), vec2<u32>(0u, 5166u), -925f, Struct_1(true))), Struct_5(Struct_1(false), Struct_4(true, Struct_2(true, 1667u), vec2<u32>(84033u, 110640u), -279f, Struct_1(true))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(true, u_input.c);
    let var_1 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(24004u, var_0.b, 51735u, 12018u) | vec4<u32>(1u, var_0.b, u_input.c, u_input.c), ~vec4<u32>(u_input.c, var_0.b, var_0.b, 0u)), select(var_0.b, 0u, var_0.a) ^ countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, u_input.c), vec2<u32>(56826u, 4294967295u)), ~vec2<u32>(86392u, var_0.b))));
    var_0 = Struct_2(false, ~18580u);
    var var_2 = Struct_4(true, Struct_2(all(vec4<bool>(true, true, all(vec2<bool>(var_0.a, false)), select(false, var_0.a, true))), u_input.c), _wgslsmith_div_vec2_u32(select(select(vec2<u32>(var_1, 4749u), ~vec2<u32>(var_0.b, var_0.b), !var_0.a), _wgslsmith_add_vec2_u32(vec2<u32>(20810u, var_0.b), vec2<u32>(var_1, u_input.b) ^ vec2<u32>(16968u, 1u)), !(!vec2<bool>(var_0.a, false))), vec2<u32>(_wgslsmith_sub_u32(countOneBits(var_0.b), 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(21369u, 28384u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.c, var_1), vec3<u32>(u_input.c, 90623u, 114897u))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-255f)), _wgslsmith_f_op_f32(sign(1784f))) * 2346f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1338f + -959f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1551f, -1820f) + -384f))), Struct_1(!var_0.a));
    var var_3 = Struct_3(var_2.e, Struct_1(all(vec2<bool>(!var_0.a, true))), vec4<f32>(var_2.d, var_2.d, _wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(-var_2.d)), Struct_2(!any(select(vec2<bool>(true, var_2.e.a), vec2<bool>(true, false), var_2.e.a)), 1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.c.x, _wgslsmith_f_op_f32(-1f), false)));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    var var_0 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_0, _wgslsmith_sub_u32(u_input.b, arg_0)), _wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(21179u, 5249u), select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, 0u), false)), arg_0), ~(~(~vec4<u32>(u_input.c, 1u, arg_0, arg_0)))));
    let var_1 = Struct_2(true, 70382u);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(select(-1239f, 1f, any(!vec2<bool>(false, var_1.a)))) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -713f))))), Struct_2(!(any(vec2<bool>(var_1.a, true)) | var_1.a), firstLeadingBit(~arg_0) | 0u), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.yw, countOneBits(var_0.zw)) | firstLeadingBit(~vec2<u32>(26972u, var_1.b)), var_0.xy), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))), Struct_1(!(!var_1.a)));
    global1 = array<Struct_5, 7>();
    var var_3 = -27727i;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.d, -1000f, -479f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, var_2.d, 804f) + vec3<f32>(var_2.d, var_2.d, var_2.d)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.d))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(exp2(var_2.d)), all(vec3<bool>(var_1.a, false, true)))), 756f) + vec3<f32>(-1914f, var_2.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_2.d))))))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = true;
    global1 = array<Struct_5, 7>();
    global1 = array<Struct_5, 7>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(4294967295u)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-3139f, _wgslsmith_f_op_f32(abs(-803f)), 208f), vec3<f32>(_wgslsmith_f_op_f32(2538f * -1000f), _wgslsmith_f_op_f32(step(-1000f, -100f)), _wgslsmith_f_op_f32(f32(-1f) * -884f))))));
    var var_2 = _wgslsmith_sub_vec3_i32(firstLeadingBit(~(~vec3<i32>(u_input.a, -2147483647i, 0i) & vec3<i32>(-2147483647i, u_input.a, u_input.a))), -vec3<i32>(abs(_wgslsmith_mod_i32(44433i, u_input.a)), abs(-163i), -2147483647i));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(min(vec3<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -25673i, u_input.a), vec3<i32>(29289i, -1i, -22573i)), -vec3<i32>(u_input.a, u_input.a, u_input.a))), reverseBits(vec3<i32>(-1i >> (u_input.c % 32u), -u_input.a, u_input.a))));
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.b), vec3<u32>(91051u, u_input.c, 0u)), firstTrailingBit(vec3<u32>(0u, u_input.c, 4294967295u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 38152u) | vec3<u32>(4294967295u, 18316u, 76846u), ~vec3<u32>(u_input.c, 0u, 1917u)), 73884u, ~_wgslsmith_mult_u32(u_input.b << (u_input.c % 32u), firstLeadingBit(19216u))), vec4<u32>(1u, 0u, firstLeadingBit(u_input.c), ~(_wgslsmith_div_u32(u_input.c, u_input.c) | max(4294967295u, 0u))));
    let var_2 = ~_wgslsmith_mod_vec3_i32(~(-vec3<i32>(3672i, u_input.a, u_input.a)), firstLeadingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0.x, u_input.a), vec3<i32>(1i, -1i, u_input.a))));
    var_0 = var_2;
    var_1 = ~reverseBits(vec4<u32>(1u, u_input.c, ~func_1(false, Struct_1(false)), u_input.b));
    var_1 = ~_wgslsmith_div_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(35117u, var_1.x, 10360u, 0u), vec4<u32>(1u, var_1.x, 2822u, var_1.x), vec4<u32>(0u, u_input.b, var_1.x, var_1.x))), max(min(~vec4<u32>(var_1.x, u_input.c, 12929u, 30915u), vec4<u32>(19846u, 0u, u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, u_input.b, var_1.x, u_input.c), vec4<u32>(22029u, u_input.c, 4294967295u, 87817u)) >> (~vec4<u32>(var_1.x, 4294967295u, 10671u, 52586u) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), ~18184u);
    global1 = array<Struct_5, 7>();
    var var_4 = Struct_4(true, Struct_2(true, firstLeadingBit(~_wgslsmith_mult_u32(4434u, var_1.x))), var_1.zz, _wgslsmith_f_op_f32(-121f * _wgslsmith_f_op_f32(-159f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -421f))))), Struct_1(select(~31189u != select(u_input.b, u_input.c, false), all(vec3<bool>(true, true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(348f, 668f, var_4.d)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.d, var_4.d, -480f), vec3<f32>(-1071f, 402f, var_4.d))))) + vec3<f32>(_wgslsmith_f_op_f32(sign(var_4.d)), _wgslsmith_f_op_f32(-var_4.d), _wgslsmith_f_op_f32(abs(1305f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(827f, -452f, var_4.d) * _wgslsmith_div_vec3_f32(vec3<f32>(1649f, -375f, var_4.d), vec3<f32>(var_4.d, var_4.d, var_4.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.d, var_4.d, -690f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_4.d, var_4.d, var_4.d), vec3<f32>(var_4.d, 1396f, var_4.d))))), (_wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(var_4.b.b, var_1.x)) | 11631u) | (var_1.x & u_input.c));
}

