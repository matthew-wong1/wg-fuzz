struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(30278i, 26900i, arg_2, u_input.d.x)), min(vec4<i32>(arg_2, 36394i, 23101i, arg_2) << (vec4<u32>(u_input.b, 37524u, 45962u, u_input.b) % vec4<u32>(32u)), vec4<i32>(arg_2, u_input.d.x, u_input.d.x, u_input.a.x) | vec4<i32>(arg_2, -1i, u_input.d.x, u_input.a.x))) | _wgslsmith_div_vec4_i32(~vec4<i32>(103256i, u_input.d.x, arg_2, arg_2) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, 24182u, u_input.c.x), vec4<u32>(u_input.b, 53204u, u_input.c.x, 26490u)) % vec4<u32>(32u)), min(vec4<i32>(u_input.d.x, u_input.a.x, -31860i, arg_2) & vec4<i32>(2348i, arg_2, arg_2, 10973i), vec4<i32>(2147483647i, 0i, -9553i, 2147483647i) | vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))), abs(-(~(-vec4<i32>(arg_2, 0i, -1i, -94199i)))));
    let var_1 = true;
    let var_2 = select(!(!select(!vec2<bool>(true, var_1), vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(true, false), arg_1))), vec2<bool>(any(!select(vec3<bool>(arg_1, false, false), vec3<bool>(true, var_1, false), vec3<bool>(arg_1, true, false))), any(vec4<bool>(true, true, true, var_1))), !(!vec2<bool>(!var_1, true)));
    var var_3 = u_input.b ^ 1u;
    var_3 = ~(u_input.c.x & (_wgslsmith_sub_u32(57208u, ~u_input.b) ^ (~u_input.b & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16773u, 4294967295u), vec3<u32>(0u, 1u, 76743u)))));
    return Struct_1(-(i32(-1i) * -29426i));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = !(!select(select(vec4<bool>(arg_0.a.x, false, true, arg_0.b.x), !vec4<bool>(arg_0.b.x, arg_0.a.x, false, false), !arg_0.a.x), vec4<bool>(arg_0.b.x, true, true, false), (arg_0.b.x && true) | (false | arg_0.b.x)));
    var var_1 = 36766i;
    let var_2 = arg_0;
    var var_3 = false;
    var_1 = select(_wgslsmith_dot_vec3_i32(select(vec3<i32>(i32(-1i) * -10306i, arg_2.a, _wgslsmith_div_i32(7675i, -11542i)), ~(vec3<i32>(-3479i, 14702i, u_input.d.x) ^ vec3<i32>(u_input.d.x, arg_2.a, arg_2.a)), var_2.a), abs(vec3<i32>(-1i) * -vec3<i32>(-21835i, 1i, arg_3))), arg_3, !arg_0.a.x);
    return true;
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(select(vec3<bool>(false, !any(vec3<bool>(false, false, true)), !select(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, func_3(Struct_2(vec3<bool>(false, true, false), vec2<bool>(true, false), u_input.b), vec3<f32>(-582f, 386f, -1000f), Struct_1(arg_0.a), arg_0.a), all(vec4<bool>(true, false, true, true))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !all(vec2<bool>(true, false))), select(select(vec2<bool>(true, all(vec3<bool>(false, false, true))), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(arg_0.a > u_input.a.x, false), false), false), u_input.c.x);
    let var_1 = reverseBits(firstLeadingBit(_wgslsmith_add_u32(~(~0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(13281u, 665u, 24398u, var_0.c), vec4<u32>(1u, u_input.c.x, 8219u, u_input.b)))));
    let var_2 = Struct_2(select(var_0.a, vec3<bool>(any(select(var_0.a, vec3<bool>(var_0.b.x, false, true), false)), false, false), true && var_0.b.x), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(var_0.a.x, var_0.b.x), false)), var_0.b, true), 89068u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(732f, 712f, false))))))) + 377f);
    var var_4 = _wgslsmith_f_op_f32(var_3 - 1514f);
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3))), -592f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<bool> {
    let var_0 = Struct_2(select(select(vec3<bool>(any(vec2<bool>(true, false)), false, true), vec3<bool>(true, true, 0u == u_input.c.x), _wgslsmith_f_op_f32(545f - arg_0.x) >= arg_0.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, select(true, true, true), true)), !(!vec2<bool>(1u < u_input.c.x, false)), u_input.c.x);
    var var_1 = (abs(arg_3.yyx) ^ vec3<i32>(-1i, u_input.a.x, u_input.d.x)) >> (vec3<u32>(~var_0.c, _wgslsmith_mult_u32(min(reverseBits(u_input.b), _wgslsmith_clamp_u32(u_input.c.x, arg_1.x, 0u)), 1u), 42663u) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_vec2_f32(func_2(arg_2)).x));
    var_1 = _wgslsmith_div_vec3_i32(arg_3.zww, reverseBits(-arg_3.wzz ^ select(select(arg_3.ywy, vec3<i32>(arg_2.a, var_1.x, u_input.a.x), var_0.a), _wgslsmith_mult_vec3_i32(arg_3.wyw, vec3<i32>(arg_2.a, -20658i, 26637i)), arg_3.x == arg_2.a)));
    let var_3 = ~vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, var_0.c), firstTrailingBit(u_input.b))), (_wgslsmith_sub_u32(43551u, 14358u) | (var_0.c ^ u_input.b)) | ~u_input.b, min(arg_1.x, firstTrailingBit(~u_input.b)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, u_input.b), vec2<u32>(arg_1.x, arg_1.x)), ~arg_1.xz >> ((u_input.c ^ vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u))));
    return vec3<bool>(false, !any(vec2<bool>(var_0.b.x, u_input.d.x > 34685i)), (_wgslsmith_f_op_f32(arg_0.x - arg_0.x) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)) & (_wgslsmith_mod_u32(u_input.c.x, u_input.b >> (0u % 32u)) >= abs(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-374f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) * _wgslsmith_f_op_f32(496f + -227f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(func_1(vec4<f32>(-256f, 1964f, 564f, 261f), true, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2031f, -849f)))), false))), _wgslsmith_mult_vec3_u32(vec3<u32>(min(u_input.b >> (6317u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 32474u, u_input.c.x), vec3<u32>(u_input.b, 0u, 35046u))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, u_input.c.x, 31375u), ~u_input.b), u_input.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(max(1u, 0u), u_input.b, ~u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), firstLeadingBit(vec3<u32>(1u, u_input.b, 4294967295u))))), Struct_1(select(firstLeadingBit(u_input.d.x), i32(-1i) * -u_input.a.x, false)), abs(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-36433i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.d.x)), -vec4<i32>(-10202i, -2147483647i, u_input.d.x, -1i), vec4<i32>(u_input.a.x, u_input.d.x, 41094i, 28351i)), _wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 2147483647i), vec4<i32>(u_input.d.x, 2147483647i, -2147483647i, u_input.a.x)), vec4<i32>(15340i, 0i, -5435i, u_input.a.x)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1024f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(381f)), _wgslsmith_f_op_f32(-110f + -837f)))) + 1f);
    let var_2 = _wgslsmith_add_vec4_u32(~(~(vec4<u32>(1u, u_input.b, 1u, 4294967295u) >> (vec4<u32>(28163u, 6153u, u_input.b, 91468u) % vec4<u32>(32u))) | abs(vec4<u32>(u_input.b, u_input.b, u_input.c.x, 0u) | vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.b))), vec4<u32>(29349u, ~1u, u_input.b, _wgslsmith_div_u32(~_wgslsmith_add_u32(34814u, u_input.b), abs(1u))));
    let var_3 = vec4<i32>(~_wgslsmith_mult_i32(u_input.a.x, -(~u_input.d.x)), u_input.d.x ^ _wgslsmith_div_i32(u_input.d.x, u_input.a.x), -14952i, reverseBits(u_input.d.x));
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(var_3.x))).x, -652f))))) < -580f;
    var var_5 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1167f, _wgslsmith_f_op_f32(-659f + 1580f)) - -165f))), -1462f);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, (_wgslsmith_dot_vec2_u32(u_input.c | var_2.xw, vec2<u32>(1u, 39750u) | vec2<u32>(1u, var_2.x)) | min(firstLeadingBit(u_input.c.x), min(47255u, 25333u))) << (u_input.c.x % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * -159f), 7278i & _wgslsmith_div_i32(0i << (abs(u_input.c.x) % 32u), var_3.x));
}

