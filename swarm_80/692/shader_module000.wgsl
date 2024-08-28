struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(4294967295u, vec2<u32>(11163u, 14179u), 5007i, vec2<f32>(1144f, 1996f), -921f), Struct_1(34833u, vec2<u32>(12237u, 4294967295u), 26333i, vec2<f32>(-684f, -1245f), 867f), Struct_1(4294967295u, vec2<u32>(0u, 4294967295u), 18852i, vec2<f32>(-1326f, -1278f), -370f), Struct_1(4294967295u, vec2<u32>(53020u, 8352u), -47810i, vec2<f32>(-2086f, -534f), -516f), Struct_1(79686u, vec2<u32>(23000u, 43142u), 2147483647i, vec2<f32>(864f, -220f), 1199f), Struct_1(0u, vec2<u32>(0u, 78878u), 2147483647i, vec2<f32>(752f, -1832f), 887f), Struct_1(0u, vec2<u32>(50210u, 46083u), 23835i, vec2<f32>(-354f, -1154f), 1134f), Struct_1(50917u, vec2<u32>(51938u, 0u), -29350i, vec2<f32>(-1952f, -598f), 1415f), Struct_1(4294967295u, vec2<u32>(0u, 4294967295u), 10408i, vec2<f32>(-1000f, -2352f), 478f), Struct_1(1u, vec2<u32>(63678u, 1u), 8824i, vec2<f32>(-784f, 1000f), 266f), Struct_1(4294967295u, vec2<u32>(0u, 16935u), 1i, vec2<f32>(-1000f, 1398f), -1263f), Struct_1(26822u, vec2<u32>(75715u, 22145u), 0i, vec2<f32>(-801f, -973f), 851f), Struct_1(1u, vec2<u32>(29966u, 22621u), -20267i, vec2<f32>(-834f, 1000f), 1177f), Struct_1(29045u, vec2<u32>(11669u, 41003u), 35665i, vec2<f32>(1418f, -1563f), 558f), Struct_1(1u, vec2<u32>(1u, 23055u), 17873i, vec2<f32>(-150f, -887f), -532f), Struct_1(1u, vec2<u32>(11502u, 10956u), i32(-2147483648), vec2<f32>(-1101f, 436f), 523f), Struct_1(37111u, vec2<u32>(72328u, 127514u), 57673i, vec2<f32>(-1377f, -675f), -133f), Struct_1(0u, vec2<u32>(0u, 1u), 1i, vec2<f32>(-145f, -483f), 1102f), Struct_1(0u, vec2<u32>(2973u, 56872u), -66534i, vec2<f32>(953f, -1000f), -471f), Struct_1(32158u, vec2<u32>(0u, 14050u), 74190i, vec2<f32>(2378f, -200f), -1735f), Struct_1(15160u, vec2<u32>(19191u, 0u), 66023i, vec2<f32>(1967f, -1985f), 872f), Struct_1(0u, vec2<u32>(6970u, 220u), 2611i, vec2<f32>(154f, -653f), -1000f), Struct_1(60852u, vec2<u32>(4294967295u, 5003u), 0i, vec2<f32>(123f, 2017f), -217f), Struct_1(16207u, vec2<u32>(4294967295u, 5519u), 54297i, vec2<f32>(976f, 887f), -2707f), Struct_1(43299u, vec2<u32>(0u, 11895u), 0i, vec2<f32>(-1170f, 277f), 1000f), Struct_1(4294967295u, vec2<u32>(4294967295u, 17373u), -37534i, vec2<f32>(478f, -410f), 271f), Struct_1(56374u, vec2<u32>(4294967295u, 1u), -20920i, vec2<f32>(1000f, -767f), -798f), Struct_1(55796u, vec2<u32>(30678u, 0u), 2147483647i, vec2<f32>(238f, 833f), -568f), Struct_1(13083u, vec2<u32>(54537u, 32420u), 1i, vec2<f32>(1576f, -1223f), 2261f), Struct_1(41526u, vec2<u32>(2581u, 78430u), 1i, vec2<f32>(717f, 1000f), 1387f), Struct_1(0u, vec2<u32>(17760u, 4294967295u), 21998i, vec2<f32>(274f, -314f), 372f));

var<private> global1: vec3<u32> = vec3<u32>(1u, 0u, 2425u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> i32 {
    global1 = firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(17351u, 4525u, u_input.a) & ~vec3<u32>(30675u, 4587u, global1.x), countOneBits(vec3<u32>(0u, u_input.a, u_input.a)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, global1.x, u_input.a), vec3<u32>(u_input.a, 13676u, u_input.a))), u_input.a, global1.x));
    global0 = array<Struct_1, 31>();
    let var_0 = -1635f;
    var var_1 = false;
    var var_2 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i >> (_wgslsmith_sub_u32(0u, u_input.a) % 32u), 23469i, -countOneBits(2112i), min(0i, _wgslsmith_mult_i32(0i, 4531i))), vec4<i32>(firstTrailingBit(1i), ~(-2147483647i), -66590i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 36918i), vec3<i32>(-27762i, 1i, 0i))) >> (vec4<u32>(0u, global1.x, min(1u, 1u), global1.x & u_input.a) % vec4<u32>(32u)), -min(firstLeadingBit(vec4<i32>(2147483647i, 19911i, 2147483647i, -2147483647i)), ~vec4<i32>(-15763i, 2147483647i, -2147483647i, -2147483647i))));
    return firstTrailingBit(reverseBits(_wgslsmith_sub_i32(var_2.x, var_2.x) >> (4294967295u % 32u)) << (((min(global1.x, global1.x) | (global1.x >> (9579u % 32u))) << (4294967295u % 32u)) % 32u));
}

fn func_2(arg_0: u32) -> Struct_5 {
    var var_0 = -max(min(-2588i, func_3(true)), ~abs(1i)) ^ (i32(-1i) * -61805i);
    var var_1 = -(~(-1i));
    let var_2 = _wgslsmith_mult_i32(~(1i << (max(4294967295u, global1.x) % 32u)) ^ ~_wgslsmith_mult_i32(-1i, max(2147483647i, 23065i)), firstLeadingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 13495i, 6373i), ~vec3<i32>(6206i, 2147483647i, 8083i))) >> (~48618u % 32u));
    var var_3 = all(vec4<bool>(328f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(floor(895f))), false, all(vec3<bool>(any(vec2<bool>(true, false)), true, true)), true));
    var var_4 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, true)), true, all(vec4<bool>(false, false, true, false)), all(vec2<bool>(false, false)))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), true), var_2 <= firstLeadingBit(-1i));
    return Struct_5(global0[_wgslsmith_index_u32(~max(arg_0, abs(global1.x)) | abs(global1.x), 31u)], func_3(true) == (i32(-1i) * -(i32(-1i) * -24406i)), !all(!select(vec3<bool>(var_4.x, var_4.x, false), var_4.yzx, var_4.zzy)), Struct_4(true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(408f + -763f) - _wgslsmith_f_op_f32(abs(-857f))), _wgslsmith_f_op_f32(-1049f + _wgslsmith_f_op_f32(floor(-218f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1501f))), _wgslsmith_f_op_f32(max(-1144f, _wgslsmith_f_op_f32(235f + 112f)))), var_4.x, ~19301u, Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, arg_0, arg_0), ~vec3<u32>(25447u, 5656u, 0u)), 31u)], ~1u)), Struct_4(var_4.x, vec4<f32>(_wgslsmith_f_op_f32(floor(-1882f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(561f * 589f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(393f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1203f, 734f)))), true, 1u ^ (2950u & min(arg_0, 54997u)), Struct_3(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, arg_0), vec4<u32>(arg_0, 27456u, 40810u, 1u))), 31u)], ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, global1.x, 9184u), vec4<u32>(arg_0, u_input.a, arg_0, arg_0)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    var var_0 = func_2(4294967295u);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.e.e.a.d.x, 757f, var_0.e.e.a.e)))));
    global0 = array<Struct_1, 31>();
    global1 = arg_1;
    let var_2 = select(select(!arg_0.a.xy, vec2<bool>(!var_0.c || (var_1.x <= 1725f), var_0.b), false & arg_0.a.x), arg_0.a.wz, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.e, _wgslsmith_f_op_f32(arg_0.c.e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1020f)) + 1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-269f, -1000f) + _wgslsmith_f_op_f32(106f + 961f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<bool>(true, true, false, true), Struct_1(global1.x, vec2<u32>(global1.x, 0u), 0i, vec2<f32>(586f, -1351f), -1267f), global0[_wgslsmith_index_u32(0u, 31u)], vec4<u32>(u_input.a, global1.x, u_input.a, 1u), global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec3<u32>(0u, 85274u, 1u))) - func_2(9622u).a.d.x)), 969f, 976f), true || any(vec3<bool>(false, true, true)), firstTrailingBit(25263u), func_2(~(~1u)).d.e);
    let var_1 = func_2(~(~4294967295u));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-661f - var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.d.x - 1f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.e.a.d.x, var_1.a.d.x))) + _wgslsmith_f_op_vec2_f32(-var_1.d.e.a.d)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.e.e.a.e, var_1.d.e.a.d.x)), var_0.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1287f)))))))));
    let var_3 = func_2(~20378u).e.e;
    var var_4 = _wgslsmith_add_u32(var_1.d.e.a.a, ~(global1.x ^ u_input.a));
    global0 = array<Struct_1, 31>();
    let var_5 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(18571u, var_0.e.a.a >> (83770u % 32u), firstLeadingBit(u_input.a)), vec3<u32>(73875u, max(58759u, 10758u), 104086u)), 31u)];
    var var_6 = var_5.e;
    let var_7 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.a.c, (i32(-1i) * -firstLeadingBit(1i)) << (abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, var_0.d, 24226u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 26075u, var_7.e.a.a, 0u), vec4<u32>(u_input.a, 0u, var_3.b, var_1.e.e.a.b.x)))) % 32u), abs(11783u));
}

