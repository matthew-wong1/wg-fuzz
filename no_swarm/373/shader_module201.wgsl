struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec4<i32> {
    let var_0 = !vec3<bool>(!(_wgslsmith_f_op_f32(max(arg_0.b, arg_0.b)) < _wgslsmith_f_op_f32(-803f - -844f)), !(u_input.c.x < max(u_input.c.x, arg_0.a)), (u_input.c.x << (~u_input.b.x % 32u)) < abs(arg_0.a));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_0.b)), _wgslsmith_f_op_f32(-arg_0.b), true)), u_input.c & vec2<i32>(~(-arg_0.a), _wgslsmith_add_i32(_wgslsmith_clamp_i32(24329i, arg_0.a, 0i), select(-2147483647i, -2147483647i, false))));
    var var_2 = 1f;
    var_2 = 873f;
    var var_3 = u_input.d.zz;
    return _wgslsmith_sub_vec4_i32(~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 29803i, 33606i, arg_0.a), vec4<i32>(40608i, var_1.b.x, var_1.b.x, u_input.c.x))), vec4<i32>(-arg_0.a ^ var_1.b.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.b.x, var_1.b.x), arg_0.a), _wgslsmith_div_i32(var_1.b.x, -var_1.b.x), var_1.b.x) << (~vec4<u32>(_wgslsmith_add_u32(var_3.x, 0u), 1u, ~var_3.x, ~37604u) % vec4<u32>(32u)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1201f, 1425f, 962f, 1258f))) * vec4<f32>(2101f, -137f, -1000f, -321f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(ceil(-1173f)), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1146f)) * _wgslsmith_f_op_f32(1298f + -563f)), -1022f)))));
    let var_1 = Struct_2(u_input.a, ((func_3(Struct_4(u_input.c.x, 1815f)) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.d.x, 34099u, u_input.d.x), vec4<u32>(u_input.b.x, 17729u, u_input.a, 4294967295u)) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(1u, u_input.d.x, u_input.b.x, 4294967295u) ^ vec4<u32>(u_input.b.x, u_input.d.x, 79621u, u_input.a)) % vec4<u32>(32u))) & (_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 1i, -2147483647i, u_input.c.x) << (vec4<u32>(882u, u_input.a, 1u, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, u_input.c.x, -32237i, -14256i) ^ vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -37163i)) | ~(vec4<i32>(33219i, u_input.c.x, -2147483647i, -12819i) >> (vec4<u32>(3561u, u_input.a, 1u, u_input.b.x) % vec4<u32>(32u)))), Struct_1(426f, select(func_3(Struct_4(47300i, -262f)).xz, vec2<i32>(-u_input.c.x, -2147483647i | u_input.c.x), !vec2<bool>(arg_0, true))), Struct_1(_wgslsmith_f_op_f32(-var_0.x), ~reverseBits(countOneBits(u_input.c))));
    let var_2 = 21201i;
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1032f, var_0.x)))), _wgslsmith_f_op_f32(196f - 728f), var_0.x)));
    var var_3 = vec4<bool>(false, -var_1.b.x < _wgslsmith_mult_i32(-2292i, -28115i), arg_0, true);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1406f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1127f * 971f) + -1280f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)))), vec2<i32>(var_1.c.b.x, _wgslsmith_sub_i32(10778i, i32(-1i) * -1i)));
}

fn func_1(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = Struct_1(219f, vec2<i32>(reverseBits(-1i), 9778i));
    var_0 = func_2(true);
    var_0 = func_2(all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)));
    let var_1 = Struct_4(~_wgslsmith_dot_vec2_i32(u_input.c, u_input.c) >> (1u % 32u), 334f);
    var_0 = func_2(u_input.d.x < ~u_input.a);
    return !(!vec3<bool>(any(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(1336f + var_1.b) == _wgslsmith_f_op_f32(var_0.a + 114f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(vec3<bool>(true, true, true), func_1(Struct_4(u_input.c.x, 226f)), true || (69795i >= u_input.c.x)));
    let var_1 = vec4<f32>(1910f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(477f))) * _wgslsmith_f_op_f32(f32(-1f) * -809f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true).a * -341f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(473f, -774f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1257f, 438f)))), 766f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(850f * _wgslsmith_f_op_f32(f32(-1f) * -631f))));
    var var_2 = !func_1(Struct_4(-(~48493i), 1022f)).x;
    var_2 = true;
    var_2 = all(vec3<bool>(all(vec3<bool>(true, false, all(vec4<bool>(true, true, true, false)))), any(vec2<bool>(true, true)), all(vec2<bool>(true, all(vec2<bool>(true, false))))));
    var var_3 = vec3<u32>(~(~(~u_input.d.x) >> (u_input.d.x % 32u)), _wgslsmith_add_u32(4294967295u, countOneBits(_wgslsmith_dot_vec2_u32(u_input.d.xz | vec2<u32>(u_input.d.x, 33872u), ~vec2<u32>(17672u, u_input.d.x)))), 9668u << (0u % 32u));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_div_f32(var_1.x, -1247f));
    var var_5 = vec2<i32>((21466i | ~_wgslsmith_sub_i32(u_input.c.x, 27715i)) & _wgslsmith_mod_i32(reverseBits(1i), abs(firstLeadingBit(u_input.c.x))), -(~reverseBits(u_input.c.x)));
    var var_6 = Struct_4(var_5.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1104f * var_4), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4, 1072f, true)))), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec4<i32>(-abs(-u_input.c.x), _wgslsmith_add_i32(-2147483647i << (max(0u, u_input.b.x) % 32u), var_5.x), min(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_5.x, 0i, -2147483647i, u_input.c.x), vec4<i32>(var_6.a, var_5.x, -1i, var_5.x))), ~_wgslsmith_mod_i32(-1i, -24454i)), -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.zzz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_6.b, -1967f))))), var_3.zx, countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(var_5.x, -15412i, 1i, u_input.c.x), select(vec4<i32>(var_6.a, 5097i, var_5.x, -24121i), vec4<i32>(u_input.c.x, -1i, 1i, 20515i), vec4<bool>(true, false, false, false))), min(vec4<i32>(var_6.a, var_5.x, 2147483647i, -1i), -vec4<i32>(26171i, u_input.c.x, -21240i, var_5.x)))));
}

