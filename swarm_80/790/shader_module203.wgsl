struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = Struct_1(~arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -380f))) + 1159f), !(!any(vec3<bool>(true, true, true))));
    var var_1 = vec3<f32>(-777f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b - arg_1.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x)))), var_0.b)));
    let var_2 = var_1.x;
    var var_3 = ~_wgslsmith_add_u32(~(~_wgslsmith_div_u32(arg_0.x, 0u)), _wgslsmith_mult_u32(~firstLeadingBit(0u), arg_2.x ^ (arg_2.x << (global0.x % 32u))));
    var_1 = arg_1;
    return _wgslsmith_dot_vec4_i32(u_input.b, u_input.b & select(vec4<i32>(9942i, i32(-1i) * -12737i, u_input.a ^ 36153i, 0i), min(u_input.b, _wgslsmith_mult_vec4_i32(u_input.b, u_input.b)), select(vec4<bool>(false, var_0.c, var_0.c, true), vec4<bool>(false, var_0.c, var_0.c, var_0.c), false)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1551f) * _wgslsmith_f_op_f32(-1000f - -1261f)) * _wgslsmith_f_op_f32(f32(-1f) * -779f)) + -425f), -923f));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, var_0, -2574f, var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1243f, 1772f, var_0, -949f) * vec4<f32>(var_0, -2641f, var_0, -2538f)) * vec4<f32>(989f, -915f, var_0, -670f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -859f, var_0, 1037f) + vec4<f32>(-918f, -150f, var_0, var_0)), vec4<f32>(953f, 528f, 196f, -1286f), vec4<bool>(false, false, true, false)))), !any(vec2<bool>(false, false))))));
    let var_2 = ~(~firstTrailingBit(max(vec4<u32>(u_input.e, 4294967295u, 112245u, u_input.e), vec4<u32>(1u, u_input.e, 23229u, 0u))) | ~(~(vec4<u32>(1u, 37124u, 17753u, 1u) | vec4<u32>(15298u, 35467u, global0.x, global0.x))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-1430f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_0) - _wgslsmith_f_op_f32(-295f - var_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -959f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1713f)))));
    global0 = ~(~max(var_2.yz, var_2.yw));
    return Struct_2(~_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, u_input.d << (0u % 32u)), firstTrailingBit(-1i)), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, u_input.e, var_2.x, u_input.e), vec4<u32>(global0.x, 4294967295u, global0.x, global0.x), vec4<u32>(4294967295u, var_2.x, global0.x, 56139u)), vec3<f32>(-184f, var_0, var_0), ~var_2.xx), 17387i), ~max(-1i >> (global0.x % 32u), -u_input.d)), Struct_1(_wgslsmith_clamp_u32(54728u, 4294967295u, 0u), -1172f, !(!select(false, false, true))), Struct_1(global0.x, -1180f, select(true, true & any(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, true)))), !any(vec4<bool>(true, true, any(vec3<bool>(false, true, false)), select(true, true, false))));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    global0 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.e, global0.x)) << (~vec2<u32>(1u, arg_2.c.a) % vec2<u32>(32u)), vec2<u32>(~51606u, ~(~global0.x))), abs(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_2.c.a) ^ vec2<u32>(65230u, arg_2.c.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(46894u, global0.x), vec2<u32>(u_input.e, arg_2.c.a), vec2<u32>(arg_0, 5771u))))));
    let var_0 = vec3<i32>(u_input.d, ~abs(2147483647i), _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(countOneBits(arg_2.b), -vec3<i32>(-2147483647i, arg_2.b.x, u_input.a)), -_wgslsmith_sub_i32(0i, i32(-1i) * -2147483647i)));
    global0 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0 ^ u_input.e, 1u), ~reverseBits(vec2<u32>(3154u, 1u))), firstLeadingBit(abs(vec2<u32>(62902u, arg_0)) ^ vec2<u32>(20021u, arg_0))) >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(~0u, 1u), ~(vec2<u32>(arg_0, arg_2.d.a) | vec2<u32>(5232u, 66322u))) ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_2.c.a), select(vec2<u32>(arg_0, 72481u), vec2<u32>(u_input.e, arg_0), arg_3.ww))) % vec2<u32>(32u));
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(func_2().d.a), global0.x), countOneBits(~(~vec2<u32>(0u, 0u)))) << (~min(~(~vec2<u32>(global0.x, global0.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_2.c.a, 80529u), min(vec2<u32>(arg_2.d.a, 20578u), vec2<u32>(global0.x, u_input.e)))) % vec2<u32>(32u));
    global0 = (~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.c.a, global0.x), vec2<u32>(arg_0, 9104u)), vec2<u32>(4294967295u, arg_0)) | abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(51428u, global0.x), vec2<u32>(global0.x, arg_2.c.a), vec2<u32>(55515u, global0.x)))) | _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, 0u), vec2<u32>(arg_2.c.a, 17674u), vec2<u32>(104572u, arg_2.c.a)), countOneBits(vec2<u32>(96020u, 49645u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.c.a, arg_0), vec2<u32>(23584u, 0u) & vec2<u32>(1u, u_input.e), ~vec2<u32>(0u, 0u))), _wgslsmith_div_vec2_u32(vec2<u32>(27148u, 0u), abs(vec2<u32>(global0.x, arg_0))) | ~select(vec2<u32>(9518u, global0.x), vec2<u32>(arg_0, u_input.e), arg_3.xx));
    return 374f;
}

fn func_1() -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(u_input.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2240f, -377f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1322f, -747f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-303f, -218f) + vec2<f32>(1000f, -248f)))), func_2(), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), all(vec2<bool>(true, true))), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1698f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(reverseBits(u_input.b.x), ~max(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) & 1i, -(~2147483647i)));
    var_0 = _wgslsmith_mod_vec2_i32(-(u_input.c.yx & min(u_input.c.yz | u_input.b.yw, ~u_input.b.xx)), u_input.c.zz);
    let var_1 = vec2<bool>(~select(0u >> (1u % 32u), u_input.e, true) >= u_input.e, false);
    var var_2 = countOneBits(~(-48343i));
    var_0 = vec2<i32>(max(0i, ~(~select(2147483647i, u_input.d, var_1.x))), -1i);
    var_2 = 35372i;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(166f * -106f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-1004f)), var_1.x)), _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2273f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f * 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1491f))))), 1360f);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2267f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(~reverseBits(global0.x), global0.x), u_input.b.xz, u_input.b.xyx, reverseBits(global0.x), abs(-u_input.b.yw));
}

