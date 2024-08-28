struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -826f;

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    var var_0 = u_input.b.yy;
    let var_1 = u_input.d.x;
    var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, -(~(-12430i))), vec2<i32>(reverseBits(arg_2 << ((var_1 << (17886u % 32u)) % 32u)), -(~u_input.c)));
    let var_2 = Struct_2(abs(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-793f + -1000f)) * _wgslsmith_f_op_f32(ceil(arg_1.a.x)))), 90707u);
    var var_3 = Struct_1(vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-300f, arg_1.c)) - 597f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), var_2.b), arg_1.b, 1032f, firstTrailingBit(firstTrailingBit(21175i)));
    return arg_1.a.x;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(vec4<f32>(arg_1, arg_2.c, _wgslsmith_f_op_f32(-arg_1), 886f), !(arg_2.b | !(true && arg_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_2.c)))) * _wgslsmith_f_op_f32(func_3(~(~u_input.d.wwz), arg_2, 8045i, select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, true, false), true)))), arg_2.d);
    var var_1 = arg_2.a;
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, -477f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -285f)) - var_1.x))));
    var_1 = var_2.a;
    return var_2.b;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> u32 {
    let var_0 = vec2<bool>(!(!(false | select(arg_0, arg_0, arg_0))), !func_2(true, arg_2.b, Struct_1(vec4<f32>(arg_2.b, -834f, 1000f, arg_2.b), arg_0, _wgslsmith_f_op_f32(ceil(1109f)), -4713i)));
    let var_1 = max(_wgslsmith_clamp_vec2_i32(max(reverseBits(select(vec2<i32>(0i, u_input.b.x), vec2<i32>(arg_2.a, -16128i), vec2<bool>(arg_0, false))), ~u_input.b.yx), vec2<i32>(27409i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, -6266i), -1i)), u_input.b.yy), ~vec2<i32>(u_input.c, -1i));
    var var_2 = any(var_0);
    var_2 = any(vec4<bool>(arg_0, select(!all(vec3<bool>(var_0.x, false, false)), false, (u_input.d.x > u_input.a.x) && any(vec3<bool>(var_0.x, arg_0, var_0.x))), !arg_0, true));
    global0 = _wgslsmith_f_op_f32(ceil(226f));
    return 18547u;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(min(arg_0, -1408f)))), 856f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1657f) * _wgslsmith_f_op_f32(f32(-1f) * -339f)), arg_2.b)), arg_0));
    global1 = -1232f;
    let var_1 = vec4<u32>(~31830u, ~_wgslsmith_dot_vec4_u32(u_input.d << (vec4<u32>(arg_2.c, u_input.a.x, u_input.d.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, 1u, 25960u))) | ~arg_1, 1u, _wgslsmith_mult_u32(23262u, 34847u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(var_0)), true, _wgslsmith_f_op_f32(f32(-1f) * -753f), 37367i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_i32(abs(abs(u_input.b.zx)), u_input.b.xw, vec2<i32>(max(u_input.b.x, min(abs(18415i), 0i)), select(u_input.c, reverseBits(abs(u_input.c)), any(vec2<bool>(true, true)))));
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1204f)), _wgslsmith_f_op_f32(566f - 1068f)))), abs(func_1(true, u_input.d.x << (66717u % 32u), Struct_2(u_input.b.x, 1000f, u_input.a.x)) ^ _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(32946u, u_input.d.x))), Struct_2(_wgslsmith_add_i32(-var_0.x, -5699i >> (u_input.d.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -451f)))), select(u_input.a.x, 72984u, func_2(false, -651f, Struct_1(vec4<f32>(-443f, 905f, 346f, 942f), false, -1188f, 2147483647i)) | true)));
    let var_2 = Struct_2(var_1.d, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_clamp_u32(u_input.a.x, select(~1u, ~u_input.d.x, !var_1.b), _wgslsmith_sub_u32(16978u, countOneBits(firstLeadingBit(u_input.a.x)))));
    let var_3 = any(select(vec4<bool>(true, false, true, var_1.b), select(vec4<bool>(func_4(var_2.b, u_input.a.x, Struct_2(u_input.b.x, var_1.a.x, 0u)).b, all(vec2<bool>(var_1.b, false)), true, true | var_1.b), !(!vec4<bool>(var_1.b, false, var_1.b, true)), var_1.b), !vec4<bool>(var_1.b != true, false, !var_1.b, true)));
    var var_4 = var_2;
    let var_5 = func_4(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1878f, _wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_sub_u32(var_2.c, ~_wgslsmith_dot_vec4_u32(~u_input.d, vec4<u32>(var_2.c, 9024u, 2650u, 89172u))), var_2);
    var var_6 = ~(~(~var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zxw, u_input.d.wwx, 0i, -811f, _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_2.a, _wgslsmith_div_i32(-1i, -73109i)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2614i, 1i, var_5.d), firstLeadingBit(var_0.x)), var_0.x), -vec3<i32>(~38663i, firstTrailingBit(u_input.b.x), ~(-2147483647i)), reverseBits(~_wgslsmith_add_vec3_i32(u_input.b.yww, vec3<i32>(1i, var_4.a, var_1.d)))));
}

