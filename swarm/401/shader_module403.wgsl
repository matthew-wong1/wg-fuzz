struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(-1i, vec4<bool>(false, false, false, false), vec2<i32>(0i, 41255i), 1000f), Struct_4(0i, vec4<bool>(false, false, true, true), vec2<i32>(-1i, 24752i), -892f), Struct_4(-3444i, vec4<bool>(false, false, false, false), vec2<i32>(-41491i, 2147483647i), 537f), Struct_4(9966i, vec4<bool>(true, true, false, false), vec2<i32>(56601i, 54520i), 446f), Struct_4(1i, vec4<bool>(false, true, true, false), vec2<i32>(2147483647i, 1i), 903f), Struct_4(i32(-2147483648), vec4<bool>(true, false, false, false), vec2<i32>(2147483647i, 1i), 387f), Struct_4(2147483647i, vec4<bool>(false, false, false, false), vec2<i32>(0i, -323i), -733f), Struct_4(16574i, vec4<bool>(false, true, true, true), vec2<i32>(1i, 2147483647i), 882f), Struct_4(0i, vec4<bool>(true, true, false, true), vec2<i32>(-18333i, -1i), 1000f), Struct_4(1i, vec4<bool>(true, false, true, true), vec2<i32>(0i, -13459i), -123f), Struct_4(-1i, vec4<bool>(false, true, false, true), vec2<i32>(-70201i, 0i), -1063f), Struct_4(71105i, vec4<bool>(false, false, false, false), vec2<i32>(-1i, -40281i), -1313f), Struct_4(i32(-2147483648), vec4<bool>(false, true, true, true), vec2<i32>(8923i, -13892i), -1711f), Struct_4(-11286i, vec4<bool>(true, false, true, true), vec2<i32>(0i, 40459i), -867f), Struct_4(1i, vec4<bool>(true, true, true, true), vec2<i32>(-14518i, 2147483647i), 635f), Struct_4(0i, vec4<bool>(true, true, true, false), vec2<i32>(7941i, 0i), -1724f), Struct_4(-33538i, vec4<bool>(false, false, true, false), vec2<i32>(-33444i, 51362i), 1185f), Struct_4(-10225i, vec4<bool>(false, false, false, false), vec2<i32>(-13672i, 2867i), 718f), Struct_4(-1i, vec4<bool>(false, true, false, true), vec2<i32>(-1i, -17944i), -307f), Struct_4(-1i, vec4<bool>(false, true, true, false), vec2<i32>(-1i, 4526i), 311f), Struct_4(-1i, vec4<bool>(false, true, true, true), vec2<i32>(-43806i, 52549i), -155f), Struct_4(3015i, vec4<bool>(false, true, true, true), vec2<i32>(i32(-2147483648), -40313i), -1321f), Struct_4(1i, vec4<bool>(true, true, false, true), vec2<i32>(2147483647i, -42209i), -167f));

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(0u, 0u, 4294967295u, 1u)), Struct_1(vec4<bool>(false, false, false, false), vec4<u32>(4294967295u, 57579u, 14754u, 40877u)), Struct_1(vec4<bool>(true, false, false, false), vec4<u32>(28933u, 1u, 43423u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(0u, 7649u, 58550u, 0u)), Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(0u, 1u, 6218u, 4294967295u)), Struct_1(vec4<bool>(true, true, false, false), vec4<u32>(4294967295u, 4294967295u, 1u, 37953u)), Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(4294967295u, 65125u, 0u, 50903u)), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(48763u, 0u, 0u, 1u)), Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(1u, 0u, 20016u, 1u)), Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(1u, 1u, 4294967295u, 115494u)), Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(153u, 0u, 30019u, 95225u)), Struct_1(vec4<bool>(false, true, true, true), vec4<u32>(12278u, 31155u, 4294967295u, 72203u)), Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(27924u, 4294967295u, 4294967295u, 56416u)), Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(23632u, 34536u, 0u, 106422u)));

var<private> global3: i32 = -1007i;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> vec3<u32> {
    return ~(u_input.a >> (countOneBits(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 662u), vec3<u32>(u_input.a.x, 0u, 1u)), u_input.a.x & u_input.a.x)) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = vec2<u32>(1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(63597u, u_input.a.x, arg_2.b.x)), func_2()) | ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(26558u, u_input.a.x, 16651u), vec3<u32>(u_input.a.x, arg_2.b.x, 1u)), arg_2.b.xyw ^ vec3<u32>(u_input.a.x, 0u, u_input.a.x)));
    return _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(arg_0.d)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = Struct_3(arg_0.a.x, Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(func_2().x, _wgslsmith_mod_u32(11499u, 30082u)), vec2<u32>(arg_1.x & 4294967295u, 83227u)), arg_0, _wgslsmith_div_vec3_u32(vec3<u32>(~27298u, u_input.a.x | 40059u, ~0u), vec3<u32>(countOneBits(0u), abs(arg_0.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 25466u, arg_0.b.x), u_input.a)))), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-369f, 1820f, 897f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2177f, 2336f, 760f) - vec3<f32>(-582f, 196f, 287f)))))), arg_0);
    let var_1 = var_0.c.wz;
    let var_2 = Struct_2(u_input.a.xz, Struct_1(!vec4<bool>(all(vec3<bool>(var_0.a, var_0.e.a.x, true)), !arg_0.a.x, var_0.e.a.x, true), reverseBits(arg_0.b << (arg_0.b % vec4<u32>(32u)))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(78993u, arg_0.b.x, 68344u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.e.b.x, 0u, 11979u), var_0.b.c)), var_0.e.b.wxx | vec3<u32>(0u, _wgslsmith_add_u32(arg_0.b.x, 0u), min(0u, 25968u))));
    let var_3 = var_2;
    let var_4 = Struct_3(_wgslsmith_f_op_f32(trunc(-219f)) <= _wgslsmith_f_op_f32(-1329f * _wgslsmith_f_op_f32(max(var_0.c.x, -246f))), var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(657f - var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -676f), 2386f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-191f, var_0.d.x, var_0.c.x, -2155f) - _wgslsmith_div_vec4_f32(vec4<f32>(-149f, 1227f, 639f, -1623f), vec4<f32>(var_0.d.x, var_0.d.x, var_1.x, 522f))), !var_2.b.a))), _wgslsmith_f_op_vec3_f32(trunc(var_0.d)), Struct_1(select(arg_0.a, arg_0.a, false), vec4<u32>(arg_0.b.x, _wgslsmith_mod_u32(arg_0.b.x, ~18860u), min(0u, var_3.a.x), _wgslsmith_add_u32(~var_0.b.a.x, var_2.c.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -498f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1791f, 1000f, -626f), vec3<f32>(294f, -140f, -468f), vec3<bool>(false, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(2517f)), -2008f, _wgslsmith_f_op_f32(max(-544f, 375f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, 787f, -337f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(345f)), _wgslsmith_f_op_f32(func_1(Struct_4(-2147483647i, vec4<bool>(false, true, false, false), vec2<i32>(40217i, -16071i), 1000f), vec3<i32>(-15605i, 18574i, -2147483647i), global2[_wgslsmith_index_u32(0u, 14u)])), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(1u, u_input.a.x, 32592u, u_input.a.x)), u_input.a, vec4<i32>(-11968i, 1i, 1i, -26438i)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(235f)), _wgslsmith_f_op_f32(min(1260f, 1304f)), _wgslsmith_div_f32(1104f, 162f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1015f, -737f, 793f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -605f, 1000f), vec3<f32>(-449f, 478f, -1000f))))))));
    let var_1 = !(!select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), !(var_0.x <= var_0.x)));
    global1 = array<Struct_4, 23>();
    global3 = ~min(-17923i, abs(_wgslsmith_sub_i32(i32(-1i) * -1i, 2147483647i)));
    let var_2 = -(1i & firstLeadingBit(firstLeadingBit(1i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xy) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

