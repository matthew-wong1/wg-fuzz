struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1476f;

var<private> global1: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: array<bool, 27>;

var<private> global3: array<Struct_4, 30>;

var<private> global4: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(vec4<i32>(0i, 16349i, -33849i, 42012i), vec2<i32>(-1i, 12145i), -71014i, vec2<i32>(19770i, 2147483647i), vec2<f32>(-1000f, -527f)), Struct_5(vec4<i32>(2147483647i, -19552i, -33343i, -11286i), vec2<i32>(2147483647i, 18555i), -1i, vec2<i32>(-4903i, 1i), vec2<f32>(-1716f, -1260f)), Struct_5(vec4<i32>(-2261i, -1i, 2147483647i, 2147483647i), vec2<i32>(-1i, 46116i), 1i, vec2<i32>(5941i, 1i), vec2<f32>(-1932f, 449f)), Struct_5(vec4<i32>(0i, 274i, 2147483647i, 2147483647i), vec2<i32>(50875i, 834i), 37160i, vec2<i32>(i32(-2147483648), -1i), vec2<f32>(-1747f, 375f)), Struct_5(vec4<i32>(49695i, -1i, 25276i, 0i), vec2<i32>(-1i, 0i), i32(-2147483648), vec2<i32>(-1i, 0i), vec2<f32>(-1000f, -1776f)), Struct_5(vec4<i32>(2147483647i, 3509i, i32(-2147483648), 1i), vec2<i32>(-63149i, 29863i), 2147483647i, vec2<i32>(12720i, 4129i), vec2<f32>(-472f, -1271f)), Struct_5(vec4<i32>(1i, 2147483647i, -3913i, 0i), vec2<i32>(i32(-2147483648), 0i), i32(-2147483648), vec2<i32>(1i, 2147483647i), vec2<f32>(144f, 612f)), Struct_5(vec4<i32>(-39094i, 0i, 54159i, 0i), vec2<i32>(-57994i, 46446i), 1i, vec2<i32>(40668i, -23593i), vec2<f32>(-475f, -1130f)), Struct_5(vec4<i32>(i32(-2147483648), 0i, 4610i, 25154i), vec2<i32>(27140i, -17904i), -59343i, vec2<i32>(-13731i, -91736i), vec2<f32>(-1814f, -1553f)), Struct_5(vec4<i32>(11721i, 8142i, -31073i, 9828i), vec2<i32>(73727i, i32(-2147483648)), -22660i, vec2<i32>(-3389i, 1i), vec2<f32>(454f, 157f)), Struct_5(vec4<i32>(-1i, -30167i, i32(-2147483648), 1i), vec2<i32>(-5102i, -1i), 0i, vec2<i32>(5448i, -1i), vec2<f32>(-629f, 749f)), Struct_5(vec4<i32>(0i, -11901i, 0i, -9086i), vec2<i32>(0i, -1493i), -37178i, vec2<i32>(2147483647i, 2147483647i), vec2<f32>(-393f, -1467f)), Struct_5(vec4<i32>(37024i, 64728i, -1i, -1i), vec2<i32>(73019i, -25422i), -11118i, vec2<i32>(i32(-2147483648), -18473i), vec2<f32>(-1208f, -821f)), Struct_5(vec4<i32>(-44783i, 8138i, -28014i, 0i), vec2<i32>(-1i, 15921i), -27174i, vec2<i32>(-48869i, 5534i), vec2<f32>(205f, -251f)), Struct_5(vec4<i32>(-1i, 2147483647i, 53967i, -5990i), vec2<i32>(44334i, -11864i), -29896i, vec2<i32>(-3477i, -123405i), vec2<f32>(-780f, 489f)), Struct_5(vec4<i32>(-22677i, 0i, 23774i, 1i), vec2<i32>(-38343i, -30710i), -9467i, vec2<i32>(62224i, 0i), vec2<f32>(-1091f, 697f)), Struct_5(vec4<i32>(1i, -973i, 2147483647i, 2147483647i), vec2<i32>(-6410i, 1i), 58076i, vec2<i32>(2147483647i, -19245i), vec2<f32>(590f, 573f)), Struct_5(vec4<i32>(-53923i, 1i, i32(-2147483648), -1982i), vec2<i32>(-3531i, i32(-2147483648)), -43029i, vec2<i32>(41550i, -2499i), vec2<f32>(-315f, -970f)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = global4[_wgslsmith_index_u32(78746u, 18u)];
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a.d.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.e.x + _wgslsmith_f_op_f32(max(-1331f, arg_1.a.d.x))))))));
    var var_1 = arg_2.b;
    let var_2 = any(vec2<bool>(!select(!global2[_wgslsmith_index_u32(68997u, 27u)], global2[_wgslsmith_index_u32(~44673u, 27u)], global2[_wgslsmith_index_u32(~6656u, 27u)]), any(vec2<bool>(true, true)) & true));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-1795f + var_0.e.x), 4294967295u, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-var_0.a, vec4<i32>(1i, -42701i, arg_1.a.c, arg_2.a.c) ^ vec4<i32>(-2147483647i, arg_3.c, var_0.d.x, -1i), _wgslsmith_div_vec4_i32(var_0.a, vec4<i32>(24983i, 13279i, arg_3.c, arg_2.a.c))), vec4<i32>(-63051i, -47408i, _wgslsmith_add_i32(-10843i, -25768i), -2147483647i)), arg_1.a.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -332f), 527f, -467f, arg_1.a.d.x) - arg_3.e)), u_input.a.xx, arg_3.d.zx);
    return select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], (any(global1[_wgslsmith_index_u32(73695u, 32u)]) | false) || !global2[_wgslsmith_index_u32(abs(1u), 27u)], !all(!vec4<bool>(var_2, var_2, true, true)), true), !(!vec4<bool>(true, false & global2[_wgslsmith_index_u32(0u, 27u)], true, arg_0.e.x <= arg_0.e.x)), true);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_1(arg_0.e.x, ~arg_0.b, arg_0.c, arg_0.d, arg_0.e);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.x)) + -2213f), _wgslsmith_f_op_f32(f32(-1f) * -829f))))), 113519u, _wgslsmith_div_i32(var_0.c, _wgslsmith_mult_i32(-var_0.c >> (reverseBits(u_input.a.x) % 32u), ~2147483647i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.d * arg_0.d), var_0.e.xww), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(var_0.a * var_0.d.x), -650f))))));
    global2 = array<bool, 27>();
    var var_2 = vec2<f32>(112f, var_1.a);
    var var_3 = Struct_2(select(countOneBits(vec4<u32>(~32966u, ~7694u, _wgslsmith_mod_u32(arg_2.x, arg_0.b), arg_2.x)), vec4<u32>(~var_1.b, 1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(64075u, arg_2.x), ~arg_0.b), _wgslsmith_dot_vec2_u32(arg_2.zx, ~vec2<u32>(47460u, 72340u))), select(func_3(Struct_1(arg_0.a, 1u, -2147483647i, vec3<f32>(var_0.a, -1827f, -274f), var_0.e), Struct_3(Struct_1(var_2.x, u_input.a.x, var_0.c, var_1.d, vec4<f32>(var_1.e.x, arg_0.e.x, -145f, -587f)), vec2<u32>(var_1.b, u_input.a.x), arg_0.d.zx), Struct_3(Struct_1(var_2.x, var_0.b, 7634i, var_0.e.zzw, arg_0.e), vec2<u32>(4294967295u, 4294967295u), vec2<f32>(var_2.x, -973f)), arg_0), !select(vec4<bool>(arg_1, false, global2[_wgslsmith_index_u32(0u, 27u)], false), vec4<bool>(false, false, true, arg_1), false), !(!vec4<bool>(global2[_wgslsmith_index_u32(var_0.b, 27u)], true, arg_1, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.x + var_0.d.x) + _wgslsmith_f_op_f32(-978f + 1624f)) + _wgslsmith_f_op_f32(min(1677f, _wgslsmith_f_op_f32(-var_1.a))))));
    return 1f;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<u32>) -> bool {
    let var_0 = ~(abs(firstLeadingBit(_wgslsmith_clamp_u32(0u, arg_2.x, u_input.a.x))) | 4294967295u);
    global1 = array<vec2<bool>, 32>();
    global2 = array<bool, 27>();
    let var_1 = 0u;
    let var_2 = Struct_1(arg_0, 4294967295u, -8892i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, -201f, -769f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1463f, arg_0, 1276f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1643f, 379f, 780f, arg_0), vec4<f32>(1709f, 513f, arg_0, -430f)) * vec4<f32>(-1000f, arg_0, arg_0, 1130f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(func_2(Struct_1(-961f, var_0, 37298i, vec3<f32>(-938f, -1353f, 1061f), vec4<f32>(-1000f, -169f, -917f, arg_0)), arg_1.x, vec3<u32>(39387u, 4294967295u, u_input.a.x), vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_f32(sign(-535f)), -652f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -650f, -742f, -657f)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, -1017f)))), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 4294967295u), 27u)], true, global2[_wgslsmith_index_u32(~u_input.a.x, 27u)], false), abs(reverseBits(max(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 862u, 47717u)))));
    let var_1 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 2174u, 15598u), vec3<u32>(54629u, 0u, u_input.a.x)), u_input.a.x), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 31927u, 17431u, 4294967295u), vec4<u32>(18488u, u_input.a.x, 89530u, u_input.a.x)))) & vec4<u32>(30534u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, ~77879u), firstTrailingBit(u_input.a.x ^ 4294967295u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(521f)))));
    var var_2 = _wgslsmith_f_op_f32(round(-183f));
    global0 = _wgslsmith_f_op_f32(sign(var_1.b));
    global3 = array<Struct_4, 30>();
    let var_3 = var_1;
    var var_4 = 1u;
    let var_5 = Struct_1(var_3.b, firstTrailingBit(select(_wgslsmith_sub_u32(var_3.a.x, u_input.a.x), 0u, !any(vec3<bool>(false, false, false)))), ~(-4099i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b, var_3.b, -461f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b, var_3.b, var_1.b))), vec3<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)], true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-186f, var_3.b, var_1.b) - vec3<f32>(-1963f, var_3.b, -1000f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(569f, 1000f, var_1.b)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_1.b, -322f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-316f, var_1.b, 782f, var_3.b)))))))));
    let var_6 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_5.c, -reverseBits(var_5.c), ~(~var_5.c), i32(-1i) * -1i), abs(vec4<i32>(var_5.c, var_5.c, -1i, var_5.c) | vec4<i32>(var_5.c, var_5.c, var_5.c, var_5.c)) ^ max(firstTrailingBit(vec4<i32>(0i, var_5.c, var_5.c, var_5.c)), _wgslsmith_sub_vec4_i32(vec4<i32>(-22982i, var_5.c, 1i, -45509i), vec4<i32>(2147483647i, var_5.c, var_5.c, var_5.c)))), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_5.c, var_5.c, 1i, 1i), ~(~vec4<i32>(-18159i, var_5.c, var_5.c, 2147483647i))), ~(~vec4<i32>(1391i, var_5.c, var_5.c, var_5.c) << (vec4<u32>(4294967295u, 28617u, var_3.a.x, 1040u) % vec4<u32>(32u))), select(reverseBits(abs(vec4<i32>(11014i, var_5.c, 1i, var_5.c))), ~(-vec4<i32>(-1i, var_5.c, var_5.c, -1i)), func_3(Struct_1(-1565f, 4294967295u, -33146i, vec3<f32>(1236f, -755f, var_5.a), vec4<f32>(var_1.b, var_5.e.x, var_3.b, -125f)), Struct_3(Struct_1(765f, var_1.a.x, var_5.c, vec3<f32>(-180f, var_5.d.x, var_3.b), var_5.e), vec2<u32>(var_3.a.x, var_3.a.x), var_5.d.yx), Struct_3(Struct_1(-584f, var_3.a.x, var_5.c, var_5.e.yxx, vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b)), u_input.a.xz, var_5.d.yx), Struct_1(var_3.b, 0u, -3136i, vec3<f32>(-186f, -916f, var_1.b), var_5.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, vec4<u32>(var_5.b, 4294967295u, var_3.a.x, ~(~8021u)));
}

