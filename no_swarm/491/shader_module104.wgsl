struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(827f, 249f, -271f, 299f), vec4<f32>(-1559f, -584f, 951f, 151f), vec4<f32>(1417f, -1091f, -160f, 112f), vec4<f32>(-1112f, 262f, -495f, -725f), vec4<f32>(-101f, -312f, 626f, -1590f), vec4<f32>(497f, -467f, 1691f, 142f), vec4<f32>(-2042f, 1058f, -1000f, -256f), vec4<f32>(1189f, -846f, -618f, -321f), vec4<f32>(768f, -1599f, 222f, 1000f), vec4<f32>(735f, -1146f, -786f, -1040f), vec4<f32>(-138f, -592f, -165f, -559f), vec4<f32>(-666f, -112f, 1000f, 156f), vec4<f32>(-296f, 1000f, 307f, -1054f), vec4<f32>(-1794f, -105f, 1574f, -575f), vec4<f32>(-1488f, -931f, 670f, 1254f), vec4<f32>(2166f, -833f, 952f, 497f), vec4<f32>(605f, -2142f, 814f, 1325f), vec4<f32>(-1567f, 730f, 479f, 938f), vec4<f32>(-1072f, 503f, -2373f, -221f), vec4<f32>(2262f, 170f, -655f, 587f), vec4<f32>(1000f, -343f, 2123f, 275f), vec4<f32>(-1107f, 1447f, 2073f, 2026f), vec4<f32>(597f, -652f, 101f, 1757f), vec4<f32>(-813f, 1202f, 1000f, 682f), vec4<f32>(-1455f, -1000f, -755f, 1284f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(round(arg_1)))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-424f, -328f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_1, arg_1))))), u_input.c.x, vec4<bool>(!arg_2.a.a, ~2147483647i == select(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.c.x), all(vec3<bool>(true, arg_2.b, arg_0.c.a))), true, true));
    var var_1 = !all(var_0.c.yz);
    let var_2 = !(reverseBits(_wgslsmith_mod_i32(1i, 58188i)) != abs(u_input.a.x));
    global0 = _wgslsmith_mod_u32(12413u, ~(~firstTrailingBit(1u)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, 733f, _wgslsmith_f_op_f32(trunc(-690f)));
    return reverseBits(~u_input.b);
}

fn func_2() -> Struct_3 {
    global0 = 16171u;
    var var_0 = Struct_3(_wgslsmith_f_op_f32(round(185f)), _wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b)) | func_3(Struct_2(Struct_1(true), true, Struct_1(false)), _wgslsmith_f_op_f32(max(104f, 1035f)), Struct_2(Struct_1(true), false, Struct_1(true)), Struct_2(Struct_1(true), true, Struct_1(false))), u_input.b), u_input.c.x, select(vec3<bool>(true, !any(vec3<bool>(true, false, true)), false), vec3<bool>(false, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, false))), all(vec3<bool>(false, true, true))), u_input.b.ywy);
    var var_1 = ~reverseBits(u_input.a.x) & u_input.c.x;
    let var_2 = u_input.c.x;
    let var_3 = var_0.c;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(-var_0.a), all(vec2<bool>(var_0.d.x, var_0.d.x)))) - -1152f)), ~vec4<u32>(1u, min(firstLeadingBit(var_0.e.x), var_0.e.x), 69950u, var_0.b.x), _wgslsmith_mod_i32(var_0.c, max(~(1i ^ var_2), -42958i)), select(var_0.d, select(select(select(vec3<bool>(var_0.d.x, false, var_0.d.x), var_0.d, vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), select(var_0.d, var_0.d, var_0.d.x), select(var_0.d, var_0.d, vec3<bool>(true, false, var_0.d.x))), var_0.d, !(var_0.e.x > var_0.e.x)), var_0.d), u_input.b.yxy);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = ~vec3<u32>(u_input.b.x, u_input.b.x, ~1u);
    var_1 = func_3(Struct_2(Struct_1(select(var_0.d.x, !var_0.d.x, any(vec2<bool>(false, false)))), select(~42169u < firstTrailingBit(11319u), var_0.d.x, true), Struct_1(var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a)))), Struct_2(Struct_1(true), any(!vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x)), Struct_1(true)), Struct_2(Struct_1(func_2().d.x), var_0.d.x, Struct_1(!var_0.d.x || (var_0.d.x & var_0.d.x)))).zyz;
    let var_2 = Struct_1(false);
    var_1 = select(vec3<u32>(abs(~4294967295u), ~38433u, 57097u), vec3<u32>(func_3(Struct_2(Struct_1(var_0.d.x), var_2.a == true, Struct_1(var_0.d.x)), 1545f, Struct_2(var_2, all(vec2<bool>(false, var_2.a)), var_2), Struct_2(var_2, true, Struct_1(var_0.d.x))).x, u_input.b.x, ~(~func_3(Struct_2(var_2, true, Struct_1(var_0.d.x)), var_0.a, Struct_2(Struct_1(false), true, var_2), Struct_2(var_2, var_2.a, Struct_1(var_0.d.x))).x)), vec3<bool>(-var_0.c < -_wgslsmith_mod_i32(var_0.c, 2147483647i), select(any(select(var_0.d.yy, vec2<bool>(false, true), vec2<bool>(var_2.a, var_0.d.x))), true, var_2.a), var_0.d.x));
    return Struct_2(Struct_1(!var_2.a | (_wgslsmith_f_op_f32(-var_0.a) > var_0.a)), any(vec2<bool>(4294967295u <= _wgslsmith_sub_u32(50096u, var_0.e.x), var_2.a)), var_2);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_1 {
    global0 = 23052u;
    var var_0 = func_1();
    let var_1 = Struct_3(arg_2.b.x, vec4<u32>(_wgslsmith_add_u32(arg_2.c.x, ~min(arg_2.c.x, arg_2.c.x)), 0u, ~(~3703u) ^ arg_2.c.x, 23897u), u_input.a.x, func_2().d, ~u_input.b.www);
    var_0 = Struct_2(var_0.a, false && var_0.a.a, func_1().a);
    var_0 = func_1();
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.wyx;
    var var_1 = Struct_4(Struct_2(Struct_1(true), true, func_4(vec2<bool>(true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), Struct_4(func_1(), vec3<f32>(-1038f, -609f, -222f), u_input.b.zwy, Struct_2(Struct_1(false), true, Struct_1(false)), vec3<f32>(-175f, -1123f, -871f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-557f, -1264f, 551f)) - vec3<f32>(1765f, -1000f, -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1954f, -977f, 1021f), vec3<f32>(1835f, 367f, 1279f), vec3<bool>(true, false, false))) - vec3<f32>(1f, 1f, 1f))) * vec3<f32>(-1637f, _wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-984f)) * 1f))), u_input.b.ywx, func_1(), vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1032f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-185f, 1439f) * _wgslsmith_f_op_f32(690f * 846f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1800f - 1445f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u, 25u)])))), vec4<f32>(-642f, 612f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.e.x)))), func_2().a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~abs(1u), 25u)])));
    let var_3 = Struct_3(-1560f, vec4<u32>(var_1.c.x, max(~(0u ^ u_input.b.x), var_1.c.x), 11099u, 4294967295u), 0i, select(select(select(vec3<bool>(false, true, var_1.a.a.a), select(vec3<bool>(true, true, var_1.d.a.a), vec3<bool>(true, true, true), false), func_2().d.x), vec3<bool>(var_1.d.b & var_1.d.a.a, true, var_1.a.a.a), !all(vec4<bool>(true, var_1.d.c.a, var_1.d.b, var_1.a.b))), vec3<bool>(var_1.a.c.a, false, true), select(select(vec3<bool>(var_1.a.b, var_1.a.a.a, var_1.d.b), vec3<bool>(true, true, true), !vec3<bool>(false, true, var_1.a.b)), vec3<bool>(var_1.d.c.a, true, true), func_2().d)), vec3<u32>(~abs(u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 23937u), u_input.b.wx) << (_wgslsmith_sub_u32(4294967295u, var_1.c.x) % 32u), u_input.b.x) << (u_input.b.yzw % vec3<u32>(32u)));
    var var_4 = func_4(!var_3.d.xz, select(!(!vec4<bool>(false, false, var_3.d.x, true)), !(!(!vec4<bool>(var_3.d.x, var_1.d.a.a, true, false))), !(!any(var_3.d))), Struct_4(Struct_2(Struct_1(-1473f >= var_1.e.x), select(true, true, all(vec2<bool>(true, var_1.a.c.a))), func_1().a), _wgslsmith_f_op_vec3_f32(step(var_2.zyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, 1000f, var_1.e.x) * var_1.e)))), var_3.b.zyw, Struct_2(func_4(select(vec2<bool>(var_1.d.b, true), vec2<bool>(true, true), var_3.d.x), select(vec4<bool>(false, var_1.d.a.a, false, var_3.d.x), vec4<bool>(var_1.a.c.a, false, true, var_1.d.a.a), vec4<bool>(var_1.d.a.a, var_1.a.a.a, var_3.d.x, true)), Struct_4(Struct_2(Struct_1(var_3.d.x), false, var_1.d.a), vec3<f32>(-863f, -1000f, -140f), vec3<u32>(4294967295u, var_3.b.x, 25317u), Struct_2(Struct_1(true), var_1.a.a.a, var_1.a.c), vec3<f32>(1137f, 637f, -574f))), var_1.a.c.a, Struct_1(all(vec3<bool>(var_3.d.x, var_1.d.c.a, true)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.xww)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1031f, var_1.b.x, var_1.e.x), vec3<f32>(-490f, var_2.x, var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

