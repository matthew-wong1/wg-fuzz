struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(false, vec4<i32>(15391i, 38363i, 22785i, -15486i), vec4<i32>(1303i, i32(-2147483648), 5071i, i32(-2147483648)), true), vec3<bool>(false, false, false));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_add_vec4_i32(~(-vec4<i32>(-1i, 1i, -9605i, u_input.a.x)) << (~_wgslsmith_mult_vec4_u32(~vec4<u32>(27230u, 0u, 4294967295u, 4294967295u), abs(vec4<u32>(1u, 1u, 72158u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(2775i, max(0i, global0.a.b.x), 62708i, max(-1i, arg_0.x)), arg_0));
    global0 = Struct_4(Struct_1(true, global0.a.b, _wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, 0i, -63511i, -18862i) ^ vec4<i32>(-2147483647i, -46697i, global0.a.b.x, u_input.a.x), arg_0, vec4<i32>(1i, -1i, -15093i, 0i) | _wgslsmith_add_vec4_i32(global0.a.c, arg_0)), global0.a.a), global0.b);
    var var_1 = Struct_4(global0.a, select(!select(global0.b, vec3<bool>(true, true, global0.b.x), select(vec3<bool>(true, false, global0.a.d), global0.b, vec3<bool>(global0.a.a, true, global0.b.x))), select(vec3<bool>(true, global0.b.x, global0.a.d), select(global0.b, global0.b, vec3<bool>(true, global0.b.x, true)), global0.b), vec3<bool>(any(select(vec3<bool>(false, true, global0.b.x), global0.b, vec3<bool>(false, false, false))), all(select(vec4<bool>(true, false, global0.a.a, false), vec4<bool>(false, global0.b.x, true, false), vec4<bool>(global0.b.x, global0.a.d, false, global0.b.x))), true)));
    var_1 = Struct_4(global0.a, vec3<bool>(true, !global0.a.d | false, false));
    var_1 = Struct_4(Struct_1(any(!(!vec4<bool>(true, var_1.a.d, global0.a.d, true))), vec4<i32>(-1i, arg_0.x << (1u % 32u), _wgslsmith_clamp_i32(var_1.a.c.x, -2147483647i, 43152i), u_input.a.x) | firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, var_0.x, global0.a.b.x), arg_0)), global0.a.b, var_1.b.x), !(!(!select(vec3<bool>(global0.a.d, var_1.a.a, var_1.b.x), var_1.b, vec3<bool>(true, var_1.a.a, true)))));
    return ~firstLeadingBit(0u);
}

fn func_2() -> vec3<u32> {
    var var_0 = 988f;
    global0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(983f - -458f), _wgslsmith_f_op_f32(-507f * -1035f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2179f))), firstLeadingBit(firstLeadingBit(countOneBits(global0.a.b))), ~global0.a.b, true), !vec3<bool>(false, true, any(global0.b.yx)));
    var var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, countOneBits(1u), 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 1u));
    let var_2 = ~u_input.a.x;
    let var_3 = vec2<u32>(~(~_wgslsmith_mod_u32(~var_1.x, 18152u)), abs(select(func_3(vec4<i32>(u_input.a.x, 66639i, 1i, 1i)), 4294967295u, global0.a.a)));
    return vec3<u32>(firstLeadingBit(21926u), var_3.x, ~(var_1.x << (~(~4294967295u) % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x | 2147483647i, -24881i, countOneBits(52384i), _wgslsmith_mod_i32(-1i, -2147483647i)), global0.a.c), arg_3), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1976f)), _wgslsmith_f_op_f32(floor(-386f)), all(vec4<bool>(false, true, false, false)) || true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1369f) + -181f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(498f, -583f)) * _wgslsmith_f_op_f32(f32(-1f) * -2404f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-847f - 506f), _wgslsmith_f_op_f32(min(-335f, -609f)), global0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-259f * 731f))), -2191f), global0.a);
    return Struct_4(global0.a, vec3<bool>(any(!vec4<bool>(false, global0.a.a, var_0.c.a, false)), true, false));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_4 {
    let var_0 = select(select(max(reverseBits(_wgslsmith_div_vec4_i32(global0.a.b, global0.a.b)), reverseBits(vec4<i32>(global0.a.c.x, global0.a.b.x, global0.a.b.x, u_input.a.x) ^ global0.a.b)), global0.a.b, select(!(!vec4<bool>(global0.b.x, true, arg_0.x, arg_0.x)), !select(vec4<bool>(false, false, true, global0.a.d), vec4<bool>(true, true, false, true), vec4<bool>(global0.a.a, global0.a.d, true, false)), !vec4<bool>(true, arg_0.x, true, false))), firstTrailingBit(vec4<i32>(-max(u_input.a.x, -25836i), u_input.a.x, -(~global0.a.c.x), -11129i)), global0.b.x);
    let var_1 = var_0.xz;
    global0 = func_4(Struct_3(func_2()), Struct_3(vec3<u32>(1u, ~_wgslsmith_add_u32(0u, 4294967295u), ~func_3(var_0))), min(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(69657u, 1u, 336u, 94740u)), vec4<u32>(1u, 1u, 1u, 1u)), 0u), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_0.x, var_0.x, global0.a.c.x, 1i) << (~countOneBits(vec4<u32>(4294967295u, 84527u, 43113u, 0u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(reverseBits(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 1i, -35947i))), global0.a.b)));
    global0 = func_4(Struct_3(vec3<u32>(_wgslsmith_sub_u32(~0u, ~8711u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 17370u), func_2().yz), 7281u)), Struct_3(_wgslsmith_add_vec3_u32(abs(vec3<u32>(44656u, 1u, 21274u)), countOneBits(vec3<u32>(1u, 1u, 1u)))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 4294967295u, 0u)), select(vec3<u32>(9958u, 60764u, 1u), ~vec3<u32>(31147u, 4294967295u, 1u), any(vec4<bool>(arg_0.x, true, true, true)))) << (~firstTrailingBit(1u) % 32u), ~vec4<i32>(-2147483647i, -global0.a.c.x, -_wgslsmith_add_i32(1i, var_0.x), _wgslsmith_mod_i32(1i, reverseBits(1i))));
    return func_4(Struct_3(~countOneBits(vec3<u32>(1u, 1u, 1u))), Struct_3(max(~(~vec3<u32>(0u, 58525u, 16358u)), ~(~vec3<u32>(62684u, 54739u, 0u)))), ~(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(20315u, 1u)), vec2<u32>(14184u, 4294967295u)) | 1u), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x | 1i, -2147483647i, var_1.x, _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(global0.a.b.x, u_input.a.x, 2147483647i, -24692i))), ~global0.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(797f, -353f))))), vec2<f32>(-145f, -155f)))));
    var var_0 = global0.a.d;
    var var_1 = Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global0.a.b.zxz, vec3<i32>(u_input.a.x, u_input.a.x, 47673i)), global0.a.c.x, -33652i), select(vec3<i32>(global0.a.c.x, u_input.a.x, global0.a.c.x), ~vec3<i32>(-2147483647i, 1i, u_input.a.x), func_1(global0.b, vec2<f32>(-1451f, 482f)).b)), -19618i, max(u_input.a.x, abs(global0.a.b.x)), func_1(global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1307f, 1616f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(957f, -146f) + vec2<f32>(517f, -710f)))).a.c.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(428f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1040f - 192f) - 605f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(402f, 1930f, true)) + -799f), 1155f))), global0.a);
    var var_2 = var_1.b.x;
    var_0 = false;
    let var_3 = Struct_2(min(~(-global0.a.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.c.x, -1i, global0.a.c.x, 8627i), vec4<i32>(u_input.a.x, 1i, u_input.a.x, 3058i), firstTrailingBit(global0.a.c))) << (~vec4<u32>(4294967295u, 1u, firstLeadingBit(4294967295u), 1u >> (0u % 32u)) % vec4<u32>(32u)), var_1.b, func_4(Struct_3(firstLeadingBit(vec3<u32>(1u, 1u, 1u))), Struct_3(vec3<u32>(~4294967295u, max(1u, 1143u), abs(117696u))), 1u, var_1.a).a);
    var_1 = var_3;
    var_1 = Struct_2(-vec4<i32>(-1i, abs(u_input.a.x ^ u_input.a.x), -21760i, var_3.c.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-469f, 1000f, var_3.b.x, var_3.b.x), vec4<f32>(var_1.b.x, -733f, var_3.b.x, var_1.b.x))) + vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x - var_3.b.x), _wgslsmith_f_op_f32(-1314f + -664f), _wgslsmith_f_op_f32(var_1.b.x + 1793f), _wgslsmith_div_f32(211f, -1741f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.b) - var_3.b)), global0.a);
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - -1653f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1451f))))));
}

