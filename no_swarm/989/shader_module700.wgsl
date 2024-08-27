struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> u32 {
    let var_0 = Struct_1(~_wgslsmith_sub_u32(98460u, countOneBits(31443u)), vec3<bool>(true, true, true), max(~0u, ~(~countOneBits(18u))), !(!select(true, true, arg_0.x == -958f)), abs(vec3<u32>(~_wgslsmith_mod_u32(75785u, 4294967295u), 23000u, 4294967295u)));
    return 0u;
}

fn func_2() -> Struct_1 {
    var var_0 = -253f;
    let var_1 = ~(~(~func_3(vec3<f32>(-832f, -270f, 1278f), vec4<f32>(599f, 693f, 1341f, -1029f)) ^ 1u));
    let var_2 = vec3<u32>(var_1, 64236u, _wgslsmith_div_u32((_wgslsmith_mult_u32(var_1, var_1) << (min(var_1, 0u) % 32u)) & 27374u, var_1));
    var var_3 = any(!select(vec2<bool>(any(vec4<bool>(true, false, false, true)), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false))));
    let var_4 = Struct_1(29023u, select(vec3<bool>(!all(vec3<bool>(true, false, true)), countOneBits(var_1) >= var_1, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, true)), true), firstLeadingBit(countOneBits(1460u) >> ((4294967295u >> ((4294967295u << (var_1 % 32u)) % 32u)) % 32u)), !(!all(vec4<bool>(true, true, true, true))), var_2);
    return Struct_1(_wgslsmith_mult_u32(var_1, var_2.x), select(vec3<bool>(var_4.d, !any(var_4.b), true), !var_4.b, var_4.b), ~_wgslsmith_mult_u32(min(var_1, ~var_1), ~1u), var_4.d, ~(~var_2));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: u32) -> u32 {
    let var_0 = u_input.a.wz;
    let var_1 = func_2();
    var var_2 = Struct_1(~arg_0.c, arg_0.b, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(abs(select(var_1.e, var_1.e, var_1.d)), var_1.e), var_1.e), false, ~vec3<u32>(~_wgslsmith_clamp_u32(0u, arg_1, 41079u), ~1u, abs(4294967295u)));
    var_2 = Struct_1(~arg_3, vec3<bool>(all(!select(vec4<bool>(true, arg_0.d, true, false), vec4<bool>(var_1.b.x, var_1.d, false, var_2.d), vec4<bool>(true, var_1.b.x, false, true))), true, !(_wgslsmith_dot_vec4_u32(vec4<u32>(11431u, 23589u, 4294967295u, arg_1), vec4<u32>(arg_1, arg_0.a, arg_0.c, arg_1)) != countOneBits(arg_2))), 1u >> (func_2().a % 32u), true, reverseBits(_wgslsmith_add_vec3_u32(~(~var_1.e), _wgslsmith_mod_vec3_u32(select(vec3<u32>(var_1.c, 12057u, var_1.e.x), arg_0.e, arg_0.b), vec3<u32>(4294967295u, arg_3, var_2.c)))));
    return ~(~_wgslsmith_add_u32(var_1.a, abs(~arg_1)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    let var_0 = ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 4294967295u, 0u, 1323u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(32923u, 1u, 4294967295u, 1u), vec4<u32>(37541u, 4294967295u, 1u, 0u)), vec4<u32>(2617u, 1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 3207u), vec3<u32>(4294967295u, 78022u, 45793u)))));
    let var_1 = vec3<bool>(func_4(func_2(), 0u, ~(~var_0.x), 0u) < ~(~1u), true | (_wgslsmith_f_op_f32(select(arg_0.x, -195f, arg_0.x == arg_0.x)) < arg_0.x), _wgslsmith_f_op_f32(ceil(-316f)) >= -277f);
    var var_2 = -_wgslsmith_dot_vec3_i32(u_input.a.zwz, firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.a.zyy, u_input.a.yzw) & (vec3<i32>(arg_1, -3919i, 2147483647i) | vec3<i32>(arg_2.x, arg_2.x, arg_2.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-428f, -475f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))));
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-517f, -718f, 954f, -1769f) * vec4<f32>(-1028f, arg_3.x, 442f, 1580f)))))), i32(-1i) * -2147483647i, _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(arg_1, vec4<i32>(u_input.a.x, 0i, 1i, u_input.a.x)) & u_input.a, _wgslsmith_clamp_vec4_i32(countOneBits(firstTrailingBit(arg_1)), firstTrailingBit(vec4<i32>(-28542i, -19810i, -2147483647i, -1i)), abs(vec4<i32>(arg_1.x, arg_0, -2147483647i, u_input.a.x))))));
    var var_1 = Struct_1(~_wgslsmith_mod_u32(countOneBits(44517u), 1u), vec3<bool>(func_2().b.x, true, !(!any(vec3<bool>(false, true, arg_2)))), 1u, arg_2, firstTrailingBit(vec3<u32>(4294967295u, 1u, ~15372u) << (~select(vec3<u32>(33460u, 76675u, 1u), vec3<u32>(0u, 24020u, 1u), arg_2) % vec3<u32>(32u))));
    var_1 = func_2();
    let var_2 = vec4<i32>(u_input.a.x, -1i << (~var_1.c % 32u), select(-u_input.a.x, arg_1.x, (var_1.c > var_1.e.x) || (true && arg_2)), -40017i);
    return func_2().b.zy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = all(select(!vec2<bool>(true, all(vec4<bool>(var_0, false, false, true))), func_5(-u_input.a.x, ~u_input.a, true, vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<f32>(-1000f, -1331f, 689f, -485f), u_input.a.x, u_input.a)), _wgslsmith_f_op_f32(ceil(775f)), _wgslsmith_f_op_f32(-254f * -1000f))), func_5(32673i, u_input.a, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1027f, 611f, 1000f)))));
    let var_2 = ~(u_input.a.wzw >> (~vec3<u32>(max(1u, 24458u), 4294967295u, ~4294967295u) % vec3<u32>(32u)));
    let var_3 = Struct_2(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(36405u, 1u, 4294967295u), vec3<u32>(44491u, 0u, 31207u), vec3<u32>(69539u, 4294967295u, 54962u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) << (~vec3<u32>(_wgslsmith_clamp_u32(59176u, 70663u, 9159u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 58016u, 0u, 10352u), vec4<u32>(4294967295u, 1u, 18360u, 0u)), select(57505u, 0u, true)) % vec3<u32>(32u)), func_2(), Struct_1(12307u, !(!select(vec3<bool>(true, false, false), vec3<bool>(var_1, true, true), vec3<bool>(var_0, var_1, var_1))), reverseBits(~1u), (func_4(Struct_1(4294967295u, vec3<bool>(true, false, false), 60017u, var_1, vec3<u32>(77409u, 16956u, 1u)), 48960u, 1u, 9597u) >> (35807u % 32u)) >= 0u, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 24948u, 60792u))), Struct_1(1u, select(vec3<bool>(!var_0, var_1, var_1), vec3<bool>(true, true, any(vec2<bool>(var_0, false))), vec3<bool>(all(vec3<bool>(var_1, var_1, var_0)), false, true)), ~4294967295u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1004f * -1406f))) >= 1f, ~vec3<u32>(1u, 1u, 1u)));
    var var_4 = func_2();
    let var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_4.e.x, ~(~var_5.c)) >> (min(~vec2<u32>(var_5.a, 20425u), var_3.a.zx << (countOneBits(vec2<u32>(1u, 87116u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

