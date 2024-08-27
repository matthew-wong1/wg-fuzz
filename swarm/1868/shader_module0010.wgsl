struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    global1 = select(vec3<bool>(arg_0.a.x, false, !select(select(false, true, arg_2), false, false)), !vec3<bool>(!global1.x || !global1.x, -407f >= _wgslsmith_f_op_f32(-arg_0.e), global1.x), arg_2 | any(arg_0.b.yyx));
    return arg_0;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    return _wgslsmith_clamp_i32(-1i, ~(-36422i), 9259i);
}

fn func_2() -> Struct_1 {
    let var_0 = min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i | (-2147483647i << (u_input.d.x % 32u)), _wgslsmith_sub_i32(10560i, func_3(4294967295u, Struct_1(global1.zx, vec4<bool>(true, global1.x, false, global1.x), 4294967295u, vec2<u32>(4294967295u, 4294967295u), -569f))), 1i), vec4<i32>(_wgslsmith_div_i32(-68858i, -123815i), _wgslsmith_mult_i32(max(2147483647i, -1i), select(-33889i, 23929i, false)), 1i, 281i)), -10379i);
    global1 = select(select(select(func_1(func_1(Struct_1(vec2<bool>(global1.x, false), vec4<bool>(true, global1.x, global1.x, true), 54792u, u_input.d, 632f), vec4<f32>(global0.x, 398f, global0.x, -162f), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(691f, -261f, -1252f, global0.x)), !global1.x).b.zww, !(!vec3<bool>(global1.x, global1.x, global1.x)), true), vec3<bool>(false, true, false), vec3<bool>(global1.x, true, !(!global1.x))), func_1(func_1(Struct_1(!global1.yz, select(vec4<bool>(false, false, global1.x, true), vec4<bool>(global1.x, false, global1.x, true), global1.x), u_input.b, reverseBits(vec2<u32>(4294967295u, u_input.d.x)), _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1015f, -196f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 289f, 2085f))), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -152f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), global1.x).b.xxz, global1.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(min(-415f, global0.x)), global0.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(685f, 1076f, 890f), global0.zxy)))))) + vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - 365f), _wgslsmith_f_op_f32(-863f + -1332f)), 577f, !func_1(Struct_1(vec2<bool>(global1.x, true), vec4<bool>(global1.x, global1.x, true, false), u_input.a.x, vec2<u32>(4294967295u, 4294967295u), global0.x), vec4<f32>(-197f, global0.x, 279f, 1612f), false).b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(473f + -346f))))));
    global1 = !(!select(!select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, false, global1.x)), !(!vec3<bool>(global1.x, true, true)), !func_1(Struct_1(global1.xx, vec4<bool>(global1.x, global1.x, false, false), u_input.c, vec2<u32>(0u, 57246u), var_1.x), vec4<f32>(1000f, 607f, global0.x, -954f), global1.x).b.xwy));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global0.x)), global0.x)), 1f, -745f);
    return func_1(func_1(Struct_1(!global1.yx, vec4<bool>(false, false, global1.x | global1.x, true), u_input.c ^ (35076u << (u_input.d.x % 32u)), _wgslsmith_mod_vec2_u32(u_input.d >> (u_input.a.xy % vec2<u32>(32u)), min(vec2<u32>(u_input.b, 0u), u_input.a.zx)), 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 130f, _wgslsmith_f_op_f32(select(-998f, var_1.x, global1.x)), -1621f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -330f, global0.x, var_1.x) - vec4<f32>(-799f, -966f, -973f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1703f, -221f, var_1.x, 989f)), !global1.x))), global1.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1720f, 1936f, -340f, 1000f) - vec4<f32>(global0.x, -1000f, global0.x, -323f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x + -143f), _wgslsmith_f_op_f32(min(1571f, 1000f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, var_1.x)))), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e + -576f)), arg_0.e), global0.zzz));
    var var_1 = var_0.xy;
    global1 = select(!arg_1.b.yzx, arg_2.b.zxy, true);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(293f, 1128f, var_1.x, -383f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_2.e, var_1.x, arg_0.e) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-801f, var_1.x, arg_2.e, -370f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, arg_0.e, 205f, -472f) + vec4<f32>(arg_2.e, 1981f, global0.x, 1126f))), false)), vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) != _wgslsmith_f_op_f32(arg_2.e * 975f), func_2().e <= 2724f, all(func_2().b.zxx), true))));
    let var_2 = arg_1;
    return Struct_1(func_2().b.zy, select(vec4<bool>(false, any(arg_2.b.zy), !arg_1.b.x, true), !arg_0.b, arg_0.b), firstTrailingBit(4294967295u), arg_1.d, 239f);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    let var_0 = 725f;
    var var_1 = _wgslsmith_div_i32(~2147483647i, select(reverseBits(0i), ~1i, false));
    global1 = vec3<bool>(true, true, arg_1.a.x || true);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.xy * vec2<f32>(1551f, -1326f)) * global0.yz) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xy - vec2<f32>(-1463f, arg_0)))), global0.wz) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(427f + arg_0), _wgslsmith_f_op_f32(-732f * global0.x))))));
    var var_3 = arg_1;
    return !vec2<bool>(true, var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = vec2<f32>(-853f, global0.x);
    var var_2 = all(select(global1.zx, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) + _wgslsmith_f_op_f32(global0.x + -1672f)), func_4(func_1(Struct_1(global1.xx, vec4<bool>(true, global1.x, global1.x, global1.x), var_0.x, vec2<u32>(var_0.x, u_input.d.x), var_1.x), vec4<f32>(835f, -1000f, global0.x, var_1.x), global1.x), func_2(), func_1(Struct_1(vec2<bool>(false, false), vec4<bool>(true, global1.x, global1.x, false), u_input.c, u_input.a.zy, -2469f), vec4<f32>(var_1.x, var_1.x, global0.x, -1249f), true), func_1(Struct_1(vec2<bool>(global1.x, true), vec4<bool>(global1.x, global1.x, false, true), var_0.x, u_input.d, -415f), vec4<f32>(1381f, global0.x, -1176f, var_1.x), global1.x).b.x), var_0.x ^ _wgslsmith_add_u32(u_input.d.x, u_input.a.x)), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1110f, 1000f, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, var_1.x, -887f), _wgslsmith_f_op_vec3_f32(-global0.wwy))))), -423f, _wgslsmith_div_vec2_u32(select(u_input.d, vec2<u32>(func_1(Struct_1(vec2<bool>(global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), u_input.c, vec2<u32>(u_input.c, 0u), 147f), vec4<f32>(var_1.x, global0.x, var_1.x, global0.x), global1.x).d.x, 4294967295u), global1.xy), vec2<u32>(2201u, u_input.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -abs(350i), -_wgslsmith_mod_i32(-38115i, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -2546i, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(57314i, 11973i, -2147483647i), vec3<i32>(29754i, -63783i, 0i), vec3<i32>(-2147483647i, -1i, -1i)), vec3<i32>(1i, 1i, 1i)) | vec3<i32>(func_3(var_0.x, Struct_1(global1.zy, vec4<bool>(false, false, global1.x, global1.x), 30116u, vec2<u32>(29020u, 4294967295u), -288f)), -29280i, 1i)));
}

