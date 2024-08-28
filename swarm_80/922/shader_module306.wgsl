struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = -1877i;
    var var_1 = Struct_1(vec3<bool>(all(vec3<bool>(select(true, false, false), all(vec3<bool>(true, true, false)), true)), true, any(vec3<bool>(true, true, true))), u_input.c.x, u_input.e.x);
    var var_2 = Struct_3(~_wgslsmith_mod_u32(15912u, _wgslsmith_add_u32(0u, 81731u)), select(true, var_1.a.x, var_1.a.x), -486i, 1214f, _wgslsmith_f_op_f32(trunc(1716f)));
    let var_3 = _wgslsmith_clamp_u32(~select(55896u, select(firstLeadingBit(var_2.a), ~10566u, false), true && any(var_1.a)), u_input.e.x, ~u_input.b);
    var var_4 = -_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(countOneBits(40107i), u_input.d.x, 2147483647i | (var_2.c >> (60362u % 32u)), firstLeadingBit(reverseBits(var_2.c))));
    return -var_4.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    var var_0 = Struct_4(arg_2, ~vec4<i32>(i32(-1i) * -u_input.d.x, 0i, firstLeadingBit(_wgslsmith_add_i32(u_input.a, arg_1.x)), 0i), Struct_2(vec4<i32>(~u_input.d.x >> (arg_2.b % 32u), ~arg_0.x, i32(-1i) * -arg_1.x, 19507i), arg_2), arg_2);
    var_0 = Struct_4(var_0.d, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(7415i, arg_1.x), var_0.c.a.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.d.xww, u_input.d.yxy), ~func_3()), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, arg_0.x, 1i, var_0.c.a.x), -vec4<i32>(arg_1.x, arg_0.x, arg_1.x, arg_1.x)) >> (arg_2.b % 32u), -(~_wgslsmith_sub_i32(16900i, u_input.d.x))), var_0.c, Struct_1(!(!vec3<bool>(true, arg_2.a.x, true)), ~(~1u), arg_2.b));
    let var_1 = ~(~(u_input.e >> (vec4<u32>(countOneBits(var_0.d.c), arg_2.b, u_input.b, 4294967295u) % vec4<u32>(32u))));
    let var_2 = ~var_1.x;
    var var_3 = var_0.c;
    return false;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_2(-u_input.d, Struct_1(!vec3<bool>(false, select(true, false, true), func_2(vec4<i32>(-15206i, 10869i, -9604i, u_input.a), vec4<i32>(arg_1.x, u_input.a, arg_2, -1i), Struct_1(vec3<bool>(false, true, true), u_input.e.x, arg_0.x))), countOneBits(~u_input.e.x), arg_0.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(731f, _wgslsmith_div_f32(-1520f, arg_3), any(select(vec3<bool>(var_0.b.a.x, false, var_0.b.a.x), vec3<bool>(var_0.b.a.x, false, var_0.b.a.x), var_0.b.a)))), _wgslsmith_div_f32(529f, arg_3), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - -366f) + arg_3))));
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(470f)), _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(1172f * var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, 587f, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-arg_3)))), vec4<f32>(638f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.x, arg_3))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-135f, -849f)))), 1817f)));
    var var_2 = u_input.e.zwy;
    let var_3 = !vec3<bool>(var_0.b.a.x, true, any(vec3<bool>(false, !var_0.b.a.x, func_2(u_input.d, u_input.d, Struct_1(vec3<bool>(var_0.b.a.x, true, var_0.b.a.x), 0u, var_0.b.b)))));
    return Struct_1(vec3<bool>(!all(vec3<bool>(var_0.b.a.x, true, false)), var_3.x, var_0.b.a.x || var_0.b.a.x), abs(u_input.c.x), ~(~(_wgslsmith_sub_u32(1u, 0u) & select(arg_0.x, 56934u, var_0.b.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_i32(u_input.a, -(u_input.a | u_input.a));
    let var_1 = firstLeadingBit(-(-39083i ^ (0i >> (_wgslsmith_mod_u32(u_input.e.x, arg_0.b) % 32u))));
    let var_2 = vec4<bool>(true, func_2(_wgslsmith_div_vec4_i32(vec4<i32>(var_1, -37046i, 2147483647i, -31467i), ~u_input.d) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.c.x, 4294967295u), _wgslsmith_mult_vec4_u32(u_input.c, u_input.c)) % vec4<u32>(32u)), firstLeadingBit(firstTrailingBit(firstLeadingBit(vec4<i32>(var_1, 2147483647i, var_0, 2147483647i)))), Struct_1(!arg_0.a, ~25020u | ~arg_0.b, countOneBits(arg_0.c))), all(vec4<bool>(!arg_0.a.x & all(arg_0.a.zx), arg_0.a.x, arg_0.a.x, arg_0.a.x)), all(select(select(vec4<bool>(arg_0.a.x, false, false, true), vec4<bool>(true, false, arg_0.a.x, false), arg_0.a.x), !vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), !vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x))) & (u_input.c.x < ~(~0u)));
    let var_3 = select(!(!var_2), var_2, vec4<bool>(!(true && any(vec4<bool>(false, false, var_2.x, arg_0.a.x))), false, all(var_2.wx), false | (all(vec2<bool>(true, false)) & arg_0.a.x)));
    var var_4 = select(~(-_wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(0i, 35505i, var_1, u_input.d.x), vec4<i32>(var_0, var_1, -2147483647i, 2147483647i) >> (u_input.e % vec4<u32>(32u)))), -select(countOneBits(min(vec4<i32>(var_0, var_1, 12821i, 61671i), vec4<i32>(var_0, var_1, var_1, var_1))), vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, var_0, var_0, var_0)), var_0, -1i), true), arg_0.a.x);
    return max(u_input.c, _wgslsmith_sub_vec4_u32(u_input.e, ~vec4<u32>(~0u, 1u << (u_input.b % 32u), arg_0.b | u_input.c.x, ~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, 105323u, u_input.c.x, u_input.e.x), func_4(func_1(u_input.c.zz, u_input.d.zxx, -27396i, 483f), _wgslsmith_f_op_f32(395f - -1335f), vec4<f32>(-217f, -723f, -1000f, 1015f)), ~vec4<u32>(542u, u_input.c.x, 34273u, u_input.e.x)), ~max(abs(u_input.e), vec4<u32>(4294967295u, u_input.e.x, u_input.c.x, 8445u)));
    var var_1 = _wgslsmith_mod_i32(u_input.d.x, -_wgslsmith_dot_vec4_i32(u_input.d, u_input.d) >> (1u % 32u)) >> (u_input.e.x % 32u);
    var_1 = ~(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, -3683i, -82419i), vec3<i32>(u_input.d.x, -23088i, -82637i)), vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.d.x), select(u_input.d.x, 18123i, true), 1i)) >> (abs(73141u) % 32u));
    var var_2 = func_1(_wgslsmith_mult_vec2_u32(abs(~u_input.e.yy), ~u_input.c.wx | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 68159u), u_input.c.wz)), u_input.d.zyx, -_wgslsmith_mult_i32(0i, u_input.d.x) & u_input.d.x, 2141f).a.x | true;
    var_1 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, u_input.a, 1i, 8723i)), -24173i, 2147483647i, ~(-36475i)), _wgslsmith_mult_vec4_i32(countOneBits(~u_input.d), abs(_wgslsmith_add_vec4_i32(u_input.d, u_input.d)))), 0i, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.c.x, u_input.e.x, u_input.e.x), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.e.xw ^ vec2<u32>(var_0, 2687u), u_input.c.xw), ~(~4294967295u), _wgslsmith_add_u32(1u, var_0), 1u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))));
}

