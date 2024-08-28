struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(-27193i, 37990i, 49092i), vec3<i32>(0i, 14102i, -2841i), vec3<i32>(0i, 2572i, 2147483647i), vec3<i32>(-40639i, -22449i, -6969i), vec3<i32>(0i, 1i, 1i), vec3<i32>(0i, -24238i, 2147483647i), vec3<i32>(12423i, 0i, -9707i), vec3<i32>(-11259i, 28753i, 1i), vec3<i32>(-39526i, 5422i, -6973i), vec3<i32>(-21982i, 36582i, -29904i), vec3<i32>(0i, -1i, 5878i), vec3<i32>(0i, -1i, 1i), vec3<i32>(5486i, -84343i, 24441i), vec3<i32>(1i, i32(-2147483648), 58993i), vec3<i32>(-1i, -19607i, -11797i), vec3<i32>(-5059i, -42644i, -7475i), vec3<i32>(2147483647i, 5988i, 2147483647i), vec3<i32>(1i, 59471i, i32(-2147483648)), vec3<i32>(21613i, 1i, i32(-2147483648)), vec3<i32>(-1i, -54462i, i32(-2147483648)), vec3<i32>(33510i, -1i, 0i));

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: Struct_4 = Struct_4(2147483647i, Struct_2(Struct_1(-470f), vec4<f32>(-579f, -488f, -768f, -519f), vec3<bool>(false, true, false)), vec2<u32>(0u, 84828u), vec4<i32>(1i, 1i, 29676i, -11505i), 1i);

var<private> global3: bool;

var<private> global4: f32 = 1641f;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_4) -> vec3<i32> {
    global1 = !arg_0.b.c;
    let var_0 = -983f;
    var var_1 = !(!(!vec2<bool>(arg_0.d.x >= 1i, var_0 <= arg_0.b.b.x)));
    var var_2 = i32(-1i) * -(~(~0i));
    global3 = arg_0.b.c.x | (global2.e < _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global2.d.wz, global2.d.xy) << (~65329u % 32u), arg_0.d.x << (global2.c.x % 32u)));
    return vec3<i32>(u_input.c, _wgslsmith_add_i32(_wgslsmith_div_i32(reverseBits(-2147483647i | global2.a), max(global2.d.x, global2.e ^ global2.d.x)), ~(~(-arg_0.d.x))), u_input.c ^ ~global2.d.x);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<i32>, arg_3: f32) -> Struct_4 {
    let var_0 = reverseBits(-43979i);
    global4 = arg_3;
    var var_1 = global2.b.c.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(global2.b.b, global2.b.b));
    var var_3 = vec4<i32>(-1i) * -global2.d;
    return Struct_4(1i | -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 11038i, var_0, 7397i), global2.d), Struct_2(Struct_1(333f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.b.x, 878f, 110f, var_2.x)) + global2.b.b), vec4<f32>(_wgslsmith_f_op_f32(818f + 1717f), _wgslsmith_f_op_f32(trunc(-1480f)), 1097f, _wgslsmith_f_op_f32(-arg_3))), select(global2.b.c, select(select(vec3<bool>(false, global1.x, global2.b.c.x), vec3<bool>(true, global1.x, false), true), !vec3<bool>(false, false, global2.b.c.x), vec3<bool>(global2.b.c.x, false, global1.x)), any(global2.b.c))), countOneBits(firstLeadingBit(vec2<u32>(global2.c.x, 27532u))), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, var_3.x, global2.a, 21507i), firstTrailingBit(global2.d)) ^ global2.d), firstLeadingBit(-52536i));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_clamp_u32(~14034u, firstLeadingBit(4294967295u), (~select(arg_0.c.x, 36695u, false) | 4294967295u) ^ firstLeadingBit(31777u));
    let var_2 = vec4<u32>(arg_0.c.x, u_input.d, ~(~var_1), abs(69457u));
    var var_3 = !arg_1.c;
    global1 = arg_2.b.c;
    return global2.b;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2) -> bool {
    var var_0 = func_3(countOneBits(7457u), global2.c.x, _wgslsmith_mult_vec3_i32(countOneBits(~(-global0[_wgslsmith_index_u32(49309u, 21u)])), ~_wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(global2.c.x, 21u)] ^ global2.d.xxy, -global2.d.yyw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global2.b.a.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x) + 600f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -421f))));
    var var_1 = select(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.d, 13032u, 68265u, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 33788u, global2.c.x, 56883u), vec4<u32>(var_0.c.x, global2.c.x, u_input.a.x, 0u)) >> (vec4<u32>(4294967295u, 45105u, var_0.c.x, var_0.c.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(0u, u_input.d, global2.c.x, 4294967295u)) >> (vec4<u32>(59931u, 14329u, 67870u, u_input.d) % vec4<u32>(32u))), ~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.c.x, u_input.d, global2.c.x, u_input.d), vec4<u32>(24794u, 50619u, 0u, var_0.c.x))), arg_1.c.x) >> ((vec4<u32>(_wgslsmith_add_u32(12398u, _wgslsmith_mult_u32(global2.c.x, u_input.a.x)), u_input.a.x, 12590u, ~global2.c.x & 4294967295u) ^ min(firstLeadingBit(~vec4<u32>(global2.c.x, var_0.c.x, 0u, 29709u)), ~(vec4<u32>(u_input.d, var_0.c.x, u_input.d, global2.c.x) | vec4<u32>(865u, global2.c.x, var_0.c.x, u_input.a.x)))) % vec4<u32>(32u));
    let var_2 = global2.b;
    let var_3 = func_4(func_3(global2.c.x, (min(0u, var_0.c.x) & 0u) ^ u_input.d, var_0.d.xxx, 411f), global2.b, Struct_4(-_wgslsmith_mult_i32(17027i, _wgslsmith_add_i32(47846i, var_0.e)), Struct_2(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(38140u, 94937u, global2.c.x, 1u), vec4<u32>(20534u, var_0.c.x, global2.c.x, var_1.x)), ~global2.c.x, -vec3<i32>(var_0.e, global2.d.x, var_0.d.x), _wgslsmith_f_op_f32(-111f * -540f)).b.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(762f, -1640f, var_2.a.a, var_2.b.x))), vec3<bool>(true, u_input.b <= 7468i, func_4(Struct_4(arg_0.x, Struct_2(Struct_1(var_2.b.x), arg_1.b, arg_1.c), global2.c, vec4<i32>(global2.d.x, 21566i, u_input.c, -30839i), 2147483647i), global2.b, Struct_4(1i, global2.b, var_1.xy, global2.d, 24825i)).c.x)), vec2<u32>(countOneBits(firstTrailingBit(var_0.c.x)), ~(~var_0.c.x)), _wgslsmith_div_vec4_i32(global2.d, vec4<i32>(func_3(38201u, 33121u, global0[_wgslsmith_index_u32(4294967295u, 21u)], arg_1.a.a).e, func_2(Struct_4(global2.a, global2.b, vec2<u32>(4294967295u, u_input.d), vec4<i32>(arg_0.x, 18585i, u_input.b, -55233i), arg_0.x)).x, _wgslsmith_add_i32(8492i, -60962i), var_0.a)), 2147483647i));
    var var_4 = func_3(_wgslsmith_sub_u32(~firstLeadingBit(19791u), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.c.x, firstTrailingBit(u_input.a.x), 36497u ^ global2.c.x, _wgslsmith_mult_u32(var_1.x, 48778u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 47471u, 0u, 75876u) ^ vec4<u32>(73858u, var_0.c.x, 27828u, var_1.x), select(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 52544u), vec4<u32>(4294967295u, 50821u, var_1.x, var_0.c.x), vec4<bool>(true, var_3.c.x, global1.x, false))))), ~u_input.d, var_0.d.yxz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a))).b;
    return var_2.c.x | (u_input.b > -1i);
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    global3 = func_5(vec2<i32>(_wgslsmith_clamp_i32(firstLeadingBit(-u_input.c), global2.a, ~0i), _wgslsmith_sub_i32(-55504i, firstTrailingBit(u_input.c))), func_4(func_3(global2.c.x, min(55790u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, 1u, 15752u, u_input.d), vec4<u32>(global2.c.x, global2.c.x, u_input.d, 0u))), func_2(Struct_4(-59998i, global2.b, vec2<u32>(7509u, 0u), global2.d, u_input.c)) | -vec3<i32>(global2.d.x, -16687i, 2147483647i), 384f), func_3(~(~global2.c.x), max(global2.c.x, global2.c.x) << (u_input.a.x % 32u), abs(reverseBits(vec3<i32>(global2.e, u_input.b, global2.a))), _wgslsmith_f_op_f32(max(2078f, 1000f))).b, func_3(1u, ~(~4294967295u), -vec3<i32>(35937i, 15080i, global2.a) | select(vec3<i32>(2147483647i, -30003i, u_input.b), vec3<i32>(global2.a, 2147483647i, -56320i), global2.b.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.a.a * -838f) - _wgslsmith_f_op_f32(228f * global2.b.b.x)))));
    global4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global2.b.b.x, global2.b.a.a))));
    global1 = vec3<bool>(!func_3(~(~45386u), min(~global2.c.x, _wgslsmith_div_u32(u_input.d, 75350u)), vec3<i32>(-2147483647i, ~u_input.b, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - global2.b.a.a))).b.c.x, !global1.x, true);
    global0 = array<vec3<i32>, 21>();
    global4 = _wgslsmith_f_op_f32(trunc(arg_0.x));
    return Struct_3(reverseBits(abs(_wgslsmith_div_vec4_i32(~global2.d, global2.d))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1282f - global2.b.b.x) + -1390f) - -417f)), global2.d.zyy, Struct_2(global2.b.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-614f - global2.b.b.x), _wgslsmith_f_op_f32(-global2.b.b.x), _wgslsmith_f_op_f32(global2.b.a.a * -806f), global2.b.b.x) + _wgslsmith_f_op_vec4_f32(floor(arg_0))), !global2.b.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.b.a.a, global2.b.a.a, -573f, global2.b.a.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(global2.b.b)), _wgslsmith_f_op_vec4_f32(-global2.b.b), true)))));
    let var_1 = func_1(vec4<f32>(global2.b.a.a, 924f, var_0.b.a, func_1(_wgslsmith_f_op_vec4_f32(global2.b.b + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.d.a.a, -556f, -242f, 1070f), vec4<f32>(582f, global2.b.b.x, 2034f, var_0.e.a))))).e.a)).d.c.xz;
    let var_2 = func_3(4294967295u, abs(1u), vec3<i32>(-1i) * -vec3<i32>(2147483647i, max(2147483647i, 2147483647i), ~u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.a))))).d.x;
    global3 = all(!(!select(vec4<bool>(var_1.x, global1.x, false, true), select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(var_1.x, var_0.d.c.x, global1.x, global2.b.c.x), global1.x), vec4<bool>(true, var_0.d.c.x, global2.b.c.x, var_0.d.c.x))));
    let var_3 = Struct_1(global2.b.a.a);
    var var_4 = var_0.d;
    var var_5 = _wgslsmith_div_vec3_i32(~vec3<i32>(reverseBits(_wgslsmith_mult_i32(877i, 46370i)), ~select(-1i, global2.a, global1.x), ~_wgslsmith_mult_i32(33868i, 13442i)), _wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(global2.d.wzw, vec3<i32>(-66727i, var_0.a.x, global2.e)), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 21u)]), func_1(var_0.d.b).c & (global0[_wgslsmith_index_u32(firstTrailingBit(1u), 21u)] & global0[_wgslsmith_index_u32(u_input.d, 21u)])));
    let x = u_input.a;
    s_output = StorageBuffer(41187u, vec4<i32>(~_wgslsmith_sub_i32(-27911i, ~16657i), _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(global2.a), ~var_5.x), func_1(func_3(u_input.d, global2.c.x, vec3<i32>(var_0.c.x, var_5.x, global2.d.x), -126f).b.b).c.yx), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(3243i, var_5.x)), -(~var_5.zz)), var_0.c.x));
}

