struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1814f - -451f) * 830f), _wgslsmith_clamp_u32(u_input.c.x, u_input.d, ~u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-140f)) + -1123f), -660f))), vec4<i32>(u_input.b.x, (u_input.e | u_input.a.x) | (-28593i << (u_input.d % 32u)), -u_input.a.x ^ ~u_input.b.x, -_wgslsmith_mult_i32(u_input.b.x, -48696i)) & vec4<i32>(~(1i | u_input.e), -u_input.e, -71882i, _wgslsmith_sub_i32(-9552i, ~u_input.a.x)), 46230u);
    let var_2 = select(_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(u_input.a, var_1.d.xxx) & ~var_1.d.zxy)), 6530i, any(vec3<bool>(false, false, true)) || all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_1 = Struct_4(_wgslsmith_f_op_f32(select(var_1.c, var_1.c, !(-805f != _wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(var_1.b, var_1.e, 27213u, 49205u)), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 0u), vec3<u32>(11893u, 0u, u_input.d)), 12226u, ~_wgslsmith_add_u32(4294967295u, var_1.e), u_input.d)), var_1.c, var_1.d, 1u);
    var_0 = var_1.a;
    return !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))), false), vec4<bool>(any(vec2<bool>(true, true)), !any(vec3<bool>(true, true, true)), false, false), all(vec2<bool>(true, true)) || !select(true, true, true));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: i32) -> vec4<bool> {
    return func_3();
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = -(~_wgslsmith_add_vec3_i32(~(~vec3<i32>(u_input.e, 0i, u_input.a.x)), u_input.a));
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(u_input.e), _wgslsmith_mod_i32(u_input.e, var_0.x)), -(u_input.e | u_input.a.x), -u_input.e | (i32(-1i) * -42944i)) & u_input.a, Struct_1(!(!(arg_0.x == arg_0.x)), max(2147483647i, 0i | u_input.b.x), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), 1i, u_input.d), ~(~u_input.c.x), Struct_1(any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), func_2(-1i, u_input.e, 5132i), any(vec4<bool>(false, false, true, true)))), _wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.zx, -u_input.b)), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), true, !all(vec3<bool>(false, true, false))), -var_0.x, u_input.d >> ((firstTrailingBit(u_input.c.x) << (43871u % 32u)) % 32u)));
    let var_2 = var_1.d.c.x;
    var_0 = var_1.a;
    return var_1.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = Struct_3(vec3<bool>(false, true, arg_2.c.x));
    let var_1 = Struct_4(-339f, _wgslsmith_div_u32(arg_2.e, arg_3), _wgslsmith_f_op_f32(abs(998f)), _wgslsmith_mult_vec4_i32(vec4<i32>(29451i, -u_input.b.x, 59614i, _wgslsmith_dot_vec2_i32(vec2<i32>(-14888i, arg_2.d), _wgslsmith_mod_vec2_i32(u_input.a.zz, u_input.b))), firstTrailingBit(vec4<i32>(-23264i, 13154i, arg_1.b, 28406i) << (vec4<u32>(4294967295u, arg_2.e, u_input.c.x, arg_1.e) % vec4<u32>(32u))) ^ -select(vec4<i32>(-1i, arg_2.b, -39083i, -58844i), vec4<i32>(u_input.b.x, arg_1.b, 68875i, 52371i), vec4<bool>(arg_2.c.x, false, arg_1.c.x, var_0.a.x))), 90242u);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(var_1.a + -632f), 4294967295u, _wgslsmith_div_f32(-496f, _wgslsmith_f_op_f32(step(435f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a * var_1.c)))))), var_1.d, var_1.e);
    var_0 = Struct_3(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1489f, 143f, -1607f) - vec3<f32>(var_2.a, -506f, 1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -1803f, var_2.a) + vec3<f32>(var_2.a, -1000f, var_1.a))))).c);
    var var_3 = Struct_5(arg_1, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1346f)), -484f, true))), _wgslsmith_add_u32(34946u, ~arg_3), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f - var_2.c)))), var_1.d, _wgslsmith_dot_vec3_u32(firstLeadingBit(max(vec3<u32>(4294967295u, u_input.d, arg_0), vec3<u32>(arg_2.e, arg_2.e, var_2.b))), ~vec3<u32>(44917u, 4294967295u, 0u) & firstTrailingBit(vec3<u32>(18924u, arg_3, arg_0)))), vec4<f32>(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1530f, 1131f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(180f + -1000f)))), _wgslsmith_div_f32(1222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1027f, -232f)) * _wgslsmith_f_op_f32(sign(var_2.a)))), 935f), arg_2.c.x);
    return -307f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(168f, -266f, 233f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1164f, -839f, 1720f) + vec3<f32>(235f, -702f, -726f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(634f, 325f, 1394f) * vec3<f32>(-310f, -531f, -1477f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-119f * var_0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(func_4(~u_input.c.x, Struct_1(false, 1748i, vec3<bool>(true, true, true), u_input.e, 1u), func_1(vec3<f32>(var_0.x, 2088f, var_0.x)), 0u)), var_0.x, -997f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, 708f, var_0.x), vec3<bool>(false, false, true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-542f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -121f, -1363f)), true))), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 951f)), var_0.x, -1000f, -1529f)));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, -1i, u_input.b.x, 2147483647i), -vec4<i32>(0i, 1i, 1i, 32682i)), select(firstTrailingBit(vec4<i32>(u_input.e, u_input.e, 0i, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(-5133i, u_input.a.x, -2147483647i, 28134i), vec4<i32>(u_input.e, u_input.b.x, 4765i, u_input.e)), true)), -(~vec4<i32>(74330i, -102875i, 17489i, u_input.b.x))), abs(-(-33876i >> (~u_input.d % 32u))));
    var_2 = -7323i;
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(var_1.yyy)), _wgslsmith_f_op_vec3_f32(step(var_1.xxx, vec3<f32>(var_0.x, -1000f, 250f))), true)))))));
    var var_3 = reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(u_input.e, 32752i)), i32(-1i) * -50633i, 0i, u_input.b.x) << (firstLeadingBit(reverseBits(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x))) % vec4<u32>(32u)), -firstTrailingBit(vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, -2147483647i)) << (~(~vec4<u32>(35122u, u_input.c.x, u_input.c.x, 81375u)) % vec4<u32>(32u))));
    let var_4 = 12729u;
    let var_5 = select(vec2<bool>(func_2(-var_3.x, abs(-u_input.b.x), ~_wgslsmith_sub_i32(u_input.e, -11167i)).x, func_3().x), func_1(var_1.yzz).c.zy, !select(!func_2(var_3.x, 73i, u_input.b.x).zz, vec2<bool>(var_4 <= 36637u, all(vec2<bool>(false, false))), !all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-123f, u_input.c.x);
}

