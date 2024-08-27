struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = any(vec4<bool>(any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(false, true, false), true)), true, any(vec2<bool>(true, true)), false));
    var var_1 = reverseBits(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.c.x, u_input.a), ~vec4<i32>(u_input.a, 1i, u_input.a, -23991i)), u_input.a, u_input.c.x, _wgslsmith_sub_i32(-34352i, _wgslsmith_clamp_i32(17549i, 2147483647i, u_input.a))));
    var_0 = true;
    var var_2 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, 2147483647i < u_input.c.x), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 125f, arg_0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1039f, arg_0.x, -653f, 1587f) * vec4<f32>(-725f, arg_0.x, arg_0.x, arg_0.x)) + vec4<f32>(-254f, arg_0.x, -1029f, arg_0.x))), u_input.a, arg_0));
    var_1 = abs(vec4<i32>(u_input.c.x, -1863i, u_input.c.x, var_2.a.c));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1043f, -740f)) - _wgslsmith_f_op_f32(abs(1f)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -407f), _wgslsmith_f_op_f32(f32(-1f) * -1160f)) - vec2<f32>(_wgslsmith_f_op_f32(round(-107f)), 1782f)))) * _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -327f))))));
    var var_1 = Struct_1(select(vec2<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.b), vec2<u32>(u_input.d.x, 4294967295u)) > (u_input.d.x >> (4294967295u % 32u))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), true), vec2<bool>(true, true), all(vec4<bool>(false, false, false, true))), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), any(vec4<bool>(false, false, true, true)))), vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1194f, var_0)) + var_0), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1162f), var_0)), any(vec3<bool>(true, true, true))))), u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), var_0)) + vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1581f + var_0) * _wgslsmith_f_op_f32(var_0 - -1047f)))));
    var_1 = Struct_1(vec2<bool>(all(select(select(var_1.a, var_1.a, var_1.a.x), vec2<bool>(true, false), true)), var_1.a.x), vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 * -687f)))), _wgslsmith_f_op_f32(exp2(var_1.d.x)), var_0), _wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 0i), u_input.c.xx), select(u_input.a, 2147483647i, true & var_1.a.x)) & 1i, _wgslsmith_f_op_vec2_f32(-var_1.d));
    let var_2 = vec4<i32>(-u_input.c.x, u_input.c.x, ~(countOneBits(var_1.c) ^ var_1.c), 47425i) | _wgslsmith_div_vec4_i32(vec4<i32>(select(u_input.a, -2147483647i, select(true, var_1.a.x, var_1.a.x)), var_1.c & (i32(-1i) * -6811i), _wgslsmith_add_i32(var_1.c, countOneBits(var_1.c)), firstLeadingBit(select(-3768i, -2147483647i, var_1.a.x))), -_wgslsmith_div_vec4_i32(-vec4<i32>(21060i, 0i, -11688i, 15920i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -6674i, var_1.c, u_input.c.x), vec4<i32>(var_1.c, 14801i, 19564i, 20878i))));
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_0, -212f, var_0)), vec4<f32>(-946f, var_1.d.x, -668f, _wgslsmith_f_op_f32(floor(-330f)))))), u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) - var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -784f))));
    return Struct_2(var_3);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> vec2<f32> {
    var var_0 = func_2();
    var var_1 = !arg_2.a.a.x;
    let var_2 = arg_1.a;
    var var_3 = 0i;
    return _wgslsmith_f_op_vec2_f32(-arg_1.d);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(arg_2.a, _wgslsmith_f_op_vec4_f32(abs(arg_1.b)), abs(2147483647i) ^ -u_input.a, _wgslsmith_f_op_vec2_f32(select(arg_1.d, _wgslsmith_f_op_vec2_f32(func_4(func_2(), func_2().a, Struct_2(Struct_1(vec2<bool>(false, false), arg_2.b, arg_2.c, vec2<f32>(arg_2.b.x, -133f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-838f)), _wgslsmith_f_op_f32(abs(-784f))))), any(!select(vec4<bool>(false, true, arg_1.a.x, arg_2.a.x), vec4<bool>(arg_1.a.x, false, false, arg_1.a.x), vec4<bool>(arg_0, false, arg_2.a.x, arg_1.a.x))))));
    let var_1 = func_2();
    let var_2 = min(u_input.d, vec2<u32>(4294967295u ^ u_input.b, 1u));
    let var_3 = func_2().a;
    let var_4 = false;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -180f), -1012f, 530f, _wgslsmith_f_op_f32(851f * 1551f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1274f, 862f, -524f, 883f), vec4<f32>(2718f, 139f, -158f, 634f)))))) * _wgslsmith_f_op_vec4_f32(func_1(false, Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-800f, -492f, 886f, -987f))), abs(-2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1211f) * vec2<f32>(1000f, 517f))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(227f, -2765f, 547f, 501f))), -55881i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, -2350f)))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1868f, -1000f, -250f, 225f))))))));
    let var_1 = func_2().a;
    var var_2 = true;
    let var_3 = firstLeadingBit(abs(~(~vec3<u32>(0u, 22149u, 26290u))));
    let var_4 = var_1.b;
    var var_5 = Struct_2(Struct_1(!var_1.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(689f, -431f, -662f, 324f)))), _wgslsmith_mod_i32(-2147483647i, i32(-1i) * -2147483647i), var_4.wz));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b));
    let var_6 = vec4<u32>(var_3.x, _wgslsmith_mult_u32(reverseBits(firstTrailingBit(4294967295u)), var_3.x), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(52483u, 38677u)), ~u_input.d), 47604u) | (_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(var_3.x, 0u, 1u, var_3.x)), vec4<u32>(~var_3.x, 53307u >> (0u % 32u), 20948u << (u_input.b % 32u), ~78889u)) & ~(max(vec4<u32>(0u, 0u, 34319u, 43255u), vec4<u32>(u_input.b, var_3.x, 4294967295u, u_input.d.x)) >> (vec4<u32>(17719u, var_3.x, var_3.x, 4294967295u) % vec4<u32>(32u))));
    var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, -(~var_1.c));
}

