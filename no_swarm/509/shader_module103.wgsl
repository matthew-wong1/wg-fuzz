struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(Struct_1(vec3<f32>(364f, -2051f, -174f)), -1000f, Struct_3(vec3<i32>(-17509i, 11244i, 27859i)), vec4<bool>(true, true, false, false)), Struct_4(Struct_1(vec3<f32>(-546f, 1000f, -656f)), 491f, Struct_3(vec3<i32>(i32(-2147483648), -1i, 46065i)), vec4<bool>(true, true, true, false)), Struct_4(Struct_1(vec3<f32>(-1234f, -705f, 1707f)), -732f, Struct_3(vec3<i32>(-1i, 32041i, 1072i)), vec4<bool>(false, true, true, false)), Struct_4(Struct_1(vec3<f32>(120f, 1290f, -328f)), 2142f, Struct_3(vec3<i32>(-1i, 1i, -1i)), vec4<bool>(false, false, true, true)), Struct_4(Struct_1(vec3<f32>(-1805f, 1650f, -197f)), 169f, Struct_3(vec3<i32>(0i, 3733i, 0i)), vec4<bool>(true, false, true, false)), Struct_4(Struct_1(vec3<f32>(-540f, -321f, -493f)), -540f, Struct_3(vec3<i32>(-1i, 1i, -2925i)), vec4<bool>(true, false, true, true)), Struct_4(Struct_1(vec3<f32>(-408f, 295f, -1165f)), -2521f, Struct_3(vec3<i32>(-1i, -18471i, 1i)), vec4<bool>(true, true, true, false)), Struct_4(Struct_1(vec3<f32>(382f, 150f, -346f)), 436f, Struct_3(vec3<i32>(-19768i, 28486i, 0i)), vec4<bool>(false, false, false, true)), Struct_4(Struct_1(vec3<f32>(557f, 582f, -706f)), 684f, Struct_3(vec3<i32>(i32(-2147483648), -60515i, -50517i)), vec4<bool>(true, false, true, false)), Struct_4(Struct_1(vec3<f32>(-553f, -1271f, -1000f)), 308f, Struct_3(vec3<i32>(0i, 48671i, -5412i)), vec4<bool>(true, false, true, true)), Struct_4(Struct_1(vec3<f32>(-294f, 1978f, -954f)), -326f, Struct_3(vec3<i32>(-1i, -1i, 35916i)), vec4<bool>(false, true, false, false)), Struct_4(Struct_1(vec3<f32>(818f, 472f, 159f)), 932f, Struct_3(vec3<i32>(23256i, -12802i, 5231i)), vec4<bool>(true, false, true, false)), Struct_4(Struct_1(vec3<f32>(603f, -996f, -582f)), -376f, Struct_3(vec3<i32>(24261i, 51849i, 0i)), vec4<bool>(true, false, false, true)), Struct_4(Struct_1(vec3<f32>(-567f, -127f, 596f)), 172f, Struct_3(vec3<i32>(2147483647i, 12410i, 8978i)), vec4<bool>(true, false, true, true)), Struct_4(Struct_1(vec3<f32>(-1963f, -1000f, 347f)), -1007f, Struct_3(vec3<i32>(22427i, i32(-2147483648), -17517i)), vec4<bool>(false, true, true, false)), Struct_4(Struct_1(vec3<f32>(-435f, -466f, -459f)), 1173f, Struct_3(vec3<i32>(-1i, 2147483647i, i32(-2147483648))), vec4<bool>(false, false, false, false)));

var<private> global1: bool = false;

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec2<u32>(10641u, 4294967295u)), Struct_2(vec2<u32>(4294967295u, 29113u)), Struct_2(vec2<u32>(15818u, 0u)), Struct_2(vec2<u32>(0u, 22856u)), Struct_2(vec2<u32>(107196u, 75749u)), Struct_2(vec2<u32>(4294967295u, 12829u)), Struct_2(vec2<u32>(20707u, 21793u)), Struct_2(vec2<u32>(7750u, 4294967295u)), Struct_2(vec2<u32>(1u, 4294967295u)), Struct_2(vec2<u32>(0u, 0u)), Struct_2(vec2<u32>(4294967295u, 10658u)), Struct_2(vec2<u32>(28697u, 23951u)), Struct_2(vec2<u32>(35437u, 40044u)), Struct_2(vec2<u32>(1u, 0u)), Struct_2(vec2<u32>(0u, 10255u)), Struct_2(vec2<u32>(55510u, 1u)), Struct_2(vec2<u32>(0u, 3525u)), Struct_2(vec2<u32>(76229u, 65862u)), Struct_2(vec2<u32>(1u, 46449u)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<f32>) -> u32 {
    global2 = array<Struct_2, 19>();
    global1 = -516f >= arg_1.x;
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2085f, arg_1.x, arg_1.x))))));
    var var_1 = ~u_input.e;
    let var_2 = global0[_wgslsmith_index_u32(~u_input.e >> (u_input.e % 32u), 16u)];
    return 4294967295u;
}

fn func_2() -> Struct_4 {
    global1 = true;
    global1 = false;
    global0 = array<Struct_4, 16>();
    var var_0 = -vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -30046i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.a.x)), vec3<i32>(-1i, -1i, u_input.a.x) ^ vec3<i32>(u_input.c.x, 1i, u_input.d.x)) & 0i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, 1i), -1i), countOneBits(83584i));
    let var_1 = Struct_5(vec4<u32>(u_input.e, func_3(Struct_5(u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-372f, -906f, -125f))) * vec3<f32>(-656f, 684f, 555f))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.e, u_input.b.x, u_input.e)), ~vec4<u32>(4294967295u, u_input.e, u_input.e, 4294967295u)), vec4<u32>(1u, 21328u << (u_input.e % 32u), _wgslsmith_dot_vec3_u32(u_input.b.zzy, u_input.b.xwz), abs(1u))), countOneBits(u_input.b.x)));
    return Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(150f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-717f + -615f)), 1000f))), Struct_3(~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.d.x, -83165i, 0i)), -vec3<i32>(u_input.c.x, -19715i, var_0.x))), !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, false, false, true), false)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    return func_2().a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_3 {
    global2 = array<Struct_2, 19>();
    global1 = any(vec3<bool>(false, true, all(vec4<bool>(true, true, true, true))));
    global0 = array<Struct_4, 16>();
    var var_0 = func_1().a.x;
    let var_1 = ~_wgslsmith_mult_i32(countOneBits(~(arg_1.x ^ arg_1.x)), arg_1.x);
    return func_2().c;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_3) -> bool {
    global2 = array<Struct_2, 19>();
    var var_0 = !(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, false, false, all(vec3<bool>(true, false, false))), true));
    global0 = array<Struct_4, 16>();
    global1 = (all(vec2<bool>(2147483647i >= arg_2.a.x, all(vec3<bool>(false, false, false)))) && (4294967295u >= ~max(u_input.e, 49877u))) != true;
    return !var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<i32>(-9875i, u_input.a.x), ~(~abs(vec4<i32>(0i, -1i, -9018i, u_input.a.x))), func_4(func_1(), ((vec4<i32>(u_input.d.x, u_input.a.x, -2147483647i, u_input.d.x) ^ vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.d.x)) ^ ~vec4<i32>(u_input.d.x, u_input.d.x, -7860i, u_input.c.x)) & _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 1i, -3498i), ~vec4<i32>(13474i, u_input.a.x, u_input.c.x, u_input.c.x)), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, 4294967295u, 45933u), vec3<u32>(u_input.b.x, u_input.e, u_input.e) | vec3<u32>(20109u, u_input.e, 33145u)))));
    var var_1 = u_input.e == 29620u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(1237f, -754f, 1426f), vec3<f32>(-770f, -134f, 425f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2263f, -1257f, 961f), vec3<f32>(-349f, 904f, -1126f))))));
    let var_3 = select(u_input.a.x, -_wgslsmith_add_i32(u_input.c.x, 4581i), select(true, true, func_5(~u_input.c, vec4<i32>(u_input.a.x, u_input.a.x, firstTrailingBit(u_input.d.x), u_input.a.x), func_2().c)));
    let var_4 = 0u;
    let var_5 = global2[_wgslsmith_index_u32(var_4 ^ _wgslsmith_add_u32(4294967295u, u_input.e), 19u)];
    var var_6 = Struct_3(func_4(var_2, vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d.x, u_input.d.x, var_3, 0i), vec4<i32>(var_3, 23655i, u_input.c.x, 0i)), u_input.c.x, -1i, var_3), reverseBits(vec3<u32>(var_5.a.x, ~4294967295u, ~var_5.a.x))).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(u_input.b.zyy, u_input.b.xzw << (firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 44429u, 4294967295u), vec3<u32>(var_5.a.x, var_4, 1u))) % vec3<u32>(32u))), vec2<u32>(6519u, u_input.e), _wgslsmith_mult_vec2_u32(u_input.b.yx, var_5.a), vec3<u32>(~(~24004u) | min(var_5.a.x, ~var_4), var_5.a.x, max(_wgslsmith_mult_u32(6646u, var_5.a.x), 27756u)));
}

