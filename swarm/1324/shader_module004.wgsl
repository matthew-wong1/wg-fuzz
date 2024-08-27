struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-666f * 1521f)) - 1198f)), Struct_1(select(_wgslsmith_mult_vec3_u32(u_input.e, _wgslsmith_div_vec3_u32(vec3<u32>(1u, 56500u, arg_0), u_input.e)), vec3<u32>(firstTrailingBit(arg_0), arg_2, ~1u), vec3<bool>(true, false, all(vec3<bool>(false, false, true)))), _wgslsmith_dot_vec3_u32(vec3<u32>(39676u, arg_2, 80654u), vec3<u32>(arg_0, 63708u, arg_0) >> (vec3<u32>(arg_2, u_input.b, 59741u) % vec3<u32>(32u))) >= u_input.e.x, _wgslsmith_clamp_i32(min(_wgslsmith_sub_i32(u_input.d.x, arg_1.x), -arg_3.x), _wgslsmith_add_i32(min(u_input.c, arg_3.x), arg_1.x), abs(-33659i & arg_1.x))), Struct_1(u_input.e, false, _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.x, arg_1.x, arg_3.x, arg_1.x), vec4<i32>(31072i, 0i, u_input.d.x, u_input.c), vec4<i32>(arg_3.x, -4543i, u_input.c, arg_3.x)), vec4<i32>(countOneBits(arg_3.x), -2147483647i & arg_1.x, i32(-1i) * -2147483647i, -u_input.c))), Struct_2(Struct_1(vec3<u32>(u_input.a.x, arg_0 | arg_2, _wgslsmith_div_u32(arg_2, arg_0)), any(vec3<bool>(true, true, true)), 1i), Struct_1(vec3<u32>(reverseBits(u_input.a.x), abs(47764u), ~24394u), true, arg_1.x), -(~vec3<i32>(arg_3.x, 1i, -2147483647i)), !(abs(arg_2) > 11287u)), Struct_1(firstTrailingBit(u_input.e), ~_wgslsmith_add_u32(0u, 0u) <= (reverseBits(arg_0) >> (u_input.b % 32u)), _wgslsmith_mult_i32(arg_1.x, abs(arg_3.x))));
    let var_1 = Struct_1(min(~(~select(vec3<u32>(0u, 55174u, u_input.b), u_input.e, true)), vec3<u32>(arg_0 | 1463u, ~4294967295u, countOneBits(countOneBits(u_input.a.x)))), !(!var_0.b.b), 1i);
    var var_2 = var_0.d;
    var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-259f + _wgslsmith_f_op_f32(f32(-1f) * -1515f)))))), var_1, Struct_1(~(~var_0.c.a), var_0.e.b, -11420i), var_0.d, var_1);
    var var_3 = Struct_2(Struct_1(vec3<u32>(4294967295u, _wgslsmith_add_u32(var_0.d.a.a.x, arg_2), ~(~1u)), var_0.a >= var_0.a, 1i), Struct_1(vec3<u32>(_wgslsmith_sub_u32(arg_0, reverseBits(var_1.a.x)), var_0.d.a.a.x, ~4125u << (_wgslsmith_add_u32(15667u, u_input.e.x) % 32u)), !all(select(vec2<bool>(var_1.b, true), vec2<bool>(false, var_0.b.b), vec2<bool>(true, var_2.a.b))), 0i), _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(2147483647i | var_1.c), var_2.c.x, u_input.c), firstTrailingBit(min(arg_1, vec3<i32>(33819i, -1i, 0i)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-681f + _wgslsmith_f_op_f32(max(var_0.a, 537f))), -191f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(658f - var_0.a)))));
    return reverseBits(vec4<u32>(reverseBits(var_3.b.a.x), 20616u, ~(~reverseBits(var_3.a.a.x)), var_1.a.x));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(1u, 0u), max(countOneBits(12624u), 23118u) | ~(arg_3.a.x ^ arg_1), 22195u, u_input.e.x), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_3.a.xz, ~arg_3.a.xy) >> ((~arg_3.a.x ^ u_input.b) % 32u), select(~(arg_3.a.x >> (u_input.a.x % 32u)), _wgslsmith_mult_u32(arg_3.a.x, select(0u, 74787u, arg_0)), false), (arg_1 | min(31330u, arg_3.a.x)) | arg_1, _wgslsmith_add_u32(arg_3.a.x, ~arg_1 | _wgslsmith_add_u32(u_input.a.x, arg_1))), vec4<u32>(u_input.b >> (arg_1 % 32u), 1u, 1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(35821u, 35969u, arg_1, arg_1), vec4<u32>(arg_3.a.x, arg_3.a.x, arg_1, arg_3.a.x)), ~72293u), _wgslsmith_mult_u32(arg_1, ~106534u))));
    var_0 = _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_0.x, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(44149u, var_0.x, u_input.b), var_0.wyy), var_0.x)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_3.a.x, u_input.a.x, 24737u, 38524u), vec4<u32>(4294967295u, u_input.b, u_input.b, 1u), countOneBits(vec4<u32>(var_0.x, 1u, arg_1, 4294967295u))), ~vec4<u32>(18858u, u_input.e.x, 1778u, u_input.b)), func_3(_wgslsmith_mod_u32(arg_1, 1u) << (arg_3.a.x % 32u), vec3<i32>(arg_3.c, -2147483647i, 8701i << (arg_3.a.x % 32u)), 1u, _wgslsmith_div_vec2_i32(firstLeadingBit(u_input.d), select(vec2<i32>(u_input.c, arg_3.c), u_input.d, vec2<bool>(arg_2.x, true))))));
    var_0 = ~_wgslsmith_sub_vec4_u32(select(abs(min(vec4<u32>(90815u, var_0.x, 53059u, 0u), vec4<u32>(arg_3.a.x, 42305u, u_input.b, u_input.b))), max(abs(vec4<u32>(4294967295u, 64755u, 4294967295u, arg_1)), vec4<u32>(6551u, arg_3.a.x, 4294967295u, 0u)), !vec4<bool>(arg_3.b, true, arg_2.x, arg_3.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.b, 0u), vec4<u32>(var_0.x, 57013u, arg_1, var_0.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.b) % vec4<u32>(32u))) | vec4<u32>(~arg_1, select(arg_3.a.x, u_input.a.x, arg_0), arg_3.a.x >> (4294967295u % 32u), ~33072u));
    var var_1 = arg_0;
    var var_2 = arg_0;
    return Struct_3(-563f, arg_3, arg_3, Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, 4294967295u, 4294967295u)), abs(arg_3.a)), !arg_3.b != false, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.c, -13058i, -19501i, u_input.d.x) << (vec4<u32>(1u, var_0.x, var_0.x, arg_1) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.c, 15742i, 36476i, -40004i), vec4<i32>(2147483647i, u_input.d.x, -1i, 42968i)))), arg_3, vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_3.c, 17249i), -arg_3.c, _wgslsmith_div_i32(-44038i, -13825i)), arg_3.c >> (_wgslsmith_mod_u32(var_0.x, 0u) % 32u), 1i), arg_0), Struct_1(~arg_3.a, select((arg_0 | false) | (26955i <= u_input.c), all(select(vec2<bool>(true, true), arg_2.yx, arg_2.yy)), !(!arg_0)), 2147483647i));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.a)), arg_0.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)))), vec2<bool>(arg_0.d.d, !(arg_1.a.b && false)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, arg_0.a), vec2<f32>(arg_0.a, arg_0.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_0.a)), vec2<bool>(arg_0.d.b.b, arg_1.d))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(166f, var_0.x), vec2<f32>(-769f, var_0.x)))))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(abs(arg_0.a)))))));
    var var_1 = ~(-arg_1.c.xy);
    var_1 = arg_0.d.c.xx;
    let var_2 = _wgslsmith_f_op_f32(-1680f + arg_0.a);
    return ~1u;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(true, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.b, 0u, 12368u, u_input.a.x), vec4<u32>(71231u | u_input.b, ~0u, ~u_input.e.x, abs(1u))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false), true), Struct_1(u_input.e, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), 0i)), Struct_2(Struct_1(u_input.e, true, ~u_input.c), Struct_1(vec3<u32>(4294967295u, u_input.e.x, u_input.a.x) & ~u_input.e, true, -u_input.c), -firstTrailingBit(vec3<i32>(-6259i, 35896i, u_input.d.x)), 22686i != u_input.c), min(countOneBits(abs(max(u_input.c, u_input.c))), -(~(~47576i))));
    let var_1 = vec2<u32>(0u, 4294967295u);
    var_0 = 0u & _wgslsmith_sub_u32(~select(u_input.a.x, 30497u, true) ^ firstTrailingBit(func_2(true, var_1.x, vec3<bool>(false, false, true), Struct_1(u_input.e, false, u_input.c)).e.a.x), countOneBits(~var_1.x));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(471f)) - _wgslsmith_f_op_f32(-984f - 1526f))))));
    var_0 = _wgslsmith_sub_u32(~firstTrailingBit(var_1.x), ~max(41134u, 0u));
    return Struct_1(~(~vec3<u32>(func_2(true, u_input.a.x, vec3<bool>(false, false, true), Struct_1(u_input.e, true, -14645i)).d.b.a.x, _wgslsmith_clamp_u32(var_1.x, var_1.x, var_1.x), var_1.x >> (u_input.e.x % 32u))), select((u_input.d.x >= 64206i) | true, true, _wgslsmith_div_i32(u_input.c, u_input.d.x) <= -1i) && false, 18428i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f)), _wgslsmith_div_f32(-865f, -335f))) + _wgslsmith_f_op_f32(-907f * 465f))));
    var var_1 = func_1();
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(18797u, ~_wgslsmith_add_u32(0u, u_input.e.x)), ~_wgslsmith_mod_u32(max(_wgslsmith_add_u32(var_1.a.x, var_1.a.x), _wgslsmith_div_u32(var_1.a.x, 78079u)), 1u), _wgslsmith_mod_u32(u_input.e.x, u_input.a.x), ~_wgslsmith_sub_u32(reverseBits(_wgslsmith_div_u32(u_input.e.x, 0u)), u_input.b));
    var var_3 = func_1().a.x;
    let var_4 = select(select(select(!select(vec4<bool>(false, var_1.b, true, false), vec4<bool>(var_1.b, var_1.b, var_1.b, true), vec4<bool>(var_1.b, false, var_1.b, var_1.b)), vec4<bool>(true, true, var_2.x < var_2.x, true), !(!var_1.b)), !vec4<bool>(true, var_1.b, true, !var_1.b), 34783u != abs(~var_1.a.x)), vec4<bool>(true, any(vec3<bool>(false, var_1.b && true, !var_1.b)), var_1.b, false), true);
    var var_5 = Struct_1(var_1.a, !(true & !any(var_4.ww)), _wgslsmith_add_i32(var_1.c, u_input.c | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -7881i, 0i), vec3<i32>(u_input.d.x, 0i, u_input.d.x))) | abs(_wgslsmith_mult_i32(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, -32760i, u_input.c), vec3<i32>(var_1.c, var_1.c, 1i)))));
    let var_6 = var_1.b;
    var var_7 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1181f));
    let x = u_input.a;
    s_output = StorageBuffer(min((vec2<i32>(var_1.c, 4956i) >> (vec2<u32>(5147u, var_1.a.x) % vec2<u32>(32u))) | -u_input.d, func_2(true & !var_1.b, firstTrailingBit(var_1.a.x) & var_1.a.x, var_4.wwy, Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_2.x, 1u), var_2.zyz), any(vec4<bool>(true, false, false, false)), u_input.d.x)).d.c.yy), _wgslsmith_add_u32(var_2.x, abs(2901u) | (u_input.a.x | 1u)) ^ _wgslsmith_add_u32(u_input.b, ~(u_input.a.x >> (4294967295u % 32u))));
}

