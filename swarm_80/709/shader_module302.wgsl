struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_sub_u32(4294967295u >> ((u_input.b & (21555u & u_input.b)) % 32u), _wgslsmith_div_u32(0u, abs(~u_input.c.x)));
    let var_1 = ~(abs(~(-8747i)) << (1u % 32u));
    return countOneBits(countOneBits(_wgslsmith_div_u32(u_input.b, ~u_input.c.x)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> i32 {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = Struct_3(!any(select(select(arg_1, arg_1, true), vec4<bool>(false, true, arg_1.x, true), arg_3.x & false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -1020f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -384f), _wgslsmith_f_op_f32(arg_2.x - -1000f), !arg_1.x))))));
    let var_1 = arg_0;
    let var_2 = global0[_wgslsmith_index_u32(func_3(), 5u)];
    return _wgslsmith_sub_i32(arg_0.b.x, -2981i);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = (_wgslsmith_add_vec4_i32(vec4<i32>(~arg_3.a, func_2(arg_3, vec4<bool>(arg_0.x, arg_0.x, false, true), vec3<f32>(-406f, arg_2.x, -320f), vec2<bool>(arg_0.x, true)), -1i, 3337i), ~(-vec4<i32>(arg_3.d.x, -9267i, arg_1, -27784i))) & ~(~vec4<i32>(arg_1, arg_1, -1i, arg_3.d.x))) >> ((~(~vec4<u32>(u_input.a, arg_3.c.x, 20273u, arg_3.c.x)) ^ vec4<u32>(~30335u, 1u, u_input.b, ~u_input.c.x)) % vec4<u32>(32u));
    var var_1 = vec3<bool>(true, true, arg_0.x & !arg_0.x);
    global0 = array<Struct_1, 5>();
    return Struct_1(vec3<u32>(reverseBits(select(65106u, arg_3.c.x, var_1.x)), _wgslsmith_mult_u32(arg_3.c.x, u_input.a) << (u_input.a % 32u), u_input.a) >> (vec3<u32>(_wgslsmith_clamp_u32(u_input.b, firstLeadingBit(1u), ~u_input.a), max(1u, u_input.a), arg_3.c.x) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(129f + 375f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(721f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-872f)) - 838f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-258f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(142f, _wgslsmith_f_op_f32(select(1264f, var_0.x, true))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2334f, var_0.x) + vec2<f32>(var_0.x, 1484f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1940f)))));
    var var_1 = Struct_4(Struct_2(-_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1i, 1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(5298i, 52620i), vec2<i32>(-14627i, 0i))), firstTrailingBit(vec2<i32>(func_2(Struct_2(-1i, vec2<i32>(-2147483647i, 1i), arg_0.a.xx, vec3<i32>(-25749i, -2147483647i, 35328i)), vec4<bool>(true, true, true, false), vec3<f32>(-343f, var_0.x, 573f), vec2<bool>(false, true)), ~(-1i))), ~vec2<u32>(arg_0.a.x, abs(1u)), ~(vec3<i32>(-1i, 66963i, -1i) >> (arg_0.a % vec3<u32>(32u))) ^ vec3<i32>(1i, 0i, ~21805i)), vec4<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), false), arg_0.a.x, 29158i);
    var var_2 = select(var_1.a.b, ~var_1.a.d.zx, any(vec3<bool>(!var_1.b.x, var_1.b.x, !all(var_1.b.zzz))));
    var var_3 = var_1.b.zwy;
    return var_3.x;
}

fn func_5(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(firstTrailingBit(countOneBits(vec3<u32>(30340u, 10150u, u_input.c.x)) >> (((u_input.c.wxy | u_input.c.yxw) | ~u_input.c.xzw) % vec3<u32>(32u))));
    let var_1 = Struct_3(any(!vec3<bool>(true, all(vec4<bool>(false, false, false, true)), false & arg_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1174f * -368f)))))));
    var var_2 = Struct_2(1i, _wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(2147483647i, -2722i)), vec2<i32>(-2147483647i, -19278i)), vec2<i32>(func_2(Struct_2(6039i, vec2<i32>(-47099i, -1i), var_0.a.xx, vec3<i32>(2147483647i, -46317i, 70473i)), select(vec4<bool>(arg_0, false, false, var_1.a), vec4<bool>(var_1.a, arg_0, false, true), var_1.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b, -1125f, 317f), vec3<f32>(var_1.b, var_1.b, var_1.b), vec3<bool>(var_1.a, var_1.a, true))), vec2<bool>(arg_0, true)), 0i)), var_0.a.xy, vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-2147483647i, -2147483647i, 0i)), vec3<i32>(1i, 24721i, 1i)));
    var_2 = Struct_2(var_2.d.x, var_2.d.xz, var_0.a.yy, vec3<i32>(_wgslsmith_add_i32(~1i, _wgslsmith_dot_vec2_i32(var_2.b, vec2<i32>(var_2.d.x, var_2.a))), var_2.d.x, ~firstLeadingBit(max(var_2.a, -67579i))));
    var_2 = Struct_2(_wgslsmith_sub_i32(abs(_wgslsmith_div_i32(countOneBits(-22517i), _wgslsmith_mod_i32(-2147483647i, 16814i))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_2.a, var_2.d.x, 71719i, var_2.d.x)), vec4<i32>(10482i, 2147483647i, 54547i, 33248i), select(vec4<i32>(-1i, var_2.a, 31506i, var_2.a), vec4<i32>(-49712i, var_2.b.x, -1i, var_2.a), true)), -vec4<i32>(28099i, 0i, var_2.a, 9976i))), var_2.d.zx, vec2<u32>(_wgslsmith_add_u32(21358u, 1u << (min(0u, var_0.a.x) % 32u)), 39814u), ~_wgslsmith_sub_vec3_i32(var_2.d, vec3<i32>(_wgslsmith_add_i32(1i, -2147483647i), i32(-1i) * -40927i, 0i)));
    return func_1(vec3<bool>(true, false, arg_0 | false), -var_2.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(772f, 1126f, -2059f, -1660f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1016f, var_1.b, var_1.b, var_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-306f, var_1.b, 463f, 1426f) * vec4<f32>(297f, 1202f, var_1.b, var_1.b)))))), Struct_2(var_2.d.x, vec2<i32>(var_2.d.x, countOneBits(i32(-1i) * -1i)), ~(~vec2<u32>(u_input.c.x, var_2.c.x)) & (vec2<u32>(13408u, var_0.a.x) << (~u_input.c.wy % vec2<u32>(32u))), ~vec3<i32>(var_2.a, 1i, var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    var var_0 = func_5(func_4(func_1(vec3<bool>(true, true, true), 63504i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, 222f, -891f, -1000f))), Struct_2(~(-2147483647i), vec2<i32>(0i, -33101i) >> (u_input.c.xz % vec2<u32>(32u)), vec2<u32>(0u, u_input.b), ~vec3<i32>(-63513i, 2147483647i, 16131i)))));
    var var_1 = -633f;
    var var_2 = firstTrailingBit(0u);
    var_2 = _wgslsmith_sub_u32(max(0u, 76245u), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(40110u, var_0.a.x), _wgslsmith_sub_u32(u_input.c.x & 32534u, u_input.c.x ^ 58681u), ~func_5(false).a.x)) | 0u;
    var var_3 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1809f, -1107f, -788f, _wgslsmith_f_op_f32(f32(-1f) * -453f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1329f, -409f, 550f, -530f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(168f)), -1000f, _wgslsmith_f_op_f32(-1624f * 1000f), _wgslsmith_f_op_f32(min(1221f, 1560f))))), vec3<i32>(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-40881i, -1i, 2147483647i)), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -12889i, 28746i), vec3<i32>(1i, -7041i, 9052i)))), i32(-1i) * -2147483647i), countOneBits(select(select(countOneBits(vec4<i32>(-33540i, -28586i, 1i, 57657i)), vec4<i32>(-10755i, 2874i, 7046i, 47218i), true), -vec4<i32>(1i, 1i, 1i, 1i), !select(false, true, false))), reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.b), func_1(vec3<bool>(false, false, false), 4659i, vec4<f32>(-100f, 1000f, -454f, -262f), Struct_2(2147483647i, vec2<i32>(1i, 0i), vec2<u32>(1u, var_0.a.x), vec3<i32>(9426i, 106465i, 1i))).a), func_1(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), 0i, vec4<f32>(1f, 1f, 1f, 1f), Struct_2(6669i, vec2<i32>(-2147483647i, 1i), u_input.c.yx, vec3<i32>(-1i, -33571i, 18460i))).a.x)));
}

