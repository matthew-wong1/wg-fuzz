struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<i32>, 14>;

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(707f, 7652i, vec2<i32>(2147483647i, -8586i), vec4<bool>(true, true, true, true), 1512f), Struct_1(4300f, 41698i, vec2<i32>(0i, 2147483647i), vec4<bool>(false, false, false, false), 912f), Struct_1(1465f, 0i, vec2<i32>(-25211i, -25764i), vec4<bool>(false, false, false, true), -432f), vec4<i32>(39753i, 1i, 22513i, -25084i)), Struct_3(Struct_1(-481f, -1162i, vec2<i32>(10952i, -1i), vec4<bool>(false, false, true, false), 647f), Struct_1(788f, 4145i, vec2<i32>(20302i, 17291i), vec4<bool>(true, true, false, true), -112f), Struct_1(-2440f, i32(-2147483648), vec2<i32>(0i, -13736i), vec4<bool>(false, false, true, true), -2481f), vec4<i32>(2147483647i, 19387i, -35749i, -70535i)), Struct_3(Struct_1(169f, 0i, vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(false, true, true, false), 1000f), Struct_1(1130f, i32(-2147483648), vec2<i32>(-38428i, 2147483647i), vec4<bool>(false, true, false, true), 847f), Struct_1(-1489f, i32(-2147483648), vec2<i32>(-61199i, -12934i), vec4<bool>(true, false, false, false), -1687f), vec4<i32>(2147483647i, -1i, 11357i, 0i)), Struct_3(Struct_1(723f, -9743i, vec2<i32>(2147483647i, -5642i), vec4<bool>(true, false, false, false), -1268f), Struct_1(188f, -16991i, vec2<i32>(2147483647i, 50135i), vec4<bool>(false, false, false, false), -267f), Struct_1(958f, 0i, vec2<i32>(-1i, -1i), vec4<bool>(true, true, true, false), 344f), vec4<i32>(-27925i, 0i, 28952i, 16955i)), Struct_3(Struct_1(786f, -5602i, vec2<i32>(i32(-2147483648), 12231i), vec4<bool>(false, true, true, false), -727f), Struct_1(-1378f, i32(-2147483648), vec2<i32>(1i, 0i), vec4<bool>(false, true, false, false), 788f), Struct_1(129f, 69203i, vec2<i32>(4430i, 2147483647i), vec4<bool>(true, false, true, true), 302f), vec4<i32>(11123i, 1i, 6429i, -1i)), Struct_3(Struct_1(1527f, -47692i, vec2<i32>(11524i, 0i), vec4<bool>(false, false, false, true), 1237f), Struct_1(308f, 1i, vec2<i32>(i32(-2147483648), 0i), vec4<bool>(false, false, true, false), -1524f), Struct_1(1088f, -38532i, vec2<i32>(2147483647i, 80093i), vec4<bool>(false, false, true, false), 553f), vec4<i32>(22124i, 2099i, 13255i, 37204i)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec2<u32> {
    var var_0 = arg_2.xw;
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) - -700f)))));
    global2 = array<Struct_3, 6>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(842f, -163f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f) - _wgslsmith_div_f32(250f, 574f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1491f)) * _wgslsmith_f_op_f32(1304f - -827f)))));
    global0 = var_1.x;
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    let var_0 = Struct_1(-1000f, _wgslsmith_add_i32(~0i, u_input.a.x), vec2<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(min(1i, arg_0), abs(arg_2)), i32(-1i) * -11693i)), vec4<bool>(any(select(arg_1, vec2<bool>(arg_1.x, arg_1.x), arg_1.x)) | (7231i == (arg_0 >> (15808u % 32u))), 17104u <= u_input.c, false & select(any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), true, arg_1.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1378f * 333f)) - -208f)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(abs(~(u_input.c | 1u)), 14u)], firstLeadingBit(global1[_wgslsmith_index_u32(u_input.c, 14u)])), abs(vec2<i32>(arg_2, firstLeadingBit(max(-10143i, arg_2)))), select(!select(select(vec4<bool>(var_0.d.x, arg_1.x, false, true), vec4<bool>(var_0.d.x, false, var_0.d.x, false), vec4<bool>(true, true, arg_1.x, false)), !var_0.d, !var_0.d.x), vec4<bool>(all(select(vec2<bool>(var_0.d.x, true), arg_1, vec2<bool>(var_0.d.x, false))), select(true, false, true), -138f <= _wgslsmith_div_f32(var_0.a, var_0.a), false & !var_0.d.x), var_0.d), var_0.a);
    global1 = array<vec4<i32>, 14>();
    global0 = var_0.e;
    return _wgslsmith_sub_u32(4294967295u, max(reverseBits(u_input.c), 0u));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = abs(-(~(~u_input.a.x))) >> (~(0u ^ select(0u, func_3(2147483647i, vec2<bool>(arg_1.x, false), 61931i), all(vec4<bool>(arg_1.x, false, false, arg_1.x)))) % 32u);
    global2 = array<Struct_3, 6>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(480f + -502f) * _wgslsmith_f_op_f32(step(402f, 1819f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1429f, -670f)))), all(arg_1) | arg_1.x))), _wgslsmith_add_i32(abs(firstLeadingBit(-u_input.b)), 24605i), -vec2<i32>(1i, ~(-1601i)), !(!vec4<bool>(!arg_1.x, all(vec2<bool>(false, true)), !arg_1.x, any(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)))), _wgslsmith_f_op_f32(269f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(158f - _wgslsmith_div_f32(-1611f, -625f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_div_f32(822f, 828f), true)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    return Struct_2(arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1, vec4<f32>(arg_2.e.a, _wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_f_op_f32(round(arg_2.e.a)), _wgslsmith_f_op_f32(f32(-1f) * -538f))))), Struct_1(arg_2.c.e, u_input.a.x << (_wgslsmith_sub_u32(1u, ~u_input.c) % 32u), u_input.a.yx, select(select(!arg_2.e.d, arg_2.c.d, true), !vec4<bool>(arg_2.c.d.x, true, true, false), arg_2.e.d.x), 659f), arg_2.d, arg_2.d);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = arg_3;
    var var_1 = reverseBits(~var_0.a);
    var_0 = func_4(_wgslsmith_mod_vec3_i32(firstLeadingBit(select(vec3<i32>(-34235i, 0i, 16991i), u_input.a, false)), abs(vec3<i32>(-1i, 20698i, arg_0.c.b))) & vec3<i32>(-arg_0.e.c.x, _wgslsmith_mult_i32(1i, func_4(vec3<i32>(-29418i, 2147483647i, -5551i), vec4<f32>(arg_2, arg_3.b.x, var_0.e.a, arg_3.d.e), Struct_2(arg_3.a, vec4<f32>(var_0.c.e, var_0.d.e, 1348f, -1405f), Struct_1(var_0.b.x, arg_0.c.c.x, var_0.d.c, arg_3.e.d, arg_2), var_0.c, arg_0.c), 1u).e.c.x), ~_wgslsmith_mod_i32(2147483647i, arg_0.e.b)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(552f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) * _wgslsmith_f_op_f32(select(arg_0.e.e, arg_3.d.e, arg_0.e.d.x))), 1189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a))))), arg_3, _wgslsmith_sub_u32(u_input.c, _wgslsmith_mod_u32(0u, firstTrailingBit(reverseBits(35703u)))));
    var var_2 = func_4(_wgslsmith_mod_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.c.c.x, var_0.d.b, -2147483647i), u_input.a, u_input.a), abs(~vec3<i32>(15842i, arg_0.c.b, var_0.d.b))) >> (~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.a.x, 125776u, 4294967295u), arg_0.a.yzw) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(floor(arg_3.b)), Struct_2(~_wgslsmith_add_vec4_u32(var_0.a, _wgslsmith_div_vec4_u32(vec4<u32>(76537u, 3641u, 60206u, var_0.a.x), var_0.a)), vec4<f32>(arg_0.d.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.c.a * 143f))), arg_0.c.e, _wgslsmith_f_op_f32(-func_4(u_input.a, vec4<f32>(arg_2, -760f, arg_2, -297f), arg_3, 4294967295u).b.x)), func_2(_wgslsmith_clamp_vec4_u32(~arg_3.a, vec4<u32>(74475u, 1u, 0u, u_input.c), var_0.a), arg_3.d.d.zz), arg_0.e, func_4(u_input.a & _wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.c.c.x, u_input.a.x, 0i), vec3<i32>(-2147483647i, var_0.c.c.x, -1i)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1593f, 2151f, 833f, 571f), vec4<f32>(arg_3.e.a, 1844f, 625f, var_0.e.a))))), arg_0, max(u_input.c >> (44245u % 32u), 66043u)).c), firstLeadingBit(~arg_3.a.x)).e;
    var_2 = func_2(select(countOneBits(~(arg_3.a ^ var_0.a)), arg_0.a, !vec4<bool>(var_0.e.d.x, false, any(arg_3.e.d.xyz), false)), select(!(!vec2<bool>(var_0.c.d.x, arg_0.d.d.x)), func_2(firstLeadingBit(select(arg_3.a, arg_0.a, arg_3.d.d.x)), vec2<bool>(var_2.d.x != false, true)).d.wy, true));
    return arg_3.d.d;
}

fn func_6(arg_0: vec4<bool>) -> Struct_2 {
    global1 = array<vec4<i32>, 14>();
    let var_0 = global2[_wgslsmith_index_u32(~u_input.c, 6u)];
    let var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.e, var_0.a.e));
    global1 = array<vec4<i32>, 14>();
    return Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(func_4(vec3<i32>(u_input.a.x, u_input.b, -57201i), vec4<f32>(var_0.b.e, var_2.x, var_2.x, var_0.b.e), Struct_2(vec4<u32>(0u, 21970u, 1u, 58127u), vec4<f32>(1302f, 292f, var_2.x, 334f), var_0.a, var_0.c, Struct_1(var_0.c.e, 0i, vec2<i32>(var_0.b.b, u_input.b), vec4<bool>(arg_0.x, var_0.b.d.x, arg_0.x, false), var_0.a.a)), ~var_1).a.yz, vec2<u32>(u_input.c, ~65908u)), 0u, u_input.c, ~(~1u)), func_4(u_input.a, vec4<f32>(1019f, var_2.x, -516f, var_0.c.a), func_4(vec3<i32>(var_0.a.c.x & 1i, var_0.a.b, _wgslsmith_add_i32(var_0.c.c.x, var_0.b.c.x)), vec4<f32>(_wgslsmith_div_f32(-299f, var_0.a.a), _wgslsmith_f_op_f32(703f + var_0.a.e), _wgslsmith_f_op_f32(-var_0.c.e), 438f), func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.c.x, 0i, var_0.d.x), u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1128f, var_0.a.a, var_0.b.e, var_2.x) - vec4<f32>(-170f, 954f, -530f, 1104f)), Struct_2(vec4<u32>(4294967295u, u_input.c, 1u, var_1), vec4<f32>(932f, 463f, var_0.c.e, var_0.a.a), var_0.a, Struct_1(-1000f, -12687i, var_0.d.wz, arg_0, 2628f), Struct_1(2161f, var_0.b.c.x, u_input.a.yx, vec4<bool>(arg_0.x, true, arg_0.x, true), var_0.c.e)), countOneBits(var_1)), max(u_input.c, var_1 << (62574u % 32u))), u_input.c).b, Struct_1(_wgslsmith_f_op_f32(sign(-2585f)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 17416i) & vec2<i32>(u_input.a.x, var_0.a.b), reverseBits(var_0.c.c)) ^ func_2(~vec4<u32>(3011u, u_input.c, u_input.c, 1u), var_0.b.d.zz).b, min(abs(u_input.a.zz) | u_input.a.yx, ~vec2<i32>(u_input.a.x, 1i)), var_0.b.d, _wgslsmith_f_op_f32(var_0.c.e - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), _wgslsmith_div_f32(-905f, var_2.x), false)))), func_2(firstLeadingBit(min(vec4<u32>(u_input.c, 1u, 70473u, u_input.c), ~vec4<u32>(var_1, 23027u, 0u, u_input.c))), var_0.b.d.xx), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1f;
    let var_0 = true;
    global1 = array<vec4<i32>, 14>();
    var var_1 = countOneBits(vec2<u32>(17963u, u_input.c)) << (abs(abs(select(vec2<u32>(u_input.c, u_input.c), func_1(vec2<u32>(1u, u_input.c), vec2<u32>(1u, 55800u), vec4<bool>(true, true, var_0, true)), !vec2<bool>(var_0, var_0)))) % vec2<u32>(32u));
    var var_2 = func_6(func_5(func_4(vec3<i32>(u_input.a.x, 0i, u_input.a.x) << (vec3<u32>(var_1.x, u_input.c, 4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1595f, 602f, -1472f, -258f), vec4<f32>(-812f, 663f, -1617f, 260f)))), Struct_2(vec4<u32>(u_input.c, 1u, var_1.x, 0u) << (vec4<u32>(4294967295u, 0u, 11782u, u_input.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -485f, -613f, 613f) + vec4<f32>(720f, -1147f, -1000f, 1130f)), func_2(vec4<u32>(u_input.c, 47497u, u_input.c, var_1.x), vec2<bool>(true, var_0)), Struct_1(967f, 0i, u_input.a.yy, vec4<bool>(var_0, false, var_0, true), 622f), func_2(vec4<u32>(38302u, 4294967295u, 1u, var_1.x), vec2<bool>(var_0, true))), u_input.c), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.a, vec4<f32>(-380f, -436f, 563f, -1322f), Struct_2(vec4<u32>(59014u, 4294967295u, var_1.x, 4294967295u), vec4<f32>(1090f, 1000f, 1846f, 1417f), Struct_1(-1693f, u_input.b, u_input.a.yy, vec4<bool>(var_0, false, true, var_0), -499f), Struct_1(-746f, u_input.b, vec2<i32>(u_input.b, -22094i), vec4<bool>(var_0, false, true, var_0), -267f), Struct_1(478f, u_input.a.x, u_input.a.xx, vec4<bool>(true, var_0, false, var_0), 168f)), u_input.c).e.a - -1252f)), Struct_2(abs(vec4<u32>(var_1.x, 103219u, 1858u, u_input.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1461f, -667f, 801f)), Struct_1(-1343f, u_input.a.x | u_input.a.x, abs(vec2<i32>(-7697i, 1i)), !vec4<bool>(var_0, false, false, var_0), 793f), func_4(vec3<i32>(25676i, u_input.b, u_input.a.x) | vec3<i32>(u_input.a.x, 2147483647i, 2147483647i), vec4<f32>(-1548f, -1855f, -401f, -1879f), Struct_2(vec4<u32>(43371u, u_input.c, 1u, 1u), vec4<f32>(698f, 749f, 306f, 1071f), Struct_1(246f, 1i, u_input.a.xy, vec4<bool>(true, var_0, var_0, var_0), -800f), Struct_1(-457f, -1i, u_input.a.yz, vec4<bool>(true, var_0, false, false), -1424f), Struct_1(1000f, 10316i, u_input.a.zx, vec4<bool>(true, var_0, false, true), -1908f)), u_input.c).e, Struct_1(528f, u_input.b & 35845i, -u_input.a.yx, vec4<bool>(true, false, true, false), -719f))));
    let var_3 = 4294967295u;
    global2 = array<Struct_3, 6>();
    let var_4 = !var_2.c.d;
    var_1 = reverseBits(~var_2.a.yx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), var_2.d.b, func_6(func_2(vec4<u32>(4294967295u, 1u, ~0u, firstLeadingBit(u_input.c)), !vec2<bool>(var_0, var_0)).d).e.e, func_4(~(~vec3<i32>(var_2.d.c.x, 2147483647i, -35693i)), _wgslsmith_f_op_vec4_f32(-var_2.b), func_4(_wgslsmith_div_vec3_i32(abs(vec3<i32>(var_2.c.b, 15373i, -1i)), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) + _wgslsmith_f_op_vec4_f32(-var_2.b)), Struct_2(var_2.a, func_4(u_input.a, var_2.b, Struct_2(vec4<u32>(10470u, var_1.x, var_3, 18437u), vec4<f32>(736f, var_2.c.a, var_2.e.e, var_2.e.a), Struct_1(722f, u_input.a.x, var_2.d.c, vec4<bool>(var_0, var_4.x, false, var_4.x), var_2.c.a), Struct_1(-263f, -2147483647i, vec2<i32>(u_input.b, 1i), vec4<bool>(false, false, true, true), var_2.e.e), Struct_1(1720f, -1i, vec2<i32>(var_2.e.b, u_input.a.x), var_2.d.d, var_2.b.x)), var_2.a.x).b, var_2.c, Struct_1(var_2.e.e, 8056i, vec2<i32>(var_2.d.c.x, 22311i), vec4<bool>(false, var_4.x, var_2.c.d.x, var_0), var_2.d.e), var_2.e), var_2.a.x), 19479u).e.c.x, u_input.a);
}

