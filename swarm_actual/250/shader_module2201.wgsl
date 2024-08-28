struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 24> = array<Struct_5, 24>(Struct_5(vec2<f32>(-1000f, 101f), false), Struct_5(vec2<f32>(404f, -1000f), false), Struct_5(vec2<f32>(-281f, 1476f), false), Struct_5(vec2<f32>(-425f, -481f), false), Struct_5(vec2<f32>(840f, 146f), true), Struct_5(vec2<f32>(-1395f, 908f), false), Struct_5(vec2<f32>(166f, -1716f), false), Struct_5(vec2<f32>(-1513f, -933f), false), Struct_5(vec2<f32>(-1236f, -534f), false), Struct_5(vec2<f32>(109f, -230f), false), Struct_5(vec2<f32>(-968f, 1033f), false), Struct_5(vec2<f32>(-1193f, -919f), true), Struct_5(vec2<f32>(-1467f, -2374f), false), Struct_5(vec2<f32>(-706f, -937f), true), Struct_5(vec2<f32>(2055f, 460f), false), Struct_5(vec2<f32>(-155f, -106f), false), Struct_5(vec2<f32>(-822f, -1333f), false), Struct_5(vec2<f32>(2011f, 538f), true), Struct_5(vec2<f32>(-1907f, 331f), false), Struct_5(vec2<f32>(1282f, -1357f), true), Struct_5(vec2<f32>(-313f, 1124f), true), Struct_5(vec2<f32>(2185f, -604f), false), Struct_5(vec2<f32>(425f, -1434f), true), Struct_5(vec2<f32>(2268f, 613f), false));

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<i32>(-56554i, i32(-2147483648))), Struct_2(vec2<i32>(25836i, -1i)), Struct_2(vec2<i32>(-1i, -11162i)), Struct_2(vec2<i32>(-1i, -1i)), Struct_2(vec2<i32>(0i, -9109i)), Struct_2(vec2<i32>(-1i, 1392i)), Struct_2(vec2<i32>(-7428i, 37360i)), Struct_2(vec2<i32>(51625i, i32(-2147483648))), Struct_2(vec2<i32>(-23025i, 2147483647i)), Struct_2(vec2<i32>(66151i, 1i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> vec4<i32> {
    global1 = array<Struct_2, 10>();
    let var_0 = arg_0.b.x;
    global0 = array<Struct_5, 24>();
    var var_1 = any(vec4<bool>(false, var_0 | !var_0, !select(arg_0.b.x, var_0, true), 161f >= _wgslsmith_f_op_f32(floor(-1558f)))) && !(!select(true, any(vec4<bool>(var_0, var_0, false, false)), select(arg_0.b.x, arg_0.b.x, false)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f));
    return max(arg_0.c, max(vec4<i32>(arg_0.c.x, -select(-2147483647i, arg_2.a.x, false), select(0i, 1i, true), abs(-1i)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-8680i, u_input.a.x, arg_2.a.x, 0i), arg_0.c, vec4<bool>(true, false, false, arg_0.b.x)), vec4<i32>(-2147483647i, 6777i, arg_1, -1i)) & vec4<i32>(-arg_1, 2147483647i, -arg_3, arg_1)));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = max(~(-(~vec4<i32>(-19101i, u_input.a.x, -5706i, 57901i))), func_3(Struct_4(~vec2<u32>(0u, 1u), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec4<i32>(0i, 0i, 2147483647i, arg_0.a.x), vec4<i32>(-11523i, -7271i, -99736i, -11849i), vec4<bool>(true, true, false, true))), u_input.b.x, global1[_wgslsmith_index_u32(1u, 10u)], arg_0.a.x)) << (firstLeadingBit(_wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(0u, 0u, 1u, 4294967295u)), _wgslsmith_div_vec4_u32(select(vec4<u32>(36872u, 49448u, 33665u, 1u), vec4<u32>(34469u, 0u, 0u, 103798u), vec4<bool>(false, false, true, true)), ~vec4<u32>(0u, 25333u, 4294967295u, 4294967295u)))) % vec4<u32>(32u));
    global0 = array<Struct_5, 24>();
    return select(vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(476f))) > _wgslsmith_f_op_f32(f32(-1f) * -572f)), vec2<bool>(all(vec2<bool>(false, true)), !(!all(vec4<bool>(false, false, false, true)))), any(select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec3<bool>(true, true, true)))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = true;
    let var_1 = func_2(global1[_wgslsmith_index_u32(arg_0.x, 10u)]);
    global1 = array<Struct_2, 10>();
    global0 = array<Struct_5, 24>();
    var_0 = all(vec2<bool>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(u_input.c.x, u_input.a.x)) < ~(~(-88049i)), arg_0.x < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), abs(vec3<u32>(arg_0.x, 0u, arg_0.x)))));
    return -476f;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: f32) -> Struct_5 {
    let var_0 = abs(arg_0.a);
    let var_1 = 0u;
    var var_2 = Struct_3(Struct_2(-u_input.c), vec2<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(reverseBits(u_input.a.x), 9558i)), u_input.a.x), Struct_1(vec2<u32>((var_0.x << (var_1 % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, arg_0.a.x), vec3<u32>(18179u, 1u, 1u)), _wgslsmith_mult_u32(var_0.x, 0u)), arg_0.c, _wgslsmith_f_op_f32(-arg_0.b), vec4<bool>(!(!arg_0.d.x), arg_3 > arg_0.c, arg_0.d.x, true)));
    var var_3 = Struct_3(Struct_2(-(~u_input.c)), var_2.a.a, var_2.c);
    global1 = array<Struct_2, 10>();
    return global0[_wgslsmith_index_u32(arg_0.a.x, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(vec2<u32>(select(4294967295u, reverseBits(1u), false), countOneBits(_wgslsmith_clamp_u32(43901u, 1554u, 35921u))), _wgslsmith_f_op_f32(-845f * _wgslsmith_div_f32(-668f, _wgslsmith_f_op_f32(574f - 1318f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2041f - -795f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(207f + 152f)))), vec4<bool>(all(vec2<bool>(true, true)), true, true, false)), _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(~firstTrailingBit(u_input.a.x), u_input.b.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec4<u32>(~6171u, 0u, ~0u, select(1u, 11911u, true)))), -1459f)));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 25594u, 17915u)), vec3<u32>(~1u, 1u, _wgslsmith_div_u32(46719u, 4294967295u))), 10u)], vec2<i32>(~u_input.c.x >> (~abs(34490u) % 32u), -46983i), Struct_1(~(~countOneBits(vec2<u32>(12827u, 1u))), -501f, 754f, select(select(select(vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(true, var_0.b, false, true), var_0.b), !vec4<bool>(true, var_0.b, var_0.b, false), !var_0.b), !vec4<bool>(var_0.b, var_0.b, false, var_0.b), false)));
    var var_2 = Struct_2(var_1.b);
    var var_3 = var_1.c.d.zxy;
    var var_4 = select(var_1.c.d.yww, vec3<bool>(true, !all(var_1.c.d), any(vec3<bool>(true, func_4(Struct_1(var_1.c.a, var_0.a.x, 399f, vec4<bool>(var_1.c.d.x, true, var_0.b, var_3.x)), 20734i, var_0.a, -959f).b, var_0.b))), !vec3<bool>(var_0.b, true, false & any(vec2<bool>(var_0.b, false))));
    var var_5 = 4294967295u;
    var var_6 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-218f * func_4(Struct_1(var_1.c.a, var_1.c.b, var_0.a.x, var_1.c.d), firstLeadingBit(-17117i), _wgslsmith_f_op_vec2_f32(var_0.a + var_0.a), -1000f).a.x), -448f), var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, ~vec2<i32>(1i, ~abs(var_1.a.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, 2497u) << (var_1.c.a.x % 32u), 1u, _wgslsmith_clamp_u32(firstTrailingBit(10362u), var_1.c.a.x, var_1.c.a.x << (var_1.c.a.x % 32u))), reverseBits(~vec3<u32>(var_1.c.a.x, 4294967295u, var_1.c.a.x)), ~vec3<u32>(abs(21533u), abs(59357u), 5996u ^ var_1.c.a.x)), max(_wgslsmith_dot_vec2_u32(~(var_1.c.a ^ vec2<u32>(var_1.c.a.x, var_1.c.a.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.c.a.x, 4294967295u), vec2<u32>(var_1.c.a.x, var_1.c.a.x)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_1.c.a.x, var_1.c.a.x))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c.a.x, var_1.c.a.x, var_1.c.a.x, var_1.c.a.x), countOneBits(vec4<u32>(var_1.c.a.x, var_1.c.a.x, 0u, var_1.c.a.x)))));
}

