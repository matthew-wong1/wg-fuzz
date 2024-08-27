struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
    d: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_5, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = arg_2;
    global0 = Struct_1(false);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.xxx));
    var var_2 = Struct_3(-664f, true);
    var var_3 = Struct_1(!(!(true & (var_2.b || global0.a))));
    return Struct_1(arg_2);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_3) -> i32 {
    var var_0 = select(~abs(abs(u_input.c.x | 87460u)), firstLeadingBit(u_input.c.x), arg_1.b);
    global1 = array<Struct_5, 10>();
    global0 = func_2(arg_1.a, arg_2.a, !select(arg_1.c.b, true, all(!vec4<bool>(false, true, arg_2.b, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1434f, 198f, arg_1.c.a, 101f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1825f, -1149f, arg_2.a)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -613f), arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -706f), arg_2.a) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.a), _wgslsmith_f_op_f32(-1350f * 1734f), _wgslsmith_f_op_f32(floor(arg_1.c.a)), arg_2.a))));
    let var_1 = arg_1.d;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.c.a, arg_2.a, arg_1.c.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(805f, -556f, arg_1.c.a), vec3<f32>(arg_1.c.a, -1044f, 106f), true)), true)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(204f, -288f, 760f)), vec3<f32>(-1991f, 317f, arg_2.a), arg_2.a == arg_1.c.a)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1227f, -489f, -1476f) * vec3<f32>(arg_2.a, arg_2.a, 272f)))))), any(select(vec4<bool>(true, true, false, global0.a), select(vec4<bool>(true, arg_2.b, true, global0.a), vec4<bool>(false, true, arg_0.a, false), vec4<bool>(true, false, arg_1.d.a.a, true)), vec4<bool>(arg_1.c.b, arg_1.b, false, var_1.a.a))))));
    return ~reverseBits(-2147483647i);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = abs(vec4<i32>(1i, u_input.d.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, u_input.d.x), func_3(func_2(u_input.d.x, arg_0.a, global0.a, vec4<f32>(arg_0.a, arg_0.a, -592f, arg_0.a)), Struct_5(3624i, arg_0.b, Struct_3(1777f, global0.a), Struct_2(Struct_1(arg_0.b))), arg_0)), ~24834i));
    let var_1 = vec4<bool>(func_2(_wgslsmith_mod_i32(-49628i, countOneBits(1i) ^ u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(219f + -1909f))), any(select(vec3<bool>(arg_0.b, arg_1.x, false), arg_1.yzx, vec3<bool>(false, arg_1.x, global0.a))) && true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.a, -196f)), _wgslsmith_div_f32(arg_0.a, 342f), 1346f, -1222f))).a, 18750i > u_input.d.x, true, !(_wgslsmith_f_op_f32(step(358f, 1000f)) > _wgslsmith_f_op_f32(1000f + 410f)) == true);
    var var_2 = Struct_5(0i & u_input.d.x, any(vec4<bool>(true & !arg_1.x, true, !arg_0.b, var_1.x)), Struct_3(_wgslsmith_f_op_f32(exp2(arg_0.a)), arg_1.x), Struct_2(Struct_1(true)));
    var var_3 = var_2.d;
    var var_4 = Struct_4(var_3.a, -43215i, Struct_3(_wgslsmith_f_op_f32(var_2.c.a + var_2.c.a), (_wgslsmith_dot_vec2_u32(u_input.c.xw, u_input.c.zx) >> (_wgslsmith_add_u32(u_input.b, 2849u) % 32u)) <= 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.a, -1000f, 979f) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.c.a, arg_0.a, var_2.c.a), vec3<f32>(arg_0.a, -466f, -258f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.a, arg_0.a, var_2.c.a) - vec3<f32>(-1000f, 125f, -1156f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 569f, 472f) - vec3<f32>(1251f, 1775f, var_2.c.a))))));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 10>();
    global0 = func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1148f)), global0.a), !select(!select(vec4<bool>(false, global0.a, global0.a, true), vec4<bool>(global0.a, true, false, global0.a), vec4<bool>(global0.a, true, false, global0.a)), vec4<bool>(global0.a, true, global0.a && true, any(vec3<bool>(global0.a, global0.a, global0.a))), vec4<bool>(false & global0.a, !global0.a, true, true)));
    global1 = array<Struct_5, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-602f, 826f, -892f, -473f) + vec4<f32>(1808f, 1532f, 1000f, 224f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(421f, 1281f, 1094f, -996f) - vec4<f32>(407f, 1434f, -548f, -1267f)))))), u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f + 1044f), 412f, _wgslsmith_f_op_f32(step(-1327f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, -641f, -927f))))));
}

