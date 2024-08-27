struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    return vec4<u32>(min(_wgslsmith_clamp_u32(0u, firstLeadingBit(12898u), ~32874u), 13160u), 1u, firstLeadingBit(_wgslsmith_div_u32(17136u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(16207u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(10816u, 5757u), vec2<u32>(101355u, 19136u)), 212u))), 1u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> bool {
    let var_0 = Struct_3(0u, arg_2.b, ~func_3(vec2<bool>(true, true)).x);
    var var_1 = reverseBits(~(~(-44509i) << (var_0.c % 32u)));
    let var_2 = ~(~reverseBits(select(vec4<u32>(1u, 5794u, arg_1.a.x, arg_0.c), _wgslsmith_div_vec4_u32(arg_1.a, vec4<u32>(arg_1.a.x, 40018u, arg_1.a.x, var_0.c)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true))));
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(select(~(~arg_1.a.x), 0u, true), _wgslsmith_mult_u32(var_0.c, (34062u ^ arg_2.a) << (abs(4294967295u) % 32u)), ~arg_0.c & 10781u, var_2.x), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.c, 1u, 79776u, arg_2.a), _wgslsmith_mod_vec4_u32(arg_1.a, var_2)), vec4<u32>(arg_0.a | arg_0.a, ~var_2.x, _wgslsmith_mod_u32(4294967295u, 11774u), 6263u)), arg_0.c, ~89017u << (_wgslsmith_mult_u32(arg_0.c, ~66982u) % 32u), func_3(vec2<bool>(all(vec2<bool>(false, true)), true)).x));
    var_1 = ~0i;
    return true;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = Struct_1(true, func_4(Struct_3(~1u, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(max(arg_0, arg_0)), arg_0), ~1u), Struct_2(func_3(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), Struct_3(~abs(2755u), vec3<f32>(_wgslsmith_f_op_f32(319f + arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_mod_u32(~1u, 1u))), max(vec4<i32>(-_wgslsmith_mult_i32(u_input.c, u_input.c), _wgslsmith_div_i32(countOneBits(u_input.c), firstTrailingBit(-2147483647i)), u_input.d, 1i), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-1i, -u_input.c, abs(2147483647i), 40228i))), ~firstLeadingBit(_wgslsmith_clamp_i32(u_input.d, u_input.a.x, u_input.a.x)) & _wgslsmith_dot_vec4_i32(countOneBits(u_input.b), u_input.b));
    var var_2 = abs(u_input.b.wx);
    var var_3 = Struct_4(arg_0, vec2<i32>(1i, 1i));
    var_0 = _wgslsmith_f_op_f32(1167f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
    return Struct_2(~(~vec4<u32>(1u, 1u, 1u, 1u)));
}

fn func_5(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = vec3<f32>(-393f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1133f))), _wgslsmith_f_op_f32(ceil(-783f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-295f, -1798f, _wgslsmith_f_op_f32(-694f - var_0.x), var_0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-988f, 815f, 169f, -1638f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(round(-712f)), _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = Struct_1(_wgslsmith_mod_u32(arg_0.a.x, ~arg_0.a.x) > reverseBits(~3776u), false, select(vec4<i32>(-34878i, -min(u_input.c, -5505i), 5751i, reverseBits(1i) & abs(u_input.b.x)), ~u_input.b, vec4<bool>(true, true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false))), true)), _wgslsmith_add_i32(-2147483647i, abs(u_input.a.x)) & -u_input.b.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + var_1.x);
    var var_4 = -666f;
    return _wgslsmith_f_op_vec3_f32(-var_1.wxx);
}

fn func_6(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_3.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -425f), !arg_1)))))));
    let var_1 = ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(820u) >> (var_0.a.x % 32u), ~var_0.a.x), ~max(abs(1504u), _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(var_0.a.x, arg_3.a, arg_3.c, 4294967295u))));
    var var_2 = vec4<bool>(true, true, !(!(arg_2.x < abs(1i))), select(true, any(select(!vec4<bool>(arg_1, false, false, false), select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), false), select(arg_1, arg_1, arg_1))), true));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.b.x)) - _wgslsmith_f_op_f32(exp2(arg_0.x))) + _wgslsmith_f_op_f32(-1720f + 1400f));
    var_2 = !select(select(vec4<bool>(var_2.x, !var_2.x, true, true), select(!vec4<bool>(false, var_2.x, arg_1, var_2.x), select(vec4<bool>(false, var_2.x, false, arg_1), vec4<bool>(var_2.x, false, false, var_2.x), vec4<bool>(var_2.x, arg_1, var_2.x, true)), func_4(arg_3, Struct_2(var_0.a), arg_3)), !select(vec4<bool>(arg_1, var_2.x, false, false), vec4<bool>(true, arg_1, false, true), vec4<bool>(arg_1, arg_1, false, arg_1))), vec4<bool>(true == (16590u <= var_0.a.x), 585f != _wgslsmith_f_op_f32(trunc(-1725f)), var_2.x, any(select(vec4<bool>(false, var_2.x, arg_1, var_2.x), vec4<bool>(var_2.x, false, true, false), false))), select(!vec4<bool>(true, arg_1, false, false), select(select(vec4<bool>(false, var_2.x, false, true), vec4<bool>(arg_1, false, arg_1, true), var_2.x), !vec4<bool>(var_2.x, true, arg_1, false), arg_1), select(!vec4<bool>(var_2.x, true, true, true), vec4<bool>(false, arg_1, false, false), vec4<bool>(arg_1, var_2.x, true, true))));
    return 0u;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = ~vec3<u32>(~23193u, func_6(_wgslsmith_f_op_vec3_f32(func_5(func_2(1377f))), true, _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.x, -2147483647i), vec2<i32>(1i, 1i)), Struct_3(27830u, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(798f, 954f, -248f))), 14114u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(32444u, 38659u), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 21264u), vec2<u32>(4294967295u, 4765u))));
    var_0 = ~vec3<u32>(var_0.x, var_0.x, 80062u);
    var var_1 = Struct_1(!(!(false || func_4(Struct_3(1u, vec3<f32>(542f, -409f, 106f), var_0.x), Struct_2(vec4<u32>(4294967295u, 44450u, 0u, var_0.x)), Struct_3(var_0.x, vec3<f32>(-576f, -610f, -499f), 1u)))), true, abs(-u_input.b), -20285i);
    var var_2 = select(vec4<bool>(true == any(select(vec2<bool>(var_1.a, true), vec2<bool>(false, false), true)), true, any(select(vec4<bool>(false, false, var_1.b, false), !vec4<bool>(false, var_1.b, false, false), !vec4<bool>(false, var_1.a, var_1.b, true))), !(!var_1.a)), vec4<bool>(false, true, true, false), select(select(!vec4<bool>(true, false, true, var_1.a), select(!vec4<bool>(var_1.b, var_1.a, true, var_1.b), select(vec4<bool>(false, false, var_1.a, false), vec4<bool>(true, false, var_1.a, false), vec4<bool>(var_1.b, false, true, var_1.a)), var_1.b), select(!vec4<bool>(var_1.a, var_1.a, var_1.b, var_1.a), !vec4<bool>(var_1.b, false, true, var_1.b), select(vec4<bool>(false, var_1.b, var_1.a, true), vec4<bool>(false, var_1.b, var_1.b, true), vec4<bool>(var_1.a, var_1.b, false, true)))), !(!vec4<bool>(var_1.a, var_1.a, var_1.b, var_1.b)), select(select(select(vec4<bool>(false, false, var_1.b, false), vec4<bool>(var_1.b, true, false, var_1.b), var_1.b), !vec4<bool>(false, var_1.b, var_1.a, var_1.a), vec4<bool>(true, var_1.a, false, true)), vec4<bool>(any(vec4<bool>(var_1.b, false, var_1.a, var_1.b)), true, true, true), !(!vec4<bool>(true, var_1.b, false, var_1.a)))));
    var_2 = !vec4<bool>(true | (true & !var_2.x), var_1.a, !all(!vec4<bool>(false, var_1.b, var_1.b, var_2.x)), !all(var_2.yyw));
    return Struct_1(all(var_2.zz), false, _wgslsmith_mod_vec4_i32(countOneBits(-(var_1.c << (vec4<u32>(70571u, 36897u, var_0.x, var_0.x) % vec4<u32>(32u)))), var_1.c), (arg_0.x & u_input.b.x) ^ 6845i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~vec3<i32>(0i, -u_input.a.x, u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1023f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-461f, 125f)), 182f, _wgslsmith_f_op_f32(-1136f - _wgslsmith_f_op_vec3_f32(func_5(Struct_2(vec4<u32>(36817u, 1u, 39229u, 26397u)))).x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - 1844f), _wgslsmith_div_f32(458f, -555f), _wgslsmith_f_op_f32(select(-1000f, 2220f, true)), -173f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-453f, -872f, 424f, 572f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1797f, 1004f, -1229f, -799f), vec4<f32>(-663f, 2481f, 677f, -1687f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-327f, -470f, 1348f, 272f)), vec4<f32>(737f, 1423f, 408f, 2241f), true))))));
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(540f, 1763f, var_1.x, var_1.x), _wgslsmith_div_vec4_f32(vec4<f32>(103f, 1000f, 229f, var_1.x), vec4<f32>(-1158f, var_1.x, 1711f, -1699f)))) * vec4<f32>(_wgslsmith_f_op_f32(399f * var_1.x), 1f, -670f, var_1.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(551f, -2209f, var_1.x, var_1.x), vec4<f32>(137f, var_1.x, 1980f, var_1.x))))))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-var_1.x), vec2<i32>(var_0.c.x, _wgslsmith_mod_i32(u_input.c, ~u_input.b.x) >> (~(~0u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.wwy | -(min(u_input.b.zwy, u_input.b.wxw) << (firstLeadingBit(vec3<u32>(0u, 1u, 4294967295u)) % vec3<u32>(32u))));
}

