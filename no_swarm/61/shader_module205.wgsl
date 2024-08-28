struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec3<u32>(6772u, 83275u, 1u), vec4<i32>(-1i, i32(-2147483648), 0i, -32963i), vec4<u32>(24199u, 0u, 37862u, 1u));

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(-405f, Struct_1(vec3<bool>(false, true, false), vec3<u32>(4294967295u, 0u, 0u), vec4<i32>(i32(-2147483648), -50837i, 0i, 0i), vec4<u32>(4651u, 1u, 9000u, 1u))), Struct_2(403f, Struct_1(vec3<bool>(false, true, true), vec3<u32>(20179u, 59890u, 4294967295u), vec4<i32>(0i, 2147483647i, -19943i, 45182i), vec4<u32>(16071u, 0u, 78240u, 4294967295u))), Struct_2(-1051f, Struct_1(vec3<bool>(true, false, false), vec3<u32>(0u, 4362u, 63127u), vec4<i32>(1574i, 0i, i32(-2147483648), 0i), vec4<u32>(75653u, 8895u, 11794u, 1u))), Struct_2(461f, Struct_1(vec3<bool>(false, false, true), vec3<u32>(28479u, 4294967295u, 26822u), vec4<i32>(40803i, 2147483647i, i32(-2147483648), 0i), vec4<u32>(0u, 10518u, 0u, 64077u))), Struct_2(-887f, Struct_1(vec3<bool>(false, false, false), vec3<u32>(1u, 45547u, 98022u), vec4<i32>(-45482i, i32(-2147483648), 2147483647i, -28560i), vec4<u32>(1u, 0u, 0u, 0u))), Struct_2(253f, Struct_1(vec3<bool>(true, false, false), vec3<u32>(1u, 63190u, 1u), vec4<i32>(1i, 2147483647i, 2080i, -36350i), vec4<u32>(1u, 0u, 1u, 53057u))), Struct_2(-406f, Struct_1(vec3<bool>(true, false, true), vec3<u32>(4294967295u, 72485u, 4294967295u), vec4<i32>(-26734i, -1i, 2147483647i, i32(-2147483648)), vec4<u32>(4867u, 29811u, 1u, 69708u))), Struct_2(-399f, Struct_1(vec3<bool>(false, false, false), vec3<u32>(1u, 27387u, 1427u), vec4<i32>(i32(-2147483648), -23603i, -30443i, -1i), vec4<u32>(14107u, 4294967295u, 1u, 569u))), Struct_2(-149f, Struct_1(vec3<bool>(false, false, true), vec3<u32>(51012u, 61432u, 38500u), vec4<i32>(-26491i, 5281i, 68391i, i32(-2147483648)), vec4<u32>(33563u, 25961u, 0u, 1734u))), Struct_2(-958f, Struct_1(vec3<bool>(true, false, false), vec3<u32>(1495u, 1u, 1u), vec4<i32>(-2560i, 1i, i32(-2147483648), 0i), vec4<u32>(42330u, 1u, 35212u, 2229u))), Struct_2(-1000f, Struct_1(vec3<bool>(true, false, true), vec3<u32>(79937u, 1u, 14331u), vec4<i32>(-29499i, 0i, 6338i, -28866i), vec4<u32>(27125u, 67319u, 20924u, 1u))), Struct_2(742f, Struct_1(vec3<bool>(true, true, false), vec3<u32>(26990u, 24690u, 1u), vec4<i32>(0i, 2147483647i, -49709i, -8525i), vec4<u32>(4294967295u, 7443u, 76487u, 43481u))), Struct_2(1568f, Struct_1(vec3<bool>(false, false, false), vec3<u32>(1u, 4294967295u, 22305u), vec4<i32>(1i, -25990i, -54749i, 0i), vec4<u32>(70802u, 52745u, 31257u, 101571u))), Struct_2(1000f, Struct_1(vec3<bool>(false, false, false), vec3<u32>(4294967295u, 56138u, 0u), vec4<i32>(1i, -9816i, 1i, -1i), vec4<u32>(231u, 13944u, 7826u, 23753u))), Struct_2(1257f, Struct_1(vec3<bool>(false, false, true), vec3<u32>(5772u, 4294967295u, 36983u), vec4<i32>(1i, -5888i, 49210i, -7074i), vec4<u32>(14827u, 1u, 4294967295u, 0u))), Struct_2(-805f, Struct_1(vec3<bool>(false, false, false), vec3<u32>(2676u, 0u, 71009u), vec4<i32>(14259i, 1i, 6726i, 1i), vec4<u32>(1u, 32698u, 76856u, 39079u))), Struct_2(-1000f, Struct_1(vec3<bool>(true, true, false), vec3<u32>(28413u, 20096u, 5292u), vec4<i32>(0i, i32(-2147483648), -3310i, -9329i), vec4<u32>(4294967295u, 4585u, 4294967295u, 4294967295u))), Struct_2(-2760f, Struct_1(vec3<bool>(true, false, false), vec3<u32>(8696u, 21627u, 1u), vec4<i32>(-17986i, -17555i, -7296i, 0i), vec4<u32>(10809u, 0u, 33028u, 1u))), Struct_2(1068f, Struct_1(vec3<bool>(false, false, false), vec3<u32>(1u, 39042u, 57933u), vec4<i32>(2147483647i, -28250i, -31634i, 0i), vec4<u32>(47538u, 22554u, 1u, 1u))), Struct_2(-263f, Struct_1(vec3<bool>(true, true, false), vec3<u32>(4294967295u, 4294967295u, 1u), vec4<i32>(2147483647i, 1i, 21671i, -33225i), vec4<u32>(1u, 14160u, 4294967295u, 55399u))), Struct_2(1122f, Struct_1(vec3<bool>(false, true, false), vec3<u32>(61193u, 99464u, 4294967295u), vec4<i32>(6237i, -94933i, i32(-2147483648), -24760i), vec4<u32>(4294967295u, 16944u, 5837u, 4294967295u))), Struct_2(1437f, Struct_1(vec3<bool>(false, true, true), vec3<u32>(0u, 90277u, 0u), vec4<i32>(-65262i, 0i, 1i, 39288i), vec4<u32>(1u, 36403u, 4367u, 4294967295u))));

var<private> global2: u32 = 4294967295u;

var<private> global3: Struct_2 = Struct_2(462f, Struct_1(vec3<bool>(true, true, false), vec3<u32>(30683u, 36093u, 16368u), vec4<i32>(0i, 1i, -633i, 41659i), vec4<u32>(54238u, 1u, 4294967295u, 0u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    let var_0 = abs(~(~_wgslsmith_dot_vec3_u32(global3.b.d.wyz, vec3<u32>(arg_0.d.x, global3.b.b.x, global0.b.x))) ^ 81449u);
    var var_1 = _wgslsmith_clamp_u32(min(firstTrailingBit(4594u), abs(global0.d.x)), max(firstTrailingBit(~0u) & min(~4294967295u, ~102377u), ~abs(global0.b.x)), global3.b.d.x);
    var_1 = global0.b.x;
    global0 = arg_0;
    var var_2 = arg_0.c.zxy & (vec3<i32>(_wgslsmith_div_i32(arg_0.c.x, _wgslsmith_sub_i32(43579i, 2147483647i)), global0.c.x, -55936i) & ~global0.c.xww);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(421f + 1491f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) * arg_1.x)), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_div_f32(1199f, -1201f))));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<u32>) -> Struct_1 {
    global0 = global3.b;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(global3.b, vec4<f32>(1587f, global3.a, -1440f, -177f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1136f)), global3.a)), any(select(global0.a.zy, global0.a.yz, global3.b.a.zz)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a - global3.a) * _wgslsmith_f_op_f32(-global3.a)))), Struct_1(vec3<bool>(true, (global3.b.a.x != global3.b.a.x) || true, (u_input.e | global3.b.c.x) < global3.b.c.x), global0.d.yyz, ~vec4<i32>(0i, 1i, global0.c.x, 0i) >> (vec4<u32>(0u, 54703u, reverseBits(u_input.d), ~4294967295u) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(~global0.d.x), _wgslsmith_mult_u32(u_input.d, arg_2.x) ^ ~u_input.d, global3.b.b.x, global0.b.x)));
    global1 = array<Struct_2, 22>();
    global0 = Struct_1(!select(var_0.b.a, !(!var_0.b.a), !(!global3.b.a)), vec3<u32>(~select(~global3.b.b.x, abs(arg_2.x), true), 54917u, min(4294967295u, arg_2.x)), -vec4<i32>(~(~62156i), 2147483647i, ~_wgslsmith_add_i32(u_input.c.x, -1i), -2147483647i), global3.b.d);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(890f + 819f), var_0.a, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1002f + _wgslsmith_f_op_f32(-var_0.a)))))), Struct_1(vec3<bool>(var_0.b.a.x, true, var_0.b.a.x), global3.b.b, vec4<i32>(0i, ~(~global3.b.c.x), -var_0.b.c.x, var_0.b.c.x), var_0.b.d));
    return Struct_1(!(!vec3<bool>(true, any(vec4<bool>(false, true, arg_1.x, global0.a.x)), true)), global0.b, vec4<i32>(-_wgslsmith_clamp_i32(-7309i, i32(-1i) * -74046i, u_input.c.x), _wgslsmith_clamp_i32(var_0.b.c.x, 7254i, var_1.b.c.x), ~1i, firstTrailingBit(countOneBits(-44454i))), firstTrailingBit(countOneBits(global3.b.d) | vec4<u32>(~var_1.b.b.x, ~0u, min(u_input.d, arg_2.x), 0u << (arg_2.x % 32u))));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: vec3<i32>) -> vec2<i32> {
    let var_0 = func_2(12015i, !vec3<bool>(arg_0.b.a.x, false, global3.b.a.x), vec2<u32>(global3.b.d.x, 50935u));
    var var_1 = true;
    let var_2 = -vec4<i32>(_wgslsmith_dot_vec2_i32(max(firstTrailingBit(global3.b.c.yw), -global0.c.xz), arg_0.b.c.xz), var_0.c.x, -1i, -2147483647i);
    global2 = abs(0u);
    global2 = _wgslsmith_dot_vec3_u32(func_2(i32(-1i) * -14362i, vec3<bool>(func_2(var_2.x, global3.b.a, global3.b.b.xx).a.x, any(vec4<bool>(arg_1, global0.a.x, global0.a.x, global3.b.a.x)), arg_0.b.a.x), abs(~vec2<u32>(1u, 0u))).d.wzw, firstLeadingBit(global3.b.b)) << (~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.d.x, 0u), arg_0.b.d.yz), min(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.x, 1u), vec2<u32>(1u, 24507u)), vec2<u32>(var_0.d.x, var_0.d.x))) % 32u);
    return vec2<i32>(21349i, 3357i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.a)) * global3.a)), -1197f, false)));
    var var_1 = -select(u_input.b.ww, max(abs(global3.b.c.xw), reverseBits(func_1(Struct_2(1633f, Struct_1(vec3<bool>(global3.b.a.x, false, false), global0.d.zww, u_input.a, global0.d)), false, 1256f, global0.c.yxy))), vec2<bool>(global3.a <= _wgslsmith_f_op_f32(step(global3.a, -392f)), !global0.a.x));
    global2 = ~min(countOneBits(~_wgslsmith_dot_vec4_u32(global3.b.d, vec4<u32>(4294967295u, 4295u, 0u, global0.b.x))), func_2(-(global0.c.x >> (global0.b.x % 32u)), global0.a, ~(~vec2<u32>(0u, 0u))).b.x);
    var var_2 = func_1(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(191f, global3.a) * _wgslsmith_f_op_f32(f32(-1f) * -1246f)))), Struct_1(!(!global0.a), ~global0.b, vec4<i32>(reverseBits(global0.c.x), _wgslsmith_dot_vec4_i32(global0.c, u_input.b), _wgslsmith_div_i32(global0.c.x, u_input.a.x), -51800i), select(~global0.d, ~global3.b.d, false))), global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2787f, _wgslsmith_f_op_f32(abs(-313f)))))), _wgslsmith_add_vec3_i32(vec3<i32>(-global0.c.x, var_1.x, -2147483647i), _wgslsmith_mult_vec3_i32(firstLeadingBit(global3.b.c.zzy), vec3<i32>(var_1.x, u_input.b.x, 1i >> (global3.b.d.x % 32u))))).x;
    global1 = array<Struct_2, 22>();
    var var_3 = -global3.b.c.x;
    var_2 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global3.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.a, global3.a))), 587f)), vec4<f32>(_wgslsmith_div_f32(946f, _wgslsmith_f_op_f32(1000f * global3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1881f) * 1037f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a, 979f)) - global3.a)), -(global0.c.x << (reverseBits(_wgslsmith_clamp_u32(u_input.d, 1u, global3.b.b.x)) % 32u)), global3.b.d.x);
}

