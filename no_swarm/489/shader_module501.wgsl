struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global1: bool = true;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> f32 {
    global1 = arg_1.d.x;
    var var_0 = arg_1;
    let var_1 = Struct_5(Struct_3(var_0.c.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_div_f32(-574f, 1497f), _wgslsmith_f_op_f32(f32(-1f) * -1349f), _wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1819f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-840f, -1018f, 526f))))))), Struct_2(arg_1.b.x, max(vec2<i32>(var_0.b.x, var_0.b.x), ~vec2<i32>(93394i, 2886i)) | -(~u_input.e.zy), ~firstTrailingBit(~vec2<u32>(var_0.c.x, 20524u)), select(vec4<bool>(var_0.c.x <= arg_1.c.x, true, any(arg_1.d.yw), true), arg_1.d, arg_1.d)), ~4294967295u);
    let var_2 = var_1.b;
    global1 = var_0.d.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(-1067f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_1.a.d.x, var_1.a.c)), -958f))));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_4(Struct_2(-1i, vec2<i32>(~2147483647i, 1i) & select(-u_input.d, u_input.d, vec2<bool>(true, true)), vec2<u32>(select(~1u, 7848u, true), u_input.a.x), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true)));
    var_0 = Struct_4(var_0.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1621f * -316f), -2125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1445f - 194f))))));
    var var_2 = Struct_3(_wgslsmith_mult_u32(~(~43780u), 59137u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -581f)), 650f, -1229f, _wgslsmith_f_op_f32(func_3(!(!vec2<bool>(true, var_0.a.d.x)), Struct_2(1i, var_0.a.b, ~u_input.a.yz, select(vec4<bool>(true, var_0.a.d.x, false, true), vec4<bool>(true, true, false, true), var_0.a.d)), u_input.a.x >> (select(u_input.a.x, 2178u, false) % 32u)))), _wgslsmith_f_op_f32(func_3(!vec2<bool>(all(vec4<bool>(true, var_0.a.d.x, true, var_0.a.d.x)), all(var_0.a.d.yw)), Struct_2(1i, u_input.d, vec2<u32>(41736u ^ u_input.a.x, u_input.a.x), select(vec4<bool>(false, true, false, true), select(var_0.a.d, vec4<bool>(var_0.a.d.x, false, var_0.a.d.x, var_0.a.d.x), var_0.a.d.x), !var_0.a.d.x)), countOneBits(~(~var_0.a.c.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(189f, -740f, 522f) + vec3<f32>(-519f, 792f, -977f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-434f, 234f, -335f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(152f, -974f, -1000f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-926f, -388f, 625f)), var_0.a.d.wyw)), var_0.a.d.x != (any(vec2<bool>(var_0.a.d.x, false)) | var_0.a.d.x))));
    var_1 = -514f;
    return Struct_5(Struct_3(~u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(var_2.d.x * _wgslsmith_f_op_f32(var_2.b.x * var_2.c)), _wgslsmith_f_op_f32(f32(-1f) * -647f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1739f, -290f))), _wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_vec3_f32(-var_2.b.yzy)), var_0.a, u_input.a.x);
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = func_2();
    var var_1 = Struct_1(var_0.a.c, -1913f, var_0.a.d.x, vec2<u32>(u_input.a.x, 0u | var_0.a.a), 376f);
    let var_2 = u_input.e.x | var_0.b.b.x;
    var var_3 = select(select(vec4<i32>(_wgslsmith_add_i32(-u_input.c.x, firstTrailingBit(var_2)), 18148i, i32(-1i) * -u_input.b, -var_0.b.a), abs(~(-vec4<i32>(11799i, -1i, arg_0, var_0.b.b.x))), var_0.b.d), firstLeadingBit(vec4<i32>(~(-47151i), 0i, arg_0, 52557i)) >> (~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 1u, var_0.c, 13214u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, 12029u, 1u), u_input.a), ~u_input.a) % vec4<u32>(32u)), select(select(select(vec4<bool>(var_0.b.d.x, true, var_0.b.d.x, false), vec4<bool>(false, true, false, var_0.b.d.x), var_0.b.d.x & var_0.b.d.x), vec4<bool>(var_0.b.d.x, var_0.b.d.x, u_input.e.x == -9265i, any(vec3<bool>(var_0.b.d.x, var_0.b.d.x, false))), any(var_0.b.d.wxw)), vec4<bool>(_wgslsmith_div_u32(var_1.d.x, u_input.a.x) >= ~var_1.d.x, true, true, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b * var_1.b))) < _wgslsmith_f_op_f32(-1114f - _wgslsmith_f_op_f32(exp2(var_1.c)))));
    let var_4 = ~_wgslsmith_add_vec2_i32(var_3.xw, ~vec2<i32>(30372i, -51857i) >> (u_input.a.xz % vec2<u32>(32u)));
    return _wgslsmith_clamp_i32(i32(-1i) * -7637i, -33243i, -11708i);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: vec2<u32>) -> vec4<u32> {
    let var_0 = Struct_4(func_2().b);
    var var_1 = Struct_2(13589i, u_input.d, vec2<u32>(~abs(min(1u, u_input.a.x)), _wgslsmith_dot_vec4_u32(max(~vec4<u32>(0u, 39739u, 57282u, 4294967295u), vec4<u32>(var_0.a.c.x, u_input.a.x, u_input.a.x, 1u)), u_input.a)), vec4<bool>(!var_0.a.d.x, func_2().b.d.x & (any(vec3<bool>(var_0.a.d.x, false, arg_0)) && any(var_0.a.d)), all(var_0.a.d), true));
    var var_2 = 57745u;
    return firstTrailingBit(vec4<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_add_u32(min(var_0.a.c.x, 0u), ~u_input.a.x), _wgslsmith_mult_u32(23904u, var_0.a.c.x)), u_input.a.x, 2742u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 9>();
    var var_0 = u_input.c.x;
    let var_1 = _wgslsmith_div_vec4_u32(func_4(false, _wgslsmith_mult_i32(-1i, 0i) ^ -func_1(16498i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(149f, -1290f, 1000f, 729f), vec4<f32>(-275f, 1495f, 1676f, 562f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(873f, -1000f, 1122f, 1450f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-234f, 163f, 749f, -146f), vec4<f32>(1137f, 1000f, 900f, 1026f), vec4<bool>(true, false, true, false))))), true)), u_input.a.xz), vec4<u32>(func_2().a.a, 0u << (u_input.a.x % 32u), u_input.a.x & ~firstTrailingBit(83817u), 1u));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(946f, -165f, -913f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(1290f - 695f), -570f, 873f))))) * vec3<f32>(391f, _wgslsmith_div_f32(-792f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-703f)))), -764f));
    var var_3 = Struct_5(func_2().a, Struct_2(~(-(u_input.b & 3304i)), ~(func_2().b.b << (var_1.wz % vec2<u32>(32u))), func_2().b.c, !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)))), 4294967295u);
    var_0 = 31459i;
    let var_4 = select(_wgslsmith_mod_u32(var_3.a.a, firstTrailingBit(4294967295u & max(var_3.c, u_input.a.x))), var_3.b.c.x, false || !(_wgslsmith_f_op_f32(sign(160f)) <= var_3.a.d.x));
    let var_5 = Struct_5(func_2().a, var_3.b, 75953u >> (_wgslsmith_div_u32(min(4294967295u << (var_1.x % 32u), _wgslsmith_mod_u32(9681u, 78638u)), _wgslsmith_div_u32(_wgslsmith_div_u32(0u, u_input.a.x), 0u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b, 1u);
}

