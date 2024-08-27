struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(0u, 1u, 67131u, 1512u, 4294967295u, 9400u, 1u, 0u, 4294967295u, 4294967295u, 4294967295u);

var<private> global1: i32;

var<private> global2: u32;

var<private> global3: array<vec3<i32>, 4>;

var<private> global4: Struct_1 = Struct_1(1i, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = any(select(vec4<bool>((arg_0.x >> (33515u % 32u)) < u_input.c, global4.b, min(global4.a, arg_1.x) > abs(92124i), select(!global4.b, global4.b, global4.b == true)), vec4<bool>(all(!vec4<bool>(true, true, false, global4.b)), -u_input.b.x >= firstTrailingBit(arg_1.x), global4.b, global4.b), true));
    var var_1 = !var_0;
    global1 = _wgslsmith_dot_vec2_i32(-select(~arg_1, vec2<i32>(-2147483647i, u_input.b.x), !vec2<bool>(global4.b, false)), (vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -2556i)) ^ (u_input.b.zx ^ arg_1)) ^ ~0i;
    global4 = Struct_1(-(~((arg_1.x >> (1u % 32u)) | abs(arg_1.x))), true);
    let var_2 = all(select(select(!select(vec4<bool>(var_0, false, global4.b, var_0), vec4<bool>(var_0, true, true, global4.b), true), select(!vec4<bool>(false, global4.b, global4.b, global4.b), select(vec4<bool>(global4.b, true, var_0, false), vec4<bool>(true, false, var_0, false), vec4<bool>(var_0, false, true, global4.b)), select(vec4<bool>(var_0, true, false, false), vec4<bool>(global4.b, false, false, false), vec4<bool>(var_0, true, global4.b, var_0))), vec4<bool>(any(vec2<bool>(var_0, true)), true && var_0, true, select(global4.b, false, global4.b))), !select(vec4<bool>(true, false, var_0, var_0), !vec4<bool>(var_0, global4.b, var_0, var_0), !var_0), select(var_0, any(!vec4<bool>(var_0, var_0, var_0, global4.b)), !global4.b)));
    return ~(~_wgslsmith_mult_u32(87121u, arg_0.x));
}

fn func_2() -> Struct_1 {
    return Struct_1(2147483647i >> ((abs(0u & u_input.a) & 0u) % 32u), func_3(select(~vec4<u32>(u_input.c, u_input.a, 1u, global0[_wgslsmith_index_u32(u_input.c, 11u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 11u)], u_input.c, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(6129u, 11u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 11u)], 14144u, u_input.a, 4294967295u), true), countOneBits(u_input.b.xz ^ u_input.b.zx)) != 12841u);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_3(((countOneBits(vec2<u32>(u_input.c, 1u)) & vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(75162u, 11u)])) ^ vec2<u32>(99858u, 4294967295u)) >> (vec2<u32>(global0[_wgslsmith_index_u32(~1u, 11u)], max(10397u, countOneBits(51553u))) % vec2<u32>(32u)), ~min(vec2<i32>(-236i, 13476i) ^ ~u_input.b.yy, abs(select(vec2<i32>(-1i, 2147483647i), vec2<i32>(arg_1.a, 9584i), vec2<bool>(global4.b, true)))), Struct_2(arg_1));
    let var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-298f, 271f)));
    var var_3 = vec4<bool>((var_1.a.b && (false & (u_input.b.x == -6071i))) & false, all(select(vec2<bool>(select(arg_1.b, true, false), true), vec2<bool>(!global4.b, !global4.b), vec2<bool>(false, arg_1.b))), arg_2.x > 1000f, !any(!select(vec4<bool>(arg_1.b, var_0.c.a.b, var_0.c.a.b, global4.b), vec4<bool>(false, global4.b, var_0.c.a.b, global4.b), vec4<bool>(false, global4.b, false, false))));
    var_2 = -1000f;
    return Struct_3(var_0.a, u_input.b.yx & reverseBits(vec2<i32>(13891i, 1i)), Struct_2(var_1.a));
}

fn func_1() -> vec4<u32> {
    global1 = global4.a;
    var var_0 = func_4(abs(countOneBits(firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.b.x, global4.a, u_input.b.x, -55158i))))), func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1177f, 1711f), vec2<f32>(-1492f, -577f), true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1138f, -160f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) + vec2<f32>(2974f, 721f))), vec2<bool>(all(vec2<bool>(global4.b, true)), global4.b)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-901f, -1877f)), -1292f));
    let var_2 = ~2147483647i;
    let var_3 = ~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, ~79278u, u_input.c | 38086u), max(~vec3<u32>(u_input.a, 79909u, var_0.a.x), countOneBits(vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(2493u, 11u)])))));
    return firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(var_0.a.x, var_3.x), 1u), 11u)], u_input.c, ~(~0u), _wgslsmith_mod_u32(1u, ~(var_0.a.x << (global0[_wgslsmith_index_u32(34756u, 11u)] % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(func_1(), vec4<u32>(~func_1().x, ~4294967295u, global0[_wgslsmith_index_u32(0u, 11u)], 110112u)), select(countOneBits(vec4<u32>(u_input.a, u_input.c, 0u, global0[_wgslsmith_index_u32(u_input.a, 11u)])), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(20081u, 11u)], 3729u, u_input.a), !vec4<bool>(true, global4.b, false, global4.b)), global4.b) << (~abs(vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34386u, 11u)], 11u)], 1u, 1u) & vec4<u32>(u_input.c, u_input.c, 47167u, 1u)) % vec4<u32>(32u)));
    var var_1 = u_input.b.x;
    let var_2 = func_4(vec4<i32>(reverseBits(_wgslsmith_mod_i32(-1i, -79495i) & max(u_input.b.x, -1i)), func_4(max(vec4<i32>(2147483647i, -40145i, -35342i, 38592i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, global4.a, 0i, u_input.b.x), vec4<i32>(2147483647i, global4.a, 2925i, -35207i))), Struct_1(-983i, func_4(vec4<i32>(global4.a, global4.a, u_input.b.x, u_input.b.x), Struct_1(0i, false), vec2<f32>(126f, 824f)).c.a.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(648f, 165f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, -1522f)), !vec2<bool>(true, global4.b)))).c.a.a, 14420i, ~u_input.b.x), func_4(vec4<i32>(u_input.b.x, 1i, 20433i >> (func_4(vec4<i32>(2389i, -27993i, 1i, -41543i), Struct_1(-2147483647i, false), vec2<f32>(1458f, -1026f)).a.x % 32u), ~_wgslsmith_sub_i32(u_input.b.x, -13426i)), Struct_1(abs(max(24356i, global4.a)), func_2().b || !global4.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1652f, -799f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(516f, -1819f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-868f, 1716f)))))).c.a, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-226f - _wgslsmith_f_op_f32(min(1617f, 1823f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f * 220f)))))).c;
    var var_3 = Struct_4(_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~1u), 11u)]), all(vec4<bool>(func_2().b, !(false | global4.b), true, any(select(vec4<bool>(var_2.a.b, false, var_2.a.b, var_2.a.b), vec4<bool>(false, var_2.a.b, false, var_2.a.b), var_2.a.b)))), func_2().b, func_4(vec4<i32>(firstTrailingBit(firstTrailingBit(8548i)), var_2.a.a, _wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, global4.a, 10409i, -2936i), vec4<i32>(-2147483647i, var_2.a.a, 2147483647i, -8024i), global4.b), max(vec4<i32>(-5083i, -36553i, var_2.a.a, global4.a), vec4<i32>(12224i, u_input.b.x, var_2.a.a, 29896i))), ~(~(-1i))), var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-286f, -407f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(838f, -318f))))))));
    var_1 = var_3.d.c.a.a;
    var_1 = -u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(~u_input.b.xy, abs(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 41558i), vec2<i32>(0i, -32127i), u_input.b.xy), vec2<i32>(global4.a, 6946i), vec2<bool>(true, global4.b)))), vec4<f32>(-646f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f + -625f))), 1011f, _wgslsmith_f_op_f32(max(-842f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2430f, -298f) + _wgslsmith_f_op_f32(f32(-1f) * -2264f))))));
}

