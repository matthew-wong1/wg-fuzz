struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    var var_0 = -vec3<i32>(~select(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 31285i), vec2<i32>(78791i, -2147483647i)), true), _wgslsmith_clamp_i32(-707i, max(-52629i, reverseBits(-11880i)), 1i), ~abs(0i));
    let var_1 = _wgslsmith_dot_vec2_u32(abs(~(~vec2<u32>(67676u, 0u))), vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a), 4294967295u, _wgslsmith_add_u32(6311u, u_input.a)) & 4294967295u, 4294967295u));
    var var_2 = -abs(~(~vec3<i32>(1i, -39879i, var_0.x)) >> (~vec3<u32>(20496u, 0u, u_input.a) % vec3<u32>(32u)));
    var var_3 = min(_wgslsmith_sub_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.xz, vec2<i32>(var_0.x, var_0.x)), var_2.x), var_2.yy), var_2.zx);
    var var_4 = Struct_1(firstLeadingBit(reverseBits(abs(-1i))), -1000f, vec4<u32>(~1u, var_1, abs(abs(~var_1)), firstLeadingBit(~1u)), _wgslsmith_f_op_f32(floor(251f)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-823f - _wgslsmith_f_op_f32(floor(492f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-300f, -184f, false)), _wgslsmith_f_op_f32(floor(-290f)), any(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -1062f) + 1f))));
    return (_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, var_0.x, var_3.x, var_0.x), vec4<i32>(var_3.x, var_0.x, var_0.x, 2147483647i)), ~vec4<i32>(var_3.x, 2147483647i, 0i, 0i)), vec4<i32>(-2147483647i, 1i, var_3.x, var_2.x) ^ -vec4<i32>(var_3.x, 1i, var_4.a, var_0.x), select(vec4<i32>(var_3.x, -2147483647i, var_4.a, var_2.x) & vec4<i32>(-1i, var_4.a, var_2.x, -744i), _wgslsmith_add_vec4_i32(vec4<i32>(var_4.a, var_3.x, var_4.a, var_4.a), vec4<i32>(var_0.x, -2147483647i, -28806i, -1i)), any(vec4<bool>(var_4.d, var_4.d, false, true)))) & vec4<i32>(31606i, -_wgslsmith_dot_vec4_i32(vec4<i32>(17354i, var_2.x, 0i, var_2.x), vec4<i32>(var_2.x, 8813i, 18796i, -17198i)), -35527i, var_4.a)) >> (_wgslsmith_mult_vec4_u32(~var_4.c, ~vec4<u32>(~1u, _wgslsmith_div_u32(49172u, u_input.a), 47587u, var_4.c.x)) % vec4<u32>(32u));
}

fn func_2() -> Struct_2 {
    var var_0 = min(max(max(max(firstLeadingBit(vec4<i32>(-14029i, -8386i, -19545i, -21776i)), countOneBits(vec4<i32>(8604i, -1i, 1i, 1i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, 2147483647i, -14026i), vec4<i32>(-2147483647i, 50334i, 1i, -1i)), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -19821i, -1i, 0i), vec4<i32>(-1i, 9647i, -1i, 1i)))), -vec4<i32>(0i, 1i, ~(-19360i), min(2147483647i, -693i))), _wgslsmith_div_vec4_i32(-func_3() >> (vec4<u32>(1u, firstTrailingBit(u_input.a), max(u_input.a, u_input.a), u_input.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i, 1i, ~(-14551i), -31040i))));
    var var_1 = _wgslsmith_div_vec2_i32(~(-vec2<i32>(~var_0.x, _wgslsmith_dot_vec2_i32(var_0.xz, var_0.yz))), _wgslsmith_mod_vec2_i32(vec2<i32>(~(-2147483647i), 1i), vec2<i32>(3768i, -11873i)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u | u_input.a, u_input.a), vec2<u32>(firstLeadingBit(0u), countOneBits(u_input.a)), vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), u_input.a ^ 1u)) % vec2<u32>(32u)));
    let var_2 = Struct_2(Struct_1(-(~(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1716f, 1665f)))), select(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 0u), 1u, u_input.a & 43166u, u_input.a >> (42359u % 32u)), vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), abs(u_input.a), u_input.a, 1u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true | !any(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-710f * 614f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-325f - 945f), _wgslsmith_f_op_f32(floor(-948f))) > -286f, vec4<bool>(_wgslsmith_f_op_f32(round(-1634f)) < _wgslsmith_f_op_f32(trunc(402f)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), any(vec2<bool>(false, false)))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !any(vec3<bool>(true, false, false)) | all(vec3<bool>(true, true, true))), abs(func_3()));
    var_1 = ~(~var_0.yx) << (abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.c.x, ~4294967295u), ~var_2.a.c.wy & (vec2<u32>(10639u, var_2.a.c.x) & vec2<u32>(var_2.a.c.x, 1u)))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(~37594u, 72328u), _wgslsmith_dot_vec4_u32(~var_2.a.c, var_2.a.c));
    return Struct_2(Struct_1(-1i, var_2.a.b, ~var_2.a.c, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.b))), -2135f)), var_2.b && !var_2.a.d, !var_2.c, firstLeadingBit(vec4<i32>(func_3().x, var_1.x, abs(countOneBits(0i)), ~max(var_2.a.a, -3880i))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = arg_0.c;
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_div_i32(arg_0.d.x, 1i)), 1f, vec4<u32>(arg_0.a.c.x ^ select(arg_0.a.c.x, arg_0.a.c.x, any(vec3<bool>(arg_0.b, arg_2, true))), 42227u, max(~4294967295u, u_input.a), _wgslsmith_add_u32(~arg_0.a.c.x, 8450u)), !(arg_0.a.a <= -arg_0.a.a), _wgslsmith_f_op_f32(exp2(arg_0.a.b)));
    var_1 = Struct_1(max(((var_1.a | 7367i) & 5749i) | func_3().x, arg_0.a.a & var_1.a), 151f, vec4<u32>(select(var_1.c.x, arg_0.a.c.x >> (abs(10773u) % 32u), !any(arg_0.c.wz)), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, arg_0.a.c.x, var_1.c.x, 58878u)), var_1.c), _wgslsmith_mult_u32(var_1.c.x, 40407u), 3122u), any(vec4<bool>(arg_0.b, func_2().c.x, func_2().b, _wgslsmith_f_op_f32(f32(-1f) * -264f) <= _wgslsmith_f_op_f32(sign(1098f)))), _wgslsmith_f_op_f32(max(-195f, func_2().a.e)));
    let var_2 = _wgslsmith_add_u32(1u, _wgslsmith_div_u32(firstTrailingBit(~abs(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, 40452u, 23274u, 3852u) >> (var_1.c % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.c.x, 52221u, 0u), var_1.c))));
    return _wgslsmith_f_op_f32(-1281f * -457f);
}

fn func_1() -> Struct_1 {
    let var_0 = !vec3<bool>((any(vec2<bool>(true, false)) || true) | (false && (u_input.a > 0u)), true, !all(vec4<bool>(false, true, true, false)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1686f, -563f))))), any(!vec4<bool>(false, true, true, var_0.x)), 1117f)), 130f);
    let var_2 = func_2();
    let var_3 = ~_wgslsmith_dot_vec4_i32(-reverseBits(var_2.d | vec4<i32>(var_2.a.a, var_2.a.a, 3474i, -12086i)), func_3());
    let var_4 = var_2;
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(1924f));
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-103f, var_1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + var_0)) - var_0)));
    let var_3 = select(!(!vec2<bool>(select(false, true, false), all(vec2<bool>(true, var_1.d)))), !(!vec2<bool>(func_2().b, var_1.d)), !(!func_2().c.wy));
    let var_4 = select(!(!vec3<bool>(true, true, -2147483647i < var_1.a)), vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_2.x) < 594f, false | select(!var_1.d, var_1.d, var_1.d)), true);
    var var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(129f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)))));
}

