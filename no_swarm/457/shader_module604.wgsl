struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(791u, -1245f, true, vec2<u32>(1u, 37417u)), Struct_1(12509u, -946f, true, vec2<u32>(0u, 20090u)), Struct_1(38548u, 687f, true, vec2<u32>(20751u, 4294967295u)), Struct_1(1u, -232f, true, vec2<u32>(31657u, 4294967295u)), Struct_1(4294967295u, 540f, true, vec2<u32>(0u, 4294967295u)), Struct_1(34693u, 1673f, false, vec2<u32>(50996u, 73100u)), Struct_1(5695u, -347f, true, vec2<u32>(1u, 3152u)), Struct_1(22751u, 118f, true, vec2<u32>(81333u, 4294967295u)), Struct_1(1u, 1447f, true, vec2<u32>(71414u, 19268u)), Struct_1(28386u, 815f, false, vec2<u32>(20832u, 10955u)), Struct_1(0u, -1463f, true, vec2<u32>(6937u, 0u)), Struct_1(5904u, -563f, true, vec2<u32>(4294967295u, 18073u)), Struct_1(108796u, 1003f, true, vec2<u32>(4294967295u, 58925u)), Struct_1(23894u, 1103f, true, vec2<u32>(31510u, 0u)), Struct_1(1725u, -232f, false, vec2<u32>(24230u, 0u)), Struct_1(46294u, -1000f, false, vec2<u32>(15539u, 39691u)), Struct_1(1u, 854f, false, vec2<u32>(14788u, 1u)), Struct_1(4294967295u, 680f, true, vec2<u32>(6829u, 4294967295u)), Struct_1(4294967295u, 2640f, true, vec2<u32>(10428u, 8527u)), Struct_1(25999u, -1177f, true, vec2<u32>(33881u, 0u)), Struct_1(4294967295u, -447f, true, vec2<u32>(72954u, 17777u)), Struct_1(51388u, -790f, false, vec2<u32>(1u, 4294967295u)), Struct_1(7357u, -756f, true, vec2<u32>(16623u, 1u)), Struct_1(4294967295u, -1000f, true, vec2<u32>(0u, 96914u)));

var<private> global3: f32;

var<private> global4: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(4294967295u, 566f, false, vec2<u32>(0u, 4294967295u))), Struct_2(Struct_1(30158u, 186f, false, vec2<u32>(1u, 1u))), Struct_2(Struct_1(35256u, -1146f, true, vec2<u32>(164453u, 1u))), Struct_2(Struct_1(39300u, 124f, true, vec2<u32>(1u, 105235u))), Struct_2(Struct_1(1u, -2669f, false, vec2<u32>(4294967295u, 41445u))), Struct_2(Struct_1(0u, 686f, true, vec2<u32>(12385u, 4294967295u))), Struct_2(Struct_1(1u, 197f, false, vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(29914u, 320f, true, vec2<u32>(0u, 1u))), Struct_2(Struct_1(1u, -772f, false, vec2<u32>(49762u, 29266u))), Struct_2(Struct_1(44139u, 367f, true, vec2<u32>(4294967295u, 0u))), Struct_2(Struct_1(4294967295u, -2367f, true, vec2<u32>(16049u, 0u))), Struct_2(Struct_1(1u, 227f, false, vec2<u32>(1u, 49475u))), Struct_2(Struct_1(122762u, -1390f, false, vec2<u32>(56210u, 26543u))), Struct_2(Struct_1(4294967295u, -311f, true, vec2<u32>(4596u, 1u))), Struct_2(Struct_1(4294967295u, -115f, false, vec2<u32>(0u, 41117u))), Struct_2(Struct_1(4294967295u, -1247f, false, vec2<u32>(76602u, 22758u))), Struct_2(Struct_1(49998u, -813f, true, vec2<u32>(14253u, 0u))), Struct_2(Struct_1(4294967295u, -366f, false, vec2<u32>(4294967295u, 71838u))), Struct_2(Struct_1(64174u, -1000f, false, vec2<u32>(0u, 3364u))), Struct_2(Struct_1(28577u, 1230f, true, vec2<u32>(12444u, 30658u))), Struct_2(Struct_1(0u, -1000f, false, vec2<u32>(26164u, 1u))), Struct_2(Struct_1(4294967295u, 432f, false, vec2<u32>(54359u, 4294967295u))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool, arg_3: f32) -> bool {
    global2 = array<Struct_1, 24>();
    let var_0 = global2[_wgslsmith_index_u32(~(~27289u), 24u)];
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, -733f) + global0.a.b) * 813f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-376f, _wgslsmith_f_op_f32(709f + 768f), all(vec4<bool>(arg_0.a.c, true, arg_2, arg_2))))))));
    var var_1 = global4[_wgslsmith_index_u32(arg_1.x, 22u)];
    global4 = array<Struct_2, 22>();
    return global0.a.c;
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(abs(34224u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.b, 1000f)) - 1096f)), true, vec2<u32>(4294967295u, ~116176u)));
    let var_1 = u_input.c.x;
    global1 = select(!(!(!vec4<bool>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c))), select(!vec4<bool>(true, any(global1.zxy), global0.a.c, false), vec4<bool>(!var_0.a.c, true, !all(vec4<bool>(true, global1.x, true, var_0.a.c)), ~var_0.a.d.x != global0.a.a), !select(vec4<bool>(false, global1.x, false, var_0.a.c), !vec4<bool>(var_0.a.c, true, false, true), !vec4<bool>(false, true, global1.x, true))), vec4<bool>(func_2(Struct_2(Struct_1(global0.a.a, global0.a.b, global1.x, vec2<u32>(1u, global0.a.d.x))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, u_input.e, global0.a.d.x), vec3<u32>(u_input.e, var_0.a.a, 0u) | vec3<u32>(39770u, global0.a.d.x, u_input.e), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.d.x, 50556u, 4294967295u), vec3<u32>(var_0.a.d.x, 4294967295u, u_input.e))), var_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-338f - 1000f))), true, func_2(global4[_wgslsmith_index_u32(select(global0.a.d.x, u_input.e, true), 22u)], vec3<u32>(1u, 5458u, var_0.a.a) ^ vec3<u32>(u_input.e, 4294967295u, u_input.e), var_0.a.c, global0.a.b) || !all(vec3<bool>(global1.x, global1.x, global0.a.c)), true));
    var var_2 = countOneBits(firstTrailingBit(vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.d.x, 4294967295u, u_input.e, 1u), vec4<u32>(136131u, u_input.e, 36820u, 52736u))) ^ _wgslsmith_mult_vec2_u32(~var_0.a.d, ~global0.a.d)));
    var var_3 = u_input.b;
    return false;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~countOneBits(global0.a.d.x), _wgslsmith_add_u32(u_input.e, u_input.e)), 22u)];
    global4 = array<Struct_2, 22>();
    global4 = array<Struct_2, 22>();
    global3 = arg_0;
    var var_1 = Struct_2(Struct_1(23319u, 1176f, global0.a.c, global0.a.d));
    return global4[_wgslsmith_index_u32(~(~(~88942u << (~global0.a.d.x % 32u))) | 68772u, 22u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = func_4(1503f, u_input.b, select(select(vec4<bool>(func_2(Struct_2(Struct_1(global0.a.d.x, 178f, global1.x, vec2<u32>(arg_0.x, 36210u))), arg_0.xzw, global1.x, arg_2.b), true, func_3(), global1.x), select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, global1.x, true, false), true), false), select(select(!vec4<bool>(true, global1.x, global1.x, true), select(vec4<bool>(global0.a.c, false, true, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, global0.a.c, true, true), vec4<bool>(true, true, global0.a.c, arg_2.c), false)), vec4<bool>(false, false, false, global0.a.c != global1.x), select(vec4<bool>(global0.a.c, false, global1.x, arg_2.c), select(vec4<bool>(true, global0.a.c, arg_2.c, global0.a.c), vec4<bool>(global1.x, global1.x, false, global0.a.c), true), !vec4<bool>(global1.x, global0.a.c, true, arg_2.c))), vec4<bool>(func_3(), all(select(global1.wxw, vec3<bool>(true, global0.a.c, true), global1.x)), true, false)), u_input.a);
    let var_1 = (max(~(var_0.a.d ^ vec2<u32>(arg_2.a, arg_0.x)), max(_wgslsmith_mult_vec2_u32(global0.a.d, arg_2.d), ~var_0.a.d)) & select(min(var_0.a.d, var_0.a.d) << (abs(vec2<u32>(37132u, global0.a.d.x)) % vec2<u32>(32u)), ~var_0.a.d, true)) | func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-418f, _wgslsmith_f_op_f32(global0.a.b - var_0.a.b)))), -23267i, vec4<bool>(true, arg_2.c, any(global1.xy), func_4(-376f, u_input.b, select(vec4<bool>(true, var_0.a.c, global0.a.c, false), vec4<bool>(global0.a.c, global1.x, false, true), vec4<bool>(false, true, global0.a.c, true)), -u_input.c.wyz).a.c), u_input.a | _wgslsmith_add_vec3_i32(-u_input.c.zxy, abs(vec3<i32>(u_input.a.x, 1i, 247i)))).a.d;
    global3 = _wgslsmith_f_op_f32(-global0.a.b);
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1378f);
    var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(~0u, ~arg_1), ~(~max(arg_0.x, 4294967295u)), var_0.a.d.x), ~arg_0.zxx ^ reverseBits(~vec3<u32>(61811u, 33605u, arg_0.x))), 22u)];
    return vec3<u32>(4294967295u, 1u, global0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.e);
    var var_1 = -11055i;
    let var_2 = countOneBits(_wgslsmith_mult_vec3_u32(func_1(vec4<u32>(var_0, var_0, 57558u, global0.a.d.x), min(global0.a.a, 93320u), Struct_1(u_input.e, 610f, true, vec2<u32>(81583u, 49432u))), (vec3<u32>(global0.a.a, var_0, global0.a.a) << (vec3<u32>(4294967295u, u_input.e, 0u) % vec3<u32>(32u))) ^ select(vec3<u32>(2109u, 34341u, 34903u), vec3<u32>(var_0, global0.a.a, 37834u), global0.a.c)) ^ vec3<u32>(1u, 1u, ~(1u & u_input.e)));
    global2 = array<Struct_1, 24>();
    global2 = array<Struct_1, 24>();
    let var_3 = select(reverseBits(~(~vec4<u32>(0u, 73863u, global0.a.a, var_0))), vec4<u32>(1u, global0.a.d.x, 13775u, select(firstTrailingBit(1u), min(90893u & global0.a.d.x, ~59419u), all(vec2<bool>(global1.x, global1.x)))), !select(!vec4<bool>(false, global0.a.c, false, global0.a.c), vec4<bool>(false, false, global0.a.c, global1.x), global0.a.c));
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a.b, _wgslsmith_div_f32(global0.a.b, global0.a.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yw, u_input.c << ((abs(var_3) ^ vec4<u32>(reverseBits(u_input.e), select(var_2.x, 7812u, global1.x), ~1u, var_3.x)) % vec4<u32>(32u)), (func_4(-263f, _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.c.x, 477i)), vec4<bool>(true, global1.x, global0.a.c, false), ~vec3<i32>(-2147483647i, 0i, u_input.a.x)).a.d & abs(vec2<u32>(var_2.x, var_2.x))) & ~(~firstLeadingBit(var_3.wx)), ~(-_wgslsmith_mult_i32(~(-1i), -28853i)), _wgslsmith_dot_vec2_i32(-select(-vec2<i32>(u_input.a.x, u_input.c.x), _wgslsmith_add_vec2_i32(vec2<i32>(-6933i, u_input.c.x), u_input.a.xx), true), vec2<i32>(max(u_input.b >> (u_input.e % 32u), _wgslsmith_add_i32(2147483647i, u_input.c.x)), _wgslsmith_div_i32(u_input.d.x, u_input.a.x))));
}

