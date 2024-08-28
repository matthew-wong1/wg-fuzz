struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 21496i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    let var_0 = Struct_3(Struct_2(select(vec4<bool>(!arg_2.c.b, false, true, true), !(!vec4<bool>(arg_2.b.x, false, arg_2.a.x, true)), arg_2.a), select(arg_2.b, select(arg_2.b, vec4<bool>(arg_2.c.b, arg_2.c.c.x, false, true), false), select(select(vec4<bool>(arg_2.b.x, arg_2.b.x, true, arg_2.a.x), arg_2.a, arg_2.c.c.x), !arg_2.a, select(arg_2.a, vec4<bool>(true, arg_2.b.x, arg_2.a.x, false), false))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(-arg_2.c.a)), arg_2.c.c.x, select(arg_2.a.zz, select(vec2<bool>(arg_2.a.x, arg_2.b.x), arg_2.c.c, arg_2.c.c), true), ~(-u_input.b.xz))), u_input.a, any(!(!(!arg_2.a))), Struct_2(arg_2.a, !vec4<bool>(all(arg_2.a), !arg_2.a.x, true, arg_2.a.x), Struct_1(-1007f, false, arg_2.b.zz, select(~arg_1.yy, arg_2.c.d, !arg_2.c.c.x))), Struct_1(arg_2.c.a, arg_2.c.b, arg_2.a.xx, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-84i, arg_0.x), arg_1.xx) | vec2<i32>(-12488i, arg_0.x), (arg_2.c.d ^ arg_1.yz) | -arg_1.zx)));
    global0 = 0i;
    let var_1 = !(abs(u_input.a) <= u_input.a);
    var var_2 = Struct_5(false);
    let var_3 = var_0;
    return true;
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_5(select(func_3(arg_0, u_input.b, Struct_2(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), Struct_1(931f, true, vec2<bool>(false, true), arg_0.xx))), all(vec4<bool>(all(vec3<bool>(true, false, false)), true, true, false)), any(vec3<bool>(true, all(vec3<bool>(true, true, true)), true))));
    var_0 = Struct_5(((all(vec3<bool>(true, var_0.a, var_0.a)) & var_0.a) & var_0.a) | true);
    var_0 = Struct_5(var_0.a);
    var_0 = Struct_5(false);
    global0 = -1i;
    return Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1041f))), Struct_3(Struct_2(vec4<bool>(true, all(vec2<bool>(var_0.a, var_0.a)), true, any(vec2<bool>(true, false))), select(select(vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(false, var_0.a, var_0.a, var_0.a), true), select(vec4<bool>(var_0.a, true, var_0.a, false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, true, true, var_0.a)), select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(false, true, var_0.a, var_0.a), vec4<bool>(false, false, var_0.a, true))), Struct_1(_wgslsmith_f_op_f32(step(-104f, 596f)), !var_0.a, vec2<bool>(var_0.a, false), _wgslsmith_mult_vec2_i32(u_input.b.yy, arg_0.yx))), 4294967295u, var_0.a, Struct_2(!(!vec4<bool>(var_0.a, true, true, var_0.a)), vec4<bool>(any(vec3<bool>(true, var_0.a, var_0.a)), !var_0.a, any(vec3<bool>(false, true, var_0.a)), all(vec2<bool>(var_0.a, var_0.a))), Struct_1(_wgslsmith_div_f32(-987f, -907f), var_0.a, !vec2<bool>(var_0.a, false), vec2<i32>(arg_0.x, 1i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(932f + -1217f) + -1606f), !var_0.a, !select(vec2<bool>(false, var_0.a), vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, false)), ~firstLeadingBit(u_input.b.yz))), all(!vec2<bool>(any(vec2<bool>(var_0.a, var_0.a)), !var_0.a)), Struct_3(Struct_2(!select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), var_0.a), select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(true, false, false, var_0.a), true), Struct_1(_wgslsmith_div_f32(350f, -1318f), all(vec2<bool>(true, var_0.a)), !vec2<bool>(var_0.a, false), max(vec2<i32>(arg_0.x, u_input.b.x), arg_0.wx))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-610f))) > _wgslsmith_f_op_f32(ceil(1f)), Struct_2(!vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a | true, -13891i < arg_0.x, var_0.a), Struct_1(_wgslsmith_f_op_f32(min(576f, 1123f)), true, vec2<bool>(var_0.a, false), -vec2<i32>(1i, -1i))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-759f))), true, vec2<bool>(var_0.a, var_0.a), -firstTrailingBit(vec2<i32>(u_input.b.x, arg_0.x)))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> vec4<u32> {
    var var_0 = func_2(arg_2);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.c.a, arg_1.c.a, 1000f, arg_1.c.a)))) + vec4<f32>(var_0.a, _wgslsmith_f_op_f32(abs(arg_1.c.a)), _wgslsmith_f_op_f32(select(1000f, 202f, arg_1.c.b)), 429f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.a, 1084f, 136f, -1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c.a, arg_1.c.a, 251f, -202f), vec4<f32>(598f, 2173f, 1778f, -1192f), arg_1.a)), !var_0.d.a.a)))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0.b.d.c.a)))), 764f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d.e.a)) + arg_1.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.a + var_0.a) - _wgslsmith_f_op_f32(-arg_1.c.a)))), all(arg_1.c.c)));
    let var_2 = !vec3<bool>(any(vec4<bool>(var_0.d.a.a.x, var_0.d.d.a.x, false, true)) == (arg_0 || (arg_1.b.x == false)), all(var_0.d.d.c.c), arg_0);
    let var_3 = func_2(_wgslsmith_clamp_vec4_i32(max(arg_2, vec4<i32>(23484i, u_input.b.x, -2147483647i, 15529i) & -vec4<i32>(-34024i, -2147483647i, -635i, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(21598i, 0i, ~(-2147483647i), ~arg_3), abs(vec4<i32>(arg_1.c.d.x, 1i, 51238i, -16171i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(8675i, 29587i, 1i, var_0.d.a.c.d.x), vec4<i32>(u_input.b.x, 8482i, u_input.b.x, 1i))), vec4<i32>(max(-arg_2.x, -1i), reverseBits(47764i), countOneBits(-66633i), 1i))).b.a;
    global0 = ~var_3.c.d.x;
    return _wgslsmith_sub_vec4_u32(firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(61111u, var_0.b.b, 37582u, 4294967295u), select(vec4<u32>(68207u, 4294967295u, 0u, u_input.a), vec4<u32>(0u, var_0.b.b, var_0.d.b, 0u), false))), (vec4<u32>(_wgslsmith_add_u32(2545u, var_0.b.b), ~0u, var_0.b.b ^ 3006u, ~4294967295u) << (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.d.b, 68476u, 56899u, 4897u), vec4<u32>(var_0.d.b, 0u, u_input.a, 1u))) % vec4<u32>(32u))) ^ countOneBits(vec4<u32>(var_0.b.b, var_0.d.b ^ var_0.b.b, ~1u, var_0.b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.a, 1u & ~(~u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(u_input.a), ~17683u, 60429u, ~u_input.a), firstTrailingBit(vec4<u32>(4294967295u, 1845u, 55741u, u_input.a)) ^ (vec4<u32>(u_input.a, 0u, 0u, 1u) ^ vec4<u32>(1u, u_input.a, u_input.a, u_input.a)))) ^ ~(firstTrailingBit(~vec3<u32>(1u, 10866u, 4294967295u)) << (firstTrailingBit(vec3<u32>(18765u, 0u, 50677u)) % vec3<u32>(32u)));
    global0 = 1i;
    let var_1 = _wgslsmith_div_u32(~var_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 1u, 0u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, 32684u), func_1(false, Struct_2(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), Struct_1(1333f, false, vec2<bool>(true, true), u_input.b.zy)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i), u_input.b.x), func_1(false, Struct_2(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), Struct_1(-660f, false, vec2<bool>(true, true), vec2<i32>(u_input.b.x, -54211i))), vec4<i32>(u_input.b.x, 1i, u_input.b.x, -11844i), 0i))), vec4<u32>(~(1u & u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a << (19197u % 32u)), 3310u, u_input.a)));
    let var_2 = Struct_5(true);
    global0 = -50478i;
    global0 = 0i;
    var var_3 = ~_wgslsmith_sub_vec3_i32(u_input.b, select(vec3<i32>(u_input.b.x, -u_input.b.x, firstTrailingBit(u_input.b.x)), u_input.b, _wgslsmith_div_i32(2147483647i, -2147483647i) < ~u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~0i, var_3.x));
}

