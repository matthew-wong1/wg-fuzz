struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1687f)) - _wgslsmith_f_op_f32(floor(305f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1808f)) * -2067f), -1000f, 691f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-399f, 1683f, -304f, -597f), vec4<f32>(-1888f, 616f, -1495f, -746f), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1014f, 812f, 1556f, 915f))), false))));
    let var_2 = -1i >> (1u % 32u);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(var_1.yy, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x), -1000f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_3.x * -1500f), _wgslsmith_f_op_f32(-var_1.x), 204f, _wgslsmith_f_op_f32(var_3.x + 291f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -282f, var_1.x, var_3.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_3.x, var_3.x, var_3.x)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_3.x)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(sign(-832f))), -102f, -488f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -2731f, 458f, var_1.x) - vec4<f32>(-924f, 282f, var_3.x, var_1.x)))))));
    return true;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = vec2<bool>(func_3(~(~u_input.d) >> (select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 103116u, arg_0), vec3<u32>(8598u, u_input.d, 1323u)), 10702u, false) % 32u)), all(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = ~max(u_input.c, vec3<i32>(-_wgslsmith_add_i32(38069i, -29926i), abs(u_input.c.x), abs(abs(20759i))));
    var var_2 = Struct_1(false, _wgslsmith_mult_u32(23764u, u_input.d), all(!(!vec3<bool>(true, var_0.x, true))), _wgslsmith_div_vec2_i32(firstLeadingBit(u_input.c.yz), vec2<i32>(-var_1.x, reverseBits(firstTrailingBit(u_input.b)))));
    var_2 = Struct_1(var_2.a, 4294967295u, true, _wgslsmith_sub_vec2_i32(select(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-1i, -7029i), countOneBits(var_2.d), u_input.c.xz), vec2<i32>(var_2.d.x << (u_input.d % 32u), 14292i), select(select(vec2<bool>(var_2.a, false), vec2<bool>(var_0.x, var_2.c), vec2<bool>(var_2.c, var_0.x)), vec2<bool>(true, var_2.c), any(vec3<bool>(false, var_2.a, true)))), reverseBits(vec2<i32>(-var_2.d.x, _wgslsmith_add_i32(var_2.d.x, 18291i)))));
    return max(-(i32(-1i) * -28514i), select(min(-2147483647i, var_1.x), -14722i, true));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(vec3<u32>(~min(2484u, arg_3.b), _wgslsmith_mod_u32(min(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b, u_input.d), vec2<u32>(u_input.d, 1u))), arg_3.b), select(~1u, ~(~1u), arg_3.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1318f) + 1000f))));
    var var_1 = -_wgslsmith_mult_i32(_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_3.d.x, 0i, arg_1), vec4<i32>(-2147483647i, arg_3.d.x, 18150i, u_input.c.x)), i32(-1i) * -16826i), arg_1);
    var_1 = arg_1;
    var var_2 = Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(arg_3.b), var_0.a.x, firstLeadingBit(var_0.a.x)), var_0.a), min(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.a, var_0.a), vec3<u32>(35613u, 4294967295u, 0u)), vec3<u32>(arg_3.b, ~u_input.d, ~0u))), var_0.b);
    var var_3 = arg_3.c;
    return arg_3;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = firstLeadingBit(-42615i);
    var var_1 = ~(vec4<i32>(1i, -37607i, min(u_input.b, -52056i), -arg_0.d.x) << (firstLeadingBit(~(~vec4<u32>(0u, 0u, arg_0.b, u_input.d))) % vec4<u32>(32u)));
    var_1 = vec4<i32>(u_input.c.x, -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_0, 0i, arg_0.d.x), vec4<i32>(arg_0.d.x, var_0, 2147483647i, -12874i)), reverseBits(vec4<i32>(u_input.b, 45650i, var_1.x, u_input.b))), 1i), reverseBits(22007i), -2147483647i);
    let var_2 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, max(1u, 22024u)), firstLeadingBit(~vec3<u32>(1u, arg_0.b, u_input.a))) | ~reverseBits(~vec3<u32>(4294967295u, u_input.d, u_input.d)), _wgslsmith_f_op_f32(-1f));
    let var_3 = countOneBits(~vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(var_0, u_input.b)), ~u_input.c.x, -31723i, -min(27461i, 28009i)));
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(true, firstTrailingBit(u_input.d), (u_input.a >> (9246u % 32u)) > u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(-(0i << (u_input.d % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -1i, 23363i), -vec4<i32>(-8363i, u_input.b, -1i, u_input.b))), u_input.c.yz));
    return func_5(func_4(select(vec2<bool>(true, true), vec2<bool>(var_0.c, var_0.a), vec2<bool>(true, var_0.c | var_0.a)), _wgslsmith_add_i32(u_input.c.x >> (_wgslsmith_mod_u32(0u, var_0.b) % 32u), 1i), vec3<i32>(var_0.d.x, func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(41958u, 4294967295u))), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.x, 2147483647i), var_0.d)), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = select(select(!select(select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(false, var_0.a, var_0.c, true), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.c)), vec4<bool>(true, false, var_0.c, true), !vec4<bool>(false, false, var_0.c, var_0.a)), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.a, var_0.c, false, false), vec4<bool>(false, false, var_0.c, var_0.a)), !select(vec4<bool>(var_0.c, var_0.a, var_0.c, var_0.a), vec4<bool>(false, var_0.c, var_0.c, true), var_0.a), select(select(vec4<bool>(var_0.c, var_0.a, var_0.a, false), vec4<bool>(var_0.a, true, var_0.a, true), var_0.a), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.c, false, true, var_0.a), vec4<bool>(var_0.c, var_0.c, false, false), false))), select(!select(vec4<bool>(var_0.c, var_0.a, var_0.c, false), vec4<bool>(false, false, var_0.c, var_0.a), vec4<bool>(true, var_0.c, true, var_0.c)), vec4<bool>(any(vec4<bool>(var_0.a, var_0.c, var_0.c, var_0.c)), func_1().a, func_1().a, true), var_0.a)), select(select(!select(vec4<bool>(false, var_0.c, true, true), vec4<bool>(true, var_0.a, true, true), vec4<bool>(true, true, true, var_0.a)), !select(vec4<bool>(true, false, var_0.a, var_0.a), vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(false, var_0.a, true, true)), true), !(!(!vec4<bool>(true, var_0.a, var_0.a, var_0.a))), vec4<bool>(func_4(vec2<bool>(var_0.a, var_0.c), max(-40631i, 8218i), -u_input.c, var_0).a, !(var_0.c & var_0.a), all(select(vec2<bool>(var_0.c, false), vec2<bool>(true, var_0.c), vec2<bool>(true, false))), all(select(vec4<bool>(var_0.c, true, var_0.c, false), vec4<bool>(var_0.a, false, var_0.a, true), var_0.a)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(abs(~vec3<u32>(u_input.a, u_input.d, var_0.b))), ~(~var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -673f))))));
}

