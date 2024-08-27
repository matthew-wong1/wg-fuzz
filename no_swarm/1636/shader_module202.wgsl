struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<i32>(-3190i, -7620i, -1i), Struct_1(60029i, vec2<u32>(45721u, 81328u), 76538u), -376f, false), Struct_2(vec3<i32>(46406i, 1i, 1i), Struct_1(-38454i, vec2<u32>(0u, 0u), 4294967295u), 683f, false), Struct_2(vec3<i32>(0i, 48854i, 1i), Struct_1(2147483647i, vec2<u32>(50981u, 3379u), 0u), 1000f, false), Struct_2(vec3<i32>(i32(-2147483648), 1i, -49500i), Struct_1(2147483647i, vec2<u32>(4294967295u, 43170u), 1u), -768f, true), Struct_2(vec3<i32>(-44201i, 29365i, -1i), Struct_1(-8698i, vec2<u32>(1u, 4294967295u), 1u), -670f, true), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), Struct_1(-68938i, vec2<u32>(4294967295u, 18304u), 4294967295u), 875f, false), Struct_2(vec3<i32>(24519i, 3571i, -1i), Struct_1(i32(-2147483648), vec2<u32>(1u, 43350u), 46788u), -2230f, false), Struct_2(vec3<i32>(-3279i, i32(-2147483648), 0i), Struct_1(24025i, vec2<u32>(14160u, 0u), 4294967295u), 1000f, false), Struct_2(vec3<i32>(1i, 1i, -422i), Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 109258u), 27720u), -461f, false), Struct_2(vec3<i32>(i32(-2147483648), 1i, 0i), Struct_1(20430i, vec2<u32>(1u, 0u), 4294967295u), -592f, false), Struct_2(vec3<i32>(4697i, -104691i, -13472i), Struct_1(1i, vec2<u32>(19563u, 39022u), 0u), -1485f, false), Struct_2(vec3<i32>(i32(-2147483648), 0i, 2147483647i), Struct_1(8364i, vec2<u32>(25077u, 3008u), 18640u), -207f, true), Struct_2(vec3<i32>(1i, -3599i, 0i), Struct_1(-31196i, vec2<u32>(4294967295u, 4294967295u), 43636u), 308f, true), Struct_2(vec3<i32>(-18761i, -1i, 0i), Struct_1(69612i, vec2<u32>(4294967295u, 1u), 0u), -332f, false), Struct_2(vec3<i32>(-36864i, 2147483647i, -1i), Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 4294967295u), 41507u), 612f, false), Struct_2(vec3<i32>(0i, 1i, 0i), Struct_1(-31552i, vec2<u32>(4294967295u, 32351u), 4294967295u), 446f, true), Struct_2(vec3<i32>(-29924i, 2147483647i, 2147483647i), Struct_1(0i, vec2<u32>(4390u, 4294967295u), 71698u), 967f, true), Struct_2(vec3<i32>(51282i, -5210i, -36280i), Struct_1(1i, vec2<u32>(12837u, 1u), 4294967295u), 1334f, true), Struct_2(vec3<i32>(1i, 1i, -32860i), Struct_1(-7102i, vec2<u32>(19096u, 79890u), 0u), -951f, true));

var<private> global2: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(1i, vec2<u32>(u_input.b, 7525u), ~select(countOneBits(u_input.b), u_input.b, all(global2.ww)) >> (~4294967295u % 32u));
    let var_1 = global1[_wgslsmith_index_u32(46465u, 19u)];
    let var_2 = _wgslsmith_mod_u32(select(~abs(0u), 4294967295u >> ((~8283u | _wgslsmith_mod_u32(13962u, u_input.d)) % 32u), any(vec4<bool>(var_1.d, var_1.d && var_1.d, all(vec3<bool>(true, var_1.d, true)), var_1.c > -1000f))), ~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(72867u, 45385u), abs(27117u)));
    let var_3 = -114f;
    let var_4 = var_1.b;
    return ~(var_0.a ^ _wgslsmith_sub_i32(-(global0.x ^ 20976i), _wgslsmith_add_i32(var_1.b.a | -1i, var_0.a << (0u % 32u))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = arg_3;
    var var_1 = Struct_2(select(~(-arg_0.a), vec3<i32>(i32(-1i) * -1i, select(-16487i >> (var_0.b.x % 32u), 2147483647i, true), ~(global0.x >> (arg_0.b.c % 32u))), arg_1), Struct_1(var_0.a, arg_3.b, 4294967295u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1755f)), global2.x);
    var_0 = Struct_1(func_3(), arg_3.b, _wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(reverseBits(arg_2), u_input.e), ~(5658u | arg_2), 18391u)));
    var_1 = Struct_2(arg_0.a, Struct_1(firstLeadingBit(~(-2147483647i)), arg_0.b.b, ~(firstTrailingBit(19426u) & arg_3.b.x)), _wgslsmith_f_op_f32(round(arg_0.c)), arg_1);
    var var_2 = abs(var_0.b);
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(1596f)), 1647f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(f32(-1f) * -510f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_0.c)))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    return arg_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = 4294967295u;
    let var_1 = Struct_2(max(_wgslsmith_mod_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 21733i, arg_1.b.a), vec3<i32>(0i, global0.x, arg_1.b.a)), u_input.c ^ u_input.c, global2.xxx), ~vec3<i32>(u_input.c.x, -1i, global0.x)), vec3<i32>(~arg_1.a.x, arg_2, 0i)), func_4(Struct_1(select(-arg_3.a, reverseBits(-1081i), false), ~(~vec2<u32>(10586u, arg_0.x)), 16025u), arg_1.b.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(arg_1, true, select(4294967295u, u_input.d, global2.x), arg_3)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.c, arg_1.c, -104f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, arg_1.c, 143f))))), arg_1.c, !(all(vec2<bool>(true, true)) == !(!global2.x)));
    global0 = vec3<i32>(~(~var_1.b.a & 15721i), ~1i, 4135i);
    let var_2 = global2.xyz;
    var var_3 = var_1;
    return reverseBits(func_4(arg_1.b, var_3.b.c & firstLeadingBit(29946u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, var_1.c, 488f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(324f, var_1.c, 833f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-164f, 541f, 285f)))))).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(~(~abs(vec3<u32>(1u, 4294967295u, 1695u)) & vec3<u32>(u_input.e, _wgslsmith_sub_u32(u_input.b, u_input.e), u_input.b)), (vec3<u32>(u_input.d, _wgslsmith_clamp_u32(29310u, u_input.d, 0u), _wgslsmith_sub_u32(110233u, 67061u)) ^ vec3<u32>(reverseBits(4294967295u), u_input.d, u_input.a)) & ~vec3<u32>(func_1(vec2<u32>(21138u, 1u), Struct_2(u_input.c, Struct_1(-1i, vec2<u32>(43429u, u_input.d), u_input.b), -1101f, global2.x), global0.x, Struct_1(-16239i, vec2<u32>(u_input.b, u_input.b), u_input.a)), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 68878u), vec3<u32>(11779u, u_input.b, u_input.a))));
    global2 = !select(!(!select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, true, global2.x), false)), select(!vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(true, global2.x, global2.x | global2.x, false), select(select(vec4<bool>(global2.x, true, true, true), vec4<bool>(global2.x, false, global2.x, false), global2.x), select(vec4<bool>(true, false, global2.x, false), vec4<bool>(false, global2.x, global2.x, true), vec4<bool>(false, false, global2.x, true)), !global2.x)), (u_input.b >> (~8869u % 32u)) >= select(~13676u, var_0.x, true));
    global2 = !(!select(vec4<bool>(true, global2.x, global2.x | global2.x, false), !(!vec4<bool>(global2.x, true, true, global2.x)), vec4<bool>(false, global0.x < global0.x, true, any(global2.wx))));
    var var_1 = var_0;
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 19u)];
    let var_3 = _wgslsmith_f_op_f32(step(var_2.c, -2556f));
    let var_4 = Struct_2(_wgslsmith_add_vec3_i32(-u_input.c, vec3<i32>(u_input.c.x, firstLeadingBit(-19475i) | (-3124i ^ var_2.b.a), ~var_2.b.a)), Struct_1(func_3(), ~(~var_1.yz), var_2.b.b.x), -778f, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(-1739f, _wgslsmith_f_op_f32(var_4.c - _wgslsmith_f_op_f32(var_2.c + var_4.c)))), 513f, -836f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(261f - 430f), _wgslsmith_f_op_f32(round(var_3))))))), abs(min(vec2<u32>(~var_1.x, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(5233u, var_4.b.c), var_2.b.b >> (vec2<u32>(var_0.x, var_1.x) % vec2<u32>(32u)), var_0.xz))));
}

