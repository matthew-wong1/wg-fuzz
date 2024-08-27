struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(0u, 4294967295u, 57089u, 0u), Struct_1(vec4<u32>(57340u, 26708u, 2397u, 58720u), vec2<f32>(-1000f, 195f), vec4<u32>(1u, 11884u, 79236u, 1u), 0u, false), Struct_1(vec4<u32>(0u, 4294967295u, 33849u, 1u), vec2<f32>(2575f, -571f), vec4<u32>(1u, 4294967295u, 29774u, 51848u), 64670u, true), Struct_1(vec4<u32>(0u, 1u, 0u, 0u), vec2<f32>(-1012f, 320f), vec4<u32>(35550u, 63303u, 16405u, 106508u), 53079u, true));

var<private> global1: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(234f, 400f), vec2<f32>(-1503f, 838f), vec2<f32>(-894f, -158f), vec2<f32>(780f, 738f), vec2<f32>(1298f, 683f), vec2<f32>(649f, 717f), vec2<f32>(990f, -733f), vec2<f32>(1000f, -789f), vec2<f32>(515f, 1607f), vec2<f32>(-417f, -943f), vec2<f32>(-174f, 946f), vec2<f32>(-308f, 319f), vec2<f32>(-495f, -787f), vec2<f32>(1000f, -453f), vec2<f32>(1000f, 688f), vec2<f32>(-678f, 1403f), vec2<f32>(1643f, 1644f), vec2<f32>(-2333f, 1430f), vec2<f32>(-1441f, -991f), vec2<f32>(-469f, -1074f), vec2<f32>(-929f, -1554f), vec2<f32>(-351f, -1239f), vec2<f32>(-606f, -156f), vec2<f32>(-501f, -889f), vec2<f32>(-741f, -1157f), vec2<f32>(-1164f, 1000f), vec2<f32>(1000f, -661f));

var<private> global2: Struct_2 = Struct_2(vec4<u32>(75822u, 12758u, 4294967295u, 4294967295u), Struct_1(vec4<u32>(21958u, 1u, 932u, 24581u), vec2<f32>(-1670f, 126f), vec4<u32>(19540u, 1u, 0u, 1u), 4294967295u, true), Struct_1(vec4<u32>(60386u, 4294967295u, 4294967295u, 4294967295u), vec2<f32>(153f, 1130f), vec4<u32>(41038u, 44881u, 28092u, 0u), 1253u, false), Struct_1(vec4<u32>(61637u, 1u, 4294967295u, 1u), vec2<f32>(-888f, -1352f), vec4<u32>(821u, 4294967295u, 4294967295u, 15348u), 66039u, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = Struct_2(~(~(~(~global2.b.a))), global2.b, global0.d, Struct_1(~vec4<u32>(global2.c.a.x, 43180u, 4294967295u, 28499u) >> (vec4<u32>(44674u, 44319u, ~57321u, 1u) % vec4<u32>(32u)), global2.c.b, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, global2.c.a.x) >> (vec4<u32>(global2.a.x, global2.d.d, u_input.b.x, u_input.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(global0.c.a, global2.d.a, global0.b.a)), global0.b.c), abs(~min(24095u, 29997u)), true));
    global2 = Struct_2(global2.a, Struct_1(vec4<u32>(~global0.a.x, global2.a.x, u_input.a >> (_wgslsmith_dot_vec3_u32(var_0.c.c.yxw, global2.c.c.wyy) % 32u), 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(793f, global2.c.b.x) - global2.b.b))), global0.d.c, 0u, !global2.b.e), var_0.c, Struct_1(min(firstTrailingBit(firstLeadingBit(global2.a)), global2.d.a), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global2.b.d), 27u)]), min(vec4<u32>(global2.d.a.x, u_input.a | global0.b.c.x, 3919u, u_input.b.x & u_input.a), min(~vec4<u32>(5067u, global2.b.c.x, global2.b.c.x, global2.d.d), vec4<u32>(4294967295u, u_input.b.x, global2.c.c.x, 64329u))), ~select(_wgslsmith_mult_u32(global2.c.d, 7412u), ~29785u, true), false));
    var var_1 = global2.b.c.wy;
    var var_2 = global0.c.a.zw;
    let var_3 = -(~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 34048i, -3900i, u_input.c)), ~vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c)));
    return global0.b.e;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    global1 = array<vec2<f32>, 27>();
    global1 = array<vec2<f32>, 27>();
    let var_0 = ~min(vec4<u32>(0u, ~(~60256u), ~(~global2.c.d), global0.a.x), ~abs(min(vec4<u32>(global0.a.x, arg_1.c.x, arg_1.d, arg_1.a.x), vec4<u32>(global2.b.c.x, u_input.b.x, arg_1.d, 1u))));
    let var_1 = Struct_2(~(((vec4<u32>(global2.d.d, 49638u, global0.b.d, 0u) >> (vec4<u32>(1u, u_input.a, global0.d.d, global0.d.d) % vec4<u32>(32u))) | ~global0.c.a) << (~vec4<u32>(28169u, 1u, 16275u, global2.a.x) % vec4<u32>(32u))), Struct_1(~(~min(var_0, vec4<u32>(9885u, u_input.b.x, 26011u, arg_1.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(124f * 833f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.b.x, arg_1.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -246f)), !vec2<bool>(false, arg_0)))), vec4<u32>(_wgslsmith_add_u32(global0.b.c.x, ~u_input.b.x), 18886u, _wgslsmith_dot_vec3_u32(~global2.d.c.xxw, vec3<u32>(38413u, 4294967295u, 42849u)), abs(4294967295u)), _wgslsmith_mod_u32(~4294967295u, global0.d.d << (~49722u % 32u)), global2.d.e), arg_1, arg_1);
    let var_2 = _wgslsmith_f_op_f32(abs(995f));
    return _wgslsmith_f_op_vec2_f32(select(var_1.c.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_2)), _wgslsmith_f_op_f32(round(global2.d.b.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-237f, global2.b.b.x))), vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(177f + 481f)), _wgslsmith_f_op_f32(1804f - _wgslsmith_div_f32(arg_1.b.x, 659f)))), false));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = global2.b.b.x;
    let var_1 = vec4<bool>(true, global2.c.e, false, false);
    var var_2 = arg_2;
    let var_3 = global0.c;
    global1 = array<vec2<f32>, 27>();
    return global2.b.e;
}

fn func_2() -> Struct_2 {
    var var_0 = func_5(~max(~reverseBits(vec4<u32>(1u, 28419u, global0.b.a.x, u_input.a)), abs(vec4<u32>(1u, 34529u, global0.c.a.x, 0u) ^ global2.a)), _wgslsmith_f_op_vec2_f32(func_4(func_3(true), global0.b)), Struct_2(~global0.d.a, Struct_1(~countOneBits(global2.c.a), global0.b.b, ~vec4<u32>(u_input.b.x, global0.d.c.x, global2.a.x, 0u), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, 1u), global0.c.a.x), global2.d.e), Struct_1(vec4<u32>(u_input.b.x ^ 4294967295u, 0u >> (u_input.a % 32u), global2.a.x, ~6430u), vec2<f32>(_wgslsmith_f_op_f32(max(global2.c.b.x, global0.d.b.x)), _wgslsmith_div_f32(global2.d.b.x, 390f)), ~(~vec4<u32>(1u, 0u, global2.a.x, global2.a.x)), ~(u_input.b.x ^ 22415u), all(!vec4<bool>(false, global0.c.e, true, false))), Struct_1(~vec4<u32>(4294967295u, global0.a.x, 1u, 1u), vec2<f32>(global0.c.b.x, _wgslsmith_f_op_f32(f32(-1f) * -434f)), ~(global2.c.a ^ vec4<u32>(0u, 60559u, 1u, global0.b.d)), 0u, global0.d.e)), Struct_1(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(5418u, 16712u, 26148u, u_input.a)) << ((vec4<u32>(24443u, u_input.a, 4294967295u, u_input.b.x) & vec4<u32>(27373u, u_input.b.x, 11257u, global2.a.x)) % vec4<u32>(32u)), vec4<u32>(global2.b.a.x, global2.c.d | 1u, ~26172u, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(global2.c.b, global1[_wgslsmith_index_u32(global0.b.c.x, 27u)]))))), _wgslsmith_add_vec4_u32(~global0.b.a, vec4<u32>(39065u, global0.a.x, global0.c.a.x, 12040u)) << (select(vec4<u32>(u_input.a, global2.c.c.x, 26691u, 27206u), select(vec4<u32>(52664u, global2.c.c.x, u_input.a, global0.b.d), vec4<u32>(67182u, global2.d.d, 35772u, 0u), vec4<bool>(true, global2.c.e, false, global0.b.e)), global2.b.e) % vec4<u32>(32u)), 26693u, false));
    return Struct_2(global2.a, global2.c, global0.b, global2.c);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = ~4294967295u;
    var var_1 = func_2();
    let var_2 = 2147483647i;
    var_1 = Struct_2(vec4<u32>(arg_2.d, ~global2.a.x, var_1.d.d, global0.d.c.x), func_2().c, var_1.b, Struct_1(vec4<u32>(arg_2.d, 49032u, arg_2.d, ~arg_2.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2().b.b.x, -1264f)), func_2().d.a, ~u_input.a, true));
    var_0 = ~func_2().d.c.x;
    return func_2();
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> bool {
    global0 = arg_0;
    global0 = func_2();
    var var_0 = true;
    return arg_1.e;
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> bool {
    global0 = arg_3;
    let var_0 = Struct_2(select(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(36826u, arg_1.d), _wgslsmith_dot_vec3_u32(u_input.b, global2.a.zzx)), 1u, 1u, 4294967295u), global2.b.a, select(!vec4<bool>(arg_0, false, global0.d.e, global2.c.e), !(!vec4<bool>(false, arg_0, false, arg_1.e)), _wgslsmith_div_f32(307f, -1000f) == _wgslsmith_f_op_f32(arg_1.b.x * arg_3.d.b.x))), Struct_1(firstTrailingBit(firstLeadingBit(vec4<u32>(4294967295u, 22629u, 0u, global0.a.x))) | _wgslsmith_div_vec4_u32(arg_3.d.c, vec4<u32>(global2.b.d, global0.b.c.x, u_input.b.x, 4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(select(1102f, -756f, global2.c.e | false)), _wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -467f), true))), vec4<u32>(_wgslsmith_div_u32(43526u, arg_3.b.c.x) >> (~20999u % 32u), 1u, ~arg_3.b.c.x, global2.d.a.x), ~func_1(vec2<bool>(false, true), countOneBits(vec3<i32>(207i, u_input.c, u_input.c)), func_2().d).d.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.b.b.x, arg_1.b.x)), -521f)) >= 1422f), Struct_1(global2.b.c, global2.b.b, ~vec4<u32>(~global2.c.d, 4294967295u, ~20921u, ~4294967295u), select(countOneBits(23493u), 30299u, true), arg_0), Struct_1(global0.a, arg_3.b.b, global2.c.a ^ arg_1.c, 4294967295u, !(!func_3(true))));
    var var_1 = countOneBits(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(25362i, u_input.c), vec2<i32>(-1i, 44204i))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 1i) ^ vec2<i32>(u_input.c, u_input.c), -vec2<i32>(u_input.c, u_input.c)))) << (global2.d.a.xy % vec2<u32>(32u));
    var_1 = vec2<i32>(114i, -11022i);
    let var_2 = vec4<i32>(var_1.x, ~36544i, abs(_wgslsmith_sub_i32(1i, var_1.x) | ~(-12052i)) & 0i, -2147483647i);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.d.c >> (global2.a % vec4<u32>(32u)), global0.b, Struct_1(countOneBits(global2.b.c), _wgslsmith_f_op_vec2_f32(step(global2.d.b, _wgslsmith_f_op_vec2_f32(-global2.b.b))), ~(vec4<u32>(46478u, 4294967295u, 1u, global0.a.x) << ((global0.b.c | vec4<u32>(4294967295u, 0u, 4294967295u, 78576u)) % vec4<u32>(32u))), global2.b.a.x, func_7(true, Struct_1(vec4<u32>(1u, 0u, global0.d.a.x, 49010u) ^ global0.c.c, _wgslsmith_div_vec2_f32(global0.c.b, vec2<f32>(-2679f, 289f)), ~vec4<u32>(7593u, 21541u, u_input.b.x, u_input.a), abs(24390u), global2.d.e), func_6(func_1(vec2<bool>(global2.b.e, true), vec3<i32>(u_input.c, 16867i, 26036i), global2.b), global0.c, false), func_1(select(vec2<bool>(true, true), vec2<bool>(global0.b.e, global2.c.e), true), vec3<i32>(-1i, u_input.c, u_input.c), func_1(vec2<bool>(global0.b.e, global2.d.e), vec3<i32>(-10137i, -1i, -2147483647i), Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, global0.a.x, global0.c.d), vec2<f32>(global0.c.b.x, global2.b.b.x), vec4<u32>(4294967295u, global0.a.x, 2766u, 23049u), 1u, true)).c))), func_1(select(select(vec2<bool>(true, true), select(vec2<bool>(global0.b.e, false), vec2<bool>(global0.c.e, true), vec2<bool>(global0.d.e, true)), !global0.d.e), vec2<bool>(func_3(global2.b.e), func_1(vec2<bool>(true, false), vec3<i32>(37860i, u_input.c, u_input.c), Struct_1(global0.c.c, vec2<f32>(-273f, -211f), vec4<u32>(4294967295u, 23176u, 25818u, global2.c.d), 44064u, global0.d.e)).c.e), !(!vec2<bool>(true, global2.c.e))), firstLeadingBit(vec3<i32>(abs(u_input.c), 1i, i32(-1i) * -1i)), Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global0.c.b, global2.d.b))), _wgslsmith_clamp_vec4_u32(global2.a, global2.b.a, _wgslsmith_div_vec4_u32(global0.b.c, vec4<u32>(global0.d.d, global2.a.x, 9866u, global0.c.c.x))), 4294967295u, true)).d);
    var var_0 = 669f;
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 1u, 1u, 4294967295u), _wgslsmith_sub_vec4_u32(global2.d.c, vec4<u32>(u_input.b.x, global2.c.d, u_input.b.x, global0.b.d))), ~min(vec4<u32>(global0.d.d, 0u, 34677u, u_input.b.x), global0.a << (vec4<u32>(global0.c.d, global2.a.x, u_input.b.x, 52276u) % vec4<u32>(32u)))), func_2().c.b, reverseBits(global2.a), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~global0.d.a, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, global2.d.a.x, 4294967295u), global2.b.c)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24263u, 4294967295u, 1u, global2.a.x), vec4<u32>(global2.d.a.x, 5270u, u_input.b.x, global0.d.d)), ~1u, _wgslsmith_dot_vec4_u32(global0.d.a, vec4<u32>(102699u, global0.c.d, u_input.a, 4294967295u))), u_input.b.x) & ~(~_wgslsmith_add_u32(global2.a.x, u_input.a)), !(!(-517f < global2.d.b.x)) | any(select(!vec3<bool>(global0.b.e, global0.c.e, true), select(vec3<bool>(global0.c.e, global2.c.e, global2.b.e), vec3<bool>(true, global0.c.e, true), vec3<bool>(true, false, true)), func_6(Struct_2(vec4<u32>(1u, u_input.a, 0u, u_input.a), Struct_1(global2.c.c, global0.b.b, vec4<u32>(global2.b.d, 80091u, 22749u, global2.b.d), 27911u, global0.b.e), global0.d, global2.b), Struct_1(vec4<u32>(4294967295u, 0u, 0u, u_input.a), vec2<f32>(-1000f, -173f), global0.b.c, 12743u, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, u_input.c, vec4<i32>(_wgslsmith_mult_i32(-1i, abs(u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, min(-24645i, -14263i)), countOneBits(vec2<i32>(u_input.c, u_input.c)) ^ max(vec2<i32>(1i, 70220i), vec2<i32>(-1i, -1i))), ~(-37697i), _wgslsmith_mod_i32(u_input.c, -23422i | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -22621i), vec2<i32>(2147483647i, u_input.c)))), -abs(_wgslsmith_mod_i32(u_input.c, u_input.c)));
}

