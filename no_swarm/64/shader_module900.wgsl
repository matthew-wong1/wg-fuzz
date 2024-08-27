struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(vec4<bool>(true, true, true, (u_input.b != 1u) && all(vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)) - 548f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(109f, 942f))), vec3<i32>(u_input.a, -20384i, 46280i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1053f, 711f, 1106f, 905f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-156f, -274f, -1000f, -732f) + vec4<f32>(-613f, 1463f, 261f, 539f)))))), i32(-1i) * -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(-2147483647i, u_input.a, 26536i, u_input.a)), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i))), vec4<bool>(any(vec2<bool>(true, true)), true, true, false), true);
    var_0 = Struct_2(var_0.a, -1i, select(select(vec4<bool>(true, false, true, var_0.a.a.x), var_0.a.a, vec4<bool>(u_input.b <= u_input.b, var_0.d, true, true)), var_0.a.a, select(vec4<bool>(var_0.d, true, all(vec3<bool>(false, true, var_0.a.a.x)), true), var_0.c, select(var_0.c, select(var_0.a.a, var_0.a.a, false), vec4<bool>(var_0.d, true, true, true)))), var_0.c.x);
    var_0 = Struct_2(var_0.a, u_input.a, var_0.a.a, true);
    let var_1 = Struct_1(select(vec4<bool>(!any(vec3<bool>(var_0.c.x, true, false)), any(!var_0.a.a.zz), _wgslsmith_mult_u32(u_input.b, 79926u) != abs(83919u), !(var_0.d | true)), vec4<bool>(true, false, var_0.c.x, true), !var_0.a.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-721f + var_0.a.c), _wgslsmith_f_op_f32(exp2(var_0.a.b))))), -303f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-581f + var_0.a.e.x) + _wgslsmith_f_op_f32(-var_0.a.b)), vec3<i32>(abs(firstTrailingBit(u_input.a) ^ var_0.b), firstTrailingBit(u_input.a), -2147483647i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1014f, 658f, var_0.a.b, -244f), var_0.a.e, var_0.c.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.c, var_0.a.c, var_0.a.e.x, -948f))))), _wgslsmith_f_op_vec4_f32(var_0.a.e - var_0.a.e))));
    var var_2 = select(!select(!vec2<bool>(var_0.c.x, var_1.a.x), !select(var_0.c.yy, vec2<bool>(false, true), var_1.a.wz), var_1.a.x), !var_1.a.yx, var_0.a.a.xy);
    return -vec3<i32>(1i, -1i, 0i);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(!(!select(arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), arg_0.a)), _wgslsmith_f_op_f32(1073f * arg_0.b), _wgslsmith_f_op_f32(arg_0.b - 1418f), _wgslsmith_div_vec3_i32(abs(arg_0.d), arg_0.d), arg_0.e), -reverseBits(func_3().x), select(arg_0.a, !select(!vec4<bool>(false, arg_0.a.x, false, arg_0.a.x), !vec4<bool>(true, arg_0.a.x, true, arg_0.a.x), select(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), arg_0.a, arg_0.a)), !arg_0.a.x), arg_0.a.x);
    var var_1 = Struct_2(Struct_1(vec4<bool>(all(vec2<bool>(false, arg_0.a.x)), var_0.c.x, var_0.d, var_0.d), _wgslsmith_f_op_f32(-var_0.a.b), -409f, arg_0.d, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -502f), -1377f, 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0.e.x)))))), -1i & ~_wgslsmith_mod_i32(-u_input.a, ~arg_1), select(vec4<bool>(true, true, false, arg_0.a.x), !vec4<bool>(var_0.a.a.x, var_0.c.x, true, arg_0.a.x), var_0.a.a), var_0.c.x);
    let var_2 = var_0.a;
    var var_3 = -(firstLeadingBit(vec4<i32>(19946i, -14687i, func_3().x, var_2.d.x)) << (~(~(vec4<u32>(u_input.b, u_input.b, u_input.b, 56716u) | vec4<u32>(0u, 8029u, u_input.b, 4294967295u))) % vec4<u32>(32u)));
    var var_4 = true;
    return arg_0.a;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -862f);
    let var_1 = Struct_1(func_4(Struct_1(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), 815f, -1185f, _wgslsmith_div_vec3_i32(func_3(), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-47625i, u_input.a, u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(var_0 + var_0), -1460f, var_0, _wgslsmith_div_f32(var_0, var_0))), -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f)), var_0, reverseBits(~(-vec3<i32>(u_input.a, 9548i, -43961i))) & func_3(), vec4<f32>(-256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0))), 240f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0, 129f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 + -1010f)))))));
    let var_2 = -48277i;
    let var_3 = Struct_2(var_1, max(-8509i, _wgslsmith_add_i32(-u_input.a, abs(var_2 >> (u_input.b % 32u)))), !(!func_4(var_1, -var_2)), var_1.a.x);
    var var_4 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(161u, u_input.b), _wgslsmith_clamp_u32(0u, 53484u, 0u)), u_input.b, 4977u), min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(83185u, u_input.b, u_input.b), vec3<u32>(23557u, u_input.b, 93970u))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, 1u), ~vec3<u32>(1u, 26932u, u_input.b)))), ~select(vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b & 4294967295u, abs(0u)), firstTrailingBit(~vec3<u32>(u_input.b, u_input.b, u_input.b)), var_3.c.x));
    return _wgslsmith_mult_u32(~abs(firstTrailingBit(var_4.x)), 61740u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_add_u32(u_input.b, func_2());
    var var_1 = countOneBits(firstLeadingBit(~vec4<i32>(arg_0.b >> (4294967295u % 32u), _wgslsmith_add_i32(-10018i, 2147483647i), i32(-1i) * -54022i, -2147483647i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(arg_0.a.e));
    var var_3 = Struct_2(arg_1.a, i32(-1i) * -22372i, func_4(Struct_1(arg_1.c, arg_0.a.e.x, arg_0.a.e.x, arg_1.a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c, arg_1.a.c, -329f, var_2.x))), _wgslsmith_sub_i32(arg_1.b, _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(u_input.a, -3077i, 0i)))), true);
    return ~(17584u << (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(u_input.a >> (select(u_input.b, func_1(Struct_2(Struct_1(vec4<bool>(false, true, true, true), 2037f, 1316f, vec3<i32>(1i, u_input.a, 64388i), vec4<f32>(875f, 989f, -1517f, -472f)), u_input.a, vec4<bool>(true, true, true, false), true), Struct_2(Struct_1(vec4<bool>(true, true, true, false), -585f, -502f, vec3<i32>(-1i, u_input.a, u_input.a), vec4<f32>(1076f, 901f, 127f, 1935f)), u_input.a, vec4<bool>(false, false, true, false), true)), all(vec3<bool>(false, true, false))) % 32u)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1690f, _wgslsmith_f_op_f32(1000f - 224f))))), _wgslsmith_f_op_f32(1861f - 413f), _wgslsmith_f_op_f32(max(1206f, _wgslsmith_div_f32(_wgslsmith_div_f32(365f, _wgslsmith_f_op_f32(select(135f, -853f, false))), -552f))));
    var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1464f, 1343f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))) * var_1.x))));
    var_0 = _wgslsmith_clamp_i32(~0i, u_input.a, firstTrailingBit(_wgslsmith_mod_i32(select(u_input.a, reverseBits(2147483647i), true), 0i)));
    var_0 = u_input.a;
    let var_2 = ~(-_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, 26379i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 23981i)), vec4<i32>(0i, 11569i, u_input.a, u_input.a)) << (min(min(max(vec4<u32>(u_input.b, 0u, 4294967295u, 0u), vec4<u32>(67190u, u_input.b, 1u, 23498u)), ~vec4<u32>(1u, u_input.b, u_input.b, 47180u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b))) % vec4<u32>(32u)));
    let var_3 = min(abs(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.b), 1u), ~_wgslsmith_mult_u32(4294967295u, u_input.b))), reverseBits(~(~abs(vec2<u32>(u_input.b, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_3.x, 0u), ~vec3<u32>(u_input.b, 52060u, u_input.b)), ~(~0u)), 0u), -2147483647i, select(_wgslsmith_add_vec2_u32(~(~vec2<u32>(1u, u_input.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(var_3.x, var_3.x), vec2<u32>(var_3.x, 66279u)) & ~var_3), _wgslsmith_mult_vec2_u32(min(vec2<u32>(var_3.x, var_3.x), ~var_3), max(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(var_3.x, u_input.b)), abs(vec2<u32>(var_3.x, u_input.b)))), false), u_input.a);
}

