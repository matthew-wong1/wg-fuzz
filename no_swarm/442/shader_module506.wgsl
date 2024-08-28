struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec3<i32> {
    let var_0 = select(!vec3<bool>(arg_1, any(vec2<bool>(true, arg_1)), all(vec3<bool>(false, arg_0.a, false))), vec3<bool>(true, false & arg_1, arg_0.a), !select(select(!vec3<bool>(false, false, arg_1), vec3<bool>(true, arg_0.a, true), select(vec3<bool>(false, false, true), vec3<bool>(arg_0.a, arg_1, false), vec3<bool>(false, true, arg_0.a))), select(!vec3<bool>(true, arg_0.a, arg_0.a), !vec3<bool>(arg_0.a, arg_1, true), arg_0.a || arg_0.a), true));
    let var_1 = Struct_4(vec4<u32>(~1u, u_input.c.x, arg_0.b.c.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.d.x, firstTrailingBit(u_input.c.x)), ~(u_input.c.x ^ u_input.b))), select(!vec4<bool>(arg_0.b.b != 1i, -1i <= arg_0.c.b, true, !var_0.x), !select(select(vec4<bool>(arg_1, true, true, false), vec4<bool>(arg_0.a, arg_1, var_0.x, arg_1), arg_0.a), !vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), !vec4<bool>(var_0.x, arg_0.a, arg_1, false)), any(!(!vec4<bool>(arg_1, true, false, false)))), Struct_2(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, u_input.b, 19325u, 3381u), ~u_input.c ^ u_input.c), Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.b.a, arg_0.b.a), arg_0.b.a), 1i, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(64736u, 74080u, 20620u, 7569u), vec4<u32>(56786u, arg_0.b.c.x, 4294967295u, arg_0.b.c.x)), firstTrailingBit(u_input.b))), -6890i, u_input.c, arg_0.c));
    return vec3<i32>(-1i, var_1.c.c, countOneBits(max(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.b.b, arg_0.b.b, u_input.e, arg_0.c.b), vec4<i32>(48426i, 834i, var_1.c.c, -2147483647i)), -2147483647i & arg_0.b.b), -43052i)));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = 1160f;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-297f + _wgslsmith_div_f32(-1463f, -190f))))));
    var var_1 = arg_0.x;
    var var_2 = Struct_1(select(firstLeadingBit(-vec3<i32>(-34078i, -51974i, -2147483647i) | reverseBits(vec3<i32>(u_input.e, u_input.e, u_input.e))), ~vec3<i32>(-3708i, u_input.e, -60464i) & func_3(Struct_3(arg_0.x, Struct_1(vec3<i32>(55632i, 39399i, u_input.e), -54362i, vec2<u32>(20459u, u_input.a)), Struct_1(vec3<i32>(u_input.e, u_input.e, u_input.e), u_input.e, u_input.d)), 1i != u_input.e), arg_0.xzw), _wgslsmith_sub_i32(u_input.e, abs(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, u_input.e)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.e), vec2<i32>(-6195i, u_input.e))))), _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u & u_input.b, u_input.a), ~vec2<u32>(countOneBits(4294967295u), 26273u ^ u_input.a)));
    var var_3 = 11106i;
    return u_input.d.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_4(vec4<u32>(func_2(vec4<bool>(true, true, arg_1.b > u_input.e, true)), _wgslsmith_sub_u32(u_input.c.x, arg_1.c.x), ~arg_1.c.x, 0u), vec4<bool>(true, true, !(true & any(vec2<bool>(false, true))), true), Struct_2(~(vec4<u32>(1u, arg_1.c.x, 48386u, arg_1.c.x) ^ _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_1.c.x, 0u, arg_1.c.x), vec4<u32>(1u, arg_0, 27747u, arg_0))), Struct_1(vec3<i32>(i32(-1i) * -53463i, i32(-1i) * -1i, 0i), -u_input.e, arg_1.c), max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -35852i, -2147483647i, -9396i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -25598i, u_input.e, 1i), vec4<i32>(u_input.e, 2147483647i, 0i, 1i))), u_input.e), reverseBits(_wgslsmith_add_vec4_u32(u_input.c | u_input.c, vec4<u32>(u_input.c.x, arg_0, arg_1.c.x, 4294967295u) >> (u_input.c % vec4<u32>(32u)))), arg_1));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(318f, -1523f, 449f, -768f), vec4<f32>(-828f, -791f, 885f, -1675f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(468f, 1147f, -821f, 1047f))))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(837f, 978f, 319f, -324f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-274f, -1503f, -433f, -337f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-569f, -512f, -707f, 1400f)) - vec4<f32>(1000f, 669f, -1684f, 424f))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = arg_1;
    var_2 = -1066f;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(false, true & (_wgslsmith_f_op_f32(func_1(u_input.b, Struct_1(vec3<i32>(-1i, u_input.e, 0i), u_input.e, vec2<u32>(u_input.c.x, u_input.d.x)))) >= _wgslsmith_f_op_f32(-2288f * -677f)));
    var var_1 = u_input.c;
    let var_2 = Struct_4(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 91523u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, 51759u, u_input.a), min(vec4<u32>(u_input.d.x, 1u, var_1.x, var_1.x), u_input.c)), u_input.a), countOneBits(~(u_input.c >> (u_input.c % vec4<u32>(32u))))), !vec4<bool>(any(vec2<bool>(true, var_0.x)), !var_0.x && var_0.x, true, !var_0.x), Struct_2(~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c), ~vec4<u32>(var_1.x, var_1.x, var_1.x, 1u)), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 1i), vec2<i32>(524i, u_input.e)), _wgslsmith_mult_i32(2147483647i, u_input.e), u_input.e), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.e, u_input.e), vec4<i32>(66801i, u_input.e, u_input.e, 9707i)), _wgslsmith_mod_i32(-19891i, -53454i), ~(-1i)), max(vec2<u32>(1u, var_1.x), u_input.c.wx ^ vec2<u32>(26351u, var_1.x))), _wgslsmith_mult_i32(-24214i, countOneBits(_wgslsmith_add_i32(u_input.e, 2147483647i))), firstLeadingBit(vec4<u32>(~u_input.d.x, 1u, 23723u, _wgslsmith_dot_vec4_u32(vec4<u32>(100598u, 1u, u_input.a, u_input.b), vec4<u32>(1u, var_1.x, u_input.c.x, 4294967295u)))), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, -301i), vec3<i32>(u_input.e, u_input.e, 0i)) << (~u_input.c.zzw % vec3<u32>(32u)), -1i, ~vec2<u32>(4294967295u, 0u))));
    var var_3 = var_2.c;
    var_3 = Struct_2(vec4<u32>(var_1.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(var_3.d.zwx) >> (u_input.c.yxx % vec3<u32>(32u)), vec3<u32>(42902u, u_input.a, _wgslsmith_div_u32(var_1.x, var_2.a.x))), ~select(var_3.d.x, ~44099u, select(var_0.x, var_2.b.x, var_0.x)), 82714u), var_3.b, var_2.c.b.b, var_2.c.d, var_3.e);
    var var_4 = -vec3<i32>(var_2.c.e.a.x, -(i32(-1i) * -var_2.c.e.b), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.e.a.x, var_3.c, 1i, var_2.c.e.b), -vec4<i32>(var_3.b.a.x, var_3.c, var_2.c.b.b, -55428i)), countOneBits(var_3.e.b)));
    let var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(1i, abs(var_2.a.wyw));
}

