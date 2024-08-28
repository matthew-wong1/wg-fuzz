struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_3,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(1u, 1062f, 15338u, 2147483647i), Struct_1(14423u, 2285f, 89805u, i32(-2147483648))), Struct_2(Struct_1(35513u, -1967f, 0u, -1i), Struct_1(0u, 1523f, 4294967295u, i32(-2147483648))), Struct_2(Struct_1(5896u, -584f, 26256u, 11509i), Struct_1(20157u, 143f, 0u, i32(-2147483648))), Struct_2(Struct_1(38564u, 2242f, 25699u, 2147483647i), Struct_1(46704u, -889f, 19183u, 15608i)), Struct_2(Struct_1(15261u, 323f, 24138u, 35480i), Struct_1(62301u, 980f, 46302u, -25434i)), Struct_2(Struct_1(1u, 2393f, 93001u, 26304i), Struct_1(0u, 444f, 18219u, i32(-2147483648))), Struct_2(Struct_1(1u, -1885f, 4294967295u, 0i), Struct_1(15326u, 1516f, 53499u, i32(-2147483648))), Struct_2(Struct_1(0u, -478f, 1u, 7024i), Struct_1(17958u, 950f, 0u, 0i)), Struct_2(Struct_1(1211u, 2088f, 0u, i32(-2147483648)), Struct_1(1u, -1611f, 33018u, -1i)), Struct_2(Struct_1(24942u, -1283f, 0u, i32(-2147483648)), Struct_1(0u, -319f, 0u, 5707i)), Struct_2(Struct_1(4294967295u, 1024f, 4294967295u, -16995i), Struct_1(51903u, 284f, 0u, -18875i)), Struct_2(Struct_1(37121u, -852f, 1920u, -1i), Struct_1(40887u, 932f, 74413u, 32621i)), Struct_2(Struct_1(50170u, -125f, 0u, -1i), Struct_1(47134u, -1000f, 19702u, 2147483647i)), Struct_2(Struct_1(29273u, -1154f, 1u, -22797i), Struct_1(1u, -1609f, 0u, -50488i)), Struct_2(Struct_1(21950u, 1311f, 15920u, -32960i), Struct_1(1u, 1275f, 53222u, i32(-2147483648))), Struct_2(Struct_1(69870u, -1330f, 45206u, 60848i), Struct_1(3822u, 1533f, 0u, 2147483647i)), Struct_2(Struct_1(4294967295u, 583f, 30733u, 0i), Struct_1(2036u, -763f, 4553u, 1i)), Struct_2(Struct_1(18037u, -809f, 0u, -22245i), Struct_1(4294967295u, 211f, 42145u, -10238i)), Struct_2(Struct_1(11366u, 543f, 4294967295u, i32(-2147483648)), Struct_1(1u, -712f, 1u, -1i)), Struct_2(Struct_1(4294967295u, -339f, 1u, 2147483647i), Struct_1(0u, -1654f, 2247u, i32(-2147483648))), Struct_2(Struct_1(42555u, -477f, 1u, i32(-2147483648)), Struct_1(4411u, -424f, 4294967295u, 14981i)), Struct_2(Struct_1(10547u, -1347f, 1u, 12546i), Struct_1(122857u, -1051f, 0u, 0i)), Struct_2(Struct_1(52888u, 1000f, 113595u, 19284i), Struct_1(0u, 989f, 4294967295u, 42745i)));

var<private> global1: array<vec3<f32>, 8>;

var<private> global2: array<Struct_4, 17>;

var<private> global3: array<vec4<u32>, 2>;

var<private> global4: array<vec4<bool>, 24>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    let var_0 = ~1u;
    var var_1 = _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(~3333u, 2u)], _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0, 0u, arg_3.x, ~0u), arg_3 ^ vec4<u32>(_wgslsmith_clamp_u32(arg_3.x, 87513u, var_0), abs(var_0), 4294967295u, ~arg_3.x)));
    let var_2 = -1i;
    global3 = array<vec4<u32>, 2>();
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(673f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(926f + 901f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(688f * 497f), _wgslsmith_f_op_f32(-661f * 2638f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f)) - 1000f)))));
    return -39029i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: u32) -> u32 {
    let var_0 = Struct_4(!(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, false), arg_1)), ~2766u, Struct_3(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1155f - 680f), -1648f))), Struct_2(Struct_1(21605u, _wgslsmith_f_op_f32(-323f + -422f), min(arg_2, 25908u), u_input.c ^ arg_0), Struct_1(~84049u, _wgslsmith_f_op_f32(floor(1876f)), 1u, 21999i)), u_input.a, !global4[_wgslsmith_index_u32(arg_2, 24u)]), arg_0, ~(vec3<u32>(arg_2, ~arg_2, ~arg_2) | abs(vec3<u32>(1u, arg_2, arg_2))));
    global1 = array<vec3<f32>, 8>();
    var var_1 = var_0.c.b.b;
    var var_2 = vec3<f32>(1295f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.c.b.b.b)))), var_0.c.a);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~select(vec3<u32>(arg_2, arg_2, var_0.e.x), vec3<u32>(0u, var_0.e.x, var_1.c) ^ vec3<u32>(arg_2, 0u, 24320u), var_0.c.d.wyx)), var_0.e), 23u)];
    return ~(var_1.c ^ abs(var_1.a)) ^ arg_2;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    global2 = array<Struct_4, 17>();
    var var_0 = ~global3[_wgslsmith_index_u32(~1u, 2u)];
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, -436f)) + _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.x, func_4(func_3(-vec3<i32>(u_input.a.x, u_input.c, u_input.b), !vec2<bool>(arg_0, arg_0), arg_0 == true, reverseBits(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x))), !(!arg_0), 4294967295u)), 23u)], vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.c, u_input.b, 1i)), select(!vec4<bool>(true, arg_1 < arg_1, true, arg_0), global4[_wgslsmith_index_u32(~(~0u), 24u)], !(_wgslsmith_f_op_f32(round(arg_1)) < arg_1)));
    global0 = array<Struct_2, 23>();
    let var_2 = max(u_input.c, var_1.c.x);
    return var_1.b.a;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_2(arg_1, func_2(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, arg_1.d, u_input.a.x, 31474i)), vec4<i32>(28646i, arg_1.d, u_input.a.x, 20061i)) <= -4562i, _wgslsmith_f_op_f32(-arg_1.b)));
    global0 = array<Struct_2, 23>();
    global2 = array<Struct_4, 17>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1290f - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1045f + -158f)))))));
    let var_2 = ~abs(_wgslsmith_mod_u32(5740u, 16851u));
    return func_2(all(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), var_0.b.b).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(func_1(-984f, Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(41875u, 2u)], ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 26559u))), 644f, _wgslsmith_mult_u32(~select(0u, 8488u, false), _wgslsmith_mod_u32(0u, 4294967295u)), ~u_input.b), _wgslsmith_div_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(12580u, 37980u, 19833u), vec3<u32>(21068u, 9731u, 4893u), vec3<u32>(1u, 21642u, 3199u))), vec3<u32>(countOneBits(20785u), ~22860u, _wgslsmith_div_u32(1u >> (0u % 32u), 1u)))), 23u)];
    let var_1 = Struct_2(Struct_1(63569u & ~(~var_0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1174f))), ~(~var_0.b.a | firstLeadingBit(var_0.b.a)), 33510i), Struct_1(max(var_0.a.a, 1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-256f - var_0.a.b))), _wgslsmith_mod_u32(var_0.b.a, _wgslsmith_add_u32(var_0.a.c, ~0u)), -19218i));
    let var_2 = global2[_wgslsmith_index_u32(39896u, 17u)];
    let var_3 = var_2.c;
    var var_4 = Struct_2(var_1.a, func_2(var_3.d.x | var_3.d.x, var_3.a));
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(137f - var_1.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -458f), var_0.a.b, var_3.b.a.b);
    let var_6 = -(i32(-1i) * -_wgslsmith_add_i32(var_2.c.c.x, var_2.c.b.a.d));
    var var_7 = ~var_0.a.c;
    global2 = array<Struct_4, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(-1846f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_5.x)), _wgslsmith_f_op_f32(var_0.a.b + 594f)))));
}

