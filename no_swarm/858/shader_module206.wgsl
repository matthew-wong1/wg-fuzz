struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_3(true, Struct_2(true, Struct_1(101783u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-767f, -208f, -572f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(358f, 249f, 112f) * vec3<f32>(337f, 648f, -1757f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-438f, -1000f, -1722f, 657f), vec4<f32>(-853f, -1575f, -1722f, -824f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(581f, 581f, 1586f, 327f)), true)), ~select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, 4294967295u), vec4<u32>(0u, 5764u, u_input.c.x, 1u), vec4<bool>(true, true, false, false)), u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(152f, 1659f)))), _wgslsmith_add_vec2_u32(u_input.b.xy | firstLeadingBit(u_input.b.zy), u_input.b.yx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, -777f, -1000f, -1018f)))))), all(vec4<bool>(false, true, all(vec2<bool>(false, false)) != true, true)));
    let var_1 = Struct_2(false, var_0.b.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-169f * 716f), _wgslsmith_f_op_f32(f32(-1f) * -835f)))), _wgslsmith_f_op_vec2_f32(var_0.b.e.yy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.b.e.xz, var_0.b.c))))), u_input.c.zz & select(var_0.b.d, var_0.b.d, !vec2<bool>(var_0.a, var_0.b.a)), vec4<f32>(-1260f, -1069f, var_0.b.c.x, _wgslsmith_f_op_f32(min(var_0.b.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1113f, 393f)))))));
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(~(-1i), 1i), min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-18157i, 2147483647i), -vec2<i32>(-16105i, 1i), vec2<i32>(1i, 1i)), vec2<i32>(1i, 1i)) & reverseBits(-(~vec2<i32>(-1i, -19028i))));
    var var_3 = Struct_3(true, var_0.b, !var_0.b.a);
    var_3 = var_0;
    return ~_wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(~u_input.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.d.x, var_0.b.b.a, u_input.a.x), var_0.b.b.d.xxy, var_3.b.b.d.xxx)), var_1.b.d.ywx);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32) -> f32 {
    var var_0 = ~func_3();
    var_0 = u_input.b;
    var_0 = ~(u_input.b >> ((firstTrailingBit(u_input.c) | _wgslsmith_add_vec3_u32(~u_input.c, u_input.c)) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1046f)), arg_0, arg_0));
    let var_2 = ~_wgslsmith_clamp_u32(~var_0.x, ~(~arg_1), ~1u) >= ~(~(abs(arg_1) & arg_2));
    return 546f;
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1100f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(183f * 760f), _wgslsmith_f_op_f32(min(-184f, -2408f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(686f, -477f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-1123f, arg_0.x, 0u)) * _wgslsmith_f_op_f32(max(-755f, -357f))), 1290f), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))))));
    var var_1 = ~vec3<u32>(_wgslsmith_add_u32(21019u, ~arg_0.x) | min(u_input.c.x >> (arg_0.x % 32u), select(arg_0.x, u_input.b.x, false)), 8998u, ~arg_0.x);
    let var_2 = ~(~vec4<i32>(abs(-18010i), ~2147483647i, abs(~(-9408i)), -_wgslsmith_sub_i32(2147483647i, 16791i)));
    var_1 = ~_wgslsmith_mult_vec3_u32(~select(arg_0, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 34890u, var_1.x), arg_0), vec3<bool>(true, false, true)), u_input.c);
    var_1 = ~u_input.c ^ vec3<u32>(~arg_0.x, 1u, ~select(~0u, _wgslsmith_mod_u32(39301u, arg_0.x), any(vec2<bool>(true, true))));
    return ~44335u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x ^ u_input.b.x, _wgslsmith_div_u32(func_1(~u_input.c), u_input.a.x)), ~(vec2<u32>(3501u, u_input.b.x) ^ u_input.a) << (_wgslsmith_clamp_vec2_u32(~func_3().xz, u_input.b.xy << (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u)), ~firstLeadingBit(u_input.a)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, ~firstLeadingBit(0u)), ~reverseBits(0u)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(761f, -713f))));
    var_0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(1u, u_input.c.x)), ~u_input.c.zy), 23768u) >> (vec2<u32>((u_input.a.x >> (_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(0u, var_0.x)) % 32u)) << (5429u % 32u), ~max(~1u, 20773u)) % vec2<u32>(32u));
    var var_2 = 0i;
    let var_3 = Struct_3(!select(any(vec4<bool>(true, true, true, false)), true, false), Struct_2(any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true)), Struct_1(~min(u_input.a.x, 4294967295u), vec3<f32>(_wgslsmith_f_op_f32(696f * var_1), _wgslsmith_f_op_f32(var_1 * var_1), -2220f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1000f, -191f, var_1))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(18032u, 4294967295u, 1u, u_input.a.x), vec4<u32>(53148u, u_input.c.x, var_0.x, 60790u)), _wgslsmith_clamp_u32(56450u, var_0.x, var_0.x) & 1u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-593f, var_1) + vec2<f32>(var_1, 843f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))))), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -832f, var_1, var_1))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-150f, var_1, var_1, var_1), vec4<f32>(var_1, var_1, var_1, 384f)))))), u_input.a.x < (abs(var_0.x) << (~(var_0.x << (var_0.x % 32u)) % 32u)));
    var_2 = 37336i;
    var var_4 = ~(~firstTrailingBit(82912i));
    let var_5 = Struct_4(select(!select(!vec4<bool>(false, var_3.a, var_3.c, true), select(vec4<bool>(true, var_3.a, var_3.a, var_3.c), vec4<bool>(var_3.b.a, var_3.c, true, false), vec4<bool>(var_3.b.a, true, false, var_3.c)), select(vec4<bool>(var_3.a, var_3.c, false, var_3.c), vec4<bool>(var_3.c, var_3.a, var_3.c, var_3.a), vec4<bool>(var_3.a, var_3.c, false, var_3.b.a))), !(!(!vec4<bool>(var_3.a, true, var_3.b.a, true))), !select(select(vec4<bool>(var_3.b.a, var_3.b.a, var_3.b.a, false), vec4<bool>(var_3.b.a, var_3.b.a, true, false), vec4<bool>(var_3.b.a, true, var_3.b.a, var_3.a)), select(vec4<bool>(false, var_3.b.a, false, false), vec4<bool>(true, true, var_3.a, true), var_3.c), !vec4<bool>(var_3.a, true, true, false))), var_3.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.e.x))), func_3(), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

