struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    global0 = 35627u;
    let var_0 = arg_0.b.xx;
    let var_1 = Struct_5(vec2<f32>(-649f, -1000f), arg_0.a, Struct_2(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), ~_wgslsmith_mult_u32(~4294967295u, max(0u, arg_0.a.x))), 6557u);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1505f, -665f), 934f, _wgslsmith_f_op_f32(sign(-1097f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.yz - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d))), 530f)) - _wgslsmith_f_op_vec2_f32(arg_0.c + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.a))))));
    return vec2<bool>(all(select(select(vec2<bool>(var_1.c.a.x, false), !var_1.c.a, var_1.c.a), var_1.c.a, select(select(var_1.c.a, vec2<bool>(var_1.c.a.x, false), var_1.c.a), vec2<bool>(false, var_1.c.a.x), select(var_1.c.a, var_1.c.a, var_1.c.a.x)))), true);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mult_vec4_i32(abs(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-5145i, 2147483647i, 25319i, 1i) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 21679u) % vec4<u32>(32u)), min(vec4<i32>(-2147483647i, -3492i, 34194i, 15567i), vec4<i32>(-18071i, -42389i, 3118i, -1i)), vec4<i32>(2147483647i, -15684i, -8372i, -11003i))), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(-2147483647i, 2147483647i, 16667i, 2147483647i) >> (vec4<u32>(61601u, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))), vec4<i32>(-37389i, 1i, 1i, -2147483647i) | vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, -1i, -20440i), _wgslsmith_mult_i32(2147483647i, 1i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 48729i, 1i, 3418i), vec4<i32>(-2147483647i, -21248i, 0i, 33426i)))));
    let var_1 = Struct_2(select(func_3(Struct_4(~vec3<u32>(22915u, 4294967295u, 4294967295u), -var_0.zzy, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-979f, 1999f))), _wgslsmith_f_op_f32(min(1000f, -146f)))), func_3(Struct_4(~vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<i32>(var_0.x, var_0.x, -47208i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(163f, -408f)), 999f)), false), (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(11644u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))) | u_input.a) | (0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 63366u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u) & vec4<u32>(u_input.a, u_input.a, u_input.a, 8295u)) % 32u)));
    var var_2 = vec4<u32>(u_input.a, var_1.b, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(39923u, 4294967295u, u_input.a, 74902u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 28898u, 78147u, u_input.a), vec4<u32>(u_input.a, 94079u, 0u, u_input.a))), vec4<u32>(var_1.b, u_input.a, 45804u, var_1.b) ^ (vec4<u32>(u_input.a, var_1.b, u_input.a, u_input.a) & vec4<u32>(28384u, 0u, 1u, 0u))), 17707u);
    var var_3 = select(!select(select(select(vec4<bool>(false, false, true, var_1.a.x), vec4<bool>(var_1.a.x, true, var_1.a.x, true), var_1.a.x), !vec4<bool>(false, var_1.a.x, var_1.a.x, true), vec4<bool>(false, true, var_1.a.x, var_1.a.x)), !(!vec4<bool>(true, var_1.a.x, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.a.x, false, false, true), !var_1.a.x)), !(!(!(!vec4<bool>(true, false, var_1.a.x, var_1.a.x)))), any(select(vec3<bool>(var_1.a.x, !var_1.a.x, var_1.a.x), !(!vec3<bool>(var_1.a.x, false, false)), vec3<bool>(!var_1.a.x, true, var_1.a.x))));
    var_2 = vec4<u32>(u_input.a, _wgslsmith_clamp_u32(~firstTrailingBit(44617u) | _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, 54030u), 1u), ~(~var_1.b) >> (1u % 32u), firstLeadingBit(4294967295u)), var_2.x, ~_wgslsmith_add_u32(~80817u, var_1.b));
    return -var_0.x;
}

fn func_1() -> i32 {
    global0 = 21123u;
    let var_0 = false;
    return ~(-69322i | firstTrailingBit(func_2()));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<i32>) -> vec3<i32> {
    global0 = max(~1u, countOneBits(abs(_wgslsmith_mult_u32(u_input.a, 0u) & ~23309u)));
    var var_0 = Struct_4((~(vec3<u32>(35778u, 1u, 20527u) & vec3<u32>(1u, 1u, u_input.a)) ^ firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 3236u, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)))) ^ vec3<u32>(u_input.a, firstTrailingBit(~25423u), select(u_input.a | 4294967295u, u_input.a, arg_1 > arg_1)), ~(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(arg_2.yxx, vec3<i32>(arg_2.x, arg_0, arg_2.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(arg_1 - 1784f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -1017f)))));
    let var_1 = Struct_3(Struct_2(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.a, 3338u, 86959u, var_0.a.x)), ~vec4<u32>(var_0.a.x, 71069u, u_input.a, u_input.a) >> ((vec4<u32>(1u, u_input.a, 60206u, var_0.a.x) ^ vec4<u32>(12563u, 70623u, u_input.a, 0u)) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 1301f, arg_1), vec3<f32>(-2521f, arg_1, var_0.c.x)))), ~_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(arg_2.wyw, arg_2.xxy), arg_2.zww)), 50215i);
    let var_2 = 4294967295u;
    var var_3 = _wgslsmith_div_vec4_i32(arg_2, vec4<i32>(~var_1.c, arg_2.x, arg_2.x, -arg_2.x));
    return var_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec3<u32>(u_input.a, u_input.a, u_input.a), ~func_4(func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1031f)) + -1830f), vec4<i32>(-1i, 1i, firstTrailingBit(-61264i), -2147483647i)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - 402f))), -812f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1218f + 108f)) + -465f))));
    var_0 = Struct_4(vec3<u32>((~var_0.a.x | 1u) ^ ~(~var_0.a.x), ~21973u, var_0.a.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(min(-74623i, var_0.b.x), ~var_0.b.x, var_0.b.x), vec3<i32>(2147483647i, 2453i, 29865i)), -1i, -(~1i) << (select(u_input.a, ~var_0.a.x, all(vec3<bool>(true, true, false))) % 32u)), vec2<f32>(var_0.d, 448f), _wgslsmith_f_op_f32(trunc(var_0.d)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, var_0.c.x), var_0.c, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))))), var_0.a, Struct_2(select(!func_3(Struct_4(vec3<u32>(57752u, 30033u, var_0.a.x), vec3<i32>(13133i, -19142i, -20681i), var_0.c, 608f)), vec2<bool>(true, var_0.b.x >= var_0.b.x), vec2<bool>(true, true)), 28432u), ~61016u);
    var var_2 = select(var_0.b.zz, func_4(max(-72111i, var_0.b.x), 144f, countOneBits(select(_wgslsmith_add_vec4_i32(vec4<i32>(18191i, 2147483647i, var_0.b.x, var_0.b.x), vec4<i32>(-52159i, 5993i, 88381i, 12893i)), vec4<i32>(0i, var_0.b.x, var_0.b.x, 0i), select(vec4<bool>(var_1.c.a.x, var_1.c.a.x, var_1.c.a.x, false), vec4<bool>(true, var_1.c.a.x, var_1.c.a.x, true), vec4<bool>(var_1.c.a.x, var_1.c.a.x, var_1.c.a.x, false))))).yx, !(!var_1.c.a.x));
    var var_3 = var_1.c.b;
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.c)));
    var_3 = u_input.a;
    var var_5 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, ~var_0.a.zx & countOneBits(firstLeadingBit(vec2<u32>(10929u, 56878u)) ^ var_0.a.yz));
}

