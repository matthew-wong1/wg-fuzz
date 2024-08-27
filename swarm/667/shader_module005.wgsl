struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5) -> f32 {
    var var_0 = firstTrailingBit(vec4<u32>(88127u, 0u, select(u_input.c.x, _wgslsmith_dot_vec2_u32(arg_1.a, u_input.c.xz), true) << (1u % 32u), 25820u));
    var var_1 = vec2<bool>(arg_1.b.b, any(select(select(!vec2<bool>(arg_1.c, true), vec2<bool>(false, true), !arg_1.b.c.b), !(!arg_0), arg_1.b.b)));
    var_1 = !(!arg_0);
    var_0 = vec4<u32>(~(~(~_wgslsmith_div_u32(arg_1.d, u_input.a))), 0u << (~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(21703u, 1u), vec2<u32>(0u, u_input.c.x))) % 32u), ~4294967295u, 44395u);
    let var_2 = u_input.b.zw ^ vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(u_input.b.x, arg_1.b.c.a.x, u_input.b.x)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b.x, 1i, arg_1.b.c.a.x), ~u_input.b.zxw)), u_input.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -801f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.d.x, 1000f, arg_1.b.b))))) - _wgslsmith_f_op_f32(f32(-1f) * -1825f));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: bool) -> Struct_2 {
    var var_0 = 28993u;
    let var_1 = vec4<u32>(u_input.c.x, firstLeadingBit(15067u), ~(~_wgslsmith_sub_u32(58948u, 1u)), ~0u);
    var var_2 = abs(_wgslsmith_mult_vec3_u32(var_1.wyw, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(17397u, 4294967295u, u_input.c.x), u_input.c), ~var_1.yyx), u_input.c)));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(func_3(!select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, true), vec2<bool>(false, true)), Struct_5(_wgslsmith_add_vec2_u32(u_input.c.xx, u_input.c.xy), Struct_3(u_input.a, true, Struct_1(u_input.b.xwy, false, var_1.x), vec4<f32>(arg_1, arg_1, arg_1, -451f)), any(vec4<bool>(arg_2, arg_2, false, arg_2)), ~1u)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), arg_1)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), 285f), 1000f, -133f, var_3.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1094f, -186f, arg_1, var_3.x))) - vec4<f32>(-202f, -1106f, -1027f, arg_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2871f, arg_1, var_3.x, 1406f)))));
    return Struct_2(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a >> (var_1.x % 32u), ~var_2.x) ^ ~var_2.x, ~u_input.c.x), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(min(u_input.c, vec3<u32>(u_input.c.x, 6245u, 1u)), vec3<u32>(1u, 1u, 1u)), u_input.c), ~u_input.c));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(-select(countOneBits(vec2<i32>(arg_1.a.x, -34017i) >> (vec2<u32>(0u, 5879u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec2_i32(arg_1.a.yy, arg_0), _wgslsmith_clamp_i32(arg_0.x, arg_0.x, 14740i)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-824f, -1438f)), _wgslsmith_f_op_f32(round(279f))) + 1159f)), true);
    var var_1 = var_0;
    let var_2 = firstTrailingBit(firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0.x, 22320i), 2358i)) | _wgslsmith_add_i32(-56957i, u_input.b.x >> (0u % 32u)));
    let var_3 = !(!(!any(select(vec3<bool>(false, arg_1.b, false), vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(arg_1.b, false, arg_1.b)))));
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_4) -> Struct_1 {
    var var_0 = any(select(vec4<bool>(arg_1.x, 884f != arg_3.d.d.x, all(vec3<bool>(true, true, true)), true), !vec4<bool>(arg_3.e.c.b, arg_3.a.b, arg_3.e.b, all(vec2<bool>(true, arg_1.x))), vec4<bool>(true, false, _wgslsmith_mult_i32(-1i, 1i) <= ~arg_3.c.c.a.x, u_input.c.x != ~arg_2)));
    var var_1 = arg_3.b;
    let var_2 = Struct_5(vec2<u32>(_wgslsmith_clamp_u32(31427u, _wgslsmith_clamp_u32(0u, 34958u, u_input.a), 4294967295u), countOneBits(abs(_wgslsmith_add_u32(0u, 4294967295u)))), Struct_3(_wgslsmith_add_u32(u_input.c.x, ~var_1.a), true, func_1(-abs(vec2<i32>(0i, u_input.b.x)), Struct_1(vec3<i32>(2147483647i, u_input.b.x, arg_3.a.a.x), arg_3.c.b, 0u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.e.d) * _wgslsmith_f_op_vec4_f32(arg_3.d.d * arg_3.d.d))))), arg_3.e.c.b, ~_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.c.c.c, 33897u), vec2<u32>(arg_0, 10678u)))));
    let var_3 = 4294967295u;
    var_0 = arg_3.d.c.b;
    return Struct_1(_wgslsmith_add_vec3_i32(arg_3.e.c.a, -_wgslsmith_clamp_vec3_i32(u_input.b.zzx | vec3<i32>(49831i, -2147483647i, arg_3.a.a.x), ~vec3<i32>(25904i, arg_3.c.c.a.x, 54931i), vec3<i32>(-4074i, -2147483647i, 11178i) | vec3<i32>(u_input.b.x, -50309i, arg_3.c.c.a.x))), any(vec2<bool>(arg_1.x, false)), 1u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = -409f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-368f)), arg_1.d.x))) - _wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x));
    var var_1 = -vec2<i32>(2147483647i, 0i);
    var_0 = _wgslsmith_f_op_f32(abs(1991f));
    var var_2 = _wgslsmith_f_op_f32(-arg_1.d.x);
    return StorageBuffer((arg_2.xzw >> ((vec3<u32>(53585u, arg_1.a, 20621u) | u_input.c) % vec3<u32>(32u))) | arg_0.a, u_input.c.xz, ~(func_2(vec2<i32>(-36047i, arg_3.a.x), _wgslsmith_f_op_f32(select(1131f, -336f, arg_1.b)), true).a & ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 40391u;
    let x = u_input.a;
    s_output = func_5(func_4(~(~_wgslsmith_mod_u32(u_input.a, 4294967295u)), vec2<bool>(true, true), ~(~29452u), Struct_4(func_1(vec2<i32>(18405i, u_input.b.x), Struct_1(u_input.b.yxx, false, 4294967295u)), func_2(u_input.b.zy, -1301f, true), Struct_3(45142u >> (var_0 % 32u), false, func_1(u_input.b.zw, Struct_1(u_input.b.xyw, false, u_input.c.x)), vec4<f32>(1000f, -1696f, -2407f, -1791f)), Struct_3(u_input.c.x, u_input.c.x > 0u, Struct_1(vec3<i32>(u_input.b.x, 0i, 0i), true, u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(-724f, 1064f, 659f, 2021f), vec4<f32>(-463f, -213f, -124f, 921f))), Struct_3(func_1(vec2<i32>(u_input.b.x, 1i), Struct_1(vec3<i32>(-1i, -45195i, 1i), false, 9184u)).c, any(vec4<bool>(true, false, true, true)), func_1(u_input.b.xw, Struct_1(u_input.b.xwx, true, 0u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-268f, 1629f, 300f, 1000f))))), Struct_3(var_0, true, func_4(_wgslsmith_div_u32(countOneBits(4294967295u), _wgslsmith_mult_u32(45137u, 45896u)), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), 1u, Struct_4(func_4(59057u, vec2<bool>(true, true), u_input.c.x, Struct_4(Struct_1(vec3<i32>(39345i, -12011i, -1i), false, u_input.a), Struct_2(u_input.a, vec3<u32>(45993u, 12842u, 4294967295u)), Struct_3(1u, false, Struct_1(vec3<i32>(u_input.b.x, -11917i, 34376i), false, var_0), vec4<f32>(1169f, 235f, 570f, -1011f)), Struct_3(var_0, true, Struct_1(u_input.b.zzy, true, var_0), vec4<f32>(748f, -136f, 1000f, 650f)), Struct_3(var_0, true, Struct_1(u_input.b.zxz, true, 77204u), vec4<f32>(1612f, 961f, -1402f, -1000f)))), func_2(u_input.b.xw, -1456f, false), Struct_3(1u, false, Struct_1(u_input.b.xxx, true, var_0), vec4<f32>(-167f, 1000f, 749f, 187f)), Struct_3(4294967295u, true, Struct_1(vec3<i32>(-1022i, -67517i, u_input.b.x), true, 10977u), vec4<f32>(486f, -172f, 1000f, -1242f)), Struct_3(u_input.c.x, false, Struct_1(u_input.b.xzy, false, 3848u), vec4<f32>(1180f, 315f, -623f, -720f)))), vec4<f32>(591f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)), _wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1784f - 900f) * 608f))), vec4<i32>(u_input.b.x, max(u_input.b.x, u_input.b.x), ~(u_input.b.x & _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-1i, u_input.b.x, -14315i, u_input.b.x))), u_input.b.x), Struct_1(u_input.b.xwz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-319f, -1140f)), _wgslsmith_f_op_f32(sign(824f)))) < _wgslsmith_f_op_f32(1000f + -451f), u_input.a));
}

