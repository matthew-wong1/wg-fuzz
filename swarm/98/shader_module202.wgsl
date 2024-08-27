struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = 49754u;
    let var_1 = false;
    var_0 = ~_wgslsmith_mod_u32(u_input.b.x, u_input.e.x);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(1359f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1505f, 621f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f)) - _wgslsmith_f_op_f32(545f - -940f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-666f - -143f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1128f, -1200f, 635f, 867f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1366f, 223f, -388f, -2025f) + vec4<f32>(-833f, 102f, 793f, -411f)))))) + vec4<f32>(-587f, 1325f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1200f * -773f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(145f - 433f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), var_2.x)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_2.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 739f, -576f, 1559f) * vec4<f32>(var_2.x, _wgslsmith_f_op_f32(min(479f, var_2.x)), _wgslsmith_f_op_f32(round(2156f)), 817f)))));
    return !(!all(vec2<bool>(true, true)));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = Struct_4(firstLeadingBit(arg_1));
    let var_2 = vec2<bool>(any(vec3<bool>(func_3(-1i), false, arg_0)), false);
    var_0 = arg_2;
    var var_3 = !select(select(select(vec3<bool>(var_2.x, true, true), vec3<bool>(var_2.x, false, arg_0), vec3<bool>(true, var_0.a, arg_0)), vec3<bool>(all(vec4<bool>(var_0.b.b, true, var_0.a, arg_0)), true, false), !vec3<bool>(arg_0, var_0.a, var_2.x)), !select(select(vec3<bool>(true, var_2.x, true), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, var_0.a, true)), !vec3<bool>(var_0.a, arg_2.a, false), true), select(select(!vec3<bool>(false, var_2.x, var_0.a), select(vec3<bool>(false, true, false), vec3<bool>(arg_2.a, false, var_0.b.b), true), false), !(!vec3<bool>(false, true, var_2.x)), (arg_2.b.b | true) & true));
    return Struct_2(vec4<bool>(var_0.a, true, any(vec4<bool>(true, any(vec2<bool>(true, var_2.x)), true, arg_0)), !arg_0), arg_2.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c.x, var_0.b.d.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1580f, arg_2.b.c.x) * vec2<f32>(var_0.b.d.x, var_0.b.c.x))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b.d.x, arg_2.b.d.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1404f, arg_2.b.c.x, arg_2.b.c.x) - arg_2.b.d) * _wgslsmith_f_op_vec3_f32(select(arg_2.b.d, _wgslsmith_f_op_vec3_f32(-var_0.b.d), var_0.a))) - var_0.b.d), abs(arg_2.b.a));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = Struct_3(true, arg_3.b, min(arg_3.b.a, select(reverseBits(_wgslsmith_dot_vec3_u32(u_input.e.ywy, u_input.e.ywy)), 0u, arg_3.a.x)), firstTrailingBit(-(min(u_input.d, u_input.d) ^ (u_input.c | u_input.d))));
    var var_1 = !select(select(select(arg_3.a, arg_3.a, !vec4<bool>(true, false, false, arg_3.a.x)), !arg_3.a, vec4<bool>(arg_1.x, arg_1.x, true, func_2(arg_3.b.b, vec3<i32>(var_0.d, 16417i, var_0.d), Struct_3(false, var_0.b, arg_0, -1i)).a.x)), !vec4<bool>(var_0.a, !arg_1.x, true, !var_0.a), false);
    let var_2 = !arg_3.b.b;
    let var_3 = Struct_4(vec3<i32>(countOneBits(1i), var_0.d, u_input.c));
    var_1 = func_2(arg_1.x, ~(firstTrailingBit(vec3<i32>(var_0.d, var_0.d, 3465i)) ^ vec3<i32>(var_0.d, var_3.a.x, 2147483647i)), Struct_3(true, arg_3.b, _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.b.a ^ 1u, ~1u), min(var_0.c, max(0u, 0u))), ~_wgslsmith_add_i32(var_0.d, -6820i))).a;
    return all(func_2(!(59765u > arg_2) != false, vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, 1i, u_input.c), vec3<i32>(1i, -10444i, 42076i), arg_3.a.zwx), ~var_3.a), -(~0i), -(~var_3.a.x)), var_0).a);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    var var_0 = !(!(!vec3<bool>(arg_3.d.x <= -271f, arg_0.x, arg_0.x)));
    var_0 = arg_0;
    var_0 = !arg_0;
    var_0 = select(arg_0, arg_0, vec3<bool>(func_4(u_input.e.x, select(var_0.xx, var_0.xy, false), u_input.e.x >> (arg_3.a % 32u), func_2(arg_3.b, vec3<i32>(-45096i, 2147483647i, u_input.d) << (vec3<u32>(4294967295u, 49358u, arg_3.a) % vec3<u32>(32u)), Struct_3(var_0.x, Struct_1(arg_3.a, true, vec2<f32>(-893f, 695f), arg_2.zww), u_input.e.x, 1i))), true, !arg_0.x));
    var_0 = vec3<bool>(!(!(false || arg_3.b) & (_wgslsmith_mod_u32(1u, arg_3.a) >= ~1u)), !func_3(~(-u_input.c)), any(vec4<bool>(true, true, arg_0.x, !arg_0.x)) | arg_3.b);
    return !func_2(all(!(!arg_0.xz)), select(-vec3<i32>(86634i, u_input.c, u_input.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.d, u_input.c), vec3<i32>(u_input.d, u_input.c, u_input.c), vec3<i32>(-50559i, -37150i, u_input.d)), arg_0) ^ vec3<i32>(34905i, -1i, ~2147483647i), Struct_3(true, func_2(arg_0.x, vec3<i32>(u_input.c, 2147483647i, u_input.d), Struct_3(arg_3.b, arg_3, 33597u, 12810i)).b, _wgslsmith_div_u32(~4294967295u, 57432u), 0i)).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~u_input.e.x), max(u_input.e.x, u_input.e.x) <= 66621u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(1964f + 466f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-782f, 1175f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-573f, -514f))))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(673f, -1767f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(831f, 1321f) * vec2<f32>(-299f, -124f)))), vec2<bool>(func_1(vec3<bool>(false, true, false), vec2<f32>(-1156f, -557f), vec4<f32>(-1783f, 507f, -2505f, 1489f), Struct_1(u_input.e.x, false, vec2<f32>(849f, -1440f), vec3<f32>(318f, -240f, 367f))), true)))), vec3<f32>(627f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(425f, 345f) - _wgslsmith_div_f32(202f, -320f)))));
    var var_1 = Struct_2(vec4<bool>(!func_2(!var_0.b, vec3<i32>(u_input.d, u_input.c, u_input.d), Struct_3(var_0.b, Struct_1(var_0.a, true, vec2<f32>(var_0.d.x, var_0.d.x), vec3<f32>(var_0.c.x, 1235f, var_0.c.x)), 4294967295u, u_input.d)).a.x, func_3(abs(-2147483647i)), func_3(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, 2147483647i), u_input.c, u_input.d)), true), func_2(any(vec3<bool>(true & var_0.b, true, !var_0.b)), vec3<i32>(abs(u_input.d & u_input.d), abs(select(u_input.d, 35734i, false)), -16603i), Struct_3(!var_0.b, func_2(!var_0.b, ~vec3<i32>(u_input.d, u_input.c, u_input.c), Struct_3(true, Struct_1(4294967295u, true, vec2<f32>(2432f, -864f), var_0.d), 7403u, -8272i)).b, _wgslsmith_dot_vec4_u32(~u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(0u, 55610u, 61564u, 0u))), -12031i)).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.c, vec2<f32>(var_0.c.x, 600f), var_0.b))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1656f, -405f), _wgslsmith_f_op_vec2_f32(-var_0.c))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1035f, -1166f, var_0.c.x))))), _wgslsmith_f_op_vec3_f32(select(var_0.d, _wgslsmith_div_vec3_f32(var_0.d, vec3<f32>(var_0.c.x, 526f, var_0.c.x)), true)), !(!var_0.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1425f), _wgslsmith_f_op_f32(min(-1213f, var_0.d.x)), var_0.d.x) - var_0.d)), ~1u);
    var_1 = func_2(any(func_2(any(var_1.a), vec3<i32>(u_input.c & u_input.d, ~u_input.c, -u_input.d), Struct_3(true, Struct_1(18764u, false, var_1.c, vec3<f32>(-1016f, -1234f, var_1.c.x)), var_1.b.a, 0i & u_input.d)).a.zy), _wgslsmith_add_vec3_i32(~vec3<i32>(_wgslsmith_clamp_i32(-7693i, u_input.d, 17692i), _wgslsmith_div_i32(-39196i, 1477i), _wgslsmith_mod_i32(1i, -2147483647i)), vec3<i32>(u_input.d, ~u_input.c, 1i)), Struct_3(var_0.b, func_2(true, ~(~vec3<i32>(u_input.c, -1i, u_input.d)), Struct_3(true, var_1.b, var_1.e, u_input.d)).b, abs(var_1.b.a), _wgslsmith_add_i32(-4250i, -41976i) >> ((var_1.b.a >> (var_0.a % 32u)) % 32u)));
    var var_2 = u_input.d;
    var var_3 = !var_1.a;
    var var_4 = ~_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(0u, _wgslsmith_sub_u32(var_0.a, _wgslsmith_div_u32(var_1.b.a, var_0.a)), ~1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c, ~(-firstLeadingBit(max(vec3<i32>(u_input.d, u_input.c, 0i), vec3<i32>(u_input.c, 0i, -611i)))), var_4.x, vec3<i32>(2147483647i, -u_input.d, u_input.c), vec4<i32>(u_input.d, reverseBits(0i), u_input.c, u_input.c) & vec4<i32>(u_input.c ^ _wgslsmith_mult_i32(-37080i, 5868i), 2147483647i, ~(~u_input.d), ~_wgslsmith_mult_i32(36387i, u_input.c)));
}

