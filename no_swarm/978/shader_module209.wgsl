struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(1i, vec4<u32>(0u, 1u, 45339u, 4294967295u), vec3<f32>(1769f, 341f, 657f)), Struct_2(-10723i, vec4<u32>(44692u, 35931u, 0u, 4294967295u), vec3<f32>(-148f, 849f, -1174f)), Struct_2(-61370i, vec4<u32>(21080u, 67546u, 10831u, 28708u), vec3<f32>(417f, 514f, -621f)), Struct_2(0i, vec4<u32>(65236u, 1u, 1u, 71992u), vec3<f32>(742f, 540f, -687f)), Struct_2(-36110i, vec4<u32>(4294967295u, 7769u, 0u, 4294967295u), vec3<f32>(649f, 488f, -965f)), Struct_2(53728i, vec4<u32>(4294967295u, 38441u, 28014u, 7033u), vec3<f32>(-261f, -133f, 632f)), Struct_2(2147483647i, vec4<u32>(4294967295u, 15432u, 1u, 4294967295u), vec3<f32>(-2287f, -919f, 1000f)), Struct_2(i32(-2147483648), vec4<u32>(0u, 26498u, 1u, 65375u), vec3<f32>(-1000f, 2180f, -941f)), Struct_2(1i, vec4<u32>(1u, 1567u, 54904u, 4294967295u), vec3<f32>(-1107f, -603f, 427f)), Struct_2(1i, vec4<u32>(4294967295u, 4294967295u, 20908u, 1u), vec3<f32>(1000f, 1120f, -120f)), Struct_2(0i, vec4<u32>(34510u, 42123u, 0u, 4294967295u), vec3<f32>(-434f, 556f, 435f)), Struct_2(2147483647i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec3<f32>(-1000f, 1121f, -1718f)), Struct_2(-1i, vec4<u32>(0u, 69u, 0u, 9536u), vec3<f32>(226f, 1000f, 1132f)), Struct_2(1i, vec4<u32>(8177u, 1u, 1u, 14343u), vec3<f32>(-747f, -762f, -144f)), Struct_2(4442i, vec4<u32>(29704u, 685u, 37218u, 1u), vec3<f32>(570f, -1641f, -187f)), Struct_2(-36383i, vec4<u32>(27499u, 10349u, 1u, 1u), vec3<f32>(-874f, -696f, 1706f)), Struct_2(-2035i, vec4<u32>(0u, 1u, 57343u, 67951u), vec3<f32>(1194f, 1000f, 700f)), Struct_2(18295i, vec4<u32>(0u, 0u, 1u, 6913u), vec3<f32>(1000f, -132f, -733f)), Struct_2(1177i, vec4<u32>(0u, 24436u, 11408u, 16058u), vec3<f32>(-1246f, 268f, -348f)), Struct_2(-7554i, vec4<u32>(1u, 34661u, 55145u, 12122u), vec3<f32>(-2066f, -456f, -164f)), Struct_2(38019i, vec4<u32>(37137u, 68237u, 4294967295u, 66612u), vec3<f32>(-986f, -1277f, -587f)));

var<private> global1: vec3<i32>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(352f, false), Struct_1(-2621f, false), Struct_1(927f, false), Struct_1(1131f, false), Struct_1(-471f, true), Struct_1(-1242f, true), Struct_1(-1213f, true), Struct_1(391f, true), Struct_1(-222f, false), Struct_1(-1462f, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    global3 = array<Struct_1, 10>();
    var var_0 = any(vec4<bool>(all(arg_3), any(!select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, arg_3.x, arg_3.x), vec3<bool>(global2.x, true, arg_3.x))), true, all(!vec3<bool>(global2.x, false, global2.x))));
    global1 = u_input.a.zwz;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1099f, arg_0.a.c.x))), _wgslsmith_f_op_f32(step(arg_0.a.c.x, -516f)));
    var var_2 = global3[_wgslsmith_index_u32(u_input.b.x, 10u)];
    return ~arg_0.a.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_2, 21>();
    let var_0 = global3[_wgslsmith_index_u32(~(arg_2.x ^ func_3(Struct_3(arg_1), 2147483647i, _wgslsmith_f_op_f32(arg_1.c.x + -1422f), !global2.xy)) << (~u_input.b.x % 32u), 10u)];
    global0 = array<Struct_2, 21>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.c.x)), _wgslsmith_f_op_f32(min(arg_1.c.x, var_0.a)))), false);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(arg_1.c.zx));
    return Struct_2(~arg_1.a, vec4<u32>(10066u >> (arg_2.x % 32u), _wgslsmith_div_u32(~4294967295u, select(27856u, 4294967295u, arg_0.b)) | ~firstLeadingBit(1u), _wgslsmith_sub_u32(21737u, arg_1.b.x), ~((u_input.c.x ^ 4294967295u) << (0u % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(arg_1.c, arg_1.c)))) + _wgslsmith_f_op_vec3_f32(abs(arg_1.c)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>) -> u32 {
    global1 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(1i, -16385i, u_input.a.x), vec3<i32>(-_wgslsmith_dot_vec3_i32(u_input.a.xyz, vec3<i32>(u_input.a.x, 0i, global1.x)), arg_0.a.a, u_input.a.x)), ~arg_1.wyw);
    global1 = u_input.a.zxw;
    global3 = array<Struct_1, 10>();
    global1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(arg_0.a.a, _wgslsmith_add_i32(func_2(Struct_1(arg_0.a.c.x, global2.x), arg_0.a, vec2<u32>(u_input.c.x, u_input.c.x)).a, ~arg_1.x), arg_1.x), -31515i, -31621i | arg_1.x), arg_1.yyx, reverseBits(~vec3<i32>(arg_1.x, _wgslsmith_dot_vec2_i32(arg_1.xx, u_input.a.xw), global1.x ^ 1i)));
    global2 = select(select(!select(vec3<bool>(global2.x, global2.x, global2.x), !vec3<bool>(global2.x, false, global2.x), !vec3<bool>(true, true, global2.x)), !select(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(false, false, true), global2.x), vec3<bool>(global2.x, false, false), 9444i < arg_0.a.a), true), select(!vec3<bool>(true, true, global2.x), select(vec3<bool>(global2.x, all(vec3<bool>(global2.x, global2.x, global2.x)), true), !select(vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, false, true), true), !select(vec3<bool>(global2.x, true, false), vec3<bool>(false, global2.x, global2.x), true)), select(select(select(vec3<bool>(true, global2.x, true), vec3<bool>(true, global2.x, false), global2.x), vec3<bool>(true, false, false), vec3<bool>(global2.x, global2.x, false)), select(vec3<bool>(global2.x, false, global2.x), select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, true, false)), true), !select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, true, false), true))), true && (global2.x || true));
    return firstTrailingBit(arg_0.a.b.x & 14766u);
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    global3 = array<Struct_1, 10>();
    var var_0 = ~abs(-(-2147483647i >> (arg_0 % 32u))) << (1u % 32u);
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(54382u, 0u), 10u)];
    global0 = array<Struct_2, 21>();
    global2 = select(!select(select(vec3<bool>(false, arg_2.b, false), vec3<bool>(var_1.b, true, global2.x), vec3<bool>(var_1.b, arg_2.b, false)), select(select(vec3<bool>(true, arg_2.b, true), vec3<bool>(global2.x, var_1.b, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(global2.x, global2.x, false), vec3<bool>(var_1.b, arg_2.b, false)), all(vec3<bool>(true, true, true))), select(vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(false, true, false), var_1.b)), select(!vec3<bool>(any(vec4<bool>(false, var_1.b, arg_2.b, false)), all(vec4<bool>(false, global2.x, false, true)), global2.x), !(!select(vec3<bool>(arg_2.b, arg_2.b, false), vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, arg_2.b, var_1.b))), !(!vec3<bool>(var_1.b, true, false))), !vec3<bool>(var_1.b, false, select(!global2.x, true, u_input.c.x > arg_0)));
    return global0[_wgslsmith_index_u32(min(abs(firstTrailingBit(func_4(Struct_3(Struct_2(2147483647i, vec4<u32>(arg_0, 74432u, 1u, u_input.b.x), vec3<f32>(-233f, arg_2.a, arg_2.a))), u_input.a))), arg_0), 21u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    var var_0 = func_5(_wgslsmith_clamp_u32(u_input.b.x, func_4(Struct_3(func_2(global3[_wgslsmith_index_u32(10560u, 10u)], Struct_2(-21402i, vec4<u32>(4294967295u, 61946u, u_input.b.x, arg_2), arg_0), vec2<u32>(u_input.c.x, arg_2))), countOneBits(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(62562i, global1.x, -6737i, u_input.a.x)))), u_input.c.x), max(~(~u_input.a.xy), -vec2<i32>(32647i, global1.x) ^ global1.xz), global3[_wgslsmith_index_u32(abs(~(~abs(arg_2))), 10u)]);
    global1 = _wgslsmith_mult_vec3_i32(~abs(vec3<i32>(firstLeadingBit(u_input.a.x), -1i, _wgslsmith_add_i32(-1i, global1.x))), -vec3<i32>(~var_0.a | func_2(global3[_wgslsmith_index_u32(u_input.c.x, 10u)], Struct_2(16666i, vec4<u32>(50316u, 0u, var_0.b.x, u_input.c.x), vec3<f32>(arg_0.x, -904f, arg_1)), vec2<u32>(29571u, u_input.b.x)).a, select(u_input.a.x, ~var_0.a, all(vec3<bool>(false, false, true))), 2147483647i ^ -global1.x));
    var var_1 = ~_wgslsmith_clamp_vec2_u32(u_input.b, ~var_0.b.wz, u_input.b);
    let var_2 = vec3<bool>(global2.x, select(false, !all(!vec3<bool>(global2.x, true, global2.x)), false), global2.x);
    let var_3 = vec3<u32>(_wgslsmith_sub_u32(~u_input.b.x, var_0.b.x), 4294967295u << (~var_1.x % 32u), _wgslsmith_mod_u32(var_1.x & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, 61483u), vec3<u32>(28565u, u_input.c.x, var_1.x)), func_4(Struct_3(Struct_2(1i, vec4<u32>(53464u, 0u, 19273u, 68322u), arg_0)), min(u_input.a, vec4<i32>(-46023i, -2471i, 0i, u_input.a.x))))) | vec3<u32>(u_input.c.x, var_0.b.x, select(_wgslsmith_mod_u32(max(50373u, var_1.x), ~0u), firstLeadingBit(var_1.x) ^ 36534u, !any(vec3<bool>(true, global2.x, global2.x))));
    return global0[_wgslsmith_index_u32(1u, 21u)];
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> bool {
    global0 = array<Struct_2, 21>();
    global1 = vec3<i32>(-2147483647i, arg_0.a, 0i);
    let var_0 = countOneBits(31995u);
    global1 = vec3<i32>(1i, arg_0.a, ~arg_0.a);
    let var_1 = _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-func_5(~39570u, _wgslsmith_mult_vec2_i32(~global1.xy, max(global1.zz, global1.zx)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~arg_0.b, select(vec4<u32>(97962u, arg_1, arg_1, 21710u), vec4<u32>(20837u, arg_1, u_input.c.x, arg_2.x), vec4<bool>(global2.x, true, false, true))), 10u)]).c.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-1i) * -u_input.a;
    var var_1 = select(vec2<bool>(func_6(func_1(vec3<f32>(551f, 440f, 291f), 1f, _wgslsmith_add_u32(1u, u_input.c.x)), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, 4689u), ~u_input.b.x), vec3<u32>(u_input.b.x, ~u_input.b.x, min(u_input.b.x, 1u))), any(!(!vec3<bool>(global2.x, global2.x, global2.x)))), select(global2.yy, vec2<bool>(global2.x, global2.x), global2.x), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_5(17341u, var_0.yw, Struct_1(-291f, false)).c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f)))));
}

