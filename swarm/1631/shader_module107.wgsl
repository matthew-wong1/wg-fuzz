struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(601f, 359f);

var<private> global1: array<vec2<i32>, 8>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(false, vec4<i32>(24673i, i32(-2147483648), -22948i, 0i)), Struct_1(true, vec4<i32>(0i, i32(-2147483648), 0i, 26408i)), Struct_1(true, vec4<i32>(-1i, -1i, -1i, -42764i)), Struct_1(false, vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -1i)), Struct_1(true, vec4<i32>(14511i, -1i, -4375i, -13132i)), Struct_1(true, vec4<i32>(i32(-2147483648), -1468i, 2147483647i, -507i)), Struct_1(true, vec4<i32>(2147483647i, -66028i, i32(-2147483648), 0i)), Struct_1(false, vec4<i32>(1i, -29606i, 1i, 1i)), Struct_1(false, vec4<i32>(14400i, -31236i, -1i, 33930i)), Struct_1(true, vec4<i32>(0i, 2147483647i, -1i, -30861i)), Struct_1(false, vec4<i32>(8326i, 1971i, -50207i, -10041i)), Struct_1(false, vec4<i32>(236i, -1i, -19387i, 30180i)), Struct_1(false, vec4<i32>(2147483647i, 29729i, 19951i, i32(-2147483648))), Struct_1(true, vec4<i32>(2147483647i, i32(-2147483648), 10179i, -63498i)), Struct_1(true, vec4<i32>(55235i, -25224i, 28479i, 32490i)), Struct_1(true, vec4<i32>(i32(-2147483648), -6016i, -25307i, 2147483647i)), Struct_1(true, vec4<i32>(2147483647i, 1i, i32(-2147483648), -6575i)), Struct_1(true, vec4<i32>(-24475i, -69214i, 1105i, -9669i)), Struct_1(true, vec4<i32>(22425i, 1i, 1i, 0i)), Struct_1(true, vec4<i32>(-1i, -65947i, -1i, 0i)), Struct_1(false, vec4<i32>(i32(-2147483648), i32(-2147483648), -16501i, -14251i)), Struct_1(false, vec4<i32>(-5429i, 2147483647i, 28972i, 25662i)), Struct_1(false, vec4<i32>(-28437i, i32(-2147483648), -56647i, 0i)), Struct_1(false, vec4<i32>(1i, -23744i, 0i, -59683i)), Struct_1(true, vec4<i32>(-29472i, 16793i, -19001i, 34509i)));

var<private> global3: array<i32, 24> = array<i32, 24>(-1i, -8515i, 0i, 2147483647i, 0i, 63386i, 11262i, 8931i, 1i, 73880i, 1i, 0i, 39387i, i32(-2147483648), 1i, 2147483647i, -23310i, 42248i, 2147483647i, -1i, -43560i, 1166i, -1i, -3624i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32) -> vec3<u32> {
    var var_0 = ~reverseBits(select(~40396u, u_input.c, true)) | (_wgslsmith_add_u32(firstLeadingBit(u_input.d | 0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(40767u, u_input.a, 1u, 7422u), vec4<u32>(48515u, 410u, u_input.d, 76658u))) ^ 5872u);
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_2, arg_2, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(-38148i, global3[_wgslsmith_index_u32(u_input.a, 24u)], 2147483647i, global3[_wgslsmith_index_u32(1u, 24u)]), vec4<i32>(-71944i, u_input.b.x, global3[_wgslsmith_index_u32(90895u, 24u)], arg_2)))), ~abs(_wgslsmith_mult_i32(arg_2, arg_2))), firstLeadingBit(0i));
    global2 = array<Struct_1, 25>();
    var var_2 = Struct_1(false, (_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, 20783i, 2147483647i, arg_2), vec4<i32>(34613i, -2147483647i, 0i, var_1), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2, -77821i, var_1, arg_2), vec4<i32>(10757i, 26070i, global3[_wgslsmith_index_u32(u_input.c, 24u)], u_input.b.x))) ^ vec4<i32>(u_input.b.x, global3[_wgslsmith_index_u32(34963u, 24u)] | -2147483647i, -global3[_wgslsmith_index_u32(u_input.d, 24u)], _wgslsmith_sub_i32(var_1, -2147483647i))) & (vec4<i32>(-9542i, ~(-19754i), ~var_1, ~var_1) | -vec4<i32>(-4315i, 30739i, arg_2, u_input.b.x)));
    let var_3 = -1i;
    return vec3<u32>(u_input.c, reverseBits(1u), _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(firstTrailingBit(0u), u_input.c)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.c, 0u), vec4<u32>(u_input.d, 26578u, u_input.d, u_input.a)), 72830u)));
}

fn func_2() -> Struct_2 {
    var var_0 = ~func_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -133f)), -2384f, false, _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 876f, 661f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, 244f, -174f)))), global3[_wgslsmith_index_u32(u_input.d, 24u)]);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(961f - _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(ceil(global0.x)))), 2380f, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(794f))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-663f, var_1.b, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_1.a))))) * var_1.b), global0.x, true, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_1(true, vec4<i32>(~1i, i32(-1i) * -2147483647i, 1i, _wgslsmith_div_i32(~(-19421i), -1i ^ u_input.b.x) ^ 71716i));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - -1211f) * _wgslsmith_f_op_f32(f32(-1f) * -318f)), _wgslsmith_f_op_f32(f32(-1f) * -1950f)))), global0.x, arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(362f * 465f) + _wgslsmith_f_op_f32(arg_2.d + _wgslsmith_f_op_f32(ceil(275f))))));
    global1 = array<vec2<i32>, 8>();
    var var_2 = var_0.b.xww;
    var_2 = ~u_input.b;
    return func_2();
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = false;
    let var_1 = firstLeadingBit(-17969i);
    var var_2 = arg_2;
    global3 = array<i32, 24>();
    global3 = array<i32, 24>();
    return func_4(_wgslsmith_div_u32(_wgslsmith_mod_u32(abs(~arg_0.x), arg_0.x), arg_0.x), Struct_3(func_2()), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-282f, _wgslsmith_f_op_f32(f32(-1f) * -203f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_2)), 399f)), arg_1, 288f), true);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_1(true, -(_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, 1i, global3[_wgslsmith_index_u32(u_input.c, 24u)], 54048i), vec4<i32>(-37583i, 30025i, -24079i, -45974i)) >> (_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.c, 10552u, 56565u, 1u), vec4<u32>(u_input.d, u_input.a, u_input.c, u_input.d), arg_0.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.c, 43860u), vec4<u32>(u_input.a, u_input.d, 4294967295u, u_input.a), vec4<u32>(58149u, u_input.a, 0u, u_input.a))) % vec4<u32>(32u))));
    let var_1 = u_input.b.zx;
    global3 = array<i32, 24>();
    global1 = array<vec2<i32>, 8>();
    global3 = array<i32, 24>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(4294967295u, _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 71017u), vec2<u32>(4294967295u, 14363u)), ~u_input.a)), _wgslsmith_clamp_u32(func_5(func_1(vec3<u32>(4793u, 27588u, u_input.c), false, -247f, global0.x), vec3<f32>(global0.x, global0.x, 878f)), _wgslsmith_div_u32(u_input.a << (u_input.d % 32u), select(42730u, 23648u, false)), func_5(func_2(), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, 1005f), vec3<f32>(-603f, global0.x, global0.x)))))), ~(~u_input.d));
    let var_1 = !all(!vec4<bool>(true, true, u_input.a >= 82552u, false));
    var var_2 = ~var_0.x;
    let var_3 = Struct_3(func_2());
    var_2 = u_input.a;
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.a.d))) - var_3.a.b), u_input.a, _wgslsmith_f_op_f32(global0.x - global0.x));
}

