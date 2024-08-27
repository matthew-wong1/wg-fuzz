struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-587f, vec2<f32>(-360f, 1313f), vec4<u32>(0u, 1u, 16750u, 17714u)), Struct_1(-241f, vec2<f32>(143f, 1919f), vec4<u32>(1u, 0u, 85826u, 728u)), Struct_1(-733f, vec2<f32>(1973f, 2248f), vec4<u32>(8905u, 4294967295u, 55081u, 4294967295u)), Struct_1(2485f, vec2<f32>(1495f, 443f), vec4<u32>(84091u, 9515u, 25811u, 4294967295u)), Struct_1(-1011f, vec2<f32>(-486f, 1000f), vec4<u32>(19320u, 24550u, 33101u, 0u)), Struct_1(819f, vec2<f32>(-1000f, 752f), vec4<u32>(58548u, 1u, 0u, 51248u)), Struct_1(-455f, vec2<f32>(1547f, 1139f), vec4<u32>(15147u, 53322u, 9508u, 39120u)));

var<private> global1: u32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = arg_0;
    global0 = array<Struct_1, 7>();
    var var_2 = abs(_wgslsmith_mod_i32(-21193i, _wgslsmith_dot_vec3_i32(max(~vec3<i32>(u_input.b, 396i, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(-3435i, u_input.a, u_input.b), vec3<i32>(u_input.a, -44092i, 1i))), ~vec3<i32>(-2147483647i, 36091i, u_input.a))));
    var var_3 = abs(~max(43112u, (arg_3 ^ arg_3) >> (0u % 32u)));
    return select(select(select(!select(arg_0.b, arg_2.b, vec2<bool>(var_1.b.x, false)), var_1.b, arg_2.b.x), !(!arg_0.b), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(var_1.b.x, arg_0.b.x, false, true), true), vec4<bool>(arg_2.b.x, false, true, var_1.b.x), arg_0.b.x))), arg_0.b, select(!(!select(vec2<bool>(arg_0.b.x, arg_2.b.x), arg_0.b, arg_2.b)), !(!vec2<bool>(arg_2.b.x, true)), !arg_0.b));
}

fn func_2(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1542f))), !(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), func_3(Struct_2(-708f, vec2<bool>(false, true)), 1711f, Struct_2(-958f, vec2<bool>(true, false)), 7926u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f))) * var_0.a);
}

fn func_4(arg_0: f32, arg_1: i32) -> i32 {
    let var_0 = Struct_2(-1000f, func_3(Struct_2(arg_0, select(func_3(Struct_2(arg_0, vec2<bool>(true, true)), -559f, Struct_2(2387f, vec2<bool>(true, true)), 37314u), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -147f))), Struct_2(369f, select(vec2<bool>(true, true), vec2<bool>(true, false), true)), 4294967295u));
    let var_1 = 1u;
    global0 = array<Struct_1, 7>();
    global1 = 4294967295u;
    let var_2 = vec4<bool>(!(any(vec2<bool>(var_0.b.x, true)) | true), countOneBits(var_1) >= var_1, all(var_0.b), all(vec3<bool>(true, true, false)));
    return ~(-(arg_1 | -1i));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_2 {
    global1 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), arg_2.yx) >> (arg_2.yz % vec2<u32>(32u))), ~arg_2.zx & _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_2.x, arg_2.x), _wgslsmith_mod_u32(arg_2.x, arg_2.x)), ~vec2<u32>(8942u, 20986u)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1382f - 1216f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-885f, _wgslsmith_f_op_f32(ceil(607f)), any(arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f * -540f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1460f, -1000f) + vec2<f32>(-629f, -885f))))))), abs(select(arg_2, _wgslsmith_add_vec4_u32(arg_2, arg_2 ^ vec4<u32>(arg_2.x, arg_2.x, 37798u, arg_2.x)), !vec4<bool>(false, arg_1.x, arg_3.x, false))));
    global1 = var_0.c.x;
    let var_1 = true;
    var var_2 = u_input.b < (max(-_wgslsmith_mod_i32(arg_0, -1i), arg_0) & abs(~u_input.b | -2147483647i));
    return Struct_2(1000f, vec2<bool>(!(!(!arg_3.x)), true));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_1, 7>();
    let var_0 = ~10415i;
    var var_1 = vec4<i32>(-_wgslsmith_div_i32(~select(arg_1.x, 2147483647i, false), i32(-1i) * -u_input.a), var_0, -_wgslsmith_add_i32(u_input.a, reverseBits(var_0)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-11633i, u_input.a)) >> (~vec2<u32>(1u, arg_2.c.x) % vec2<u32>(32u)), ~arg_1), u_input.a, -var_0));
    var_1 = vec4<i32>(-var_1.x, _wgslsmith_sub_i32(-22921i ^ -var_0, var_1.x), arg_1.x, arg_1.x);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(abs(arg_0.x)), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, false), vec2<bool>(true, true)), true));
    return func_5(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + _wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(func_2(var_1.x, var_0))), _wgslsmith_sub_i32(u_input.b, -8598i)), vec3<bool>((arg_2.c.x > arg_2.c.x) & select(285f > arg_2.b.x, var_2.b.x, all(vec2<bool>(true, false))), var_2.b.x, !all(vec4<bool>(false, true, var_2.b.x, var_2.b.x))), arg_2.c, select(!(!vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)), !(!vec3<bool>(true, false, var_2.b.x)), var_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0u;
    let var_1 = _wgslsmith_f_op_f32(ceil(-380f));
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, var_1))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1927f, var_1) + vec2<f32>(-102f, var_1))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1421f)))), vec2<i32>(-abs(-1i | u_input.b), u_input.b), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, 459f)) + var_1) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1200f, var_1) * vec2<f32>(-525f, var_1)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1161f) * vec2<f32>(888f, var_1)))), ~firstLeadingBit(vec4<u32>(9673u, 10206u, 1u, 25451u))));
    let var_3 = func_5(firstLeadingBit(u_input.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 9195i, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(u_input.b, -43890i, 33503i)))), !vec3<bool>(any(vec4<bool>(false, var_2.b.x, var_2.b.x, var_2.b.x)), any(select(vec4<bool>(var_2.b.x, var_2.b.x, false, false), vec4<bool>(true, true, var_2.b.x, true), true)), func_1(vec2<f32>(352f, 700f), vec2<i32>(u_input.a, -16880i), Struct_1(-590f, vec2<f32>(var_2.a, 995f), vec4<u32>(260u, 28999u, 4294967295u, 40593u))).a >= _wgslsmith_f_op_f32(-var_1)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(abs(13887u), ~28913u, ~0u, 49004u), vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(75975u, 27042u), vec2<u32>(4294967295u, 4294967295u)), ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(81894u, 23348u), vec2<u32>(17217u, 64375u)))), !(!vec3<bool>(var_2.b.x, var_1 > 516f, var_2.b.x)));
    var var_4 = -66241i;
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a - var_3.a))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -1517f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(913f, var_3.a)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2240f), _wgslsmith_f_op_f32(round(var_3.a)))), vec2<f32>(711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a)))))), vec4<u32>(5795u, _wgslsmith_mult_u32(~reverseBits(3208u), 1u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 0u), vec2<u32>(7453u, 21200u), var_3.b.x) | vec2<u32>(1u, 1u), max(vec2<u32>(0u, 4294967295u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), abs(vec2<u32>(1872u, 27407u)))), abs(1u)));
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, var_5.c.x), vec2<u32>(var_5.c.x, 8347u), true), _wgslsmith_mod_vec2_u32(var_5.c.xy, var_5.c.yz)), abs(~vec2<u32>(4294967295u, 4294967295u))), var_5.c.x, ~reverseBits(var_5.c.x), var_5.c.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(var_5.c, ~(vec4<u32>(1u, 1u, var_5.c.x, var_5.c.x) >> (vec4<u32>(30499u, 8454u, var_5.c.x, var_5.c.x) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(var_5.c), _wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 53807u, 1u, 4294967295u), var_5.c, var_2.b.x), var_5.c | var_5.c), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), var_5.c)), vec4<u32>(_wgslsmith_dot_vec4_u32(var_5.c, ~var_5.c), ~0u, ~(~53671u), ~19025u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, 237f, var_5.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a, 796f, var_2.a), vec3<f32>(-1000f, var_1, -1178f), vec3<bool>(true, false, var_2.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a, var_3.a, var_1), vec3<f32>(-1000f, -943f, -246f), vec3<bool>(false, var_2.b.x, false)))), select(!vec3<bool>(var_3.b.x, var_3.b.x, var_3.b.x), select(vec3<bool>(var_2.b.x, var_3.b.x, var_2.b.x), vec3<bool>(var_2.b.x, true, var_3.b.x), var_3.b.x), vec3<bool>(true, true, true))))), _wgslsmith_sub_vec4_i32(((vec4<i32>(u_input.b, -62465i, 2147483647i, -2147483647i) << (vec4<u32>(69890u, var_5.c.x, 18944u, 43868u) % vec4<u32>(32u))) ^ ~vec4<i32>(10199i, 12002i, 1i, u_input.a)) >> (vec4<u32>(var_5.c.x, _wgslsmith_div_u32(42342u, var_5.c.x), var_5.c.x, var_5.c.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-13107i, ~(-2147483647i), select(u_input.b, 11738i, var_2.b.x), ~u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -12381i, u_input.b, u_input.a) >> (vec4<u32>(var_5.c.x, 6976u, 4294967295u, var_5.c.x) % vec4<u32>(32u)), -vec4<i32>(-76731i, u_input.b, u_input.a, u_input.b), select(vec4<i32>(-2147483647i, u_input.b, 1i, 9180i), vec4<i32>(15958i, u_input.a, 30021i, u_input.b), true)))), vec2<u32>(min(1u, var_5.c.x), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_5.c.x, ~var_5.c.x, ~1976u), firstTrailingBit(45120u & var_5.c.x))));
}

