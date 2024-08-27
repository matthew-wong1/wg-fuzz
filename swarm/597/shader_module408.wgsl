struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = Struct_3(arg_0);
    var var_1 = Struct_1(34777i, arg_0.a, select(arg_0.c, vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.c.x || false), _wgslsmith_f_op_f32(floor(318f)), ~select(firstTrailingBit(min(var_0.a.e, vec3<u32>(46755u, 1u, arg_0.e.x))), vec3<u32>(1u, var_0.a.e.x, u_input.e), !(!var_0.a.c.x)));
    var_1 = Struct_1(~(-1i), 22878i, select(var_1.c, select(!(!vec2<bool>(arg_0.c.x, true)), !var_1.c, !var_0.a.c), arg_0.c), arg_0.d, vec3<u32>(abs(~firstLeadingBit(var_0.a.e.x)), ~(~(u_input.d ^ var_0.a.e.x)), _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, arg_0.e.x), _wgslsmith_div_u32(~14762u, 1u))));
    return var_1.e;
}

fn func_2() -> vec3<u32> {
    return _wgslsmith_add_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(func_3(Struct_1(u_input.b.x, -36529i, vec2<bool>(false, false), 809f, vec3<u32>(4294967295u, 1u, u_input.d))), ~vec3<u32>(u_input.d, u_input.d, 28868u) & ~vec3<u32>(0u, 0u, u_input.e), vec3<u32>(0u, ~1u, max(4294967295u, u_input.d)))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 50428u, 35100u), vec3<u32>(4294967295u, 1u, 46654u)), 4294967295u, 36165u), firstTrailingBit(vec3<u32>(54111u, 1u, u_input.e >> (0u % 32u)))));
}

fn func_1() -> bool {
    let var_0 = vec4<u32>(~10980u, u_input.e, u_input.e, _wgslsmith_mod_u32(u_input.d, 33502u));
    let var_1 = -2147483647i;
    var var_2 = any(!select(vec3<bool>(true, true, select(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(false, false, true)), true)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(416f, 2342f, 1686f) + vec3<f32>(1042f, -848f, -1719f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1318f, 1170f, -627f), vec3<f32>(287f, -912f, -1000f), true))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -1359f, -351f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(224f, 125f, -1668f) + vec3<f32>(561f, 1297f, 470f)))))), Struct_1(_wgslsmith_dot_vec2_i32(u_input.b.zy, -vec2<i32>(u_input.b.x, var_1)), _wgslsmith_mult_i32(-5123i, -u_input.c.x & firstLeadingBit(u_input.a.x)), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) * _wgslsmith_f_op_f32(f32(-1f) * -285f))), func_2()));
    let var_4 = ~11593u ^ var_0.x;
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(258f + arg_1)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(462f, -167f, any(vec4<bool>(true, true, false, arg_0.x)))), arg_1))));
    var var_2 = u_input.a;
    var var_3 = Struct_3(Struct_1(var_2.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-17829i, 1i, 1i, var_2.x), vec4<i32>(-1i, 2147483647i, u_input.b.x, 1i)), max(vec4<i32>(18849i, 0i, var_2.x, -2147483647i), vec4<i32>(0i, 68709i, -15719i, -1i))), 12649i), select(vec2<bool>(arg_0.x, u_input.d > 16851u), vec2<bool>(true, arg_0.x), true), arg_2, func_2()));
    return Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_sub_i32(var_3.a.a, u_input.c.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_3.a.b), u_input.c)), var_3.a.a), select(1354i, ~u_input.c.x, true), !vec2<bool>(all(vec4<bool>(false, arg_0.x, false, var_3.a.c.x)), -154f != var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(ceil(-790f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, -1000f)))), countOneBits(~vec3<u32>(4294967295u | u_input.d, 4294967295u, 4294967295u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, firstLeadingBit(59883i), select(vec2<bool>(u_input.e >= 4294967295u, -1015f == arg_0.d), !func_4(vec3<bool>(true, false, arg_0.c.x), arg_0.d, _wgslsmith_f_op_f32(f32(-1f) * -1421f)).c, false), arg_1.x, arg_0.e);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_0.d, 1150f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(470f, arg_1.x, var_0.d), vec3<f32>(-1581f, -1045f, 2254f)))), any(!vec4<bool>(arg_0.c.x, false, arg_0.c.x, var_0.c.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1000f, 334f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d, arg_1.x, var_0.d), vec3<f32>(-1000f, 746f, -718f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-899f, -478f, arg_0.d), vec3<f32>(1226f, -617f, arg_0.d)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, -1241f, var_0.d)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.d, 362f, 1164f), vec3<f32>(var_0.d, -1619f, arg_1.x), vec3<bool>(false, var_0.c.x, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-730f, arg_1.x, arg_0.d))))));
    let var_2 = u_input.a;
    let var_3 = arg_0;
    var var_4 = i32(-1i) * -(-u_input.a.x << (min(0u, ~u_input.d) % 32u));
    return Struct_1(var_3.b, _wgslsmith_add_i32(_wgslsmith_mult_i32(reverseBits(-var_2.x), 0i), select(_wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_mult_i32(var_3.a, 45485i), _wgslsmith_div_i32(var_3.a, 1i)), var_2.x, func_4(vec3<bool>(arg_0.c.x, true, var_0.c.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-944f + arg_1.x)).c.x)), vec2<bool>(var_0.c.x & func_1(), var_0.c.x), var_1.x, _wgslsmith_div_vec3_u32(var_3.e, firstTrailingBit(~(vec3<u32>(1u, u_input.e, arg_0.e.x) << (var_3.e % vec3<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-844f - -283f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -396f)))))), -587f));
    var var_1 = func_5(func_4(vec3<bool>(!func_1(), false, true), -1465f, _wgslsmith_f_op_f32(f32(-1f) * -965f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), u_input.d | _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 29516u, 17804u, u_input.d) << (vec4<u32>(76221u, 66120u, 0u, 1u) % vec4<u32>(32u))), vec4<u32>(~4294967295u, 4294967295u, ~u_input.d, _wgslsmith_div_u32(u_input.d, 80760u))));
    let var_2 = ~(~vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.e, vec3<u32>(0u, u_input.e, 0u)), u_input.e ^ 28336u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.e.x, var_1.e.x, var_1.e.x), vec3<u32>(11943u, u_input.d, 24109u)))) ^ countOneBits(var_1.e);
    let var_3 = var_1.c.x;
    var var_4 = !select(select(select(!vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x), select(vec4<bool>(var_1.c.x, var_1.c.x, true, true), vec4<bool>(var_1.c.x, false, var_1.c.x, false), false), var_1.c.x), vec4<bool>(var_2.x < var_1.e.x, var_1.a >= -1i, true, all(vec2<bool>(var_1.c.x, var_1.c.x))), var_1.c.x), vec4<bool>(!(var_1.c.x | true), select(-1i, var_1.b, false) == -var_1.b, var_1.c.x & (var_1.e.x == 0u), all(!vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x))), func_4(select(vec3<bool>(true, var_1.c.x, true), vec3<bool>(var_1.c.x, var_1.c.x, false), vec3<bool>(true, false, false)), func_5(Struct_1(-58037i, var_1.a, vec2<bool>(false, var_1.c.x), 429f, vec3<u32>(1561u, 1u, u_input.e)), vec2<f32>(-416f, -1238f), 22274u).d, -1674f).e.x != ~13643u);
    var var_5 = abs(~(vec4<u32>(abs(u_input.e), ~0u, 4294967295u, u_input.d) >> (vec4<u32>(~var_1.e.x, ~78065u, ~u_input.d, var_2.x) % vec4<u32>(32u))));
    var var_6 = vec3<bool>(func_1() & all(vec2<bool>(false, var_1.c.x)), func_1(), all(!vec4<bool>(var_4.x, true, false & var_4.x, var_4.x)));
    var var_7 = ~u_input.b.x;
    var_4 = select(select(select(select(vec4<bool>(true, var_6.x, true, var_1.c.x), select(vec4<bool>(false, var_6.x, true, true), vec4<bool>(true, var_4.x, var_4.x, true), vec4<bool>(false, false, false, false)), var_6.x), vec4<bool>(true, u_input.a.x < 22041i, var_6.x, var_1.c.x), (var_2.x | 28629u) >= 49623u), select(select(!vec4<bool>(var_4.x, true, var_4.x, true), vec4<bool>(false, true, true, false), vec4<bool>(var_1.c.x, var_1.c.x, false, true)), select(!vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.c.x), vec4<bool>(true, true, var_4.x, false), true), all(select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.c.x, false, false, true), vec4<bool>(false, false, var_1.c.x, var_6.x)))), select(select(vec4<bool>(var_1.c.x, var_6.x, var_4.x, var_4.x), !vec4<bool>(var_1.c.x, var_4.x, var_6.x, var_1.c.x), vec4<bool>(var_1.c.x, true, true, true)), vec4<bool>(func_5(Struct_1(var_1.b, u_input.b.x, vec2<bool>(var_1.c.x, true), var_1.d, vec3<u32>(0u, var_5.x, 4294967295u)), vec2<f32>(911f, var_1.d), var_5.x).c.x, var_1.c.x, var_4.x, true), !vec4<bool>(var_6.x, var_4.x, var_4.x, false))), !vec4<bool>(select(var_1.d <= 860f, var_6.x, var_1.c.x), select(!var_4.x, all(vec2<bool>(var_6.x, var_6.x)), any(vec2<bool>(var_4.x, false))), any(select(vec4<bool>(true, var_4.x, var_1.c.x, true), vec4<bool>(true, var_6.x, true, var_4.x), vec4<bool>(true, true, var_6.x, var_1.c.x))), !func_1()), vec4<bool>(var_6.x, (func_5(Struct_1(-16159i, -24690i, vec2<bool>(true, false), -324f, var_1.e), vec2<f32>(var_1.d, 561f), var_5.x).e.x >= var_2.x) && var_1.c.x, false, var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~(~vec3<u32>(79159u, u_input.d, 1u))), vec4<i32>(-1i) * -(-vec4<i32>(u_input.c.x, 1i, var_1.b, u_input.b.x) >> ((vec4<u32>(0u, 54326u, var_2.x, 4294967295u) ^ vec4<u32>(0u, var_1.e.x, var_1.e.x, 88741u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -1069f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_1.d)))), _wgslsmith_div_vec2_f32(vec2<f32>(-1156f, var_1.d), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1161f, -1164f)))), true)));
}

