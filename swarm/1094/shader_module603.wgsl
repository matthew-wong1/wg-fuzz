struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    let var_0 = Struct_4(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, firstLeadingBit(-28368i), min(u_input.b.x, 1i)), -countOneBits(max(vec3<i32>(2147483647i, u_input.d.x, u_input.b.x), vec3<i32>(u_input.d.x, 0i, u_input.d.x)))), Struct_3(false, u_input.d.x, _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, -8141i), -vec3<i32>(u_input.b.x, -55118i, u_input.d.x) & select(vec3<i32>(u_input.d.x, u_input.b.x, 0i), vec3<i32>(0i, -9512i, u_input.d.x), vec3<bool>(false, true, false)))), -35807i, Struct_2(_wgslsmith_mod_u32(1u, firstLeadingBit(1u)), u_input.a.x, Struct_1(vec2<bool>(true, true), vec4<bool>(false, true, true, false), u_input.c), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), Struct_2(0u, 22236u, Struct_1(vec2<bool>(true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), true), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 60078u)), ~vec4<u32>(1u, 0u, u_input.c.x, 37623u))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)));
    let var_1 = var_0.e.c.b;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -153f), -1105f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-541f))))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(823f + 536f), true)));
    var var_4 = abs(max(vec2<i32>(0i, u_input.d.x | var_0.b.b), -vec2<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(148i, 33359i, u_input.d.x), var_0.b.c))));
    return !(!(u_input.a.x < (_wgslsmith_clamp_u32(u_input.c.x, 0u, u_input.c.x) ^ 1u)));
}

fn func_4(arg_0: vec4<bool>) -> bool {
    var var_0 = Struct_3(true, -_wgslsmith_div_i32(_wgslsmith_div_i32(firstLeadingBit(1i), u_input.b.x), 1i), vec3<i32>(-(~(i32(-1i) * -20292i)), select(u_input.b.x, u_input.b.x, arg_0.x), -2147483647i));
    return false;
}

fn func_2() -> vec4<bool> {
    var var_0 = vec2<bool>(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, 4294967295u)), countOneBits(abs(3383u))) == u_input.a.x, func_4(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, all(vec3<bool>(true, true, true)), func_3(), all(vec3<bool>(false, false, true))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), any(vec2<bool>(false, false))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(229f, 2859f, -733f) - vec3<f32>(-462f, 1000f, -1171f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2190f, -1217f, -508f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-675f, 308f, -105f) + vec3<f32>(-338f, 1017f, -1046f)))))));
    let var_2 = false;
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), -1702f, _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, var_1.x, var_1.x))))))), vec3<f32>(1177f, 1f, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_1.x))))))), !vec3<bool>(any(vec3<bool>(var_0.x, var_2, false)) | var_0.x, true, var_2)));
    let var_3 = 1i;
    return vec4<bool>(true, !var_0.x, true, var_0.x);
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_1(select(vec2<bool>((u_input.b.x >= u_input.d.x) && select(true, false, false), all(vec2<bool>(true, false))), vec2<bool>(true, ~34938u < (arg_0 >> (arg_0 % 32u))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)))), func_2(), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 25716u, 15058u, 0u), vec4<u32>(34639u, 88382u, 13597u, arg_0)), u_input.c), ~_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.a.x, 54866u, 70006u, u_input.a.x))), u_input.c >> (u_input.c % vec4<u32>(32u))));
    var var_1 = Struct_5(var_0.b.x, Struct_1(!vec2<bool>(all(vec4<bool>(true, var_0.a.x, false, var_0.a.x)), all(var_0.b.xww)), vec4<bool>(_wgslsmith_clamp_u32(arg_0, 5018u, u_input.a.x) < 1u, true, var_0.b.x, false), var_0.c), u_input.d ^ vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, -11245i), vec2<i32>(1i, 1i)), u_input.d.x), reverseBits(vec4<i32>(10020i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -32080i, u_input.d.x), vec3<i32>(-26094i, u_input.d.x, u_input.b.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<i32>(-37551i, u_input.d.x, u_input.d.x))), u_input.d.x, -(~23542i))));
    var_1 = Struct_5(true, var_1.b, abs(u_input.d), var_1.d);
    var var_2 = ~var_1.b.c;
    var_1 = Struct_5(true, var_0, -_wgslsmith_add_vec2_i32(vec2<i32>(-16496i, _wgslsmith_mult_i32(var_1.d.x, var_1.c.x)), vec2<i32>(~var_1.d.x, i32(-1i) * -23129i)), vec4<i32>(select(-56733i, ~_wgslsmith_mod_i32(var_1.c.x, u_input.d.x), false), 1i, 0i << (firstLeadingBit(~var_0.c.x) % 32u), firstTrailingBit(0i)));
    return vec3<u32>(var_0.c.x | _wgslsmith_div_u32(~(~1u), u_input.a.x), _wgslsmith_clamp_u32(~(_wgslsmith_mult_u32(u_input.a.x, arg_0) | var_0.c.x), 1u, var_1.b.c.x), _wgslsmith_add_u32(_wgslsmith_add_u32(12714u, ~var_2.x) & ~max(u_input.a.x, 16849u), var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 62689u;
    var var_1 = u_input.c.yzx;
    var_1 = ~u_input.c.www;
    let var_2 = true || select(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true)))), !any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), all(vec3<bool>(true, true, true)));
    let var_3 = -1356f;
    var_1 = _wgslsmith_sub_vec3_u32(func_1(38272u), countOneBits(u_input.c.yyy));
    var var_4 = ~(vec3<u32>(reverseBits(0u), 1u, u_input.c.x) >> (((vec3<u32>(1u, 4294967295u, var_1.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a.x, 30684u), vec3<u32>(u_input.c.x, u_input.c.x, var_1.x)) % vec3<u32>(32u))) & _wgslsmith_div_vec3_u32(vec3<u32>(20170u, 41100u, 1u) | vec3<u32>(var_1.x, var_1.x, u_input.a.x), ~vec3<u32>(var_1.x, var_1.x, var_0))) % vec3<u32>(32u)));
    let var_5 = _wgslsmith_clamp_vec3_u32(vec3<u32>(13843u, 1u, 4294967295u), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c.yzz, countOneBits(vec3<u32>(var_4.x, var_4.x, var_4.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(15254u, 25285u, ~var_1.x), vec3<u32>(~46622u, var_0, countOneBits(u_input.a.x)), _wgslsmith_clamp_vec3_u32(u_input.c.wyy, ~u_input.c.yzz, u_input.c.yxw ^ vec3<u32>(28008u, 33917u, 55941u)))), max(vec3<u32>(~(~0u), 4294967295u, 1u), vec3<u32>(4294967295u, ~(var_0 | 0u), var_1.x)));
    var_1 = vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, 0u) | ~firstTrailingBit(var_1.x), _wgslsmith_add_u32(max(firstTrailingBit(u_input.c.x), ~_wgslsmith_sub_u32(21767u, 1u)), 0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(14102u, u_input.c.x, _wgslsmith_clamp_u32(var_0, var_0, var_1.x)), reverseBits(abs(var_5))), _wgslsmith_clamp_u32(~abs(1u), func_1(var_4.x & 4294967295u).x, min(_wgslsmith_mod_u32(1u, 4294967295u), var_5.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, 598f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3)))))), vec3<i32>(2147483647i, 0i ^ u_input.d.x, 11222i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_3)), _wgslsmith_f_op_f32(f32(-1f) * -504f))))), var_3);
}

