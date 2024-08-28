struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(33472u, 1u, 20589u);

var<private> global1: u32;

var<private> global2: f32;

var<private> global3: bool;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> bool {
    let var_0 = vec4<i32>(u_input.e, -_wgslsmith_mod_i32(-u_input.c.x, u_input.e), u_input.c.x, ~(~(~u_input.e)));
    global1 = _wgslsmith_add_u32(global0.x, firstLeadingBit(48082u));
    var var_1 = var_0.wx;
    global1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, global0.x, 27956u)), vec3<u32>(49052u, countOneBits(_wgslsmith_div_u32(global0.x, global0.x)), ~0u >> (global0.x % 32u))), 0u);
    let var_2 = Struct_3(-(~7725i), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), true)));
    return all(vec2<bool>(all(select(vec2<bool>(false, true), select(vec2<bool>(var_2.b.x, true), vec2<bool>(var_2.b.x, var_2.b.x), false), !vec2<bool>(var_2.b.x, var_2.b.x))), all(var_2.b.xy)));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    global2 = arg_0;
    var var_0 = vec4<bool>(func_3(), true && (arg_1 < countOneBits(~66642u)), true, true);
    global3 = false;
    var var_1 = -u_input.d;
    var var_2 = true;
    return Struct_1(~1u, -u_input.c.yz | max(_wgslsmith_mult_vec2_i32(reverseBits(u_input.c.wx), vec2<i32>(0i, u_input.c.x)), -u_input.c.yx), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(~u_input.d, ~u_input.d, u_input.c.x, _wgslsmith_add_i32(countOneBits(53311i), ~0i))), !var_0.xz, select(min(abs(global0.x), global0.x), _wgslsmith_sub_u32(select(4294967295u, _wgslsmith_div_u32(25192u, 35261u), false), 24823u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, global0.x, arg_1), vec4<u32>(4294967295u, 4294967295u, arg_1, 1u))), true));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-855f, 843f, 670f, 1243f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(554f, -219f, -1042f, -1000f) * vec4<f32>(-676f, 1268f, -187f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(-554f + 1317f), -913f, _wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_f32(f32(-1f) * -1921f))))), vec4<f32>(2023f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(161f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2469f, -176f, arg_3.x)) * -676f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1253f + _wgslsmith_f_op_f32(min(-935f, 760f)))), _wgslsmith_f_op_f32(-1f)));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-289f, -2290f, var_0.x, var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1011f, 1946f, 878f), vec4<f32>(var_0.x, var_0.x, -1253f, -439f)))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(333f * var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 365f, 1374f, var_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -622f, var_0.x) + vec4<f32>(var_0.x, var_0.x, 429f, 1575f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1055f, -1592f, 287f) * vec4<f32>(-816f, -2707f, -181f, -1844f))))) + vec4<f32>(-121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f * var_0.x)), var_0.x, 977f))));
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xww) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2083f, -493f, 264f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, -1345f, arg_0.x), arg_0.yxz, vec3<bool>(true, true, true))))), max(~vec2<u32>(u_input.a, firstLeadingBit(u_input.a)), ~global0.xx), Struct_1(u_input.a, func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, -1000f)), _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(true, false, true, false), 13544u, Struct_1(global0.x, u_input.c.xw, u_input.d, vec2<bool>(false, false), 4294967295u), vec3<bool>(false, true, true))).x)), min(~50700u, ~0u)).b, u_input.d, vec2<bool>(false, false), 1u), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(global0.x, 0u, global0.x, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, 1u), u_input.b), u_input.b), u_input.b), select(select(vec4<i32>(firstTrailingBit(-28109i), u_input.e, u_input.e << (4294967295u % 32u), u_input.c.x), reverseBits(u_input.c), select(true, true, true)), -u_input.c, vec4<bool>(true, true, true, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(var_0.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(var_1.x * 422f)));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(arg_0.zxz, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.wwx + var_1) * _wgslsmith_f_op_vec3_f32(-var_1)))), var_0.c.d.x)), ~(~(~u_input.b.xz)), var_0.c, firstTrailingBit(vec4<u32>(103857u, ~_wgslsmith_dot_vec2_u32(u_input.b.zw, global0.yy), 11079u, 1u)), -vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, -25881i, ~u_input.d), -16865i, -20818i, ~25883i));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xz));
    return Struct_1(59594u, u_input.c.zy, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(i32(-1i) * -48430i, _wgslsmith_dot_vec3_i32(var_0.e.wwy, var_0.e.zzw)), u_input.c.x), select(vec2<bool>(var_0.c.d.x, true), select(var_0.c.d, select(var_0.c.d, select(var_0.c.d, vec2<bool>(var_0.c.d.x, true), var_0.c.d.x), !var_0.c.d.x), false), !(!var_0.c.d)), firstTrailingBit(countOneBits(~var_0.c.a)));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(1u << (0u % 32u), countOneBits(59167u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.x, u_input.b.x, 11500u), u_input.b) % 32u))));
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(false, true, false, true), global0.x, func_2(274f, global0.x), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-645f)) * 974f), 1f, _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(true, true, true, true), 4997u | u_input.a, Struct_1(4294967295u, vec2<i32>(u_input.c.x, u_input.d), 2147483647i, vec2<bool>(false, false), u_input.a), vec3<bool>(true, true, true))).x, 271f)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-928f, 1203f, _wgslsmith_f_op_f32(-1962f * _wgslsmith_f_op_f32(f32(-1f) * -890f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(516f - -979f) + _wgslsmith_f_op_f32(-608f + 1000f)), 1431f, _wgslsmith_f_op_f32(1221f * _wgslsmith_f_op_f32(927f - -1883f))), any(vec4<bool>(true, var_1.d.x, var_1.d.x || var_1.d.x, var_1.d.x)))), vec2<u32>(48692u, global0.x) ^ _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1.a), u_input.b.yx), vec2<u32>(_wgslsmith_clamp_u32(global0.x, global0.x, global0.x), _wgslsmith_add_u32(15124u, 4090u))), var_1, ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, global0.x, var_1.e, 34626u), u_input.b, firstTrailingBit(u_input.b)) | vec4<u32>(4294967295u, 11654u | u_input.a, _wgslsmith_div_u32(global0.x, 60354u), _wgslsmith_dot_vec3_u32(u_input.b.xzx, vec3<u32>(102110u, var_1.e, var_1.a)))), u_input.c);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2463f) * var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -701f))))));
    let var_4 = Struct_3(~var_1.b.x | u_input.c.x, select(vec3<bool>(var_2.c.d.x, !var_2.c.d.x, !var_1.d.x), vec3<bool>(!any(var_1.d), true, !var_2.c.d.x), vec3<bool>(false, !(1u < var_2.d.x), var_1.d.x)));
    return Struct_3(~(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(-6785i, 50842i, -2147483647i, var_2.e.x), u_input.c))), select(select(vec3<bool>(true, true, false), vec3<bool>(all(vec4<bool>(true, true, false, false)), var_1.d.x, any(vec4<bool>(var_2.c.d.x, false, false, var_2.c.d.x))), !var_4.b), var_4.b, false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(vec3<u32>(firstTrailingBit(0u), 4294967295u, abs(~26324u)));
    global0 = ~vec3<u32>(global0.x & 1u, global0.x, global0.x);
    let var_0 = u_input.c.x;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 944f), _wgslsmith_f_op_f32(f32(-1f) * -553f)))) - _wgslsmith_f_op_f32(132f * 1f));
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1849f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-449f, 271f, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-754f, 1000f, 222f, -609f) * vec4<f32>(1000f, 165f, 1869f, 784f))) * vec4<f32>(_wgslsmith_f_op_f32(-274f * 421f), _wgslsmith_f_op_f32(sign(537f)), _wgslsmith_f_op_f32(f32(-1f) * -358f), _wgslsmith_f_op_f32(abs(-594f))))), ~u_input.b);
}

