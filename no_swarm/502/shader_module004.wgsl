struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_3(Struct_2(i32(-2147483648), vec2<bool>(true, false)), vec2<bool>(true, true), Struct_2(-27848i, vec2<bool>(true, false)), Struct_1(1254f, false, vec3<u32>(4294967295u, 4294967295u, 48402u)), Struct_2(1i, vec2<bool>(false, true)))), Struct_4(Struct_3(Struct_2(19824i, vec2<bool>(true, false)), vec2<bool>(true, false), Struct_2(2147483647i, vec2<bool>(true, false)), Struct_1(-424f, false, vec3<u32>(36275u, 20300u, 4294967295u)), Struct_2(1i, vec2<bool>(false, false)))), Struct_4(Struct_3(Struct_2(1i, vec2<bool>(false, true)), vec2<bool>(false, true), Struct_2(23953i, vec2<bool>(false, true)), Struct_1(951f, true, vec3<u32>(0u, 23980u, 60450u)), Struct_2(-38491i, vec2<bool>(true, false)))), Struct_4(Struct_3(Struct_2(-107i, vec2<bool>(true, true)), vec2<bool>(false, false), Struct_2(2147483647i, vec2<bool>(false, true)), Struct_1(270f, true, vec3<u32>(4294967295u, 0u, 29851u)), Struct_2(i32(-2147483648), vec2<bool>(true, false)))), Struct_4(Struct_3(Struct_2(-26647i, vec2<bool>(false, false)), vec2<bool>(false, false), Struct_2(58937i, vec2<bool>(true, true)), Struct_1(-964f, false, vec3<u32>(4294967295u, 1u, 21734u)), Struct_2(0i, vec2<bool>(true, true)))), Struct_4(Struct_3(Struct_2(36853i, vec2<bool>(false, false)), vec2<bool>(true, true), Struct_2(-1i, vec2<bool>(false, true)), Struct_1(2142f, true, vec3<u32>(22085u, 103120u, 6177u)), Struct_2(-28550i, vec2<bool>(true, true)))), Struct_4(Struct_3(Struct_2(-1i, vec2<bool>(true, false)), vec2<bool>(true, true), Struct_2(i32(-2147483648), vec2<bool>(false, true)), Struct_1(-352f, false, vec3<u32>(6095u, 30459u, 48531u)), Struct_2(2147483647i, vec2<bool>(false, true)))), Struct_4(Struct_3(Struct_2(19221i, vec2<bool>(false, true)), vec2<bool>(true, false), Struct_2(47118i, vec2<bool>(true, true)), Struct_1(976f, false, vec3<u32>(6330u, 46513u, 1471u)), Struct_2(13016i, vec2<bool>(true, true)))), Struct_4(Struct_3(Struct_2(-26169i, vec2<bool>(true, true)), vec2<bool>(false, false), Struct_2(1i, vec2<bool>(true, true)), Struct_1(-762f, true, vec3<u32>(12564u, 29584u, 0u)), Struct_2(1i, vec2<bool>(false, false)))), Struct_4(Struct_3(Struct_2(31165i, vec2<bool>(false, false)), vec2<bool>(true, true), Struct_2(1700i, vec2<bool>(true, false)), Struct_1(-484f, false, vec3<u32>(1u, 4294967295u, 0u)), Struct_2(i32(-2147483648), vec2<bool>(true, true)))), Struct_4(Struct_3(Struct_2(1i, vec2<bool>(false, false)), vec2<bool>(false, false), Struct_2(13953i, vec2<bool>(false, true)), Struct_1(-383f, true, vec3<u32>(33268u, 4294967295u, 4294967295u)), Struct_2(22047i, vec2<bool>(false, false)))), Struct_4(Struct_3(Struct_2(0i, vec2<bool>(true, false)), vec2<bool>(true, false), Struct_2(-1i, vec2<bool>(true, true)), Struct_1(-426f, true, vec3<u32>(0u, 0u, 30087u)), Struct_2(-29790i, vec2<bool>(false, true)))), Struct_4(Struct_3(Struct_2(56866i, vec2<bool>(false, false)), vec2<bool>(false, true), Struct_2(-50014i, vec2<bool>(false, false)), Struct_1(-234f, true, vec3<u32>(0u, 29398u, 1u)), Struct_2(10811i, vec2<bool>(true, false)))), Struct_4(Struct_3(Struct_2(-20152i, vec2<bool>(true, true)), vec2<bool>(true, true), Struct_2(6536i, vec2<bool>(true, false)), Struct_1(707f, true, vec3<u32>(27733u, 1u, 78748u)), Struct_2(1i, vec2<bool>(true, true)))), Struct_4(Struct_3(Struct_2(10429i, vec2<bool>(true, true)), vec2<bool>(true, true), Struct_2(i32(-2147483648), vec2<bool>(true, true)), Struct_1(-647f, false, vec3<u32>(39735u, 41880u, 92566u)), Struct_2(54058i, vec2<bool>(true, true)))));

var<private> global1: Struct_1 = Struct_1(-1064f, false, vec3<u32>(4294967295u, 1u, 3383u));

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_2(1754i, vec2<bool>(true, true)), vec2<bool>(true, true), Struct_2(2147483647i, vec2<bool>(true, true)), Struct_1(710f, false, vec3<u32>(0u, 0u, 4294967295u)), Struct_2(2147483647i, vec2<bool>(false, false))), Struct_3(Struct_2(-9896i, vec2<bool>(false, true)), vec2<bool>(true, true), Struct_2(i32(-2147483648), vec2<bool>(false, true)), Struct_1(-1779f, true, vec3<u32>(1u, 41999u, 0u)), Struct_2(6068i, vec2<bool>(true, false))), Struct_3(Struct_2(0i, vec2<bool>(false, true)), vec2<bool>(true, false), Struct_2(i32(-2147483648), vec2<bool>(false, true)), Struct_1(-1000f, false, vec3<u32>(1u, 20645u, 0u)), Struct_2(0i, vec2<bool>(false, true))), Struct_3(Struct_2(i32(-2147483648), vec2<bool>(true, false)), vec2<bool>(true, true), Struct_2(i32(-2147483648), vec2<bool>(false, false)), Struct_1(221f, false, vec3<u32>(1u, 4294967295u, 2808u)), Struct_2(20023i, vec2<bool>(true, false))), Struct_3(Struct_2(-18069i, vec2<bool>(false, true)), vec2<bool>(true, false), Struct_2(1i, vec2<bool>(true, true)), Struct_1(-952f, true, vec3<u32>(4294967295u, 19943u, 0u)), Struct_2(22334i, vec2<bool>(false, true))), Struct_3(Struct_2(-1i, vec2<bool>(false, true)), vec2<bool>(false, false), Struct_2(1i, vec2<bool>(true, false)), Struct_1(-1629f, false, vec3<u32>(1u, 1u, 4294967295u)), Struct_2(1i, vec2<bool>(false, true))), Struct_3(Struct_2(1i, vec2<bool>(true, true)), vec2<bool>(false, true), Struct_2(-1i, vec2<bool>(false, false)), Struct_1(1409f, false, vec3<u32>(1u, 13859u, 43459u)), Struct_2(-9999i, vec2<bool>(false, true))), Struct_3(Struct_2(69471i, vec2<bool>(false, false)), vec2<bool>(true, true), Struct_2(i32(-2147483648), vec2<bool>(true, true)), Struct_1(263f, false, vec3<u32>(54702u, 44832u, 0u)), Struct_2(-360i, vec2<bool>(false, true))), Struct_3(Struct_2(i32(-2147483648), vec2<bool>(false, true)), vec2<bool>(false, false), Struct_2(3552i, vec2<bool>(false, false)), Struct_1(1056f, true, vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_2(-1i, vec2<bool>(false, true))), Struct_3(Struct_2(19522i, vec2<bool>(true, false)), vec2<bool>(true, false), Struct_2(2147483647i, vec2<bool>(false, false)), Struct_1(-1000f, true, vec3<u32>(18041u, 26072u, 32771u)), Struct_2(4961i, vec2<bool>(true, false))), Struct_3(Struct_2(26518i, vec2<bool>(true, true)), vec2<bool>(false, true), Struct_2(i32(-2147483648), vec2<bool>(true, false)), Struct_1(-739f, false, vec3<u32>(18190u, 98609u, 87859u)), Struct_2(10362i, vec2<bool>(false, true))), Struct_3(Struct_2(-1i, vec2<bool>(true, true)), vec2<bool>(true, false), Struct_2(-7729i, vec2<bool>(true, false)), Struct_1(-1766f, false, vec3<u32>(0u, 0u, 4294967295u)), Struct_2(1i, vec2<bool>(true, true))), Struct_3(Struct_2(i32(-2147483648), vec2<bool>(false, false)), vec2<bool>(true, false), Struct_2(i32(-2147483648), vec2<bool>(true, false)), Struct_1(943f, false, vec3<u32>(0u, 0u, 45692u)), Struct_2(i32(-2147483648), vec2<bool>(true, false))), Struct_3(Struct_2(-42797i, vec2<bool>(true, false)), vec2<bool>(true, false), Struct_2(49510i, vec2<bool>(true, true)), Struct_1(801f, true, vec3<u32>(0u, 1u, 4294967295u)), Struct_2(-12176i, vec2<bool>(true, false))), Struct_3(Struct_2(-1i, vec2<bool>(true, false)), vec2<bool>(false, false), Struct_2(2147483647i, vec2<bool>(true, false)), Struct_1(871f, false, vec3<u32>(0u, 7834u, 19835u)), Struct_2(1i, vec2<bool>(false, false))));

var<private> global3: i32;

var<private> global4: array<Struct_4, 15>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = ~(_wgslsmith_add_i32(-13773i, -30183i) & _wgslsmith_dot_vec3_i32(-(~vec3<i32>(14110i, arg_2, 21202i)), vec3<i32>(0i, -82i & u_input.a.x, -1i)));
    global4 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    var var_1 = all(select(select(!vec2<bool>(global1.b, true), vec2<bool>(true, false), !vec2<bool>(false, global1.b)), select(!vec2<bool>(global1.b, global1.b), vec2<bool>(global1.b, false), vec2<bool>(global1.b, false)), !(!vec2<bool>(false, global1.b)))) != (global1.a <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    var var_2 = _wgslsmith_sub_vec4_i32(~select(vec4<i32>(u_input.a.x, 0i, arg_2, -1i), vec4<i32>(arg_2, -6153i, var_0, u_input.a.x) >> (arg_0 % vec4<u32>(32u)), !vec4<bool>(false, global1.b, global1.b, false)), ~(~vec4<i32>(-58296i, arg_2, 0i, arg_2))) & abs(-vec4<i32>(-12135i, -u_input.a.x, u_input.a.x, ~52583i));
    return !(!vec2<bool>(global1.b, true));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_mult_i32(u_input.a.x, ~((i32(-1i) * -2147483647i) << (firstTrailingBit(select(arg_1.c.x, 22811u, true)) % 32u)));
    var var_1 = Struct_4(arg_0.a);
    var var_2 = abs(-firstTrailingBit(-(~vec3<i32>(arg_2.a, 0i, arg_2.a))));
    var var_3 = 759f;
    return abs(~(~vec3<i32>(-1i, _wgslsmith_mod_i32(0i, -32262i), _wgslsmith_dot_vec4_i32(vec4<i32>(-62782i, -11374i, var_2.x, 1i), vec4<i32>(0i, arg_2.a, 935i, -1i)))));
}

fn func_2() -> Struct_2 {
    global2 = array<Struct_3, 15>();
    global0 = array<Struct_4, 15>();
    let var_0 = global1.c.x;
    var var_1 = _wgslsmith_f_op_f32(-534f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1696f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1387f - global1.a))))));
    let var_2 = func_4(Struct_4(Struct_3(Struct_2(-37475i, vec2<bool>(global1.b, global1.b)), select(!vec2<bool>(global1.b, global1.b), vec2<bool>(true, global1.b), !vec2<bool>(global1.b, global1.b)), Struct_2(u_input.a.x, vec2<bool>(true, true)), Struct_1(1690f, global1.b, ~vec3<u32>(57604u, 18006u, 4294967295u)), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)), func_3(vec4<u32>(0u, global1.c.x, global1.c.x, 55320u), vec4<f32>(global1.a, 2337f, global1.a, -171f), -1518i, vec4<u32>(30113u, 28937u, 0u, 17699u))))), Struct_1(global1.a, !(!all(vec4<bool>(global1.b, global1.b, global1.b, false))), vec3<u32>(~max(global1.c.x, 122u), ~0u >> (global1.c.x % 32u), ~40999u)), Struct_2(-max(-22014i, u_input.a.x & u_input.a.x), !vec2<bool>(any(vec2<bool>(true, global1.b)), true)));
    return Struct_2(_wgslsmith_clamp_i32(93840i, select(-23911i, 2147483647i, true), _wgslsmith_dot_vec3_i32(~firstTrailingBit(var_2), countOneBits(vec3<i32>(u_input.a.x, var_2.x, 2147483647i)))), vec2<bool>(!(!global1.b), true));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    global2 = array<Struct_3, 15>();
    let var_1 = true;
    global0 = array<Struct_4, 15>();
    global4 = array<Struct_4, 15>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.a.x;
    global3 = ~(-1i);
    let var_0 = func_1();
    var var_1 = vec4<u32>(~_wgslsmith_div_u32(4294967295u, global1.c.x), countOneBits(~_wgslsmith_mod_u32(11451u, 22724u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, global1.c.x, global1.c.x, 14712u), select(vec4<u32>(1u, 1024u, 0u, 55060u), vec4<u32>(61435u, 0u, global1.c.x, 29042u), vec4<bool>(var_0.b.x, var_0.b.x, false, false)))), global1.c.x, global1.c.x);
    var_1 = select(reverseBits(_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_1.x, var_1.x, global1.c.x, 33393u)), countOneBits(min(vec4<u32>(var_1.x, var_1.x, var_1.x, 26865u), vec4<u32>(var_1.x, var_1.x, 34364u, var_1.x))))), vec4<u32>(~_wgslsmith_div_u32(var_1.x << (global1.c.x % 32u), abs(var_1.x)), ~_wgslsmith_div_u32(~var_1.x, 1763u), 0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 141500u, 0u, var_1.x), ~vec4<u32>(var_1.x, 26486u, 29366u, global1.c.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_mult_i32(~(-14474i), 54141i), u_input.a.x, 0i, _wgslsmith_mod_i32(2147483647i << (0u % 32u), i32(-1i) * -2147483647i)), -abs(vec3<i32>(~2147483647i, 2147483647i, var_0.a)), ~(~(~select(vec4<u32>(4294967295u, global1.c.x, 0u, global1.c.x), vec4<u32>(75147u, global1.c.x, global1.c.x, var_1.x), global1.b))), var_1.yzz, firstTrailingBit(vec2<u32>(~1u, 1u)));
}

