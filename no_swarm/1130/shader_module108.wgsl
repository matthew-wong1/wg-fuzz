struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<u32> {
    var var_0 = select(vec4<bool>(_wgslsmith_mod_i32(-24361i, -15210i) > max(-19491i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.b.x, 1i, u_input.a.x), vec4<i32>(1i, -2147483647i, -23568i, 8943i))), any(vec2<bool>(true, true)), true, all(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), false))), select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, arg_0.x <= 476i), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, select(true, true, false), true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, false)))), select(vec4<bool>(true, true || all(vec2<bool>(false, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), all(vec3<bool>(true, true, true))), vec4<bool>(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x) > ~22018u, true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), true), vec4<bool>(true, _wgslsmith_clamp_i32(u_input.b.x, 1i, 21792i) >= ~u_input.b.x, true, -26841i <= (0i | arg_0.x))));
    var_0 = vec4<bool>(all(select(select(!var_0.xz, select(var_0.yz, var_0.zz, var_0.xw), true), vec2<bool>(var_0.x, false), select(var_0.x, 1u == u_input.c.x, var_0.x))), var_0.x, any(!vec4<bool>(false, select(var_0.x, var_0.x, var_0.x), all(var_0.wyy), 33927i <= arg_0.x)), !(u_input.c.x > 31185u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(698f, _wgslsmith_f_op_f32(-962f - _wgslsmith_f_op_f32(abs(133f))), _wgslsmith_f_op_f32(-2095f + _wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-650f * -475f), _wgslsmith_f_op_f32(trunc(1000f)), var_0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, -876f, -1005f, -1048f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1333f, -161f, -212f, 1117f))), vec4<f32>(_wgslsmith_f_op_f32(floor(-2067f)), _wgslsmith_f_op_f32(f32(-1f) * -375f), -1371f, -641f), !vec4<bool>(false, var_0.x, false, var_0.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, -2054f, 817f, -103f)), vec4<f32>(537f, -886f, -231f, -893f), !var_0.x))))), u_input.d, countOneBits(vec4<u32>(~3576u, u_input.c.x << (13558u % 32u), 35300u, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d))) & ~(~u_input.d & ~vec4<u32>(23430u, u_input.d.x, 0u, u_input.c.x)));
    let var_2 = arg_0.ww;
    var var_3 = ~49082u;
    return var_1.c.zyy;
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.b.wx;
    let var_1 = vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(var_0.x, u_input.b.x, u_input.b.x))), -vec3<i32>(0i, var_0.x, 0i) << (_wgslsmith_clamp_vec3_u32(u_input.e, u_input.e, vec3<u32>(53376u, 4294967295u, 0u)) % vec3<u32>(32u)))), abs(-32662i));
    var var_2 = reverseBits(u_input.d.yxy);
    var_2 = ~reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(var_2.x, 17971u, 25126u)), _wgslsmith_div_vec3_u32(func_3(vec4<i32>(u_input.b.x, var_0.x, -2147483647i, u_input.a.x)), vec3<u32>(u_input.c.x, u_input.e.x, var_2.x)), u_input.e));
    let var_3 = ~var_2.x;
    return Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(916f, 983f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -1701f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1856f, -848f) + _wgslsmith_f_op_f32(-696f - 1771f)), _wgslsmith_f_op_f32(step(-162f, _wgslsmith_div_f32(1000f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1971f, 273f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-253f, -447f, 240f, -107f), vec4<f32>(683f, -339f, -927f, -2080f), false))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(602f, -2488f, -1163f, -209f) - vec4<f32>(954f, 292f, -1206f, -110f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(103f, 1192f, 1000f, 2024f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1778f, 582f, -978f, 730f))), true)))), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.d, abs(~vec4<u32>(1u, 4294967295u, u_input.d.x, 16778u))), _wgslsmith_mod_u32(u_input.c.x, ~var_2.x << (select(var_2.x, var_3, true) % 32u)), 2761u, 1u), u_input.d);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec2<f32>(-1000f, arg_3.b.x);
    var var_1 = -1000f;
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x) * _wgslsmith_f_op_f32(-arg_3.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = reverseBits(vec3<i32>(-1i, u_input.b.x, ~select(u_input.b.x, abs(u_input.a.x), true)));
    var_1 = 573f;
    return Struct_1(select(!vec3<bool>(false, true, u_input.b.x > 2147483647i), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), any(vec4<bool>(true, true, false, false)) & all(vec4<bool>(true, true, false, true))), _wgslsmith_add_i32(-26722i, i32(-1i) * -1i) == _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, arg_0, var_2.x, arg_0)), abs(vec4<i32>(var_2.x, u_input.a.x, 0i, 2147483647i)))), false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_5) -> vec4<u32> {
    let var_0 = Struct_1(vec3<bool>(arg_0.a.x, !(~u_input.a.x >= -2147483647i), 1i == arg_3.b), all(select(!vec3<bool>(arg_0.a.x, false, true), arg_2.a, arg_2.a.x)));
    var var_1 = Struct_1(vec3<bool>(true, var_0.b, any(select(arg_0.a.yy, vec2<bool>(true, true), vec2<bool>(var_0.b, arg_2.b)))), arg_0.b);
    var var_2 = 0i;
    let var_3 = _wgslsmith_mult_u32(70411u, 22144u);
    var var_4 = -select(-u_input.b, min(vec4<i32>(u_input.b.x, u_input.a.x, -u_input.b.x, u_input.b.x), select(vec4<i32>(u_input.b.x, 1i, 0i, -2147483647i), u_input.b, vec4<bool>(false, arg_0.b, arg_0.a.x, arg_2.a.x))), !(_wgslsmith_f_op_f32(arg_3.e.a.x + 114f) < _wgslsmith_f_op_f32(sign(arg_3.e.a.x))));
    return u_input.d;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: vec2<bool>) -> u32 {
    let var_0 = func_5(func_4(~(-1i) | arg_1, 19709u, Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1480f, 793f, -1000f, -920f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-939f, -391f, -746f, 874f)), u_input.d, select(u_input.d, u_input.d, vec4<bool>(false, true, false, arg_3.x))), func_2()), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(819f, 619f))), Struct_1(vec3<bool>(false, all(vec4<bool>(false, false, true, true)), arg_3.x), all(arg_3)), Struct_5(-1i ^ arg_0, select(-arg_1, _wgslsmith_add_i32(5443i, arg_2), any(vec4<bool>(true, arg_3.x, true, true))), vec2<i32>(-12812i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), u_input.a.xx, Struct_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(650f, 1751f), vec2<f32>(1180f, -1530f)))))) >> ((u_input.d ^ max(~u_input.d, func_5(Struct_1(vec3<bool>(false, false, arg_3.x), arg_3.x), Struct_4(vec2<f32>(441f, 1411f)), Struct_1(vec3<bool>(arg_3.x, true, true), true), Struct_5(u_input.b.x, arg_2, u_input.b.xy, u_input.b.zy, Struct_4(vec2<f32>(-264f, -1111f)))))) % vec4<u32>(32u));
    let var_1 = Struct_5(i32(-1i) * -17524i, _wgslsmith_dot_vec3_i32(abs(u_input.b.zxx), firstLeadingBit(-vec3<i32>(2921i, -28020i, -2147483647i))), (-u_input.a.xy & (vec2<i32>(arg_1, -10788i) ^ vec2<i32>(0i, arg_1))) & -u_input.a.yx, u_input.b.ww, Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-667f, 1000f), vec2<f32>(-206f, 993f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1508f, -332f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1377f, 333f))), vec2<f32>(364f, 1549f))))));
    var var_2 = ~func_2().d.x;
    let var_3 = var_1.e.a.x;
    let var_4 = !arg_3.x;
    return _wgslsmith_clamp_u32(~((u_input.d.x ^ 1u) >> ((var_0.x | _wgslsmith_sub_u32(var_0.x, 42071u)) % 32u)), _wgslsmith_mod_u32(u_input.c.x, u_input.d.x), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(_wgslsmith_add_i32(-2147483647i, min(4346i, u_input.b.x)) ^ ~(-1i)) << (_wgslsmith_add_u32(u_input.c.x, u_input.d.x) % 32u);
    var var_1 = max(~(countOneBits(vec4<u32>(u_input.d.x, u_input.e.x, u_input.e.x, 4294967295u) ^ vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 85892u)) & _wgslsmith_add_vec4_u32(u_input.d & u_input.d, u_input.d)), max(u_input.d, select(vec4<u32>(_wgslsmith_add_u32(u_input.e.x, u_input.d.x), 62314u >> (u_input.c.x % 32u), func_1(5194i, u_input.a.x, u_input.a.x, vec2<bool>(true, false)), ~4294967295u), u_input.d & max(vec4<u32>(4294967295u, u_input.d.x, u_input.e.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 4294967295u)), all(func_4(2147483647i, u_input.c.x, Struct_2(vec4<f32>(523f, 1677f, -488f, 291f), vec4<f32>(-841f, 603f, 812f, -1268f), u_input.d, vec4<u32>(u_input.e.x, u_input.d.x, 4294967295u, 79900u)), Struct_2(vec4<f32>(-225f, -225f, -1095f, -229f), vec4<f32>(-1142f, 1231f, -1275f, 1857f), u_input.d, vec4<u32>(4294967295u, 1u, 0u, 0u))).a))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1575f, 178f) + vec2<f32>(1000f, -1392f)), vec2<f32>(-264f, 372f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2940f, -246f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-414f, -606f), vec2<f32>(-748f, 1929f)))))))));
    var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(967f, var_2.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1247f, -1660f)))));
    var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), var_2.a.x)));
    var_1 = vec4<u32>(~func_5(Struct_1(vec3<bool>(false, true, false), var_2.a.x != 571f), Struct_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.x, 160f), var_2.a, vec2<bool>(false, false)))), func_4(7195i, _wgslsmith_div_u32(u_input.d.x, u_input.c.x), func_2(), func_2()), Struct_5(abs(1i), u_input.a.x, _wgslsmith_mult_vec2_i32(vec2<i32>(-20239i, u_input.b.x), u_input.b.xz), ~vec2<i32>(-15224i, -1i), Struct_4(vec2<f32>(-1909f, var_2.a.x)))).x, ~1894u, 1u, var_1.x);
    let var_3 = vec4<bool>(all(vec4<bool>(false, all(vec2<bool>(true, false)), true, true)), true, true, any(vec3<bool>(true, any(vec3<bool>(false, true, false)), true)) & true);
    var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_2.a + vec2<f32>(var_2.a.x, var_2.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-837f, -376f), vec2<f32>(1254f, var_2.a.x)))), var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(floor(var_2.a.x)), _wgslsmith_f_op_f32(-var_2.a.x))), vec3<f32>(var_2.a.x, var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))), -186f, u_input.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1441f, var_2.a.x, var_2.a.x, -1000f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a.x, -1000f, -741f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(270f * var_2.a.x), -787f, _wgslsmith_f_op_f32(f32(-1f) * -1317f), var_2.a.x), vec4<bool>(true, !var_3.x, all(var_3.yz), !var_3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-458f, 1190f, var_2.a.x, var_2.a.x)))))));
}

