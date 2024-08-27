struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    global0 = array<Struct_3, 26>();
    var var_0 = global0[_wgslsmith_index_u32(10283u, 26u)];
    var var_1 = Struct_2(firstLeadingBit(arg_0.yz ^ u_input.c.wz));
    var_1 = Struct_2(~var_1.a);
    global0 = array<Struct_3, 26>();
    return _wgslsmith_div_vec4_i32(min(-(-vec4<i32>(var_0.a, var_0.a, u_input.a, 0i) & vec4<i32>(u_input.a, var_0.a, u_input.d, -20446i)), min(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 3104i, 31632i, 29041i), firstLeadingBit(vec4<i32>(-15681i, 77732i, -17843i, u_input.b.x))), -(~vec4<i32>(15664i, 1703i, 3580i, var_0.a)))), vec4<i32>(u_input.b.x, abs(var_0.a), u_input.b.x, 53830i));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    global0 = array<Struct_3, 26>();
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_2.x, 47346i, arg_0.a) ^ vec4<i32>(-23685i, 2147483647i, -41487i, -1i), ~vec4<i32>(0i, arg_2.x, -60486i, u_input.a)), -func_3(vec4<u32>(4294967295u, arg_3, 14521u, 0u))), 2147483647i, max(u_input.e.x, ~func_3(vec4<u32>(0u, arg_1.x, 0u, 588u)).x), arg_0.a), min(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 0i, 27894i, -31271i) ^ vec4<i32>(arg_2.x, 2147483647i, u_input.b.x, arg_2.x), select(vec4<i32>(u_input.a, arg_0.a, arg_0.a, arg_0.a), vec4<i32>(arg_2.x, u_input.a, arg_0.a, arg_0.a), vec4<bool>(false, true, false, true)))), ~(-(vec4<i32>(u_input.e.x, 0i, -7789i, arg_0.a) << (vec4<u32>(u_input.c.x, 62901u, arg_3, 4294967295u) % vec4<u32>(32u))))));
    let var_1 = Struct_1(all(vec4<bool>(any(vec2<bool>(true, true)), true, false, all(vec2<bool>(true, true)))), arg_0.a, vec3<i32>(-40431i, -arg_2.x, -15557i), ~abs(u_input.c.wxw));
    let var_2 = var_1.a;
    let var_3 = -(~vec2<i32>(38584i, 8206i));
    return ~(1i >> (_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(54903u, 63394u, var_1.d.x, 2335u), ~u_input.c)) % 32u));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: bool, arg_3: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1078f, 556f, arg_3.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, arg_1, 1009f, arg_3.x))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3.x)), -2347f, -264f, _wgslsmith_div_f32(853f, arg_3.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 305f, arg_1, arg_3.x), vec4<f32>(var_0.x, 1000f, arg_3.x, 1282f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(497f, arg_1, arg_1, -364f), vec4<f32>(-773f, 715f, 582f, var_0.x)))))));
    let var_1 = u_input.c.ywz;
    let var_2 = vec3<bool>(select(true, ~func_2(Struct_3(u_input.e.x), vec3<u32>(1u, 45575u, u_input.c.x), vec3<i32>(4387i, 12816i, arg_0.x), 1u) <= arg_0.x, arg_2), !(!select(false, arg_2, arg_2) & arg_2), false);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, arg_3.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), var_0.x, _wgslsmith_f_op_f32(444f - var_0.x), _wgslsmith_div_f32(arg_1, var_0.x)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 0u), _wgslsmith_clamp_u32(53387u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_add_u32(12205u, 55038u) ^ u_input.c.x)));
    let var_1 = (vec3<u32>(~firstTrailingBit(u_input.c.x), ~var_0.a.x, ~u_input.c.x) | ~max(vec3<u32>(u_input.c.x, 2309u, 35u), u_input.c.wzz)) | _wgslsmith_mult_vec3_u32(abs(select(u_input.c.wzw, vec3<u32>(var_0.a.x, 1u, 72150u) ^ vec3<u32>(var_0.a.x, 6566u, 1u), all(vec4<bool>(false, true, false, true)))), firstLeadingBit(~u_input.c.xwz & (vec3<u32>(4294967295u, 1u, var_0.a.x) | vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x))));
    let var_2 = var_0;
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    var var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(366f, -446f, 381f)) - vec3<f32>(-1557f, 1000f, 272f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(476f)), -1532f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -398f)), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, false, true)), func_1(vec2<i32>(0i, u_input.a), -148f, true, vec3<f32>(-610f, -282f, -1218f))), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1180f, 195f, -1413f)))))));
    global0 = array<Struct_3, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, -u_input.d, ~u_input.b.x), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(var_2.a, vec2<u32>(var_1.x, 52094u)), _wgslsmith_div_u32(~5500u, var_0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + var_4.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1897f - var_4.x) - _wgslsmith_f_op_f32(f32(-1f) * -750f)))), var_4.x), abs(~reverseBits(u_input.c.x)));
}

