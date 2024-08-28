struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-2534f, -650f, 385f, -477f), vec4<f32>(260f, -408f, -291f, -1431f), vec4<f32>(-978f, -1933f, -495f, -346f), vec4<f32>(-1207f, 1206f, 436f, -1129f), vec4<f32>(-351f, -1995f, 960f, 1842f), vec4<f32>(240f, -1549f, -1126f, -1697f), vec4<f32>(-1793f, -399f, -1480f, -833f), vec4<f32>(-1339f, -747f, 408f, 537f), vec4<f32>(-783f, 853f, -2046f, 1528f), vec4<f32>(913f, -582f, -1000f, -1751f), vec4<f32>(1579f, -1000f, 647f, 495f), vec4<f32>(-174f, -1057f, 203f, -1218f), vec4<f32>(-816f, 101f, 981f, 811f), vec4<f32>(385f, -955f, -343f, -951f), vec4<f32>(-233f, 548f, 2425f, 1000f), vec4<f32>(-804f, 728f, -450f, -1038f), vec4<f32>(610f, -106f, -1517f, 1285f), vec4<f32>(541f, 545f, 104f, 1171f), vec4<f32>(163f, 251f, 1000f, 159f), vec4<f32>(-641f, -233f, 1475f, -1000f), vec4<f32>(-2391f, 764f, 1000f, 198f), vec4<f32>(-602f, -1000f, 1000f, 168f), vec4<f32>(-313f, -1126f, -694f, -1454f), vec4<f32>(-1455f, -1662f, -905f, 1098f), vec4<f32>(845f, -577f, -311f, -278f), vec4<f32>(-572f, 1410f, -787f, -349f), vec4<f32>(169f, -604f, -785f, 594f), vec4<f32>(800f, -464f, -1000f, -616f), vec4<f32>(643f, 206f, -136f, -779f), vec4<f32>(1586f, 481f, -1709f, -501f));

var<private> global1: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(0u, 0u, 4294967295u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: u32, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1130f, _wgslsmith_f_op_f32(-261f + _wgslsmith_div_f32(1348f, _wgslsmith_f_op_f32(max(-418f, -1194f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1795f, -719f)))))), !(arg_1 && (true && (true && arg_3)))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-171f))));
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    var var_3 = _wgslsmith_div_f32(-990f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(round(var_1)))) + _wgslsmith_f_op_f32(-var_1)));
    var var_4 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1675f, _wgslsmith_f_op_f32(round(var_1))))), Struct_2(true), 4294967295u, ~(min(vec2<u32>(1u, 4294967295u), vec2<u32>(arg_2, 17645u)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, 23271u), arg_0.zw)), _wgslsmith_clamp_i32(-1i, ~(-1815i), reverseBits(29976i)) ^ -_wgslsmith_add_i32(-38424i, 1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -858f) - _wgslsmith_f_op_f32(1000f * var_0)) * var_4.a.a));
}

fn func_2() -> vec3<i32> {
    global1 = array<vec3<u32>, 1>();
    global0 = array<vec4<f32>, 30>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(1493f + _wgslsmith_f_op_f32(-1600f + _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u), true, 66129u, true)))), Struct_2(true), 86377u, _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), u_input.a.x >> (u_input.a.x % 32u)), u_input.a), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 12630i, -1i, -2147483647i), vec4<i32>(-1i, -36516i, -107966i, -2147483647i)) | 35798i));
    global1 = array<vec3<u32>, 1>();
    let var_1 = 1i;
    return _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0.e, var_0.e | _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 17932i, var_0.e), abs(vec3<i32>(var_1, var_1, -2445i)))), select(-vec3<i32>(_wgslsmith_mult_i32(var_1, var_0.e), -var_1, _wgslsmith_add_i32(var_0.e, -2672i)), vec3<i32>(var_1, _wgslsmith_div_i32(-40396i, ~63281i), -_wgslsmith_sub_i32(-2147483647i, var_1)), select(!vec3<bool>(true, false, var_0.b.a), !select(vec3<bool>(true, false, var_0.b.a), vec3<bool>(false, var_0.b.a, true), var_0.b.a), select(!var_0.b.a, true, true))));
}

fn func_1() -> vec3<i32> {
    var var_0 = all(vec2<bool>(true, true));
    let var_1 = Struct_1(true);
    global0 = array<vec4<f32>, 30>();
    var var_2 = 1i;
    let var_3 = -53790i;
    return -func_2() & -vec3<i32>(1i, 1i, _wgslsmith_mult_i32(-14482i, -var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(27325u & u_input.a.x, 0u);
    let var_1 = ~(-_wgslsmith_div_vec3_i32(func_1(), abs(vec3<i32>(-5564i, -1i, -1i)))) ^ -func_2();
    global0 = array<vec4<f32>, 30>();
    var var_2 = vec4<bool>(!all(vec2<bool>(true, true)), !(!any(vec3<bool>(true, false, false))), true, true);
    global1 = array<vec3<u32>, 1>();
    let var_3 = Struct_2(!any(vec4<bool>(!var_2.x, true, true, false)));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1136f, -2006f))), vec4<bool>(var_1.x < (func_1().x << (_wgslsmith_add_u32(1u, u_input.a.x) % 32u)), abs(_wgslsmith_mult_u32(6718u, u_input.a.x)) >= ~u_input.a.x, !(!var_2.x), all(vec4<bool>(var_3.a, false, 0u <= var_0, false))));
    var var_5 = min(abs(_wgslsmith_clamp_vec3_u32(countOneBits(global1[_wgslsmith_index_u32(48920u, 1u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, var_0 ^ 4294967295u), 1u)], select(global1[_wgslsmith_index_u32(4294967295u, 1u)], vec3<u32>(1u, u_input.a.x, var_0), !vec3<bool>(var_2.x, false, var_2.x)))), vec3<u32>(1299u, 1u, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec4_i32(vec4<i32>(~(-14483i), 2147483647i, ~var_1.x, 2147483647i), firstTrailingBit(~vec4<i32>(52641i, var_1.x, 0i, -70227i))));
}

