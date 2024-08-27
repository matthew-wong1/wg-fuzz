struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_mod_u32(50154u, u_input.e));
    var var_1 = Struct_1(u_input.b.x);
    let var_2 = arg_0;
    var_1 = Struct_1(4294967295u);
    let var_3 = true;
    return 1u;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_3(vec2<bool>(true, true), ~u_input.d.x, vec3<i32>(u_input.a, u_input.a << (_wgslsmith_add_u32(1u, u_input.e) % 32u), abs(-2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1091f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1116f)), -683f, _wgslsmith_f_op_f32(ceil(1000f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1686f, -460f, 532f, -2410f))) - vec4<f32>(791f, 565f, 1881f, -1256f)), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(true, -2147483647i <= u_input.a, false, arg_1.a < u_input.e)))));
    let var_1 = ~abs(_wgslsmith_add_u32(~(~48015u), 9006u));
    let var_2 = u_input.b;
    let var_3 = ~u_input.b.xz ^ _wgslsmith_mult_vec2_u32(var_2.zw ^ firstLeadingBit(vec2<u32>(34483u, arg_1.a)), abs(u_input.b.zx) >> (vec2<u32>(7291u, ~arg_1.a) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(select(-340f, 1734f, var_0.a.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec4<i32> {
    global1 = u_input.b.x > firstTrailingBit(27491u);
    var var_0 = !(arg_0.x == arg_0.x);
    let var_1 = 600f;
    var var_2 = (_wgslsmith_mod_u32(func_2(Struct_3(vec2<bool>(false, false), u_input.a, u_input.d, vec4<f32>(var_1, var_1, 1000f, arg_0.x)), arg_0.x) | 1u, 1u) ^ (2456u | _wgslsmith_sub_u32(1u, ~u_input.e))) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32((u_input.b.xw ^ vec2<u32>(1u, 31641u)) ^ select(u_input.b.xw, vec2<u32>(u_input.e, u_input.e), false), ~(~u_input.b.wx)), 51474u) % 32u);
    var var_3 = _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_u32(abs(~(~u_input.b.zwx)), select(vec3<u32>(u_input.b.x, ~1u, u_input.b.x), ~vec3<u32>(0u, u_input.b.x, 132395u), true)), Struct_1(firstTrailingBit(~u_input.e))));
    return vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(u_input.d.x, ~(arg_1.x << (u_input.e % 32u)))), _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, _wgslsmith_add_i32(u_input.d.x, arg_1.x) >> (u_input.b.x % 32u)), ~select(firstTrailingBit(-18798i), 3024i | arg_1.x, true)), abs(_wgslsmith_dot_vec4_i32(max(~vec4<i32>(-1i, arg_1.x, 2147483647i, -5246i), ~vec4<i32>(arg_1.x, -30142i, 53312i, arg_1.x)), select(countOneBits(vec4<i32>(37731i, arg_1.x, arg_1.x, 4692i)), firstLeadingBit(vec4<i32>(u_input.c.x, 19428i, arg_1.x, u_input.a)), false))), u_input.c.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = Struct_3(select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), false), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, true))), vec2<bool>(true, true))), ~arg_1.a.x, -u_input.d, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -309f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))), _wgslsmith_f_op_f32(-arg_3.b)));
    let var_1 = Struct_3(var_0.a, 1566i, arg_3.a.xyz, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + _wgslsmith_f_op_f32(-925f + arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b + arg_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)), -168f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1239f + -358f)), arg_3.d, -353f, arg_3.b)));
    var var_2 = ~firstLeadingBit(select(u_input.d.xx, arg_1.a.zz, all(select(vec3<bool>(var_1.a.x, var_0.a.x, true), vec3<bool>(false, var_1.a.x, var_0.a.x), var_1.a.x))));
    var var_3 = all(!var_1.a);
    var_2 = u_input.c | vec2<i32>(-_wgslsmith_mod_i32(var_2.x, var_2.x) ^ -1i, var_0.c.x >> (51334u % 32u));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !func_4(u_input.b.yx, Struct_2(-func_1(vec3<f32>(1833f, -360f, 1000f), vec3<i32>(u_input.d.x, u_input.c.x, u_input.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1001f - -317f), _wgslsmith_f_op_f32(1000f - -677f)), u_input.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1351f), _wgslsmith_f_op_f32(1715f - 1243f), false))), ~103277u, Struct_2(vec4<i32>(_wgslsmith_add_i32(u_input.a, u_input.c.x), u_input.a, ~u_input.c.x, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1588f)) + _wgslsmith_div_f32(1049f, -190f)), -vec2<i32>(-2147483647i, u_input.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -787f)))));
    let var_0 = Struct_2(vec4<i32>(-27218i, -max(u_input.a, _wgslsmith_sub_i32(-16078i, u_input.d.x)), ~u_input.d.x, max(u_input.a, _wgslsmith_mult_i32(~u_input.a, _wgslsmith_clamp_i32(22379i, u_input.c.x, u_input.a)))), -462f, u_input.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -503f))) - 809f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1117f))))));
    global1 = all(!(!vec2<bool>(var_0.c.x <= var_0.a.x, false)));
    var var_1 = Struct_3(!select(vec2<bool>(false, all(vec3<bool>(false, true, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(false, false, true)), func_4(vec2<u32>(u_input.b.x, u_input.b.x), Struct_2(var_0.a, 1330f, vec2<i32>(u_input.a, u_input.a), -459f), _wgslsmith_mult_u32(36892u, 0u), Struct_2(var_0.a, var_0.d, vec2<i32>(2147483647i, u_input.c.x), 249f))), -5931i >> (max(~u_input.b.x, min(~42934u, abs(u_input.e))) % 32u), vec3<i32>(-24309i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_0.a.zyx, vec3<i32>(var_0.a.x, 14207i, var_0.a.x)), vec3<i32>(abs(var_0.c.x), var_0.a.x, -1i)), var_0.c.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-371f, 912f, false)) - var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f) * _wgslsmith_f_op_f32(f32(-1f) * -1468f)), _wgslsmith_f_op_f32(var_0.b - var_0.d), -429f))));
    let var_2 = select(36257u, _wgslsmith_add_u32(u_input.b.x, ~u_input.e), 0u >= (u_input.b.x << (u_input.b.x % 32u)));
    var_1 = Struct_3(vec2<bool>(!var_1.a.x, false), max(~(~max(2147483647i, var_0.a.x)), _wgslsmith_sub_i32(var_0.c.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.c.x, u_input.c.x), ~(-24318i)))), ~_wgslsmith_div_vec3_i32(-vec3<i32>(var_1.c.x, -16901i, u_input.d.x), -vec3<i32>(-2147483647i, var_0.a.x, var_0.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(766f, -1000f, var_1.d.x, var_0.d) - vec4<f32>(2192f, 1935f, -856f, var_0.b))))), _wgslsmith_f_op_vec4_f32(-var_1.d)));
    var_1 = Struct_3(var_1.a, var_0.c.x, _wgslsmith_mult_vec3_i32(vec3<i32>(min(var_0.a.x, firstLeadingBit(var_0.c.x)), _wgslsmith_dot_vec4_i32(var_0.a & vec4<i32>(var_0.c.x, var_1.c.x, var_1.c.x, u_input.d.x), ~var_0.a), -55385i), firstTrailingBit(countOneBits(_wgslsmith_mult_vec3_i32(var_1.c, vec3<i32>(var_0.a.x, u_input.d.x, 32666i))))), _wgslsmith_f_op_vec4_f32(var_1.d + vec4<f32>(321f, var_0.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.d.x)))), _wgslsmith_f_op_f32(func_3(var_2, Struct_1(u_input.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a, countOneBits(vec3<u32>(u_input.e, var_2, var_2)), u_input.b.x);
}

