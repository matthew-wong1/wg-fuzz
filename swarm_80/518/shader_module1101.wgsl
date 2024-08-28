struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(Struct_3(vec3<u32>(1u, 1u, 4294967295u)), vec2<bool>(false, false), -34922i, vec2<f32>(-1567f, 441f)), Struct_5(Struct_3(vec3<u32>(17042u, 41987u, 20347u)), vec2<bool>(false, true), 0i, vec2<f32>(117f, 1788f)), Struct_5(Struct_3(vec3<u32>(26188u, 109918u, 72886u)), vec2<bool>(true, false), 0i, vec2<f32>(1621f, -763f)), Struct_5(Struct_3(vec3<u32>(21176u, 9924u, 4294967295u)), vec2<bool>(false, true), 2710i, vec2<f32>(-440f, -634f)), Struct_5(Struct_3(vec3<u32>(4843u, 0u, 23828u)), vec2<bool>(false, true), 9167i, vec2<f32>(-1410f, 894f)), Struct_5(Struct_3(vec3<u32>(1u, 24968u, 4294967295u)), vec2<bool>(false, true), 0i, vec2<f32>(-730f, 993f)), Struct_5(Struct_3(vec3<u32>(4294967295u, 28187u, 1u)), vec2<bool>(true, true), 2147483647i, vec2<f32>(184f, -1000f)), Struct_5(Struct_3(vec3<u32>(41177u, 1u, 4294967295u)), vec2<bool>(false, true), 50584i, vec2<f32>(2511f, -1000f)), Struct_5(Struct_3(vec3<u32>(0u, 29828u, 9017u)), vec2<bool>(true, false), -9560i, vec2<f32>(-377f, 658f)), Struct_5(Struct_3(vec3<u32>(4294967295u, 1u, 12478u)), vec2<bool>(false, false), -6908i, vec2<f32>(1000f, -1032f)), Struct_5(Struct_3(vec3<u32>(4294967295u, 21496u, 0u)), vec2<bool>(true, false), 52762i, vec2<f32>(586f, -1000f)), Struct_5(Struct_3(vec3<u32>(0u, 58758u, 1u)), vec2<bool>(false, true), 30093i, vec2<f32>(-150f, 659f)), Struct_5(Struct_3(vec3<u32>(28871u, 4294967295u, 1u)), vec2<bool>(true, false), -1i, vec2<f32>(-958f, 1276f)), Struct_5(Struct_3(vec3<u32>(19303u, 47605u, 0u)), vec2<bool>(true, true), -27859i, vec2<f32>(-339f, -325f)), Struct_5(Struct_3(vec3<u32>(1u, 73501u, 4294967295u)), vec2<bool>(true, true), 2147483647i, vec2<f32>(-1689f, 895f)), Struct_5(Struct_3(vec3<u32>(8858u, 16282u, 0u)), vec2<bool>(false, false), 0i, vec2<f32>(285f, -172f)), Struct_5(Struct_3(vec3<u32>(3530u, 26435u, 94668u)), vec2<bool>(true, false), 0i, vec2<f32>(345f, -2013f)));

var<private> global1: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(22965u, 4294967295u, 1u), vec3<u32>(4294967295u, 68578u, 4294967295u), vec3<u32>(31202u, 37613u, 0u), vec3<u32>(21543u, 72081u, 18750u), vec3<u32>(80391u, 33202u, 48476u), vec3<u32>(36610u, 4294967295u, 1u), vec3<u32>(0u, 9850u, 4294967295u), vec3<u32>(4294967295u, 94404u, 1u), vec3<u32>(7433u, 1u, 93006u), vec3<u32>(4294967295u, 18903u, 4294967295u), vec3<u32>(4294967295u, 1413u, 50017u), vec3<u32>(0u, 110063u, 39156u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 35731u, 17557u), vec3<u32>(116129u, 4294967295u, 0u), vec3<u32>(8037u, 4294967295u, 4294967295u), vec3<u32>(1u, 51369u, 4743u), vec3<u32>(21464u, 0u, 0u), vec3<u32>(11147u, 35268u, 674u), vec3<u32>(37111u, 0u, 56939u), vec3<u32>(1u, 0u, 1u), vec3<u32>(66215u, 0u, 10439u), vec3<u32>(9383u, 1u, 1u), vec3<u32>(4294967295u, 7306u, 1u), vec3<u32>(20401u, 4294967295u, 66113u), vec3<u32>(50415u, 1u, 44191u), vec3<u32>(0u, 4294967295u, 49599u), vec3<u32>(1u, 1u, 1703u), vec3<u32>(83227u, 1u, 18347u), vec3<u32>(4294967295u, 0u, 29153u), vec3<u32>(0u, 17438u, 6437u), vec3<u32>(17987u, 30455u, 1u));

var<private> global2: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    let var_0 = ~global2.c.a.a;
    let var_1 = ~(-_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-6176i, u_input.a.x, global2.a.a.x, 1i), _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(2147483647i, global2.c.a.a.x, 1008i, u_input.a.x))), u_input.b));
    let var_2 = Struct_4(Struct_1(var_0 << (vec2<u32>(14085u | global2.d, 4294967295u) % vec2<u32>(32u)), ~max(0i, var_0.x << (15446u % 32u)), vec4<bool>(any(!vec4<bool>(global2.c.a.c.x, global2.a.c.x, global2.c.a.c.x, global2.c.a.c.x)), false, _wgslsmith_clamp_u32(u_input.c.x, 0u, u_input.c.x) < reverseBits(u_input.c.x), global2.a.c.x), -u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.c.a.e.x, -1535f))), 468f, _wgslsmith_f_op_f32(sign(-923f)), -280f)), u_input.c.x, global2.c, 42191u);
    let var_3 = var_2.c.a.c.x;
    let var_4 = var_2;
    return global2.c.a.d;
}

fn func_2() -> Struct_3 {
    let var_0 = func_3();
    let var_1 = Struct_3(firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c.x, 1u, 4294967295u), firstTrailingBit(vec3<u32>(38717u, global2.d, u_input.c.x)))));
    global1 = array<vec3<u32>, 32>();
    return var_1;
}

fn func_1(arg_0: f32, arg_1: Struct_5) -> Struct_5 {
    var var_0 = func_2();
    var var_1 = Struct_1(min(min(vec2<i32>(global2.a.a.x, firstLeadingBit(1i)), vec2<i32>(global2.c.a.a.x, 24083i)), global2.c.a.a), -_wgslsmith_dot_vec4_i32(u_input.b, min(vec4<i32>(global2.a.a.x, global2.c.a.b, 2147483647i, 53432i), vec4<i32>(arg_1.c, arg_1.c, -8526i, arg_1.c)) << (vec4<u32>(1u, 37298u, arg_1.a.a.x, 4294967295u) % vec4<u32>(32u))), !vec4<bool>(-1i < u_input.b.x, global2.c.a.c.x, arg_1.b.x && select(false, true, global2.a.c.x), any(global2.a.c.xxw)), ~global2.c.a.a.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-111f, _wgslsmith_f_op_f32(-global2.a.e.x), global2.c.a.e.x, _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(global2.c.a.e, global2.a.e, vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(ceil(global2.c.a.e)), any(arg_1.b))))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1498f * 460f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -164f), -448f))) - 527f);
    var_0 = arg_1.a;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1429f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)))) * _wgslsmith_f_op_f32(max(649f, _wgslsmith_f_op_f32(321f * _wgslsmith_f_op_f32(-arg_0)))));
    return Struct_5(Struct_3(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(29158u, 91312u, 18384u, 4294967295u), ~vec4<u32>(u_input.c.x, 0u, global2.b, u_input.c.x)), ~(~20909u))), !var_1.c.xy, -var_1.b, vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(global2.c.a.e.x * _wgslsmith_f_op_f32(floor(arg_1.d.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: vec2<u32>) -> vec4<bool> {
    global1 = array<vec3<u32>, 32>();
    var var_0 = -2147483647i;
    var var_1 = u_input.a;
    let var_2 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a.e.x, -498f)) * _wgslsmith_f_op_f32(-global2.c.a.e.x)) * arg_0.d.x), 434f), Struct_5(arg_0.a, select(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1644f), func_1(-985f, arg_0)).b, vec2<bool>(true, arg_0.b.x), (arg_0.b.x && false) && global2.c.a.c.x), -_wgslsmith_mod_i32(2827i ^ arg_0.c, arg_0.c), vec2<f32>(arg_0.d.x, arg_0.d.x))).b;
    var var_3 = Struct_4(Struct_1(var_1.ww, -43681i, global2.c.a.c, countOneBits(global2.a.a.x), _wgslsmith_f_op_vec4_f32(-global2.a.e)), abs(_wgslsmith_div_u32(~arg_1, ~1u)) ^ ~(abs(41937u) ^ u_input.c.x), global2.c, _wgslsmith_sub_u32(max(global2.d, arg_2.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(42018u, 0u, arg_0.a.a.x), vec3<u32>(77885u, 0u, 5423u))));
    return var_3.c.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(global2.c.a.e.x, global0[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(~global2.b, 13680u), _wgslsmith_sub_u32(global2.d ^ 4294967295u, 0u), any(vec3<bool>(true, true, true))), 17u)]), _wgslsmith_dot_vec2_u32(u_input.c, reverseBits(countOneBits(vec2<u32>(90340u, global2.d)))), reverseBits(~_wgslsmith_sub_vec2_u32(~u_input.c, ~vec2<u32>(u_input.c.x, 4294967295u))));
    let var_1 = global2.a.c.xyx;
    let var_2 = u_input.c.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a.e.x))))));
    global2 = Struct_4(global2.a, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, ~u_input.c.x << (u_input.c.x % 32u)), ~abs(0u)), Struct_2(Struct_1(u_input.a.zy & (vec2<i32>(-81564i, global2.c.a.a.x) >> (u_input.c % vec2<u32>(32u))), u_input.a.x, vec4<bool>(false, global2.a.c.x, false, true & var_1.x), 0i, global2.c.a.e)), firstLeadingBit(global2.d << (abs(_wgslsmith_clamp_u32(0u, global2.d, 1u)) % 32u)));
    global1 = array<vec3<u32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3, ~vec4<u32>(4294967295u, ~0u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(global2.b, var_2) << (u_input.c % vec2<u32>(32u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(50341u, 24666u), u_input.c), 21553u, ~global2.d)));
}

