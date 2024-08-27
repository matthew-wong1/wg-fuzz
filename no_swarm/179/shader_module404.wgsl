struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<u32>,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    var var_0 = 591f;
    var_0 = 2664f;
    let var_1 = vec4<i32>(24744i, _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-28430i), select(_wgslsmith_dot_vec2_i32(vec2<i32>(6085i, 3615i), vec2<i32>(1i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -10143i)), false), abs(-1i) | _wgslsmith_add_i32(26276i, arg_1.x)), vec3<i32>(arg_1.x, -1i, arg_1.x)), _wgslsmith_mod_i32(30404i, _wgslsmith_div_i32(~u_input.a, -arg_1.x)), -1i);
    var_0 = -400f;
    return -1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_4(Struct_3(Struct_2(897f, Struct_1(-1098f, false, _wgslsmith_div_f32(190f, -1019f)), arg_0.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 2698u, 45106u), vec3<u32>(39541u, 0u, 1u)) % 32u), true)), (1u >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 32862u, 1u), 11856u, ~4294967295u) % 32u)) >> (~1u % 32u), vec3<u32>(58417u, select(~_wgslsmith_add_u32(23429u, 80928u), 58714u, true), 3751u), Struct_3(Struct_2(100f, Struct_1(-888f, all(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -1222f)), u_input.a | 0i, !(arg_1.x >= u_input.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1394f, 191f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1167f, -1445f), vec2<f32>(727f, -382f), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-492f, 1325f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1899f, -183f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-497f, 228f)))));
    let var_1 = var_0.a;
    var var_2 = var_1.a.c;
    var_2 = 2147483647i;
    var var_3 = ~_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(var_0.b, var_0.c.x), var_0.b | min(var_0.b, var_0.c.x)));
    return !select(vec4<bool>(true, !var_1.a.d, false, var_0.a.a.b.b), select(vec4<bool>(-7467i == var_0.a.a.c, true, var_0.d.a.b.c <= -440f, false), select(select(vec4<bool>(var_0.a.a.d, var_0.d.a.b.b, true, var_1.a.b.b), vec4<bool>(var_0.d.a.b.b, var_0.d.a.b.b, var_1.a.d, var_1.a.b.b), false), select(vec4<bool>(var_0.d.a.b.b, false, var_0.d.a.d, false), vec4<bool>(false, var_0.d.a.b.b, var_1.a.d, var_0.a.a.d), false), vec4<bool>(true, var_0.d.a.d, var_0.d.a.b.b, var_0.d.a.d)), !(!vec4<bool>(true, var_1.a.d, false, var_1.a.b.b))), !vec4<bool>(var_0.d.a.b.b, 22838u > var_0.b, true, false));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(752f, Struct_1(_wgslsmith_f_op_f32(ceil(-472f)), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(860f - -601f))))), u_input.a, true);
    let var_1 = 35145u;
    var var_2 = Struct_3(var_0);
    return func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c, -(~var_2.a.c), 1i, (i32(-1i) * -38945i) ^ var_0.c), vec4<i32>(func_3(var_2.a.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c, var_2.a.c), vec2<i32>(-1i, var_2.a.c), vec2<i32>(var_0.c, u_input.a)), 50672u), var_0.c, _wgslsmith_mod_i32(~2147483647i, abs(9703i)), 17674i)), select(firstLeadingBit(~(vec2<i32>(u_input.a, var_2.a.c) >> (vec2<u32>(var_1, 1u) % vec2<u32>(32u)))), -countOneBits(vec2<i32>(25377i, var_2.a.c)), select(select(vec2<bool>(true, var_2.a.b.b), !vec2<bool>(true, var_2.a.b.b), 10151u <= var_1), !(!vec2<bool>(var_0.d, false)), vec2<bool>(all(vec2<bool>(false, true)), var_0.d))));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(592f, 1000f, -1391f, -1000f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(970f, -963f, -2146f, -788f), vec4<f32>(640f, -831f, 1237f, 1354f), true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, -577f, 1327f, 324f)) + vec4<f32>(-564f, -1006f, -1806f, -1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(879f, -1918f, 245f, 1254f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 123f, 2322f, -1611f))), true)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2509f, -1969f, 1000f, 351f) * vec4<f32>(-1000f, 869f, 317f, 1000f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-184f, -112f, 156f, 415f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-691f, 222f, 125f, 471f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, -994f, -875f, 724f)))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(940f, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)))))), 405f, var_1.x, _wgslsmith_f_op_f32(abs(-1608f)));
    return Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), var_1.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1136f))), any(!vec2<bool>(var_0.x, true)), 1268f), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-21404i, 16407i, 2147483647i, -2147483647i) & vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), firstLeadingBit(vec4<i32>(-22521i, 5039i, u_input.a, 1i)))), all(!select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(false, false, var_0.x, var_0.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(), 31706u, _wgslsmith_add_vec3_u32(~abs(vec3<u32>(60398u, 51959u, 1u)), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(6713u, 4294967295u, 0u), firstLeadingBit(vec3<u32>(0u, 11356u, 726u)), vec3<u32>(1u, 1u, 1u)), firstLeadingBit(abs(vec3<u32>(19304u, 62150u, 0u))))), Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-726f, -638f)) * _wgslsmith_f_op_f32(max(-3597f, 871f))), func_1().a.b, -2147483647i, func_2().x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(1269f)), -1000f), vec2<f32>(1500f, _wgslsmith_f_op_f32(-927f + -492f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-859f, -829f) + vec2<f32>(-1397f, 1926f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2408f, -827f) + vec2<f32>(760f, -1056f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2200f, -368f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-818f, -1454f) * vec2<f32>(1588f, 725f))))));
    var var_1 = Struct_4(func_1(), ~(~_wgslsmith_div_u32(~var_0.c.x, 43245u)), vec3<u32>(var_0.b, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(var_0.b, 88650u), var_0.b & var_0.c.x), ~57189u), Struct_3(Struct_2(var_0.a.a.a, Struct_1(_wgslsmith_f_op_f32(-var_0.a.a.a), var_0.a.a.d, -1111f), countOneBits(u_input.a | u_input.a), var_0.d.a.b.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(546f, -646f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1141f, var_0.e.x) * var_0.e))))));
    var_0 = Struct_4(func_1(), var_1.b, var_0.c, var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.e, vec2<f32>(-1130f, -299f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-113f, var_0.d.a.a), var_1.e)), var_1.e, vec2<bool>(all(vec4<bool>(false, var_0.a.a.d, true, false)), true)))));
    let var_2 = _wgslsmith_mult_i32(countOneBits(firstLeadingBit(abs(min(var_0.a.a.c, var_0.d.a.c)))), u_input.a);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(select(var_0.a.a.b.c, var_1.e.x, (func_2().x & (var_0.a.a.b.a <= var_0.d.a.a)) & !(!var_1.d.a.b.b))), var_1.a.a.b, countOneBits(~(-19054i)), ((~93644u >= var_0.b) || func_1().a.b.b) | (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.a.a - -308f))) > _wgslsmith_f_op_f32(trunc(var_0.e.x))));
    var var_4 = func_1().a;
    var var_5 = Struct_4(var_1.d, _wgslsmith_sub_u32(firstTrailingBit(firstLeadingBit(var_1.b) ^ var_1.c.x), var_1.c.x), vec3<u32>(~1u, 0u, reverseBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.b, var_0.c.x), ~var_1.c.x))), func_1(), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.e))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(~var_0.b, 4294967295u, _wgslsmith_add_u32(33965u, var_0.c.x))) ^ _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(1u, 82938u, var_5.c.x)), var_1.c, abs(select(vec3<u32>(var_1.b, var_5.b, var_0.b), vec3<u32>(67025u, var_1.c.x, 28809u), vec3<bool>(var_4.d, false, true)))), vec2<f32>(_wgslsmith_f_op_f32(-1309f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1628f + var_1.a.a.a)))), _wgslsmith_f_op_f32(var_3.a - -1173f)), vec2<f32>(var_4.b.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.d.a.a))))));
}

