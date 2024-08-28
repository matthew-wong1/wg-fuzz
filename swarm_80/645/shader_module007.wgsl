struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_1(vec2<u32>(4294967295u, 90849u), vec2<bool>(false, false)), vec4<bool>(false, true, false, true), vec4<u32>(79909u, 1u, 38582u, 31748u), 4294967295u), Struct_3(Struct_1(vec2<u32>(1u, 1u), vec2<bool>(false, false)), vec4<bool>(false, true, false, false), vec4<u32>(1u, 63457u, 0u, 3048u), 4294967295u), Struct_3(Struct_1(vec2<u32>(4294967295u, 69743u), vec2<bool>(true, false)), vec4<bool>(false, true, false, true), vec4<u32>(0u, 60727u, 1u, 1u), 4294967295u), Struct_3(Struct_1(vec2<u32>(6853u, 12137u), vec2<bool>(false, false)), vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, 17731u, 4294967295u, 42393u), 1u), Struct_3(Struct_1(vec2<u32>(4294967295u, 1u), vec2<bool>(true, true)), vec4<bool>(true, false, true, true), vec4<u32>(4294967295u, 1u, 65301u, 15848u), 0u), Struct_3(Struct_1(vec2<u32>(18211u, 0u), vec2<bool>(true, false)), vec4<bool>(false, false, true, true), vec4<u32>(13230u, 47485u, 27227u, 1u), 4294967295u), Struct_3(Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(false, true)), vec4<bool>(false, true, true, true), vec4<u32>(28154u, 0u, 727u, 4932u), 0u), Struct_3(Struct_1(vec2<u32>(0u, 60000u), vec2<bool>(true, false)), vec4<bool>(false, true, false, false), vec4<u32>(28469u, 0u, 18944u, 1u), 73225u), Struct_3(Struct_1(vec2<u32>(4294967295u, 23801u), vec2<bool>(false, true)), vec4<bool>(true, true, false, false), vec4<u32>(4294967295u, 26963u, 44234u, 45768u), 4294967295u), Struct_3(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, true)), vec4<bool>(false, false, false, false), vec4<u32>(46466u, 0u, 4294967295u, 9184u), 1u), Struct_3(Struct_1(vec2<u32>(4294967295u, 11329u), vec2<bool>(false, true)), vec4<bool>(false, true, true, false), vec4<u32>(4294967295u, 1u, 0u, 0u), 4294967295u), Struct_3(Struct_1(vec2<u32>(4294967295u, 29043u), vec2<bool>(true, true)), vec4<bool>(false, false, false, false), vec4<u32>(1u, 0u, 4294967295u, 1u), 30698u), Struct_3(Struct_1(vec2<u32>(67634u, 58482u), vec2<bool>(false, false)), vec4<bool>(true, false, false, false), vec4<u32>(36032u, 0u, 8883u, 14855u), 0u), Struct_3(Struct_1(vec2<u32>(45492u, 0u), vec2<bool>(false, true)), vec4<bool>(false, false, true, true), vec4<u32>(30032u, 0u, 1u, 4294967295u), 4294967295u), Struct_3(Struct_1(vec2<u32>(0u, 15223u), vec2<bool>(false, false)), vec4<bool>(false, false, false, true), vec4<u32>(23854u, 1u, 1367u, 4294967295u), 30281u), Struct_3(Struct_1(vec2<u32>(42854u, 26322u), vec2<bool>(false, true)), vec4<bool>(true, false, false, false), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), 68600u), Struct_3(Struct_1(vec2<u32>(106735u, 1u), vec2<bool>(true, true)), vec4<bool>(false, true, false, false), vec4<u32>(14421u, 1640u, 53209u, 107276u), 1u), Struct_3(Struct_1(vec2<u32>(40712u, 1522u), vec2<bool>(true, true)), vec4<bool>(false, false, false, true), vec4<u32>(0u, 4294967295u, 1236u, 1u), 1u), Struct_3(Struct_1(vec2<u32>(44517u, 1u), vec2<bool>(true, false)), vec4<bool>(true, false, true, true), vec4<u32>(0u, 1u, 0u, 4294967295u), 0u), Struct_3(Struct_1(vec2<u32>(0u, 13622u), vec2<bool>(true, true)), vec4<bool>(false, false, true, false), vec4<u32>(0u, 2010u, 5217u, 75316u), 64668u), Struct_3(Struct_1(vec2<u32>(60881u, 1u), vec2<bool>(false, true)), vec4<bool>(false, true, false, true), vec4<u32>(17451u, 0u, 35260u, 1u), 26670u), Struct_3(Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(false, false)), vec4<bool>(false, true, false, false), vec4<u32>(34026u, 867u, 0u, 4294967295u), 1u), Struct_3(Struct_1(vec2<u32>(4294967295u, 3626u), vec2<bool>(true, false)), vec4<bool>(false, true, true, false), vec4<u32>(0u, 0u, 4294967295u, 26932u), 105542u), Struct_3(Struct_1(vec2<u32>(64471u, 4294967295u), vec2<bool>(false, true)), vec4<bool>(true, true, false, false), vec4<u32>(39439u, 60885u, 40782u, 73017u), 4294967295u), Struct_3(Struct_1(vec2<u32>(2985u, 4294967295u), vec2<bool>(false, false)), vec4<bool>(false, true, true, false), vec4<u32>(7504u, 7063u, 1u, 86724u), 1u), Struct_3(Struct_1(vec2<u32>(69397u, 49937u), vec2<bool>(false, false)), vec4<bool>(false, false, false, true), vec4<u32>(46903u, 4294967295u, 4294967295u, 14892u), 23477u), Struct_3(Struct_1(vec2<u32>(37196u, 90108u), vec2<bool>(false, true)), vec4<bool>(false, true, false, false), vec4<u32>(9186u, 4294967295u, 1u, 19279u), 1u), Struct_3(Struct_1(vec2<u32>(26310u, 4294967295u), vec2<bool>(true, true)), vec4<bool>(false, false, true, true), vec4<u32>(73351u, 1u, 4294967295u, 18399u), 55715u), Struct_3(Struct_1(vec2<u32>(0u, 116506u), vec2<bool>(true, false)), vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), 1u), Struct_3(Struct_1(vec2<u32>(1u, 1u), vec2<bool>(true, true)), vec4<bool>(false, true, false, true), vec4<u32>(12491u, 1u, 10226u, 1u), 82233u), Struct_3(Struct_1(vec2<u32>(38521u, 9306u), vec2<bool>(true, true)), vec4<bool>(false, false, true, false), vec4<u32>(1u, 5840u, 4294967295u, 0u), 1u));

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_1(vec2<u32>(1u, 0u), vec2<bool>(true, false)), vec4<bool>(true, false, true, false), vec4<u32>(1u, 1u, 4294967295u, 0u), 25471u), Struct_3(Struct_1(vec2<u32>(4294967295u, 38415u), vec2<bool>(true, false)), vec4<bool>(true, true, true, false), vec4<u32>(72003u, 1u, 1u, 4294967295u), 8798u), Struct_3(Struct_1(vec2<u32>(32876u, 4294967295u), vec2<bool>(false, false)), vec4<bool>(false, true, true, true), vec4<u32>(9115u, 0u, 4294967295u, 6407u), 0u), Struct_3(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, true)), vec4<bool>(true, true, false, true), vec4<u32>(1u, 32976u, 62630u, 10536u), 1u), Struct_3(Struct_1(vec2<u32>(4294967295u, 27769u), vec2<bool>(true, false)), vec4<bool>(true, false, false, false), vec4<u32>(10596u, 4294967295u, 14u, 51396u), 1u));

var<private> global2: f32;

var<private> global3: bool;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-274f, _wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(f32(-1f) * -515f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(920f, -1013f, arg_0.b.x))), _wgslsmith_div_f32(-185f, 1203f), 2060f)));
    return _wgslsmith_f_op_f32(abs(var_0.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    let var_0 = ~(~(-_wgslsmith_div_i32(1i, ~2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(287f - -2109f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1491f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(~(~arg_0.x), 5u)], Struct_1(u_input.a, vec2<bool>(false, arg_1)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, u_input.a.x, 1u, 28823u), vec4<u32>(4294967295u, u_input.a.x, arg_0.x, arg_0.x)), min(vec4<u32>(1u, 3463u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 89091u, u_input.a.x))), Struct_1(vec2<u32>(101355u, 4294967295u), vec2<bool>(arg_1, arg_1)))), 718f)));
    global2 = _wgslsmith_f_op_f32(select(986f, 908f, !arg_1));
    global2 = var_1;
    var var_2 = vec3<i32>(-(~16254i), -(~(-2147483647i)), var_0);
    return _wgslsmith_f_op_f32(round(-477f));
}

fn func_1() -> Struct_1 {
    global3 = -364f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<u32>(16738u, 18367u), false))) - _wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.a.x, u_input.a.x), true))) - -1825f);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1429f);
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(abs(u_input.a), max(vec2<u32>(1u, u_input.a.x), u_input.a), u_input.a)), vec2<bool>(true, true)), select(vec4<bool>(true, !all(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(any(vec4<bool>(true, false, true, true)), false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false))), firstTrailingBit(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 98928u, 0u, 74141u) & vec4<u32>(u_input.a.x, u_input.a.x, 40710u, u_input.a.x), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))))), abs(firstLeadingBit(u_input.a.x)));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(524f, -509f))), !(((var_1.b.x | var_1.b.x) || !var_1.b.x) | !(!var_1.a.b.x)));
    global0 = array<Struct_3, 31>();
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(u_input.a & _wgslsmith_add_vec2_u32(arg_0.a, arg_0.a), arg_0.b.x)), _wgslsmith_f_op_f32(func_2(select(func_1().a, vec2<u32>(arg_1, arg_0.a.x) >> (arg_0.a % vec2<u32>(32u)), !arg_0.b), all(arg_0.b)))))));
    global3 = func_1().b.x;
    global0 = array<Struct_3, 31>();
    let var_1 = global1[_wgslsmith_index_u32(arg_0.a.x, 5u)];
    var var_2 = -1i;
    return !var_1.b.wy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, _wgslsmith_f_op_f32(f32(-1f) * -1352f), _wgslsmith_f_op_f32(-1573f - -426f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(555f, -1085f, 1353f) + vec3<f32>(-1000f, 1023f, 344f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-226f, 622f, -891f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-108f, 674f, -376f) - vec3<f32>(1643f, 593f, -313f))))));
    var var_1 = ~(~1u);
    var_1 = 63639u;
    global0 = array<Struct_3, 31>();
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(691f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2017f - _wgslsmith_f_op_f32(max(-429f, 118f)))), -1136f));
    var var_2 = any(select(select(func_4(func_1(), u_input.a.x, -260f), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true), !func_1().b), !(!func_4(Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(false, true)), u_input.a.x, var_0.x)), true));
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-1350f, ~0u, ~firstLeadingBit(~(~u_input.a.x)));
}

