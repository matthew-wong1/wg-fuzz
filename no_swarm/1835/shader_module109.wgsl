struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_1(212f, vec4<u32>(4294967295u, 2780u, 18269u, 1u)), 0u, vec3<bool>(true, false, true), -10244i), Struct_4(Struct_1(-1753f, vec4<u32>(54744u, 67200u, 1u, 959u)), 32799u, vec3<bool>(true, true, false), -131i), Struct_4(Struct_1(1045f, vec4<u32>(0u, 0u, 4294967295u, 4081u)), 0u, vec3<bool>(false, false, false), i32(-2147483648)), Struct_4(Struct_1(527f, vec4<u32>(7743u, 62337u, 1u, 28682u)), 4294967295u, vec3<bool>(true, true, false), 38564i), Struct_4(Struct_1(550f, vec4<u32>(38964u, 0u, 1u, 42735u)), 4294967295u, vec3<bool>(false, true, true), -12280i), Struct_4(Struct_1(-1670f, vec4<u32>(1u, 26211u, 42990u, 15281u)), 43844u, vec3<bool>(false, true, true), -29562i), Struct_4(Struct_1(303f, vec4<u32>(97239u, 4294967295u, 24671u, 4860u)), 44076u, vec3<bool>(true, true, false), 2147483647i), Struct_4(Struct_1(-776f, vec4<u32>(67509u, 111442u, 0u, 0u)), 0u, vec3<bool>(false, true, false), 2147483647i), Struct_4(Struct_1(1117f, vec4<u32>(4294967295u, 0u, 1u, 0u)), 0u, vec3<bool>(false, true, true), i32(-2147483648)), Struct_4(Struct_1(1074f, vec4<u32>(4294967295u, 1u, 46786u, 0u)), 65527u, vec3<bool>(false, false, true), 16938i), Struct_4(Struct_1(-2003f, vec4<u32>(4294967295u, 1u, 0u, 1u)), 4294967295u, vec3<bool>(true, false, false), 36576i), Struct_4(Struct_1(500f, vec4<u32>(58706u, 107583u, 44060u, 29772u)), 13184u, vec3<bool>(false, true, false), -14687i), Struct_4(Struct_1(-1554f, vec4<u32>(1u, 4294967295u, 58097u, 21413u)), 3877u, vec3<bool>(false, true, false), i32(-2147483648)), Struct_4(Struct_1(662f, vec4<u32>(5877u, 4294967295u, 18438u, 30232u)), 6740u, vec3<bool>(true, false, true), -32818i), Struct_4(Struct_1(-439f, vec4<u32>(34367u, 0u, 0u, 1u)), 49200u, vec3<bool>(true, true, true), i32(-2147483648)), Struct_4(Struct_1(-1226f, vec4<u32>(4294967295u, 23001u, 1u, 61055u)), 40378u, vec3<bool>(true, false, false), i32(-2147483648)), Struct_4(Struct_1(196f, vec4<u32>(58315u, 31697u, 20404u, 0u)), 0u, vec3<bool>(true, true, false), -32533i), Struct_4(Struct_1(-399f, vec4<u32>(4294967295u, 0u, 4294967295u, 1u)), 1u, vec3<bool>(true, false, true), -51410i), Struct_4(Struct_1(-1468f, vec4<u32>(0u, 9198u, 4294967295u, 20356u)), 21874u, vec3<bool>(true, true, false), -1i), Struct_4(Struct_1(-2501f, vec4<u32>(1u, 63031u, 54923u, 96235u)), 1u, vec3<bool>(true, true, true), 1i), Struct_4(Struct_1(-1402f, vec4<u32>(64051u, 4294967295u, 1u, 50768u)), 0u, vec3<bool>(false, true, true), 11150i), Struct_4(Struct_1(-934f, vec4<u32>(17025u, 1u, 50299u, 32513u)), 0u, vec3<bool>(false, true, false), 1i), Struct_4(Struct_1(-704f, vec4<u32>(1u, 16997u, 0u, 16904u)), 4294967295u, vec3<bool>(false, true, true), i32(-2147483648)), Struct_4(Struct_1(-1000f, vec4<u32>(1u, 1u, 5054u, 19317u)), 41876u, vec3<bool>(true, false, false), -1i), Struct_4(Struct_1(459f, vec4<u32>(1u, 37280u, 57780u, 1u)), 1u, vec3<bool>(false, true, false), 0i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    let var_0 = arg_2;
    let var_1 = vec3<i32>(-countOneBits(~15443i), 12103i, 76707i);
    var var_2 = Struct_3(!select(vec4<bool>(any(vec4<bool>(true, false, true, true)), 0i < var_1.x, true, any(vec4<bool>(false, true, true, true))), vec4<bool>(false, any(vec3<bool>(true, false, true)), true, false), vec4<bool>(any(vec2<bool>(false, false)), true, true, all(vec3<bool>(true, true, false)))), 1u, arg_1.a, -1i, !vec2<bool>(any(vec2<bool>(true, false)), true));
    global0 = array<Struct_4, 25>();
    var_2 = Struct_3(var_2.a, 4294967295u, var_2.c, 38185i, var_2.e);
    return select(~firstLeadingBit(u_input.a), _wgslsmith_clamp_vec4_u32(arg_1.b, ~arg_1.b, ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(var_2.b, 1u, u_input.a.x, 0u), vec4<u32>(66083u, 0u, arg_0.x, 495u), var_2.a), ~vec4<u32>(29931u, 0u, var_0, 4258u))), vec4<bool>(var_2.a.x, ((var_2.d < var_2.d) & any(vec3<bool>(false, false, var_2.a.x))) == true, true, true));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    global0 = array<Struct_4, 25>();
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(arg_2));
    global0 = array<Struct_4, 25>();
    var var_1 = Struct_1(arg_2.x, abs(select(~(~u_input.a), func_3(vec2<u32>(29996u, u_input.a.x), Struct_1(1007f, vec4<u32>(0u, 1u, 46406u, 62963u)), _wgslsmith_mod_u32(arg_0.b, 91702u)), any(select(arg_0.e, vec2<bool>(arg_0.e.x, arg_0.a.x), arg_0.a.xw)))));
    let var_2 = vec4<i32>(arg_0.d, 0i, ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(-13830i, _wgslsmith_sub_i32(-18426i, 54086i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(arg_0.d, arg_1)), vec2<i32>(1i, 15207i))), firstTrailingBit(~(-arg_1) << (var_1.b.x % 32u)));
    return -1751f;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1032f, _wgslsmith_f_op_f32(f32(-1f) * -398f))) + -1377f);
    global0 = array<Struct_4, 25>();
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0)));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(vec4<bool>(true, false, false, true), u_input.a.x, -228f, 13641i, vec2<bool>(false, false)), _wgslsmith_div_i32(-57486i, -1i), vec3<f32>(var_0, -149f, -583f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(vec4<bool>(true, false, false, false), u_input.a.x, 394f, -79132i, vec2<bool>(true, false)), -105659i, vec3<f32>(393f, -840f, var_0))))))));
    global0 = array<Struct_4, 25>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_1(1974f, u_input.a), 53576u, select(vec3<bool>(true, _wgslsmith_div_u32(u_input.a.x, u_input.a.x) >= reverseBits(4294967295u), false), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, true, false))), vec3<bool>(true, true, true)), !vec3<bool>(select(false, true, true), true, true)), 1i);
    var_0 = global0[_wgslsmith_index_u32(4294967295u, 25u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0.a.b.ww))))), vec3<f32>(396f, var_0.a.a, -767f)));
    var var_2 = true;
    var var_3 = vec3<bool>(all(vec4<bool>(all(vec4<bool>(true, true, true, true)), !var_0.c.x, any(select(var_0.c, var_0.c, vec3<bool>(false, true, true))), var_0.c.x)), all(select(vec4<bool>(var_0.c.x, all(vec4<bool>(var_0.c.x, true, false, true)), true, var_0.c.x | false), select(!vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, true, false), var_0.c.x), select(vec4<bool>(true, var_0.c.x, var_0.c.x, true), !vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), select(vec4<bool>(var_0.c.x, false, true, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), false)))), true);
    let var_4 = var_3.x;
    let var_5 = Struct_4(var_0.a, select(4294967295u, 0u, !(1i >= var_0.d)), select(select(var_0.c, select(!vec3<bool>(var_3.x, true, var_0.c.x), select(vec3<bool>(var_0.c.x, true, false), vec3<bool>(false, var_0.c.x, var_3.x), var_0.c.x), vec3<bool>(false, false, var_3.x)), !var_0.c.x), vec3<bool>(!(var_0.c.x && false), true, select(any(vec3<bool>(false, var_0.c.x, true)), var_0.c.x, var_0.b > var_0.b)), var_0.c), ~_wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(-var_0.d, ~64607i)));
    var_2 = any(vec4<bool>(true, var_0.a.a < _wgslsmith_f_op_f32(f32(-1f) * -457f), all(vec4<bool>(var_3.x, false, var_5.c.x, false)) && !var_5.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1611f))) >= _wgslsmith_f_op_f32(max(var_0.a.a, 842f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(966f, 1000f, var_0.a.a, -2452f) * vec4<f32>(-1000f, -976f, var_1.x, -2565f)))))), _wgslsmith_mod_vec4_u32(var_5.a.b, _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(46296u, var_0.b, var_0.a.b.x, 0u))) >> (vec4<u32>(countOneBits(u_input.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_5.a.b.x, 1u, var_0.b), var_5.a.b.wyw), 15376u, 0u) % vec4<u32>(32u)));
}

