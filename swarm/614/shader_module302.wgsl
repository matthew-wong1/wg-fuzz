struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(4294967295u, 63920u, 586u), vec3<u32>(48343u, 4294967295u, 1u), vec3<u32>(1575u, 1u, 0u), vec3<u32>(0u, 4294967295u, 13468u));

var<private> global1: bool;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_1(all(vec4<bool>(all(vec2<bool>(false, true)), true, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(select(arg_0.x, 1863f, false)) >= -406f)), select(vec4<bool>(true, !select(true, false, true), select(true, true, false), select(u_input.a <= 4294967295u, true, true)), vec4<bool>(true == (arg_0.x < 193f), true, true, false), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true, select(true, all(vec2<bool>(true, false)), arg_0.x == arg_0.x), false)), !select(vec2<bool>(true, select(false, true, true)), vec2<bool>(true, true), ~2147483647i == abs(u_input.b)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -517f, 118f) - vec3<f32>(arg_0.x, arg_0.x, 1349f)))))));
    global1 = false;
    let var_1 = select(_wgslsmith_mult_vec3_i32(vec3<i32>(~(u_input.b ^ u_input.b), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, -2147483647i, 41011i), vec3<i32>(2147483647i, -2147483647i, u_input.b), var_0.b.ywz), vec3<i32>(u_input.b, u_input.b, 0i)), 59039i), abs(-select(vec3<i32>(-23414i, 1836i, u_input.b), vec3<i32>(-2147483647i, u_input.b, u_input.b), false))), vec3<i32>(28976i, u_input.b, -1i), !vec3<bool>(any(vec3<bool>(var_0.a, var_0.c.x, var_0.a)), var_0.b.x, !any(var_0.b)));
    var var_2 = _wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, ~u_input.a)) > ~4818u;
    global0 = array<vec3<u32>, 4>();
    return vec4<bool>(true, true, false, countOneBits(62613u) > u_input.a);
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = Struct_1(false, select(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-310f, 657f), vec2<f32>(2082f, -1000f))) + vec2<f32>(611f, 1262f))), select(vec4<bool>(true, true, u_input.b != 2147483647i, true), vec4<bool>(true, u_input.a < u_input.a, true, true), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(405f, -262f) - vec2<f32>(-570f, -1659f)))), vec4<bool>(true, true, true, all(vec3<bool>(true, true, true)))), vec2<bool>(all(vec4<bool>(true, true, true, true)) | false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1139f, -840f, 1283f)) + vec3<f32>(842f, 1695f, 415f)))));
    var var_1 = !var_0.b.zzw;
    global0 = array<vec3<u32>, 4>();
    let var_2 = ~vec3<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-13101i, arg_0, 2147483647i), _wgslsmith_mod_i32(u_input.b, arg_0))), reverseBits(_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 28582i, arg_0), _wgslsmith_mod_i32(u_input.b, -9718i))), select(arg_0, max(-961i, -17965i), var_0.b.x) >> (~(~u_input.a) % 32u));
    global0 = array<vec3<u32>, 4>();
    return vec4<f32>(223f, _wgslsmith_f_op_f32(round(-146f)), 1256f, _wgslsmith_f_op_f32(-var_0.d.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(i32(-1i) * -12112i));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.d.x, 1578f, var_0.x) + vec4<f32>(-938f, -505f, 1201f, arg_3.d.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(arg_3.d.x + -570f), 2025f, 1058f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x * 1243f) + arg_1.b.d.x))));
    var var_1 = arg_1;
    global1 = all(vec4<bool>(arg_3.b.x, true, !arg_3.b.x, arg_3.b.x));
    global1 = false;
    return _wgslsmith_clamp_i32(~countOneBits(u_input.b), _wgslsmith_mod_i32(-u_input.b, ~u_input.b) | -1i, -abs(u_input.b)) >= 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 4>();
    let var_0 = u_input.a;
    var var_1 = !(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false)) || any(vec4<bool>(true, true, true, true))) || all(vec3<bool>(func_1(Struct_1(true, vec4<bool>(true, false, false, true), vec2<bool>(true, true), vec3<f32>(-889f, -650f, 1889f)), Struct_2(16103u, Struct_1(true, vec4<bool>(false, true, false, false), vec2<bool>(true, false), vec3<f32>(-1000f, -1144f, 766f))), Struct_2(var_0, Struct_1(true, vec4<bool>(false, false, true, false), vec2<bool>(false, true), vec3<f32>(-240f, -307f, -1000f))), Struct_1(false, vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec3<f32>(146f, 257f, 258f))) || true, any(vec4<bool>(false, true, false, false)), false));
    let var_2 = abs(u_input.b);
    var_1 = false;
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(~var_0, ~1u, ~(~u_input.a), ~1u), vec4<u32>(52336u, ~u_input.a, ~u_input.a, var_0)), abs(~(~vec2<u32>(var_0, u_input.a))) << (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(15888u, 40903u), countOneBits(vec2<u32>(var_0, 0u))), vec2<u32>(~4294967295u, var_0)) % vec2<u32>(32u)));
}

