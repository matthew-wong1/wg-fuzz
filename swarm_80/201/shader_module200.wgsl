struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = select(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, arg_0.b.d), vec3<bool>(arg_0.b.d, false, arg_0.b.d), vec3<bool>(arg_0.b.d, arg_0.b.d, arg_0.b.d)), select(vec3<bool>(false, arg_0.b.d, true), vec3<bool>(false, false, arg_0.b.d), false), vec3<bool>(true, true, arg_0.b.d)), true), select(select(!vec3<bool>(false, arg_0.b.d, arg_0.b.d), !vec3<bool>(arg_0.b.d, arg_0.b.d, arg_0.b.d), select(vec3<bool>(arg_0.b.d, false, arg_0.b.d), vec3<bool>(false, arg_0.b.d, true), arg_0.b.d)), select(select(vec3<bool>(true, arg_0.b.d, false), vec3<bool>(arg_0.b.d, true, true), vec3<bool>(arg_0.b.d, true, true)), select(vec3<bool>(false, false, arg_0.b.d), vec3<bool>(false, false, true), arg_0.b.d), select(vec3<bool>(true, true, false), vec3<bool>(arg_0.b.d, true, arg_0.b.d), arg_0.b.d)), vec3<bool>(false, true, any(vec2<bool>(arg_0.b.d, false)))), !vec3<bool>(u_input.a <= u_input.b, true, all(vec4<bool>(false, true, arg_0.b.d, true)))), select(select(select(select(vec3<bool>(arg_0.b.d, arg_0.b.d, false), vec3<bool>(true, arg_0.b.d, arg_0.b.d), vec3<bool>(true, arg_0.b.d, arg_0.b.d)), vec3<bool>(false, arg_0.b.d, arg_0.b.d), !vec3<bool>(arg_0.b.d, false, true)), !select(vec3<bool>(true, arg_0.b.d, arg_0.b.d), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_0.b.d, arg_0.b.d), vec3<bool>(arg_0.b.d, arg_0.b.d, arg_0.b.d), true), vec3<bool>(arg_0.b.d, arg_0.b.d, arg_0.b.d))), select(vec3<bool>(1322f <= arg_0.b.c, select(arg_0.b.d, arg_0.b.d, arg_0.b.d), arg_0.b.d), vec3<bool>(all(vec4<bool>(arg_0.b.d, false, arg_0.b.d, arg_0.b.d)), true, any(vec4<bool>(arg_0.b.d, false, true, false))), select(!vec3<bool>(arg_0.b.d, arg_0.b.d, true), select(vec3<bool>(arg_0.b.d, false, arg_0.b.d), vec3<bool>(arg_0.b.d, arg_0.b.d, false), false), true)), arg_0.b.d), !vec3<bool>(-2147483647i >= (arg_0.b.b.a.x << (u_input.b % 32u)), any(select(vec2<bool>(arg_0.b.d, arg_0.b.d), vec2<bool>(arg_0.b.d, arg_0.b.d), false)), true));
    let var_1 = (arg_0.b.a.a.xy << (arg_0.a.zz % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_add_i32(reverseBits(-18025i), arg_0.c.a.x), ~_wgslsmith_div_i32(-17331i, arg_0.c.a.x) >> (max(1u, ~4294967295u) % 32u));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = (0u ^ u_input.a) << (0u % 32u);
    var var_1 = min(vec2<u32>(_wgslsmith_mod_u32(1u, var_0), u_input.a), ~firstLeadingBit(abs(vec2<u32>(var_0, var_0)))) << (vec2<u32>(~min(~48578u, u_input.a), ~select(_wgslsmith_mod_u32(var_0, var_0), 0u, true)) % vec2<u32>(32u));
    let var_2 = select(select(select(vec4<bool>(arg_0, any(vec4<bool>(arg_0, arg_0, false, arg_0)), true, false), vec4<bool>(623f == arg_2.x, true, arg_0, arg_0 && false), arg_0 && arg_0), select(select(vec4<bool>(false, false, arg_0, arg_0), select(vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, true, arg_0, true), arg_0), true | arg_0), !select(vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, false, true, true), arg_0), vec4<bool>(all(vec3<bool>(false, arg_0, arg_0)), arg_0, !arg_0, all(vec3<bool>(arg_0, arg_0, arg_0)))), true), !select(!(!vec4<bool>(arg_0, arg_0, arg_0, false)), select(vec4<bool>(true, arg_0, arg_0, arg_0), !vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, false, arg_0, false)), select(vec4<bool>(true, arg_0, false, false), !vec4<bool>(arg_0, true, arg_0, arg_0), !vec4<bool>(arg_0, false, arg_0, false))), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(-14551i, arg_1.x)), vec2<i32>(arg_1.x << (u_input.a % 32u), arg_1.x)) != -arg_1.x);
    var var_3 = firstTrailingBit(arg_1.wy);
    return arg_2.x;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(-vec4<i32>(-11089i, 0i, 2147483647i, 4778i), vec4<i32>(_wgslsmith_add_i32(-28370i, -27718i), _wgslsmith_mod_i32(2147483647i, 31101i), -2147483647i, 1i)), 1u), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, u_input.a, 56038u), vec4<u32>(21633u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.b, 0u, u_input.b, 19502u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-4359i, 21055i, -23568i, 67615i))), u_input.b), _wgslsmith_f_op_f32(func_4(any(vec2<bool>(true, true)) | func_3(Struct_3(vec4<u32>(u_input.b, u_input.b, 1u, 1u), Struct_2(Struct_1(vec4<i32>(0i, -1i, 25155i, 0i), 38068u), Struct_1(vec4<i32>(27580i, -1198i, 0i, 12063i), u_input.b), -500f, arg_0, vec3<f32>(964f, 656f, 504f)), Struct_1(vec4<i32>(-63425i, -16040i, -1i, 1i), 68707u))), (vec4<i32>(53405i, -1i, -1i, 1i) | firstTrailingBit(vec4<i32>(-11008i, 2147483647i, 7140i, 18680i))) | _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(34283i, -1i, -30810i, 28667i), vec4<i32>(-1i, -1i, -11480i, -30318i)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-535f, -791f)))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1015f, 256f)))))), !(true || arg_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1007f - -123f) + _wgslsmith_f_op_f32(f32(-1f) * -2109f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1061f * 1307f) + 298f), -1525f));
    let var_1 = Struct_3(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, 3678u, 0u, var_0.b.b)), max(~vec4<u32>(4294967295u, u_input.b, var_0.a.b, 4294967295u), firstTrailingBit(vec4<u32>(var_0.b.b, 0u, 5586u, var_0.b.b))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.b, u_input.a, var_0.a.b, var_0.a.b), vec4<u32>(6028u, 4294967295u, var_0.a.b, 53956u)) & vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b)), max(vec4<u32>(~u_input.a, u_input.b, abs(0u), ~var_0.a.b), ~vec4<u32>(var_0.b.b, var_0.a.b, var_0.a.b, u_input.a))), Struct_2(var_0.a, Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.a.a, vec4<i32>(var_0.b.a.x, 14576i, var_0.a.a.x, 55834i), vec4<i32>(var_0.b.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)), var_0.b.a), 34208u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.c, var_0.e.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1710f))) != -1196f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.e, var_0.e))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.e + vec3<f32>(var_0.c, var_0.e.x, var_0.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-835f, var_0.c, var_0.e.x))))), var_0.a);
    var_0 = Struct_2(var_1.c, Struct_1(var_0.b.a, max(u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1919f))), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.b.e)) - vec3<f32>(-1595f, var_1.b.e.x, 2256f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(247f - var_0.c)), _wgslsmith_f_op_f32(-var_1.b.e.x), 227f)));
    var var_2 = countOneBits(var_0.a.a.x);
    return var_1.b;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    let var_0 = ~(~(~(~(~67151u))));
    var var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(arg_0.e.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -956f) * _wgslsmith_f_op_f32(f32(-1f) * -441f))), _wgslsmith_f_op_f32(func_4(~u_input.b > ~0u, ~max(arg_0.a.a, arg_0.a.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 321f)))), _wgslsmith_f_op_f32(-func_2(arg_0.d).c)), !(!select(select(vec3<bool>(arg_0.d, arg_0.d, arg_0.d), vec3<bool>(false, arg_0.d, false), vec3<bool>(false, arg_0.d, arg_0.d)), select(vec3<bool>(true, true, arg_0.d), vec3<bool>(true, true, arg_0.d), vec3<bool>(false, arg_0.d, arg_0.d)), !vec3<bool>(arg_0.d, arg_0.d, arg_0.d))), arg_0.a.b);
    return Struct_3(~vec4<u32>(func_2(false).a.b, 4294967295u, ~select(36403u, arg_0.b.b, false), ~var_0), Struct_2(arg_0.b, func_2(func_3(Struct_3(vec4<u32>(var_0, arg_0.b.b, var_1.c, 1u), arg_0, arg_0.a))).a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x - arg_0.e.x)), arg_0.c)), true | (33392u >= u_input.b), vec3<f32>(-664f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + 1408f)))), arg_0.b);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: bool, arg_3: vec4<f32>) -> f32 {
    let var_0 = func_5(func_2(true));
    let var_1 = arg_1.zy | func_2(false).a.a.xz;
    let var_2 = func_2((var_0.b.c >= var_0.b.c) & ((func_2(var_0.b.d).d | false) && true)).b.a.zzw;
    let var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(389f * arg_3.x)), var_3)));
    return -147f;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = ~(~(~firstTrailingBit(4294967295u << (arg_3.a.b % 32u))));
    let var_1 = any(!vec4<bool>(true, true, all(vec4<bool>(arg_1.b.d, false, arg_1.b.d, true)), !arg_1.b.d));
    let var_2 = ~(~arg_2.wz) ^ select(_wgslsmith_mod_vec2_i32(func_2(arg_3.a.b >= 0u).a.a.yy, -vec2<i32>(-2147483647i, arg_1.b.a.a.x)), arg_3.b.a.yx, select(vec2<bool>(32073i < arg_3.b.a.x, true), vec2<bool>(true, !arg_3.d), vec2<bool>(false, any(vec2<bool>(false, var_1)))));
    return vec3<bool>(true, true, !(arg_3.b.b == ~(~arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2133f, -306f, 652f, -248f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -976f), -965f, _wgslsmith_f_op_f32(ceil(401f)), -402f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, 787f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-647f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(249f)) + _wgslsmith_div_f32(158f, -1088f)))));
    let var_1 = 0u;
    var var_2 = Struct_4(vec4<f32>(1469f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -887f))) - _wgslsmith_f_op_f32(sign(-238f))), 110f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 158f)), func_6(vec4<f32>(_wgslsmith_f_op_f32(115f * _wgslsmith_f_op_f32(func_1(true, vec4<i32>(-5143i, 18584i, 45709i, 4424i), false, vec4<f32>(1022f, -1000f, var_0.x, var_0.x)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), Struct_3(~select(vec4<u32>(3368u, 1u, u_input.b, 48295u), vec4<u32>(33931u, var_1, u_input.a, u_input.a), false), func_5(Struct_2(Struct_1(vec4<i32>(-2147483647i, 19917i, -1i, 2147483647i), 12235u), Struct_1(vec4<i32>(1i, -1150i, -17218i, -1i), 27663u), var_0.x, true, vec3<f32>(var_0.x, 1010f, var_0.x))).b, func_5(Struct_2(Struct_1(vec4<i32>(1i, 1i, -51869i, -2147483647i), var_1), Struct_1(vec4<i32>(1i, 454i, -1i, -2147483647i), var_1), var_0.x, true, var_0.zwx)).b.b), vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -1i, -17960i), ~0i, -2147483647i, 2147483647i), func_2(true)), ~_wgslsmith_mult_u32(u_input.a, 1u));
    var_2 = Struct_4(_wgslsmith_div_vec4_f32(var_2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-360f - -1000f), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(abs(var_2.a.x)), var_0.x))), select(!(!select(vec3<bool>(false, var_2.b.x, var_2.b.x), vec3<bool>(false, false, true), true)), func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1220f, var_0.x, 1000f))), Struct_3(~vec4<u32>(9957u, 4294967295u, 7369u, var_1), func_2(var_2.b.x), func_5(Struct_2(Struct_1(vec4<i32>(19359i, -1i, -1i, 1i), u_input.b), Struct_1(vec4<i32>(-47903i, -2147483647i, 0i, 2147483647i), u_input.b), -1291f, var_2.b.x, var_2.a.xyy)).b.b), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), Struct_2(func_5(Struct_2(Struct_1(vec4<i32>(-2147483647i, 2147483647i, 39930i, 2147483647i), 1u), Struct_1(vec4<i32>(-2147483647i, 5760i, 2147483647i, 28033i), var_1), var_2.a.x, var_2.b.x, vec3<f32>(var_0.x, var_2.a.x, -117f))).c, func_2(true).a, var_0.x, var_2.b.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1186f, 1000f, var_0.x), var_2.a.yxx)))), select(var_2.b, func_6(var_0, Struct_3(vec4<u32>(var_1, var_1, var_1, 74013u), Struct_2(Struct_1(vec4<i32>(-27214i, 6434i, 0i, -1i), var_2.c), Struct_1(vec4<i32>(-36222i, 19074i, -23293i, -22263i), var_1), 168f, var_2.b.x, var_0.wwz), Struct_1(vec4<i32>(-2147483647i, -19182i, -36963i, -25612i), 0u)), vec4<i32>(14508i, -16254i, -17336i, -1i) >> (vec4<u32>(u_input.b, var_2.c, 0u, var_1) % vec4<u32>(32u)), Struct_2(Struct_1(vec4<i32>(1i, -2147483647i, 57594i, 2147483647i), u_input.b), Struct_1(vec4<i32>(-35544i, 2147483647i, -1i, 6504i), var_2.c), -1000f, true, var_0.wxz)), !var_2.b)), u_input.b);
    let var_3 = ((14323i << ((select(var_1, 33259u, var_2.b.x) << (66425u % 32u)) % 32u)) << (select(_wgslsmith_add_u32(16501u, var_2.c) >> (_wgslsmith_add_u32(u_input.a, var_1) % 32u), ~(29247u << (u_input.b % 32u)), var_2.b.x) % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(max(var_1, 24860u), ~37127u, 139930u, u_input.b) | _wgslsmith_add_vec4_u32(vec4<u32>(75567u, 1108u, u_input.b, var_1) ^ vec4<u32>(0u, var_1, var_1, var_1), ~vec4<u32>(0u, 0u, u_input.a, 25597u)), (vec4<u32>(var_2.c, 32960u, 4294967295u, 42320u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 7614u, var_1, 57810u), vec4<u32>(4294967295u, 1u, var_2.c, var_1))) << (select(vec4<u32>(36886u, u_input.a, var_2.c, 18481u) | vec4<u32>(21143u, 19712u, 9721u, var_2.c), ~vec4<u32>(1129u, u_input.b, 1u, 1u), true) % vec4<u32>(32u))) % 32u);
    var var_4 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_3, 41347i, 30523i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_3, -27652i, var_3), vec3<i32>(var_3, var_3, -34805i), vec3<i32>(23940i, -6705i, var_3)), ~vec3<i32>(2147483647i, 2147483647i, var_3)), (countOneBits(vec3<i32>(var_3, 48766i, 2147483647i)) & vec3<i32>(var_3, var_3, 1i)) & ~reverseBits(vec3<i32>(1i, var_3, var_3))) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(28747u, u_input.a, u_input.a), vec3<u32>(var_1, 1u, 0u)), vec3<u32>(var_1, 9880u, u_input.a)), ~(~vec3<u32>(u_input.a, var_2.c, 13449u))), 51180u, _wgslsmith_mod_u32(abs(1633u) & var_1, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, var_1), ~4294967295u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_2(var_2.b.x).e.x))), _wgslsmith_add_u32(firstTrailingBit(var_1), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(96387u, u_input.a)), vec2<u32>(14434u, 4294967295u) << (vec2<u32>(0u, var_2.c) % vec2<u32>(32u))), _wgslsmith_mod_u32(~var_1, ~2406u))), ~vec3<u32>(1u ^ max(var_2.c, 77112u), max(58777u, 0u & u_input.a), 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f - _wgslsmith_f_op_f32(abs(1318f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(2173f, _wgslsmith_div_f32(-468f, var_2.a.x)), var_0.x)));
}

