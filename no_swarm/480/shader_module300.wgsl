struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(1043u, 29528u), vec2<u32>(130792u, 0u), vec2<u32>(8398u, 4294967295u), vec2<u32>(1u, 66578u));

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<i32>(0i, 9247i), Struct_1(vec2<i32>(-1i, 38855i), 8370u, 575f, vec2<bool>(true, true)), Struct_1(vec2<i32>(1i, 47400i), 12022u, 1000f, vec2<bool>(true, true))), Struct_2(vec2<i32>(1i, 44753i), Struct_1(vec2<i32>(21153i, 1i), 48323u, 710f, vec2<bool>(false, true)), Struct_1(vec2<i32>(0i, -1i), 29072u, -2125f, vec2<bool>(true, true))), Struct_2(vec2<i32>(2147483647i, -31017i), Struct_1(vec2<i32>(2147483647i, 49086i), 43246u, -1032f, vec2<bool>(false, false)), Struct_1(vec2<i32>(1i, -12003i), 43231u, 1055f, vec2<bool>(false, false))), Struct_2(vec2<i32>(-34811i, 2147483647i), Struct_1(vec2<i32>(-69820i, -1i), 26750u, 442f, vec2<bool>(false, true)), Struct_1(vec2<i32>(i32(-2147483648), 55780i), 9576u, 240f, vec2<bool>(false, true))), Struct_2(vec2<i32>(26029i, 1i), Struct_1(vec2<i32>(34899i, i32(-2147483648)), 1u, 548f, vec2<bool>(true, false)), Struct_1(vec2<i32>(25367i, 66258i), 85112u, -1219f, vec2<bool>(false, true))), Struct_2(vec2<i32>(0i, 1i), Struct_1(vec2<i32>(0i, 1i), 61366u, -701f, vec2<bool>(false, true)), Struct_1(vec2<i32>(-21374i, i32(-2147483648)), 19612u, -1033f, vec2<bool>(true, true))), Struct_2(vec2<i32>(-1i, -1i), Struct_1(vec2<i32>(1i, 1i), 12413u, -402f, vec2<bool>(false, true)), Struct_1(vec2<i32>(22330i, 1i), 1u, 802f, vec2<bool>(true, false))), Struct_2(vec2<i32>(0i, -26942i), Struct_1(vec2<i32>(13902i, 63178i), 48848u, 164f, vec2<bool>(true, false)), Struct_1(vec2<i32>(0i, 31582i), 72637u, 1965f, vec2<bool>(false, true))), Struct_2(vec2<i32>(-29206i, 5234i), Struct_1(vec2<i32>(-5947i, 19499i), 4294967295u, 243f, vec2<bool>(false, true)), Struct_1(vec2<i32>(13696i, -1i), 76091u, 487f, vec2<bool>(true, true))), Struct_2(vec2<i32>(1i, -33616i), Struct_1(vec2<i32>(-14358i, 59633i), 4294967295u, 510f, vec2<bool>(false, true)), Struct_1(vec2<i32>(-2835i, i32(-2147483648)), 42567u, -1077f, vec2<bool>(false, false))), Struct_2(vec2<i32>(-1i, 7260i), Struct_1(vec2<i32>(-26176i, 35911i), 90332u, -300f, vec2<bool>(false, true)), Struct_1(vec2<i32>(-34726i, 14175i), 23747u, -670f, vec2<bool>(true, true))), Struct_2(vec2<i32>(23520i, 20727i), Struct_1(vec2<i32>(1i, -1i), 0u, 2166f, vec2<bool>(false, true)), Struct_1(vec2<i32>(0i, 1i), 84700u, 271f, vec2<bool>(false, true))), Struct_2(vec2<i32>(i32(-2147483648), 34104i), Struct_1(vec2<i32>(2147483647i, -1i), 89681u, -561f, vec2<bool>(true, false)), Struct_1(vec2<i32>(0i, -8410i), 43054u, 1776f, vec2<bool>(true, false))), Struct_2(vec2<i32>(1i, 2147483647i), Struct_1(vec2<i32>(-1i, -34938i), 4294967295u, -561f, vec2<bool>(false, true)), Struct_1(vec2<i32>(13068i, -1i), 24426u, 1316f, vec2<bool>(true, false))), Struct_2(vec2<i32>(16389i, 1i), Struct_1(vec2<i32>(17370i, -54782i), 4294967295u, -759f, vec2<bool>(false, true)), Struct_1(vec2<i32>(-7162i, 3263i), 85168u, -1000f, vec2<bool>(false, true))), Struct_2(vec2<i32>(-30015i, 1i), Struct_1(vec2<i32>(21119i, -14251i), 4294967295u, 938f, vec2<bool>(true, true)), Struct_1(vec2<i32>(9581i, 9154i), 0u, 435f, vec2<bool>(false, false))), Struct_2(vec2<i32>(-1i, 2147483647i), Struct_1(vec2<i32>(-45182i, -13790i), 46184u, 117f, vec2<bool>(false, true)), Struct_1(vec2<i32>(0i, 58127i), 29098u, -404f, vec2<bool>(false, true))), Struct_2(vec2<i32>(61636i, 1i), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 4294967295u, 1000f, vec2<bool>(true, false)), Struct_1(vec2<i32>(i32(-2147483648), 1i), 0u, -250f, vec2<bool>(true, false))), Struct_2(vec2<i32>(3451i, 8483i), Struct_1(vec2<i32>(12174i, -26842i), 1042u, -778f, vec2<bool>(false, true)), Struct_1(vec2<i32>(-54793i, 2147483647i), 4294967295u, 138f, vec2<bool>(false, true))), Struct_2(vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec2<i32>(-1i, -16693i), 4294967295u, -1000f, vec2<bool>(false, false)), Struct_1(vec2<i32>(-38703i, i32(-2147483648)), 35698u, -1000f, vec2<bool>(true, false))), Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(vec2<i32>(-10181i, 0i), 0u, 2395f, vec2<bool>(false, false)), Struct_1(vec2<i32>(0i, 1i), 21840u, -781f, vec2<bool>(true, false))), Struct_2(vec2<i32>(59936i, 27685i), Struct_1(vec2<i32>(i32(-2147483648), 7327i), 0u, -1636f, vec2<bool>(true, false)), Struct_1(vec2<i32>(1i, 8545i), 50739u, -1168f, vec2<bool>(true, false))), Struct_2(vec2<i32>(-36363i, i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), 8708i), 4294967295u, -1195f, vec2<bool>(true, true)), Struct_1(vec2<i32>(1i, 29162i), 1u, 618f, vec2<bool>(false, false))), Struct_2(vec2<i32>(-55263i, 2147483647i), Struct_1(vec2<i32>(i32(-2147483648), 1i), 50281u, -349f, vec2<bool>(false, true)), Struct_1(vec2<i32>(2147483647i, 6106i), 0u, 1194f, vec2<bool>(false, true))), Struct_2(vec2<i32>(1841i, 38580i), Struct_1(vec2<i32>(-1i, 1i), 4294967295u, 1000f, vec2<bool>(false, true)), Struct_1(vec2<i32>(-4430i, 41990i), 4294967295u, 1436f, vec2<bool>(true, true))), Struct_2(vec2<i32>(51828i, -543i), Struct_1(vec2<i32>(-1i, 0i), 21398u, -279f, vec2<bool>(true, true)), Struct_1(vec2<i32>(15759i, 2147483647i), 133014u, 633f, vec2<bool>(true, true))), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), 0i), 4294967295u, -259f, vec2<bool>(false, false)), Struct_1(vec2<i32>(25923i, i32(-2147483648)), 26907u, -971f, vec2<bool>(false, false))), Struct_2(vec2<i32>(6722i, -37477i), Struct_1(vec2<i32>(i32(-2147483648), 24463i), 1u, -499f, vec2<bool>(true, false)), Struct_1(vec2<i32>(-17123i, -22547i), 28350u, -618f, vec2<bool>(true, false))), Struct_2(vec2<i32>(22397i, 2147483647i), Struct_1(vec2<i32>(-32044i, 1i), 0u, -813f, vec2<bool>(false, true)), Struct_1(vec2<i32>(1i, i32(-2147483648)), 1u, -1330f, vec2<bool>(true, false))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> bool {
    global1 = array<Struct_2, 29>();
    var var_0 = select(~(reverseBits(vec4<i32>(arg_3.b.a.x, 13777i, arg_3.c.a.x, 2147483647i)) >> (vec4<u32>(arg_3.c.b, 0u, ~arg_3.b.b, 1u) % vec4<u32>(32u))), countOneBits(-firstTrailingBit(vec4<i32>(u_input.b, 0i, arg_0.x, 2089i))), vec4<bool>(!any(vec2<bool>(false, true)), !arg_3.c.d.x, arg_1, arg_3.b.d.x));
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.b, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u)), u_input.a.x | u_input.a.x), _wgslsmith_mult_u32(abs(7957u), abs(62284u))), 38036u);
    var var_2 = Struct_1(arg_0.xy, u_input.a.x, arg_3.b.c, !vec2<bool>(any(!vec4<bool>(true, true, false, arg_3.c.d.x)), false));
    let var_3 = global1[_wgslsmith_index_u32(var_2.b, 29u)];
    return var_0.x > (i32(-1i) * -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, var_3.a.x, arg_0.x)), vec3<i32>(0i, var_0.x, -1i)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(0u, 29u)]);
    global0 = array<vec2<u32>, 4>();
    global1 = array<Struct_2, 29>();
    global1 = array<Struct_2, 29>();
    let var_1 = Struct_2(reverseBits(var_0.a.a), var_0.a.b, Struct_1(select(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-14244i, var_0.a.b.a.x)), -vec2<i32>(u_input.b, -2147483647i)), countOneBits(var_0.a.a), !select(var_0.a.c.d, var_0.a.b.d, var_0.a.c.d.x)), ~(~(~u_input.a.x)), _wgslsmith_f_op_f32(644f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.c.c)))), select(!var_0.a.b.d, vec2<bool>(func_3(vec3<i32>(var_0.a.c.a.x, u_input.b, u_input.b), false, var_0.a.c.c, Struct_2(var_0.a.b.a, Struct_1(var_0.a.c.a, u_input.a.x, var_0.a.c.c, vec2<bool>(false, false)), var_0.a.c)), any(vec3<bool>(var_0.a.c.d.x, var_0.a.b.d.x, arg_0))), all(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, false, true), vec3<bool>(true, false, false))))));
    return Struct_1(vec2<i32>(reverseBits(min(_wgslsmith_div_i32(13683i, 2147483647i), i32(-1i) * -65723i)), -10023i), 0u, _wgslsmith_f_op_f32(1734f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.b.c - var_1.b.c), -1254f))))), var_0.a.c.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = vec4<bool>(all(!(!(!vec4<bool>(arg_0.d.x, true, arg_0.d.x, true)))), arg_0.d.x, true, false);
    let var_1 = Struct_3(Struct_2(arg_0.a, func_2(var_0.x), Struct_1(arg_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(24469u, 42920u, 65020u, 1u), vec4<u32>(39400u, arg_0.b, arg_0.b, 17142u)) & 37135u, arg_1.b.c, arg_0.d)));
    global0 = array<vec2<u32>, 4>();
    let var_2 = var_1;
    var var_3 = select(select(select(vec3<bool>(arg_1.c.d.x, !var_1.a.c.d.x, any(var_0)), !(!var_0.ywz), select(!var_0.xwy, select(var_0.zzz, var_0.zyw, var_0.xwx), var_0.yyz)), vec3<bool>(any(var_0.ywx), false, var_0.x), all(var_0.wwx)), select(var_0.wwz, vec3<bool>(true, func_2(arg_0.d.x).d.x, -529f >= _wgslsmith_f_op_f32(arg_1.b.c - 338f)), var_0.wxx), arg_0.d.x);
    return arg_1.b.b;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_3) -> i32 {
    var var_0 = abs(arg_3.a.b.a.x) ^ _wgslsmith_mod_i32(-2147483647i, -51994i);
    var_0 = -2147483647i;
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_sub_u32(~min(27908u, 1u), u_input.a.x) > func_4(func_2(false | (arg_3.a.b.d.x || true)), Struct_2(arg_3.a.b.a, Struct_1(arg_3.a.b.a, arg_3.a.c.b, _wgslsmith_f_op_f32(arg_3.a.c.c + -1507f), arg_3.a.c.d), func_2(!arg_0)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(582f, arg_3.a.c.c, arg_3.a.c.c, 1195f) + vec4<f32>(arg_3.a.b.c, -1000f, -409f, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.c.c, -2413f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.b.c, 333f, 243f, arg_1.x)))), arg_1.xy);
    var var_3 = arg_3.a.c.d.x;
    return 3471i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 29>();
    var var_0 = select(vec2<i32>(reverseBits(min(func_1(false, vec3<f32>(-481f, -704f, -715f), vec2<bool>(true, true), Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 29u)])), -1i)), abs(1i)), select(~min(-vec2<i32>(u_input.b, 55191i), ~vec2<i32>(2147483647i, u_input.b)), reverseBits(select(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, u_input.b), true) >> (~global0[_wgslsmith_index_u32(u_input.a.x, 4u)] % vec2<u32>(32u))), (all(vec4<bool>(true, false, true, true)) && all(vec2<bool>(true, true))) | true), vec2<bool>(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), true)), select((2147483647i << (u_input.a.x % 32u)) <= -u_input.b, !any(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true)))));
    var_0 = countOneBits(vec2<i32>(u_input.b, var_0.x));
    global1 = array<Struct_2, 29>();
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(0u, 29u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-661f, -304f, var_1.a.c.c))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1565f * -1470f), func_2(false).c, _wgslsmith_f_op_f32(107f - var_1.a.c.c)))))), 1i, vec2<f32>(func_2(!all(vec3<bool>(false, true, true))).c, func_2(func_3(firstTrailingBit(vec3<i32>(var_0.x, var_0.x, 9073i)), false, 1073f, Struct_2(vec2<i32>(-1i, var_1.a.c.a.x), Struct_1(var_1.a.a, var_1.a.c.b, var_1.a.c.c, vec2<bool>(false, var_1.a.c.d.x)), Struct_1(var_1.a.a, 4294967295u, -1000f, var_1.a.b.d)))).c));
}

