struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    return 4294967295u;
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = arg_0.a;
    let var_2 = firstLeadingBit((_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, u_input.b) << (vec2<u32>(95777u, var_0.c) % vec2<u32>(32u)), vec2<i32>(u_input.b, var_0.b) ^ u_input.a.yz) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(35211u, arg_0.c), vec2<u32>(52286u, var_0.c)) % vec2<u32>(32u))) & -(vec2<i32>(-1i) * -u_input.a.yz));
    let var_3 = all(select(select(vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, var_0.d), true), vec2<bool>(var_0.d, any(vec2<bool>(arg_0.d, true))), !vec2<bool>(arg_0.d, var_0.d))) & (var_0.d & !(!var_0.d || var_0.d));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.e.x, var_0.e.x, -668f, 105f), vec4<f32>(981f, arg_0.e.x, var_0.e.x, arg_0.e.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.e.x, arg_0.e.x, var_0.e.x, arg_0.e.x), vec4<f32>(var_0.e.x, -291f, -1190f, var_0.e.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(424f, arg_0.e.x, -221f, -2366f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, 677f, -907f, -286f) * vec4<f32>(-1881f, 124f, -1000f, arg_0.e.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.e.x, -1846f, 853f)), vec4<f32>(-1072f, 1633f, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_div_f32(-205f, var_0.e.x)), !(!vec4<bool>(true, false, arg_0.d, arg_0.d)))))) + vec4<f32>(_wgslsmith_f_op_f32(var_0.e.x * arg_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x - -869f)), _wgslsmith_f_op_f32(step(-1139f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1411f - arg_0.e.x) + var_0.e.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - 1000f)))));
    return reverseBits(var_0.c);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = any(!vec4<bool>(any(vec2<bool>(true, true)), !(u_input.a.x < arg_1.x), !all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(arg_0.x - -1278f) > _wgslsmith_f_op_f32(-arg_0.x)));
    var_0 = true;
    var_0 = true;
    let var_1 = func_4(Struct_1(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(36670i, u_input.b), (u_input.b << (4294967295u % 32u)) ^ -2147483647i), 1i, ~(~func_3(72829u, vec3<i32>(-13851i, -9463i, 2147483647i), Struct_3(Struct_1(-1i, -2147483647i, 20423u, false, vec3<f32>(-1171f, arg_0.x, -571f)), vec3<i32>(u_input.b, 20270i, -65187i), Struct_1(-1i, -26302i, 4294967295u, false, vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x))), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, 222f, arg_0.x), vec3<f32>(arg_0.x, -625f, arg_0.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) * vec3<f32>(-292f, arg_0.x, 1087f))) - vec3<f32>(432f, -1461f, _wgslsmith_f_op_f32(step(arg_0.x, -561f))))));
    var var_2 = 0u;
    return Struct_1(firstLeadingBit(17787i), i32(-1i) * -2147483647i, var_1, true, _wgslsmith_f_op_vec3_f32(vec3<f32>(233f, -418f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * arg_0.x)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(898f, -994f))), _wgslsmith_f_op_f32(abs(arg_0.x)), -407f)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_u32(max(~vec4<u32>(1u, 1u, 1u, 1u), abs(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(12917u, 1u, 0u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(14286u, 3730u, 60645u, 1598u)))), vec4<u32>(1u, 1u, 1u, 1u));
    var var_1 = Struct_3(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-148f, 685f), vec2<f32>(-212f, 126f), true))) - vec2<f32>(_wgslsmith_f_op_f32(abs(1068f)), _wgslsmith_f_op_f32(round(1175f)))), u_input.a), ~countOneBits(firstTrailingBit(u_input.a)), func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1113f, -537f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(496f, 748f))))), -select(vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(13872i, u_input.b, u_input.b), true) ^ max(abs(u_input.a), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, 1i)))), -642f);
    let var_2 = var_0;
    let var_3 = var_1.a.a;
    var_1 = Struct_3(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2(var_1.c.e.zx, vec3<i32>(u_input.b, u_input.b, u_input.a.x)).e.zy)), vec3<i32>(~u_input.a.x, u_input.b, 35664i)), _wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(u_input.a, -u_input.a, vec3<i32>(1i, var_1.b.x, u_input.a.x)), ~_wgslsmith_mod_vec3_i32(abs(u_input.a), vec3<i32>(-76944i, 0i, u_input.b)), -select(var_1.b, vec3<i32>(var_1.c.a, u_input.a.x, -13608i), vec3<bool>(false, false, var_1.c.d)) ^ -select(var_1.b, vec3<i32>(-1i, var_1.a.a, u_input.b), var_1.c.d)), var_1.a, var_1.c.e.x);
    return func_2(_wgslsmith_f_op_vec2_f32(floor(var_1.c.e.yy)), vec3<i32>(abs(0i), i32(-1i) * -(u_input.b << (var_1.c.c % 32u)), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.e.yx)), arg_0.e.yx), vec3<u32>(~firstTrailingBit(abs(arg_0.c)), ~_wgslsmith_add_u32(68504u, arg_0.c) << (arg_0.c % 32u), _wgslsmith_sub_u32(arg_0.c << (10758u % 32u), ~4294967295u) ^ 88677u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) * _wgslsmith_div_f32(func_2(vec2<f32>(arg_0.e.x, arg_0.e.x), u_input.a).e.x, _wgslsmith_f_op_f32(439f + -587f))), true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1456f, arg_0.e.x, 1265f, arg_0.e.x)))))), arg_0.d), Struct_2(_wgslsmith_f_op_f32(-866f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.e.x)))), any(vec2<bool>(any(vec3<bool>(arg_0.d, true, arg_0.d)), arg_0.d)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, arg_0.e.x, -965f, 522f)))))), true), ~vec3<i32>(arg_0.a, -arg_0.b, u_input.a.x));
    var var_1 = firstLeadingBit(u_input.a.zz);
    let var_2 = vec4<bool>(arg_0.d, true, arg_0.d, arg_0.e.x == _wgslsmith_div_f32(-887f, -1330f));
    var_1 = abs(_wgslsmith_sub_vec2_i32(~firstLeadingBit(vec2<i32>(arg_0.a, var_0.e.x)) << (var_0.b.xx % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.b, var_1.x)), firstTrailingBit(vec2<i32>(0i, var_1.x))) << (vec2<u32>(~arg_0.c, arg_0.c) % vec2<u32>(32u))));
    var_1 = _wgslsmith_mult_vec2_i32(~var_0.e.zx, ~vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(-1i, 10479i)), u_input.b | var_0.e.x) >> (firstLeadingBit(vec2<u32>(1u, 4294967295u) | var_0.b.yz) % vec2<u32>(32u)));
    return StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x & arg_0.a, 2041i, _wgslsmith_mult_i32(var_1.x, 1i)), var_0.e), ~vec2<u32>(max(~var_0.b.x, func_3(var_0.b.x, u_input.a, Struct_3(Struct_1(var_0.e.x, 2147483647i, arg_0.c, false, var_0.d.c.wzy), vec3<i32>(u_input.b, 54769i, u_input.a.x), arg_0, -921f))), var_0.b.x), var_0.e, ~var_0.b.yx, -1810i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1());
}

