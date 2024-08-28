struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    let var_0 = Struct_1(~4294967295u, ~select(2056i, reverseBits(-1i), true));
    let var_1 = Struct_3(~(~firstLeadingBit(~vec3<u32>(50041u, 33530u, 12524u))), vec4<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true)), all(vec2<bool>(true, true)), true, false), ~vec4<u32>(var_0.a, 1u, _wgslsmith_add_u32(countOneBits(var_0.a), u_input.a.x), ~4294967295u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(sign(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-173f + arg_1)), false)), arg_1));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-489f - _wgslsmith_f_op_f32(-var_1.d))) + 1231f), _wgslsmith_f_op_f32(3288f - _wgslsmith_f_op_f32(arg_1 + var_1.d)));
    let var_3 = u_input.c;
    var var_4 = vec4<bool>(false, var_1.d <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.d, _wgslsmith_f_op_f32(1433f * 757f), all(vec2<bool>(var_1.b.x, false))))), false, var_1.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -301f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-461f, 167f)) + arg_1)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.d, _wgslsmith_f_op_f32(round(-619f)))), 1000f));
}

fn func_2() -> vec3<i32> {
    let var_0 = ~(~(~u_input.b));
    var var_1 = Struct_4(753f);
    let var_2 = _wgslsmith_div_i32(-u_input.c, _wgslsmith_clamp_i32(u_input.c, u_input.c, -(~u_input.c >> (var_0 % 32u))));
    var_1 = Struct_4(-414f);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(func_3(vec3<u32>(1u, 14754u, u_input.b) ^ vec3<u32>(76494u, u_input.b, var_0), -319f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(trunc(-754f)), true)))));
    return -(~vec3<i32>(var_2, -1i, u_input.c & ~(-31674i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(func_3(vec3<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.b)), vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.b) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_add_u32(u_input.b, ~0u), ~(~99691u) | u_input.b), _wgslsmith_f_op_f32(ceil(-158f))));
    var var_2 = -var_0.xx;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))) - _wgslsmith_f_op_f32(-arg_1.a)))));
    var_2 = _wgslsmith_sub_vec2_i32(abs(vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-26769i, -62411i, -1i, var_2.x), vec4<i32>(-1i, -2147483647i, var_2.x, u_input.c))), u_input.c)), _wgslsmith_mod_vec2_i32(var_0.xx, -_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, arg_0.x), vec2<i32>(var_0.x, var_2.x)) | vec2<i32>(~28778i, ~var_2.x)));
    return Struct_1(min(~8220u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 74836u, 1u, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 1u), vec4<u32>(3732u, 22025u, 4294967295u, 109491u)), 0u)), max(abs(1i), -1i));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = arg_0.zzx ^ _wgslsmith_mod_vec3_i32(~(-_wgslsmith_clamp_vec3_i32(arg_0.wwx, arg_0.xxy, arg_0.www)), arg_0.wwz);
    let var_1 = ~_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(arg_1.a, u_input.b, arg_1.a, arg_1.a)), vec4<u32>(5029u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), arg_1.a, arg_1.a)) >> (arg_1.a % 32u);
    let var_2 = Struct_5(arg_1.a | arg_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -137f))), !(!vec4<bool>(true, arg_2, any(vec2<bool>(false, false)), 1u >= var_1)), Struct_3(firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(32442u, 1u), _wgslsmith_add_u32(arg_1.a, 4294967295u), ~0u)), vec4<bool>(any(!vec3<bool>(arg_2, arg_2, false)), arg_2 == true, true, ~0u < u_input.b), ~vec4<u32>(_wgslsmith_sub_u32(123207u, 1u), ~21675u, 6002u, var_1 >> (35890u % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1723f, -1415f) * _wgslsmith_f_op_f32(287f * 1691f))))), _wgslsmith_add_i32(var_0.x, -(i32(-1i) * -2147483647i)));
    let var_3 = vec4<u32>(~max(var_1, select(~0u, abs(22279u), !arg_2)), (_wgslsmith_dot_vec3_u32(~var_2.d.a, vec3<u32>(64691u, u_input.b, var_1)) << (37669u % 32u)) << (102678u % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~4294967295u, ~u_input.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(32026u, 4294967295u, 1u) << (vec3<u32>(34918u, 12067u, var_1) % vec3<u32>(32u)), var_2.d.a, ~vec3<u32>(var_2.a, var_2.d.c.x, 3817u))), var_2.a);
    var var_4 = _wgslsmith_mod_i32(-(~30800i), _wgslsmith_mod_i32(~0i, _wgslsmith_sub_i32(-1i, func_2().x >> (firstLeadingBit(4294967295u) % 32u))));
    return ~_wgslsmith_sub_u32(4294967295u, ~u_input.a.x | var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f)) - 1f));
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(56180u, u_input.b, 27172u << (func_4(vec4<i32>(-1i, 6461i, u_input.c, 0i) | vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), func_1(vec4<i32>(u_input.c, 1i, u_input.c, u_input.c), Struct_4(var_0.a), vec3<f32>(-1610f, var_0.a, -1000f), vec2<bool>(false, true)), true) % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 1u) ^ vec4<u32>(4294967295u, 0u, 0u, u_input.b), max(vec4<u32>(63814u, u_input.b, 1u, u_input.a.x), vec4<u32>(1u, 1u, 1u, 1u))), 50417u << ((max(u_input.a.x, 1371u) << (~u_input.a.x % 32u)) % 32u)), ~0u);
    var_0 = Struct_4(_wgslsmith_f_op_f32(abs(var_0.a)));
    let var_2 = all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), ~13382i <= countOneBits(u_input.c)));
    var var_3 = min(vec4<i32>(-22639i, 0i, -5897i, -_wgslsmith_sub_i32(u_input.c, -13868i)), _wgslsmith_sub_vec4_i32(max(-vec4<i32>(u_input.c, -9165i, -2147483647i, u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -1i, -1i, 1i), vec4<i32>(u_input.c, u_input.c, -1i, u_input.c))), -(vec4<i32>(8626i, u_input.c, u_input.c, u_input.c) | vec4<i32>(7922i, -49200i, 67990i, -2945i)))) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32((vec4<u32>(var_1.x, 0u, 22274u, u_input.a.x) << (vec4<u32>(u_input.a.x, 1u, 0u, 10276u) % vec4<u32>(32u))) | vec4<u32>(var_1.x, 10069u, var_1.x, 1u), vec4<u32>(select(18578u, 1u, var_2), countOneBits(88689u), _wgslsmith_sub_u32(var_1.x, 7788u), ~u_input.b)), select(vec4<u32>(~var_1.x, 103943u, var_1.x, 4294967295u), countOneBits(select(vec4<u32>(8004u, var_1.x, u_input.b, 28723u), vec4<u32>(var_1.x, u_input.b, 1u, 0u), vec4<bool>(true, false, true, var_2))), true)) % vec4<u32>(32u));
    var_0 = Struct_4(var_0.a);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 346f))), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(round(var_0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(36343u, _wgslsmith_div_u32(u_input.a.x, 108623u)) << (vec2<u32>(1u, 62767u) % vec2<u32>(32u)), -1144f);
}

