struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1000f, 561f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    global0 = select(~1u, u_input.a, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.b.a.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(1040f + global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1856f, -462f)))));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    let var_0 = !all(select(vec4<bool>(false, true, any(vec2<bool>(true, false)), u_input.b <= arg_0), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false)), any(vec3<bool>(false, true, false)) && true));
    global0 = ~(9349u >> (1u % 32u));
    let var_1 = u_input.c;
    var var_2 = var_1.x;
    let var_3 = ~47814i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 236f, global1.a.x, -716f) * vec4<f32>(global1.a.x, -1000f, global1.a.x, global1.a.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a.x, global1.a.x, 101f, -383f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.x, -858f, -744f, 1000f))), var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-1000f * 1000f), -177f, -281f)), true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = vec2<bool>(all(vec2<bool>(true, true)), true);
    var var_1 = 1362f;
    var_1 = arg_2.a.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f), 673f) - -773f));
    var var_2 = 0u;
    return _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.a.x + -131f), -1000f, var_0.x != var_0.x)), 393f), global1.a), _wgslsmith_f_op_vec2_f32(select(global1.a, vec2<f32>(1000f, global1.a.x), ~(-1i) < (max(u_input.b, -1i) ^ (i32(-1i) * -25895i)))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = Struct_2(reverseBits(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-8432i, u_input.b), abs(vec2<i32>(u_input.b, u_input.b)), abs(vec2<i32>(0i, 0i)))) << (~(u_input.c.ww ^ vec2<u32>(1u, u_input.c.x)) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(func_3(-1i)), vec3<f32>(-163f, global1.a.x, -346f), Struct_1(vec2<f32>(global1.a.x, arg_0.x)))))), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(13117i, u_input.b, u_input.b, -1i), vec4<i32>(u_input.b, -41915i, u_input.b, -28146i), false), _wgslsmith_sub_vec4_i32(vec4<i32>(-927i, u_input.b, u_input.b, -3901i), vec4<i32>(u_input.b, u_input.b, 17832i, -1i)), max(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(22039i, -2568i, u_input.b, 43819i)))), ~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, 24974i, u_input.b)), vec4<i32>(u_input.b, -2147483647i, u_input.b, 0i))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_sub_i32(-7912i, _wgslsmith_mult_i32(u_input.b, -1i)))).zy), select(!vec4<bool>(false, arg_0.x > global1.a.x, any(vec3<bool>(false, true, true)), all(vec2<bool>(true, false))), vec4<bool>(!any(vec3<bool>(false, true, true)), true, select(any(vec3<bool>(false, true, false)), true, any(vec4<bool>(false, false, true, true))), any(vec3<bool>(true, true, true))), vec4<bool>(true, true, any(vec2<bool>(true, false)), max(20612i, 2147483647i) == select(u_input.b, 0i, false))));
    let var_2 = var_1;
    let var_3 = vec3<bool>((var_2.e.x | true) || ((_wgslsmith_mult_i32(var_2.a.x, u_input.b) & (i32(-1i) * -9049i)) >= _wgslsmith_dot_vec2_i32(var_1.a, var_2.a)), ~u_input.a > countOneBits(4294967295u), !var_2.e.x);
    global0 = _wgslsmith_dot_vec3_u32(~(~u_input.c.xxz), u_input.c.wxx) ^ 1u;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), -195f)));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = 113f;
    var var_1 = arg_2.b.b;
    global1 = arg_2.b.d;
    var_1 = arg_2.b.b;
    var var_2 = _wgslsmith_f_op_f32(-1014f * var_1.a.x);
    return Struct_3(arg_2.b.d.a.x, Struct_2(vec2<i32>(1i, 0i), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(global1.a.x, -932f, var_1.a.x))), arg_2.c, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x))), !vec4<bool>(all(vec4<bool>(arg_2.b.e.x, false, arg_2.b.e.x, arg_3.x)), false, any(arg_2.b.e.xz), select(false, false, false))), -2147483647i);
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(arg_2.b.a.x, 0i);
    var var_1 = _wgslsmith_mult_i32(~(u_input.b ^ u_input.b), i32(-1i) * -var_0);
    let var_2 = arg_2.b;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.a.x), -770f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(818f)) * _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, 138f, var_2.b.a.x, -276f)), vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.b.a.x)), _wgslsmith_f_op_f32(arg_1 - arg_2.b.b.a.x), -1716f), func_5(func_5(true, arg_3.b.e.x, arg_2, arg_3.b.e.wzy).b.e.x, !arg_0.b.e.x, func_5(arg_2.b.e.x, arg_3.b.e.x, Struct_3(arg_0.b.b.a.x, Struct_2(vec2<i32>(-1i, -20078i), arg_3.b.b, var_2.a.x, arg_2.b.b, vec4<bool>(false, false, arg_3.b.e.x, true)), 0i), arg_0.b.e.xwx), !arg_0.b.e.yxw).b.b)).x));
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1276f - arg_1)), var_2.b.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -741f;
    var var_1 = true;
    var var_2 = func_6(func_5(true, false, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), vec2<u32>(u_input.c.x, u_input.a), Struct_3(290f, Struct_2(vec2<i32>(0i, u_input.b), Struct_1(vec2<f32>(558f, 248f)), u_input.b, Struct_1(global1.a), vec4<bool>(false, true, false, true)), u_input.b))) * global1.a.x), Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -1i)), func_2(vec3<f32>(global1.a.x, var_0, 770f)), u_input.b, Struct_1(global1.a), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), u_input.b), vec3<bool>(!(global1.a.x != -670f), true, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-var_0), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(abs(1i))).x), Struct_2(vec2<i32>(-1i, u_input.b), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, global1.a.x))), 0i, Struct_1(global1.a), select(vec4<bool>(true, true, true, true), func_5(true, false, Struct_3(-357f, Struct_2(vec2<i32>(u_input.b, -2147483647i), Struct_1(vec2<f32>(1000f, var_0)), -22210i, Struct_1(global1.a), vec4<bool>(true, false, true, false)), -1i), vec3<bool>(true, false, false)).b.e, -1000f > var_0)), -(~u_input.b)), Struct_3(1321f, func_5(!any(vec2<bool>(true, false)), true, Struct_3(_wgslsmith_f_op_f32(817f - global1.a.x), func_5(false, true, Struct_3(global1.a.x, Struct_2(vec2<i32>(15488i, 31370i), Struct_1(global1.a), u_input.b, Struct_1(global1.a), vec4<bool>(false, true, true, false)), -40214i), vec3<bool>(true, true, false)).b, 1i), vec3<bool>(true, true, true)).b, 7847i));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(697f, var_0)));
    let var_3 = ~(u_input.b | reverseBits(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(44469u, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(0u, u_input.c.x), ~u_input.a, _wgslsmith_add_u32(63168u, 1u)), ~u_input.c) & countOneBits(u_input.c));
}

