struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<i32>) -> vec2<f32> {
    global1 = array<Struct_1, 32>();
    let var_0 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, select(reverseBits(1u), 1u, true), _wgslsmith_clamp_u32(~u_input.c.x, ~4294967295u, u_input.c.x)), reverseBits(abs(~vec3<u32>(u_input.c.x, 26727u, u_input.c.x)))));
    global0 = -1i;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -164f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(765f, 358f) + vec2<f32>(187f, 771f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-321f, 600f), vec2<f32>(-1247f, 1438f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 297f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 + 830f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, -891f, -360f), vec3<f32>(183f, arg_1, arg_1))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1046f, -1000f, -697f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_1.x, 2647f))), 68525u != ~u_input.c.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -693f))) + vec3<f32>(-281f, _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -659f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, 163f, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1765f, 1694f, arg_1)))))));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(246f, _wgslsmith_f_op_f32(arg_1 * arg_1)))))));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_4(global1[_wgslsmith_index_u32(~u_input.c.x, 32u)], _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, 382f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1426f, -765f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-513f, 470f)))), _wgslsmith_f_op_vec2_f32(func_3(107532i, 2312f, _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a.x, 1i), vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(23299i, -1i, 2147483647i))))))), reverseBits(28473u) != abs(u_input.c.x));
    global0 = -2147483647i;
    global0 = abs(~(-(u_input.b | -1i))) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, 1i), -(~u_input.a.x), _wgslsmith_mult_i32(1i, ~u_input.a.x), u_input.a.x), abs(~vec4<i32>(3154i, 1i, -79673i, u_input.b)));
    let var_1 = vec4<u32>(~(~_wgslsmith_mod_u32(var_0.a.a.x, u_input.c.x)), var_0.a.a.x, ~var_0.a.a.x, _wgslsmith_mod_u32(u_input.c.x, ~abs(var_0.a.a.x))) | _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~1u, var_0.a.a.x), ~countOneBits(u_input.c.x), ~var_0.a.a.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(34565u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(var_0.a.a.x, 0u, 22514u, var_0.a.a.x)))), firstTrailingBit(vec4<u32>(4294967295u, ~var_0.a.a.x, ~61996u, var_0.a.a.x & 0u)));
    let var_2 = Struct_3(vec4<u32>(26170u, 10642u, _wgslsmith_div_u32(0u, var_0.a.a.x), var_0.a.a.x));
    return vec2<bool>((var_0.a.a.x < (0u << (_wgslsmith_div_u32(var_2.a.x, 0u) % 32u))) == var_0.c, all(vec2<bool>(!select(true, var_0.c, false), !(-1388f <= var_0.b.x))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: bool) -> Struct_3 {
    global0 = abs(2147483647i);
    var var_0 = global1[_wgslsmith_index_u32(min(90712u, 86613u), 32u)];
    var var_1 = select(func_2(), select(select(vec2<bool>(arg_0.x, true), vec2<bool>(true, true), false), vec2<bool>(false, !arg_0.x || any(vec3<bool>(arg_0.x, arg_0.x, false))), !(1u < _wgslsmith_clamp_u32(52125u, arg_1.x, var_0.a.x))), !vec2<bool>(arg_0.x, true));
    var var_2 = Struct_3(~(vec4<u32>(~u_input.c.x, 70540u, var_0.a.x, _wgslsmith_add_u32(u_input.c.x, 4294967295u)) | ~select(vec4<u32>(var_0.a.x, arg_1.x, 10565u, 4294967295u), vec4<u32>(u_input.c.x, 1u, var_0.a.x, u_input.c.x), true)));
    let var_3 = var_0.a.zz;
    return Struct_3(var_2.a);
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = firstTrailingBit(select(vec4<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_3.x, -38908i, u_input.b), arg_3), ~2147483647i), vec4<i32>(_wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(37035i, -8945i, u_input.b, 1i)), 1i, -2147483647i, u_input.a.x), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false))))) << (~vec4<u32>(u_input.c.x, 4294967295u, 1u, arg_1.x) % vec4<u32>(32u));
    global0 = _wgslsmith_div_i32(countOneBits(~(-1i)), max(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(arg_3, abs(arg_3)), -_wgslsmith_sub_i32(-29315i, arg_3.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, i32(-1i) * -2147483647i, u_input.b), ~vec3<i32>(1i, arg_3.x, arg_3.x) ^ vec3<i32>(59816i, u_input.b, var_0.x))));
    let var_1 = 8733u;
    let var_2 = arg_2;
    let var_3 = vec2<i32>(var_0.x, 0i) ^ abs(vec2<i32>(_wgslsmith_dot_vec4_i32(-arg_3, vec4<i32>(u_input.b, arg_3.x, arg_3.x, u_input.b)), -27754i));
    return reverseBits(vec4<u32>(~(~54566u), var_1, _wgslsmith_mod_u32(countOneBits(u_input.c.x) ^ countOneBits(u_input.c.x), abs(arg_1.x)), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(223f))))), -156f, -2140f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, -686f, -591f)) * vec3<f32>(_wgslsmith_f_op_f32(ceil(158f)), 752f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-775f, -1281f, _wgslsmith_f_op_f32(floor(1495f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1304f, -1525f, -617f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(337f, -1153f, -1272f)))))));
    var var_1 = Struct_3(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-568f, 831f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -620f) + -163f)), min(u_input.c, reverseBits(vec2<u32>(u_input.c.x, 0u)) ^ abs(vec2<u32>(4294967295u, 1u))), func_1(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), false), ~(~vec3<u32>(u_input.c.x, u_input.c.x, 1u)), true), reverseBits(~vec4<i32>(u_input.b, u_input.a.x, u_input.b, 1i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(-u_input.b, _wgslsmith_f_op_f32(var_0.x * var_0.x), u_input.a))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x))), vec2<f32>(var_0.x, 1169f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.xy), vec2<f32>(293f, var_0.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zz + vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 710f))), vec2<f32>(1000f, _wgslsmith_div_f32(729f, var_0.x)), func_2())) + vec2<f32>(1f, -1606f)));
    var var_3 = ~vec2<i32>(_wgslsmith_clamp_i32(reverseBits(-2147483647i), -14552i, -29741i), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, _wgslsmith_div_f32(610f, 680f), var_2.x, -1363f))))), var_2.x, ~_wgslsmith_add_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 1i, -1i, u_input.b), vec4<i32>(-2147483647i, 2147483647i, 13017i, -1i)), vec4<i32>(var_3.x >> (102991u % 32u), u_input.b, _wgslsmith_mult_i32(var_3.x, u_input.b), var_3.x)), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, 1i, -34702i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, 7869i, u_input.b, 6349i), vec4<i32>(u_input.b, var_3.x, var_3.x, u_input.a.x)))));
}

