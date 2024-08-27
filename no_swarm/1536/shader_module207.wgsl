struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(0i, -11944i), vec2<i32>(0i, 2147483647i), vec2<i32>(71634i, 48722i), vec2<i32>(0i, -27507i), vec2<i32>(-68919i, 1i), vec2<i32>(-16088i, 8770i), vec2<i32>(5925i, 29404i), vec2<i32>(-64749i, 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-7307i, 1655i), vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(-36002i, 0i), vec2<i32>(-1i, -18448i), vec2<i32>(-52746i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-12569i, 30282i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2138i, 22728i), vec2<i32>(12451i, -1i), vec2<i32>(-81405i, -21949i), vec2<i32>(-4673i, 0i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 36792i));

var<private> global1: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(-30194i, 2147483647i, 11468i, 46935i), vec4<i32>(-24213i, 1i, 0i, 7757i), vec4<i32>(20204i, 0i, -9348i, -53209i), vec4<i32>(30061i, 7576i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, -1i, 13889i, 0i), vec4<i32>(26386i, -78133i, 34345i, 0i), vec4<i32>(1i, -14266i, i32(-2147483648), -30606i), vec4<i32>(i32(-2147483648), 1i, 0i, 2147483647i), vec4<i32>(23075i, 22535i, 2147483647i, i32(-2147483648)), vec4<i32>(29479i, i32(-2147483648), 7934i, 2147483647i), vec4<i32>(4241i, -27636i, -30392i, 0i), vec4<i32>(3038i, i32(-2147483648), 5323i, -1i), vec4<i32>(i32(-2147483648), 7960i, 53654i, -6038i), vec4<i32>(-47060i, -1i, -48246i, 1i), vec4<i32>(-65891i, -1i, 1i, 21317i), vec4<i32>(42351i, 1i, -14633i, 2147483647i), vec4<i32>(2147483647i, -8908i, -21816i, 38812i), vec4<i32>(2147483647i, 62511i, 0i, 12174i), vec4<i32>(-775i, 1i, -1i, 46021i), vec4<i32>(8406i, 18681i, -39458i, 43536i), vec4<i32>(17375i, 2147483647i, -7128i, -11289i), vec4<i32>(1i, 51765i, -1i, 2147483647i), vec4<i32>(63991i, i32(-2147483648), 1i, 4352i));

var<private> global2: Struct_3 = Struct_3(Struct_2(vec3<f32>(1244f, -1806f, 1029f), 73486u, 1155f, true), Struct_2(vec3<f32>(1000f, -1058f, -1222f), 4294967295u, -586f, true), vec2<f32>(-1651f, -162f), vec3<bool>(false, false, false));

var<private> global3: array<i32, 13> = array<i32, 13>(72266i, 2147483647i, 47618i, -1i, 55237i, 1i, -24706i, i32(-2147483648), 0i, i32(-2147483648), -1i, -1i, -18301i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global0 = array<vec2<i32>, 24>();
    global3 = array<i32, 13>();
    global3 = array<i32, 13>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.c, -1120f, global2.a.a.x, -363f))) * vec4<f32>(global2.b.c, -964f, _wgslsmith_f_op_f32(278f * arg_0.c.x), 100f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c, 1000f, global2.a.a.x, 570f) + vec4<f32>(1182f, arg_0.c.x, global2.a.a.x, 172f)), vec4<f32>(495f, -1000f, arg_0.c.x, global2.c.x))) + vec4<f32>(_wgslsmith_div_f32(global2.b.c, arg_0.a.c), _wgslsmith_f_op_f32(-global2.c.x), arg_0.a.a.x, _wgslsmith_div_f32(arg_0.c.x, arg_0.c.x)))));
    let var_1 = _wgslsmith_div_f32(-1901f, _wgslsmith_f_op_f32(global2.a.c + -549f));
    return arg_0.b;
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -global1[_wgslsmith_index_u32(19180u, 23u)], _wgslsmith_mod_vec4_i32(vec4<i32>(-global3[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a, abs(-1i), ~(-1i)), min(countOneBits(vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(global2.b.b, 13u)], global3[_wgslsmith_index_u32(1u, 13u)], -43140i)), vec4<i32>(1i, global3[_wgslsmith_index_u32(global2.b.b, 13u)], global3[_wgslsmith_index_u32(global2.b.b, 13u)], -2147483647i))) >> ((_wgslsmith_mod_vec4_u32(select(vec4<u32>(48758u, 4294967295u, global2.b.b, global2.b.b), vec4<u32>(1u, 0u, 90914u, 1u), vec4<bool>(global2.d.x, false, global2.b.d, global2.a.d)), vec4<u32>(global2.b.b, 87337u, global2.a.b, global2.b.b)) << (~_wgslsmith_add_vec4_u32(vec4<u32>(global2.b.b, 25161u, 0u, global2.b.b), vec4<u32>(global2.b.b, 4294967295u, 4294967295u, global2.a.b)) % vec4<u32>(32u))) % vec4<u32>(32u)), min(select(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), vec4<i32>(u_input.a, -15160i, -58231i, -7778i) | vec4<i32>(-2147483647i, -39224i, global3[_wgslsmith_index_u32(global2.b.b, 13u)], 0i)), vec4<i32>(2042i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -4574i, global3[_wgslsmith_index_u32(1u, 13u)]), global1[_wgslsmith_index_u32(2363u, 23u)]), _wgslsmith_sub_i32(5299i, 23930i), firstLeadingBit(u_input.a)), all(vec2<bool>(false, true))), vec4<i32>(-(u_input.a << (43845u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, global3[_wgslsmith_index_u32(global2.b.b, 13u)]), -2147483647i, u_input.a), _wgslsmith_sub_i32(0i, u_input.a), -1i)));
    global1 = array<vec4<i32>, 23>();
    global1 = array<vec4<i32>, 23>();
    global3 = array<i32, 13>();
    return abs(vec3<i32>(u_input.a, ~countOneBits(global3[_wgslsmith_index_u32(4294967295u, 13u)]) | firstLeadingBit(~var_1.x), _wgslsmith_mult_i32(1i, 1i)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = abs(~vec3<i32>(~u_input.a, 46074i, abs(-28152i))) | func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.b.c, arg_1.a.x, -1280f, 734f))))));
    let var_1 = false;
    global0 = array<vec2<i32>, 24>();
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(782f, _wgslsmith_f_op_f32(ceil(arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.c - -355f)), func_1(Struct_3(global2.b, Struct_2(global2.a.a, global2.a.b, global2.a.c, arg_1.d), arg_1.a.xy, global2.d)).a.x)))));
    var var_3 = var_0.zy;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(400f, global2.a.a.x, 908f, 1000f) - vec4<f32>(global2.b.a.x, arg_1.c, -954f, var_2.x))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, var_2.x, arg_1.c, -454f) - vec4<f32>(var_2.x, var_2.x, 1688f, var_2.x))))))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = ~(vec2<u32>(~1u, ~4294967295u) ^ _wgslsmith_mult_vec2_u32(reverseBits(~vec2<u32>(arg_1, 33233u)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, global2.b.b)) ^ ~vec2<u32>(global2.b.b, arg_0.a.b)));
    let var_1 = _wgslsmith_f_op_f32(sign(605f));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -539f), var_1);
    global3 = array<i32, 13>();
    var var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~global3[_wgslsmith_index_u32(arg_1, 13u)], 2147483647i), global3[_wgslsmith_index_u32(min(~31835u, 4294967295u), 13u)] << ((_wgslsmith_sub_u32(var_0.x, 1u) << (~78765u % 32u)) % 32u), -1i), vec3<i32>(_wgslsmith_add_i32(12293i, 21375i), u_input.a, -(~u_input.a)));
    return func_1(Struct_3(func_1(Struct_3(arg_0.b, func_1(Struct_3(arg_0.a, Struct_2(arg_2.a.yyy, 41967u, var_2, global2.d.x), vec2<f32>(arg_0.c.x, 608f), vec3<bool>(global2.d.x, global2.d.x, false))), global2.c, select(vec3<bool>(global2.d.x, true, arg_0.b.d), arg_0.d, global2.d))), func_1(Struct_3(func_1(arg_0), func_1(Struct_3(arg_0.a, global2.a, vec2<f32>(-2469f, global2.a.a.x), global2.d)), _wgslsmith_f_op_vec2_f32(global2.a.a.zx - vec2<f32>(1147f, global2.b.a.x)), select(arg_0.d, global2.d, arg_0.b.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.a.ww, vec2<f32>(arg_0.b.c, var_1)) * func_2(arg_0.b.b, global2.b).a.zw) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-255f, arg_3)))), global2.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(Struct_3(func_1(Struct_3(global2.b, global2.b, vec2<f32>(global2.b.a.x, global2.a.c), vec3<bool>(global2.d.x, false, true))), Struct_2(global2.a.a, global2.b.b, _wgslsmith_f_op_f32(step(-1268f, 1961f)), global3[_wgslsmith_index_u32(81603u, 13u)] >= 27923i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global2.c))), vec3<bool>(!global2.a.d, true, false)), global2.b.b, func_2(~abs(global2.a.b), global2.a), global2.b.c), global2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-689f, _wgslsmith_f_op_f32(select(global2.a.c, _wgslsmith_f_op_f32(global2.a.c + global2.c.x), false)))), !global2.d);
    var var_1 = var_0.b.d | all(!(!(!var_0.d)));
    var var_2 = var_0;
    global0 = array<vec2<i32>, 24>();
    let var_3 = var_2.a.b;
    var var_4 = func_2(var_2.b.b, global2.b);
    var_1 = false;
    let var_5 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(min(var_0.a.b, ~var_2.b.b), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(global2.b.b, 4294967295u)) >> (var_5.b % 32u), ~(~(var_2.b.b ^ var_2.a.b))), vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(global3[_wgslsmith_index_u32(var_0.a.b, 13u)]), -u_input.a), func_3(Struct_1(vec4<f32>(-552f, 155f, var_2.a.a.x, var_4.a.x))).x, abs(global3[_wgslsmith_index_u32(4294967295u & global2.a.b, 13u)])) & vec3<i32>(firstLeadingBit(u_input.a) ^ (global3[_wgslsmith_index_u32(global2.a.b, 13u)] & global3[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_add_i32(u_input.a, u_input.a ^ global3[_wgslsmith_index_u32(var_2.a.b, 13u)]), -2147483647i << (min(var_0.b.b, 17820u) % 32u)), max(_wgslsmith_mod_i32(2147483647i, -2147483647i), ~select(-3549i, -6072i, var_2.b.d) | -23118i), firstTrailingBit(~47240u));
}

