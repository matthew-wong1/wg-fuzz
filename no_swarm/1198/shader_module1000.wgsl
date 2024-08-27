struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-563f, -719f, 545f, -369f), vec4<f32>(-329f, -253f, -1760f, -614f), vec4<f32>(-1284f, -544f, -1050f, -2374f), vec4<f32>(210f, 1294f, -572f, -420f), vec4<f32>(-440f, -1211f, -696f, -534f), vec4<f32>(-1295f, 1071f, -629f, -592f), vec4<f32>(-512f, -772f, -2948f, -990f), vec4<f32>(-143f, -143f, -889f, -2077f), vec4<f32>(236f, -1090f, -125f, -314f), vec4<f32>(718f, 501f, -1000f, 716f), vec4<f32>(1113f, -1722f, -380f, -1079f), vec4<f32>(792f, 1666f, -420f, -598f), vec4<f32>(173f, 489f, 1588f, -1169f), vec4<f32>(-909f, 867f, 1000f, 248f), vec4<f32>(1000f, -663f, -1794f, -1147f), vec4<f32>(-1000f, -408f, 112f, 1200f), vec4<f32>(-1010f, -968f, 427f, 2006f), vec4<f32>(1386f, -667f, 1779f, -496f), vec4<f32>(1017f, 1000f, 1000f, 1380f), vec4<f32>(286f, 1000f, -293f, -476f), vec4<f32>(-743f, -659f, -1648f, -2323f), vec4<f32>(-122f, -1183f, 250f, 2192f), vec4<f32>(-101f, 1110f, -110f, 1849f));

var<private> global1: Struct_4;

var<private> global2: array<vec3<f32>, 23>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec3<i32> {
    var var_0 = global1.c.x;
    global1 = Struct_4(global1.a, 37722i ^ global1.b, firstTrailingBit(abs(select(~vec2<u32>(7282u, u_input.b), min(vec2<u32>(0u, 26381u), vec2<u32>(global1.c.x, u_input.b)), true))), select(false, all(vec4<bool>(false, true, !global1.e.a.x, global1.d)), all(select(vec4<bool>(global1.e.b.x, global1.e.b.x, false, global1.e.b.x), !global1.e.b, !global1.e.a.x))), global1.e);
    var_0 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c.x, global1.c.x) & 4294967295u, global1.c.x);
    let var_1 = reverseBits(min(1i, global1.a.x));
    var var_2 = reverseBits(812i);
    return vec3<i32>(global1.b, global1.b, u_input.e.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec3_i32(func_3(), vec3<i32>(func_3().x, abs(global1.b), ~9420i)), arg_0.x), 8630i, global1.e, !vec2<bool>(true, global1.e.b.x));
    var var_1 = abs(abs(u_input.c & vec4<u32>(4294967295u, arg_1.x, u_input.b << (arg_1.x % 32u), arg_1.x)));
    let var_2 = ~_wgslsmith_sub_vec4_u32((u_input.c | ~vec4<u32>(51100u, global1.c.x, 4368u, arg_1.x)) & abs(u_input.c), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4371u, global1.c.x), arg_1.yz), ~var_1.wz), max(u_input.c.x >> (var_1.x % 32u), ~41320u), 0u, abs(33679u) | _wgslsmith_sub_u32(global1.c.x, 88635u)));
    var var_3 = _wgslsmith_mult_i32(min(firstTrailingBit(~u_input.a) >> (4294967295u % 32u), 0i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(~var_0.b, _wgslsmith_mod_i32(-2147483647i, var_0.a.x)), _wgslsmith_mult_vec2_i32(global1.a.yw | var_0.a, vec2<i32>(u_input.d.x, -2147483647i))));
    var var_4 = 307f;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(719f - 1185f))), -1134f));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    global2 = array<vec3<f32>, 23>();
    var var_0 = Struct_2(abs(~firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e.x, -13341i), u_input.e))), global1.a.x, global1.e, !select(arg_1, select(vec2<bool>(global1.e.a.x, false), vec2<bool>(false, false), false), global1.e.a.xz));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(select(arg_2, arg_3.x, true | !arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * arg_2)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(853f, arg_3.x, arg_3.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1083f, arg_2, -604f))))))));
    var var_2 = global1.a;
    var var_3 = vec4<f32>(var_1.x, -718f, -450f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(515f + var_1.x) + _wgslsmith_f_op_f32(floor(arg_3.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec4<i32>(17370i, var_2.x, var_2.x, global1.b), u_input.c.zzw))))))));
    return reverseBits(max(1u, u_input.c.x));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> bool {
    let var_0 = func_4(~_wgslsmith_mod_u32(u_input.b, ~u_input.b), select(vec2<bool>(true, any(arg_0.e.b) && arg_0.b.b.x), !global1.e.a.wx, !(!global1.e.a.yy)), _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(func_2(~global1.a, vec3<u32>(global1.c.x, u_input.c.x & u_input.c.x, ~40524u))))), vec3<f32>(412f, arg_0.a, -1075f));
    global0 = array<vec4<f32>, 23>();
    let var_1 = arg_0;
    global1 = Struct_4(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, min(20945i, global1.b), arg_1, -2147483647i), max(global1.a, ~global1.a))), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, arg_1, 1i), vec4<i32>(-536i, 16560i, 1i, var_1.c.a.x)) & arg_0.c.b), select(~abs(u_input.c.yx << (u_input.c.yz % vec2<u32>(32u))), vec2<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, global1.c.x, 0u, 8706u)), ~u_input.b)), select(select(vec2<bool>(var_1.b.a.x, false), select(vec2<bool>(true, global1.d), vec2<bool>(arg_0.c.c.b.x, global1.e.b.x), true), !var_1.c.c.b.zx), select(!var_1.c.c.b.xw, vec2<bool>(global1.d, var_1.b.b.x), vec2<bool>(true, arg_0.b.b.x)), false)), !(_wgslsmith_div_u32(u_input.b, abs(4294967295u)) < (6352u ^ func_4(var_0, vec2<bool>(false, true), -2146f, global2[_wgslsmith_index_u32(global1.c.x, 23u)]))), Struct_1(vec4<bool>(true, !(var_1.c.d.x && true), true, global1.e.a.x), var_1.b.a));
    var var_2 = -1043f;
    return _wgslsmith_f_op_f32(sign(-471f)) >= _wgslsmith_f_op_f32(min(-482f, -766f));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    global0 = array<vec4<f32>, 23>();
    var var_0 = Struct_2(vec2<i32>(_wgslsmith_add_i32(countOneBits(u_input.e.x), i32(-1i) * -2147483647i), u_input.d.x), ~min(min(u_input.e.x, -u_input.d.x), _wgslsmith_add_i32(~29773i, 18041i)), global1.e, select(vec2<bool>(true, true), global1.e.a.yw, vec2<bool>(arg_1, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -326f), _wgslsmith_f_op_f32(min(-1304f, 945f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1066f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -376f) * _wgslsmith_f_op_f32(select(-217f, 1625f, global1.e.b.x))))));
    global1 = Struct_4(select(vec4<i32>(abs(-1i), global1.a.x, min(1i, global1.a.x) >> (43350u % 32u), min(~(-2147483647i), 0i)), -vec4<i32>(-u_input.a, 1i, 1i, u_input.a), var_0.c.a), -2147483647i >> (global1.c.x % 32u), vec2<u32>(~abs(~global1.c.x), ~71341u), arg_0.x, Struct_1(select(var_0.c.b, !select(global1.e.a, vec4<bool>(false, true, true, true), vec4<bool>(false, var_0.d.x, arg_1, arg_0.x)), global1.e.a), select(vec4<bool>(false, !arg_0.x, true, !var_0.c.a.x), vec4<bool>(u_input.b < u_input.c.x, all(var_0.c.a), false, all(global1.e.b.xx)), !select(global1.e.b, var_0.c.a, true))));
    global0 = array<vec4<f32>, 23>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~3600u;
    let var_1 = global1.b;
    var var_2 = func_5(!vec3<bool>(true, func_1(Struct_3(1000f, Struct_1(global1.e.b, global1.e.b), Struct_2(global1.a.xw, global1.b, global1.e, global1.e.b.zz), global1.e, Struct_1(vec4<bool>(false, global1.d, global1.d, false), vec4<bool>(global1.d, global1.e.a.x, global1.d, false))), 0i), global1.e.a.x), !(!(min(1u, 58874u) > global1.c.x)));
    let var_3 = vec3<u32>(~u_input.b, 4521u, 4294967295u);
    global0 = array<vec4<f32>, 23>();
    let var_4 = Struct_4(~global1.a, u_input.a, min(select(~min(var_3.xx, vec2<u32>(var_3.x, var_3.x)), vec2<u32>(func_5(vec3<bool>(global1.d, global1.e.a.x, false), false), var_3.x), select(func_1(Struct_3(-797f, Struct_1(global1.e.b, vec4<bool>(true, global1.d, global1.e.a.x, global1.e.b.x)), Struct_2(vec2<i32>(1i, 0i), -618i, Struct_1(global1.e.a, global1.e.b), vec2<bool>(global1.e.b.x, true)), Struct_1(global1.e.a, vec4<bool>(false, global1.d, false, false)), global1.e), u_input.e.x), false, false)), _wgslsmith_sub_vec2_u32(var_3.yz, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global1.c, vec2<u32>(1u, 6368u)), vec2<u32>(1u, global1.c.x)))), func_1(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1060f * -565f) - 1000f), Struct_1(!vec4<bool>(false, true, global1.d, true), !global1.e.b), Struct_2(select(u_input.d.xy, vec2<i32>(global1.a.x, u_input.d.x), vec2<bool>(false, true)), func_3().x, Struct_1(global1.e.a, vec4<bool>(global1.e.a.x, global1.d, false, global1.d)), !vec2<bool>(global1.d, true)), Struct_1(select(vec4<bool>(true, global1.e.b.x, global1.d, global1.d), global1.e.a, global1.e.a), vec4<bool>(global1.d, true, global1.d, global1.e.a.x)), Struct_1(vec4<bool>(true, false, global1.e.b.x, true), vec4<bool>(false, false, global1.d, global1.d))), countOneBits(-2147483647i)), global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(~0i, ~var_4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1226f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1119f - -705f)))), global0[_wgslsmith_index_u32(global1.c.x, 23u)], countOneBits(~firstLeadingBit(~vec2<i32>(var_4.a.x, -46991i))));
}

