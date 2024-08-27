struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<u32>(6503u, 50030u), vec4<u32>(4294967295u, 0u, 33477u, 0u), Struct_1(2912f, vec4<i32>(1i, 9302i, 1i, 28094i))), Struct_2(vec2<u32>(40255u, 37182u), vec4<u32>(0u, 1u, 24586u, 80732u), Struct_1(-1162f, vec4<i32>(74134i, 0i, 37888i, i32(-2147483648)))), Struct_2(vec2<u32>(1u, 17894u), vec4<u32>(0u, 32720u, 1u, 1u), Struct_1(696f, vec4<i32>(-1i, 1i, 0i, -40299i))), Struct_2(vec2<u32>(1u, 49928u), vec4<u32>(15481u, 1u, 106310u, 32713u), Struct_1(1739f, vec4<i32>(i32(-2147483648), 19623i, i32(-2147483648), 2147483647i))), Struct_2(vec2<u32>(72960u, 13290u), vec4<u32>(22607u, 92826u, 33731u, 15032u), Struct_1(528f, vec4<i32>(-9672i, -10350i, -1i, -1i))), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(1u, 8010u, 1u, 38757u), Struct_1(1000f, vec4<i32>(1i, 28902i, -54991i, 3629i))), Struct_2(vec2<u32>(11148u, 0u), vec4<u32>(3001u, 0u, 50206u, 12795u), Struct_1(-1393f, vec4<i32>(24951i, 22865i, -1i, -5532i))), Struct_2(vec2<u32>(4294967295u, 37035u), vec4<u32>(62143u, 1u, 2977u, 1u), Struct_1(1168f, vec4<i32>(-48292i, 5451i, -47193i, -8309i))), Struct_2(vec2<u32>(1u, 10283u), vec4<u32>(27039u, 4294967295u, 0u, 14235u), Struct_1(663f, vec4<i32>(i32(-2147483648), 2147483647i, 40400i, 0i))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    let var_0 = Struct_1(1626f, _wgslsmith_sub_vec4_i32(select(vec4<i32>(~2147483647i, _wgslsmith_mult_i32(arg_1.b.x, arg_0.c.b.x), _wgslsmith_mod_i32(arg_1.b.x, -2147483647i), 14887i), arg_1.b | min(vec4<i32>(-24977i, arg_0.c.b.x, 26378i, arg_0.c.b.x), arg_1.b), true), -arg_0.c.b));
    let var_1 = ~select(firstLeadingBit(arg_0.b.yyw), min(firstTrailingBit(vec3<u32>(u_input.b, arg_0.a.x, 0u)), arg_0.b.xzz), (-var_0.b.x >> (abs(1u) % 32u)) < -var_0.b.x);
    var var_2 = (16967u >> (u_input.b % 32u)) == ~reverseBits(~_wgslsmith_div_u32(14649u, var_1.x));
    let var_3 = ~u_input.b;
    let var_4 = Struct_2(var_1.yy, firstTrailingBit(arg_0.b), var_0);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(227f)), var_0.a, all(vec2<bool>(false, true)) && all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1249f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, 1440f))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<f32> {
    let var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_1.c.a - arg_1.c.a), var_0.c.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(exp2(var_1.a)))) + _wgslsmith_f_op_f32(1543f * -581f)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) + _wgslsmith_f_op_f32(func_1(Struct_2(var_0.a, ~arg_1.b, Struct_1(_wgslsmith_div_f32(2088f, arg_1.c.a), arg_1.c.b)), Struct_1(var_0.c.a, var_1.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-513f, 304f, 1019f, 515f) - vec4<f32>(-1766f, var_2, arg_1.c.a, -626f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a, 1000f, 1000f, var_1.a) + vec4<f32>(var_1.a, 401f, 691f, -2917f)))))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1154f) - var_1.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-378f, 1421f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-950f)) - var_0.c.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) + var_1.a));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.a)), _wgslsmith_div_f32(-229f, arg_1.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a) - 324f), -542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -422f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1015f, arg_1.c.a, 611f, -858f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1286f, 1300f, var_2, 1482f), vec4<f32>(var_1.a, var_1.a, var_0.c.a, var_1.a)))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.c;
    let var_1 = 2147483647i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.c, 36480u, u_input.b), global0[_wgslsmith_index_u32(1323u, 9u)], arg_1.b.yww))))));
    global0 = array<Struct_2, 9>();
    let var_3 = Struct_1(arg_1.c.a, -select(vec4<i32>(var_0.b.x, -85309i, 0i, var_1), vec4<i32>(47222i, var_1, -17420i, 0i), select(arg_0, arg_0, arg_0.x)) | -firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, var_0.b.x, var_0.b.x, arg_1.c.b.x), vec4<i32>(-2147483647i, -62205i, -1743i, var_0.b.x))));
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(vec2<u32>(20533u, u_input.c), vec4<u32>(4294967295u, u_input.b, u_input.c, 0u), var_3), var_0, var_2))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), -1760f, true)))), vec4<i32>(2147483647i, var_1, var_0.b.x, firstTrailingBit(-2147483647i)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: bool) -> f32 {
    global0 = array<Struct_2, 9>();
    let var_0 = arg_3;
    global0 = array<Struct_2, 9>();
    return _wgslsmith_f_op_f32(floor(443f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2565f + _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(~4294967295u, 9u)], Struct_1(2163f, vec4<i32>(-2147483647i, 11406i, 33211i, 38610i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-420f, -422f, -593f, -240f) - vec4<f32>(-577f, 732f, -1000f, -177f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(185f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -623f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(vec4<bool>(true, true, false, false), Struct_2(vec2<u32>(0u, u_input.b), vec4<u32>(u_input.a, 101242u, u_input.a, u_input.b), Struct_1(1322f, vec4<i32>(2147483647i, 57824i, 54962i, -36310i)))), _wgslsmith_f_op_f32(min(1004f, 751f)), u_input.b, true)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-290f))))) + _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-1216f + 993f), vec4<i32>(0i, -23259i, 22543i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2037f, -424f)), ~u_input.b, false))), _wgslsmith_f_op_f32(func_4(func_2(vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true), Struct_2(vec2<u32>(9116u, 4294967295u), select(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(4294967295u, 20464u, u_input.b, 10917u), vec4<bool>(true, false, true, false)), func_2(vec4<bool>(true, false, true, false), global0[_wgslsmith_index_u32(u_input.a, 9u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(219f))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 0u, 4294967295u, u_input.a), abs(~vec4<u32>(0u, u_input.b, u_input.c, 69969u))), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-138f + -707f))));
    global0 = array<Struct_2, 9>();
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 370f, -1000f, -408f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -521f, var_0.x, 1000f) * vec4<f32>(var_0.x, var_0.x, 331f, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(653f, var_0.x, -304f, -391f) - vec4<f32>(var_0.x, -423f, var_0.x, -1487f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1015f, 765f, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-406f, 603f, var_0.x, var_0.x) * vec4<f32>(1471f, -2440f, -609f, -1021f)))))));
    let var_1 = firstLeadingBit(u_input.b);
    var var_2 = 464f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(var_1, 9u)]), _wgslsmith_f_op_f32(var_0.x + var_0.x), 4294967295u, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_clamp_i32(-(i32(-1i) * -1i), ~_wgslsmith_add_i32(75611i, -30538i), 1i & _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, -6800i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -43016i), vec2<i32>(14139i, 55678i)))), _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-65309i, 1i), vec2<i32>(-31084i, 21035i))), -2147483647i, 1i, -18301i), vec4<i32>(min(47977i, ~1i), abs(1i), -abs(61485i), _wgslsmith_mod_i32(55027i, ~35479i))));
}

