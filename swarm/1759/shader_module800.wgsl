struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    var var_0 = ~u_input.e.x;
    let var_1 = _wgslsmith_f_op_f32(round(-1000f));
    let var_2 = vec4<bool>(true, !((~0i >> ((u_input.d.x & arg_0.b) % 32u)) == abs(arg_0.a.b)), any(vec3<bool>(false, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)))), any(vec2<bool>(false, true)) & true);
    var_0 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec3_i32(max(~vec3<i32>(-1i, 17073i, u_input.e.x), vec3<i32>(u_input.e.x, -25970i, arg_0.a.b)), -abs(vec3<i32>(u_input.a, arg_0.a.b, u_input.a))), arg_0.a.b), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-22051i, 30416i, u_input.a) >> (vec3<u32>(0u, 960u, 18786u) % vec3<u32>(32u))), ~vec3<i32>(-2147483647i, ~(-7675i), arg_0.a.b >> (arg_0.b % 32u))));
    var var_3 = arg_0.a.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.a, 1277f), vec2<f32>(var_1, -558f), var_2.x)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, arg_0.a.a) + vec2<f32>(var_1, var_1))))), select(select(select(var_2.yz, var_2.yw, var_2.x), vec2<bool>(var_2.x, var_2.x), true), !var_2.zz, ~u_input.c.x < max(arg_0.b, u_input.d.x)))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1313f, -821f)) - _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_1(-1562f, -1i), u_input.c.x)))) + vec2<f32>(_wgslsmith_div_f32(-267f, 159f), -447f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 791f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(325f, 656f) - vec2<f32>(-306f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-370f, -702f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2371f, 211f)), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_1(1100f, -1i), u_input.b))).x)), vec2<bool>(select(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))), select(true, false, true)), false)));
    var var_1 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1578f), _wgslsmith_f_op_f32(floor(var_0.x)))))) >= _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1216f)))))));
    let var_2 = Struct_3(Struct_1(1508f, _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -17556i, -2147483647i), vec4<i32>(u_input.e.x, u_input.a, u_input.a, u_input.e.x)), min(u_input.e.x, -41426i)), u_input.e.x)), ~firstLeadingBit(89480u));
    var var_3 = Struct_3(var_2.a, max(var_2.b, select(abs(~14888u), _wgslsmith_mod_u32(u_input.c.x ^ 74607u, 39965u >> (var_2.b % 32u)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)))));
    var var_4 = Struct_2(all(vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), any(vec3<bool>(true, true, true)), var_2.a.b > u_input.a)), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(-726f >= var_3.a.a, select(false, false, true)), select(var_3.a.a <= -900f, 0u == var_3.b, all(vec2<bool>(false, false)))), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), select(!any(vec2<bool>(false, false)), all(vec2<bool>(true, true)), true)), _wgslsmith_div_vec4_i32(abs(countOneBits(vec4<i32>(u_input.a, var_3.a.b, 41532i, 2147483647i) >> (vec4<u32>(u_input.c.x, var_2.b, var_3.b, u_input.d.x) % vec4<u32>(32u)))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.b, 1i, -58625i, -16960i), vec4<i32>(2147483647i, var_3.a.b, var_3.a.b, -75779i), vec4<i32>(var_2.a.b, 2147483647i, u_input.e.x, -2147483647i))) & select(vec4<i32>(u_input.a, 0i, var_2.a.b, -2147483647i), ~vec4<i32>(-41724i, 18267i, var_2.a.b, var_3.a.b), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)))), vec4<i32>(u_input.a, 0i, -1i, -u_input.e.x & _wgslsmith_mod_i32(-var_2.a.b, _wgslsmith_mod_i32(var_3.a.b, 1i))), u_input.e.x);
    return Struct_1(-451f, -58821i);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = vec4<u32>(~u_input.c.x, u_input.c.x, _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_clamp_u32(4294967295u, u_input.d.x, 28172u)), abs(~u_input.c.x)), ~firstTrailingBit(firstLeadingBit(7896u))), ~30362u);
    var_0 = vec4<u32>(var_0.x, u_input.b, u_input.b, countOneBits(countOneBits(~abs(var_0.x))));
    var_0 = ~vec4<u32>(firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.x, 2987u), vec4<u32>(var_0.x, u_input.b, 0u, var_0.x))), ~(var_0.x << (max(u_input.b, var_0.x) % 32u)), ~reverseBits(~42427u), 4294967295u);
    var_0 = ~vec4<u32>(max(1u, 9462u), ~u_input.b, 1u, ~(~(~0u)));
    var var_1 = Struct_3(func_2(), ~var_0.x);
    return arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = -vec2<i32>(1i, _wgslsmith_div_i32(-68093i, reverseBits(u_input.e.x)) << (firstTrailingBit(8000u) % 32u));
    var var_1 = -_wgslsmith_div_i32(-_wgslsmith_add_i32(-1i, 4368i), 3325i) ^ (-11530i << ((~abs(44211u) & ~(~arg_1.x)) % 32u));
    var var_2 = func_4(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1233f * -110f)))), arg_2);
    let var_3 = !vec3<bool>(true, arg_2, select(4227u <= _wgslsmith_dot_vec4_u32(vec4<u32>(28164u, u_input.c.x, arg_1.x, u_input.d.x), vec4<u32>(arg_1.x, arg_1.x, u_input.d.x, u_input.d.x)), arg_2 & arg_2, all(vec3<bool>(arg_2, false, true))));
    let var_4 = select(vec4<i32>(-2046i, func_2().b, _wgslsmith_div_i32(-2147483647i, ~(~arg_0.x)), -arg_0.x), vec4<i32>(-_wgslsmith_dot_vec3_i32(arg_0, arg_0), -_wgslsmith_add_i32(var_0.x, _wgslsmith_mod_i32(0i, arg_0.x)), -(func_4(Struct_1(var_2.a, 0i), 1000f, var_3.x).b ^ _wgslsmith_sub_i32(1i, 0i)), countOneBits(-2147483647i)), var_3.x);
    return Struct_1(796f, -2147483647i);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    let var_0 = !select(vec3<bool>(false, any(vec4<bool>(true, false, false, false)), all(!arg_1.b)), !vec3<bool>(true, arg_1.a || arg_1.b.x, arg_1.a), arg_1.b.x);
    let var_1 = !vec3<bool>(any(!select(vec2<bool>(var_0.x, arg_1.a), vec2<bool>(true, true), vec2<bool>(true, true))), true, _wgslsmith_f_op_f32(abs(func_4(arg_0.a, arg_0.a.a, true).a)) > _wgslsmith_f_op_f32(f32(-1f) * -1269f));
    var var_2 = _wgslsmith_dot_vec3_u32(firstLeadingBit(select(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 12057u, arg_0.b), ~vec3<u32>(24140u, 1368u, 24349u)), _wgslsmith_div_vec3_u32(~vec3<u32>(14979u, 1u, 4294967295u), vec3<u32>(u_input.d.x, arg_0.b, 3307u) ^ vec3<u32>(arg_0.b, u_input.b, u_input.d.x)), var_0)), firstLeadingBit(vec3<u32>(firstTrailingBit(~u_input.c.x), abs(1u), _wgslsmith_dot_vec2_u32(~u_input.c, ~u_input.d))));
    var var_3 = Struct_1(arg_0.a.a, ~func_2().b);
    var var_4 = Struct_1(var_3.a, _wgslsmith_div_i32(~u_input.a, _wgslsmith_sub_i32(u_input.e.x, 53808i)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(func_1(select(~vec3<i32>(u_input.a, -2147483647i, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(-71223i, u_input.a, 26132i), vec3<i32>(2147483647i, -2147483647i, 2147483647i)), any(vec2<bool>(true, true))), u_input.d, select(false, false, true) & all(vec4<bool>(false, true, false, false))), ~u_input.b), Struct_2(true, vec2<bool>(true, true), abs(-vec4<i32>(u_input.e.x, u_input.e.x, 0i, u_input.e.x) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<i32>(1i, u_input.a, 2238i, -6831i))), vec4<i32>(-2147483647i, u_input.a, -u_input.a, reverseBits(_wgslsmith_div_i32(35371i, u_input.a))), 1i));
    var var_1 = func_2();
    let var_2 = !any(!vec3<bool>(true, true, any(vec3<bool>(false, false, false))));
    var var_3 = !select(select(vec3<bool>(true, !var_2, var_2), !vec3<bool>(true, var_2, false), var_1.a == var_0.a), vec3<bool>(select(true, var_2, all(vec3<bool>(var_2, var_2, var_2))), true, var_2), true);
    var_0 = func_4(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + func_5(Struct_3(Struct_1(var_0.a, -17315i), 1u), Struct_2(false, var_3.zx, vec4<i32>(var_0.b, var_0.b, var_1.b, -1i), vec4<i32>(-30114i, 0i, -2147483647i, var_1.b), -1i)).a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + var_0.a) - _wgslsmith_f_op_f32(select(-185f, var_0.a, false))))), var_2);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))))));
    var_3 = select(vec3<bool>(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -407f))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(612f, var_1.a)))), var_3.x, false), vec3<bool>(var_2, true, var_3.x), select(select(!(!vec3<bool>(var_2, false, var_2)), !vec3<bool>(true, var_2, true), !select(vec3<bool>(false, true, var_2), vec3<bool>(var_2, true, var_2), vec3<bool>(false, true, var_3.x))), !select(!vec3<bool>(var_3.x, var_3.x, var_2), select(vec3<bool>(var_3.x, var_2, false), vec3<bool>(false, var_2, false), var_2), !vec3<bool>(true, var_2, var_3.x)), !select(!vec3<bool>(var_2, var_3.x, false), select(vec3<bool>(true, var_3.x, var_2), vec3<bool>(var_3.x, var_3.x, true), true), false)));
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_add_vec2_u32((u_input.c & vec2<u32>(u_input.d.x, u_input.d.x)) >> (u_input.c % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d, u_input.d), vec2<u32>(76331u, u_input.d.x)), vec2<u32>(abs(29827u), 62851u))));
}

