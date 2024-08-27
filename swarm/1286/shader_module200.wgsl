struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> bool {
    global0 = u_input.c.x;
    var var_0 = _wgslsmith_clamp_u32(u_input.b.x, abs(~_wgslsmith_add_u32(u_input.b.x, u_input.d.x)) >> (~_wgslsmith_add_u32(~3685u, _wgslsmith_mult_u32(u_input.d.x, 45214u)) % 32u), ~countOneBits(~6733u) ^ _wgslsmith_add_u32(u_input.b.x, ~34366u));
    let var_1 = Struct_1(min(u_input.b.x, 25767u) <= _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.d.zxw, reverseBits(u_input.d.yxy)), min(~u_input.d.x, u_input.d.x)), arg_0.x, -firstLeadingBit(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -9884i, u_input.a), vec4<i32>(arg_0.x, 7510i, 1i, -6350i)))), arg_1, vec4<bool>(all(vec2<bool>(true, any(vec2<bool>(true, true)))), true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true)))));
    return !var_1.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> bool {
    let var_0 = (~(~abs(u_input.b)) ^ u_input.b) | ~(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, 49367u), u_input.d.wz));
    let var_1 = Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 31321i, u_input.a) >> (u_input.d.xzx % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, vec3<i32>(0i, 1081i, u_input.a))) >= (u_input.c.x | -2147483647i), 1i, vec4<i32>(u_input.c.x, u_input.a, select(30247i, u_input.c.x, !(arg_0.x != 1082f)), select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 22650i, u_input.a), u_input.c), u_input.a, func_3(u_input.c.zx, arg_0.x)) << (1u % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-258f, arg_0.x, true))))), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)))));
    let var_2 = u_input.c.x;
    var var_3 = Struct_1(!var_1.a, -firstTrailingBit(2147483647i), vec4<i32>(reverseBits(min(var_1.b, var_1.b) & 9464i), _wgslsmith_add_i32(abs(_wgslsmith_div_i32(10887i, u_input.c.x)), _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(var_1.b, -23188i, 34094i))), _wgslsmith_add_i32(-2147483647i, 32928i), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d + var_1.d) + _wgslsmith_f_op_f32(min(arg_0.x, -1733f))) * -1629f)), var_1.e);
    var var_4 = var_1;
    return !all(!(!select(vec4<bool>(var_3.e.x, false, var_3.e.x, var_3.a), var_1.e, vec4<bool>(var_4.a, false, var_3.a, var_1.e.x))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = -u_input.c.x;
    let var_1 = arg_2;
    var_0 = 24961i;
    var_0 = _wgslsmith_add_i32(reverseBits(u_input.c.x) | _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(-64876i, u_input.a, u_input.c.x)) & u_input.c, min(u_input.c, -vec3<i32>(0i, u_input.a, u_input.c.x))), -u_input.a >> ((1u << (u_input.b.x % 32u)) % 32u));
    var var_2 = Struct_1(!all(arg_3.xyy), -1i, _wgslsmith_mult_vec4_i32(reverseBits(reverseBits(vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, u_input.a))), -_wgslsmith_div_vec4_i32(vec4<i32>(40421i, 2147483647i, -7640i, 15485i), vec4<i32>(u_input.c.x, u_input.a, 45371i, u_input.a))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 9669u, arg_1.x) | u_input.d, ~arg_1) % vec4<u32>(32u)), arg_0, arg_3);
    return Struct_1(!func_3(u_input.c.xy, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1899f, -806f) + _wgslsmith_f_op_f32(-var_2.d))), 1i, select(_wgslsmith_add_vec4_i32(var_2.c, var_2.c), ~(vec4<i32>(0i, var_2.b, 15161i, 3582i) & var_2.c), arg_3), _wgslsmith_f_op_f32(-1000f - -542f), vec4<bool>(any(!(!var_2.e.yz)), true, all(vec2<bool>(!arg_3.x, any(vec3<bool>(false, arg_3.x, false)))), true));
}

fn func_1() -> vec2<u32> {
    let var_0 = func_4(1958f, _wgslsmith_add_vec4_u32(~(abs(u_input.d) & ~vec4<u32>(u_input.d.x, u_input.d.x, 48112u, u_input.d.x)), vec4<u32>(u_input.b.x, 1849u, ~0u, select(4294967295u, 1u, true)) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.d.x >> (4294967295u % 32u), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x)) % vec4<u32>(32u))), !any(vec2<bool>(true, true)) & all(vec3<bool>(true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(func_2(vec2<f32>(1866f, 1326f), u_input.d.x), true, true, u_input.d.x <= u_input.b.x), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))));
    var var_1 = firstLeadingBit(var_0.c.zyw);
    var var_2 = vec3<bool>(4294967295u > reverseBits(_wgslsmith_add_u32(~44416u, u_input.b.x)), true, select(var_0.a, any(vec3<bool>(var_0.e.x, var_1.x < var_0.b, var_0.e.x)), func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-246f, var_0.d) - vec2<f32>(var_0.d, var_0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1648f, var_0.d)))), 1u)));
    var_2 = !select(vec3<bool>(var_0.e.x, false, true), !var_0.e.zxy, false);
    var_2 = vec3<bool>(true, true, var_2.x);
    return abs(select(vec2<u32>(u_input.d.x, u_input.b.x), reverseBits(vec2<u32>(55729u, 0u) ^ vec2<u32>(u_input.d.x, 62752u)) & vec2<u32>(countOneBits(u_input.d.x), u_input.d.x), func_4(var_0.d, ~(vec4<u32>(41584u, 1u, 73193u, u_input.d.x) << (vec4<u32>(0u, 1u, 44260u, u_input.d.x) % vec4<u32>(32u))), var_2.x, !var_0.e).e.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -19331i;
    global0 = i32(-1i) * -abs(u_input.a >> (0u % 32u));
    let var_0 = func_1();
    global0 = reverseBits(func_4(-781f, max(~u_input.d, max(vec4<u32>(13035u, u_input.b.x, 1u, var_0.x), vec4<u32>(var_0.x, 59916u, u_input.d.x, var_0.x))), false || func_3(vec2<i32>(1i, u_input.c.x), -827f), vec4<bool>(true, true, true, true)).b) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(var_0, var_0), _wgslsmith_dot_vec3_u32(u_input.d.yyy, u_input.d.zzz)) << (vec2<u32>(0u, countOneBits(u_input.b.x)) % vec2<u32>(32u)), u_input.b) % 32u);
    var var_1 = func_4(1f, vec4<u32>(56128u, _wgslsmith_sub_u32(~u_input.d.x, 8980u), ~var_0.x, ~(~(u_input.b.x << (var_0.x % 32u)))), true, vec4<bool>(select(-1709f == _wgslsmith_f_op_f32(round(-2214f)), _wgslsmith_mod_u32(40007u, u_input.d.x) <= var_0.x, true), all(vec2<bool>(false, all(vec4<bool>(false, true, false, true)))), firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.d.zyx, vec3<u32>(57822u, 4294967295u, 23291u))) == ~0u, !func_4(_wgslsmith_div_f32(-2762f, -389f), ~vec4<u32>(62127u, u_input.b.x, 1u, 4294967295u), true, vec4<bool>(true, true, true, true)).e.x));
    global0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(72472u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1084f, _wgslsmith_f_op_f32(-228f * var_1.d))) * _wgslsmith_f_op_f32(1889f + _wgslsmith_f_op_f32(step(var_1.d, 1121f)))), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d))))));
}

