struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> vec3<u32> {
    let var_0 = arg_0;
    let var_1 = Struct_1(vec2<f32>(-714f, -1341f), ~firstTrailingBit(1u) < (abs(arg_0) | (_wgslsmith_mult_u32(0u, 4294967295u) >> ((0u >> (arg_0 % 32u)) % 32u))), vec2<i32>(u_input.a, -(-35883i & u_input.a) << (1u % 32u)));
    var var_2 = var_1;
    var var_3 = vec2<bool>(var_1.a.x == -335f, var_1.b);
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1168f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), -469f));
    return vec3<u32>(~_wgslsmith_div_u32(~(~arg_0), var_0), (19516u << (0u % 32u)) | ~arg_0, 0u << (firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(20675u, 17415u, 1u), ~vec3<u32>(73831u, 1u, var_0))) % 32u));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> vec2<i32> {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.zw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_2.x))), true, _wgslsmith_sub_vec2_i32(-vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.a, u_input.a))), select(reverseBits(select(42165u, 76062u, arg_0)), abs(4294967295u), all(!vec4<bool>(arg_1, arg_1, true, true))), Struct_1(arg_2.wy, arg_1, _wgslsmith_div_vec2_i32(vec2<i32>(-77190i, u_input.a), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a)))));
    var var_1 = _wgslsmith_dot_vec3_u32(~(vec3<u32>(50964u, ~12086u, 1u) | func_3(109772u, select(vec4<bool>(var_0.a.c.b, var_0.a.a.b, true, arg_0), vec4<bool>(true, arg_0, false, true), vec4<bool>(true, arg_1, var_0.a.a.b, var_0.a.a.b)), countOneBits(vec3<u32>(var_0.a.b, 1u, 0u)), vec3<bool>(var_0.a.c.b, arg_1, false))), vec3<u32>(31832u ^ var_0.a.b, 60173u, max(55407u, min(~34486u, 4294967295u))));
    var var_2 = arg_2.zyx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.a.x)), var_2.x)));
    var var_4 = ~vec4<u32>(~87853u, 1u, ~var_0.a.b, 0u);
    return vec2<i32>(-(~(-(~u_input.a))), -2147483647i);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, reverseBits(-u_input.a) ^ u_input.a, -u_input.a), (~vec3<i32>(123i, u_input.a, 1i) & (vec3<i32>(u_input.a, 55412i, -1i) ^ firstLeadingBit(vec3<i32>(u_input.a, -1i, u_input.a)))) & vec3<i32>(-2147483647i, u_input.a, _wgslsmith_dot_vec2_i32(func_2(false, false, vec4<f32>(1821f, 2301f, 1774f, 477f)), vec2<i32>(u_input.a, u_input.a))));
    var_0 = ~(-firstTrailingBit(vec3<i32>(var_0.x, u_input.a, 47036i))) >> (vec3<u32>(_wgslsmith_mod_u32(abs(~46085u), 1u), countOneBits(func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(18361u, 273u), vec2<u32>(4294967295u, 45288u)), vec4<bool>(true, true, true, true), vec3<u32>(28227u, 35820u, 4135u), vec3<bool>(true, true, true)).x), _wgslsmith_clamp_u32(1u, 1u, ~1u) ^ ~1u) % vec3<u32>(32u));
    var_0 = vec3<i32>(abs(u_input.a), _wgslsmith_sub_i32(var_0.x, _wgslsmith_sub_i32(37716i, ~(~var_0.x))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, var_0.x)), ~vec2<i32>(0i, var_0.x)), ~(~1i)));
    let var_1 = var_0.x;
    let var_2 = ~vec3<i32>(0i, 18418i, -firstTrailingBit(_wgslsmith_add_i32(19966i, var_0.x)));
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(27431u, 6873u), 1u);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.a.a.a.x, arg_1.a.a.a.x, true)), 1443f), arg_1.a.c.b, -(~arg_1.a.a.c << (vec2<u32>(firstLeadingBit(1u), 1u) % vec2<u32>(32u))));
    var var_1 = vec2<i32>(~(-min(var_0.c.x, 4508i) | u_input.a), 2147483647i);
    var_1 = _wgslsmith_add_vec2_i32(select(_wgslsmith_add_vec2_i32(~var_0.c, _wgslsmith_clamp_vec2_i32(var_0.c, vec2<i32>(arg_1.a.a.c.x, u_input.a), var_0.c)) | var_0.c, var_0.c, !select(arg_1.a.c.b, true, arg_1.a.c.b) != (var_0.b | !var_0.b)), vec2<i32>(-firstLeadingBit(_wgslsmith_clamp_i32(arg_1.a.c.c.x, -23596i, -1i)), -firstLeadingBit(_wgslsmith_sub_i32(var_1.x, var_1.x))));
    var var_2 = arg_1.a;
    var_1 = min(~min(vec2<i32>(arg_1.a.a.c.x, arg_1.a.a.c.x), _wgslsmith_div_vec2_i32(-var_2.a.c, var_2.a.c | vec2<i32>(1i, 26739i))), arg_1.a.a.c);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_4(func_1() >> (~(~(82269u >> (1u % 32u))) % 32u), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(791f, 126f)), true, ~vec2<i32>(u_input.a, -1i)), _wgslsmith_div_u32(53302u, ~1u), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1375f, -1000f))), true, vec2<i32>(-42413i, u_input.a)))), ~vec4<u32>(4294967295u, 42520u, 4294967295u, 1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(668f - _wgslsmith_div_f32(-682f, _wgslsmith_f_op_f32(1556f - -558f))), _wgslsmith_f_op_f32(floor(1001f)), var_0)));
    let var_2 = Struct_3(Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.c.a.x * -980f), var_1.a.a.a.x), any(!vec4<bool>(false, var_1.a.a.b, false, false)), var_1.a.a.c << (vec2<u32>(28736u, 0u) % vec2<u32>(32u))), 17766u ^ reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(86132u, 12827u, var_1.a.b), vec3<u32>(var_1.a.b, 32715u, 0u))), var_1.a.a));
    let var_3 = 1i << (~var_1.a.b % 32u);
    var_1 = Struct_3(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1296f, 416f)) * -1574f), _wgslsmith_f_op_f32(trunc(var_1.a.c.a.x)), _wgslsmith_f_op_f32(-var_2.a.a.a.x)), 2147483647i & firstLeadingBit(_wgslsmith_sub_i32(-593i, firstTrailingBit(var_2.a.c.c.x))), var_2.a.b);
}

