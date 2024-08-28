struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(-1000f, 943f), vec2<f32>(-1000f, 509f), vec2<f32>(-467f, 783f), vec2<f32>(1214f, 149f), vec2<f32>(-1149f, 325f), vec2<f32>(2306f, 882f), vec2<f32>(1233f, -1844f), vec2<f32>(629f, 503f), vec2<f32>(2011f, 1000f), vec2<f32>(-1355f, -820f), vec2<f32>(-544f, 791f), vec2<f32>(-1452f, -926f), vec2<f32>(-1016f, 1034f), vec2<f32>(-271f, -241f), vec2<f32>(-1527f, 1700f), vec2<f32>(-1584f, 843f), vec2<f32>(616f, 1649f), vec2<f32>(-643f, -443f));

var<private> global1: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> vec3<bool> {
    let var_0 = Struct_4(-843f, Struct_1(vec3<bool>(true || (-812f > arg_0), -u_input.a.x >= min(32464i, -49617i), false), vec2<u32>(4294967295u, u_input.b.x), true | all(vec2<bool>(true, true)), abs(vec3<u32>(_wgslsmith_div_u32(1u, u_input.b.x), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), 1u))));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-1258f * _wgslsmith_f_op_f32(f32(-1f) * -1040f)), 838f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1300f + _wgslsmith_f_op_f32(trunc(256f)))))), var_0.b, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1901f) - _wgslsmith_f_op_f32(step(136f, _wgslsmith_f_op_f32(abs(arg_0)))))), var_0.b);
    global1 = false;
    return select(vec3<bool>(2147483647i <= ~u_input.a.x, all(var_1.b.a), arg_2), vec3<bool>(var_1.d.a.x, any(vec4<bool>(any(vec4<bool>(false, var_0.b.a.x, true, var_1.b.c)), false, var_0.b.a.x, all(vec4<bool>(arg_2, var_1.b.c, false, true)))), false), vec3<bool>(arg_2, any(vec2<bool>(all(var_0.b.a), false)), 8072u > _wgslsmith_dot_vec2_u32(var_1.b.d.zx ^ var_0.b.b, u_input.b.zz)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    global0 = array<vec2<f32>, 18>();
    let var_0 = Struct_2(Struct_1(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), func_3(471f, vec4<i32>(arg_0.x, u_input.d, u_input.c, u_input.c), true)), min(max(select(u_input.b.xw, u_input.b.wx, true), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.b.yz)), reverseBits(u_input.b.yz)), false, u_input.b.yxw));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-777f, -475f, -1000f)) * vec3<f32>(-195f, 2136f, 812f))) - vec3<f32>(936f, _wgslsmith_div_f32(-521f, -102f), -991f)), Struct_1(!vec3<bool>(var_0.a.c, true, var_0.a.c), ~(vec2<u32>(1u, 67915u) | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, var_0.a.d.x), var_0.a.d.xy)), true, u_input.b.yzz), -437f, Struct_1(vec3<bool>(!all(vec4<bool>(true, true, var_0.a.c, var_0.a.a.x)), !(!var_0.a.c), false), countOneBits(u_input.b.wx) & vec2<u32>(37573u, var_0.a.d.x & u_input.b.x), false, select(max(~var_0.a.d, vec3<u32>(7462u, 58892u, u_input.b.x) & vec3<u32>(var_0.a.b.x, 4294967295u, u_input.b.x)), vec3<u32>(var_0.a.d.x, var_0.a.d.x, 47792u), vec3<bool>(true, true, true))));
    var var_2 = ~(17711u >> ((u_input.b.x ^ ~4294967295u) % 32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.a)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(188f + var_1.c)), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-244f - 1114f)), var_3.x))), Struct_1(vec3<bool>(var_0.a.c, !var_1.d.c, true != all(vec4<bool>(var_1.b.a.x, true, var_0.a.a.x, var_0.a.a.x))), _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.b.x), var_0.a.b)), vec2<u32>(var_0.a.d.x, 45371u)), ~abs(-33255i) >= (43090i | firstTrailingBit(-2147483647i)), ~countOneBits(vec3<u32>(1u, 1u, u_input.b.x))), var_1.a.x, Struct_1(select(var_0.a.a, !select(var_0.a.a, vec3<bool>(true, true, var_0.a.c), true), false), countOneBits(abs(vec2<u32>(u_input.b.x, var_1.d.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), 846f) > var_1.c, vec3<u32>(countOneBits(_wgslsmith_add_u32(u_input.b.x, var_1.d.d.x)), 1u, var_1.b.d.x)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_2(select(u_input.a.yyx, u_input.a.yzz, vec3<bool>(true, true, true)));
    var var_1 = -select(abs(u_input.a.xw), firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.a.yz >> (vec2<u32>(27433u, 64062u) % vec2<u32>(32u)), select(u_input.a.zx, u_input.a.zw, true))), !var_0.b.a.x);
    var var_2 = Struct_1(var_0.b.a, ~select(var_0.b.b, _wgslsmith_mult_vec2_u32(u_input.b.wy, var_0.d.d.zy) ^ (vec2<u32>(u_input.b.x, u_input.b.x) | vec2<u32>(var_0.b.d.x, arg_0)), var_0.d.a.x), any(select(vec4<bool>(false, true, true, true), select(select(vec4<bool>(var_0.d.a.x, var_0.d.c, true, true), vec4<bool>(var_0.b.c, var_0.b.c, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.b.c, var_0.d.c, false, var_0.b.a.x), false), !var_0.b.c), var_0.b.c)), _wgslsmith_add_vec3_u32(~(u_input.b.wwx | ~vec3<u32>(33754u, u_input.b.x, u_input.b.x)), vec3<u32>(38816u, abs(25074u), ~(var_0.d.d.x >> (arg_0 % 32u)))));
    var_1 = max(_wgslsmith_sub_vec2_i32(firstTrailingBit(-_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, 0i), vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xx)), vec2<i32>(-(~var_1.x), _wgslsmith_add_i32(~var_1.x, ~2147483647i))), ~_wgslsmith_add_vec2_i32(max(vec2<i32>(var_1.x, u_input.d), ~u_input.a.yz), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), u_input.a.zw)));
    var var_3 = Struct_4(1756f, func_2(u_input.a.wxx).d);
    return Struct_2(Struct_1(var_2.a, ~abs(vec2<u32>(var_2.d.x, 0u)), all(var_3.b.a), u_input.b.yzx));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true || !any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)));
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 29095u, u_input.b.x), abs(u_input.b)) & ~1u, u_input.b.x, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(42135u, 15649u, u_input.b.x), u_input.b.x)), abs(32470u));
    var var_1 = Struct_2(Struct_1(vec3<bool>(true, !all(vec4<bool>(false, true, true, true)), true), vec2<u32>(~var_0.x, ~max(16171u, u_input.b.x)), true, u_input.b.xxy));
    let var_2 = 9782i;
    global0 = array<vec2<f32>, 18>();
    var_1 = Struct_2(var_1.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(796f, -1376f, 1122f) + vec3<f32>(1136f, -1713f, -323f)) * vec3<f32>(1485f, 983f, -603f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, 1551f, -1226f)))))));
    var_1 = func_1(~var_0.x);
    let var_4 = Struct_2(Struct_1(vec3<bool>(!func_1(83023u).a.a.x, !var_1.a.a.x, true), vec2<u32>(_wgslsmith_sub_u32(var_1.a.b.x, var_0.x), countOneBits(~4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) <= var_3.x, abs(var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, ((u_input.b.x ^ 33994u) << (~15834u % 32u)) >> (var_4.a.d.x % 32u));
}

