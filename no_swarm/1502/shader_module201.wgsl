struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(true, Struct_1(vec3<i32>(13986i, 0i, 42167i), -1627f, 4294967295u)), Struct_3(true, Struct_1(vec3<i32>(1i, 2147483647i, -47986i), 2262f, 4294967295u)), Struct_3(false, Struct_1(vec3<i32>(-23451i, -1i, 0i), 278f, 51919u)), Struct_3(true, Struct_1(vec3<i32>(-43404i, 2147483647i, i32(-2147483648)), -1509f, 14562u)), Struct_3(true, Struct_1(vec3<i32>(1i, -1i, i32(-2147483648)), 2501f, 0u)), Struct_3(true, Struct_1(vec3<i32>(28440i, 9419i, -11407i), -281f, 18721u)), Struct_3(false, Struct_1(vec3<i32>(-1i, -1i, 2147483647i), -210f, 9655u)), Struct_3(false, Struct_1(vec3<i32>(1360i, 36273i, -42440i), 1214f, 1u)), Struct_3(false, Struct_1(vec3<i32>(29539i, -1i, 250i), -986f, 4294967295u)), Struct_3(false, Struct_1(vec3<i32>(1i, 1i, 57348i), -732f, 56743u)), Struct_3(true, Struct_1(vec3<i32>(32854i, 33772i, 0i), 262f, 23922u)), Struct_3(true, Struct_1(vec3<i32>(-22873i, -1225i, -27725i), 335f, 1u)), Struct_3(false, Struct_1(vec3<i32>(-8509i, 0i, -51968i), 1000f, 0u)), Struct_3(false, Struct_1(vec3<i32>(-13771i, 0i, -1i), 938f, 0u)), Struct_3(false, Struct_1(vec3<i32>(-325i, -1i, 2147483647i), -681f, 55445u)), Struct_3(false, Struct_1(vec3<i32>(i32(-2147483648), 54387i, -6191i), -798f, 8055u)), Struct_3(false, Struct_1(vec3<i32>(1i, 106272i, -3602i), 394f, 1u)), Struct_3(false, Struct_1(vec3<i32>(i32(-2147483648), -48767i, i32(-2147483648)), -823f, 7801u)), Struct_3(true, Struct_1(vec3<i32>(-19129i, -72329i, 21273i), -492f, 0u)), Struct_3(true, Struct_1(vec3<i32>(-1i, 20848i, i32(-2147483648)), 230f, 1u)), Struct_3(false, Struct_1(vec3<i32>(-1i, 20469i, -27126i), -1029f, 51183u)), Struct_3(false, Struct_1(vec3<i32>(-9339i, 2147483647i, 62236i), 738f, 1u)), Struct_3(true, Struct_1(vec3<i32>(0i, 2147483647i, 28431i), -875f, 4294967295u)), Struct_3(false, Struct_1(vec3<i32>(-36416i, -77916i, i32(-2147483648)), -1116f, 4294967295u)), Struct_3(false, Struct_1(vec3<i32>(2147483647i, -1i, 0i), 752f, 4294967295u)));

var<private> global1: vec3<u32>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-22821i, 1i, 9308i), 1805f, 17228u);

var<private> global3: array<bool, 31> = array<bool, 31>(false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, true, true, false, false, true, false, true, true, true, false, false, false, false, true, true, false);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_3(false, arg_0);
    var var_1 = abs(vec2<u32>(var_0.b.c, arg_0.c));
    var_1 = select(select(vec2<u32>(min(4294967295u, 103243u), 93101u) << (~(vec2<u32>(4294967295u, 4294967295u) ^ global1.xz) % vec2<u32>(32u)), vec2<u32>(global1.x, global2.c), select(false, true, select(true, true, true))), global1.zx | _wgslsmith_mult_vec2_u32(vec2<u32>(0u, ~var_0.b.c), reverseBits(global1.xx)), true);
    global1 = ~_wgslsmith_clamp_vec3_u32(~(vec3<u32>(0u, global2.c, 1u) << (~vec3<u32>(30712u, 31957u, 1183u) % vec3<u32>(32u))), select(max(vec3<u32>(global2.c, 44831u, global1.x), vec3<u32>(global2.c, 0u, 18038u)), vec3<u32>(global2.c, 26360u, global1.x), var_0.a) & abs(_wgslsmith_sub_vec3_u32(vec3<u32>(61964u, 5204u, 1u), vec3<u32>(global1.x, 4294967295u, 58614u))), ~(vec3<u32>(var_1.x, 4294967295u, arg_0.c) | vec3<u32>(16656u, 0u, 0u)));
    global2 = Struct_1(vec3<i32>(countOneBits(abs(2147483647i)), 35610i, _wgslsmith_mult_i32(arg_0.a.x, i32(-1i) * -2147483647i)) & -(~arg_0.a), 1096f, min(arg_0.c, global2.c));
    return select(reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.c, var_1.x, 1u), vec3<u32>(global2.c, 49758u, 1u), vec3<u32>(global2.c, 63683u, var_0.b.c))) | (~countOneBits(vec3<u32>(24339u, var_1.x, arg_0.c)) & countOneBits(~vec3<u32>(arg_0.c, arg_0.c, 34653u))), abs(vec3<u32>(var_1.x, 93022u, ~(~5436u))), !select(!vec3<bool>(false, global3[_wgslsmith_index_u32(63679u, 31u)], false), select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(true, true, true), !vec3<bool>(global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(arg_0.c, 31u)], global3[_wgslsmith_index_u32(arg_0.c, 31u)])), vec3<bool>(any(vec4<bool>(var_0.a, true, global3[_wgslsmith_index_u32(arg_0.c, 31u)], true)), true, -532f != arg_0.b)));
}

fn func_2() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(26638u, 25u)];
    global1 = reverseBits(_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(global2.c, 13201u, 28589u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(19674u, var_0.b.c, global2.c), vec3<u32>(global2.c, 21411u, 4294967295u), vec3<u32>(1u, global1.x, var_0.b.c)))) | func_3(var_0.b);
    global2 = Struct_1(~(-u_input.b), global2.b, firstLeadingBit(global2.c));
    var var_1 = true || (~(~global1.x) > ~countOneBits(_wgslsmith_mult_u32(37221u, global2.c)));
    var var_2 = abs(u_input.a);
    return abs(global2.c);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = !select(vec3<bool>(global3[_wgslsmith_index_u32(func_2(), 31u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global1.x, global2.c, global2.c, global2.c)), vec4<u32>(58911u, 37995u, 4294967295u, 81716u)), 31u)], !all(vec2<bool>(false, global3[_wgslsmith_index_u32(global1.x, 31u)]))), !vec3<bool>(global3[_wgslsmith_index_u32(global2.c, 31u)], any(vec4<bool>(true, global3[_wgslsmith_index_u32(global2.c, 31u)], true, global3[_wgslsmith_index_u32(global1.x, 31u)])), true), !vec3<bool>(false | global3[_wgslsmith_index_u32(global2.c, 31u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.c, 62673u), 31u)], any(vec2<bool>(true, false))));
    return Struct_1(select(vec3<i32>(-u_input.b.x, -u_input.b.x, global2.a.x), ~global2.a, global3[_wgslsmith_index_u32(15841u, 31u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-arg_0.x))), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(542f, global2.b, -1271f, global2.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-774f, global2.b, global2.b, global2.b) + vec4<f32>(-1659f, -557f, 531f, 1000f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, -178f, global2.b, global2.b) + vec4<f32>(-377f, -550f, 1269f, global2.b)), vec4<f32>(-514f, global2.b, global2.b, global2.b))))))));
    var var_1 = global1.x;
    global0 = array<Struct_3, 25>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-877f, var_0.x, _wgslsmith_f_op_f32(1442f - _wgslsmith_f_op_f32(step(1877f, -846f))), _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 1616f, -326f, global2.b)))))) - var_0));
    let var_3 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_div_f32(1278f, _wgslsmith_f_op_f32(max(var_0.x, global2.b))), var_2.x)), vec2<f32>(-1000f, 696f));
    var_1 = 62299u;
    global3 = array<bool, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(max(-1i, -2147483647i)), 1f, _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(77468u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_3.c, global2.c, global2.c), global2.c), ~_wgslsmith_mod_u32(4294967295u, global1.x)), vec3<u32>(~_wgslsmith_div_u32(global1.x, 54920u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_3.c, global1.x)), global1.xz), global1.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, global2.c, global1.x), vec3<u32>(global2.c, 13484u, global1.x)), global1.x), _wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, 58352u)), vec2<u32>(4294967295u, 50455u))), global1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(global1.yy, vec2<u32>(global2.c, 17587u)), ~vec2<u32>(42062u, 6978u)), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(7555u, global2.c), global1.xz))), global1.x >> (~abs(0u) % 32u)), abs(1u));
}

