struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-48714i, -27014i, 27513i);

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<f32>(-937f, -507f), false), Struct_1(vec2<f32>(780f, -3212f), false), Struct_1(vec2<f32>(-1932f, 1000f), false));

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<f32>(283f, -271f), true), Struct_1(vec2<f32>(969f, 1272f), true), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<f32>(-290f, 907f), true), Struct_1(vec2<f32>(693f, 1000f), false), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<f32>(1709f, -234f), true), Struct_1(vec2<f32>(-1000f, 1096f), true), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<f32>(1441f, -862f), false), Struct_1(vec2<f32>(-1000f, 949f), true), vec2<bool>(true, false)), Struct_2(Struct_1(vec2<f32>(-754f, -453f), false), Struct_1(vec2<f32>(-503f, 1350f), true), vec2<bool>(true, false)), Struct_2(Struct_1(vec2<f32>(1803f, -542f), true), Struct_1(vec2<f32>(547f, 444f), false), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<f32>(3244f, -463f), false), Struct_1(vec2<f32>(1854f, 1266f), true), vec2<bool>(false, true)));

var<private> global3: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(166f, -1425f, 151f), vec3<f32>(-1125f, -2137f, -513f), vec3<f32>(557f, 241f, 216f), vec3<f32>(-225f, 465f, 1283f), vec3<f32>(-1000f, 455f, -850f), vec3<f32>(-131f, -167f, 308f), vec3<f32>(-1185f, -1227f, -1000f), vec3<f32>(-1551f, 1000f, 1052f), vec3<f32>(-178f, 790f, 786f), vec3<f32>(-1279f, -791f, 1119f), vec3<f32>(-242f, 1478f, -868f), vec3<f32>(1517f, -854f, 609f), vec3<f32>(1603f, -2001f, 267f), vec3<f32>(-723f, 2086f, 221f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = !select(select(!vec2<bool>(arg_2.b, false), !vec2<bool>(arg_2.b, true), !select(vec2<bool>(arg_2.b, false), vec2<bool>(false, true), arg_2.b)), vec2<bool>(arg_2.b, select(u_input.a > 59372i, false | arg_2.b, true)), select(!select(vec2<bool>(true, arg_2.b), vec2<bool>(false, arg_2.b), vec2<bool>(true, arg_2.b)), !vec2<bool>(arg_2.b, arg_2.b), true));
    var var_1 = select(vec2<bool>(!arg_2.b, true), vec2<bool>(arg_2.b || (771f != arg_2.a.x), all(!var_0)), !var_0.x);
    var_1 = !vec2<bool>(all(vec4<bool>(arg_2.b, all(vec4<bool>(false, var_1.x, true, true)), all(vec2<bool>(arg_2.b, false)), true)), all(select(!vec3<bool>(arg_2.b, false, false), !vec3<bool>(false, var_0.x, arg_2.b), select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, arg_2.b, false), true))));
    let var_2 = (_wgslsmith_add_u32(46628u, ~4294967295u) | arg_1.x) & arg_1.x;
    let var_3 = global2[_wgslsmith_index_u32(31879u, 7u)];
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.a.x)))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_1.a.x, -406f, true)))))), _wgslsmith_f_op_f32(func_3(-636f, firstLeadingBit(min(vec3<u32>(arg_2, arg_2, 1u), vec3<u32>(arg_2, 4294967295u, 85798u))), arg_1)), _wgslsmith_f_op_f32(-2913f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1590f), _wgslsmith_f_op_f32(f32(-1f) * -1227f))))));
    var var_1 = Struct_2(arg_1, arg_1, select(vec2<bool>(true && any(vec2<bool>(arg_0, true)), any(select(vec2<bool>(false, arg_1.b), vec2<bool>(arg_1.b, true), true))), select(select(!vec2<bool>(arg_1.b, true), !vec2<bool>(false, arg_1.b), !vec2<bool>(true, arg_0)), select(vec2<bool>(true, false), !vec2<bool>(false, arg_1.b), !arg_0), arg_1.b), vec2<bool>(any(vec3<bool>(true, true, true)), true)));
    global0 = array<i32, 3>();
    var var_2 = vec4<bool>(arg_0, true, !arg_1.b, !(!var_1.c.x));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.xz + vec2<f32>(var_0.x, -1527f))))), any(var_2.xz)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2, 63875u), 3u)], var_1.c);
    return var_1.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global2 = array<Struct_2, 7>();
    var var_0 = arg_0.a.c.x;
    let var_1 = -_wgslsmith_mult_vec3_i32(abs(~(~vec3<i32>(24984i, global0[_wgslsmith_index_u32(58184u, 3u)], -2158i))), vec3<i32>(1i, u_input.a, -1i));
    var_0 = !(!arg_0.d.c.x);
    var var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~1u, abs(~1u)), vec3<u32>(~(~57381u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), select(vec2<u32>(15429u, 23102u), vec2<u32>(0u, 0u), arg_0.a.c)), _wgslsmith_div_u32(~54231u, 4294967295u))), 28569u);
    return func_2(false, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-706f - 892f), arg_0.d.a.a.x), true), 67023u);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_3) -> f32 {
    var var_0 = arg_0;
    var var_1 = !arg_0.c.x;
    let var_2 = select(!vec4<bool>(false, all(!vec2<bool>(var_0.b.b, false)), true, _wgslsmith_f_op_f32(arg_0.b.a.x - arg_0.a.a.x) == _wgslsmith_f_op_f32(var_0.a.a.x - arg_2.x)), select(!(!vec4<bool>(true, true, arg_1, var_0.b.b)), !(!(!vec4<bool>(arg_3.a.a.b, arg_3.d.b.b, arg_3.a.b.b, arg_3.c.b))), vec4<bool>(true, true, _wgslsmith_f_op_f32(exp2(arg_2.x)) < _wgslsmith_f_op_f32(663f - arg_2.x), true)), false);
    let var_3 = ~vec4<i32>(abs(6032i), ~firstTrailingBit(~(-1i)), _wgslsmith_div_i32(547i, u_input.b), -21984i);
    var var_4 = arg_3.b.x;
    return arg_3.d.a.a.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_2(func_4(Struct_3(global2[_wgslsmith_index_u32(103423u, 7u)], vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(35795u, 3u)]), global1[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(33489u, 7u)]), func_2(arg_0.b, Struct_1(arg_0.a, arg_0.b), 0u), true), Struct_1(arg_0.a, arg_0.b), vec2<bool>(true, arg_0.b)), all(select(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(true, false, arg_0.b, true), !arg_0.b)), global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(129373u, 3264u, 0u, 26340u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u))), 14u)], Struct_3(Struct_2(func_2(false, Struct_1(arg_0.a, arg_0.b), 1u), func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(arg_0.a.x, arg_0.a.x), true), Struct_1(arg_0.a, arg_0.b), vec2<bool>(arg_0.b, false)), vec2<i32>(global0[_wgslsmith_index_u32(43037u, 3u)], 44066i), global1[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(0u, 7u)]), Struct_1(arg_0.a, true), arg_0.b), !vec2<bool>(true, arg_0.b)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(1u, 3u)], u_input.b), vec2<i32>(global0[_wgslsmith_index_u32(1u, 3u)], u_input.b), true), vec2<i32>(25621i, 0i)), Struct_1(arg_0.a, true), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(0u, 0u, 0u), 1u), 7u)]))) + -1665f);
    let var_1 = false;
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(32932u, max(12808u, 8206u)), ~vec2<u32>(4294967295u, 57814u)), 7u)], vec2<i32>(23791i ^ (firstTrailingBit(-2147483647i) | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, -2147483647i), vec3<i32>(u_input.b, 22515i, -1i))), u_input.b), global1[_wgslsmith_index_u32(~1u, 3u)], Struct_2(arg_0, arg_0, vec2<bool>(true, false)));
    return Struct_1(func_2(var_1, func_4(var_2, Struct_1(func_2(var_1, arg_0, 30580u).a, 605f <= var_0), var_2.c.b), 1u).a, select(func_2(!var_1, func_4(Struct_3(Struct_2(arg_0, var_2.c, vec2<bool>(var_2.c.b, var_2.d.c.x)), vec2<i32>(u_input.a, u_input.b), Struct_1(var_2.a.a.a, var_1), Struct_2(arg_0, global1[_wgslsmith_index_u32(70030u, 3u)], vec2<bool>(arg_0.b, false))), Struct_1(vec2<f32>(var_2.c.a.x, 307f), var_2.d.a.b), true), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(25461u, 4294967295u, 17782u), vec3<u32>(16418u, 14353u, 0u)), ~0u)).b, arg_0.b, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(82816u, 3u)], func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1241f, 1171f)), true)), vec2<bool>(false, all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)))), vec2<i32>(31617i, countOneBits(-1i | u_input.a)), Struct_1(vec2<f32>(-2550f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-837f, 1085f), _wgslsmith_f_op_f32(-912f - 329f)))), all(vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(~11512u, 7u)]);
    global2 = array<Struct_2, 7>();
    let var_1 = var_0.c.a;
    global0 = array<i32, 3>();
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(1u ^ firstTrailingBit(1u), ~(~63294u), max(1u, 1u))), 7u)], vec2<i32>(~(~abs(global0[_wgslsmith_index_u32(0u, 3u)])), -var_0.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d.b.a - vec2<f32>(var_0.c.a.x, var_1.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.a.a.x, -790f), var_0.c.a)), all(select(vec4<bool>(true, false, true, var_0.a.b.b), !vec4<bool>(false, true, var_0.d.a.b, true), true))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~1u)), 23482u), 7u)]);
    var var_3 = _wgslsmith_mult_i32(~1i, ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(24893u, countOneBits(0u)), 3u)] >> (~(~reverseBits(1u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, _wgslsmith_add_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(~(~80146u), 3u)], ~abs(global0[_wgslsmith_index_u32(1u, 3u)])), ~vec3<i32>(countOneBits(u_input.b), 1i, ~3353i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.d.b.a.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-535f, var_2.d.a.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -769f)), _wgslsmith_f_op_f32(round(var_2.c.a.x)))), var_2.b ^ (-var_0.b >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(14861u, 0u)) % vec2<u32>(32u))), select(abs(vec4<u32>(623u, 1u, 0u, 43133u)), ~vec4<u32>(1u, 86301u, 2909u, 56156u), var_0.c.b) | ~min(vec4<u32>(1u, 1775u, 46716u, 16493u), vec4<u32>(1u, 54402u, 1u, 93185u)));
}

