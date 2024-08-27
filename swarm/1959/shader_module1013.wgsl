struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(1659f, -1000f, -360f, -279f), vec4<f32>(-2427f, -1000f, -1645f, 1187f), vec4<f32>(-1705f, -1000f, -1345f, 1336f), vec4<f32>(-1651f, -352f, -340f, 1000f), vec4<f32>(-245f, 553f, -1748f, 413f), vec4<f32>(477f, -254f, 585f, 1247f), vec4<f32>(842f, 893f, 386f, -927f), vec4<f32>(-1974f, -1459f, -174f, 142f), vec4<f32>(-1042f, -1000f, -1093f, -1000f), vec4<f32>(336f, 320f, 783f, 169f), vec4<f32>(-967f, -787f, -2634f, 1593f), vec4<f32>(-423f, -186f, 221f, -515f), vec4<f32>(2005f, -1131f, -695f, -1430f), vec4<f32>(-241f, -595f, 1131f, -327f), vec4<f32>(-201f, -1396f, 990f, 3504f), vec4<f32>(1000f, -1000f, 1077f, -264f), vec4<f32>(-611f, -2018f, -1081f, -113f), vec4<f32>(356f, -855f, 264f, 527f), vec4<f32>(228f, -1232f, 513f, 819f), vec4<f32>(884f, -746f, -690f, 585f), vec4<f32>(-471f, -1671f, 256f, 345f), vec4<f32>(402f, -2698f, 1055f, 487f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = Struct_1(vec2<bool>(false, u_input.b.x >= countOneBits(u_input.b.x)), vec2<bool>(!(-1i < u_input.b.x), false), false);
    let var_1 = all(select(vec2<bool>(!(!var_0.c), var_0.c), !vec2<bool>(!var_0.a.x, var_0.b.x && var_0.c), false));
    let var_2 = any(!(!vec4<bool>(!var_1, !var_1, true, !var_1)));
    let var_3 = var_0;
    let var_4 = var_3;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-415f + -742f), _wgslsmith_div_f32(-513f, 1827f), -635f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -575f, 608f) + vec3<f32>(-480f, 866f, 1230f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-326f, -423f, -207f))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(u_input.b | arg_0.zyy))));
    let var_1 = max(_wgslsmith_div_i32(~(~_wgslsmith_mod_i32(-28615i, 21727i)), arg_0.x), arg_0.x);
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    return var_0.x <= 125f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(427f, 813f, 798f), vec3<f32>(-1848f, 568f, 1076f))) + vec3<f32>(_wgslsmith_f_op_f32(round(232f)), _wgslsmith_div_f32(-731f, 1054f), -1476f)), vec3<f32>(-1019f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(184f)), -570f, any(vec3<bool>(arg_0.a.x, arg_1.a.x, arg_0.b.x)))), -1058f))));
    var var_1 = select(vec4<bool>(!arg_0.c, false, arg_0.b.x, !any(select(vec3<bool>(arg_0.a.x, true, arg_1.a.x), vec3<bool>(true, arg_1.a.x, arg_0.c), vec3<bool>(false, false, false)))), !vec4<bool>(true, arg_1.a.x, arg_0.c, all(select(vec3<bool>(false, arg_0.b.x, arg_0.c), vec3<bool>(true, arg_0.a.x, true), vec3<bool>(false, true, arg_1.a.x)))), arg_0.c);
    let var_2 = reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, ~_wgslsmith_dot_vec4_u32(arg_2, arg_2)), ~_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, 82928u))));
    let var_3 = !(u_input.b.x <= ~u_input.b.x);
    var var_4 = reverseBits(vec2<u32>(u_input.a.x, ~84682u));
    return select(select(select(vec2<bool>(false, true), !var_1.zy, !vec2<bool>(arg_1.c, var_1.x)), select(vec2<bool>(false, false), vec2<bool>(!arg_1.b.x, var_0.x <= var_0.x), true), vec2<bool>(any(!vec4<bool>(false, false, true, arg_1.b.x)), !all(var_1.wyz))), !(!var_1.xx), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(true, !func_1(vec4<i32>(10507i, 0i, u_input.b.x, 0i), u_input.b.yy)), true), select(select(!func_3(Struct_1(vec2<bool>(false, false), vec2<bool>(false, false), true), Struct_1(vec2<bool>(false, false), vec2<bool>(true, false), true), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)), vec2<bool>(true, true), select(false, true, false) | true), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)))), false != all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)));
    global0 = array<vec4<f32>, 22>();
    var var_1 = Struct_1(select(!vec2<bool>(var_0.b.x, var_0.b.x), select(vec2<bool>(var_0.b.x, var_0.c), !vec2<bool>(var_0.b.x, var_0.a.x), _wgslsmith_f_op_f32(sign(823f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true), var_0.a, false);
    var var_2 = ~select(min(~(vec4<i32>(u_input.b.x, 1i, u_input.b.x, -1i) ^ vec4<i32>(5967i, -36383i, 1i, u_input.b.x)), vec4<i32>(83097i, -12730i, -17686i, u_input.b.x) | select(vec4<i32>(-18790i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -33011i), vec4<bool>(true, var_0.c, false, var_1.b.x))), firstLeadingBit(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i) ^ vec4<i32>(53573i, -18214i, u_input.b.x, 1i)), select(!(!vec4<bool>(var_0.a.x, var_0.b.x, var_1.c, var_1.c)), vec4<bool>(var_0.b.x & var_0.a.x, any(vec4<bool>(true, false, false, true)), select(var_0.c, false, true), var_1.c), var_0.b.x));
    let var_3 = true;
    var var_4 = Struct_1(var_0.b, !vec2<bool>(any(!vec4<bool>(var_1.a.x, var_1.b.x, var_3, true)), false), true);
    let var_5 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(70809u, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(74508u, u_input.c), u_input.a.yx) >> (~max(u_input.a.zx, u_input.a.zy) % vec2<u32>(32u)), ~vec2<u32>(1u, 10521u) | _wgslsmith_mod_vec2_u32(u_input.a.xy, u_input.a.yy)), vec2<u32>(max(31305u, u_input.d ^ u_input.d), abs(~u_input.d)) >> (vec2<u32>(71435u, 4294967295u) % vec2<u32>(32u)));
    var_1 = Struct_1(select(var_1.b, vec2<bool>(var_0.a.x, !var_3), vec2<bool>(select(true, !var_0.a.x, var_4.b.x), !(!var_3))), var_4.a, all(vec2<bool>(var_4.c, false)));
    var var_6 = countOneBits(min(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, 1i, 1211i), vec4<i32>(~0i, u_input.b.x, 0i, -var_2.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, -1i, u_input.b.x, u_input.b.x), reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32(1i, -44391i), u_input.b.x ^ reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_6.x, var_2.x, -1i), vec4<i32>(34651i, var_2.x, -46569i, -11995i))), ~0i, 1i), vec4<i32>(u_input.b.x, var_6.x, ~1i, ~(-2147483647i) & _wgslsmith_div_i32(min(var_6.x, u_input.b.x), var_6.x)));
}

