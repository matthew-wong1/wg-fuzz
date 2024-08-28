struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(Struct_1(vec4<f32>(751f, -1000f, -1000f, -871f), vec4<bool>(false, true, false, true)), vec3<i32>(0i, 24178i, 1i), 1465f, Struct_3(vec2<f32>(-157f, 144f), Struct_1(vec4<f32>(-882f, 601f, -739f, -765f), vec4<bool>(true, false, true, false))), Struct_1(vec4<f32>(1190f, -881f, 1361f, 491f), vec4<bool>(false, true, true, true))), Struct_4(Struct_1(vec4<f32>(1327f, -173f, 1449f, 660f), vec4<bool>(true, true, true, true)), vec3<i32>(1693i, 23505i, -1i), -619f, Struct_3(vec2<f32>(-1970f, 104f), Struct_1(vec4<f32>(889f, 1513f, -502f, 281f), vec4<bool>(true, false, true, false))), Struct_1(vec4<f32>(-969f, -756f, -938f, -1225f), vec4<bool>(true, true, true, false))), Struct_4(Struct_1(vec4<f32>(-1304f, 311f, -1000f, 1326f), vec4<bool>(true, true, true, false)), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), -192f, Struct_3(vec2<f32>(457f, 726f), Struct_1(vec4<f32>(-611f, -265f, 1000f, 538f), vec4<bool>(true, true, false, true))), Struct_1(vec4<f32>(-714f, -282f, -1000f, 1502f), vec4<bool>(true, false, true, true))), Struct_4(Struct_1(vec4<f32>(165f, -245f, -781f, 2377f), vec4<bool>(true, true, true, false)), vec3<i32>(1i, -2120i, 34839i), -571f, Struct_3(vec2<f32>(581f, -1632f), Struct_1(vec4<f32>(157f, -1774f, -1235f, 1363f), vec4<bool>(false, false, false, false))), Struct_1(vec4<f32>(-450f, 858f, 711f, -281f), vec4<bool>(true, true, false, true))), Struct_4(Struct_1(vec4<f32>(-212f, -907f, -614f, -739f), vec4<bool>(true, true, false, false)), vec3<i32>(1i, -6965i, 0i), 1088f, Struct_3(vec2<f32>(-1040f, -282f), Struct_1(vec4<f32>(-608f, -840f, 1155f, 437f), vec4<bool>(true, true, false, true))), Struct_1(vec4<f32>(191f, -1000f, 1000f, -326f), vec4<bool>(true, false, false, false))), Struct_4(Struct_1(vec4<f32>(1728f, -104f, -1087f, -892f), vec4<bool>(false, false, true, true)), vec3<i32>(59521i, 2147483647i, 2147483647i), 459f, Struct_3(vec2<f32>(1140f, -700f), Struct_1(vec4<f32>(-1085f, 578f, 1026f, -889f), vec4<bool>(false, true, true, false))), Struct_1(vec4<f32>(-180f, -896f, -780f, -684f), vec4<bool>(true, false, false, true))));

var<private> global1: array<bool, 10>;

var<private> global2: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(139f, 266f, 244f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = arg_0;
    global2 = array<vec3<f32>, 1>();
    var var_1 = Struct_4(var_0.a, firstLeadingBit(vec3<i32>(-(i32(-1i) * -2147483647i), u_input.b, ~var_0.b.x >> (max(u_input.c, u_input.c) % 32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.e.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, var_0.c)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.a.x))))), arg_0.d, Struct_1(var_0.d.b.a, !var_0.d.b.b));
    let var_2 = arg_0.e;
    let var_3 = vec4<bool>(!var_2.b.x, all(arg_0.a.b), true, (~u_input.c >= u_input.c) && false);
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(719f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(326f - 426f)), 869f, 1500f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.e.a) - vec4<f32>(var_0.d.a.x, -585f, _wgslsmith_f_op_f32(-arg_0.d.a.x), -942f))), arg_0.e.b);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_3, arg_3, arg_2.b, vec2<bool>(select(false, any(vec3<bool>(true, arg_3.b.x, false)), any(vec3<bool>(global1[_wgslsmith_index_u32(108006u, 10u)], true, true))), false), _wgslsmith_f_op_f32(-func_2(Struct_4(Struct_1(arg_3.a, vec4<bool>(true, arg_2.b.b.x, arg_3.b.x, true)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -1331f), Struct_3(arg_3.a.ww, Struct_1(vec4<f32>(569f, 606f, arg_2.a.x, arg_3.a.x), vec4<bool>(arg_3.b.x, true, arg_3.b.x, false))), Struct_1(arg_3.a, arg_3.b))).a.x));
    global2 = array<vec3<f32>, 1>();
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(~24427u), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 7532u, 7223u, arg_0), vec4<u32>(arg_1.x, 1u, u_input.c, 4294967295u)))), vec2<u32>(arg_1.x, 1u) ^ arg_1.xz), _wgslsmith_div_u32(0u, ~(~_wgslsmith_sub_u32(1u, u_input.c))), 5869u ^ ~_wgslsmith_dot_vec4_u32(arg_1, arg_1 ^ vec4<u32>(4294967295u, arg_1.x, u_input.c, 1u)));
    let var_2 = func_2(Struct_4(func_2(Struct_4(Struct_1(vec4<f32>(arg_3.a.x, -531f, arg_3.a.x, 235f), vec4<bool>(arg_2.b.b.x, global1[_wgslsmith_index_u32(0u, 10u)], true, arg_3.b.x)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(u_input.a.x, u_input.b, u_input.a.x)), -281f, Struct_3(var_0.c.a.ww, var_0.c), Struct_1(vec4<f32>(arg_3.a.x, var_0.e, arg_2.b.a.x, var_0.b.a.x), var_0.b.b))), vec3<i32>(u_input.b, u_input.b, 59144i), 877f, Struct_3(arg_3.a.wx, var_0.c), func_2(Struct_4(Struct_1(vec4<f32>(2008f, var_0.b.a.x, arg_2.b.a.x, arg_3.a.x), var_0.c.b), vec3<i32>(-33236i, u_input.b, u_input.b) >> (vec3<u32>(arg_0, 19239u, 4294967295u) % vec3<u32>(32u)), -114f, Struct_3(arg_3.a.ww, Struct_1(var_0.b.a, arg_3.b)), Struct_1(vec4<f32>(arg_3.a.x, var_0.b.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_2.b.b.x, false, arg_2.b.b.x, var_0.a.b.x)))))).a.x;
    global0 = array<Struct_4, 6>();
    return func_2(global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(arg_1.x, arg_1.x << (u_input.c % 32u)), 4294967295u) | ~abs(u_input.c), 6u)]);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> vec4<f32> {
    let var_0 = Struct_2(func_2(global0[_wgslsmith_index_u32(1u, 6u)]), func_2(Struct_4(func_2(global0[_wgslsmith_index_u32(reverseBits(u_input.c), 6u)]), ~abs(arg_1), 117f, Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1736f, 500f)), Struct_1(vec4<f32>(781f, -1000f, arg_0.x, -1320f), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(47105u, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)]))), Struct_1(vec4<f32>(-1277f, 1000f, -982f, 529f), vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(66901u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(35952u, 10u)])))), func_2(Struct_4(func_2(global0[_wgslsmith_index_u32(~4294967295u, 6u)]), vec3<i32>(1i, -arg_1.x, -9453i), arg_0.x, Struct_3(vec2<f32>(arg_0.x, arg_0.x), func_3(u_input.c, vec4<u32>(u_input.c, 0u, 109303u, 37222u), Struct_3(vec2<f32>(arg_0.x, arg_0.x), Struct_1(vec4<f32>(1749f, -839f, 226f, arg_0.x), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]))), Struct_1(vec4<f32>(arg_0.x, 1841f, -571f, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], false, true, global1[_wgslsmith_index_u32(1u, 10u)])))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-606f, arg_0.x, arg_0.x, arg_0.x) + vec4<f32>(arg_0.x, -961f, -269f, 213f)), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], true, global1[_wgslsmith_index_u32(8551u, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)])))), select(vec2<bool>(all(select(vec3<bool>(global1[_wgslsmith_index_u32(34497u, 10u)], global1[_wgslsmith_index_u32(2150u, 10u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)]), true)), func_2(Struct_4(Struct_1(vec4<f32>(-414f, 981f, arg_0.x, 1440f), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 10u)], true, global1[_wgslsmith_index_u32(u_input.c, 10u)])), arg_1, arg_0.x, Struct_3(vec2<f32>(arg_0.x, arg_0.x), Struct_1(vec4<f32>(arg_0.x, arg_0.x, 1000f, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], false, true, global1[_wgslsmith_index_u32(u_input.c, 10u)]))), Struct_1(vec4<f32>(-180f, -1222f, arg_0.x, arg_0.x), vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 10u)], false)))).b.x), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)]), true), select(vec2<bool>(global1[_wgslsmith_index_u32(88284u, 10u)], true), vec2<bool>(true, true), false), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 10u)])), !vec2<bool>(arg_1.x == arg_1.x, !global1[_wgslsmith_index_u32(u_input.c, 10u)])), _wgslsmith_f_op_f32(-arg_0.x));
    var var_1 = Struct_4(func_2(Struct_4(func_2(Struct_4(var_0.c, arg_1, -1644f, Struct_3(vec2<f32>(var_0.b.a.x, 879f), Struct_1(vec4<f32>(var_0.c.a.x, 157f, 1236f, 1953f), var_0.b.b)), var_0.c)), vec3<i32>(countOneBits(u_input.b), reverseBits(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -8458i, 59723i), arg_1)), _wgslsmith_f_op_f32(-var_0.a.a.x), Struct_3(var_0.b.a.wy, Struct_1(var_0.c.a, var_0.c.b)), Struct_1(var_0.c.a, !var_0.c.b))), arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.e, 199f))))), _wgslsmith_f_op_f32(-2298f + arg_0.x), all(var_0.b.b.zww))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1788f))), arg_0.x), func_3(u_input.c, ~vec4<u32>(u_input.c, u_input.c, u_input.c, 5817u), Struct_3(vec2<f32>(174f, var_0.b.a.x), Struct_1(var_0.a.a, var_0.a.b)), func_3(~u_input.c, ~vec4<u32>(u_input.c, 0u, 27794u, 1u), Struct_3(var_0.a.a.ww, Struct_1(var_0.b.a, vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], false, global1[_wgslsmith_index_u32(u_input.c, 10u)], var_0.b.b.x))), func_3(4294967295u, vec4<u32>(12700u, 12698u, u_input.c, 14877u), Struct_3(var_0.c.a.wy, Struct_1(vec4<f32>(var_0.e, arg_0.x, -967f, -1000f), vec4<bool>(global1[_wgslsmith_index_u32(0u, 10u)], var_0.d.x, false, true))), Struct_1(var_0.c.a, vec4<bool>(var_0.b.b.x, var_0.c.b.x, var_0.c.b.x, true)))))), func_2(global0[_wgslsmith_index_u32(0u, 6u)]));
    global2 = array<vec3<f32>, 1>();
    global0 = array<Struct_4, 6>();
    let var_2 = 1000f;
    return var_1.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f + 1000f)))), -307f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1077f + -1000f) * _wgslsmith_f_op_f32(max(147f, 321f)))), _wgslsmith_f_op_f32(-1239f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-310f))))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1681f, -190f) + vec2<f32>(-270f, -189f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_div_vec3_i32(~(-vec3<i32>(-35118i, 1i, u_input.a.x)), vec3<i32>(24189i, u_input.a.x, -u_input.b)))), true));
    let var_1 = _wgslsmith_div_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, u_input.c))) & max(firstTrailingBit(vec2<u32>(1u, 66650u)) << (~vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), vec2<u32>(~u_input.c, min(33019u, u_input.c))), ~(~min(vec2<u32>(4294967295u, u_input.c) >> (vec2<u32>(37170u, u_input.c) % vec2<u32>(32u)), vec2<u32>(u_input.c, u_input.c))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(48506u, var_1.x, max(var_1.x, ~abs(4294967295u))), 6u)];
    global1 = array<bool, 10>();
    global2 = array<vec3<f32>, 1>();
    var var_3 = ~select(_wgslsmith_mod_i32(-18116i, 51555i), min(min(u_input.b << (1u % 32u), _wgslsmith_dot_vec3_i32(var_2.b, var_2.b)), 1i), any(!select(vec2<bool>(var_2.e.b.x, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)]), vec2<bool>(var_2.a.b.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), abs(var_1)), ~var_1.x >> (firstLeadingBit(var_1.x) % 32u)));
}

