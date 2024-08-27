struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = Struct_4(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.a, vec4<i32>(arg_0.a.x, u_input.a.x, arg_0.a.x, 16021i)) | arg_0.a, vec4<i32>(abs(arg_0.a.x), _wgslsmith_mod_i32(reverseBits(arg_0.a.x), reverseBits(65665i)), -(arg_0.a.x ^ 6935i), -select(u_input.a.x, -11263i, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, 420f, arg_0.c)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.b, arg_0.b), 1f))))), arg_0.c, 61718u, arg_0.d);
    global0 = array<vec2<i32>, 20>();
    var var_1 = Struct_5(select(min(vec4<u32>(39231u, 1u | arg_0.d, 2932u, countOneBits(arg_0.d)), vec4<u32>(~var_0.e, 52568u, 9657u, reverseBits(16984u))), ~vec4<u32>(~var_0.d, 4294967295u, ~0u, abs(1u)), vec4<bool>(!select(true, false, var_0.c), !arg_0.c, firstLeadingBit(52234u) >= (var_0.e << (37425u % 32u)), arg_0.c)), firstLeadingBit(arg_0.a.x), Struct_4(-(vec4<i32>(45589i, u_input.a.x, var_0.a.x, 47863i) & vec4<i32>(-53337i, 0i, -2147483647i, 1i)) >> (abs(vec4<u32>(0u, 6293u, 0u, arg_0.e) ^ vec4<u32>(arg_0.e, arg_0.e, arg_0.d, 59738u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b - -1001f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1708f - var_0.b), var_0.b))), any(!vec4<bool>(false, arg_0.c, true, arg_0.c)), min(arg_0.e, arg_0.e), arg_0.e));
    let var_2 = Struct_1(false, arg_0.e << (abs(var_0.e) % 32u), var_1.c.a.ywz, !(!select(select(vec2<bool>(false, var_1.c.c), vec2<bool>(arg_0.c, true), vec2<bool>(false, true)), vec2<bool>(true, false), !vec2<bool>(var_1.c.c, arg_0.c))));
    global0 = array<vec2<i32>, 20>();
    return var_1.c.d;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = -(~(-u_input.b.x >> (func_3(Struct_4(vec4<i32>(arg_2.a.c.x, arg_2.b.x, arg_2.b.x, 1882i), arg_3.x, arg_2.a.a, 0u, 92036u)) % 32u)) >> (0u % 32u));
    var_0 = _wgslsmith_mod_i32(-(-arg_2.b.x & (1496i & u_input.b.x)), _wgslsmith_div_i32(-2147483647i, -1i)) ^ _wgslsmith_div_i32(-arg_2.b.x, arg_2.c.c.x);
    var var_1 = -380f;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, arg_1) - vec2<f32>(arg_3.x, 645f)), _wgslsmith_f_op_vec2_f32(arg_3.yx * vec2<f32>(arg_1, arg_0)), arg_2.a.a)) - arg_3.yz) - _wgslsmith_f_op_vec2_f32(arg_3.yy + arg_3.xz)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), arg_3.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_3.yx * vec2<f32>(199f, arg_0)))), all(select(arg_2.a.d, arg_2.c.d, arg_2.c.a)) & arg_2.c.d.x))));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1086f, arg_1, _wgslsmith_f_op_f32(arg_1 * 706f)) * arg_3), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_3, arg_3)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(1663f, -458f, Struct_2(Struct_1(false, 44355u, u_input.b, vec2<bool>(true, true)), u_input.b, Struct_1(true, arg_0.x, vec3<i32>(0i, u_input.b.x, -32433i), vec2<bool>(true, false))), vec3<f32>(-597f, -189f, 234f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1499f, -699f, -625f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1236f, -2387f, -1956f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1176f, -906f, 360f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-799f, 351f, 632f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1519f - 554f), -146f, _wgslsmith_f_op_vec3_f32(func_2(-893f, -980f, Struct_2(Struct_1(true, 22603u, u_input.b, vec2<bool>(true, false)), u_input.b, Struct_1(false, arg_0.x, u_input.b, vec2<bool>(true, false))), vec3<f32>(-421f, -884f, -1302f))).x) + vec3<f32>(-1460f, 1000f, _wgslsmith_f_op_vec3_f32(func_2(-606f, 963f, Struct_2(Struct_1(false, 11566u, vec3<i32>(-6933i, u_input.a.x, u_input.b.x), vec2<bool>(true, false)), u_input.b, Struct_1(false, arg_0.x, vec3<i32>(u_input.b.x, arg_1, u_input.a.x), vec2<bool>(true, true))), vec3<f32>(-552f, -1231f, 283f))).x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(542f, -349f, -950f) + vec3<f32>(1561f, -786f, 764f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1130f, -1602f, 1022f))), all(vec2<bool>(false, true)) | true)), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))))));
    let var_1 = var_0;
    global0 = array<vec2<i32>, 20>();
    var var_2 = select(select(select(vec4<bool>(true, true, all(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, false, true)) == true), !select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), var_1.x < var_1.x)), !vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), !all(vec3<bool>(false, true, false)), !(4294967295u == arg_0.x), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * 457f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -1060f) * _wgslsmith_f_op_f32(step(-1174f, var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) + _wgslsmith_f_op_f32(1149f + _wgslsmith_div_f32(1000f, -1543f))) - -337f), _wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(var_0.x - var_1.x), _wgslsmith_div_f32(-169f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -236f))), Struct_2(Struct_1(true, arg_0.x ^ arg_0.x, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 14212i, u_input.b.x), u_input.b), vec2<bool>(var_2.x, var_2.x)), firstTrailingBit(u_input.b), Struct_1(true, ~arg_0.x, _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(arg_1, 1i, u_input.a.x), u_input.b), vec2<bool>(var_2.x, var_2.x))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-1117f + _wgslsmith_f_op_f32(max(var_1.x, -1078f)))))).x);
    return ~arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 20>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1138f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1251f, -1290f) - _wgslsmith_f_op_f32(f32(-1f) * -373f))))));
    var_0 = 823f;
    let var_1 = Struct_4(vec4<i32>(func_1(vec2<u32>(0u, ~4294967295u), firstTrailingBit(~2147483647i)), abs(26028i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a.x), vec4<i32>(u_input.b.x, u_input.b.x, -50755i, -10440i))) << (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 4294967295u, 0u, 1u)), firstTrailingBit(vec4<u32>(0u, 4294967295u, 4294967295u, 39816u))) % 32u), -u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1350f - 1000f) + -669f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-1000f - -989f)), -1941f)), all(select(vec4<bool>(any(vec4<bool>(false, false, false, true)), true, select(true, false, false), select(true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, 0i == u_input.a.x, true, true))), firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~51362u, 1u), 35980u, 38707u), ~(~vec3<u32>(79928u, 10577u, 0u))));
    let var_2 = !select(select(vec2<bool>(true, !var_1.c), vec2<bool>(var_1.c, true), !select(vec2<bool>(var_1.c, true), vec2<bool>(true, false), var_1.c)), select(!vec2<bool>(var_1.c, var_1.c), vec2<bool>(30038u == var_1.e, false), all(!vec2<bool>(var_1.c, false))), true);
    var var_3 = var_1;
    var_3 = Struct_4(vec4<i32>(1i, reverseBits(firstLeadingBit(var_1.a.x)), 1i, u_input.b.x), var_1.b, false, var_3.e, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(min(max(var_3.d, var_1.e ^ var_3.e), _wgslsmith_mult_u32(~var_1.e, firstTrailingBit(0u))), 1u), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1467f + var_1.b) + 209f), var_3.b), var_1.b)), vec4<f32>(-559f, var_3.b, 1334f, var_3.b), var_3.b);
}

