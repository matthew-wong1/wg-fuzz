struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_2(Struct_1(vec3<f32>(1700f, -1365f, 935f), vec3<u32>(0u, 0u, 39891u)), Struct_1(vec3<f32>(472f, -936f, 898f), vec3<u32>(23538u, 35623u, 28977u)), 0u, 46915i), vec2<i32>(0i, i32(-2147483648)), vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(vec3<f32>(320f, 451f, 654f), vec3<u32>(11625u, 12313u, 19279u)), Struct_1(vec3<f32>(1341f, -283f, 864f), vec3<u32>(22477u, 0u, 32361u)), 0u, -62247i), vec2<i32>(-35408i, -43007i), vec2<bool>(true, true), vec3<bool>(false, true, true)), Struct_3(Struct_2(Struct_1(vec3<f32>(1037f, 1000f, 844f), vec3<u32>(0u, 4635u, 7517u)), Struct_1(vec3<f32>(-1439f, -730f, 173f), vec3<u32>(35234u, 4294967295u, 0u)), 42625u, -2842i), vec2<i32>(-21611i, 1i), vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(vec3<f32>(-133f, -446f, -1000f), vec3<u32>(29491u, 1u, 1u)), Struct_1(vec3<f32>(1640f, 885f, -1433f), vec3<u32>(4294967295u, 0u, 21642u)), 32354u, 36494i), vec2<i32>(18244i, -44909i), vec2<bool>(false, true), vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(vec3<f32>(-1895f, -382f, 184f), vec3<u32>(72065u, 42969u, 4294967295u)), Struct_1(vec3<f32>(-102f, -1610f, 1437f), vec3<u32>(6041u, 12302u, 1u)), 1u, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<bool>(false, false), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(vec3<f32>(-2039f, 831f, -561f), vec3<u32>(0u, 39256u, 92936u)), Struct_1(vec3<f32>(167f, -1390f, 382f), vec3<u32>(4294967295u, 0u, 22787u)), 4294967295u, -15798i), vec2<i32>(-16245i, i32(-2147483648)), vec2<bool>(true, false), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(vec3<f32>(-619f, -745f, 191f), vec3<u32>(50318u, 4294967295u, 50127u)), Struct_1(vec3<f32>(-1515f, 1000f, 177f), vec3<u32>(4294967295u, 1u, 4294967295u)), 0u, i32(-2147483648)), vec2<i32>(-26890i, 0i), vec2<bool>(true, true), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(vec3<f32>(2671f, -1689f, 316f), vec3<u32>(1u, 0u, 9328u)), Struct_1(vec3<f32>(1125f, 2301f, 162f), vec3<u32>(1u, 122188u, 1u)), 25495u, -4446i), vec2<i32>(0i, 2147483647i), vec2<bool>(false, false), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(vec3<f32>(-609f, -1000f, 267f), vec3<u32>(0u, 34658u, 4981u)), Struct_1(vec3<f32>(-755f, 1014f, -278f), vec3<u32>(1u, 0u, 0u)), 23463u, 53365i), vec2<i32>(28490i, 1i), vec2<bool>(true, true), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(vec3<f32>(196f, -401f, -503f), vec3<u32>(4294967295u, 57682u, 1u)), Struct_1(vec3<f32>(-261f, 2700f, -1941f), vec3<u32>(1640u, 4997u, 115548u)), 0u, i32(-2147483648)), vec2<i32>(-12519i, -1i), vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(vec3<f32>(-1018f, 1907f, 1130f), vec3<u32>(0u, 53649u, 1u)), Struct_1(vec3<f32>(-1000f, -1853f, -262f), vec3<u32>(10980u, 1u, 4294967295u)), 58297u, 0i), vec2<i32>(2121i, 2147483647i), vec2<bool>(true, true), vec3<bool>(false, false, false)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<Struct_3, 11>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -607f);
    var var_1 = ~(reverseBits(~(1u | arg_0)) >> (~(~4294967295u) % 32u));
    let var_2 = vec3<bool>(!all(vec3<bool>(false, -1549f >= var_0, true)), (arg_0 ^ 1u) == arg_0, false);
    var var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(sign(1039f))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1167f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~arg_0.x)), _wgslsmith_f_op_f32(-arg_3.a.b.a.x))) + arg_1.a.a.x);
    global0 = array<Struct_3, 11>();
    let var_1 = _wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(arg_3.b & vec2<i32>(45255i, arg_3.b.x), abs(arg_3.b))), max(select(vec2<i32>(u_input.a.x, -18228i), u_input.a, arg_3.d.zx), vec2<i32>(abs(arg_3.a.d), reverseBits(arg_1.d)))) << (~arg_3.a.b.b.xx % vec2<u32>(32u));
    var var_2 = ~countOneBits(97894u);
    let var_3 = Struct_2(Struct_1(vec3<f32>(-154f, -102f, 220f), _wgslsmith_div_vec3_u32(abs(arg_1.a.b), arg_3.a.a.b)), arg_3.a.a, ~arg_0.x, ~arg_1.d);
    return firstTrailingBit(countOneBits(reverseBits(vec4<i32>(arg_1.d, reverseBits(arg_3.a.d), ~(-19185i), _wgslsmith_mod_i32(0i, arg_1.d)))));
}

fn func_1(arg_0: Struct_5) -> vec3<i32> {
    var var_0 = true;
    let var_1 = 26246u;
    var var_2 = _wgslsmith_sub_vec4_i32(-_wgslsmith_add_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 9560i), vec4<i32>(-1i, -1i, u_input.a.x, -26626i), vec4<i32>(0i, 1i, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(-51406i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(31494i, u_input.a.x, -2147483647i, 2147483647i))), -abs(func_2(vec4<u32>(4294967295u, 30834u, 59671u, 20775u), Struct_2(Struct_1(vec3<f32>(285f, -1000f, arg_0.a), vec3<u32>(var_1, 31320u, var_1)), Struct_1(vec3<f32>(arg_0.b.x, 2246f, arg_0.b.x), vec3<u32>(10341u, var_1, var_1)), 71916u, -2147483647i), arg_0.b.x, Struct_3(Struct_2(Struct_1(vec3<f32>(2273f, 657f, -1122f), vec3<u32>(var_1, 40279u, 0u)), Struct_1(vec3<f32>(259f, 1208f, arg_0.b.x), vec3<u32>(var_1, var_1, 43589u)), 4294967295u, u_input.a.x), u_input.a, vec2<bool>(true, true), vec3<bool>(false, true, false))) & vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 16538i)));
    var var_3 = _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(var_1, 4294967295u, var_1, 18078u) & vec4<u32>(1u, 0u, 4294967295u, 0u))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1, 4294967295u, 0u), vec4<u32>(75887u, var_1, var_1, var_1))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1)) - arg_0.a)));
    return vec3<i32>(9962i, -(~(~_wgslsmith_dot_vec3_i32(var_2.wwz, vec3<i32>(-1i, 0i, -2147483647i)))), ~(-10709i) >> (var_3.x % 32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_mod_i32(~(-reverseBits(abs(arg_0.x))), ~(0i ^ max(_wgslsmith_dot_vec4_i32(vec4<i32>(-42857i, arg_0.x, -1i, arg_0.x), vec4<i32>(-2147483647i, u_input.a.x, 1i, arg_0.x)), u_input.a.x & u_input.a.x)));
    global0 = array<Struct_3, 11>();
    let var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1377f + -256f) + _wgslsmith_f_op_f32(f32(-1f) * -486f)), 1325f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1495f, 1229f))), ~reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 101661u, 0u), vec3<u32>(arg_2, 61810u, arg_2)))), Struct_1(vec3<f32>(-744f, _wgslsmith_f_op_f32(abs(-1830f)), -819f), ~_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(712u, 6968u, 4294967295u)), ~vec3<u32>(arg_1, arg_1, arg_2))), ~1u >> (0u % 32u), -6789i);
    var var_2 = Struct_3(Struct_2(Struct_1(var_1.a.a, ~vec3<u32>(4294967295u, 0u, 40809u)), var_1.b, arg_2, 13480i), u_input.a, vec2<bool>(_wgslsmith_f_op_f32(var_1.a.a.x * _wgslsmith_div_f32(var_1.b.a.x, 1093f)) < _wgslsmith_f_op_f32(trunc(-1182f)), true), !vec3<bool>(true, !all(vec2<bool>(true, false)), true));
    let var_3 = arg_1;
    return abs(6616u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 11>();
    var var_0 = vec2<u32>(33885u, func_4(~(~func_1(Struct_5(1560f, vec2<f32>(214f, 1593f)))), 46315u, 1u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-693f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -700f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -933f))))) * 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -14584i);
}

