struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = select(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, 0u, 0u, u_input.c.x) >> (~vec4<u32>(1u, arg_0.d.a, 40751u, 38750u) % vec4<u32>(32u))), vec4<u32>(0u, 4294967295u, min(1u, arg_0.a.a) | ~arg_0.a.a, 0u)), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(abs(71555u), 0u), _wgslsmith_mult_u32(~arg_0.a.a, 9044u)), ~(~(arg_0.a.a ^ 1u)), _wgslsmith_div_u32(min(4294967295u, _wgslsmith_add_u32(53125u, 0u)), ~u_input.c.x), ~78832u), false);
    var var_1 = arg_0.c;
    var_1 = arg_0.d.b < arg_0.d.b;
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.a.a, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(~(u_input.c.x & 4294967295u), ~_wgslsmith_clamp_u32(var_0.x, 24632u, 19483u), var_0.x, abs(arg_0.a.a >> (arg_0.d.a % 32u))), vec4<u32>(~(~var_0.x), firstLeadingBit(9640u), ~arg_0.a.a, arg_0.a.a)));
    var var_3 = arg_0.d;
    return select(true, any(vec2<bool>(select(false, true, false) | true, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_3.a), u_input.c) > _wgslsmith_mult_u32(39224u, 1u))), select(arg_0.c, !all(vec2<bool>(true, true)), !(true | all(vec3<bool>(arg_0.c, false, var_3.c)))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(u_input.c.x, -471f, func_3(Struct_2(Struct_1(u_input.c.x, _wgslsmith_f_op_f32(max(-122f, 1488f)), 0u <= u_input.c.x, u_input.a.x & u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-684f, -302f))), u_input.a.xy, true, Struct_1(7767u, -182f, u_input.b.x >= u_input.b.x, u_input.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(175f, -843f) * vec2<f32>(528f, 524f))))), u_input.b.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1263f)), _wgslsmith_f_op_f32(f32(-1f) * -683f)), vec2<f32>(_wgslsmith_div_f32(-766f, _wgslsmith_f_op_f32(select(2166f, -1548f, false))), -1763f)));
    let var_1 = ~_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-var_0.d, 1i, ~(-30552i), ~31073i));
    var var_2 = 0u ^ select(_wgslsmith_sub_u32(~var_0.a, ~u_input.c.x) | ~(~44019u), ~(~firstLeadingBit(var_0.a)), func_3(Struct_2(var_0, countOneBits(vec2<i32>(24056i, u_input.a.x)), !var_0.c, var_0)));
    var var_3 = var_0;
    var var_4 = ~(~(~u_input.c));
    return Struct_2(var_0, u_input.a.wx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.e.x))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1460f, var_0.e.x))))), Struct_1(~_wgslsmith_mod_u32(u_input.c.x, 81598u), var_0.e.x, !var_0.c, -46075i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.e)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = ~(~32799u);
    let var_1 = 4294967295u;
    var var_2 = all(select(vec4<bool>(select(true, true, func_2().c), false, func_2().c, any(!vec2<bool>(true, arg_0.d.c))), vec4<bool>(_wgslsmith_f_op_f32(arg_1 * arg_0.d.b) < -1010f, true, true && !arg_0.c, arg_0.c | func_2().d.c), !vec4<bool>(true, arg_0.c, all(vec2<bool>(arg_0.a.c, true)), true)));
    var_2 = false;
    let var_3 = arg_0.a;
    return arg_0.d;
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(arg_3.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))))), arg_3.c, arg_3.d, arg_2.e), reverseBits(u_input.a.ww), select(_wgslsmith_div_i32(arg_2.d, -arg_3.d) <= 1i, true, (_wgslsmith_div_u32(arg_3.a, arg_3.a) > ~arg_3.a) & arg_2.c), func_4(func_2(), 1028f));
    let var_1 = Struct_2(var_0.a, select(var_0.b, max(-u_input.a.wy >> (vec2<u32>(var_0.d.a, u_input.c.x) % vec2<u32>(32u)), vec2<i32>(-2147483647i, 2147483647i) << (countOneBits(u_input.c) % vec2<u32>(32u))), vec2<bool>(true, true)), true, Struct_1(50459u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 1054f) * arg_3.b))), !all(vec3<bool>(arg_3.c, arg_2.c, var_0.d.c)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-28970i, arg_2.d, u_input.a.x, -2147483647i), vec4<i32>(-27578i, -1i, -29636i, arg_3.d)), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.b * 1022f))))));
    var var_2 = select(vec2<bool>(func_4(func_2(), var_0.a.e.x).c, arg_2.c), !(!(!vec2<bool>(true, arg_3.c))), !(!(115197u >= select(arg_2.a, var_0.a.a, true))));
    var var_3 = Struct_1(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -852f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.b), _wgslsmith_f_op_f32(select(var_1.d.b, 1000f, arg_2.c)))))), var_0.c, _wgslsmith_sub_i32(-(~u_input.a.x) & _wgslsmith_add_i32(49853i, _wgslsmith_mult_i32(arg_2.d, arg_0)), -1i), var_1.d.e);
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.d.b, _wgslsmith_f_op_f32(-var_1.d.b))));
    return func_2().a;
}

fn func_1() -> Struct_1 {
    let var_0 = (vec4<u32>(reverseBits(firstTrailingBit(0u)), min(~u_input.c.x, ~4294967295u), u_input.c.x, ~(~u_input.c.x)) | ~vec4<u32>(min(4578u, 0u), ~u_input.c.x, ~1u, ~1u)) & (countOneBits(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 0u, 20888u), vec4<u32>(0u, u_input.c.x, 79524u, 35224u))) ^ ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(549u, 42601u, 1568u, u_input.c.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-559f, -524f, -1764f)))))));
    var var_2 = func_5(2147483647i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(var_1.zz, _wgslsmith_f_op_vec2_f32(-var_1.xz))), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -746f) * vec2<f32>(var_1.x, var_1.x)) - var_1.zz)))), func_4(func_2(), _wgslsmith_f_op_f32(ceil(-811f))), Struct_1(_wgslsmith_dot_vec2_u32(var_0.zz << (~vec2<u32>(88174u, 0u) % vec2<u32>(32u)), var_0.wz), _wgslsmith_f_op_f32(1523f - func_4(func_2(), -1071f).e.x), ~func_4(Struct_2(Struct_1(1u, 556f, false, u_input.b.x, var_1.xx), vec2<i32>(-268i, -1i), false, Struct_1(var_0.x, var_1.x, true, u_input.a.x, vec2<f32>(var_1.x, var_1.x))), 457f).a <= ~4294967295u, 19996i, var_1.zx));
    var_2 = Struct_1(0u, _wgslsmith_f_op_f32(-470f + _wgslsmith_div_f32(_wgslsmith_div_f32(-1528f, _wgslsmith_f_op_f32(abs(var_2.e.x))), _wgslsmith_f_op_f32(846f + _wgslsmith_f_op_f32(-var_2.b)))), var_2.c, -(~(~var_2.d)), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_5(var_2.d, vec2<f32>(-355f, var_2.e.x), Struct_1(30996u, 253f, var_2.c, var_2.d, var_2.e), Struct_1(53860u, -434f, false, 2147483647i, var_2.e)).b * var_1.x)))));
    var var_3 = ~u_input.c;
    return Struct_1(var_3.x, -1000f, var_2.c, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-(~1i), u_input.a.x), var_2.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.xz, vec2<f32>(var_1.x, var_1.x), vec2<bool>(var_2.c, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_2(Struct_1(u_input.c.x, _wgslsmith_f_op_f32(-1397f * _wgslsmith_f_op_f32(f32(-1f) * -228f)), false, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a.yzx, select(vec3<i32>(-2147483647i, 0i, var_0.d), vec3<i32>(-2147483647i, 2147483647i, 2147483647i), true)), _wgslsmith_dot_vec3_i32(u_input.a.zxx, vec3<i32>(u_input.a.x, 2147483647i, 8231i))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.e.x) * _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(767f - func_4(Struct_2(Struct_1(4294967295u, -1000f, var_0.c, u_input.b.x, vec2<f32>(var_0.e.x, var_0.e.x)), vec2<i32>(var_0.d, u_input.b.x), false, Struct_1(0u, var_0.e.x, false, -29949i, vec2<f32>(1087f, -375f))), var_0.e.x).b))), vec2<i32>(-1i, -var_0.d), 4294967295u <= u_input.c.x, func_1());
    var_0 = var_1.d;
    let var_2 = var_1;
    let var_3 = !(!var_2.a.c);
    let var_4 = _wgslsmith_sub_u32(u_input.c.x & ~4294967295u, firstTrailingBit(0u));
    var_0 = Struct_1(4294967295u << (var_4 % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b, func_2().d.e.x)) * func_2().a.b), func_4(var_1, _wgslsmith_f_op_f32(345f * func_1().b)).c, -func_5(1i, var_0.e, func_1(), var_1.d).d, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(u_input.b << (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_2.a.a, 56823u, var_1.d.a, 11617u), firstTrailingBit(vec4<u32>(0u, var_1.a.a, 62817u, 59594u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, u_input.b), firstLeadingBit(u_input.a), vec4<i32>(u_input.b.x, var_0.d, u_input.b.x, var_0.d)), u_input.a | vec4<i32>(var_2.b.x, -33589i, 20806i, var_1.b.x))));
}

