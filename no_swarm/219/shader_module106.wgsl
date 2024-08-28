struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec3<i32> {
    var var_0 = firstLeadingBit(vec3<i32>(firstLeadingBit(11670i), u_input.d, 1i));
    let var_1 = -vec4<i32>(~abs(-1i), select(u_input.c, u_input.d >> (_wgslsmith_clamp_u32(1u, u_input.b.x, u_input.b.x) % 32u), false), u_input.d, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(abs(var_0.yz), -vec2<i32>(u_input.a, u_input.d)), abs(var_0.yy)));
    var var_2 = var_1.zxw;
    let var_3 = min(var_2.x, 1i) == 2147483647i;
    var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(u_input.d, var_0.x), -5640i), var_1.x, -49265i), ~var_1.wyz);
    return vec3<i32>(-1i, min(-_wgslsmith_dot_vec2_i32(var_0.xx, ~vec2<i32>(11948i, -18795i)), _wgslsmith_add_i32(var_2.x, -25062i)), var_1.x);
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = select(~(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.d, 0i, -1i)), func_3(vec2<f32>(636f, -602f), vec2<f32>(951f, 428f))) << (abs(firstLeadingBit(vec3<u32>(u_input.e, u_input.e, 9616u))) % vec3<u32>(32u))), ~vec3<i32>(u_input.d, -1i, u_input.c), _wgslsmith_mod_i32(0i, _wgslsmith_div_i32(i32(-1i) * -1549i, ~arg_0)) >= abs(0i));
    var_0 = abs(_wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.x, -42634i, u_input.c), abs(vec3<i32>(-9582i, u_input.d, u_input.d)))) ^ -(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0, -1i), vec3<i32>(u_input.d, u_input.a, u_input.a)), vec3<i32>(0i, arg_0, var_0.x)) & ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 1i, -1i), vec3<i32>(arg_0, var_0.x, u_input.a)));
    var var_1 = var_0.xz;
    var_0 = firstLeadingBit(countOneBits(-((vec3<i32>(u_input.a, var_0.x, arg_0) << (vec3<u32>(u_input.b.x, u_input.b.x, 42090u) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -23853i, 0i), vec3<i32>(42635i, -1i, 24212i)))));
    let var_2 = u_input.b.x;
    return Struct_3(Struct_1(-1i, select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), var_0.xz));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> i32 {
    var var_0 = arg_2.a;
    var var_1 = true;
    var var_2 = !select(vec4<bool>(!any(arg_0.a.b.xy), -u_input.a < ~var_0.a, select(true, arg_2.a.b.x, u_input.b.x == u_input.b.x), arg_0.a.b.x), vec4<bool>(func_2(~5504i).a.b.x, true, any(vec4<bool>(var_0.b.x, true, false, var_0.b.x)), any(func_2(0i).a.b)), select(vec4<bool>(u_input.b.x < u_input.e, var_0.b.x, any(vec2<bool>(false, true)), true), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_2.a.b.x, var_0.b.x, true, arg_0.a.b.x), select(vec4<bool>(true, arg_0.a.b.x, arg_0.a.b.x, false), vec4<bool>(false, arg_2.a.b.x, false, false), vec4<bool>(false, true, arg_0.a.b.x, var_0.b.x))), !(!vec4<bool>(true, arg_0.a.b.x, arg_2.a.b.x, arg_0.a.b.x))));
    let var_3 = _wgslsmith_f_op_f32(floor(396f));
    var_0 = Struct_1(_wgslsmith_add_i32(~40821i, 2147483647i), !select(!arg_0.a.b, arg_0.a.b, select(select(true, var_0.b.x, true), 8308i >= var_0.c.x, false)), arg_0.a.c);
    return 7688i;
}

fn func_1() -> i32 {
    var var_0 = u_input.b.x;
    var_0 = 0u;
    var_0 = u_input.b.x;
    var var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(abs(firstTrailingBit(vec3<i32>(u_input.d, u_input.c, -48965i))), -select(vec3<i32>(u_input.c, 31611i, u_input.a) << (vec3<u32>(u_input.e, u_input.e, u_input.b.x) % vec3<u32>(32u)), -vec3<i32>(34192i, u_input.a, u_input.c), select(true, true, true))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-2147483647i, u_input.c, firstTrailingBit(5350i)), max(-vec3<i32>(-2147483647i, u_input.a, -1i), vec3<i32>(u_input.d, u_input.c, 0i)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), true)), ~_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, u_input.c, u_input.c), min(vec3<i32>(-37337i, u_input.d, 64651i), vec3<i32>(u_input.a, 14020i, -1i)))), vec3<i32>(-1i, -2147483647i, func_4(Struct_3(Struct_1(-21129i, vec3<bool>(false, true, true), vec2<i32>(u_input.c, 0i))), _wgslsmith_f_op_f32(394f + 1423f), func_2(u_input.d))) ^ firstTrailingBit(-vec3<i32>(31354i, 18982i, u_input.a) | _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.a), vec3<i32>(32777i, -12244i, u_input.a))));
    var_0 = min(~_wgslsmith_sub_u32(min(countOneBits(u_input.e), u_input.b.x & 4294967295u), 4137u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x));
    return _wgslsmith_dot_vec4_i32(countOneBits(~firstLeadingBit(abs(vec4<i32>(u_input.c, u_input.a, -31032i, 33905i)))), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(-2147483647i, var_1.x, -2147483647i, 2147483647i)) & (vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.a, var_1.x, -9335i)), vec4<i32>(_wgslsmith_add_i32(1i, ~u_input.d), firstTrailingBit(var_1.x), 36126i, -firstTrailingBit(var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(-_wgslsmith_add_vec2_i32(countOneBits(firstLeadingBit(vec2<i32>(0i, -9386i))), abs(~vec2<i32>(u_input.d, 41331i))), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, -2147483647i) >> (~u_input.b % vec2<u32>(32u)), vec2<i32>(u_input.d, func_1())), vec2<i32>(-1i) * -(vec2<i32>(u_input.c, -32568i) << (u_input.b % vec2<u32>(32u)))));
    var var_1 = true;
    var var_2 = firstLeadingBit(vec3<u32>(u_input.e, select(1u, u_input.e, false), u_input.e) | select(firstTrailingBit(vec3<u32>(1u, u_input.e, u_input.b.x)), ~vec3<u32>(u_input.e, u_input.e, 188u), true)) | ~(~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(29282u, u_input.b.x, u_input.e), vec3<u32>(0u, 4294967295u, 45311u)), ~vec3<u32>(28803u, 4455u, 7602u)));
    var_2 = firstTrailingBit(vec3<u32>(u_input.e, _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, var_2.x), vec4<u32>(u_input.e, var_2.x, u_input.b.x, var_2.x)), u_input.e), u_input.e));
    var_1 = !(u_input.b.x >= (~(~u_input.e) & u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x | 0u, _wgslsmith_add_u32(min(var_2.x, ~var_2.x) & 1u, 0u), _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 1u, 64024u), vec3<u32>(54926u, 11079u, 95361u) >> (vec3<u32>(var_2.x, 50995u, 0u) % vec3<u32>(32u)), false), vec3<u32>(~var_2.x, abs(u_input.e), _wgslsmith_mod_u32(0u, u_input.e))), u_input.e), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-757f, _wgslsmith_f_op_f32(ceil(163f)))) + 1348f))), ~vec4<u32>(_wgslsmith_mod_u32(abs(var_2.x), ~37579u), ~var_2.x, ~(~var_2.x), 1u));
}

