struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec3<bool>(true, false, false), 174f, vec4<i32>(0i, 8332i, 14733i, 38312i)), Struct_3(vec3<bool>(false, false, false), 245f, vec4<i32>(-35313i, i32(-2147483648), 4075i, -68276i)), Struct_3(vec3<bool>(true, true, false), -1447f, vec4<i32>(0i, 29460i, i32(-2147483648), 1i)), Struct_3(vec3<bool>(false, false, true), 1055f, vec4<i32>(i32(-2147483648), 22538i, 1i, 1i)), Struct_3(vec3<bool>(true, false, true), 859f, vec4<i32>(i32(-2147483648), 1i, -23068i, 0i)), Struct_3(vec3<bool>(true, false, true), -1531f, vec4<i32>(24827i, -1i, i32(-2147483648), 1i)), Struct_3(vec3<bool>(false, true, false), 506f, vec4<i32>(8366i, -49328i, -11143i, i32(-2147483648))));

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: f32 = 1087f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    let var_0 = global1.e.zx;
    var var_1 = global1.b;
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.e))), vec2<bool>(!global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + _wgslsmith_f_op_f32(abs(-1904f))) <= var_0.x), -_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.b, -42623i, global1.b), vec3<i32>(u_input.a.x, -18445i, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(global1.a, 24478i, global1.a))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 47985i, u_input.a.x), vec3<i32>(15837i, -1i, 0i)), -vec3<i32>(global1.b, 18418i, 36033i), -vec3<i32>(global1.b, global1.a, 7636i))), global1.e.xzw, Struct_2(_wgslsmith_mod_vec3_u32(~(vec3<u32>(0u, arg_0.x, 9143u) | vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.x, 48328u, 4906u), vec3<u32>(arg_0.x, arg_0.x, arg_0.x)))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(global1.e)))), vec2<bool>(any(vec2<bool>(global1.c, global1.c)), 48965u != abs(arg_0.x << (var_2.e.a.x % 32u))), var_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_2.d))))), var_2.e);
    global1 = Struct_1(var_3.c.x, global1.a, !any(!vec3<bool>(true, global1.c, global1.c)), _wgslsmith_f_op_f32(f32(-1f) * -2721f), vec4<f32>(-276f, 215f, var_0.x, -2021f));
    return ~(~0u);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global1 = Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global1.b, -1i, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 44941i)) >> (45119u % 32u), _wgslsmith_clamp_i32(firstLeadingBit(global1.b), select(2147483647i, ~global1.a, false), -2147483647i), true, 382f, vec4<f32>(1345f, _wgslsmith_f_op_f32(global1.d - global1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.d, _wgslsmith_f_op_f32(ceil(513f))))), _wgslsmith_f_op_f32(step(-779f, -382f))));
    global2 = _wgslsmith_mod_u32(arg_0.x, 41365u);
    var var_0 = u_input.a;
    var var_1 = Struct_1(var_0.x, select(-1i, u_input.a.x, global1.c), abs(i32(-1i) * -u_input.a.x) >= 2147483647i, global1.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(global1.e.x, global1.e.x), global1.e.x, _wgslsmith_f_op_f32(-global1.e.x), global1.d))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, -503f, global1.d, -343f) - vec4<f32>(global1.d, -1152f, -493f, global1.d)), _wgslsmith_f_op_vec4_f32(ceil(global1.e)), vec4<bool>(global1.c, true, global1.c, global1.c))))));
    let var_2 = Struct_1(i32(-1i) * -62033i, abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(46489i, -20956i, 2147483647i), vec3<i32>(0i, global1.b, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)) << (_wgslsmith_div_u32(86549u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 0u, arg_0.x, arg_0.x), vec4<u32>(0u, 0u, arg_0.x, 5209u))) % 32u)), false, -281f, var_1.e);
    return _wgslsmith_f_op_f32(abs(var_1.d));
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = !vec3<bool>(false, all(!(!vec4<bool>(true, false, arg_0, true))), true);
    var var_1 = Struct_2(vec3<u32>(1u, countOneBits(1u), 1u >> (1u % 32u)));
    let var_2 = -(u_input.a.x << (~_wgslsmith_clamp_u32(var_1.a.x, 4294967295u, 1u) % 32u)) ^ (~global1.b ^ (firstLeadingBit(firstLeadingBit(u_input.a.x)) >> ((abs(var_1.a.x) ^ func_2(vec2<u32>(47744u, var_1.a.x), -879f)) % 32u)));
    let var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(func_3(var_1.a.xy)), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1553f, 578f, global1.c))))), _wgslsmith_f_op_f32(round(618f)), _wgslsmith_div_f32(-172f, _wgslsmith_f_op_f32(select(-1215f, -387f, any(vec2<bool>(false, global1.c)))))), vec2<bool>(!(select(true, global1.c, true) | (var_0.x & true)), global1.c), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_2, var_2, u_input.a.x) ^ vec4<i32>(-2147483647i, var_2, 4901i, 3950i), vec4<i32>(global1.b, 52384i, global1.a, u_input.a.x) << (vec4<u32>(0u, 20774u, var_1.a.x, 1u) % vec4<u32>(32u))) & 0i, -1i, 88727i ^ max(global1.b, -56138i)), vec3<f32>(1241f, global1.d, -426f), Struct_2(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, 4294967295u), vec3<u32>(77686u, 4294967295u, 4294967295u)) ^ vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u), firstLeadingBit(var_1.a.x), ~var_1.a.x)));
    return 8686u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(1u, func_1(global1.c, global1.e.x));
    global0 = array<Struct_3, 7>();
    let var_1 = Struct_1(-countOneBits(-51498i), global1.b, false, 361f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, -493f, -1030f, global1.e.x) - _wgslsmith_f_op_vec4_f32(-global1.e)), vec4<f32>(_wgslsmith_f_op_f32(-505f - 403f), global1.d, global1.d, _wgslsmith_div_f32(933f, global1.e.x)))) + _wgslsmith_f_op_vec4_f32(round(global1.e))));
    var var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(var_1.e)))), _wgslsmith_f_op_vec4_f32(-global1.e), select(vec4<bool>(true, true, global1.c, global1.c), select(vec4<bool>(false, var_1.c, false, var_1.c), vec4<bool>(var_1.c, var_1.c, true, false), false), true))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-330f, 908f, global1.e.x, var_1.e.x), _wgslsmith_f_op_vec4_f32(var_1.e + vec4<f32>(-1000f, global1.d, global1.e.x, global1.d)), true))))), select(select(!(!vec2<bool>(false, var_1.c)), select(vec2<bool>(var_1.c, true), vec2<bool>(var_1.c, false), select(vec2<bool>(true, global1.c), vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, true))), !all(vec3<bool>(false, var_1.c, var_1.c))), select(vec2<bool>(!var_1.c, true), !vec2<bool>(true, var_1.c), !any(vec2<bool>(global1.c, global1.c))), vec2<bool>(all(select(vec4<bool>(false, global1.c, false, var_1.c), vec4<bool>(true, var_1.c, global1.c, var_1.c), var_1.c)), !all(vec2<bool>(false, false)))), _wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(~vec3<i32>(-26004i, global1.a, 2147483647i), vec3<i32>(var_1.b, global1.b, 2147483647i) << (vec3<u32>(4294967295u, 31061u, var_0) % vec3<u32>(32u)))), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(14666i, u_input.a.x, var_1.a), vec3<i32>(global1.a, global1.a, u_input.a.x)) ^ -vec3<i32>(u_input.a.x, var_1.b, global1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1069f, var_1.e.x, 704f), global1.e.wwz))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-558f, -1764f, -131f) - _wgslsmith_f_op_vec3_f32(var_1.e.xwy + var_1.e.xyy)))), Struct_2(vec3<u32>(~0u, var_0 & 109954u, max(0u, 54965u)) << (vec3<u32>(~var_0, 96849u >> (var_0 % 32u), var_0) % vec3<u32>(32u))));
    var var_3 = -var_2.c;
    var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-var_1.e), var_2.b, ((var_2.c | _wgslsmith_div_vec3_i32(vec3<i32>(38094i, var_3.x, u_input.a.x), vec3<i32>(var_1.a, u_input.a.x, 1i))) | abs(vec3<i32>(2147483647i, var_1.a, global1.b) << (vec3<u32>(var_2.e.a.x, 84799u, 8222u) % vec3<u32>(32u)))) >> ((var_2.e.a | var_2.e.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-629f, var_2.a.x), _wgslsmith_f_op_f32(step(var_1.d, 926f)), -227f), vec3<f32>(-1486f, _wgslsmith_f_op_f32(-var_1.d), 324f))), Struct_2(vec3<u32>(43017u, 4294967295u, min(~109400u, 1u))));
    var_3 = vec3<i32>(~var_1.b, u_input.a.x, -var_2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec3<i32>(_wgslsmith_add_i32(var_2.c.x, -2147483647i), i32(-1i) * -2147483647i, -1i), vec3<i32>(-global1.b, global1.b, -_wgslsmith_add_i32(global1.a, global1.a))), _wgslsmith_clamp_i32(select(~(global1.a ^ 30968i), 27396i, true), 11638i, _wgslsmith_mult_i32(var_2.c.x, reverseBits(~var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -790f) + _wgslsmith_f_op_f32(1088f - -1013f)), abs(i32(-1i) * -2147483647i));
}

