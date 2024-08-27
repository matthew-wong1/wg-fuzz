struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(804f, 618f), vec2<f32>(1417f, -1367f), vec2<f32>(-598f, 564f), vec2<f32>(-459f, -1355f), vec2<f32>(1000f, -754f), vec2<f32>(-716f, -1000f), vec2<f32>(362f, 603f), vec2<f32>(-247f, 529f), vec2<f32>(-814f, -128f), vec2<f32>(702f, 517f), vec2<f32>(-163f, 1000f), vec2<f32>(558f, -1162f), vec2<f32>(-3575f, 2084f), vec2<f32>(-821f, -169f), vec2<f32>(1122f, 467f), vec2<f32>(-217f, -726f), vec2<f32>(1402f, 1000f), vec2<f32>(1877f, 513f), vec2<f32>(162f, 1296f), vec2<f32>(871f, -968f), vec2<f32>(-103f, -418f), vec2<f32>(883f, 1000f), vec2<f32>(1185f, 1000f));

var<private> global1: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    global0 = array<vec2<f32>, 23>();
    return !select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)), true), true);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> vec2<i32> {
    return ((max(_wgslsmith_add_vec2_i32(vec2<i32>(-48289i, -1i), vec2<i32>(-5773i, -2147483647i)), vec2<i32>(2147483647i, 9546i)) | select(vec2<i32>(1i, 1i), vec2<i32>(-34481i, 10104i), arg_3.a.d || arg_3.a.c.x)) | _wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, -18807i), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-21066i, 1i), vec2<i32>(-1i, 11167i)), vec2<i32>(1i, 1i)), -vec2<i32>(-1i, 1i))) & firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(i32(-1i) * -2147483647i, ~783i), -_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -22249i), vec2<i32>(1i, -11609i))));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = func_4(all(arg_0) || false, Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(775f, -179f, 2008f, -568f))))), u_input.c.ywz, select(!arg_0.wyw, func_3(vec2<i32>(-9075i, 1i)), func_3(vec2<i32>(41102i, 4409i))), false), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(287f + -1097f) - _wgslsmith_f_op_f32(-1560f + -847f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(310f - -1327f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f + -1182f))), false, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(287f, -539f), 761f)))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(653f, 297f, -907f, -140f)), ~vec3<u32>(18464u, 1u, 1u), arg_0.xzy, true), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-927f * -2440f), 287f)), -1141f, _wgslsmith_div_f32(-2634f, _wgslsmith_f_op_f32(ceil(-562f)))), !arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(u_input.c.x, 23u)]))) - global0[_wgslsmith_index_u32(86343u, 23u)])), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-508f, -622f, -308f, -889f), vec4<f32>(966f, 233f, -983f, 1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-571f, 564f, 806f, -682f) * vec4<f32>(442f, -673f, 725f, -546f))), ~u_input.c.ywz ^ abs(u_input.c.yxx), select(vec3<bool>(true, arg_0.x, true), vec3<bool>(false, true, arg_0.x), !arg_0.wwy), all(!vec4<bool>(true, true, arg_0.x, false))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(371f, -777f, 1458f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(134f, -1418f, 155f), vec3<f32>(-1235f, 1405f, 268f))))), !select(true, arg_0.x, false))), arg_0.x, global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(19857u, 2077u)) >> (u_input.c.x % 32u), 23u)]));
    var var_1 = u_input.c.x;
    global0 = array<vec2<f32>, 23>();
    global1 = _wgslsmith_f_op_f32(-1659f - -700f);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(587f)) * _wgslsmith_f_op_f32(trunc(870f))))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1736f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1070f, -1329f)))), _wgslsmith_f_op_f32(min(-1196f, -443f))));
    return u_input.a;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<i32>) -> f32 {
    var var_0 = vec4<i32>(arg_0 << (13103u % 32u), ~26148i, _wgslsmith_sub_i32(-abs(arg_3.x), arg_0), ~_wgslsmith_mult_i32(abs(arg_0) >> (func_2(vec4<bool>(false, arg_1.d, arg_1.d, arg_1.c.x)) % 32u), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_0), vec2<i32>(60703i, 68609i)))));
    var var_1 = !arg_1.d;
    global1 = arg_1.a.x;
    var_0 = vec4<i32>(-80396i, -1i, ~0i, var_0.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(216f + arg_1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(761f * arg_1.a.x), _wgslsmith_f_op_f32(exp2(arg_1.a.x)))))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-910f)), _wgslsmith_f_op_f32(func_1(1i, Struct_1(vec4<f32>(1280f, -383f, -873f, -1802f), vec3<u32>(u_input.b, 13739u, 66452u), vec3<bool>(false, false, false), false), vec3<bool>(true, true, false), vec2<i32>(31186i, 30330i)))))))));
    var var_0 = ~u_input.c;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -609f, -313f, 323f), vec4<f32>(-124f, 1157f, -953f, 2722f), vec4<bool>(false, true, false, false))))) + vec4<f32>(-1711f, -1278f, _wgslsmith_f_op_f32(181f + 673f), -970f)), vec3<u32>(var_0.x, 0u, 18635u), vec3<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -697f) < _wgslsmith_f_op_f32(ceil(314f))), u_input.b >= (u_input.a >> (1u % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1366f, 713f, 1015f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-547f, 1000f, -1000f))))), !select(true, true, min(-38154i, -52241i) != func_4(false, Struct_3(Struct_1(vec4<f32>(453f, -154f, 546f, 2022f), vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<bool>(false, true, true), false), vec3<f32>(453f, -1821f, -1596f), true, vec2<f32>(-1083f, -1563f)), Struct_3(Struct_1(vec4<f32>(-203f, 115f, -675f, -408f), vec3<u32>(var_0.x, 1u, u_input.c.x), vec3<bool>(true, false, true), true), vec3<f32>(-451f, 1000f, -206f), false, vec2<f32>(270f, -647f)), Struct_3(Struct_1(vec4<f32>(-589f, -1000f, -295f, -1068f), u_input.c.yzy, vec3<bool>(true, false, true), false), vec3<f32>(-254f, -628f, -512f), true, vec2<f32>(305f, -1189f))).x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-181f, -936f), _wgslsmith_div_vec2_f32(vec2<f32>(-448f, -2215f), _wgslsmith_f_op_vec2_f32(min(global0[_wgslsmith_index_u32(4294967295u, 23u)], vec2<f32>(864f, 217f))))))));
    var_0 = vec4<u32>(countOneBits(max(var_1.a.b.x, ~(u_input.b ^ 1u))), var_0.x, ~25732u, var_0.x);
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(-7774i, -2147483647i), 2147483647i, 2147483647i), 2147483647i), countOneBits(-(vec2<i32>(0i, 2147483647i) >> (vec2<u32>(12784u, u_input.b) % vec2<u32>(32u)))) & min(-vec2<i32>(2147483647i, 64687i), ~(vec2<i32>(9086i, 2147483647i) << (var_1.a.b.zx % vec2<u32>(32u)))));
    let var_3 = var_1.a.a;
    let var_4 = var_1;
    global0 = array<vec2<f32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(1u, min(var_0.x, _wgslsmith_add_u32(var_0.x, 1u))) >> (33652u % 32u), _wgslsmith_f_op_vec4_f32(floor(var_4.a.a)), _wgslsmith_clamp_vec3_u32(var_0.xyz, vec3<u32>(var_4.a.b.x, 4294967295u, select(abs(var_1.a.b.x), max(u_input.a, 4294967295u), func_3(vec2<i32>(-18298i, var_2.x)).x)), var_4.a.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-681f, -463f, -1004f, var_1.b.x)) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_4.a.a.x, -168f, var_1.b.x), _wgslsmith_f_op_vec4_f32(exp2(var_1.a.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_4.a.a, vec4<f32>(var_4.d.x, var_4.b.x, 309f, var_1.b.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b.x, 1000f, -111f, -1000f))))), 1i);
}

