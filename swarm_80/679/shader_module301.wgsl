struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    return -557f;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = vec3<f32>(arg_1.a.x, arg_1.d.x, _wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(abs(arg_1.d.x))));
    let var_1 = Struct_4(1081f);
    var var_2 = u_input.b.xyw;
    var_2 = ~(-vec3<i32>(var_2.x, arg_1.e.a, arg_1.e.a));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(var_0.xy)), vec2<bool>(!arg_1.b.x, any(select(select(arg_0, arg_0, vec3<bool>(arg_0.x, false, false)), vec3<bool>(arg_1.b.x, true, false), !vec3<bool>(true, arg_1.b.x, false)))), max(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_1.c.x, arg_1.c.x), _wgslsmith_mod_u32(0u, arg_1.c.x)), ~(~arg_1.c)), vec2<u32>(abs(_wgslsmith_div_u32(30904u, arg_1.c.x)), firstLeadingBit(_wgslsmith_add_u32(arg_1.c.x, 1u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_0.x, 856f))), arg_1.d))), Struct_1(_wgslsmith_sub_i32(1i | (var_2.x << (6970u % 32u)), _wgslsmith_mod_i32(arg_1.e.a, arg_1.e.a << (56301u % 32u))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d)), vec3<bool>(all(vec2<bool>(arg_0.x, true)), arg_1.b.x && arg_0.x, any(vec2<bool>(arg_1.b.x, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(arg_1.e.c))))), vec4<f32>(2184f, -245f, -184f, var_0.x)));
    return vec3<f32>(_wgslsmith_f_op_f32(sign(514f)), -1000f, -1245f);
}

fn func_2() -> Struct_3 {
    let var_0 = true;
    return Struct_3(Struct_1(~firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-139f, 560f, 437f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-837f, -1257f, -1177f))), _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, false, false), Struct_2(vec2<f32>(-379f, 527f), vec2<bool>(true, var_0), vec2<u32>(0u, 0u), vec3<f32>(-207f, 507f, -1321f), Struct_1(u_input.a.x, vec3<f32>(1707f, 190f, 889f), vec4<f32>(-120f, -710f, 373f, -513f), vec4<f32>(-1000f, -725f, -569f, 915f))))), any(select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_0, var_0, var_0, true), var_0)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(945f, 437f, 1292f, -374f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(717f, -423f, -1756f, 649f), vec4<f32>(2945f, -191f, -894f, -508f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -867f, -467f, 362f) + vec4<f32>(-744f, -1000f, 229f, -2589f))) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-172f)), -1336f, _wgslsmith_f_op_f32(-1040f * 266f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1247f, -825f, -718f, 1717f), vec4<f32>(-691f, -1005f, -238f, -618f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1292f, -1229f, -616f, 1488f), vec4<f32>(694f, -1000f, 502f, 100f)))) - vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2076f, 726f, 157f, 1665f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-381f, -1536f, 303f, 275f), vec4<f32>(-362f, 634f, 131f, -225f))), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(false, var_0, true), Struct_2(vec2<f32>(-838f, -626f), vec2<bool>(true, true), vec2<u32>(0u, 1558u), vec3<f32>(-283f, -1406f, -1073f), Struct_1(11710i, vec3<f32>(1731f, 1000f, 547f), vec4<f32>(-1794f, 1000f, 219f, -643f), vec4<f32>(1465f, 2904f, -196f, -885f))))).x, _wgslsmith_f_op_f32(sign(-488f)), 156f, _wgslsmith_f_op_f32(sign(1272f)))))), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(927f, -781f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-150f, 104f)), true)), !select(!vec2<bool>(true, var_0), !vec2<bool>(var_0, true), var_0), ~(~vec2<u32>(1u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1197f, -692f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1035f) * 950f), _wgslsmith_f_op_f32(-1272f * _wgslsmith_f_op_f32(min(-1000f, -972f)))), Struct_1(i32(-1i) * -u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-189f, -1494f, -1000f))), vec4<f32>(-2512f, -695f, 1702f, _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(var_0, false, var_0), Struct_2(vec2<f32>(-579f, -483f), vec2<bool>(var_0, true), vec2<u32>(11598u, 0u), vec3<f32>(1000f, 1464f, -159f), Struct_1(-57253i, vec3<f32>(1000f, -1000f, -1350f), vec4<f32>(1095f, -672f, -1405f, 460f), vec4<f32>(891f, -124f, -1480f, 351f))))).x), vec4<f32>(_wgslsmith_div_f32(-773f, 200f), 601f, 1f, 1140f))));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1319f + _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x)), _wgslsmith_f_op_f32(max(arg_0.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-947f, _wgslsmith_f_op_f32(arg_0.b.x + -905f)) - -1103f)))));
    let var_1 = ~(-9530i);
    var var_2 = arg_0.b;
    let var_3 = arg_0.c.e;
    var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, _wgslsmith_div_f32(985f, -460f), _wgslsmith_f_op_f32(exp2(var_2.x)), var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0.c.e.c))), arg_0.c.b.x)))));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(~(1i & (u_input.a.x & u_input.b.x)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-336f, -1204f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(1f * -1828f), -1386f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(265f, 3089f, -525f, 1000f) * vec4<f32>(-162f, 2421f, 1885f, -201f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, -490f, 700f, -235f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-121f, 1000f, 568f, 532f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(452f, 409f, 1334f, -375f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1317f, -1820f, 504f, 2125f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-466f, 321f, 246f, -897f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-357f, 588f, -450f, 542f)), vec4<f32>(1f, 1f, 1f, 1f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -575f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, true))), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1482f * -1057f))))), func_4(func_2()));
    var var_1 = _wgslsmith_f_op_f32(-var_0.a.d.x);
    let var_2 = var_0.c.e;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2351f))), var_2.b.x, !any(vec4<bool>(true, var_0.c.b.x, true, var_0.c.b.x)))));
    var var_3 = var_0.c.b;
    let var_4 = u_input.b.xww;
    let var_5 = select(vec3<bool>(true, (_wgslsmith_f_op_f32(-var_0.c.a.x) != 503f) && var_3.x, true), select(vec3<bool>(!func_4(Struct_3(Struct_1(20969i, var_0.b.yww, var_2.c, vec4<f32>(-590f, var_0.c.e.c.x, -758f, var_0.b.x)), vec4<f32>(var_2.b.x, -270f, -152f, var_0.b.x), Struct_2(vec2<f32>(-1693f, var_0.a.d.x), var_0.c.b, vec2<u32>(var_0.c.c.x, var_0.c.c.x), var_0.c.e.b, Struct_1(u_input.a.x, vec3<f32>(436f, -907f, -439f), vec4<f32>(var_0.b.x, var_0.a.d.x, var_0.a.c.x, var_2.b.x), vec4<f32>(var_2.b.x, -1273f, var_0.a.b.x, var_2.d.x))))).b.x, true, true), !select(vec3<bool>(var_3.x, var_0.c.b.x, false), select(vec3<bool>(var_3.x, false, var_0.c.b.x), vec3<bool>(var_3.x, false, true), vec3<bool>(var_3.x, false, var_0.c.b.x)), vec3<bool>(var_3.x, var_3.x, var_3.x)), all(select(!vec4<bool>(true, false, var_3.x, var_3.x), !vec4<bool>(true, false, false, var_0.c.b.x), !vec4<bool>(true, var_3.x, var_0.c.b.x, var_0.c.b.x)))), vec3<bool>(false, abs(var_0.a.a) <= u_input.a.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>((41250u | var_0.c.c.x) & 0u, var_0.c.c.x, var_0.c.c.x, ~2361u), -(_wgslsmith_add_vec2_i32(-var_4.zy, -u_input.b.zx) >> ((vec2<u32>(13007u, 9980u) & ~vec2<u32>(var_0.c.c.x, 15944u)) % vec2<u32>(32u))), ~_wgslsmith_mod_u32(select(1u, ~1u, false), _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(61377u, 41668u, 0u), vec3<u32>(91494u, var_0.c.c.x, var_0.c.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(1455f + var_0.b.x), 1f, _wgslsmith_f_op_f32(exp2(func_2().a.b.x))));
}

