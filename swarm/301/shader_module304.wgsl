struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 27753u);

var<private> global1: array<Struct_2, 19>;

var<private> global2: f32 = -1809f;

var<private> global3: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-2121f, -921f, 2268f), vec3<f32>(1333f, -494f, 2141f), vec3<f32>(-366f, -2517f, 3037f), vec3<f32>(864f, 212f, -698f), vec3<f32>(1036f, 1788f, 108f), vec3<f32>(623f, 2397f, -677f), vec3<f32>(-915f, 2545f, -270f), vec3<f32>(228f, 477f, 353f), vec3<f32>(597f, -1382f, -657f), vec3<f32>(-138f, -1820f, 1088f), vec3<f32>(-1264f, -429f, 2235f), vec3<f32>(-1000f, -439f, 729f), vec3<f32>(-694f, -990f, 874f), vec3<f32>(954f, 1000f, -623f), vec3<f32>(631f, -931f, 2004f), vec3<f32>(468f, -441f, -345f), vec3<f32>(-186f, -540f, -1077f), vec3<f32>(194f, 768f, -519f), vec3<f32>(331f, -1656f, -1579f), vec3<f32>(-602f, 228f, 859f), vec3<f32>(354f, 688f, 1510f), vec3<f32>(-490f, -889f, 418f), vec3<f32>(923f, 2276f, 266f), vec3<f32>(124f, 158f, 1349f), vec3<f32>(-1032f, 1381f, -1000f), vec3<f32>(235f, -406f, 545f), vec3<f32>(-442f, -100f, -1249f));

var<private> global4: array<f32, 15> = array<f32, 15>(527f, 260f, -874f, 1460f, 723f, 1413f, 1552f, -1098f, -443f, 174f, -1000f, -588f, 1361f, -963f, -293f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global3 = array<vec3<f32>, 27>();
    var var_0 = u_input.c;
    var_0 = u_input.c | u_input.c;
    var var_1 = all(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.x, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 9132u), vec2<u32>(u_input.a, 0u)))), 15u)]), all(vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), !any(vec3<bool>(true, false, false)), false, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(~20494u ^ u_input.a, global0.x, _wgslsmith_add_u32(max(18905u, u_input.a), 80769u)), vec3<u32>(1u, min(4294967295u, 1u), _wgslsmith_sub_u32(11004u, 0u))));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>, arg_3: f32) -> vec2<u32> {
    global4 = array<f32, 15>();
    global4 = array<f32, 15>();
    global1 = array<Struct_2, 19>();
    let var_0 = select(arg_0.b, arg_0.b, vec4<bool>(func_3(), !arg_0.a.b && (true | arg_0.b.x), func_3(), !all(arg_0.b.xy)));
    global2 = _wgslsmith_f_op_f32(min(1601f, _wgslsmith_div_f32(-2260f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u << (~u_input.a % 32u), 15u)]))));
    return ~vec2<u32>(reverseBits(7844u << (global0.x % 32u)), 20113u & ~arg_0.a.c.x) << ((select(arg_0.a.c.xz, arg_2.xw, all(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))) ^ _wgslsmith_div_vec2_u32((vec2<u32>(57977u, 26394u) & arg_0.a.c.zz) | vec2<u32>(33275u, arg_0.a.c.x), vec2<u32>(global0.x, _wgslsmith_clamp_u32(arg_0.a.c.x, 3619u, 1u)))) % vec2<u32>(32u));
}

fn func_1() -> Struct_1 {
    let var_0 = !all(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)));
    var var_1 = !select(vec4<bool>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(6063u, 15u)]) <= global4[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 15u)], any(vec2<bool>(var_0, true)) == !var_0, any(vec3<bool>(var_0, var_0, true)), var_0), !(!select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, false, var_0, false), vec4<bool>(var_0, var_0, var_0, true))), !any(vec2<bool>(false, false)));
    global1 = array<Struct_2, 19>();
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(46807u, 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global0.x | u_input.a, 15u)]))));
    let var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_clamp_u32(u_input.a, 1u, 4294967295u)), func_2(Struct_2(Struct_1(global4[_wgslsmith_index_u32(10094u, 15u)], false, vec3<u32>(global0.x, u_input.a, global0.x)), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<f32>(global4[_wgslsmith_index_u32(u_input.a, 15u)], global4[_wgslsmith_index_u32(u_input.a, 15u)], -1130f, global4[_wgslsmith_index_u32(34489u, 15u)])), 43211u, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 66254u, 4294967295u, 4294967295u), vec4<u32>(global0.x, u_input.a, 0u, u_input.a)), -1129f), ~vec2<u32>(global0.x, global0.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, u_input.a)), ~u_input.a), vec2<u32>(u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), vec4<u32>(8574u, 4294967295u, 31740u, u_input.a)) % 32u), 18861u)));
    return Struct_1(112f, false, _wgslsmith_sub_vec3_u32(select(vec3<u32>(~4294967295u, ~var_2, _wgslsmith_sub_u32(u_input.a, global0.x)), vec3<u32>(25496u, ~u_input.a, global0.x & global0.x), true), vec3<u32>(u_input.a | reverseBits(4294967295u), 1u, u_input.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(-193f, arg_0.b, vec3<u32>(arg_0.c.x, 60043u, ~4294967295u));
    global2 = 102f;
    return ~(~abs(var_0.c.x | var_0.c.x)) ^ ~(~(~_wgslsmith_add_u32(28508u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), func_1());
    var var_1 = vec4<i32>(-21581i, i32(-1i) * -(countOneBits(20216i) << (func_2(Struct_2(Struct_1(global4[_wgslsmith_index_u32(1u, 15u)], false, vec3<u32>(global0.x, u_input.a, var_0)), vec4<bool>(true, true, true, false), vec4<f32>(global4[_wgslsmith_index_u32(859u, 15u)], global4[_wgslsmith_index_u32(0u, 15u)], global4[_wgslsmith_index_u32(97212u, 15u)], global4[_wgslsmith_index_u32(var_0, 15u)])), 1u, vec4<u32>(u_input.a, 4294967295u, 75229u, var_0), -112f).x % 32u)), min(u_input.b, -firstLeadingBit(u_input.c.x)), -1i);
    global2 = _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(u_input.a, 19u)], _wgslsmith_sub_u32(_wgslsmith_mod_u32(~var_0, func_4(Struct_1(650f, false, vec3<u32>(11799u, u_input.a, 4294967295u)), Struct_1(global4[_wgslsmith_index_u32(var_0, 15u)], false, vec3<u32>(u_input.a, 0u, u_input.a)))), _wgslsmith_sub_u32(~20369u, _wgslsmith_mult_u32(u_input.a, global0.x))), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u, 1u, var_0, 0u)), ~vec4<u32>(u_input.a, 17261u, u_input.a, 4294967295u)) ^ (vec4<u32>(global0.x, global0.x, u_input.a, u_input.a) >> (vec4<u32>(43324u, u_input.a, u_input.a, global0.x) % vec4<u32>(32u))), -639f).x, 15u)]));
    var var_2 = func_1();
    let var_3 = -firstTrailingBit(abs(~firstLeadingBit(vec4<i32>(var_1.x, u_input.c.x, 3506i, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(~0i, u_input.c.x << (global0.x % 32u))), _wgslsmith_f_op_f32(exp2(var_2.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-965f, global4[_wgslsmith_index_u32(var_0, 15u)], var_2.a, global4[_wgslsmith_index_u32(68483u, 15u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(700f, var_2.a, -1246f, var_2.a) - vec4<f32>(-1631f, global4[_wgslsmith_index_u32(var_0, 15u)], 493f, -1530f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a, 1860f, -1729f, global4[_wgslsmith_index_u32(1u, 15u)]), vec4<f32>(var_2.a, global4[_wgslsmith_index_u32(0u, 15u)], var_2.a, -1579f))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-360f, global4[_wgslsmith_index_u32(1u, 15u)], var_2.a, var_2.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a, global4[_wgslsmith_index_u32(u_input.a, 15u)], 104f, global4[_wgslsmith_index_u32(1u, 15u)]), vec4<f32>(var_2.a, -536f, -311f, global4[_wgslsmith_index_u32(u_input.a, 15u)])))), _wgslsmith_div_vec4_f32(vec4<f32>(148f, var_2.a, 322f, -880f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-238f, 707f, -767f, 272f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1666f, -498f, global4[_wgslsmith_index_u32(0u, 15u)], 586f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a, var_2.a, -976f, global4[_wgslsmith_index_u32(56666u, 15u)]), vec4<f32>(-1676f, global4[_wgslsmith_index_u32(var_0, 15u)], 1356f, var_2.a))), vec4<f32>(-587f, -1127f, var_2.a, var_2.a))))));
}

