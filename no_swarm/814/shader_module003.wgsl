struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.c.x, 1u), 46743u, max(u_input.c.x, 24106u), ~1u), _wgslsmith_div_vec4_u32(vec4<u32>(21579u, 0u, 41636u, 1u) ^ vec4<u32>(u_input.c.x, 0u, u_input.c.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 36175u, u_input.c.x, u_input.c.x), vec4<u32>(10898u, 4294967295u, 26438u, 13755u)))) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x) << (vec4<u32>(1u, u_input.c.x, 21732u, u_input.c.x) % vec4<u32>(32u)), ~vec4<u32>(64756u, 1457u, u_input.c.x, 0u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.c.x, 23586u, u_input.c.x)), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 1u) | vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 25002u)), ~u_input.c.x, reverseBits(~u_input.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1037f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2155f), 799f)));
    var var_1 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    let var_2 = Struct_1(min(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, var_0.a.x, var_0.a.x, u_input.c.x)), var_0.a | vec4<u32>(0u, var_0.a.x, 11950u, 7171u)), ~reverseBits(select(vec4<u32>(var_0.a.x, u_input.c.x, var_0.a.x, var_0.a.x), vec4<u32>(var_0.a.x, u_input.c.x, u_input.c.x, 60378u), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1422f, 400f))))));
    let var_3 = !vec3<bool>(!var_1.x, !((var_1.x || true) && var_1.x), select(75919u, var_0.a.x, select(var_1.x, false, var_1.x)) != 19137u);
    let var_4 = _wgslsmith_f_op_f32(-var_2.b);
    return vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, 1i, 21634i, u_input.b)) | min(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-4853i, 2147483647i, u_input.b, u_input.a.x)), vec4<i32>(u_input.b, 29748i, 22260i, _wgslsmith_add_i32(39916i, 1i))) | -27207i, firstTrailingBit(-2147483647i), 1i, u_input.b);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = firstLeadingBit(vec4<i32>(u_input.a.x, 3359i, -(~u_input.a.x), i32(-1i) * -u_input.a.x) | ((func_3() & select(vec4<i32>(u_input.d, u_input.a.x, u_input.b, -1i), vec4<i32>(0i, u_input.a.x, u_input.b, -32641i), false)) | vec4<i32>(u_input.d << (14040u % 32u), -17054i, min(u_input.a.x, u_input.d), 1i)));
    let var_1 = arg_1;
    let var_2 = abs(~firstLeadingBit(_wgslsmith_mult_vec2_u32(arg_0.a.zw, vec2<u32>(var_1.a.x, var_1.a.x) << (vec2<u32>(65942u, var_1.a.x) % vec2<u32>(32u)))));
    var_0 = vec4<i32>(-(countOneBits(_wgslsmith_mult_i32(u_input.d, 1i)) << (~(~var_1.a.x) % 32u)), reverseBits(var_0.x ^ ~(~(-1i))), max(1i, ~abs(_wgslsmith_mod_i32(u_input.d, var_0.x))), -select(u_input.b, -2147483647i, true && any(vec4<bool>(false, true, true, true))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, 557f, var_1.b)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-688f, 1431f, arg_1.b) * vec3<f32>(arg_1.b, var_1.b, -410f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.b, 482f))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b, -1275f, 830f))));
    return 537f;
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(~firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(32760u, 50998u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), arg_1);
    var var_1 = var_0.a;
    var var_2 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(12079u, ~4294967295u, 33924u, var_0.a.x), min(vec4<u32>(40092u, u_input.c.x, u_input.c.x, var_0.a.x), var_0.a)), vec4<u32>(~max(1u, 0u), 1u, u_input.c.x, var_0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1536f + var_0.b))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(810f, 145f, var_0.b, arg_1))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, var_2.b, -2117f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(var_0.a, arg_1), Struct_1(var_2.a, -748f)))), -427f, arg_1, -315f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -415f, 302f, var_2.b) - vec4<f32>(var_2.b, -188f, var_2.b, arg_1)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 759f, 712f) - vec4<f32>(var_0.b, -774f, 1347f, 854f))))));
    var var_4 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(reverseBits(u_input.c.x), _wgslsmith_clamp_u32(50721u, 0u, ~83929u)), 57546u, reverseBits(~1u), var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-145f))));
    return Struct_1(~(~(~(vec4<u32>(var_1.x, var_0.a.x, 1u, var_2.a.x) ^ var_4.a))), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(select(497f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(540f * arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1190f * 359f))))));
    var var_1 = vec3<i32>(~_wgslsmith_sub_i32(reverseBits(_wgslsmith_add_i32(-1i, u_input.d)), 0i), u_input.b, _wgslsmith_sub_i32(2147483647i, abs(2147483647i)));
    let var_2 = true;
    let var_3 = Struct_1(firstLeadingBit(select(var_0.a, (var_0.a | vec4<u32>(50136u, 4294967295u, 792u, u_input.c.x)) >> (reverseBits(var_0.a) % vec4<u32>(32u)), all(!vec3<bool>(false, var_2, var_2)))), _wgslsmith_f_op_f32(-var_0.b));
    var var_4 = func_1(!(!(!(!var_2))), _wgslsmith_f_op_f32(var_3.b - -277f));
    var var_5 = Struct_1(vec4<u32>(0u, select(4294967295u, max(0u, var_4.a.x), !var_2), _wgslsmith_mult_u32(min(_wgslsmith_mult_u32(var_3.a.x, 4294967295u), abs(u_input.c.x)), 42815u | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.x), vec2<u32>(0u, var_3.a.x))), ~reverseBits(var_3.a.x)), 2114f);
    var_4 = Struct_1(reverseBits(var_5.a), var_0.b);
    let var_6 = func_1(false, _wgslsmith_f_op_f32(var_4.b + _wgslsmith_f_op_f32(-2563f + -282f))).a.x;
    var var_7 = max(vec2<i32>(~(~(-1i | u_input.d)), -_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, var_1.x, -2147483647i, var_1.x), select(vec4<i32>(18704i, -1i, var_1.x, u_input.a.x), vec4<i32>(u_input.b, u_input.a.x, -2147483647i, 0i), true))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-_wgslsmith_add_vec2_i32(var_1.yz, u_input.a), min(abs(u_input.a), vec2<i32>(u_input.d, var_1.x) ^ vec2<i32>(u_input.b, u_input.d))), vec2<i32>(-34097i, 32813i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(countOneBits(-1i), 0i), _wgslsmith_f_op_f32(-var_4.b));
}

