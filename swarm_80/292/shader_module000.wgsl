struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 13>;

var<private> global2: Struct_4 = Struct_4(Struct_1(vec4<i32>(0i, i32(-2147483648), -28290i, i32(-2147483648)), vec4<u32>(1u, 2849u, 4294967295u, 1u), vec4<u32>(17967u, 4294967295u, 4294967295u, 11287u), 4294967295u, true));

var<private> global3: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(i32(-2147483648), vec2<i32>(38100i, 37045i), 916f, Struct_1(vec4<i32>(2147483647i, -21557i, 7153i, -19i), vec4<u32>(1063u, 50114u, 4294967295u, 0u), vec4<u32>(4294967295u, 28943u, 52194u, 55620u), 0u, true)), Struct_2(-5987i, vec2<i32>(i32(-2147483648), i32(-2147483648)), -908f, Struct_1(vec4<i32>(1i, i32(-2147483648), 1i, -1i), vec4<u32>(0u, 0u, 37359u, 1u), vec4<u32>(1u, 55040u, 1u, 1u), 32726u, false)), Struct_2(60243i, vec2<i32>(-21654i, -11875i), 963f, Struct_1(vec4<i32>(-37026i, -18090i, 0i, 10130i), vec4<u32>(1u, 1u, 67659u, 4294967295u), vec4<u32>(79548u, 66242u, 18898u, 1u), 26036u, true)), Struct_2(-23489i, vec2<i32>(0i, 2147483647i), -1160f, Struct_1(vec4<i32>(0i, 2147483647i, 0i, 0i), vec4<u32>(0u, 27825u, 67704u, 0u), vec4<u32>(1u, 1u, 0u, 4294967295u), 9188u, false)), Struct_2(i32(-2147483648), vec2<i32>(2147483647i, 2147483647i), -370f, Struct_1(vec4<i32>(2147483647i, 0i, 16284i, -1i), vec4<u32>(5046u, 0u, 104962u, 16489u), vec4<u32>(4294967295u, 10748u, 1u, 4294967295u), 36270u, true)), Struct_2(i32(-2147483648), vec2<i32>(i32(-2147483648), 50615i), 1121f, Struct_1(vec4<i32>(6655i, 45554i, 21277i, -1i), vec4<u32>(60618u, 116694u, 34841u, 1u), vec4<u32>(4294967295u, 45611u, 0u, 78775u), 43203u, false)), Struct_2(1i, vec2<i32>(-212i, -1i), -1967f, Struct_1(vec4<i32>(2550i, 18721i, 2147483647i, 2147483647i), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(49114u, 4294967295u, 0u, 1269u), 29864u, true)), Struct_2(-39370i, vec2<i32>(-16625i, 0i), -214f, Struct_1(vec4<i32>(-2445i, -7473i, 25761i, -18885i), vec4<u32>(36290u, 1u, 20429u, 54314u), vec4<u32>(33316u, 1u, 0u, 2408u), 15161u, false)), Struct_2(0i, vec2<i32>(38501i, 0i), 634f, Struct_1(vec4<i32>(26101i, 8807i, 66008i, 0i), vec4<u32>(1u, 1u, 71071u, 27171u), vec4<u32>(1u, 1u, 74543u, 0u), 1u, true)), Struct_2(12814i, vec2<i32>(2147483647i, -1i), -466f, Struct_1(vec4<i32>(31869i, 25395i, 0i, 0i), vec4<u32>(4294967295u, 26876u, 89963u, 0u), vec4<u32>(1u, 1u, 96572u, 1u), 5184u, false)), Struct_2(2147483647i, vec2<i32>(2147483647i, 18263i), 137f, Struct_1(vec4<i32>(62092i, 0i, -9647i, i32(-2147483648)), vec4<u32>(0u, 78244u, 38041u, 73753u), vec4<u32>(2628u, 0u, 1159u, 4294967295u), 42590u, true)), Struct_2(-26178i, vec2<i32>(2147483647i, 33093i), 825f, Struct_1(vec4<i32>(44306i, 0i, -5137i, -20710i), vec4<u32>(3897u, 9278u, 4294967295u, 20138u), vec4<u32>(1u, 4294967295u, 0u, 71142u), 1u, false)), Struct_2(5610i, vec2<i32>(-8434i, 0i), -307f, Struct_1(vec4<i32>(-1i, 15093i, 0i, -34637i), vec4<u32>(1u, 43287u, 1031u, 23344u), vec4<u32>(0u, 4294967295u, 4294967295u, 46205u), 4294967295u, false)), Struct_2(-30664i, vec2<i32>(39329i, 908i), 1000f, Struct_1(vec4<i32>(31850i, 0i, -60582i, -31594i), vec4<u32>(2141u, 47289u, 6356u, 40493u), vec4<u32>(1u, 4294967295u, 39810u, 0u), 4294967295u, false)), Struct_2(10575i, vec2<i32>(-15612i, -8326i), 648f, Struct_1(vec4<i32>(-22439i, -29403i, 2147483647i, 31228i), vec4<u32>(47732u, 20242u, 1u, 510u), vec4<u32>(17208u, 1u, 5905u, 58283u), 1u, true)), Struct_2(2147483647i, vec2<i32>(0i, 2147483647i), -1195f, Struct_1(vec4<i32>(35464i, 2147483647i, -13592i, i32(-2147483648)), vec4<u32>(1u, 34514u, 1u, 67289u), vec4<u32>(0u, 70269u, 39922u, 0u), 25621u, true)), Struct_2(38071i, vec2<i32>(26607i, 0i), 352f, Struct_1(vec4<i32>(-1i, 14021i, 1i, i32(-2147483648)), vec4<u32>(30569u, 20241u, 49018u, 9560u), vec4<u32>(0u, 0u, 31820u, 49860u), 26101u, true)), Struct_2(0i, vec2<i32>(2147483647i, 59557i), -878f, Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 29160i), vec4<u32>(42052u, 0u, 4294967295u, 2144u), vec4<u32>(1u, 0u, 1u, 4294967295u), 44555u, true)), Struct_2(i32(-2147483648), vec2<i32>(22134i, -1i), -615f, Struct_1(vec4<i32>(0i, -56302i, 23433i, -8855i), vec4<u32>(13188u, 1u, 0u, 1u), vec4<u32>(20861u, 49409u, 40201u, 21143u), 65157u, false)), Struct_2(-1i, vec2<i32>(2147483647i, 21106i), -258f, Struct_1(vec4<i32>(-21572i, 0i, 29682i, i32(-2147483648)), vec4<u32>(17716u, 37565u, 0u, 0u), vec4<u32>(48947u, 4294967295u, 40867u, 4294967295u), 17356u, true)), Struct_2(-1i, vec2<i32>(-21061i, 2147483647i), -1668f, Struct_1(vec4<i32>(45145i, 28048i, 1i, 68312i), vec4<u32>(41785u, 0u, 64271u, 1u), vec4<u32>(1563u, 1u, 0u, 4294967295u), 57894u, false)), Struct_2(i32(-2147483648), vec2<i32>(0i, 1i), 1093f, Struct_1(vec4<i32>(-22214i, -683i, -69642i, 52950i), vec4<u32>(4294967295u, 85953u, 1u, 1u), vec4<u32>(1u, 22814u, 42115u, 2658u), 31889u, false)), Struct_2(i32(-2147483648), vec2<i32>(i32(-2147483648), -68065i), 1399f, Struct_1(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 17006i), vec4<u32>(29855u, 119975u, 12385u, 77365u), vec4<u32>(1u, 66716u, 1u, 1u), 32423u, false)), Struct_2(-8322i, vec2<i32>(-10665i, -1i), -1320f, Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -16205i, 9007i), vec4<u32>(60648u, 4294967295u, 17471u, 32857u), vec4<u32>(26748u, 10106u, 20861u, 1u), 1617u, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> bool {
    global1 = array<vec3<bool>, 13>();
    global3 = array<Struct_2, 24>();
    let var_0 = global0.a;
    var var_1 = _wgslsmith_f_op_f32(min(-139f, -592f));
    var_1 = _wgslsmith_f_op_f32(round(-1699f));
    return true;
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: f32) -> f32 {
    global1 = array<vec3<bool>, 13>();
    let var_0 = global2.a.a;
    global3 = array<Struct_2, 24>();
    var var_1 = ~global0.a.x;
    global3 = array<Struct_2, 24>();
    return arg_3;
}

fn func_1(arg_0: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_3(-abs(global0.a.x) & arg_0.x, _wgslsmith_div_f32(172f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(718f, 1321f)) * -1518f), vec3<bool>(func_2(true, vec3<i32>(-5495i, global0.a.x, -676i)), !global2.a.e, !global0.e), Struct_3(-u_input.b, 649f, Struct_2(7922i, global0.a.yx, 996f, global2.a)), 1000f))), global3[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.a.x) ^ ~(~72223u)), 24u)]);
    var_0 = Struct_3(27956i, _wgslsmith_div_f32(-752f, 217f), var_0.c);
    var var_1 = countOneBits(var_0.c.d.b.x);
    global1 = array<vec3<bool>, 13>();
    var var_2 = var_0.c.d;
    return vec2<u32>(global0.b.x, 19517u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 24>();
    var var_0 = vec3<bool>(global0.e, global0.e, any(select(select(!vec2<bool>(global0.e, global0.e), vec2<bool>(true, false), global0.e || global2.a.e), vec2<bool>(global2.a.e, !global0.e), !select(vec2<bool>(global2.a.e, global2.a.e), vec2<bool>(global2.a.e, global2.a.e), global2.a.e))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1470f + -1478f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1101f) + _wgslsmith_f_op_f32(step(2016f, -1000f))))))), 426f, _wgslsmith_f_op_f32(-725f + -1004f));
    let var_2 = any(!(!(!select(global1[_wgslsmith_index_u32(u_input.d, 13u)], vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(0u, 13u)]))));
    var var_3 = ~_wgslsmith_dot_vec2_u32(func_1(global0.a & _wgslsmith_clamp_vec4_i32(global0.a, vec4<i32>(u_input.b, u_input.b, u_input.b, global0.a.x), vec4<i32>(global2.a.a.x, 63096i, global2.a.a.x, global2.a.a.x))), vec2<u32>(~1u, ~(~38090u)));
    let var_4 = global2.a.e;
    let var_5 = Struct_4(Struct_1(~vec4<i32>(global0.a.x, -1i, 2147483647i, abs(2147483647i)), ~global0.b, _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, global2.a.c.x, global2.a.b.x, 1u), ~vec4<u32>(4294967295u, 30085u, u_input.c.x, global2.a.b.x)) ^ global2.a.b, ~36093u, any(vec3<bool>(!global0.e, u_input.b < -22424i, global0.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(var_1.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x * 108f), _wgslsmith_f_op_f32(floor(697f)), _wgslsmith_f_op_f32(1000f * 1408f), _wgslsmith_f_op_f32(var_1.x * -794f)))), -928f, 1i);
}

