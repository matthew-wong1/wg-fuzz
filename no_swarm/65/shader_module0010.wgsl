struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_4,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> bool {
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3, arg_3: vec4<bool>) -> vec4<f32> {
    let var_0 = 1430f;
    let var_1 = true;
    var var_2 = arg_3;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-421f, arg_2.e.a, arg_0.c.a, arg_0.b.x) * arg_0.b) + arg_2.c.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-982f, -162f, 1834f, arg_2.d.b.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    let var_1 = Struct_3(!(!vec3<bool>(func_1(var_0, Struct_1(805f, -1625f)), var_0 & var_0, true)), u_input.a.x, Struct_2(!(!(!vec4<bool>(false, var_0, var_0, true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-197f, -738f, -364f, -434f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(453f, -379f, 296f, -510f), vec4<f32>(-648f, 882f, 100f, 488f))))))), Struct_1(-285f, 292f)), Struct_2(!vec4<bool>(true, var_0, any(vec2<bool>(false, var_0)), any(vec4<bool>(true, var_0, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -192f, -1268f, -1000f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec4<bool>(var_0, true, false, false), vec4<f32>(219f, -811f, 1000f, 694f), Struct_1(175f, -1871f)), u_input.c.x, Struct_3(vec3<bool>(false, false, var_0), u_input.a.x, Struct_2(vec4<bool>(true, false, false, true), vec4<f32>(750f, -523f, 1427f, -843f), Struct_1(-880f, 1351f)), Struct_2(vec4<bool>(var_0, var_0, false, false), vec4<f32>(1520f, -957f, -803f, -1740f), Struct_1(-2090f, 449f)), Struct_1(231f, 678f)), vec4<bool>(var_0, true, var_0, false))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-767f, -263f, 885f, 1311f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1276f, 1326f, 678f, 1514f) - vec4<f32>(867f, -1956f, -1000f, -1115f)), var_0))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-738f - 713f) - 1465f), -415f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1560f), _wgslsmith_f_op_f32(f32(-1f) * -633f))), _wgslsmith_f_op_f32(ceil(-102f))));
    let var_2 = var_1.d.a;
    let var_3 = -11682i;
    var var_4 = -39407i;
    return Struct_2(select(var_2, var_1.c.a, vec4<bool>(!select(var_2.x, false, var_0), var_1.d.a.x, select(var_1.c.a.x, true, any(vec3<bool>(var_2.x, true, var_0))), true)), var_1.d.b, var_1.e);
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2) -> Struct_4 {
    var var_0 = vec4<bool>(true, !arg_1, false, func_1(arg_2.a.x, arg_2.c));
    var_0 = arg_2.a;
    var var_1 = reverseBits(~u_input.c);
    let var_2 = arg_2.c;
    var var_3 = arg_2.a.xy;
    return Struct_4(Struct_3(!(!vec3<bool>(false, arg_1, var_3.x)), 2147483647i, Struct_2(func_2().a, vec4<f32>(_wgslsmith_f_op_f32(1420f - var_2.a), -1142f, _wgslsmith_f_op_vec4_f32(func_3(arg_2, 21136u, Struct_3(arg_2.a.wxy, -35849i, Struct_2(vec4<bool>(true, arg_1, false, var_3.x), arg_2.b, Struct_1(var_2.b, arg_2.c.a)), arg_2, arg_2.c), vec4<bool>(false, arg_2.a.x, false, false))).x, _wgslsmith_f_op_f32(-arg_2.b.x)), func_2().c), func_2(), arg_2.c), func_2().c, arg_2.b.x, u_input.a.x >> (23309u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.c.wxz, func_1(!(!select(false, false, true)), Struct_1(-1711f, 617f)), func_2());
    var_0 = Struct_4(func_4(select(vec3<u32>(~u_input.b, ~u_input.c.x, ~u_input.b), u_input.c.xyx, !var_0.a.a), true, Struct_2(select(var_0.a.c.a, var_0.a.d.a, vec4<bool>(true, false, var_0.a.c.a.x, false)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -200f, -108f, 310f))), Struct_1(-2862f, var_0.b.a))).a, func_4(firstLeadingBit(vec3<u32>(u_input.c.x, u_input.b, u_input.c.x) | u_input.c.wyw) | max(select(u_input.c.wxz, vec3<u32>(u_input.c.x, 8507u, u_input.b), true), u_input.c.ywy), 1u >= abs(u_input.c.x), func_2()).a.c.c, _wgslsmith_f_op_f32(max(904f, 1000f)), var_0.d);
    var var_1 = Struct_4(var_0.a, var_0.b, func_4(_wgslsmith_div_vec3_u32(u_input.c.zzz, ~(u_input.c.xyy << (vec3<u32>(u_input.b, 0u, 51560u) % vec3<u32>(32u)))), true, func_4(select(~vec3<u32>(1u, u_input.c.x, 50891u), ~u_input.c.wxw, var_0.a.a), false & (var_0.b.a > -426f), Struct_2(!vec4<bool>(true, var_0.a.a.x, var_0.a.c.a.x, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, -1501f, var_0.b.a, var_0.b.b)), Struct_1(var_0.b.a, var_0.a.e.a))).a.d).c, i32(-1i) * -2147483647i);
    var_1 = func_4(abs(min(reverseBits(u_input.c.yyy ^ vec3<u32>(u_input.b, u_input.b, u_input.c.x)), u_input.c.zyx)), -37224i > var_1.d, Struct_2(var_0.a.d.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.a.c.b)) - _wgslsmith_f_op_vec4_f32(floor(func_2().b))), Struct_1(_wgslsmith_f_op_f32(abs(var_0.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c, 1257f)) + var_0.b.b))));
    var_0 = Struct_4(Struct_3(!func_2().a.xxy, max(var_1.d, _wgslsmith_dot_vec3_i32(u_input.a.zzy, abs(u_input.a.wwy))), Struct_2(var_0.a.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, var_0.a.c.c.a, -516f, var_1.b.a), var_0.a.d.b))), func_4(vec3<u32>(u_input.c.x, 0u, 0u), all(var_1.a.d.a.ww), func_2()).a.e), var_0.a.c, var_1.b), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(var_0.a.c, min(u_input.b | 0u, _wgslsmith_sub_u32(u_input.b, u_input.b)), Struct_3(vec3<bool>(true, var_0.a.c.a.x, true), var_1.d, Struct_2(var_0.a.c.a, vec4<f32>(169f, -606f, 133f, var_1.b.b), var_0.b), func_2(), var_1.a.c.c), vec4<bool>(true, var_1.a.c.a.x, var_1.a.c.a.x, true))).x, var_0.a.e.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1492f, var_1.b.a)), var_0.a.b);
    let var_2 = vec4<f32>(1236f, 510f, _wgslsmith_f_op_f32(-var_0.a.e.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2240f, -1195f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.c.c.a))), any(var_0.a.d.a.yxw)))));
    let var_3 = _wgslsmith_add_u32(abs(36454u), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), abs(0u))) >> (4294967295u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(min(u_input.c.yyx, select(u_input.c.yyx, ~u_input.c.zyy, true)), max(min(vec3<u32>(u_input.c.x, 4294967295u, var_3) & u_input.c.ywz, ~u_input.c.zxy), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, var_3, u_input.b) & vec3<u32>(15130u, var_3, var_3), u_input.c.wxx))), 1u, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, u_input.a) ^ (vec4<i32>(var_0.d, -26053i, u_input.a.x, var_0.a.b) >> (~u_input.c % vec4<u32>(32u))), vec4<i32>(_wgslsmith_add_i32(2147483647i, -72943i), _wgslsmith_add_i32(var_0.d, -var_0.a.b), _wgslsmith_mod_i32(~u_input.d, _wgslsmith_add_i32(u_input.a.x, var_1.d)), -2147483647i)));
}

