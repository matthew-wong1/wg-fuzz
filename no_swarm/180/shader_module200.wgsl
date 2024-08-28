struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 510f;

var<private> global1: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(1u, 11402u), vec2<u32>(1u, 1u), vec2<u32>(19105u, 9876u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 40869u), vec2<u32>(43595u, 4294967295u), vec2<u32>(4294967295u, 20465u), vec2<u32>(1u, 1u), vec2<u32>(36320u, 1u), vec2<u32>(0u, 47925u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 23156u), vec2<u32>(0u, 39614u), vec2<u32>(0u, 4294967295u), vec2<u32>(16331u, 4294967295u), vec2<u32>(17717u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 28592u), vec2<u32>(62723u, 4294967295u), vec2<u32>(13726u, 14012u), vec2<u32>(0u, 82212u), vec2<u32>(37129u, 0u), vec2<u32>(58404u, 13249u), vec2<u32>(0u, 174u), vec2<u32>(50192u, 17025u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(46988u, 11443u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<vec2<u32>, 31>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-496f, 524f, -220f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1601f, -404f, -851f))))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-792f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -691f))), _wgslsmith_div_f32(-526f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1277f, -1042f))), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)), true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))), abs(select(vec2<i32>(-1i, -26271i), vec2<i32>(12374i, 40376i), true)) << (vec2<u32>(u_input.a.x, 22776u) % vec2<u32>(32u))), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))));
    let var_1 = var_0.b;
    return _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(step(-350f, var_0.b.b)));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1610f, 690f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-568f, -371f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1752f, -691f) * vec2<f32>(3213f, -473f))))))), _wgslsmith_f_op_f32(func_3()), vec4<bool>(arg_0, !arg_0, all(vec3<bool>(true, true, true)), true & !arg_0), countOneBits(-_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -1134i), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.b, u_input.b)))));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(3321f * _wgslsmith_f_op_f32(floor(-578f)))), _wgslsmith_f_op_f32(-1f)), 1101f, select(vec4<bool>(all(var_0.c.zxx), true, var_0.c.x, _wgslsmith_f_op_f32(func_3()) >= -1000f), var_0.c, true), vec2<i32>(u_input.b, ~_wgslsmith_mod_i32(0i, -54129i)));
    var var_1 = true;
    global1 = array<vec2<u32>, 31>();
    let var_2 = arg_1;
    return vec2<f32>(var_0.a.x, -1053f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    return arg_1;
}

fn func_1() -> f32 {
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(159f, -173f)), -834f, _wgslsmith_f_op_f32(round(-2253f))) * vec3<f32>(-1381f, _wgslsmith_f_op_f32(-153f * -2210f), 1005f)), Struct_1(_wgslsmith_f_op_vec2_f32(func_2(true, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(func_3()), vec4<bool>(u_input.b >= u_input.b, any(vec2<bool>(false, true)), u_input.a.x != u_input.c.x, false), max(vec2<i32>(-1i, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-42434i, 2147483647i)))), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1223f, -800f, -1000f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_div_f32(-758f, 1000f), _wgslsmith_div_f32(1148f, -777f))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(109f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(min(987f, 541f))), vec4<bool>(any(vec2<bool>(false, false)), true, true, true), min(reverseBits(vec2<i32>(46315i, u_input.b)), ~vec2<i32>(u_input.b, -22639i))), vec2<bool>(true, true)));
    var_0 = Struct_2(var_0.a, func_4(func_4(func_4(Struct_2(vec3<f32>(var_0.a.x, var_0.a.x, 532f), var_0.b, vec2<bool>(var_0.b.c.x, var_0.b.c.x)), func_4(Struct_2(var_0.a, var_0.b, var_0.b.c.zw), Struct_2(var_0.a, var_0.b, var_0.c))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(252f, var_0.a.x, 677f)), Struct_1(var_0.a.zy, var_0.b.b, vec4<bool>(var_0.b.c.x, var_0.b.c.x, false, var_0.c.x), var_0.b.d), var_0.b.c.wz)), func_4(func_4(Struct_2(var_0.a, Struct_1(var_0.a.yz, var_0.b.a.x, var_0.b.c, vec2<i32>(-6777i, 30272i)), var_0.b.c.wx), func_4(Struct_2(vec3<f32>(var_0.b.a.x, var_0.b.a.x, var_0.b.b), var_0.b, var_0.b.c.xz), Struct_2(var_0.a, var_0.b, vec2<bool>(true, var_0.b.c.x)))), Struct_2(var_0.a, Struct_1(vec2<f32>(1454f, 1124f), var_0.a.x, var_0.b.c, vec2<i32>(var_0.b.d.x, -20834i)), var_0.c))).b, !vec2<bool>(all(vec2<bool>(false, var_0.b.c.x)), any(var_0.b.c)));
    global1 = array<vec2<u32>, 31>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(377f)), -1062f))));
    global1 = array<vec2<u32>, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(min(var_0.a.x, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_1()))) + -1372f))));
    var var_1 = !all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true));
    var var_2 = any(vec2<bool>(!select(true, true, true) & all(vec4<bool>(true, true, true, true)), true));
    global0 = var_0;
    var var_3 = func_4(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(select(334f, var_0, false)), -1169f), vec3<f32>(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(var_0 - 149f), var_0)), func_4(func_4(Struct_2(vec3<f32>(var_0, var_0, 337f), Struct_1(vec2<f32>(var_0, 389f), var_0, vec4<bool>(false, true, true, true), vec2<i32>(1i, u_input.b)), vec2<bool>(true, true)), Struct_2(vec3<f32>(var_0, 922f, -308f), Struct_1(vec2<f32>(-1492f, 186f), var_0, vec4<bool>(false, false, false, true), vec2<i32>(u_input.b, 0i)), vec2<bool>(true, true))), func_4(func_4(Struct_2(vec3<f32>(-133f, var_0, var_0), Struct_1(vec2<f32>(-514f, -824f), 713f, vec4<bool>(false, true, true, true), vec2<i32>(u_input.b, u_input.b)), vec2<bool>(false, true)), Struct_2(vec3<f32>(-445f, var_0, -396f), Struct_1(vec2<f32>(1000f, var_0), var_0, vec4<bool>(true, true, true, true), vec2<i32>(u_input.b, u_input.b)), vec2<bool>(true, false))), func_4(Struct_2(vec3<f32>(1403f, -1685f, 713f), Struct_1(vec2<f32>(var_0, 325f), var_0, vec4<bool>(true, true, true, true), vec2<i32>(-84415i, 2147483647i)), vec2<bool>(true, true)), Struct_2(vec3<f32>(-189f, -415f, 466f), Struct_1(vec2<f32>(595f, -233f), var_0, vec4<bool>(true, true, true, false), vec2<i32>(u_input.b, u_input.b)), vec2<bool>(true, true))))).b, func_4(func_4(func_4(Struct_2(vec3<f32>(var_0, var_0, var_0), Struct_1(vec2<f32>(-1850f, var_0), var_0, vec4<bool>(false, true, true, false), vec2<i32>(-2147483647i, u_input.b)), vec2<bool>(true, true)), Struct_2(vec3<f32>(-1140f, var_0, -301f), Struct_1(vec2<f32>(var_0, var_0), 791f, vec4<bool>(true, true, false, false), vec2<i32>(12279i, u_input.b)), vec2<bool>(false, true))), func_4(Struct_2(vec3<f32>(var_0, -1000f, var_0), Struct_1(vec2<f32>(var_0, 813f), -1570f, vec4<bool>(false, true, false, false), vec2<i32>(u_input.b, 35094i)), vec2<bool>(true, true)), Struct_2(vec3<f32>(2290f, 1487f, var_0), Struct_1(vec2<f32>(var_0, 531f), -243f, vec4<bool>(false, false, true, false), vec2<i32>(-2459i, u_input.b)), vec2<bool>(false, true)))), Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, 1260f, var_0))), Struct_1(vec2<f32>(var_0, var_0), -534f, vec4<bool>(false, true, true, false), vec2<i32>(-30659i, 13687i)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))).b.c.xy), func_4(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-901f, var_0, -553f)), Struct_1(vec2<f32>(var_0, var_0), 394f, vec4<bool>(false, true, true, false), vec2<i32>(-2147483647i, u_input.b)), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), func_4(func_4(Struct_2(vec3<f32>(2008f, 377f, 197f), Struct_1(vec2<f32>(var_0, -649f), var_0, vec4<bool>(false, false, false, false), vec2<i32>(1i, u_input.b)), vec2<bool>(true, true)), Struct_2(vec3<f32>(var_0, var_0, 1310f), Struct_1(vec2<f32>(161f, 594f), var_0, vec4<bool>(true, true, false, false), vec2<i32>(-2147483647i, u_input.b)), vec2<bool>(true, false))), Struct_2(vec3<f32>(1058f, -2177f, var_0), Struct_1(vec2<f32>(1000f, var_0), 459f, vec4<bool>(true, true, true, true), vec2<i32>(u_input.b, u_input.b)), vec2<bool>(false, false)))), Struct_2(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1084f), var_0), Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(370f, var_0))), _wgslsmith_f_op_f32(max(1268f, -1701f)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, 7657i))), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.d.x, ~firstLeadingBit(vec4<u32>(17876u, ~1u, ~u_input.a.x, ~u_input.c.x)), 12118u >> (_wgslsmith_add_u32(u_input.c.x, u_input.c.x) % 32u), ~vec4<i32>(-u_input.b, ~u_input.b, abs(-29323i), -31752i) << (vec4<u32>(u_input.a.x, 1u, min(u_input.c.x >> (1u % 32u), ~u_input.a.x), u_input.a.x) % vec4<u32>(32u)));
}

