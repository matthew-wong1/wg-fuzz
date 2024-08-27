struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(437f, 1u, vec2<i32>(-19371i, -55238i)), Struct_4(-1000f, 52252u, vec2<i32>(-70567i, 1i)), Struct_4(1698f, 0u, vec2<i32>(69732i, 0i)), Struct_4(482f, 0u, vec2<i32>(-28604i, 9466i)), Struct_4(-1364f, 38098u, vec2<i32>(1i, 2897i)), Struct_4(639f, 1u, vec2<i32>(2147483647i, -11966i)), Struct_4(696f, 33645u, vec2<i32>(1i, 2147483647i)), Struct_4(1387f, 1u, vec2<i32>(-1i, -51681i)), Struct_4(1098f, 1u, vec2<i32>(2147483647i, -2106i)), Struct_4(418f, 32768u, vec2<i32>(i32(-2147483648), 4645i)), Struct_4(466f, 108176u, vec2<i32>(0i, 1i)), Struct_4(645f, 4294967295u, vec2<i32>(-33940i, 67196i)), Struct_4(-1743f, 16894u, vec2<i32>(i32(-2147483648), 0i)), Struct_4(-1074f, 4294967295u, vec2<i32>(-13739i, -12883i)), Struct_4(1000f, 30139u, vec2<i32>(-3112i, 0i)), Struct_4(243f, 49164u, vec2<i32>(-34009i, 2147483647i)), Struct_4(-401f, 1u, vec2<i32>(2147483647i, -84269i)), Struct_4(1000f, 24695u, vec2<i32>(-9384i, 9823i)), Struct_4(-1009f, 18362u, vec2<i32>(-49472i, 32444i)), Struct_4(-1944f, 58112u, vec2<i32>(i32(-2147483648), -1i)), Struct_4(-174f, 31206u, vec2<i32>(0i, 1540i)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = Struct_5(4294967295u, abs(select(u_input.c.xz, u_input.d, vec2<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.b, arg_0.b), 30u)]))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.c, vec2<i32>(~(~u_input.b), 43326i)), _wgslsmith_div_i32(arg_0.c.x | 0i, i32(-1i) * -1i));
    let var_2 = abs(select(firstTrailingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(var_1, vec2<i32>(-1i, 32017i)), select(var_1, vec2<i32>(var_1.x, 0i), global0[_wgslsmith_index_u32(u_input.d.x, 30u)]))), (vec2<i32>(arg_0.c.x, u_input.b) << (var_0.b % vec2<u32>(32u))) | vec2<i32>(-51278i, ~26839i), vec2<bool>(true, ~var_0.b.x > (1u << (0u % 32u)))));
    let var_3 = global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(10224u, select(u_input.c.x, var_0.b.x, global0[_wgslsmith_index_u32(arg_0.b, 30u)]), var_0.b.x), 69787u)), 21u)];
    let var_4 = !select(!select(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.a, 30u)], true), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 30u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(97254u, 30u)]), true), true), vec2<bool>(4294967295u < u_input.d.x, all(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], true, false))), (_wgslsmith_dot_vec2_i32(var_2, vec2<i32>(0i, 1i)) >= _wgslsmith_mult_i32(-1i, 0i)) & global0[_wgslsmith_index_u32(var_0.b.x, 30u)]);
    return _wgslsmith_dot_vec3_u32(abs(~(u_input.c.yzx << (~vec3<u32>(arg_0.b, 0u, 65945u) % vec3<u32>(32u)))), ~(min(u_input.c.wwx, ~u_input.c.wxw) ^ _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, var_0.a, var_3.b), vec3<u32>(3295u, 4294967295u, 0u))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global1 = array<Struct_4, 21>();
    var var_0 = vec2<i32>(u_input.b, ~select(abs(30786i), u_input.b, true));
    var var_1 = vec3<bool>(any(select(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], false), true), !(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)])), all(!vec2<bool>(global0[_wgslsmith_index_u32(56317u, 30u)], true)))), -8911i == (~1i & firstTrailingBit(firstTrailingBit(u_input.b))), global0[_wgslsmith_index_u32(~func_3(global1[_wgslsmith_index_u32(abs(u_input.a), 21u)]), 30u)]);
    let var_2 = u_input.c.yw;
    var var_3 = ~u_input.b;
    return Struct_3(Struct_2(abs(abs(vec4<i32>(-15316i, -1i, -22212i, -1i))) | vec4<i32>(-u_input.b, abs(0i), _wgslsmith_clamp_i32(1i, u_input.b, -32671i), 0i), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1754f, _wgslsmith_f_op_f32(exp2(arg_0)), arg_0, _wgslsmith_f_op_f32(310f * arg_0)))), -668f, Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(30114i, u_input.b, u_input.b), vec3<i32>(-42421i, var_0.x, -32624i)), vec3<i32>(u_input.b, var_0.x, -11488i)), _wgslsmith_mod_vec2_u32(~var_2, reverseBits(vec2<u32>(var_2.x, var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0))), ~u_input.b, -75485i), -var_0.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -2678f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(ceil(-483f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -448f)))), global0[_wgslsmith_index_u32(min(1u, firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, 18321u), 1u))), 30u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = arg_3.d;
    var_0 = Struct_1(var_0.a, ~var_0.b, arg_3.c, 1i, -8330i);
    let var_1 = arg_1.e;
    let var_2 = max(~_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_add_u32(arg_3.d.b.x, arg_2)), ~(arg_0.a.d.b.x | 12055u)), 0u);
    var var_3 = firstTrailingBit(vec4<u32>(15950u, 42078u, ~(arg_1.b.x ^ arg_0.a.d.b.x), ~_wgslsmith_add_u32(u_input.d.x, ~9577u)));
    return vec3<i32>(0i >> (~arg_1.b.x % 32u), firstLeadingBit(abs(arg_0.a.a.x)), u_input.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> f32 {
    var var_0 = max(vec3<u32>(u_input.a, abs(~_wgslsmith_div_u32(u_input.a, u_input.a)), 15524u), _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.d.x), ~u_input.c.xyw), abs(vec3<u32>(1846u, select(u_input.c.x, u_input.c.x, arg_1), 4294967295u))));
    let var_1 = Struct_1(func_4(func_2(1148f), Struct_1(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(1i, u_input.b, -14733i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -35348i, -2147483647i), vec3<i32>(u_input.b, 5791i, 7814i))), _wgslsmith_add_vec2_u32(var_0.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, u_input.c.x), vec2<u32>(var_0.x, 27083u), var_0.xy)), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))), -2147483647i, -1i), 8062u, Struct_2(-(~vec4<i32>(u_input.b, u_input.b, u_input.b, 32186i)), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * -1551f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -514f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), Struct_1(vec3<i32>(u_input.b, 41389i, u_input.b) & vec3<i32>(u_input.b, 2147483647i, u_input.b), min(var_0.yz, var_0.zx), arg_0.x, -u_input.b, _wgslsmith_mult_i32(15832i, u_input.b)), -2147483647i)), vec2<u32>(27400u, ~func_3(global1[_wgslsmith_index_u32(u_input.c.x, 21u)])), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(925f - arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -135f) + _wgslsmith_f_op_f32(-arg_0.x))))), firstTrailingBit(u_input.b), u_input.b);
    let var_2 = global1[_wgslsmith_index_u32(0u, 21u)];
    var var_3 = global0[_wgslsmith_index_u32(1u, 30u)];
    global0 = array<bool, 30>();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2034f, 1208f, _wgslsmith_f_op_f32(f32(-1f) * -298f))), !global0[_wgslsmith_index_u32(countOneBits(select(0u, 1u, global0[_wgslsmith_index_u32(u_input.d.x, 30u)])), 30u)])), min(~4294967295u, ~_wgslsmith_sub_u32(1u, u_input.c.x)), reverseBits(~(~reverseBits(vec2<i32>(-3471i, 1i)))));
    global1 = array<Struct_4, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -357f, -274f, -293f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, -283f, var_0.a, var_0.a), vec4<f32>(var_0.a, 807f, -526f, 141f), vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 30u)], false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(334f, 986f, var_0.a, var_0.a), vec4<f32>(var_0.a, 1000f, 136f, var_0.a)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<f32>(-1344f, -1290f, -482f, var_0.a))))), _wgslsmith_f_op_vec4_f32(-func_2(var_0.a).a.b), select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.b, 30u)], false, true, global0[_wgslsmith_index_u32(~26145u, 30u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(59251u, 30u)], false, false, global0[_wgslsmith_index_u32(var_0.b, 30u)]), vec4<bool>(false, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], true)), !vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.b, 30u)], false, global0[_wgslsmith_index_u32(var_0.b, 30u)]), !global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), vec4<bool>(func_2(var_0.a).c, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], true, true, false)), false, global0[_wgslsmith_index_u32(17399u, 30u)])))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, 501f, true)) - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))) + var_0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(300f, var_0.a) + -1000f), -745f))), _wgslsmith_sub_u32(u_input.c.x, ~_wgslsmith_add_u32(select(12654u, var_0.b, global0[_wgslsmith_index_u32(10891u, 30u)]), firstLeadingBit(19650u))));
}

