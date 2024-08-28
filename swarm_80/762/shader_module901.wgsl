struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = -22067i;

var<private> global2: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(114495u, 66342u, 0u, 9065u), vec4<u32>(0u, 41326u, 1u, 4294967295u), vec4<u32>(26525u, 4294967295u, 64726u, 39226u), vec4<u32>(1u, 4294967295u, 4294967295u, 22341u), vec4<u32>(3899u, 24115u, 0u, 84602u), vec4<u32>(4294967295u, 25081u, 33435u, 4294967295u), vec4<u32>(38669u, 1u, 53861u, 1u), vec4<u32>(4294967295u, 3135u, 1u, 1u), vec4<u32>(12278u, 14852u, 85286u, 12231u), vec4<u32>(64752u, 41519u, 4294967295u, 1u), vec4<u32>(14897u, 20481u, 72999u, 1u), vec4<u32>(26802u, 0u, 48333u, 4294967295u), vec4<u32>(52871u, 64064u, 4294967295u, 607u), vec4<u32>(0u, 2474u, 0u, 107159u), vec4<u32>(1u, 1u, 16562u, 4294967295u), vec4<u32>(4294967295u, 1u, 5717u, 9080u), vec4<u32>(1u, 4294967295u, 16821u, 19756u), vec4<u32>(4294967295u, 0u, 4294967295u, 7934u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u));

var<private> global3: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(-1090f, Struct_1(-1016f), Struct_1(696f), false, 1u), vec3<u32>(86242u, 28720u, 43638u)), Struct_3(Struct_2(-268f, Struct_1(1056f), Struct_1(323f), false, 6359u), vec3<u32>(0u, 9623u, 1784u)), Struct_3(Struct_2(-224f, Struct_1(-1493f), Struct_1(-582f), true, 42328u), vec3<u32>(53476u, 4294967295u, 22847u)), Struct_3(Struct_2(-261f, Struct_1(1000f), Struct_1(-183f), true, 0u), vec3<u32>(51096u, 1u, 0u)), Struct_3(Struct_2(257f, Struct_1(-1000f), Struct_1(-1482f), false, 37986u), vec3<u32>(0u, 24733u, 4294967295u)), Struct_3(Struct_2(946f, Struct_1(683f), Struct_1(749f), false, 1340u), vec3<u32>(4294967295u, 41335u, 4294967295u)), Struct_3(Struct_2(1349f, Struct_1(-1216f), Struct_1(1207f), false, 2034u), vec3<u32>(0u, 28941u, 4294967295u)), Struct_3(Struct_2(1148f, Struct_1(-430f), Struct_1(-353f), false, 4294967295u), vec3<u32>(0u, 17787u, 1u)), Struct_3(Struct_2(1000f, Struct_1(770f), Struct_1(286f), true, 1u), vec3<u32>(55422u, 1u, 44376u)), Struct_3(Struct_2(1154f, Struct_1(-359f), Struct_1(1329f), true, 31048u), vec3<u32>(1u, 11897u, 4294967295u)), Struct_3(Struct_2(394f, Struct_1(-1835f), Struct_1(601f), true, 0u), vec3<u32>(0u, 0u, 16844u)), Struct_3(Struct_2(-666f, Struct_1(-1422f), Struct_1(790f), true, 0u), vec3<u32>(11567u, 54u, 0u)), Struct_3(Struct_2(-1277f, Struct_1(167f), Struct_1(161f), true, 0u), vec3<u32>(38265u, 0u, 10287u)), Struct_3(Struct_2(-980f, Struct_1(-1091f), Struct_1(1232f), true, 30413u), vec3<u32>(4294967295u, 151500u, 22193u)), Struct_3(Struct_2(-986f, Struct_1(-265f), Struct_1(1515f), true, 9435u), vec3<u32>(4294967295u, 17596u, 4294967295u)), Struct_3(Struct_2(-916f, Struct_1(-486f), Struct_1(-474f), false, 1876u), vec3<u32>(100297u, 4294967295u, 13720u)), Struct_3(Struct_2(-382f, Struct_1(104f), Struct_1(1000f), false, 1u), vec3<u32>(1u, 0u, 4294967295u)), Struct_3(Struct_2(-279f, Struct_1(-1020f), Struct_1(-1234f), true, 11059u), vec3<u32>(60678u, 9401u, 1u)), Struct_3(Struct_2(109f, Struct_1(1051f), Struct_1(-128f), false, 56101u), vec3<u32>(0u, 54341u, 40860u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_4 {
    global0 = reverseBits(~(~(~u_input.b.x))) << ((u_input.b.x & ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, 1u, 0u)), u_input.b.zww << (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))) % 32u);
    global3 = array<Struct_3, 19>();
    var var_0 = Struct_2(790f, Struct_1(1f), Struct_1(_wgslsmith_f_op_f32(select(784f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), !all(vec3<bool>(true, true, true))))), true, _wgslsmith_mod_u32(24882u, _wgslsmith_dot_vec2_u32(u_input.b.zw, ~reverseBits(vec2<u32>(u_input.b.x, u_input.b.x)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(abs(var_0.b.a)), var_0.c, Struct_1(_wgslsmith_f_op_f32(-182f * 383f)), true, var_0.e);
    var_0 = var_1;
    return Struct_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-673f, var_0.b.a) * vec2<f32>(359f, var_0.a)))))));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    let var_0 = abs(-2147483647i);
    global1 = abs(_wgslsmith_sub_i32(~(~u_input.a ^ (var_0 >> (u_input.b.x % 32u))), ~firstLeadingBit(9291i)));
    global3 = array<Struct_3, 19>();
    global1 = i32(-1i) * -1346i;
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-291f, _wgslsmith_div_f32(arg_1.a.x, -179f))) - _wgslsmith_f_op_f32(1142f - arg_1.a.x)), Struct_1(_wgslsmith_f_op_f32(arg_2.a.x - -239f)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2.a.x, -634f)))), true, firstTrailingBit(~select(1u, u_input.b.x, false))), vec3<u32>(_wgslsmith_sub_u32(abs(u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, countOneBits(u_input.b.x))), _wgslsmith_div_u32(62387u, u_input.b.x), ~0u));
    return global3[_wgslsmith_index_u32(var_1.a.e, 19u)];
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3) -> i32 {
    let var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_2.a.c.a)), arg_1.a.x))), func_2(), arg_1);
    return _wgslsmith_clamp_i32(u_input.c, ~(~(-53579i)), ~(~_wgslsmith_clamp_i32(u_input.a ^ -5353i, -2470i, u_input.a)));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec4<f32> {
    var var_0 = firstLeadingBit(abs(abs(arg_3.x)));
    global1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(432i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c, 46361i), arg_3.yzx)), ~(-42729i)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(-arg_3.wwz, arg_3.zzw), firstLeadingBit(select(vec3<i32>(arg_3.x, 1i, -2147483647i), vec3<i32>(-1i, u_input.c, arg_3.x), true))));
    global1 = countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(arg_3, arg_3, vec4<i32>(34924i, -1i, arg_1, u_input.a))), vec4<i32>(~(-33660i), _wgslsmith_mult_i32(arg_3.x, arg_3.x), ~(-2147483647i), arg_1)), ~_wgslsmith_mod_i32(u_input.c, arg_3.x)));
    let var_1 = u_input.b.www;
    var var_2 = Struct_2(arg_0.x, func_3(_wgslsmith_f_op_f32(abs(-238f)), func_2(), func_2()).a.b, func_3(arg_0.x, Struct_4(vec2<f32>(_wgslsmith_div_f32(-827f, arg_0.x), -2306f)), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xz)))).a.b, !select(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)) <= _wgslsmith_f_op_f32(-arg_2.x), any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true))), ~var_1.x);
    return vec4<f32>(_wgslsmith_f_op_f32(-683f - var_2.b.a), arg_0.x, -339f, _wgslsmith_f_op_f32(min(arg_2.x, arg_0.x)));
}

fn func_5(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, reverseBits(u_input.b.x & ~0u)), 19u)];
    var var_1 = var_0.a.d;
    let var_2 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(1202f * _wgslsmith_f_op_f32(sign(var_0.a.b.a)))), Struct_4(arg_0.xz), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), -260f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.yw, arg_0.zw)) + _wgslsmith_f_op_vec2_f32(-arg_0.yz))))).a;
    global2 = array<vec4<u32>, 19>();
    var var_3 = 1022f;
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-479f)) * 587f), func_3(var_2.b.a, func_2(), Struct_4(_wgslsmith_f_op_vec2_f32(arg_0.yw + arg_0.zx))).a.b, Struct_1(var_0.a.c.a), var_0.a.d, 0u), ~abs(firstLeadingBit(var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(select(~1u, 4294967295u, true) ^ 68226u, 19u)];
    var var_1 = true;
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.a, var_0.a.a, -255f, var_0.a.a))))), func_1(true, Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.a, -406f))), global3[_wgslsmith_index_u32(~reverseBits(u_input.b.x), 19u)]), vec2<f32>(429f, 474f), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, reverseBits(u_input.a), -19300i), vec4<i32>(u_input.c, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-57796i, 20155i), vec2<i32>(-2147483647i, u_input.a)), u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(-4821i, 10013i, 3900i, 2147483647i), -vec4<i32>(u_input.a, -20184i, -2147483647i, u_input.c))))));
    global0 = var_2.b.x;
    let var_3 = Struct_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.a * -1533f)), _wgslsmith_f_op_f32(-1391f - 638f)), _wgslsmith_f_op_f32(var_2.a.b.a * _wgslsmith_f_op_f32(var_2.a.b.a + 402f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b.a, var_2.a.a, -904f, var_0.a.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(393f, var_3.a.x, var_0.a.b.a, var_2.a.c.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-945f, -483f, 900f, var_3.a.x) * vec4<f32>(361f, var_3.a.x, var_2.a.a, -439f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1501f, var_0.a.a, 733f, 206f), vec4<f32>(var_3.a.x, -274f, -166f, var_3.a.x), false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.a.x, var_2.a.c.a, var_0.a.a, -923f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.a.x, 603f, 319f, -1142f))))) * vec4<f32>(func_5(vec4<f32>(var_0.a.b.a, var_3.a.x, 365f, 151f)).a.b.a, _wgslsmith_f_op_f32(-1200f - 336f), _wgslsmith_f_op_f32(235f * 468f), _wgslsmith_f_op_f32(sign(var_0.a.b.a)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b.a), func_3(var_2.a.b.a, Struct_4(var_3.a), var_3).a.b.a, _wgslsmith_f_op_f32(func_5(vec4<f32>(-269f, var_0.a.c.a, var_2.a.a, 624f)).a.a + var_0.a.b.a), -1069f)));
}

