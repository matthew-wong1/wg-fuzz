struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), arg_0);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.a), -1109f)))) + _wgslsmith_f_op_f32(trunc(882f))), _wgslsmith_f_op_f32(var_0.a.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a + var_0.a.a)) - 1166f)), !(firstTrailingBit(21637u) < ~arg_0.b)));
    let var_2 = true;
    var var_3 = Struct_1(arg_0.a, 28698u);
    let var_4 = Struct_3(var_0.a, Struct_1(select(select(var_3.a, !var_0.b.a, vec4<bool>(var_3.a.x, true, var_2, false)), select(var_0.b.a, arg_0.a, select(vec4<bool>(var_2, var_0.b.a.x, false, arg_0.a.x), vec4<bool>(var_0.b.a.x, false, var_0.b.a.x, true), true)), !select(var_0.b.a.x, false, arg_0.a.x)), 4294967295u));
    return _wgslsmith_clamp_u32(~var_4.b.b, _wgslsmith_add_u32(~abs(~1u), 0u | ~min(58896u, var_3.b)), 77554u);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec2<u32>) -> vec2<i32> {
    var var_0 = arg_0.b.a.xww;
    let var_1 = Struct_3(arg_0.a, arg_0.b);
    let var_2 = var_1.b;
    var var_3 = ~u_input.a <= _wgslsmith_clamp_i32(u_input.a, _wgslsmith_clamp_i32(u_input.b, -2147483647i, _wgslsmith_div_i32(0i, _wgslsmith_div_i32(1i, u_input.a))), (~47819i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, var_2.b, 18827u, 4294967295u), vec4<u32>(1u, arg_0.b.b, 30308u, arg_0.b.b)) % 32u)) | _wgslsmith_mod_i32(_wgslsmith_mod_i32(-36892i, u_input.c), u_input.c));
    let var_4 = firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, ~1u, ~var_2.b, var_2.b), vec4<u32>(min(arg_0.b.b, arg_2.x), func_3(Struct_1(var_2.a, 10307u)), ~14049u, ~4294967295u))) & firstLeadingBit(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, 1u, arg_2.x, 0u), vec4<u32>(arg_2.x, arg_0.b.b, 1u, var_2.b))));
    return (_wgslsmith_div_vec2_i32(min(-vec2<i32>(u_input.a, -2147483647i), firstTrailingBit(vec2<i32>(u_input.c, u_input.a))), vec2<i32>(-34338i >> (arg_0.b.b % 32u), _wgslsmith_mult_i32(u_input.c, -1i))) | vec2<i32>(-2147483647i, ~u_input.a)) & _wgslsmith_sub_vec2_i32((~vec2<i32>(-47798i, u_input.b) ^ ~vec2<i32>(u_input.b, -1i)) | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), abs(vec2<i32>(0i, -1777i))), _wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.b, u_input.a), vec2<i32>(0i, u_input.a)) >> (~arg_2 % vec2<u32>(32u)), ~(-vec2<i32>(u_input.c, -1i))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.b), ~countOneBits(select(func_2(Struct_3(Struct_2(1957f), Struct_1(vec4<bool>(true, false, true, true), 25870u)), 520f, vec2<u32>(0u, 65307u)), -vec2<i32>(u_input.b, 0i), select(vec2<bool>(true, false), vec2<bool>(false, false), false))));
    var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(-vec2<i32>(u_input.a, 0i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, i32(-1i) * -3706i), firstLeadingBit(vec2<i32>(var_0.x, u_input.a)))), vec2<i32>(_wgslsmith_clamp_i32(1i, -1i, var_0.x) | var_0.x, _wgslsmith_mult_i32(-u_input.b, 5801i)) ^ func_2(Struct_3(Struct_2(259f), Struct_1(vec4<bool>(true, false, true, false), 0u)), _wgslsmith_f_op_f32(f32(-1f) * -388f), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 59117u), vec2<u32>(60540u, 63684u)))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, max(20341u, 4294967295u), _wgslsmith_div_u32(35835u, 1u), func_1())), firstTrailingBit(u_input.c));
}

