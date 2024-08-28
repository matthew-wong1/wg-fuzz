struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-937f, -1145f);

var<private> global1: vec3<f32> = vec3<f32>(-379f, -632f, 1000f);

var<private> global2: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-21544i, 5884i), vec2<i32>(-9446i, -49702i), vec2<i32>(i32(-2147483648), -51759i), vec2<i32>(32451i, 1i), vec2<i32>(-5084i, i32(-2147483648)), vec2<i32>(-16060i, 2147483647i), vec2<i32>(68297i, 24359i), vec2<i32>(-1i, 91454i), vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, -30783i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-31668i, -43849i), vec2<i32>(2147483647i, -18262i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = global1.zz;
    let var_1 = arg_1;
    let var_2 = Struct_2(vec4<f32>(-621f, var_1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_1.b, _wgslsmith_div_f32(412f, var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), false)), _wgslsmith_div_f32(global1.x, arg_1.b)), ~vec2<u32>(~1u, 15860u), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) * _wgslsmith_f_op_f32(trunc(790f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b, -1215f)))), arg_2.x, abs(select(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 9541u), vec2<u32>(2018u, arg_0)), ~vec2<u32>(arg_0, 20683u), arg_2.x & arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.b)) * _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_clamp_i32(2147483647i, ~_wgslsmith_div_i32(arg_1.a.a, var_1.a.a), -(arg_1.a.a ^ arg_1.a.a))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(247f * _wgslsmith_f_op_f32(floor(-1577f))) + global0.x), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_div_f32(-1481f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-878f)), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))) * -2254f)));
    var var_3 = -abs(select(min(vec3<i32>(arg_1.a.a, var_2.c.e, u_input.a.x), u_input.a) << (~vec3<u32>(4294967295u, 56446u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(~u_input.a, vec3<i32>(var_1.a.a, arg_1.a.a, var_2.c.e)), !(!vec3<bool>(var_2.c.b, var_2.c.b, true))));
    let var_4 = vec2<bool>(all(!(!(!vec4<bool>(false, true, var_2.c.b, arg_2.x)))), var_2.c.b && true);
    return select(!select(vec2<bool>(global1.x > arg_1.b, any(vec2<bool>(false, var_2.c.b))), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), any(arg_2)), select(!arg_2.xz, var_4, arg_0 <= 8577u), var_4);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.zz), global1.yy, select(vec2<bool>(true, true), vec2<bool>(true, true), select(!func_3(50434u, Struct_4(Struct_3(u_input.a.x), global0.x, arg_0), vec4<bool>(true, false, true, false)), func_3(0u, Struct_4(Struct_3(u_input.a.x), global1.x, global0.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), vec2<bool>(true, true)))));
    let var_0 = vec2<bool>(any(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), all(vec2<bool>(true, false))))), true);
    let var_1 = u_input.a;
    var var_2 = Struct_1(vec3<f32>(global0.x, _wgslsmith_f_op_f32(722f - _wgslsmith_f_op_f32(step(arg_0, -558f))), global1.x), !(false || var_0.x), ~max(~firstLeadingBit(vec2<u32>(17971u, 12690u)), max(~vec2<u32>(49433u, 1u), ~vec2<u32>(18315u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-155f + global0.x)), -1326f))), var_1.x >> ((~_wgslsmith_add_u32(27314u, 7132u) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 35065u), vec2<u32>(55469u, 4294967295u)) % 32u)) % 32u));
    var var_3 = Struct_4(Struct_3(_wgslsmith_add_i32(max(2147483647i, -16791i), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, var_1.x), u_input.a.x))), var_2.d, arg_0);
    return Struct_1(var_2.a, !var_0.x, var_2.c, 1443f, max(13433i, ~var_2.e));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_0.x;
    return func_2(_wgslsmith_f_op_f32(global0.x - global0.x));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool) -> f32 {
    var var_0 = Struct_2(vec4<f32>(761f, _wgslsmith_f_op_f32(round(518f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(733f + 869f)), 606f), vec2<u32>(firstLeadingBit(4294967295u), 4294967295u), func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1731f, -469f, global0.x) - vec3<f32>(global1.x, -1192f, global1.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(228f, arg_0.c, global1.x), vec3<f32>(global0.x, -688f, -953f))))), !(!arg_2))), func_2(arg_0.b), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(497f, global0.x, global0.x, -122f) + vec4<f32>(-663f, 1152f, arg_0.b, global0.x))), ~vec2<u32>(1u, 1u), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1230f, global1.x) * vec3<f32>(global1.x, -585f, 1349f)), func_3(21162u, arg_0, vec4<bool>(true, arg_2, true, arg_2)).x, vec2<u32>(1u, 1u), global1.x, abs(-53169i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, 587f, arg_0.b, arg_0.c)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 381f, _wgslsmith_div_f32(global0.x, arg_0.c), _wgslsmith_f_op_f32(floor(-1845f)))))));
    let var_1 = global1.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.a + vec3<f32>(1156f, -264f, -496f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(582f, -101f, 828f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, _wgslsmith_f_op_f32(sign(122f)), 542f)))), arg_2, vec2<u32>(abs(var_0.c.c.x), min(4294967295u, ~24480u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_0.c.a, func_2(1785f), Struct_2(var_0.d, var_0.b, var_0.c, vec4<f32>(1445f, 1245f, var_0.a.x, -1693f))).a.x + arg_0.c) - _wgslsmith_f_op_f32(select(func_4(var_0.d.zxy, func_2(-964f), Struct_2(vec4<f32>(global1.x, -817f, global0.x, global1.x), vec2<u32>(var_0.c.c.x, var_0.c.c.x), Struct_1(var_0.a.zxw, var_0.c.b, vec2<u32>(24528u, var_0.c.c.x), 1412f, 0i), vec4<f32>(arg_0.b, arg_0.b, 1132f, -1232f))).a.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(var_0.d.x + 163f)), !(!arg_2)))), -5614i);
    var var_3 = arg_0.a;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-780f, -889f, -154f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c.a.x, arg_0.b, arg_0.c)))))))));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(-22321i), -1000f, -1003f), Struct_3(u_input.a.x), true)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, global1.x, 133f))), any(vec2<bool>(true, false)) != false))));
    let var_0 = vec4<u32>(~4545u, ~_wgslsmith_sub_u32(~abs(108005u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(38253u, 0u, 1u), vec3<u32>(0u, 4294967295u, 20162u))), firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -159f, 537f) - vec3<f32>(-1378f, 1752f, 1075f))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -942f, 237f)), any(vec4<bool>(true, false, true, false)), abs(vec2<u32>(0u, 4294967295u)), _wgslsmith_f_op_f32(-global0.x), u_input.a.x), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 328f, global1.x, global1.x) + vec4<f32>(1442f, global1.x, global1.x, 1181f)), ~vec2<u32>(0u, 0u), Struct_1(vec3<f32>(101f, global1.x, global1.x), false, vec2<u32>(20718u, 4294967295u), -836f, u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1357f, global0.x, global0.x, 978f) * vec4<f32>(-224f, global1.x, global1.x, 374f)))).c.x, ~20849u, ~0u));
    var var_1 = true;
    global2 = array<vec2<i32>, 15>();
    let var_2 = _wgslsmith_clamp_vec3_u32(var_0.yzy, firstLeadingBit(~(~vec3<u32>(4294967295u, var_0.x, var_0.x))), var_0.yxx);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(~var_0.x, 1u)));
}

