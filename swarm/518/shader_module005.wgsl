struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(1396f, 386f, 213f, -1000f), vec4<f32>(-632f, 107f, 778f, -1000f), vec4<f32>(-594f, -1095f, -1300f, 781f), vec4<f32>(-206f, 1000f, -1153f, 1190f), vec4<f32>(-215f, -120f, -508f, 948f), vec4<f32>(792f, -745f, 2018f, -672f), vec4<f32>(-836f, 738f, 881f, 661f), vec4<f32>(664f, 2649f, 980f, 523f), vec4<f32>(1288f, 733f, 412f, 1372f), vec4<f32>(872f, -228f, 1000f, -1444f), vec4<f32>(-798f, 344f, -1004f, -434f), vec4<f32>(-1339f, -1017f, -1000f, 726f), vec4<f32>(349f, 116f, -535f, 1229f), vec4<f32>(-1175f, 324f, 322f, 336f), vec4<f32>(940f, 644f, 480f, -748f), vec4<f32>(-411f, 878f, -1476f, -123f), vec4<f32>(591f, -871f, -244f, 1362f), vec4<f32>(-1335f, -529f, 1417f, 1066f), vec4<f32>(364f, -1589f, 793f, 269f), vec4<f32>(863f, -1164f, -935f, 491f), vec4<f32>(-1051f, -642f, 1000f, 1225f), vec4<f32>(495f, 733f, -303f, 1612f), vec4<f32>(1344f, 138f, 1000f, -566f), vec4<f32>(-196f, 1416f, 478f, -634f), vec4<f32>(1027f, -1000f, 745f, 1241f), vec4<f32>(1579f, 361f, 970f, 1000f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> bool {
    var var_0 = ~u_input.c;
    var var_1 = 4294967295u;
    let var_2 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.e == ~0i));
    var_1 = _wgslsmith_sub_u32(~(~(~(~arg_0.x))), 98720u);
    var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(45675u | (arg_0.x ^ ~arg_0.x), 4294967295u, _wgslsmith_sub_u32(u_input.c, u_input.c)), ~firstTrailingBit(vec3<u32>(61290u, 4294967295u & u_input.c, arg_0.x)));
    return false;
}

fn func_2() -> vec3<bool> {
    let var_0 = any(select(select(vec2<bool>(false, true), vec2<bool>(true, func_3(vec4<u32>(128697u, 4294967295u, 0u, 4294967295u), -1653f)), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec3<bool>(true, true, true))));
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    var var_1 = u_input.d;
    var_1 = min(_wgslsmith_sub_vec2_i32(vec2<i32>(min(u_input.b, ~(-17977i)), u_input.d.x), u_input.a), vec2<i32>(~_wgslsmith_dot_vec2_i32(~u_input.a, u_input.a), ~(-(~u_input.d.x))));
    return !select(select(vec3<bool>(true, var_0, !var_0), !(!vec3<bool>(true, var_0, var_0)), all(!vec4<bool>(false, false, var_0, var_0))), vec3<bool>(false, var_0, func_3(~vec4<u32>(4294967295u, 0u, 1u, 24531u), _wgslsmith_f_op_f32(-777f + 1276f))), select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0, var_0), var_0));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 0i;
    let var_1 = select(-vec3<i32>(-(~u_input.d.x), -2147483647i, u_input.a.x), ~(~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -1i, arg_2.b) & vec3<i32>(-39016i, u_input.b, u_input.b), vec3<i32>(u_input.b, arg_2.b, -18903i))), func_2());
    let var_2 = Struct_1(arg_2.a, firstTrailingBit(-(~select(u_input.e, u_input.a.x, arg_2.c.x))), arg_2.c);
    var var_3 = ~abs(abs(1i));
    var_0 = (83662i << (firstTrailingBit(firstTrailingBit(arg_1.x)) % 32u)) >> (u_input.c % 32u);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 26>();
    let var_0 = vec3<i32>(abs(_wgslsmith_div_i32(reverseBits(_wgslsmith_mod_i32(-1i, 2147483647i)), u_input.d.x)), u_input.b, _wgslsmith_clamp_i32(~u_input.d.x, _wgslsmith_div_i32(-24413i, firstLeadingBit(~44865i)), u_input.e));
    let var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-449f + 438f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1021f * 1000f) * _wgslsmith_f_op_f32(round(237f))))), ~abs(~vec2<u32>(u_input.c, u_input.c)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1050f, -481f, -726f, 163f)), vec4<f32>(-529f, 828f, -829f, -1034f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-731f, -1613f, -242f, -1000f))) - vec4<f32>(-313f, -362f, -330f, 678f))), var_0.x, !select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    var var_2 = ~select(u_input.c, ~4294967295u, true) == _wgslsmith_clamp_u32(18359u, 1u, 4294967295u);
    let var_3 = var_1.c;
    global0 = array<vec4<f32>, 26>();
    var var_4 = 1522f;
    var_2 = any(func_2().zx);
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(var_1.a.x, -232f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_5.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_5.a.x, 328f)))), !var_3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_5.a.x, var_1.a.x, var_1.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1294f, 547f, var_5.a.x, var_1.a.x) * vec4<f32>(-1102f, -748f, -677f, -1000f))))), _wgslsmith_dot_vec4_u32(~(~reverseBits(vec4<u32>(u_input.c, u_input.c, 15566u, u_input.c))), ~((vec4<u32>(u_input.c, 1u, 0u, 121594u) | vec4<u32>(u_input.c, 1u, u_input.c, u_input.c)) >> (vec4<u32>(1u, 1u, 4294967295u, u_input.c) % vec4<u32>(32u)))));
}

