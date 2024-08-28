struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-264f, -577f, -2457f, -556f), vec4<f32>(-353f, 1062f, 302f, 195f), vec4<f32>(-3120f, -190f, 481f, -244f), vec4<f32>(417f, 310f, 675f, 1229f), vec4<f32>(480f, 1000f, 1174f, -1929f), vec4<f32>(-852f, 2554f, -2526f, -1000f), vec4<f32>(1899f, -1000f, -1204f, -1728f), vec4<f32>(-1642f, 1000f, 1239f, 757f), vec4<f32>(-1575f, 1000f, 295f, 396f), vec4<f32>(-652f, -656f, 488f, -1783f), vec4<f32>(116f, -454f, -773f, -476f), vec4<f32>(-556f, 1000f, 412f, -434f), vec4<f32>(415f, -561f, 321f, -2053f), vec4<f32>(1000f, -1356f, 459f, -1472f), vec4<f32>(-2311f, -1333f, 1484f, 224f), vec4<f32>(-419f, 600f, -1003f, 1472f), vec4<f32>(-690f, -558f, -543f, -1093f), vec4<f32>(-416f, -539f, 1188f, -1000f), vec4<f32>(-1456f, 1000f, -173f, -736f), vec4<f32>(1040f, 1250f, -2650f, -363f), vec4<f32>(-1550f, -1431f, -465f, 589f), vec4<f32>(-1412f, 1286f, 2202f, -1947f), vec4<f32>(-393f, 527f, 1033f, 250f), vec4<f32>(1799f, 444f, -204f, -1246f), vec4<f32>(1410f, 1281f, -1599f, 1000f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    var var_0 = global0.c.x ^ global0.c.x;
    global1 = array<vec4<f32>, 25>();
    let var_1 = Struct_2(vec4<u32>(firstLeadingBit(u_input.a), ~(~u_input.a), 4294967295u, u_input.a));
    let var_2 = Struct_3(abs(1u), vec3<bool>(true, false, _wgslsmith_div_f32(-2070f, _wgslsmith_f_op_f32(global0.a + global0.a)) >= _wgslsmith_f_op_f32(916f + global0.a)));
    global1 = array<vec4<f32>, 25>();
    return -255f;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    global1 = array<vec4<f32>, 25>();
    var var_0 = Struct_3(1u, !select(vec3<bool>(select(false, true, false), any(vec2<bool>(true, false)), true), vec3<bool>(all(vec4<bool>(false, false, true, false)), false, false), true));
    var var_1 = all(select(!var_0.b.yx, vec2<bool>(true, !any(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x))), select(!(!var_0.b.yx), var_0.b.xz, select(!var_0.b.zz, select(var_0.b.yy, vec2<bool>(var_0.b.x, true), vec2<bool>(true, false)), vec2<bool>(var_0.b.x, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.b, 1402f, global0.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -1985f, -215f, -2341f)))))));
    var_0 = Struct_3(~_wgslsmith_sub_u32(~countOneBits(1u), u_input.a), vec3<bool>(false, true, var_0.b.x));
    return -59841i;
}

fn func_2() -> Struct_5 {
    global1 = array<vec4<f32>, 25>();
    global1 = array<vec4<f32>, 25>();
    let var_0 = 39501i;
    let var_1 = firstTrailingBit(_wgslsmith_add_u32(~(64782u << (u_input.a % 32u)), 26517u));
    let var_2 = vec3<i32>(1i, func_3(-(~var_0) ^ 27575i, Struct_1(-1034f, 1930f, vec4<i32>(max(var_0, global0.c.x), -98663i & global0.c.x, ~32259i, -27712i))), 0i);
    return Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(global0.a * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, 1067f)), global0.c), Struct_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, -1087f) - vec3<f32>(-158f, 1000f, global0.b)), vec3<f32>(global0.a, 1042f, global0.b))), vec3<f32>(_wgslsmith_div_f32(-1048f, global0.b), global0.a, _wgslsmith_f_op_f32(min(-887f, 197f)))))));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: u32) -> Struct_4 {
    let var_0 = ~global0.c.x;
    var var_1 = countOneBits(u_input.a);
    return Struct_4(_wgslsmith_div_vec3_f32(arg_0.b.a, _wgslsmith_f_op_vec3_f32(min(arg_0.b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(max(-1606f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(global0.b + global0.b)))), _wgslsmith_f_op_f32(func_1()), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 29493i, global0.c.x, global0.c.x), global0.c), -36371i), i32(-1i) * -global0.c.x, global0.c.x, global0.c.x)), func_4(func_2(), true, _wgslsmith_sub_u32(u_input.a << ((1502u >> (u_input.a % 32u)) % 32u), u_input.a)));
    let var_1 = all(!vec2<bool>(false, all(vec2<bool>(true, false))));
    let var_2 = reverseBits(u_input.a);
    var var_3 = -234f;
    var var_4 = var_0.b.a.yx;
    var_3 = 750f;
    var var_5 = vec2<u32>(~4294967295u, 68597u);
    var var_6 = Struct_5(func_2().a, var_0.b);
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2151f) + _wgslsmith_f_op_f32(-var_0.b.a.x)))) + _wgslsmith_f_op_f32(var_6.a.a * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-324f + var_0.a.a) - _wgslsmith_f_op_f32(sign(-370f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(func_3(var_6.a.c.x, var_6.a), _wgslsmith_clamp_i32(82931i, -1i, 2147483647i), var_0.a.c.x, 1i), vec4<i32>(var_0.a.c.x, -var_6.a.c.x, 0i, ~var_0.a.c.x)) ^ vec4<i32>(~(-var_6.a.c.x), 14621i, -1i, -14705i));
}

