struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = Struct_4(-vec4<i32>(~_wgslsmith_mult_i32(u_input.b, 0i), -7344i, ~(-36300i), -34082i ^ (u_input.e.x & 2147483647i)), ~_wgslsmith_mult_vec2_i32(max(u_input.e, -u_input.e), ~(vec2<i32>(u_input.b, 2147483647i) >> (vec2<u32>(104545u, u_input.a) % vec2<u32>(32u)))), !vec3<bool>(arg_1, (u_input.e.x > 2147483647i) | arg_1, true));
    let var_1 = -1387f;
    var var_2 = 2043f;
    var_0 = Struct_4(reverseBits(vec4<i32>(abs(u_input.b) | -2147483647i, (-17915i | u_input.e.x) | -2147483647i, var_0.b.x, _wgslsmith_add_i32(1i, -15468i))), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -u_input.e, -_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(-15671i, -2147483647i), vec2<i32>(0i, -6224i)))), select(select(!var_0.c, var_0.c, any(vec4<bool>(true, true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.c.x, false), true), !any(!vec4<bool>(false, var_0.c.x, false, var_0.c.x))));
    let var_3 = !(!(!(!vec4<bool>(var_0.c.x, false, false, true))));
    return -1000f;
}

fn func_2() -> u32 {
    let var_0 = true;
    var var_1 = true;
    var_1 = !(-804f >= _wgslsmith_f_op_f32(func_3(false, all(!vec4<bool>(true, false, var_0, var_0)), u_input.e.x)));
    var var_2 = Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(min(u_input.b, -68889i), 2147483647i), -18184i, _wgslsmith_div_i32(u_input.e.x, -28176i), -_wgslsmith_div_i32(1i, 52026i)), _wgslsmith_add_vec4_i32(select(vec4<i32>(-38732i, -2147483647i, u_input.e.x, 1i), vec4<i32>(-17074i, u_input.e.x, 5095i, u_input.e.x), false & var_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -28364i, -1i, u_input.b), vec4<i32>(u_input.b, u_input.e.x, u_input.e.x, u_input.b), ~vec4<i32>(u_input.b, u_input.e.x, u_input.b, u_input.e.x)))), select(u_input.e, vec2<i32>((i32(-1i) * -1i) | _wgslsmith_div_i32(0i, u_input.b), u_input.b), vec2<bool>(false, true && var_0)), select(select(select(!vec3<bool>(var_0, var_0, var_0), !vec3<bool>(false, var_0, false), !vec3<bool>(true, false, var_0)), !(!vec3<bool>(false, var_0, false)), select(!vec3<bool>(true, true, var_0), vec3<bool>(true, true, true), !var_0)), vec3<bool>(any(!vec2<bool>(var_0, var_0)), var_0 || var_0, var_0), vec3<bool>(true, false, true)));
    let var_3 = ~(~(~_wgslsmith_sub_u32(1u, u_input.d))) | _wgslsmith_add_u32((u_input.d << (firstLeadingBit(u_input.d) % 32u)) >> ((~u_input.a & 40669u) % 32u), _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.d), u_input.c.ww)), ~select(u_input.c.wz, vec2<u32>(4294967295u, 4294967295u), false)));
    return countOneBits(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), ~(u_input.c.wx ^ u_input.c.zz)));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = u_input.e.x;
    let var_1 = func_2();
    var var_2 = !(!any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), true)));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f + 1684f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-209f)), _wgslsmith_f_op_f32(abs(arg_0))) * -123f)), 465f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1814f * arg_0)));
    var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(197f - -1474f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-571f, var_3.x, false)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 - 1000f), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(abs(arg_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-166f, -246f, 438f))))));
    return Struct_1(vec4<i32>(1i, 1i, u_input.e.x, _wgslsmith_mod_i32(u_input.b, ~(-u_input.b))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = Struct_3(_wgslsmith_dot_vec3_u32(~select(_wgslsmith_mult_vec3_u32(arg_2, vec3<u32>(u_input.d, u_input.a, 8776u)), vec3<u32>(0u, u_input.c.x, arg_1.a), arg_1.b.x && true), countOneBits(~vec3<u32>(67460u, u_input.c.x, 37718u))), vec3<bool>(all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, arg_1.b.x, arg_1.b.x, false), arg_1.b.x)), any(!(!vec4<bool>(arg_1.b.x, false, arg_1.b.x, false))), true));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-2084f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-798f)) * 1769f));
    let var_3 = true;
    var_1 = u_input.d;
    return StorageBuffer(~select(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a, 4294967295u, 8935u), u_input.c.zyx), vec3<u32>(1u, arg_1.a, arg_2.x)), _wgslsmith_sub_u32(arg_1.a, ~1u), select(arg_1.a, arg_1.a, arg_1.b.x) == 9326u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1463f, -779f) + vec2<f32>(-1190f, 1898f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-395f, -848f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-500f, 1599f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-661f, -1129f)))))), select(min(1i, ~_wgslsmith_dot_vec4_i32(arg_3.c.a, vec4<i32>(u_input.e.x, u_input.b, arg_3.b.a.x, arg_0))), 1i, var_3), _wgslsmith_f_op_f32(func_3(any(arg_1.b.zx), true, _wgslsmith_mult_i32(10826i, func_1(-1931f, 0u).a.x ^ select(47931i, 1i, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.zx;
    let var_1 = Struct_3(_wgslsmith_mod_u32(81916u, 3662u), vec3<bool>(any(vec3<bool>(true, true, true)) || true, true, false));
    let x = u_input.a;
    s_output = func_4(-1i, Struct_3(91812u, var_1.b), ~vec3<u32>(91469u, ~var_1.a << (~0u % 32u), var_1.a), Struct_2(func_1(488f, 0u), Struct_1(select(vec4<i32>(u_input.b, -2147483647i, -20039i, 0i), -vec4<i32>(u_input.e.x, u_input.e.x, 0i, -42519i), vec4<bool>(false, true, true, var_1.b.x))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1096u)));
}

