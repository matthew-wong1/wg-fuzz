struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18>;

var<private> global1: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-23125i, 55077i), vec2<i32>(-9659i, -42691i), vec2<i32>(-1i, -754i), vec2<i32>(1i, -39358i), vec2<i32>(0i, 0i), vec2<i32>(-35994i, 49295i), vec2<i32>(0i, 1i), vec2<i32>(89295i, 0i), vec2<i32>(-1i, -18864i), vec2<i32>(-24605i, 34574i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-52947i, -29748i), vec2<i32>(38934i, -11361i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, -20587i), vec2<i32>(25844i, -62614i), vec2<i32>(1i, -11885i), vec2<i32>(-5402i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-17791i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, -6161i), vec2<i32>(-1088i, -7386i));

var<private> global2: bool;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<i32>(-1i, 16070i)), Struct_1(vec2<i32>(30888i, 691i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-11396i, 20322i)), Struct_1(vec2<i32>(2147483647i, -88378i)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global0 = array<vec3<u32>, 18>();
    global3 = array<Struct_1, 5>();
    let var_0 = global3[_wgslsmith_index_u32(max(1u, u_input.c.x) | u_input.b.x, 5u)];
    global1 = array<vec2<i32>, 25>();
    let var_1 = 0i;
    return arg_0.x;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = -(_wgslsmith_add_i32(19485i, select(31648i, -1i, false)) ^ 0i);
    let var_1 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(0u, 25u)]), vec3<bool>(true && (_wgslsmith_f_op_f32(trunc(-511f)) < -1593f), false, true), func_3(vec3<i32>(0i, _wgslsmith_mod_i32(-43134i, countOneBits(arg_0.x)), reverseBits(arg_0.x))), Struct_1(-(~global1[_wgslsmith_index_u32(u_input.b.x, 25u)]) ^ global1[_wgslsmith_index_u32(22139u, 25u)]), Struct_1(vec2<i32>(_wgslsmith_mod_i32(min(arg_0.x, 12171i), ~arg_0.x), i32(-1i) * -1i)));
    return Struct_1(countOneBits(-(~(~global1[_wgslsmith_index_u32(100093u, 25u)]))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_3 {
    global0 = array<vec3<u32>, 18>();
    let var_0 = -vec2<i32>(-43444i, min(-min(arg_1.a.x, 13553i), arg_1.a.x));
    let var_1 = Struct_2(Struct_1(-_wgslsmith_div_vec2_i32(vec2<i32>(-28101i, -58097i), global1[_wgslsmith_index_u32(arg_2.x, 25u)] & vec2<i32>(var_0.x, var_0.x))), vec3<bool>(true, true, !all(vec3<bool>(true, true, true))), arg_1.a.x, func_2(arg_1.a), Struct_1(~global1[_wgslsmith_index_u32(min(arg_2.x, arg_2.x) ^ 1u, 25u)]));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(915f + _wgslsmith_f_op_f32(arg_0 - 1176f)) + 530f);
    global3 = array<Struct_1, 5>();
    return Struct_3(Struct_1(_wgslsmith_div_vec2_i32(global1[_wgslsmith_index_u32(1u, 25u)], vec2<i32>(0i, func_2(var_0).a.x))), reverseBits(-(vec3<i32>(arg_1.a.x, -13809i, arg_1.a.x) & vec3<i32>(var_0.x, var_1.a.a.x, var_0.x)) ^ vec3<i32>(-24271i, firstTrailingBit(1i), var_1.a.a.x)), select((vec4<u32>(65447u, 1u, 6846u, 4294967295u) >> (_wgslsmith_div_vec4_u32(arg_2, arg_2) % vec4<u32>(32u))) | select(countOneBits(vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.c.x)), ~u_input.c, var_1.b.x), select(~vec4<u32>(0u, 31242u, arg_2.x, u_input.a) >> (u_input.c % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.b.x, u_input.c.x, 1u, u_input.c.x)), u_input.a, _wgslsmith_div_u32(3966u, u_input.b.x), 13098u), true), !select(vec4<bool>(false, var_1.b.x, var_1.b.x, false), select(vec4<bool>(true, var_1.b.x, false, true), vec4<bool>(var_1.b.x, false, true, true), false), true)), vec3<i32>(arg_1.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(-1i, -26756i, arg_1.a.x, arg_1.a.x), vec4<i32>(54412i, 34053i, var_1.e.a.x, -20304i), false), firstLeadingBit(vec4<i32>(-12000i, var_1.a.a.x, var_0.x, -26778i))), abs(abs(vec4<i32>(-1i, var_1.e.a.x, -2147483647i, var_0.x)))), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, arg_1.a.x, var_0.x, arg_1.a.x) << (vec4<u32>(1u, arg_2.x, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(reverseBits(35215i), 26388i, -16424i, 23531i & arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(arg_0 * var_2)) + arg_0)));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.e, -384f)) * _wgslsmith_f_op_f32(f32(-1f) * -428f)))) <= _wgslsmith_f_op_f32(-1000f + -495f);
    var var_0 = Struct_3(Struct_1(select(vec2<i32>(arg_0.b.x, arg_0.a.a.x), arg_2.a, select(vec2<bool>(true, true), vec2<bool>(true, false), false)) & _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(arg_2.a, vec2<i32>(arg_3.d.x, arg_0.d.x)), arg_2.a)), vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-arg_0.a.a.x, arg_0.b.x, arg_2.a.x | -2147483647i, i32(-1i) * -30628i), abs(~vec4<i32>(arg_3.a.a.x, -2147483647i, arg_3.b.x, 33322i))), 0i), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, arg_0.c.x, u_input.b.x), arg_0.c) << (~arg_3.c % vec4<u32>(32u)), select(vec4<u32>(0u, 29025u, 1u, 64317u), vec4<u32>(1u, 54861u, 4294967295u, 57413u), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)))), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(arg_0.c.x, 15926u), 16628u, arg_0.c.x << (49379u % 32u), ~1u))), arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-682f))));
    var var_1 = ~vec4<i32>(-1i, -arg_3.b.x, ~(arg_3.b.x | arg_3.b.x), ~(-14273i)) ^ -_wgslsmith_mult_vec4_i32(vec4<i32>(-9634i, 67561i, _wgslsmith_sub_i32(arg_2.a.x, 2147483647i), reverseBits(2147483647i)), vec4<i32>(_wgslsmith_add_i32(arg_3.b.x, 55222i), ~(-14040i), arg_2.a.x, _wgslsmith_add_i32(1i, arg_3.d.x)));
    let var_2 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    let var_3 = vec2<bool>(false, false);
    return Struct_2(func_4(_wgslsmith_f_op_f32(f32(-1f) * -154f), Struct_1(reverseBits(vec2<i32>(55363i, arg_3.b.x))), vec4<u32>(_wgslsmith_div_u32(0u, arg_3.c.x) << (~u_input.a % 32u), ~arg_0.c.x, arg_3.c.x ^ min(arg_3.c.x, arg_3.c.x), _wgslsmith_dot_vec3_u32(arg_0.c.wwy, vec3<u32>(arg_0.c.x, 4294967295u, arg_3.c.x)))).a, var_2.zwy, var_1.x, arg_3.a, global3[_wgslsmith_index_u32(~max(var_0.c.x, select(u_input.a, firstTrailingBit(4294967295u), true)), 5u)]);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: bool, arg_3: i32) -> Struct_3 {
    let var_0 = func_5(func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1655f + -575f))), func_2(vec2<i32>(-27214i ^ arg_3, 73151i)), vec4<u32>(4294967295u ^ arg_1, firstLeadingBit(1427u), 71750u, firstTrailingBit(arg_0.x)) | ~arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1027f), func_2(_wgslsmith_add_vec2_i32(vec2<i32>(0i | arg_3, firstLeadingBit(arg_3)), _wgslsmith_add_vec2_i32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), 25u)], vec2<i32>(-1i, arg_3)))), func_4(_wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_f32(-1893f - 410f), Struct_1(vec2<i32>(2147483647i, 2147483647i)), u_input.c).e), global3[_wgslsmith_index_u32(1u, 5u)], arg_0));
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_f32(select(-854f, _wgslsmith_f_op_f32(abs(1594f)), var_0.b.x)), Struct_1(vec2<i32>(65759i, countOneBits(var_0.c))), func_4(_wgslsmith_div_f32(2802f, 488f), Struct_1(~var_0.a.a), firstLeadingBit(vec4<u32>(45280u, arg_0.x, arg_1, 35348u) & u_input.c)).c).a, vec3<bool>(false, all(!var_0.b.xy) && false, false), -2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(select(func_4(-1002f, global3[_wgslsmith_index_u32(23448u, 5u)], u_input.c).c.xyz, ~u_input.c.yxx, arg_2 || arg_2)), u_input.b), 5u)], global3[_wgslsmith_index_u32(~(abs(~52869u) & abs(arg_0.x)), 5u)]);
    let var_2 = func_5(Struct_3(Struct_1(-func_4(869f, Struct_1(vec2<i32>(2147483647i, -42610i)), arg_0).b.zy), -vec3<i32>(51716i, arg_3, var_0.d.a.x) | vec3<i32>(0i, var_0.a.a.x, ~var_1.a.a.x), vec4<u32>(abs(func_4(1540f, Struct_1(global1[_wgslsmith_index_u32(5151u, 25u)]), vec4<u32>(1u, arg_1, u_input.b.x, 21881u)).c.x), 1u, ~max(36135u, 1u), abs(1u)), vec3<i32>(firstLeadingBit(firstLeadingBit(1i)), func_3(func_4(-116f, var_0.e, u_input.c).b), arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f + _wgslsmith_div_f32(-1000f, -700f)))), _wgslsmith_f_op_f32(-738f + _wgslsmith_f_op_f32(select(-611f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2663f)), !func_5(Struct_3(Struct_1(vec2<i32>(-1i, 32075i)), vec3<i32>(arg_3, -42423i, -2147483647i), u_input.c, vec3<i32>(12898i, 1089i, arg_3), 271f), -987f, Struct_1(var_1.a.a), Struct_3(Struct_1(vec2<i32>(-23595i, 0i)), vec3<i32>(arg_3, var_0.a.a.x, -1i), vec4<u32>(22849u, 0u, 11890u, arg_0.x), vec3<i32>(0i, var_1.a.a.x, var_0.a.a.x), 532f)).b.x))), func_4(-634f, func_5(Struct_3(func_2(vec2<i32>(var_1.c, -1i)), vec3<i32>(var_0.a.a.x, var_0.a.a.x, -2147483647i) << (vec3<u32>(u_input.c.x, u_input.a, arg_0.x) % vec3<u32>(32u)), ~vec4<u32>(22304u, 4294967295u, 1410u, u_input.a), firstTrailingBit(vec3<i32>(var_1.c, var_1.e.a.x, arg_3)), _wgslsmith_f_op_f32(max(1510f, -901f))), 535f, global3[_wgslsmith_index_u32(arg_0.x, 5u)], Struct_3(Struct_1(vec2<i32>(-10676i, -32219i)), -vec3<i32>(36957i, -2147483647i, -19270i), vec4<u32>(arg_1, arg_0.x, 0u, arg_0.x), select(vec3<i32>(var_0.c, -17927i, -26693i), vec3<i32>(0i, 10105i, var_0.e.a.x), var_0.b), _wgslsmith_div_f32(-204f, -1533f))).a, arg_0).a, func_4(1f, func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -213f))), var_1.e, func_4(_wgslsmith_f_op_f32(f32(-1f) * -922f), var_1.a, abs(vec4<u32>(arg_1, arg_1, arg_1, u_input.a))).c).a, ~_wgslsmith_add_vec4_u32(u_input.c, ~vec4<u32>(95583u, u_input.b.x, 1u, 1u))));
    var var_3 = var_1;
    return func_4(1f, Struct_1(vec2<i32>(arg_3, ~1i)), _wgslsmith_add_vec4_u32(arg_0, ~(~u_input.c) | countOneBits(arg_0 ^ vec4<u32>(arg_1, 1u, 7378u, arg_1))));
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = arg_2;
    let var_1 = all(!(!select(vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_1.b.x), !vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x), select(vec4<bool>(true, false, arg_1.b.x, false), vec4<bool>(false, arg_1.b.x, false, arg_1.b.x), vec4<bool>(false, arg_1.b.x, false, true)))));
    global3 = array<Struct_1, 5>();
    let var_2 = vec4<i32>(34422i, arg_1.a.a.x, func_4(_wgslsmith_div_f32(-318f, _wgslsmith_f_op_f32(-arg_2.x)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1540f, -100f)), func_5(Struct_3(Struct_1(global1[_wgslsmith_index_u32(arg_3.c.x, 25u)]), vec3<i32>(-35017i, 18083i, arg_3.a.a.x), vec4<u32>(u_input.a, u_input.c.x, 39474u, 4294967295u), arg_3.b, arg_3.e), arg_2.x, func_2(arg_3.d.yx), func_1(u_input.c, arg_3.c.x, var_1, -2147483647i)).a, ~max(vec4<u32>(1u, u_input.c.x, 30928u, u_input.c.x), vec4<u32>(arg_3.c.x, u_input.a, 1u, 28392u))).a, vec4<u32>(max(select(u_input.b.x, u_input.a, true), abs(arg_3.c.x)), ~6411u, 6149u >> (~u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(arg_3.c, ~vec4<u32>(arg_3.c.x, arg_3.c.x, u_input.c.x, 1u)))).b.x, select(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-arg_3.b.xz, arg_3.a.a), 0i), firstTrailingBit(47706i), all(select(!vec4<bool>(var_1, arg_1.b.x, arg_1.b.x, var_1), vec4<bool>(false, false, true, var_1), select(vec4<bool>(var_1, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(false, arg_1.b.x, arg_1.b.x, var_1), vec4<bool>(true, false, false, arg_1.b.x))))));
    global1 = array<vec2<i32>, 25>();
    return !vec3<bool>(arg_1.b.x, func_5(Struct_3(arg_3.a, _wgslsmith_div_vec3_i32(vec3<i32>(-23475i, 54295i, -1i), arg_3.d), vec4<u32>(u_input.b.x, arg_3.c.x, u_input.c.x, 4294967295u) ^ u_input.c, arg_3.d, arg_2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -351f))), Struct_1(-global1[_wgslsmith_index_u32(u_input.a, 25u)]), func_1(~vec4<u32>(17119u, 24289u, arg_3.c.x, arg_3.c.x), 81885u, false, -1i)).b.x, !any(arg_1.b) | var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~vec3<i32>(1i, ~(~(-1i)), _wgslsmith_add_i32(2581i >> (1u % 32u), 15276i)));
    let var_1 = abs(vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, u_input.a, 32946u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), global0[_wgslsmith_index_u32(21302u, 18u)])), 1u, firstLeadingBit(u_input.b.x ^ u_input.b.x))) ^ select(~u_input.b, (vec3<u32>(0u, u_input.b.x, u_input.b.x) >> (u_input.c.yzw % vec3<u32>(32u))) >> (~u_input.b % vec3<u32>(32u)), select(vec3<bool>(true, true, true), func_6(_wgslsmith_f_op_f32(round(-102f)), Struct_2(global3[_wgslsmith_index_u32(u_input.a, 5u)], vec3<bool>(true, false, false), var_0.x, Struct_1(var_0.yy), global3[_wgslsmith_index_u32(u_input.b.x, 5u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, -2273f, 487f)), func_1(vec4<u32>(0u, u_input.b.x, 1u, u_input.a), u_input.c.x, false, var_0.x)), vec3<bool>(true, all(vec4<bool>(false, true, false, true)), u_input.a != u_input.c.x)));
    var var_2 = global3[_wgslsmith_index_u32(6969u, 5u)];
    let var_3 = Struct_3(global3[_wgslsmith_index_u32(1u, 5u)], countOneBits(-(vec3<i32>(-1i) * -var_0)), vec4<u32>(78136u, abs(_wgslsmith_dot_vec2_u32(var_1.zx, vec2<u32>(4294967295u, u_input.b.x))) << (_wgslsmith_mult_u32(0u, ~var_1.x) % 32u), _wgslsmith_dot_vec4_u32(~reverseBits(u_input.c), vec4<u32>(u_input.a, u_input.b.x, 13034u, u_input.a) ^ vec4<u32>(15536u, 69745u, 0u, var_1.x)), _wgslsmith_mult_u32(~(~u_input.a), var_1.x)), var_0, _wgslsmith_f_op_f32(f32(-1f) * -844f));
    global2 = all(vec4<bool>(true, true, false, !(all(vec3<bool>(true, false, true)) || true)));
    let var_4 = 502f;
    global3 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_4)), var_4, var_3.d.x, ~var_1.yz);
}

