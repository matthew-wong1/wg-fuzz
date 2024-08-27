struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(1u, 26324u), vec2<u32>(26375u, 59262u), vec2<u32>(0u, 21265u), vec2<u32>(4294967295u, 64199u), vec2<u32>(1u, 29071u), vec2<u32>(74154u, 46111u), vec2<u32>(44877u, 0u), vec2<u32>(34952u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(85216u, 4294967295u), vec2<u32>(42081u, 1770u), vec2<u32>(0u, 0u), vec2<u32>(13319u, 81993u), vec2<u32>(0u, 82891u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 9089u), vec2<u32>(4294967295u, 46689u), vec2<u32>(0u, 1u), vec2<u32>(1u, 33u), vec2<u32>(4294967295u, 30858u), vec2<u32>(59962u, 4294967295u), vec2<u32>(18218u, 4294967295u), vec2<u32>(10954u, 1u), vec2<u32>(3561u, 4294967295u), vec2<u32>(23863u, 3730u));

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(-611f), Struct_1(-795f), Struct_1(426f)), Struct_2(Struct_1(2166f), Struct_1(-1000f), Struct_1(-210f)), Struct_2(Struct_1(129f), Struct_1(-913f), Struct_1(772f)), Struct_2(Struct_1(1083f), Struct_1(749f), Struct_1(485f)), Struct_2(Struct_1(164f), Struct_1(-1493f), Struct_1(1010f)), Struct_2(Struct_1(-157f), Struct_1(1129f), Struct_1(-1139f)), Struct_2(Struct_1(386f), Struct_1(447f), Struct_1(305f)), Struct_2(Struct_1(1146f), Struct_1(792f), Struct_1(333f)));

var<private> global4: array<Struct_2, 18>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = arg_2.xzw;
    global4 = array<Struct_2, 18>();
    global0 = all(vec3<bool>(arg_1.x, arg_1.x, !(any(arg_1.wx) || true)));
    let var_1 = firstLeadingBit(u_input.b.xx | u_input.b.zx);
    global4 = array<Struct_2, 18>();
    return _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(1u, 25u)], vec2<u32>(reverseBits(0u), 0u)), abs(1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~45986u, _wgslsmith_div_u32(45822u, 4294967295u), ~1u), countOneBits(vec3<u32>(49806u, 1u, 29217u))) & _wgslsmith_dot_vec4_u32(abs(countOneBits(vec4<u32>(0u, 39606u, 72407u, 43132u))), select(vec4<u32>(0u, 4294967295u, 3298u, 0u), vec4<u32>(0u, 6875u, 24214u, 14815u), select(vec4<bool>(false, arg_1.x, arg_1.x, false), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), true))), ~4294967295u);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(func_3(arg_0.c, vec4<bool>(true, true, true, true), vec4<f32>(1301f, arg_1, arg_0.a.a, -998f), global4[_wgslsmith_index_u32(~0u, 18u)]), ~_wgslsmith_mod_u32(1u, 111252u), max(12505u << (0u % 32u), 4896u << (1u % 32u))), 3697u), 25u)];
    var var_1 = _wgslsmith_mod_vec4_u32(~reverseBits(~vec4<u32>(39273u, var_0.x, var_0.x, 29845u)) | (~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, 35307u, 24296u), vec4<u32>(97701u, 19836u, var_0.x, var_0.x)) | firstTrailingBit(vec4<u32>(var_0.x, 2388u, 0u, 33449u))), select(vec4<u32>(~(~var_0.x), var_0.x, ~(~39405u), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.x, 62003u), ~0u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 0u, 1825u, 0u) >> (reverseBits(vec4<u32>(var_0.x, var_0.x, 1u, var_0.x)) % vec4<u32>(32u)), vec4<u32>(30033u, func_3(arg_0.c, vec4<bool>(false, true, false, false), vec4<f32>(arg_0.c.a, 210f, arg_1, arg_0.a.a), arg_0), func_3(arg_0.a, vec4<bool>(true, false, false, true), vec4<f32>(-410f, global1.a, 360f, -1459f), global3[_wgslsmith_index_u32(var_0.x, 8u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, 10204u), vec3<u32>(1281u, var_0.x, var_0.x))), reverseBits(~vec4<u32>(var_0.x, 98664u, 4491u, 69190u))), vec4<bool>(true, true, true, true)));
    global2 = array<vec2<u32>, 25>();
    var_1 = ~countOneBits(min(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 25293u, 27721u), vec4<u32>(var_1.x, 0u, 9031u, 35630u)), countOneBits(vec4<u32>(var_1.x, var_1.x, 1u, var_0.x))) >> (abs(vec4<u32>(var_0.x, 0u, 0u, 4294967295u)) % vec4<u32>(32u)));
    var_1 = _wgslsmith_clamp_vec4_u32((~(vec4<u32>(0u, 16966u, var_1.x, 32760u) << (vec4<u32>(1u, 1u, var_0.x, var_0.x) % vec4<u32>(32u))) & ~vec4<u32>(var_1.x, 142615u, var_0.x, var_0.x)) & reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 0u, var_1.x), vec4<u32>(28286u, 0u, var_1.x, 4294967295u))), firstTrailingBit(abs(vec4<u32>(var_0.x, 20412u, 106572u, ~4294967295u))), _wgslsmith_mult_vec4_u32(max(max(_wgslsmith_mult_vec4_u32(vec4<u32>(18974u, 4294967295u, 76672u, 1u), vec4<u32>(48885u, 16164u, 54799u, var_0.x)), ~vec4<u32>(var_1.x, var_0.x, var_0.x, 4294967295u)), select(~vec4<u32>(var_0.x, 19977u, var_1.x, 0u), vec4<u32>(68408u, 38644u, var_0.x, 10796u), var_1.x >= 4294967295u)), ~vec4<u32>(_wgslsmith_clamp_u32(14101u, 1u, var_1.x), 4294967295u, _wgslsmith_clamp_u32(var_1.x, 4294967295u, 10252u), var_1.x & var_1.x)));
    return Struct_1(_wgslsmith_f_op_f32(-2066f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -387f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(4294967295u != arg_0, all(vec2<bool>(false, false)), true), true));
    let var_1 = select(max(vec4<u32>(~(~arg_0), arg_0, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(reverseBits(arg_0), 25u)], select(vec2<u32>(1u, 3136u), vec2<u32>(1u, 9361u), vec2<bool>(var_0.x, var_0.x))), ~arg_0), vec4<u32>(func_3(func_2(global3[_wgslsmith_index_u32(0u, 8u)], 754f), !vec4<bool>(var_0.x, false, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-848f, global1.a, global1.a, -229f) + vec4<f32>(225f, -166f, 405f, arg_1.a)), Struct_2(Struct_1(617f), arg_1, Struct_1(633f))), arg_0, ~46192u & reverseBits(arg_0), 1u)), vec4<u32>(0u ^ reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(8342u, 1u, arg_0))), ~arg_0, 0u, 87882u), select(!vec4<bool>(any(vec4<bool>(true, var_0.x, false, var_0.x)), var_0.x != var_0.x, true, !var_0.x), select(!(!vec4<bool>(var_0.x, false, true, false)), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), true), select(true, var_0.x, var_0.x)), select(vec4<bool>(arg_0 != 4294967295u, true, any(vec2<bool>(var_0.x, false)), !var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, false, false), true), any(vec3<bool>(false, false, true))), !(!var_0.x))));
    var var_2 = var_1.x;
    let var_3 = var_1.wyy;
    let var_4 = vec3<bool>(var_0.x, true, !(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 1i), u_input.b.zx) <= -u_input.a) | false);
    return func_2(Struct_2(Struct_1(377f), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-666f, 1000f), _wgslsmith_f_op_f32(max(arg_1.a, arg_1.a))))), arg_1), 235f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = vec4<u32>(~(1u ^ ~_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(88599u, 25u)], vec2<u32>(0u, 0u))), _wgslsmith_add_u32(firstTrailingBit(1u), 1u), ~(~(~1776u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(32249u, 21708u) >> (global2[_wgslsmith_index_u32(4294967295u, 25u)] % vec2<u32>(32u)), ~global2[_wgslsmith_index_u32(0u, 25u)]) % 32u)), firstTrailingBit(4294967295u));
    global1 = func_2(global4[_wgslsmith_index_u32(max(firstLeadingBit(~(var_0.x & var_0.x)), firstLeadingBit(5331u)), 18u)], func_2(global4[_wgslsmith_index_u32(~(~select(var_0.x, var_0.x, true)), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + _wgslsmith_div_f32(185f, arg_0.a)))).a);
    global1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + global1.a)))), arg_1.b.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a - global1.a)), global1.a)));
    var var_2 = ~global2[_wgslsmith_index_u32(50857u, 25u)];
    return func_2(arg_1, -1000f);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global1 = func_5(func_4(14240u, func_2(global4[_wgslsmith_index_u32(72374u, 18u)], global1.a)), Struct_2(arg_1, func_4(_wgslsmith_sub_u32(~89766u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(1u, 39159u, 2708u, 15199u))), Struct_1(-1000f)), arg_1), Struct_2(arg_1, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1720f - global1.a) * -661f)), func_4(4294967295u, func_2(Struct_2(Struct_1(-109f), arg_1, Struct_1(-1244f)), _wgslsmith_f_op_f32(abs(-1021f))))));
    var var_0 = abs(reverseBits(vec3<i32>(abs(u_input.b.x), 2147483647i, 10324i)));
    global3 = array<Struct_2, 8>();
    var_0 = ~abs(-vec3<i32>(~arg_0.x, u_input.c, -2147483647i));
    global4 = array<Struct_2, 18>();
    return func_5(Struct_1(-293f), Struct_2(arg_1, func_2(Struct_2(func_2(Struct_2(arg_1, Struct_1(145f), arg_1), 1000f), func_4(2148u, arg_1), func_5(arg_1, global3[_wgslsmith_index_u32(0u, 8u)], global4[_wgslsmith_index_u32(92052u, 18u)])), _wgslsmith_f_op_f32(sign(518f))), arg_1), Struct_2(func_2(global4[_wgslsmith_index_u32(~52325u, 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * arg_1.a))), Struct_1(902f), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(firstLeadingBit(u_input.b), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - -428f), 1f))));
    global0 = select(true, true, !(!any(vec3<bool>(true, true, true))));
    global0 = u_input.c > 2147483647i;
    var var_0 = true;
    global1 = Struct_1(-937f);
    let var_1 = func_4(_wgslsmith_sub_u32(~(select(1018u, 1u, false) >> (59832u % 32u)), ~1u), func_4(~(~1u), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a + 780f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) - -685f), _wgslsmith_f_op_f32(f32(-1f) * -828f), -858f))), 188f, vec3<u32>(1u, 1u, 1u));
}

