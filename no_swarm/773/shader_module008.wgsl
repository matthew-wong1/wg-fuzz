struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(77990u, 0u, 35179u), vec4<i32>(-49975i, -19039i, 1i, 0i));

var<private> global1: i32 = 1i;

var<private> global2: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(714f, -724f, 1000f, -1687f), vec4<f32>(-134f, 1672f, -952f, -730f), vec4<f32>(-566f, 795f, 719f, -128f), vec4<f32>(1527f, 2045f, 111f, -151f), vec4<f32>(1247f, 1648f, 676f, -874f), vec4<f32>(-1087f, 735f, 1053f, 1614f), vec4<f32>(-1000f, 668f, 410f, -561f), vec4<f32>(-1236f, -186f, -2593f, -142f), vec4<f32>(1764f, 912f, -369f, -503f), vec4<f32>(1093f, 1000f, 195f, 1226f), vec4<f32>(532f, -367f, -541f, 886f), vec4<f32>(279f, 1160f, 990f, -1122f), vec4<f32>(1101f, -984f, -567f, -115f), vec4<f32>(702f, -492f, -1000f, -455f), vec4<f32>(-435f, -120f, -1000f, -524f), vec4<f32>(1000f, -682f, 1301f, -501f), vec4<f32>(139f, 458f, -1448f, -599f), vec4<f32>(-1003f, 807f, 292f, 1358f), vec4<f32>(-2277f, 323f, 951f, 541f), vec4<f32>(-309f, -1536f, 994f, -1253f), vec4<f32>(-667f, -1000f, -429f, -836f), vec4<f32>(-358f, -799f, 1885f, -992f), vec4<f32>(968f, 502f, -1620f, -1153f), vec4<f32>(195f, -423f, -223f, -699f), vec4<f32>(-1043f, 312f, -1000f, -1501f), vec4<f32>(1159f, -208f, -703f, -2112f), vec4<f32>(-1000f, -1579f, -192f, -920f), vec4<f32>(276f, 2623f, 1000f, 386f), vec4<f32>(-763f, -778f, -1589f, 1217f), vec4<f32>(-747f, 328f, -1045f, -208f), vec4<f32>(-1000f, 720f, 1673f, 1184f));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_sub_vec3_i32(global0.b.xyy, firstTrailingBit(global0.b.wzy));
    global0 = Struct_2(countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, 0u, u_input.d), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, global0.a.x, global0.a.x), u_input.c)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), global0.a | vec3<u32>(47093u, 0u, 0u)), abs(firstLeadingBit(vec3<u32>(global0.a.x, 108831u, global0.a.x))))), global0.b);
    return select(select(vec4<bool>(u_input.d != (global0.a.x << (1u % 32u)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)), _wgslsmith_sub_u32(u_input.d, global0.a.x) > _wgslsmith_dot_vec3_u32(vec3<u32>(45255u, 4294967295u, 1u), vec3<u32>(1u, u_input.d, global0.a.x)), false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))), vec4<bool>(true, any(vec2<bool>(false, true)), true, global0.a.x < u_input.c.x), vec4<bool>(true, any(vec2<bool>(true, false)), true, true)), true), select(vec4<bool>(!any(vec3<bool>(true, false, true)), true, true, true), vec4<bool>(-global0.b.x >= abs(u_input.b.x), true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, false))), vec4<bool>(false, true, true, any(vec4<bool>(false, true, true, true))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = select(!select(vec4<bool>(true, true, arg_2.x > -8748i, true), select(func_3(), func_3(), false), !vec4<bool>(arg_1.a, false, false, arg_1.a)), !func_3(), vec4<bool>(true, any(func_3().wx), false, arg_1.a));
    var_1 = !(!(!select(select(vec4<bool>(arg_1.a, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, arg_1.b), vec4<bool>(var_1.x, arg_1.a, var_1.x, true)), func_3(), 6278i > arg_2.x)));
    var var_2 = u_input.c;
    let var_3 = any(!vec3<bool>(any(arg_1.c), false, all(var_1.zx) == arg_1.a));
    return Struct_1(any(var_1.xx), select(true, true, all(!vec2<bool>(var_1.x, false))), vec3<bool>(true || arg_1.c.x, false, select(var_3, var_1.x, true)), _wgslsmith_f_op_f32(floor(arg_1.d)), _wgslsmith_f_op_f32(-arg_1.e));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    let var_0 = !(any(arg_1.c.yz) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(786f, 450f)) - _wgslsmith_f_op_f32(-arg_1.e))));
    global0 = Struct_2(max(vec3<u32>(_wgslsmith_dot_vec4_u32(arg_2, arg_2 | vec4<u32>(global0.a.x, 1u, global0.a.x, 47240u)), global0.a.x, ~(~1u)), ~_wgslsmith_div_vec3_u32(~global0.a, vec3<u32>(15831u, u_input.c.x, arg_2.x))), -(~vec4<i32>(5621i, _wgslsmith_mult_i32(global0.b.x, u_input.a), ~arg_0, _wgslsmith_mult_i32(arg_0, -67380i))));
    let var_1 = arg_1;
    let var_2 = !(!arg_1.b);
    let var_3 = var_2;
    return abs(-1i);
}

fn func_1() -> StorageBuffer {
    global2 = array<vec4<f32>, 31>();
    var var_0 = u_input.b.x;
    global1 = ~_wgslsmith_div_i32(global0.b.x, func_4(u_input.b.x, func_2(Struct_2(u_input.c, global0.b), Struct_1(false, true, vec3<bool>(false, false, false), 1000f, 3044f), -vec4<i32>(u_input.a, u_input.a, 8773i, -2147483647i)), vec4<u32>(~global0.a.x, ~global0.a.x, abs(0u), u_input.d)));
    let var_1 = 44961u;
    var var_2 = ~vec4<u32>(firstTrailingBit(28307u), 87939u, 22163u, var_1 | ~(~u_input.c.x));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), abs(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(0u, global0.a.x, 62325u))), global0.b.yzz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1i;
    let x = u_input.a;
    s_output = func_1();
}

