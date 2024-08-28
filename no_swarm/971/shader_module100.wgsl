struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(882f, 28008i, vec4<bool>(true, false, true, true), true), Struct_1(-743f, 0i, vec4<bool>(true, true, false, false), false), Struct_1(1147f, i32(-2147483648), vec4<bool>(false, false, false, false), true), Struct_1(-1549f, i32(-2147483648), vec4<bool>(true, true, false, false), true), Struct_1(-1219f, i32(-2147483648), vec4<bool>(false, false, true, false), true), Struct_1(706f, 31859i, vec4<bool>(true, false, false, true), true), Struct_1(-1000f, 0i, vec4<bool>(false, true, false, false), true));

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_1(165f, -43368i, vec4<bool>(false, true, false, false), true), false), Struct_4(Struct_1(901f, 83941i, vec4<bool>(true, true, true, false), true), false), Struct_4(Struct_1(-957f, 8589i, vec4<bool>(true, true, false, false), false), true), Struct_4(Struct_1(160f, 66817i, vec4<bool>(true, false, false, true), true), true), Struct_4(Struct_1(-384f, 0i, vec4<bool>(true, false, false, true), false), true), Struct_4(Struct_1(1106f, -16467i, vec4<bool>(false, false, false, false), false), false), Struct_4(Struct_1(-531f, 2147483647i, vec4<bool>(true, false, true, false), true), false), Struct_4(Struct_1(-400f, -48583i, vec4<bool>(true, true, true, false), false), false), Struct_4(Struct_1(-1000f, 19035i, vec4<bool>(false, false, false, false), true), false), Struct_4(Struct_1(428f, i32(-2147483648), vec4<bool>(true, false, true, true), true), true), Struct_4(Struct_1(-885f, -27720i, vec4<bool>(true, true, true, true), true), true), Struct_4(Struct_1(1063f, -1i, vec4<bool>(false, true, true, false), false), false), Struct_4(Struct_1(155f, -1i, vec4<bool>(false, true, true, true), false), false), Struct_4(Struct_1(-492f, 0i, vec4<bool>(false, false, true, false), true), false), Struct_4(Struct_1(183f, 1i, vec4<bool>(true, true, false, true), false), true), Struct_4(Struct_1(-1231f, -50418i, vec4<bool>(true, false, false, false), true), true), Struct_4(Struct_1(145f, 0i, vec4<bool>(true, true, true, true), true), true), Struct_4(Struct_1(-803f, 35971i, vec4<bool>(false, false, false, true), false), true), Struct_4(Struct_1(-723f, 2147483647i, vec4<bool>(false, true, false, true), false), false), Struct_4(Struct_1(1368f, 68879i, vec4<bool>(false, true, false, false), true), false), Struct_4(Struct_1(-455f, -19919i, vec4<bool>(false, true, true, true), false), false), Struct_4(Struct_1(226f, 2147483647i, vec4<bool>(true, true, true, false), false), false), Struct_4(Struct_1(-1347f, 2147483647i, vec4<bool>(false, false, false, true), false), true), Struct_4(Struct_1(-577f, -23641i, vec4<bool>(false, false, true, true), false), false), Struct_4(Struct_1(512f, 0i, vec4<bool>(true, true, true, true), true), true), Struct_4(Struct_1(-1032f, 7050i, vec4<bool>(false, false, false, true), false), false), Struct_4(Struct_1(386f, 0i, vec4<bool>(false, true, true, true), true), false), Struct_4(Struct_1(162f, -1i, vec4<bool>(false, true, false, true), false), true), Struct_4(Struct_1(394f, 19629i, vec4<bool>(true, false, false, false), false), true), Struct_4(Struct_1(2241f, -6843i, vec4<bool>(false, false, true, true), true), false));

var<private> global2: array<f32, 1> = array<f32, 1>(-933f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1121f, arg_2.c.a, arg_1.e.a)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1885f, -868f, 476f), vec3<f32>(696f, 1000f, arg_2.b.x), arg_2.c.c.xwx))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.d.x, arg_1.c.a, arg_2.e.a), vec3<f32>(arg_1.d.x, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -532f))))));
    let var_1 = Struct_5(vec3<i32>(-(~arg_1.a.x), max(select(~1i, -1i, any(vec4<bool>(false, arg_1.e.d, true, arg_1.c.c.x))), ~select(arg_0.x, arg_1.e.b, arg_2.c.c.x)), -_wgslsmith_mod_i32(select(arg_2.c.b, arg_2.a.x, arg_2.e.d), arg_0.x)), arg_2, _wgslsmith_mod_i32(-2147483647i, 1i & arg_1.a.x), arg_2.e.c, Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.yy), var_0.xz)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.e.a, global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), arg_2.b, arg_1.b.x < arg_2.c.a)), true)), arg_2.c, arg_2.d, global0[_wgslsmith_index_u32(~u_input.a.x, 7u)]));
    global2 = array<f32, 1>();
    global2 = array<f32, 1>();
    return _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x << (u_input.a.x % 32u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 27905u))), ~u_input.a.x), vec4<u32>(47264u, u_input.a.x, ~_wgslsmith_sub_u32(8214u ^ u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)), _wgslsmith_clamp_u32(~(2445u >> (u_input.a.x % 32u)), 2951u, ~(17952u << (u_input.a.x % 32u)))));
}

fn func_2(arg_0: Struct_5, arg_1: u32, arg_2: i32) -> vec2<f32> {
    global1 = array<Struct_4, 30>();
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(arg_1, 1u)], firstTrailingBit(~(-(~2147483647i))), vec4<bool>(arg_0.e.e.c.x, arg_0.d.x, arg_0.b.c.d, false), all(!arg_0.e.e.c.zwz));
    let var_1 = arg_0.e;
    let var_2 = -182f;
    var var_3 = max(func_3(vec4<i32>(~(-6023i), abs(1625i << (0u % 32u)), _wgslsmith_sub_i32(1i, ~(-16375i)), ~(-31143i)), Struct_2(vec4<i32>(29168i, -35720i & arg_2, ~arg_2, arg_2), _wgslsmith_f_op_vec2_f32(trunc(var_1.d)), Struct_1(-1567f, arg_2, !arg_0.b.e.c, true), vec2<f32>(_wgslsmith_f_op_f32(min(var_0.a, 1000f)), _wgslsmith_f_op_f32(var_1.b.x - var_0.a)), global0[_wgslsmith_index_u32(88074u, 7u)]), Struct_2(vec4<i32>(countOneBits(arg_2), 0i, -2147483647i, _wgslsmith_mod_i32(var_1.a.x, arg_0.a.x)), arg_0.e.d, var_1.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(arg_0.b.b)), _wgslsmith_f_op_vec2_f32(-var_1.d))), var_1.c)), _wgslsmith_sub_vec4_u32(func_3(countOneBits(var_1.a) ^ vec4<i32>(arg_0.a.x, var_1.a.x, arg_2, 4639i), arg_0.b, arg_0.b), vec4<u32>(u_input.a.x, 60860u, 4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(60537u, arg_1), u_input.a), u_input.a))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f * 1658f)), 301f);
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_2(-firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), min(vec4<i32>(20401i, 0i, -42049i, 0i), vec4<i32>(2147483647i, -52629i, 33518i, 2147483647i)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_5(vec3<i32>(-1i, 13196i, 30066i), Struct_2(vec4<i32>(-68880i, 51881i, 2147483647i, 2147483647i), vec2<f32>(global2[_wgslsmith_index_u32(41430u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)]), global0[_wgslsmith_index_u32(u_input.a.x, 7u)], vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(0u, 1u)]), Struct_1(global2[_wgslsmith_index_u32(44817u, 1u)], 2147483647i, vec4<bool>(true, true, true, false), false)), 18959i, vec4<bool>(false, false, true, false), Struct_2(vec4<i32>(4304i, 9881i, -14501i, 15726i), vec2<f32>(-710f, 888f), global0[_wgslsmith_index_u32(u_input.a.x, 7u)], vec2<f32>(665f, -142f), global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), 20745u, 33999i)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]) + vec2<f32>(global2[_wgslsmith_index_u32(16257u, 1u)], -111f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(738f, global2[_wgslsmith_index_u32(u_input.a.x, 1u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]) + vec2<f32>(global2[_wgslsmith_index_u32(54126u, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-670f, global2[_wgslsmith_index_u32(4294967295u, 1u)]))))), global0[_wgslsmith_index_u32(~1u, 7u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(7229u, 1u)], _wgslsmith_f_op_vec2_f32(func_2(Struct_5(vec3<i32>(-2147483647i, 26633i, 81682i), Struct_2(vec4<i32>(-6791i, 1i, -53156i, 7712i), vec2<f32>(748f, -131f), Struct_1(107f, -1i, vec4<bool>(false, false, true, true), true), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), 23475i, vec4<bool>(true, false, false, true), Struct_2(vec4<i32>(-1i, -7163i, 6087i, 2147483647i), vec2<f32>(-391f, 518f), Struct_1(global2[_wgslsmith_index_u32(8011u, 1u)], 2147483647i, vec4<bool>(true, true, true, false), true), vec2<f32>(-1558f, -498f), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -1i, vec4<bool>(true, true, true, true), true))), ~40643u, _wgslsmith_add_i32(46336i, 0i))).x)), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, ~(4294967295u >> (0u % 32u))), 1u)], 1i, vec4<bool>(any(vec4<bool>(true, false, true, false)), false, !any(vec4<bool>(true, false, false, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(753f)), -_wgslsmith_clamp_i32(-1i, 2147483647i, var_0.e.b ^ 1i), vec4<bool>(any(select(var_0.c.c.wwz, vec3<bool>(false, true, false), vec3<bool>(true, var_0.c.d, false))), true, true, all(var_0.c.c)), !(var_0.e.d | true)), _wgslsmith_div_u32(~1u, firstTrailingBit(u_input.a.x)) > ~15298u);
    var_0 = Struct_2(reverseBits(select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.b, 52309i, var_0.c.b, var_0.a.x) & vec4<i32>(var_0.a.x, -25880i, var_0.a.x, var_1.a.b), abs(vec4<i32>(-19713i, -46029i, var_0.a.x, var_1.a.b))), _wgslsmith_sub_vec4_i32(max(var_0.a, vec4<i32>(-2147483647i, var_1.a.b, -1i, -36035i)), select(var_0.a, var_0.a, var_1.a.d)), select(var_0.c.c, var_1.a.c, var_0.c.d))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.a, global2[_wgslsmith_index_u32(u_input.a.x, 1u)]))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec2<f32>(var_1.a.a, var_1.a.a)), var_0.b, select(vec2<bool>(var_0.c.d, var_1.a.c.x), var_0.c.c.zy, var_0.e.c.wz)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d - vec2<f32>(var_1.a.a, 275f)) * _wgslsmith_f_op_vec2_f32(max(var_0.b, vec2<f32>(-390f, -662f)))))), Struct_1(-590f, var_1.a.b, select(select(!vec4<bool>(true, false, var_0.e.c.x, var_0.c.c.x), var_1.a.c, var_0.e.d & true), vec4<bool>(false, false, false, var_0.c.c.x), vec4<bool>(127394u <= u_input.a.x, all(vec3<bool>(var_0.e.c.x, var_1.a.d, var_1.b)), true, true)), var_1.b), var_0.b, var_1.a);
    let var_2 = Struct_2(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0.a.zwx, vec3<i32>(-13078i, var_0.e.b, -2147483647i)), var_0.a.ywz ^ var_0.a.xxw), var_1.a.b), _wgslsmith_dot_vec3_i32(max(var_0.a.yzx | var_0.a.zzy, min(vec3<i32>(var_1.a.b, var_0.a.x, 378i), vec3<i32>(var_0.a.x, var_0.c.b, -2147483647i))), vec3<i32>(var_1.a.b, -11448i, ~(-2147483647i))), min(_wgslsmith_div_i32(~(-2147483647i), ~var_1.a.b), var_1.a.b), 0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(768f, var_1.a.a)) * _wgslsmith_div_f32(-1000f, var_0.e.a)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-229f, var_1.a.a) - _wgslsmith_div_f32(248f, global2[_wgslsmith_index_u32(31779u, 1u)]))), -(select(-72635i, var_0.e.b, true) << (~0u % 32u)), select(select(var_1.a.c, var_0.c.c, select(vec4<bool>(var_0.c.c.x, true, var_0.c.c.x, false), var_1.a.c, true)), vec4<bool>(any(var_0.c.c), true, all(var_1.a.c.yxw), var_0.e.c.x), select(!var_0.c.c, vec4<bool>(true, var_1.a.c.x, var_1.b, false), var_0.e.d)), all(vec4<bool>(var_0.e.d, any(vec2<bool>(true, var_1.a.d)), any(vec2<bool>(var_0.c.c.x, false)), var_1.a.d))), _wgslsmith_f_op_vec2_f32(max(var_0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1.a.a, var_1.a.a), -551f)))), global0[_wgslsmith_index_u32(~u_input.a.x, 7u)]);
    global2 = array<f32, 1>();
    return var_0.a.zxw;
}

fn func_4(arg_0: Struct_5) -> vec3<u32> {
    global0 = array<Struct_1, 7>();
    global1 = array<Struct_4, 30>();
    let var_0 = ~func_3(~arg_0.e.a, arg_0.b, Struct_2(-arg_0.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.e.d - vec2<f32>(234f, arg_0.b.b.x)) - _wgslsmith_f_op_vec2_f32(ceil(arg_0.b.b))), Struct_1(_wgslsmith_f_op_f32(303f * global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), 2147483647i, !arg_0.d, false), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]))), Struct_1(_wgslsmith_f_op_f32(-arg_0.e.e.a), abs(arg_0.a.x), vec4<bool>(true, true, false, arg_0.e.c.d), false))).x;
    let var_1 = _wgslsmith_div_i32(arg_0.e.a.x, arg_0.e.a.x) < (arg_0.a.x | -(~_wgslsmith_sub_i32(55542i, 98612i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(arg_0.e.b));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x ^ u_input.a.x, u_input.a.x) ^ _wgslsmith_sub_u32(select(0u, 1u, true), _wgslsmith_add_u32(0u, u_input.a.x)), func_3(_wgslsmith_mult_vec4_i32(abs(arg_0.b.a), arg_0.e.a), Struct_2(select(vec4<i32>(-23790i, 0i, arg_0.b.e.b, 28652i), arg_0.e.a, vec4<bool>(false, false, false, var_1)), var_2, arg_0.b.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0.e.c.a) - vec2<f32>(global2[_wgslsmith_index_u32(var_0, 1u)], var_2.x)), arg_0.b.e), Struct_2(vec4<i32>(37917i, 1i, -10754i, arg_0.e.c.b) >> (vec4<u32>(0u, 44133u, u_input.a.x, var_0) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.b.x, -688f) + arg_0.b.d), Struct_1(505f, -2147483647i, vec4<bool>(false, false, var_1, arg_0.e.e.c.x), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(360f, arg_0.b.d.x) - vec2<f32>(var_2.x, var_2.x)), Struct_1(1126f, arg_0.b.a.x, vec4<bool>(false, var_1, arg_0.d.x, true), false))).x, ~(~4294967295u)), ~abs(select(vec3<u32>(0u, var_0, u_input.a.x), vec3<u32>(var_0, var_0, u_input.a.x), arg_0.b.c.c.zzw)) & vec3<u32>(~_wgslsmith_clamp_u32(u_input.a.x, 8810u, 4294967295u), ~1u, 47755u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(vec4<u32>(u_input.a.x, 29956u, u_input.a.x, 79374u))) | select(~abs(vec4<u32>(0u, 4294967295u, u_input.a.x, 1u)), ~vec4<u32>(1u, 37134u, u_input.a.x, u_input.a.x), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true)), func_4(Struct_5(func_1(), Struct_2(vec4<i32>(-21488i, -34664i, -52179i, 0i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(965f, 1188f)), global0[_wgslsmith_index_u32(1u >> (u_input.a.x % 32u), 7u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(29358u, 1u)], 186f)), global0[_wgslsmith_index_u32(46832u, 7u)]), ~1285i, vec4<bool>(true, true, true, true), Struct_2(vec4<i32>(16933i, -67499i, 3584i, -37400i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-246f, 1182f), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<bool>(true, true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 43950u), vec2<u32>(4294967295u, u_input.a.x)), 7u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(40508u, 1u)]) * vec2<f32>(270f, -1555f)), Struct_1(536f, -2147483647i, vec4<bool>(true, false, true, true), true)))), countOneBits(~(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a.x ^ (_wgslsmith_mult_u32(1u, u_input.a.x) >> (abs(u_input.a.x) % 32u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 772f), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.a.x, 1u)])), -653f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 1u)] * global2[_wgslsmith_index_u32(u_input.a.x, 1u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(55405u, 1u)], 579f, global2[_wgslsmith_index_u32(30491u, 1u)]) * vec4<f32>(3087f, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)])))))));
}

