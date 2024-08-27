struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 139f;

var<private> global1: vec3<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>) -> vec2<i32> {
    global1 = vec3<bool>(all(vec2<bool>(global1.x, true)), arg_1.x, all(vec3<bool>(arg_1.x && (1u <= u_input.a.x), all(vec4<bool>(false, global1.x, arg_1.x, global1.x)) && select(true, true, false), arg_1.x)));
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, -865f, -591f, 1852f) - vec4<f32>(1097f, -517f, 618f, -327f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(797f, 291f, -1221f, -1148f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-214f, -559f, 1296f, 747f)))))) * vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 160f) * _wgslsmith_f_op_f32(163f + 234f)), _wgslsmith_f_op_f32(f32(-1f) * -1716f), -614f)), vec4<bool>(true, select(true, true, true), !global1.x, true)));
    let var_1 = Struct_2(Struct_1(arg_1.zy), var_0.yy, Struct_1(vec2<bool>(global1.x, !(global1.x && arg_1.x))));
    var var_2 = Struct_3(Struct_1(!select(vec2<bool>(true, true), global1.yy, select(var_1.c.a, vec2<bool>(true, false), vec2<bool>(global1.x, true)))), select(!select(vec4<bool>(true, true, var_1.c.a.x, false), !vec4<bool>(arg_1.x, global1.x, false, true), vec4<bool>(arg_1.x, true, global1.x, global1.x)), vec4<bool>(false, global1.x && true, global1.x, var_1.a.a.x), global1.x && global1.x), 0i, Struct_1(vec2<bool>(true, all(arg_1.xz) && (false != var_1.a.a.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.zxw)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_1.b.x, 823f)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x) + var_0.x)) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - var_1.b.x), _wgslsmith_f_op_f32(-var_0.x))), var_0.x, 480f)));
    return max(arg_0.yy, u_input.b.yy);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> vec4<bool> {
    let var_0 = -(_wgslsmith_add_vec2_i32(arg_2.yx, vec2<i32>(countOneBits(-15978i), _wgslsmith_div_i32(u_input.b.x, arg_1.x))) | func_3(min(u_input.b, vec3<i32>(22580i, arg_2.x, arg_1.x)) | vec3<i32>(arg_0.x, arg_1.x, arg_2.x), !select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, true))));
    var var_1 = 66261u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1012f)))))));
    global1 = select(select(!select(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, false, false)), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, true, global1.x), false), !vec3<bool>(false, true, global1.x)), select(!select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, false, true), global1.x), select(vec3<bool>(false, global1.x, false), !vec3<bool>(global1.x, global1.x, true), 841f > var_2.x), select(!vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(global1.x, true, false), false)), select(select(select(vec3<bool>(false, global1.x, true), vec3<bool>(false, false, global1.x), global1.x), vec3<bool>(global1.x, true, true), true), select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, false, false), global1.x), vec3<bool>(true, true, false), !vec3<bool>(global1.x, false, global1.x)), global1.x)), vec3<bool>(true, true, false), true);
    var var_3 = ~vec4<i32>(-_wgslsmith_clamp_i32(~arg_1.x, -1i ^ arg_0.x, 0i), ~abs(-20593i), ~1i, ~firstTrailingBit(var_0.x));
    return select(select(!vec4<bool>(global1.x, false, true, true), select(vec4<bool>(!global1.x, false, global1.x, select(global1.x, global1.x, false)), select(select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), false), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, false), global1.x), false), select(!vec4<bool>(true, true, global1.x, true), !vec4<bool>(global1.x, false, true, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, global1.x))), !vec4<bool>(false || global1.x, false & global1.x, true, all(vec4<bool>(global1.x, false, global1.x, true)))), vec4<bool>(any(vec2<bool>(global1.x, global1.x)) && all(select(vec3<bool>(false, true, true), vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, global1.x, global1.x))), any(vec3<bool>(global1.x, true, any(global1.xx))), global1.x, global1.x), (~_wgslsmith_dot_vec3_i32(vec3<i32>(4175i, -10343i, 0i), vec3<i32>(arg_2.x, var_3.x, u_input.b.x)) > ((arg_0.x >> (u_input.a.x % 32u)) & abs(arg_0.x))) | true);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_1 {
    global1 = select(vec3<bool>(!(_wgslsmith_f_op_f32(select(971f, -1301f, false)) >= _wgslsmith_f_op_f32(-683f * arg_2.a)), global1.x, any(func_2(firstLeadingBit(vec2<i32>(u_input.b.x, arg_1.x)), u_input.b.yx, vec3<i32>(-25025i, arg_1.x, -2147483647i) | u_input.b))), select(!vec3<bool>(true, 168f >= arg_2.a, any(vec2<bool>(global1.x, global1.x))), func_2(vec2<i32>(firstTrailingBit(-2147483647i), 50187i), -(vec2<i32>(8359i, u_input.b.x) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), u_input.b).wxz, true), !func_2(arg_1, vec2<i32>(-6876i, _wgslsmith_clamp_i32(77242i, 0i, -1i)), _wgslsmith_clamp_vec3_i32(u_input.b, -u_input.b, u_input.b)).yxy);
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_2.a, arg_2.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_0.x)), -1207f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) + arg_0.x), 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1286f, _wgslsmith_f_op_f32(max(arg_0.x, -2335f)), _wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_div_f32(-1000f, arg_0.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, -294f, -1716f, arg_2.a)))), !vec4<bool>(53665u == u_input.a.x, true | global1.x, global1.x, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1805f + 769f), _wgslsmith_f_op_f32(-arg_2.a), arg_0.x, _wgslsmith_div_f32(-457f, 488f)))));
    var var_1 = Struct_2(Struct_1(select(vec2<bool>(all(vec4<bool>(true, global1.x, true, global1.x)), true), select(vec2<bool>(global1.x, true), global1.zy, global1.xy), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(exp2(var_0.yy)), Struct_1(global1.xy));
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1349f - _wgslsmith_f_op_f32(floor(arg_0.x))) + var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-682f * arg_0.x)), var_1.b.x, 1301f)));
    global0 = 210f;
    return var_1.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_0.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(sign(arg_0.b.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1231f - arg_0.b.x) - _wgslsmith_f_op_f32(-110f + arg_0.b.x))) + arg_0.b)));
    let var_1 = vec3<bool>(any(select(vec4<bool>(arg_0.a.a.x, false, any(vec4<bool>(arg_2.a.x, arg_0.a.a.x, false, true)), func_2(u_input.b.yy, u_input.b.zy, u_input.b).x), vec4<bool>(true, arg_2.a.x, true, global1.x & true), global1.x)), global1.x, any(vec3<bool>(any(func_1(vec3<f32>(var_0.x, arg_0.b.x, -2365f), u_input.b.yy, Struct_4(arg_0.b.x)).a), false, arg_2.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(ceil(-1001f)), _wgslsmith_f_op_f32(sign(828f))));
    let var_3 = min(firstLeadingBit(_wgslsmith_dot_vec4_u32(arg_1, _wgslsmith_clamp_vec4_u32(arg_1, vec4<u32>(35641u, 11384u, 63259u, arg_1.x), arg_1))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~73510u, arg_1.x, u_input.a.x), min(arg_1, vec4<u32>(arg_1.x, 72097u, arg_1.x, 67229u))) ^ (~u_input.a.x << (_wgslsmith_clamp_u32(~u_input.a.x, ~20605u, u_input.a.x) % 32u)));
    var var_4 = _wgslsmith_f_op_f32(-var_0.x);
    return vec2<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x)))))) != 1582f, _wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b.x * 1141f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(true, true, (reverseBits(u_input.b.x) == ~firstTrailingBit(u_input.b.x)) & (!select(global1.x, false, true) | false));
    let var_0 = 15322u;
    global1 = vec3<bool>(global1.x, all(!func_4(Struct_2(Struct_1(vec2<bool>(false, true)), vec2<f32>(-340f, -822f), Struct_1(vec2<bool>(global1.x, true))), vec4<u32>(u_input.a.x, 34860u, u_input.a.x, u_input.a.x), func_1(vec3<f32>(-173f, 428f, 582f), u_input.b.yy, Struct_4(599f)))), false);
    global1 = func_2(vec2<i32>(~abs(u_input.b.x) | u_input.b.x, u_input.b.x), u_input.b.xz, vec3<i32>(-46942i, u_input.b.x, u_input.b.x)).yzz;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f - 151f));
    global1 = vec3<bool>(var_0 > _wgslsmith_mod_u32(~1u, reverseBits(~u_input.a.x)), func_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(-297f)), -1757f, _wgslsmith_f_op_f32(step(950f, 1008f))))), vec2<i32>(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(u_input.b.x, 1i)), -49027i | (-2147483647i ^ u_input.b.x)), Struct_4(_wgslsmith_f_op_f32(-1f))).a.x, any(vec3<bool>(global1.x, true, all(select(global1.yx, global1.zz, vec2<bool>(true, global1.x))))));
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -333f), -170f, all(!vec2<bool>(var_1, false)))))), var_0, -522f, u_input.b.x);
}

