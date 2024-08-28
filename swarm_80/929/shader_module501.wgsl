struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_3,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_3,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(vec3<i32>(i32(-2147483648), -8482i, 0i), vec4<u32>(1u, 41035u, 5458u, 53613u), false), 386f, false), Struct_3(Struct_2(vec3<i32>(-1i, 0i, 46601i), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), false), 716f, true), Struct_3(Struct_2(vec3<i32>(10991i, 2147483647i, 0i), vec4<u32>(61048u, 71549u, 43069u, 36849u), true), -488f, false), Struct_3(Struct_2(vec3<i32>(35429i, -40763i, 20934i), vec4<u32>(0u, 0u, 4294967295u, 4799u), false), 242f, true), Struct_3(Struct_2(vec3<i32>(-1i, 1i, -10454i), vec4<u32>(62524u, 1u, 4294967295u, 0u), true), -1340f, false), Struct_3(Struct_2(vec3<i32>(1i, 15069i, -32097i), vec4<u32>(42987u, 0u, 17192u, 73532u), false), 2087f, true), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 28084i), vec4<u32>(1u, 59111u, 60097u, 39204u), true), -491f, true), Struct_3(Struct_2(vec3<i32>(67706i, -1i, -1i), vec4<u32>(19901u, 61147u, 0u, 0u), false), -1133f, true), Struct_3(Struct_2(vec3<i32>(1i, 2147483647i, 2147483647i), vec4<u32>(0u, 0u, 188u, 1u), false), -1498f, true), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), false), 121f, false), Struct_3(Struct_2(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec4<u32>(48020u, 100331u, 35491u, 83158u), false), 744f, false), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<u32>(13924u, 22355u, 74095u, 0u), true), 1000f, true), Struct_3(Struct_2(vec3<i32>(-1i, 0i, i32(-2147483648)), vec4<u32>(1u, 9231u, 0u, 26945u), true), -690f, false), Struct_3(Struct_2(vec3<i32>(-1i, -49962i, 1i), vec4<u32>(25585u, 53833u, 0u, 76014u), true), -142f, true), Struct_3(Struct_2(vec3<i32>(2147483647i, -1i, 0i), vec4<u32>(16013u, 1u, 1u, 4294967295u), false), 1391f, true), Struct_3(Struct_2(vec3<i32>(28069i, 77442i, -22781i), vec4<u32>(4294967295u, 87251u, 4294967295u, 3015u), false), 572f, true), Struct_3(Struct_2(vec3<i32>(-5991i, -302i, 2147483647i), vec4<u32>(4294967295u, 16107u, 20268u, 27919u), false), -1000f, true), Struct_3(Struct_2(vec3<i32>(-1i, -2331i, 29839i), vec4<u32>(404u, 36801u, 59623u, 44210u), false), -449f, false), Struct_3(Struct_2(vec3<i32>(2147483647i, 47808i, i32(-2147483648)), vec4<u32>(1u, 8389u, 1u, 1u), false), -597f, true), Struct_3(Struct_2(vec3<i32>(-36729i, 21226i, -1i), vec4<u32>(0u, 73083u, 25963u, 9829u), false), -927f, false), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 0i, -1i), vec4<u32>(4294967295u, 0u, 16535u, 4294967295u), false), -1000f, true), Struct_3(Struct_2(vec3<i32>(-28156i, 30685i, -1i), vec4<u32>(1u, 29921u, 0u, 9803u), true), -1427f, true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> i32 {
    global1 = array<Struct_3, 22>();
    var var_0 = Struct_2(arg_1.a, u_input.a, true);
    var_0 = arg_1;
    return firstTrailingBit(arg_1.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    global0 = vec2<f32>(1000f, -1000f);
    global0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -179f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)))));
    var var_0 = ~_wgslsmith_div_vec3_u32(u_input.a.wxw, ~(~vec3<u32>(0u, u_input.b, u_input.b)));
    let var_1 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, arg_0.a))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, 1441f), vec2<f32>(428f, arg_1))), vec2<f32>(global0.x, var_1.a), vec2<bool>(false, false)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1000f) * vec2<f32>(-894f, arg_1))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(254f - global0.x)) - _wgslsmith_div_f32(arg_1, 1131f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-440f, global0.x)) + -337f)))));
    return arg_1;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_5(~abs(u_input.a.zyx), Struct_1(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(sign(-694f))), _wgslsmith_f_op_f32(-927f + -753f), vec3<i32>(func_3(false, Struct_2(vec3<i32>(1i, 31474i, 20838i), u_input.a, true), vec2<f32>(global0.x, global0.x), global0.x), 1i, -1i)))), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false))), Struct_3(Struct_2(vec3<i32>(~(-1i), 1i, firstLeadingBit(1i)), ~(u_input.a >> (u_input.a % vec4<u32>(32u))), true), -1617f, !(!any(vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1107f, global0.x) * vec4<f32>(global0.x, global0.x, 329f, global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, 1150f, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1000f, global0.x, global0.x))))));
    global1 = array<Struct_3, 22>();
    let var_1 = var_0.d.a;
    var var_2 = vec3<u32>(_wgslsmith_add_u32(10837u, abs(var_0.d.a.b.x)), u_input.b, var_1.b.x);
    var var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2526f))), global0.x), ~abs(firstLeadingBit(vec3<u32>(1u, 38258u, 37583u))), Struct_3(var_1, -1367f, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.a.x, -2923i), -var_1.a.x, reverseBits(0i)) < _wgslsmith_mod_i32(firstLeadingBit(-401i), -18051i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.e.x), 368f, true & !var_0.c.x)) * 679f), countOneBits(select(~max(var_1.b, vec4<u32>(var_0.a.x, 1u, var_0.d.a.b.x, var_0.a.x)), ~vec4<u32>(u_input.b, var_1.b.x, 33571u, u_input.b), !(!vec4<bool>(false, false, false, var_1.c)))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.e.xy, _wgslsmith_f_op_vec2_f32(var_3.a + _wgslsmith_div_vec2_f32(var_0.e.zy, var_3.a)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_3.a - _wgslsmith_f_op_vec2_f32(var_3.a + var_3.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-272f, -227f), var_0.e.zx)))))), vec3<u32>(66312u, 4294967295u, firstLeadingBit(_wgslsmith_add_u32(~var_1.b.x, var_1.b.x))), Struct_3(Struct_2(select(var_1.a, var_1.a | vec3<i32>(-18792i, -12120i, var_0.d.a.a.x), false), ~vec4<u32>(0u, var_3.c.a.b.x, 1u, u_input.a.x), var_3.c.a.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.d, _wgslsmith_f_op_f32(-var_3.d))), any(vec4<bool>(all(vec2<bool>(false, true)), true, !var_0.d.a.c, var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1981f))) * 1000f), u_input.a);
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_mult_vec4_i32(-countOneBits(vec4<i32>(var_0.c.a.a.x, 6850i << (u_input.b % 32u), ~var_0.c.a.a.x, _wgslsmith_sub_i32(var_0.c.a.a.x, var_0.c.a.a.x))), -(select(vec4<i32>(var_0.c.a.a.x, 60518i, var_0.c.a.a.x, var_0.c.a.a.x), reverseBits(vec4<i32>(40881i, 0i, var_0.c.a.a.x, var_0.c.a.a.x)), all(vec4<bool>(var_0.c.c, true, var_0.c.a.c, var_0.c.c))) & ~(-vec4<i32>(-1i, var_0.c.a.a.x, var_0.c.a.a.x, var_0.c.a.a.x))));
    let var_2 = var_0.c.a;
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_0.c.b) + vec2<f32>(_wgslsmith_div_f32(-500f, -817f), _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_mult_vec3_u32(~var_0.b, func_2().e.wxz), func_2().c, var_0.d, abs(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_2.b.x, var_2.b.x, 2590u, 1u)), abs(var_0.b.x), ~u_input.a.x)) | min(vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(25234u, 45084u, u_input.a.x), var_0.e.x, u_input.b), vec4<u32>(4294967295u, var_0.c.a.b.x, var_2.b.x, ~1u)));
    let var_3 = reverseBits(u_input.a.yy | vec2<u32>(0u, 1u));
    return select(_wgslsmith_clamp_i32(var_0.c.a.a.x, firstLeadingBit(-1i), var_1.x), var_0.c.a.a.x, true != all(select(select(vec4<bool>(false, false, var_0.c.a.c, true), vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c), true), vec4<bool>(var_2.c, false, var_0.c.c, var_0.c.c), select(vec4<bool>(var_2.c, var_2.c, false, false), vec4<bool>(var_2.c, false, true, var_2.c), vec4<bool>(var_0.c.a.c, false, var_0.c.a.c, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-269f - global0.x));
    var var_0 = Struct_2(vec3<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(75313i, 0i) >> (0u % 32u), i32(-1i) * -5392i), max(min(func_1(global0.x), min(1i, -21813i)), _wgslsmith_add_i32(func_1(global0.x), ~(-11636i)))), u_input.a, !(~(~u_input.b) > ~firstLeadingBit(u_input.a.x)));
    var var_1 = u_input.a.ywy;
    global1 = array<Struct_3, 22>();
    let var_2 = select(!(~func_2().b.x >= var_0.b.x), var_0.c && any(!select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(true, var_0.c, var_0.c), vec3<bool>(true, false, var_0.c))), !(_wgslsmith_div_f32(-210f, global0.x) > -485f) || any(select(!vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, false), !vec2<bool>(var_0.c, var_0.c))));
    var_0 = Struct_2(vec3<i32>(-1i) * -vec3<i32>(var_0.a.x ^ -19433i, var_0.a.x, var_0.a.x >> (1625u % 32u)), vec4<u32>(var_0.b.x << (_wgslsmith_mod_u32(var_1.x, u_input.a.x) % 32u), _wgslsmith_mult_u32(18387u << (u_input.b % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 0u), ~u_input.a.x)), 1u, firstTrailingBit(u_input.a.x)), false);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-1f));
    var_1 = vec3<u32>(0u, max(~(~var_0.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 58693u, 0u), var_0.b.wxy) | (u_input.a.yzy | var_0.b.xxy), _wgslsmith_add_vec3_u32(var_0.b.yxx, abs(vec3<u32>(0u, 43492u, var_1.x))))), u_input.b);
    var var_4 = select(vec4<bool>(true, ~_wgslsmith_mod_u32(4294967295u, var_0.b.x) > abs(4294967295u << (var_0.b.x % 32u)), any(vec2<bool>(var_0.c | var_0.c, !var_2)), var_2), !select(select(select(vec4<bool>(var_2, var_2, var_0.c, true), vec4<bool>(true, var_2, var_2, true), vec4<bool>(true, var_0.c, false, true)), !vec4<bool>(var_0.c, false, var_2, false), !vec4<bool>(true, var_2, var_2, var_0.c)), select(vec4<bool>(false, false, var_0.c, var_0.c), vec4<bool>(var_2, true, false, true), select(vec4<bool>(true, var_2, var_0.c, var_2), vec4<bool>(var_0.c, var_2, var_0.c, true), false)), !select(vec4<bool>(var_0.c, var_0.c, var_2, false), vec4<bool>(false, var_0.c, false, true), true)), (u_input.a.x != countOneBits(~6729u)) & func_2().c.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(global0.x)), vec4<i32>(func_1(-404f), -1i, i32(-1i) * -var_0.a.x, abs(var_0.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -var_0.a.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.a.x, var_0.a.x), var_0.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(var_0.a.x), _wgslsmith_mod_i32(var_0.a.x, -28514i)), abs(vec2<i32>(2147483647i, var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)), func_2().b.x);
}

