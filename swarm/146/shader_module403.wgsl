struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    var var_0 = firstTrailingBit(arg_0);
    let var_1 = _wgslsmith_add_u32(arg_0.x, 14429u);
    var var_2 = Struct_3(select(2147483647i, firstLeadingBit(u_input.a), true) != u_input.a, ~vec2<u32>(firstLeadingBit(4294967295u) ^ ~arg_0.x, arg_0.x), Struct_2(select(~firstTrailingBit(33206u), 31744u, all(vec4<bool>(false, true, false, true))), vec4<bool>(true, false, true, true), Struct_1(vec2<u32>(1u, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, -3833i, u_input.a), ~vec4<i32>(-1i, 56119i, 0i, u_input.a)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1062f * -1220f))), Struct_1(~arg_0.yz >> (_wgslsmith_sub_vec2_u32(arg_0.wz, vec2<u32>(49493u, arg_0.x)) % vec2<u32>(32u)), 1000f, -69273i, select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), select(false, true, true)))), 127f, Struct_2(~var_1, select(vec4<bool>(any(vec2<bool>(false, true)), true, true, true), vec4<bool>(any(vec2<bool>(true, false)), true, true, true), vec4<bool>(true, true, var_1 < 0u, true)), Struct_1(vec2<u32>(492u, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-207f)) + _wgslsmith_f_op_f32(max(1426f, -385f))), -2147483647i, select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-1f), Struct_1(vec2<u32>(~var_0.x, 1u & var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1469f * 1547f)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 0i, u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 9792i, -10865i, 2147483647i), vec4<i32>(u_input.a, -2147483647i, 0i, u_input.b))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)))));
    let var_3 = vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(countOneBits(u_input.b), var_2.c.c.c, -48152i), _wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, var_2.e.e.c, u_input.a), vec3<i32>(var_2.c.e.c, u_input.a, var_2.c.c.c)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -1i, 490i), vec3<i32>(2147483647i, -1i, var_2.c.c.c) | vec3<i32>(u_input.b, u_input.a, u_input.b)))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(1i, -u_input.b), -14519i & u_input.b), countOneBits(firstLeadingBit(-vec2<i32>(var_2.c.c.c, -24474i)))), var_2.e.e.c);
    var var_4 = Struct_5(Struct_2(~var_2.e.a, vec4<bool>(true, any(select(vec3<bool>(var_2.a, false, var_2.c.c.d.x), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), false, !any(vec3<bool>(true, var_2.a, true))), var_2.e.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-239f)) - _wgslsmith_f_op_f32(-var_2.e.d)))), var_2.e.c), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 725f))), Struct_4(var_2.e, Struct_3(all(!vec2<bool>(var_2.c.b.x, true)), vec2<u32>(~var_2.e.a, ~var_1), var_2.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.d))), var_2.c), arg_0.x, false));
    return vec3<u32>(var_0.x, ~(~4294967295u), 28149u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = select(arg_3.d.zx, select(arg_3.d.xy, arg_3.d.zy, !(true & (1217f != arg_1.b))), true);
    var_0 = select(arg_1.d.zx, select(arg_1.d.zz, !vec2<bool>(all(arg_3.d.zz), false), arg_3.d.xx), all(!vec4<bool>(any(vec2<bool>(false, false)), !var_0.x, var_0.x, var_0.x)));
    var_0 = arg_3.d.zy;
    var_0 = vec2<bool>(~arg_0.x < arg_1.a.x, all(arg_1.d));
    let var_1 = vec2<bool>(true, arg_3.d.x);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_3.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.b))), false));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec3_u32(func_3(firstLeadingBit(reverseBits(vec4<u32>(arg_3, arg_3, arg_3, arg_3)))), vec3<u32>(arg_3 >> (_wgslsmith_add_u32(59163u, arg_3) % 32u), ~(~31020u), _wgslsmith_add_u32(32454u, _wgslsmith_add_u32(arg_3, 16913u)))), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_3, 4294967295u), select(vec2<u32>(arg_3, arg_3), vec2<u32>(arg_3, 0u), vec2<bool>(arg_2, arg_2))), ~vec2<u32>(arg_3, arg_3) & vec2<u32>(arg_3, arg_3)), -1791f, 1i, !select(select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, arg_2, false), false), !vec3<bool>(arg_2, false, true), any(vec2<bool>(arg_2, arg_2)))), -u_input.b, Struct_1(((vec2<u32>(48090u, 18107u) << (vec2<u32>(arg_3, 42250u) % vec2<u32>(32u))) ^ ~vec2<u32>(arg_3, 1u)) | vec2<u32>(arg_3, 13165u ^ arg_3), _wgslsmith_f_op_f32(exp2(arg_0)), -u_input.b & 8452i, select(vec3<bool>(all(vec3<bool>(true, arg_2, true)), true, any(vec2<bool>(arg_2, true))), !(!vec3<bool>(arg_2, arg_2, arg_2)), vec3<bool>(true, arg_2, arg_2)))));
    let var_1 = ~(~(vec4<i32>(-1i) * -vec4<i32>(u_input.b, -2147483647i, -8291i, u_input.b)));
    var var_2 = !arg_2;
    let var_3 = Struct_1(vec2<u32>(~(~1u), arg_3 | arg_3), _wgslsmith_f_op_f32(853f + _wgslsmith_f_op_f32(-arg_0)), -1i, !vec3<bool>(!arg_2, !arg_2, arg_2));
    let var_4 = Struct_3(56513i == var_3.c, firstLeadingBit(firstTrailingBit(firstTrailingBit(vec2<u32>(1u, 4294967295u)))), Struct_2(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(98355u, 12716u), _wgslsmith_add_u32(5920u, 9763u)), var_3.a.x), !vec4<bool>(-768f <= arg_1.x, true, true, !var_3.d.x), var_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x - var_0))), Struct_1(vec2<u32>(var_3.a.x, 1u), _wgslsmith_f_op_f32(min(arg_1.x, -468f)), var_3.c, !select(var_3.d, var_3.d, vec3<bool>(true, false, true)))), arg_1.x, Struct_2(var_3.a.x, !(!vec4<bool>(arg_2, true, var_3.d.x, arg_2)), var_3, _wgslsmith_f_op_f32(-var_0), var_3));
    return _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) * _wgslsmith_f_op_f32(trunc(arg_1.x))))));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: bool, arg_3: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, u_input.b), ~vec2<i32>(-23573i, 2147483647i)) | _wgslsmith_clamp_vec2_i32(vec2<i32>(-48749i, 0i), vec2<i32>(arg_3, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(arg_0, arg_0))), ~(-(~vec2<i32>(-2147483647i, 34834i)))), select(vec2<i32>(arg_3, ~(~(-1i))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(arg_0, 1i), -arg_3), vec2<i32>(1i, 1i)), select(vec2<bool>(!arg_2, arg_2), vec2<bool>(arg_2, !arg_2), vec2<bool>(true, any(vec4<bool>(true, arg_2, false, true))))));
    var var_1 = Struct_3(((-var_0.x & 0i) ^ (_wgslsmith_clamp_i32(-38642i, arg_0, arg_3) << (39421u % 32u))) != _wgslsmith_mod_i32(~_wgslsmith_add_i32(var_0.x, 0i), ~2147483647i), func_3(vec4<u32>(4294967295u, 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 71407u, 25517u), vec4<u32>(4294967295u, 0u, 1u, 1166u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 41821u, 0u), vec4<u32>(11798u, 4294967295u, 31279u, 1u))), ~19720u)).zx, Struct_2(_wgslsmith_add_u32(firstTrailingBit(39971u), _wgslsmith_dot_vec4_u32(~vec4<u32>(35328u, 14153u, 0u, 4294967295u), ~vec4<u32>(1u, 1u, 41006u, 0u))), select(!vec4<bool>(false, arg_2, false, true), select(vec4<bool>(false, true, arg_2, arg_2), !vec4<bool>(arg_2, true, false, arg_2), arg_2 | arg_2), arg_2), Struct_1(func_3(vec4<u32>(0u, 4294967295u, 32798u, 4294967295u)).zx, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x - -1277f), _wgslsmith_f_op_f32(max(arg_1.x, 1091f)))), 2147483647i, vec3<bool>(false, var_0.x > var_0.x, arg_2 & arg_2)), _wgslsmith_f_op_f32(ceil(-727f)), Struct_1(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(4294967295u, 0u)), vec2<u32>(7078u, 4294967295u)), arg_1.x, select(var_0.x | arg_0, ~var_0.x, arg_2 & arg_2), select(select(vec3<bool>(arg_2, true, false), vec3<bool>(arg_2, true, true), vec3<bool>(arg_2, arg_2, true)), !vec3<bool>(false, false, arg_2), any(vec3<bool>(arg_2, false, true))))), arg_1.x, Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(19933u), ~0u, 103857u, _wgslsmith_mult_u32(11357u, 1u)), ~vec4<u32>(0u, 0u, 74798u, 58875u)), vec4<bool>(all(!vec3<bool>(arg_2, arg_2, arg_2)), any(vec3<bool>(false, arg_2, false)), all(vec3<bool>(true, false, arg_2)), arg_2 == (arg_2 | true)), Struct_1(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, arg_0, u_input.a, var_0.x)), vec4<i32>(-37856i, -11062i, 1i, -18922i)), !vec3<bool>(true, arg_2, arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) * -602f), Struct_1(vec2<u32>(select(44156u, 43383u, false), 1u), _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), var_0.x, select(select(vec3<bool>(true, false, false), vec3<bool>(true, arg_2, true), vec3<bool>(true, false, arg_2)), !vec3<bool>(true, arg_2, false), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, false, false), arg_2)))));
    var_1 = Struct_3(!arg_2, ~var_1.e.c.a, var_1.e, var_1.d, var_1.e);
    var_1 = Struct_3(var_1.d < 535f, vec2<u32>(var_1.c.e.a.x << (_wgslsmith_div_u32(1u, var_1.c.c.a.x) % 32u), _wgslsmith_mult_u32(abs(0u ^ var_1.b.x), _wgslsmith_dot_vec2_u32(var_1.c.e.a, var_1.c.c.a))), var_1.e, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(var_1.b.x | (var_1.b.x << (39557u % 32u)), var_1.e.b, var_1.c.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), var_1.c.c));
    let var_2 = Struct_2(~(~var_1.c.e.a.x), !var_1.c.b, var_1.e.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-156f)))), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(~var_1.c.e.a.x, 80113u), var_1.c.e.a, vec2<u32>(1u, 0u) & vec2<u32>(var_1.b.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 698f)), arg_3, vec3<bool>(true == var_1.e.e.d.x, !(var_1.e.c.d.x == true), any(vec4<bool>(false, var_1.a, arg_2, var_1.e.e.d.x)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, -2285f, arg_1.x) * vec3<f32>(var_1.d, arg_1.x, var_2.c.b))), _wgslsmith_f_op_vec3_f32(step(arg_1.wyz, arg_1.xzz))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_5) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_5(-12594i, vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_2.b.x, _wgslsmith_f_op_vec3_f32(-arg_0.zwz), false, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 4294967295u, 4294967295u, arg_1), vec4<u32>(arg_1, 33654u, 31163u, 4294967295u)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(arg_0.x, arg_0.x)), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1263f, -1292f)))), arg_2.a.b.x, -max(arg_2.a.c.c, -u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.zyw), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.b.x, -1002f, arg_2.c.b.c.d))), any(vec3<bool>(true, arg_2.c.a.c.d.x, true)))))))));
    let var_1 = min(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-21144i, arg_2.c.a.e.c, -2147483647i), -vec3<i32>(0i, u_input.a, -2147483647i)), 34392i), u_input.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -55506i, -1i) | vec4<i32>(u_input.b, u_input.b, arg_2.c.b.c.e.c, u_input.a), vec4<i32>(-2147483647i, -82i, u_input.b, 0i))), _wgslsmith_div_vec3_i32(~firstLeadingBit(vec3<i32>(1i, arg_2.c.b.e.c.c, 2147483647i)), reverseBits(firstTrailingBit(-vec3<i32>(47389i, -20831i, arg_2.c.a.c.c)))));
    var var_2 = Struct_2(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_2.a.c.a.x, arg_2.c.b.b.x, 0u, 4294967295u)), select(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 40169u, arg_1, arg_2.a.e.a.x), vec4<u32>(arg_1, 0u, 60596u, 68470u), vec4<u32>(arg_2.c.c, 1u, 0u, 0u))), ~vec4<u32>(1u, 9500u, arg_2.a.e.a.x, 13055u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.c.b.b.x, 4294967295u, arg_2.c.b.c.c.a.x, arg_2.a.a), vec4<u32>(arg_2.a.c.a.x, 21561u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), all(!arg_2.a.b))), select(arg_2.c.b.c.b, select(select(select(vec4<bool>(arg_2.a.b.x, arg_2.a.c.d.x, arg_2.a.c.d.x, false), arg_2.a.b, arg_2.a.b.x), !vec4<bool>(arg_2.c.d, true, arg_2.a.b.x, false), !arg_2.c.d), !vec4<bool>(arg_2.c.b.c.b.x, arg_2.a.c.d.x, arg_2.c.b.c.c.d.x, true), false | (arg_2.c.a.c.b == arg_2.a.e.b)), select(!arg_2.a.b, select(!vec4<bool>(arg_2.a.c.d.x, arg_2.c.d, arg_2.a.b.x, false), arg_2.c.a.b, select(arg_2.a.b, vec4<bool>(arg_2.a.c.d.x, true, arg_2.c.d, arg_2.c.d), vec4<bool>(arg_2.a.b.x, arg_2.c.d, arg_2.a.e.d.x, false))), true)), Struct_1(countOneBits(~arg_2.a.c.a), -921f, arg_2.a.e.c, !(!arg_2.a.c.d)), -1134f, arg_2.c.b.c.e);
    let var_3 = _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(var_1.x ^ arg_2.a.c.c, (min(var_1.x, 13669i) >> (var_2.e.a.x % 32u)) & ~u_input.b));
    var var_4 = arg_2.a;
    return arg_0;
}

fn func_6(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = 1000f;
    var var_1 = vec2<bool>(any(vec3<bool>(false, any(vec2<bool>(true, true)), true)), select(true, !(45332u != arg_1.x), true) || false);
    var var_2 = _wgslsmith_f_op_f32(exp2(var_0));
    var_1 = select(select(select(select(vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x)), vec2<bool>(!var_1.x, true | var_1.x), all(vec4<bool>(false, var_1.x, true, var_1.x))), select(vec2<bool>(true, true), select(vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), false), select(vec2<bool>(false, true), vec2<bool>(var_1.x, true), var_1.x)), !(!vec2<bool>(var_1.x, false))), !(!(!vec2<bool>(true, var_1.x)))), vec2<bool>(false, !all(vec3<bool>(false, var_1.x, var_1.x))), !var_1.x);
    let var_3 = Struct_5(Struct_2(4294967295u, !(!select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), false)), Struct_1(vec2<u32>(arg_1.x, 1u), arg_2.x, -1i, vec3<bool>(true, true, var_1.x | var_1.x)), var_0, Struct_1(min(arg_1.yx, _wgslsmith_mod_vec2_u32(arg_1.yx, arg_1.yy)), -524f, ~u_input.a, select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), !vec3<bool>(false, var_1.x, true), arg_1.x > 70557u))), _wgslsmith_f_op_vec2_f32(-arg_0), Struct_4(Struct_2(~arg_1.x, select(select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x)), vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, true)), Struct_1(~arg_1.zx, _wgslsmith_f_op_f32(trunc(var_0)), abs(-10103i), !vec3<bool>(false, var_1.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1452f - -479f)), Struct_1(~arg_1.xy, _wgslsmith_f_op_f32(f32(-1f) * -280f), ~u_input.b, select(vec3<bool>(true, false, true), vec3<bool>(false, var_1.x, false), false))), Struct_3(!(u_input.a <= 0i), vec2<u32>(min(arg_1.x, arg_1.x), func_3(vec4<u32>(1u, arg_1.x, arg_1.x, 13903u)).x), Struct_2(21963u | arg_1.x, !vec4<bool>(false, var_1.x, var_1.x, var_1.x), Struct_1(vec2<u32>(233u, arg_1.x), arg_2.x, u_input.a, vec3<bool>(true, false, var_1.x)), _wgslsmith_f_op_f32(step(var_0, -115f)), Struct_1(vec2<u32>(0u, 0u), 331f, -7707i, vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, -282f))), Struct_2(arg_1.x ^ 1u, select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true), true), Struct_1(vec2<u32>(arg_1.x, 4294967295u), var_0, -17671i, vec3<bool>(var_1.x, var_1.x, false)), arg_0.x, Struct_1(arg_1.zz, arg_2.x, 1i, vec3<bool>(false, true, var_1.x)))), 4294967295u, any(!vec3<bool>(var_1.x, var_1.x, true))));
    return var_3.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(26927u, 1u), vec2<u32>(0u, 1u), vec2<u32>(32749u, 36195u)), countOneBits(vec2<u32>(25962u, 1u)))) <= _wgslsmith_mult_u32(~57029u ^ firstTrailingBit(1u), ~_wgslsmith_clamp_u32(106410u, 20923u, 7234u)), vec2<u32>(~_wgslsmith_sub_u32(~6140u, 55079u), 1u), Struct_2(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~4294967295u, ~0u), 0u), vec4<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), false, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(29691i, u_input.a, 1007i)) == 21417i), func_6(vec2<f32>(-153f, 1180f), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(61746u, 994u, 13801u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(-254f, -1421f, -2010f, 160f), 1u, Struct_5(Struct_2(1u, vec4<bool>(false, true, false, true), Struct_1(vec2<u32>(0u, 121545u), -2316f, -2147483647i, vec3<bool>(false, true, false)), 2188f, Struct_1(vec2<u32>(1u, 4294967295u), 1024f, -16814i, vec3<bool>(false, false, false))), vec2<f32>(-502f, -445f), Struct_4(Struct_2(0u, vec4<bool>(true, false, false, false), Struct_1(vec2<u32>(1u, 59110u), -923f, u_input.b, vec3<bool>(false, true, true)), 1000f, Struct_1(vec2<u32>(1u, 2909u), -347f, u_input.a, vec3<bool>(false, true, false))), Struct_3(true, vec2<u32>(0u, 1u), Struct_2(46228u, vec4<bool>(true, false, false, true), Struct_1(vec2<u32>(1u, 4294967295u), 1545f, 27092i, vec3<bool>(true, true, true)), -2181f, Struct_1(vec2<u32>(46155u, 4294967295u), 385f, 1i, vec3<bool>(true, false, true))), 1417f, Struct_2(12282u, vec4<bool>(false, true, false, false), Struct_1(vec2<u32>(4294967295u, 4294967295u), -1075f, 17861i, vec3<bool>(true, false, true)), -991f, Struct_1(vec2<u32>(19293u, 1u), -1547f, -4047i, vec3<bool>(true, false, true)))), 0u, true))))), 354f, func_6(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1240f, 1502f) - vec2<f32>(-1028f, -2239f)))), ~(~vec3<u32>(48006u, 2154u, 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1297f, 671f, -556f, -535f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 458f, -462f, 1988f))))), _wgslsmith_f_op_f32(trunc(-754f)), Struct_2(_wgslsmith_div_u32(121141u, _wgslsmith_mult_u32(~1u, 1u)), vec4<bool>(true, true, true, true), func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(1606f, -123f) * vec2<f32>(539f, 1230f)), ~max(vec3<u32>(1u, 44356u, 5261u), vec3<u32>(6197u, 4294967295u, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(353f, 328f, 1278f, 2360f) + vec4<f32>(1000f, 2076f, 167f, -384f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-473f, -862f, -886f, -395f), vec4<f32>(1139f, 555f, 932f, -632f)))), 1f, func_6(vec2<f32>(-685f, 1545f), _wgslsmith_clamp_vec3_u32(vec3<u32>(32694u, 59828u, 1873u), vec3<u32>(1u, 1u, 52386u), vec3<u32>(1u, 36137u, 15901u)) << (_wgslsmith_div_vec3_u32(vec3<u32>(16523u, 4294967295u, 47779u), vec3<u32>(4294967295u, 41485u, 11106u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(582f, -1517f, -1436f, 363f), _wgslsmith_div_vec4_f32(vec4<f32>(742f, -464f, -1000f, -131f), vec4<f32>(542f, -1974f, -584f, -491f)), vec4<bool>(true, true, true, true))))));
    var var_1 = !var_0.e.c.d.x;
    var_1 = !(var_0.c.e.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d, var_0.c.c.b))));
    let var_2 = _wgslsmith_f_op_vec3_f32(func_5(-2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.c.b, var_0.c.d, var_0.d, var_0.c.e.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(503f, var_0.c.e.b, 561f, var_0.e.c.b) * vec4<f32>(-330f, 1000f, var_0.c.e.b, 1312f)), select(vec4<bool>(false, true, true, var_0.e.c.d.x), vec4<bool>(true, true, var_0.a, var_0.a), var_0.e.c.d.x)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.d, -843f, var_0.e.d, var_0.c.d) - vec4<f32>(-308f, 1000f, var_0.e.e.b, var_0.d)))))), !var_0.e.b.x, ~(~(-3963i) << (~abs(var_0.b.x) % 32u)))).yx;
    var var_3 = var_2.x;
    let var_4 = vec4<i32>(min(~_wgslsmith_div_i32(~2147483647i, u_input.a), ~2147483647i), ~u_input.b, ~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -29597i), vec3<i32>(var_0.e.e.c, -56505i, -32180i))), i32(-1i) * -36080i);
    var var_5 = -(vec4<i32>(-1i) * -(var_4 ^ (var_4 >> (vec4<u32>(var_0.e.c.a.x, var_0.c.c.a.x, var_0.b.x, 1u) % vec4<u32>(32u)))));
    var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.x, ~select(vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.e.c.a, vec2<u32>(4294967295u, var_0.c.a)), var_0.c.a | var_0.e.a, abs(var_0.c.c.a.x)), vec3<u32>(var_0.c.a, 1u, var_0.b.x), true));
}

