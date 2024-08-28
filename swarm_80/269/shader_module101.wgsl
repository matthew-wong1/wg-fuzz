struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<bool> {
    global0 = 13137u;
    let var_0 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(704f, 1731f, false)) * _wgslsmith_f_op_f32(floor(-601f))), _wgslsmith_f_op_f32(-583f - _wgslsmith_f_op_f32(abs(577f))), 786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-557f)) - 1269f)), -(~reverseBits(vec3<i32>(24805i, -2147483647i, -68691i)))), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), select(16499u, u_input.a, true)), vec2<u32>(u_input.a, ~26743u))), -333f);
    let var_1 = var_0.a;
    let var_2 = ~(_wgslsmith_mod_vec4_i32(abs(-vec4<i32>(15823i, 1i, var_0.a.b.x, -28094i)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(-29923i, -14248i, var_1.b.x, -1i), vec4<i32>(var_0.a.b.x, var_1.b.x, u_input.b, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.a.b.x, 1i, 50541i), vec4<i32>(u_input.b, var_1.b.x, var_1.b.x, var_1.b.x), vec4<i32>(u_input.b, var_1.b.x, var_0.a.b.x, -2147483647i)), countOneBits(vec4<i32>(var_1.b.x, var_1.b.x, u_input.b, var_1.b.x)))) >> (~(~vec4<u32>(var_0.b, var_0.b, var_0.b, 4294967295u)) % vec4<u32>(32u)));
    global0 = _wgslsmith_dot_vec3_u32(select(vec3<u32>((var_0.b | 0u) ^ (4294967295u ^ var_0.b), u_input.a, abs(var_0.b ^ 1u)), ~(~(~vec3<u32>(var_0.b, var_0.b, var_0.b))), vec3<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_div_u32(u_input.a, 36700u) != firstLeadingBit(4294967295u), select(true, false, u_input.a < u_input.a))), firstLeadingBit(vec3<u32>(1u, max(var_0.b, var_0.b), _wgslsmith_add_u32(27301u, u_input.a)) & vec3<u32>(1u, u_input.a, u_input.a)));
    return select(vec2<bool>(true, true), vec2<bool>(true, true), false);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = select(select(select(!vec4<bool>(true, true, arg_1, arg_1), select(select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(false, true, arg_1, arg_1), false), select(vec4<bool>(true, true, true, arg_1), vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(arg_1, true, false, arg_1)), vec4<bool>(arg_1, arg_1, true, arg_1)), u_input.a >= ~u_input.a), vec4<bool>(!all(vec2<bool>(true, arg_1)), false, !(!arg_1), all(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, arg_1, arg_1), arg_1))), !vec4<bool>(select(true, false, arg_1), true & arg_1, any(vec3<bool>(arg_1, arg_1, true)), false)), select(vec4<bool>(true && (false || arg_1), false, u_input.a > 1u, false), !(!vec4<bool>(true, arg_1, true, arg_1)), true), arg_1);
    let var_2 = -var_0.b.x;
    global0 = u_input.a;
    let var_3 = _wgslsmith_clamp_vec3_i32(arg_0.b, -min(vec3<i32>(var_0.b.x, var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, arg_0.b.x, 0i), vec3<i32>(u_input.b, -1i, u_input.b))), _wgslsmith_mod_vec3_i32(vec3<i32>(-9170i, var_2, var_2), _wgslsmith_sub_vec3_i32(var_0.b, var_0.b))), arg_0.b);
    return select(func_3(), vec2<bool>(!(arg_0.a.x == arg_0.a.x), !var_1.x), !(!all(vec2<bool>(false, false))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = !select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))), arg_1.a.a.x <= -159f), vec4<bool>(false, all(func_2(Struct_1(vec4<f32>(arg_1.a.a.x, arg_1.a.a.x, arg_0, -107f), arg_1.a.b), false, arg_1.c)), u_input.b != firstLeadingBit(u_input.b), func_2(Struct_1(arg_1.a.a, vec3<i32>(arg_1.a.b.x, -1298i, 0i)), false, arg_0).x));
    return ~4294967295u;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_3 {
    global0 = arg_0.x;
    global0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~14424u, countOneBits(~u_input.a)), vec3<u32>((1u ^ u_input.a) & ~1u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_0.x, arg_0.x)), _wgslsmith_mod_vec2_u32(arg_0.zx, arg_0.yx)), arg_0.x));
    global0 = _wgslsmith_add_u32(40506u, ~_wgslsmith_sub_u32(~_wgslsmith_add_u32(arg_0.x, arg_0.x), u_input.a));
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1094f, arg_1.b.a.x, arg_1.d.a.x, arg_1.a.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a.x, arg_1.d.a.x, arg_1.b.a.x, 1000f))), arg_1.d.a)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1.a.a.x, 193f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(109f, var_0.x, arg_1.e.x)), _wgslsmith_div_f32(-176f, arg_1.b.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d.a.x))), _wgslsmith_f_op_f32(-var_0.x))), ~arg_1.c.yxw);
    return Struct_3(arg_1.b, u_input.a, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<u32>((u_input.a << (u_input.a % 32u)) | 12358u, 1127u, max(u_input.a, func_1(-144f, Struct_3(Struct_1(vec4<f32>(-2228f, -383f, 1179f, 1433f), vec3<i32>(0i, u_input.b, u_input.b)), 4282u, -1001f), u_input.a, 4294967295u))) | ~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 66055u), vec3<u32>(u_input.a, 23056u, 0u)), vec3<u32>(u_input.a, 45760u, u_input.a)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(741f, 413f, 476f, 1000f)))), reverseBits(~vec3<i32>(-34929i, 0i, u_input.b))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1450f, 1049f, 1623f, -109f)) - vec4<f32>(-264f, 1171f, -906f, 690f)), reverseBits(vec3<i32>(0i, u_input.b, 1i))), vec4<i32>(-abs(-2147483647i), u_input.b, 1i, 0i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1289f, 496f, -1548f, -1112f))), ~select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<bool>(false, false, true))), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)))));
    var_0 = Struct_3(var_0.a, 877u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.a.x))), var_0.c));
    var var_1 = Struct_2(func_4(reverseBits((vec3<u32>(u_input.a, 0u, u_input.a) | vec3<u32>(32279u, u_input.a, 38078u)) >> ((vec3<u32>(4294967295u, 0u, 27485u) | vec3<u32>(67986u, var_0.b, 0u)) % vec3<u32>(32u))), Struct_2(var_0.a, func_4(~vec3<u32>(var_0.b, var_0.b, u_input.a), Struct_2(Struct_1(var_0.a.a, var_0.a.b), var_0.a, vec4<i32>(2147483647i, 16766i, var_0.a.b.x, u_input.b), var_0.a, vec4<bool>(false, true, true, true))).a, vec4<i32>(~(-3257i), 1i, -u_input.b, 1i), var_0.a, vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), func_2(Struct_1(var_0.a.a, vec3<i32>(var_0.a.b.x, 11366i, -2147483647i)), false, var_0.c).x))).a, Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.a + var_0.a.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(815f, 753f, 1632f, var_0.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.a.a.x, 258f, 622f))))), var_0.a.b), _wgslsmith_mod_vec4_i32(max(-vec4<i32>(-36637i, var_0.a.b.x, 2147483647i, u_input.b), vec4<i32>(-36992i, -2485i, u_input.b, u_input.b) | vec4<i32>(-1i, 2147483647i, u_input.b, -2529i)) & vec4<i32>(-var_0.a.b.x, -19147i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.b.x, 2147483647i), var_0.a.b.yy), u_input.b), vec4<i32>(u_input.b, var_0.a.b.x, 1i, -2147483647i)), func_4(vec3<u32>(38844u, ~var_0.b, func_4(vec3<u32>(u_input.a, 0u, var_0.b), Struct_2(Struct_1(vec4<f32>(-1631f, 844f, -557f, -611f), vec3<i32>(u_input.b, var_0.a.b.x, 2147483647i)), Struct_1(var_0.a.a, var_0.a.b), vec4<i32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, u_input.b), Struct_1(vec4<f32>(var_0.a.a.x, var_0.c, var_0.c, var_0.c), var_0.a.b), vec4<bool>(false, true, true, false))).b) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_0.b, u_input.a), vec3<u32>(var_0.b, u_input.a, 4294967295u), vec3<u32>(70708u, 57200u, u_input.a)), Struct_2(func_4(vec3<u32>(u_input.a, 31737u, 8917u) << (vec3<u32>(var_0.b, var_0.b, u_input.a) % vec3<u32>(32u)), Struct_2(var_0.a, Struct_1(var_0.a.a, vec3<i32>(2147483647i, 16326i, 2147483647i)), vec4<i32>(-20064i, u_input.b, 0i, var_0.a.b.x), var_0.a, vec4<bool>(false, true, true, true))).a, func_4(~vec3<u32>(u_input.a, var_0.b, 1u), Struct_2(var_0.a, var_0.a, vec4<i32>(-21181i, 2147483647i, u_input.b, -2147483647i), var_0.a, vec4<bool>(true, true, true, true))).a, vec4<i32>(59405i, 0i, u_input.b, var_0.a.b.x) << (max(vec4<u32>(13917u, 15211u, u_input.a, var_0.b), vec4<u32>(27058u, u_input.a, 36045u, u_input.a)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a.a), var_0.a.b), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)))).a, vec4<bool>(-(~26686i) < select(-997i, u_input.b & u_input.b, func_3().x), (var_0.c <= func_4(vec3<u32>(7267u, 1u, var_0.b), Struct_2(Struct_1(var_0.a.a, vec3<i32>(0i, -1i, u_input.b)), var_0.a, vec4<i32>(u_input.b, var_0.a.b.x, -1i, -1i), Struct_1(var_0.a.a, var_0.a.b), vec4<bool>(true, false, false, true))).c) || !func_3().x, true, false));
    var_0 = func_4(countOneBits(vec3<u32>(u_input.a, _wgslsmith_sub_u32(var_0.b, abs(4294967295u)), ~1u)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, var_1.a.a.x, var_0.c, var_1.b.a.x)), -(~vec3<i32>(-2147483647i, 1i, var_0.a.b.x))), var_1.a, -_wgslsmith_add_vec4_i32(vec4<i32>(28296i, 21472i, var_0.a.b.x, var_1.a.b.x), var_1.c), func_4(~max(vec3<u32>(u_input.a, 1u, var_0.b), vec3<u32>(u_input.a, 24393u, 0u)), Struct_2(func_4(vec3<u32>(68298u, 4294967295u, 4294967295u), Struct_2(Struct_1(var_0.a.a, vec3<i32>(var_1.a.b.x, -20594i, 0i)), Struct_1(var_1.a.a, vec3<i32>(1i, 0i, 7576i)), vec4<i32>(2147483647i, -24277i, u_input.b, -31842i), Struct_1(vec4<f32>(var_1.a.a.x, var_0.c, var_1.a.a.x, -369f), var_1.c.zyw), var_1.e)).a, Struct_1(var_1.a.a, vec3<i32>(u_input.b, -11976i, -1i)), -var_1.c, Struct_1(var_1.b.a, vec3<i32>(var_0.a.b.x, -25477i, -19852i)), vec4<bool>(true, false, false, false))).a, !vec4<bool>(true, func_3().x, false || var_1.e.x, func_2(var_1.a, true, 1000f).x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(399f, _wgslsmith_div_f32(var_1.b.a.x, -117f), -1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(426f + var_1.b.a.x), -645f, 1f), vec3<f32>(var_0.a.a.x, 1041f, _wgslsmith_f_op_f32(step(var_0.c, 230f))), !vec3<bool>(var_1.e.x, var_1.e.x, false)))));
    var_1 = Struct_2(var_0.a, var_0.a, ~abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 30378i, 45948i, u_input.b), vec4<i32>(-48139i, 0i, var_0.a.b.x, 1i))) << (_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 5880u, 50381u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 78902u, var_0.b), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) | ~vec4<u32>(4294967295u, 10935u, 9184u, 15101u)) % vec4<u32>(32u)), func_4(vec3<u32>(~var_0.b, abs(u_input.a), u_input.a) ^ vec3<u32>(~var_0.b, func_1(-1595f, Struct_3(Struct_1(var_0.a.a, vec3<i32>(var_1.a.b.x, var_1.d.b.x, var_1.a.b.x)), u_input.a, 568f), u_input.a, 84545u), 1u), Struct_2(var_1.b, var_1.b, firstTrailingBit(firstLeadingBit(var_1.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1856f, -473f, -847f)), var_1.b.b), var_1.e)).a, vec4<bool>(!((var_1.e.x || var_1.e.x) || (var_1.e.x & false)), false, var_0.b > (1009u | reverseBits(u_input.a)), var_1.e.x));
    var_1 = Struct_2(func_4(~vec3<u32>(45456u, ~0u, var_0.b), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a.a - var_1.b.a), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(var_0.a.b.x, var_0.a.b.x, -25605i))), var_0.a, var_1.c & var_1.c, Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a.a), vec3<i32>(u_input.b, u_input.b, -3202i) | vec3<i32>(var_1.a.b.x, var_1.b.b.x, var_0.a.b.x)), vec4<bool>(var_1.e.x, true, var_1.e.x, false))).a, func_4(min(vec3<u32>(0u, var_0.b, 30872u), vec3<u32>(18491u, 16041u, 16251u)) << (~vec3<u32>(var_0.b, 64229u, u_input.a) % vec3<u32>(32u)), Struct_2(var_0.a, func_4(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, var_0.b, u_input.a), vec3<u32>(var_0.b, 2767u, u_input.a)), Struct_2(var_1.d, Struct_1(vec4<f32>(1933f, -2053f, 346f, var_1.b.a.x), vec3<i32>(-1i, var_1.d.b.x, var_0.a.b.x)), vec4<i32>(u_input.b, var_0.a.b.x, var_1.b.b.x, -952i), Struct_1(var_1.d.a, vec3<i32>(2147483647i, var_1.a.b.x, u_input.b)), var_1.e)).a, select(vec4<i32>(u_input.b, var_0.a.b.x, 1i, 1i), ~vec4<i32>(u_input.b, 0i, var_0.a.b.x, 1i), var_1.e), var_0.a, var_1.e)).a, var_1.c, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d.a)), countOneBits(vec3<i32>(countOneBits(10287i), _wgslsmith_sub_i32(u_input.b, -2147483647i), -2147483647i))), vec4<bool>(false, false, true, select(true, func_3().x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~vec4<u32>(u_input.a, u_input.a, var_0.b, 9857u)) ^ min(reverseBits(vec4<u32>(var_0.b, var_0.b, 1u, u_input.a)), ~vec4<u32>(3296u, 1u, 4294967295u, 4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(569f, 599f)) + -1377f))), _wgslsmith_f_op_f32(min(887f, -251f))), _wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(-67244i), u_input.b, -(~17932i), firstLeadingBit(_wgslsmith_add_i32(var_0.a.b.x, 3440i))), ~_wgslsmith_mod_vec4_i32(~var_1.c, vec4<i32>(var_1.b.b.x, var_1.d.b.x, 23335i, 9216i)), var_1.c), min(vec4<u32>(var_0.b, _wgslsmith_mod_u32(abs(u_input.a), firstLeadingBit(113651u)), 68307u, var_0.b & min(44850u, u_input.a)), ~firstTrailingBit(vec4<u32>(var_0.b, 1440u, u_input.a, 1u) & vec4<u32>(var_0.b, 0u, u_input.a, u_input.a))), _wgslsmith_sub_vec2_i32(vec2<i32>(~(var_0.a.b.x | 0i), _wgslsmith_sub_i32(-u_input.b, var_1.a.b.x)), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_1.a.b.x), vec2<i32>(var_1.d.b.x, -16722i))) << (reverseBits(~vec2<u32>(var_0.b, var_0.b)) % vec2<u32>(32u))));
}

