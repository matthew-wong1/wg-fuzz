struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(-select(select(vec3<i32>(-2147483647i, -1i, 2147483647i), vec3<i32>(2147483647i, -14208i, 0i), true), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-61826i, -23096i, -2147483647i), vec3<i32>(-2147483647i, -2147483647i, 0i)), ~vec3<i32>(1i, -44163i, 38460i), vec3<i32>(46167i, -26124i, -49188i) << (vec3<u32>(var_0, var_0, 20737u) % vec3<u32>(32u))), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(-1i, 7785i), -2147483647i, 6083i, _wgslsmith_mult_i32(-1i, 0i)), select(-(~vec4<i32>(0i, 2147483647i, -14611i, -2147483647i)), -vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(true, true, true, true))), -701f, Struct_1(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, true))), -49234i, vec3<i32>(abs(0i), -22166i, 54304i) & vec3<i32>(50176i, select(-6430i, 12126i, true), ~1i)));
    var var_2 = Struct_2(var_1.b.xxy, select(var_1.b, abs(var_1.b), select(select(select(vec4<bool>(var_1.d.a, var_1.d.a, true, true), vec4<bool>(true, var_1.d.a, var_1.d.a, true), vec4<bool>(true, false, true, var_1.d.a)), select(vec4<bool>(true, false, false, false), vec4<bool>(var_1.d.a, var_1.d.a, var_1.d.a, var_1.d.a), true), select(vec4<bool>(var_1.d.a, var_1.d.a, var_1.d.a, var_1.d.a), vec4<bool>(var_1.d.a, var_1.d.a, false, var_1.d.a), var_1.d.a)), vec4<bool>(true, var_1.d.a, any(vec2<bool>(var_1.d.a, true)), var_1.d.a || var_1.d.a), true)), _wgslsmith_f_op_f32(840f * -419f), Struct_1(false, -1i, -vec3<i32>(countOneBits(-1i), ~var_1.b.x, -32026i)));
    var var_3 = Struct_1(select(any(vec4<bool>(true, true, true, true)), var_2.d.a, true), var_1.b.x, _wgslsmith_mod_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(var_2.d.c.x, 10546i), max(var_1.a.x, -var_1.a.x), -(~0i)), -vec3<i32>(-1i, -36185i, var_1.d.b) ^ vec3<i32>(countOneBits(1i), 0i, abs(var_2.b.x))));
    var_3 = var_1.d;
    return var_1.d.b;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(true, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(3308i, -16764i, 2147483647i, -19443i), ~vec4<i32>(13938i, -1i, 1i, -1i))), vec3<i32>(1i, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(2147483647i, 1i), 1i), -(select(20046i, 0i, true) | ~(-7852i))));
    var var_1 = vec4<i32>(countOneBits(_wgslsmith_clamp_i32(func_3(), var_0.c.x ^ 1i, 2147483647i)) & _wgslsmith_div_i32(143i, -72406i), -(~(-1i)), var_0.c.x, var_0.c.x);
    var_1 = (_wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(-47795i), 42966i, var_1.x << (u_input.a.x % 32u), -67817i), ~vec4<i32>(-7375i, var_1.x, var_0.b, 2147483647i), vec4<i32>(~81247i, var_0.c.x << (u_input.a.x % 32u), 800i, var_1.x & var_0.c.x)) ^ abs(vec4<i32>(1i, var_0.b, _wgslsmith_mod_i32(-45447i, var_0.b), -1i))) | -(~_wgslsmith_div_vec4_i32(-vec4<i32>(var_1.x, 54273i, var_1.x, 45189i), min(vec4<i32>(-1i, var_0.b, 62828i, var_0.c.x), vec4<i32>(var_1.x, -10416i, var_1.x, var_0.c.x))));
    var_1 = vec4<i32>(select(var_1.x, ~1i, any(!vec4<bool>(true, false, var_0.a, var_0.a))), -31135i, 1i, -var_0.c.x);
    var_1 = -_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(var_1.x, -11511i, var_1.x), var_0.c.x, i32(-1i) * -19673i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 0i, 1i, -10828i), abs(vec4<i32>(-2147483647i, var_1.x, var_0.b, -1i)))) >> (~vec4<u32>(~(~0u), firstTrailingBit(countOneBits(28450u)), u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, ~33452u)) % vec4<u32>(32u));
    return reverseBits(89842u);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32((33324u << (abs(~4294967295u) % 32u)) ^ countOneBits(u_input.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, u_input.a.x | u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(2582u, 1u))), vec4<u32>(~4294967295u, 39177u, max(1u, 53015u), func_2()) << ((_wgslsmith_div_vec4_u32(vec4<u32>(31581u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)) & vec4<u32>(10416u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))));
    var_0 = firstLeadingBit(u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-135f, 1401f)) + -137f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-659f))), 1263f) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-552f, -1497f, 405f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, 1000f, 2392f))))))));
    var_0 = _wgslsmith_mult_u32(1u, u_input.a.x);
    var_0 = firstTrailingBit(_wgslsmith_add_u32(~countOneBits(u_input.a.x) & u_input.a.x, ~u_input.a.x));
    return Struct_1(all(vec4<bool>(true, any(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false)), !any(vec2<bool>(true, false)))), ~(~min(~49090i, 1i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(select(1i, -35362i, true), -34393i, 19363i), _wgslsmith_add_vec3_i32(abs(vec3<i32>(0i, 2147483647i, 1i)), vec3<i32>(0i, -1i, 48331i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = ~var_0.c.x;
    var var_2 = var_0.a;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1659f)) * _wgslsmith_f_op_f32(f32(-1f) * -429f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(474f, 1079f))))));
    var var_4 = vec3<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(-var_3))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(-var_3)) + var_3), true);
    let var_5 = any(select(!vec4<bool>(var_0.a, var_0.a, var_4.x, var_0.a), vec4<bool>(true, false, any(vec2<bool>(true, var_4.x)), var_3 > 1683f), !(!vec4<bool>(false, true, var_4.x, var_4.x)))) | any(select(!(!vec3<bool>(var_4.x, var_0.a, true)), !(!vec3<bool>(false, true, var_0.a)), var_4.x));
    var_2 = !(var_1 >= abs(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~select(firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), vec3<u32>(3986u, u_input.a.x, 23556u) ^ vec3<u32>(8526u, 48776u, u_input.a.x), false), vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), select(vec3<u32>(17939u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x), false)))));
}

