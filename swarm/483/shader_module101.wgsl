struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = select(-abs(vec4<i32>(arg_3, u_input.d, 2147483647i, -2147483647i)), arg_2.c.d, false & !(arg_2.e > u_input.e.x)) << (max(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(3910u, 12215u, 62623u, 4294967295u), vec4<u32>(arg_2.e, 0u, u_input.b, u_input.e.x)), 4294967295u, 1u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(~arg_2.e, u_input.e.x, countOneBits(1u), abs(1u)), ~(~vec4<u32>(58506u, u_input.e.x, 18810u, 1u)))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -560f, arg_2.b))));
    var var_2 = vec2<bool>(arg_2.a.b.x, false);
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-684f, arg_2.c.c)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.c, arg_1)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_0), vec2<f32>(arg_0, 1192f), vec2<bool>(true, var_2.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.c, arg_1) + vec2<f32>(arg_2.a.c, arg_0)))), Struct_1(_wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec3_i32(var_0.wwx, var_0.www)), vec2<bool>(true, true), _wgslsmith_f_op_f32(step(arg_1, -3480f)), abs(-vec4<i32>(arg_2.a.d.x, -1i, var_0.x, arg_3)), var_0.yz << (vec2<u32>(arg_2.e, arg_2.e) % vec2<u32>(32u))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, 34455i, 2147483647i), 17224i), !vec2<bool>(var_2.x, var_2.x), _wgslsmith_f_op_f32(arg_1 + arg_1), -vec4<i32>(u_input.a, u_input.a, arg_2.a.a, 44150i), vec2<i32>(var_0.x, arg_2.c.a))), vec4<i32>(arg_2.a.a, select(1i, _wgslsmith_add_i32(-7452i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_2.a.d.x, 66648i, arg_2.a.d.x), vec4<i32>(u_input.c, -68246i, -14008i, -15480i))), true), arg_2.a.a, ~(-(u_input.a << (arg_2.e % 32u)))), Struct_1(~(i32(-1i) * -637i), !(!(!vec2<bool>(false, arg_2.c.b.x))), _wgslsmith_f_op_f32(trunc(858f)), -_wgslsmith_mult_vec4_i32(arg_2.a.d, vec4<i32>(-42513i, -1i, u_input.a, -14250i)), var_0.zz), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-386f, -674f) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1))) - vec2<f32>(_wgslsmith_f_op_f32(step(-1500f, arg_1)), _wgslsmith_f_op_f32(arg_1 * arg_1))), Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(-4325i, u_input.c, -36673i), vec3<i32>(2147483647i, 0i, var_0.x)), select(arg_2.c.b, !vec2<bool>(false, var_2.x), vec2<bool>(true, arg_2.a.b.x)), _wgslsmith_f_op_f32(trunc(-1144f)), _wgslsmith_sub_vec4_i32(var_0, vec4<i32>(arg_3, -2528i, 6202i, arg_3)) | select(vec4<i32>(2147483647i, 27754i, arg_3, arg_2.a.a), vec4<i32>(-19171i, arg_2.c.e.x, arg_3, u_input.d), arg_2.b), _wgslsmith_clamp_vec2_i32(var_0.xz, arg_2.a.d.zw, ~arg_2.a.e)), arg_2.a), arg_2);
    var var_4 = ~max(reverseBits(34303u << (u_input.b % 32u)) ^ var_3.e.e, _wgslsmith_sub_u32(reverseBits(firstLeadingBit(arg_2.e)), ~u_input.b));
    return _wgslsmith_f_op_f32(f32(-1f) * -1001f);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(arg_1.d + arg_1.a.c), arg_1.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1010f, arg_1.d), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-217f, arg_1.d)))))), vec2<f32>(_wgslsmith_f_op_f32(arg_1.d - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(783f + arg_1.a.c))), _wgslsmith_f_op_f32(-250f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.c)) - _wgslsmith_f_op_f32(func_3(-378f, arg_1.d, arg_1, -1i))))), arg_1.c, Struct_1(-(1i << (min(arg_1.e, arg_1.e) % 32u)), !arg_0.zy, arg_1.a.c, arg_1.a.d, vec2<i32>(-1i) * -(vec2<i32>(arg_2, arg_2) >> (vec2<u32>(arg_1.e, 31246u) % vec2<u32>(32u)))));
    var var_1 = Struct_4(var_0, arg_1.a.d, Struct_1(~(-u_input.c) ^ min(~32303i, _wgslsmith_div_i32(arg_1.c.a, -2147483647i)), vec2<bool>(true, true), -525f, firstTrailingBit(arg_1.c.d), min(countOneBits(~var_0.d.e), vec2<i32>(_wgslsmith_clamp_i32(-1i, 2147483647i, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.e.x, 57581i, arg_2), vec3<i32>(-1186i, u_input.a, arg_2))))), var_0, Struct_2(arg_1.a, true, Struct_1(reverseBits(_wgslsmith_sub_i32(arg_2, -2147483647i)), select(arg_1.c.b, vec2<bool>(true, true), vec2<bool>(true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-466f, -2826f)) + _wgslsmith_f_op_f32(max(var_0.a.x, arg_1.d))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a, arg_1.a.e.x, arg_1.a.a, 1i)), _wgslsmith_mult_vec4_i32(var_0.c.d, vec4<i32>(0i, -40674i, u_input.d, 0i))), arg_1.a.e ^ ~vec2<i32>(arg_2, u_input.a)), var_0.c.c, 51639u));
    let var_2 = _wgslsmith_add_u32(arg_1.e, 22122u);
    return Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(var_1.d.a, var_1.d.a)))), vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.e.d)), _wgslsmith_f_op_f32(-var_0.d.c))), vec2<f32>(_wgslsmith_f_op_f32(1310f * _wgslsmith_div_f32(818f, var_0.b.x)), var_0.b.x)), _wgslsmith_f_op_vec2_f32(var_1.d.b + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(160f, arg_1.a.c))))), var_0.d, Struct_1(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, var_1.e.c.a, -15132i, u_input.a), arg_1.a.d)), select(select(arg_1.c.b, select(arg_0.yx, arg_0.xx, arg_1.a.b), true), vec2<bool>(all(vec3<bool>(false, false, true)), var_0.c.b.x), !(u_input.a >= u_input.d)), _wgslsmith_f_op_f32(-2711f - 689f), _wgslsmith_clamp_vec4_i32(-var_1.b, var_1.e.a.d, vec4<i32>(~1i, arg_2, -1i, countOneBits(-31041i))), vec2<i32>(arg_2, var_1.b.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(arg_0.c.c * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-612f, -757f, arg_0.d.b.x || !arg_2.d.b.x)))));
    global0 = array<Struct_2, 27>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.a.x) * _wgslsmith_f_op_f32(max(771f, arg_3.c.c))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1214f - 1990f)))), arg_2.d.c));
    let var_2 = 561f;
    var_0 = arg_0.d.c;
    return arg_0.d.b;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_2, 27>();
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1634f), 1f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-797f, 1000f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(158f, -230f), vec2<f32>(809f, -1716f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1009f, -569f), vec2<f32>(-1241f, -863f)))))));
    global0 = array<Struct_2, 27>();
    let var_1 = Struct_1(-1i, func_4(func_2(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(reverseBits(~u_input.e.x), 27u)], arg_1), Struct_4(func_2(vec3<bool>(true, true, true), Struct_2(Struct_1(2147483647i, vec2<bool>(false, false), var_0.x, vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.c), vec2<i32>(arg_1, u_input.c)), false, Struct_1(-47043i, vec2<bool>(true, false), 1080f, vec4<i32>(-44808i, arg_1, -1i, arg_1), vec2<i32>(arg_1, 17280i)), -991f, arg_0), arg_1 >> (4989u % 32u)), min(vec4<i32>(-2147483647i, -43140i, arg_1, arg_1), vec4<i32>(u_input.a, u_input.c, u_input.d, -1i)) ^ vec4<i32>(arg_1, u_input.d, 2147483647i, u_input.d), Struct_1(firstTrailingBit(arg_1), vec2<bool>(true, true), -301f, select(vec4<i32>(41076i, 1i, -38252i, u_input.d), vec4<i32>(56315i, u_input.c, -28647i, -1i), false), vec2<i32>(0i, u_input.d)), func_2(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18135u, 4294967295u, 53843u, 4294967295u), vec4<u32>(u_input.b, 0u, arg_2.x, 0u)), 27u)], -1i | u_input.a), Struct_2(Struct_1(60003i, vec2<bool>(false, true), 312f, vec4<i32>(u_input.d, arg_1, -57772i, 0i), vec2<i32>(arg_1, u_input.a)), true, func_2(vec3<bool>(true, true, false), Struct_2(Struct_1(1556i, vec2<bool>(false, false), -333f, vec4<i32>(0i, -2147483647i, 44643i, 2147483647i), vec2<i32>(u_input.d, u_input.a)), false, Struct_1(arg_1, vec2<bool>(true, false), var_0.x, vec4<i32>(0i, -1i, u_input.d, -1i), vec2<i32>(u_input.d, -3901i)), var_0.x, u_input.b), 67772i).c, _wgslsmith_f_op_f32(-var_0.x), 0u >> (0u % 32u))), func_2(vec3<bool>(func_2(vec3<bool>(false, true, false), Struct_2(Struct_1(u_input.c, vec2<bool>(true, false), -1161f, vec4<i32>(10782i, arg_1, u_input.d, -3021i), vec2<i32>(arg_1, arg_1)), false, Struct_1(arg_1, vec2<bool>(false, true), 344f, vec4<i32>(0i, 32576i, u_input.c, u_input.a), vec2<i32>(arg_1, arg_1)), var_0.x, 0u), -36552i).c.b.x, any(vec2<bool>(true, false)), any(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(~min(1u, arg_0), 27u)], u_input.c), func_2(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), global0[_wgslsmith_index_u32(~abs(25118u), 27u)], -u_input.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, -1000f))))), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_sub_vec4_i32(select(min(vec4<i32>(arg_1, 38038i, 50202i, 1i), vec4<i32>(30057i, arg_1, 7291i, -10657i)) >> (~arg_2 % vec4<u32>(32u)), ~vec4<i32>(17782i, -47343i, u_input.a, 39655i), !all(vec4<bool>(true, true, true, false))), func_2(vec3<bool>(true, true, true), Struct_2(Struct_1(arg_1, vec2<bool>(false, true), var_0.x, vec4<i32>(arg_1, arg_1, arg_1, u_input.a), vec2<i32>(-67708i, 42791i)), func_2(vec3<bool>(false, true, true), Struct_2(Struct_1(1i, vec2<bool>(true, true), var_0.x, vec4<i32>(1952i, arg_1, 4218i, 4929i), vec2<i32>(2147483647i, 0i)), true, Struct_1(arg_1, vec2<bool>(true, true), var_0.x, vec4<i32>(arg_1, u_input.d, 5458i, arg_1), vec2<i32>(34231i, u_input.c)), -1000f, 28488u), 0i).d.b.x, Struct_1(2187i, vec2<bool>(true, true), var_0.x, vec4<i32>(-5288i, 50139i, arg_1, 7041i), vec2<i32>(u_input.c, 8946i)), 612f, max(arg_0, u_input.b)), u_input.c | (2147483647i | arg_1)).c.d), min(-vec2<i32>(arg_1 ^ 0i, arg_1), _wgslsmith_mult_vec2_i32(-select(vec2<i32>(arg_1, u_input.a), vec2<i32>(arg_1, 1i), false), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(1i, -20896i)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(u_input.c, 2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(-47223i, arg_1), vec2<i32>(-2147483647i, 21408i))))));
    var var_2 = Struct_4(func_2(select(vec3<bool>(var_1.b.x, 700f > var_0.x, var_1.b.x & true), !select(vec3<bool>(var_1.b.x, true, var_1.b.x), vec3<bool>(var_1.b.x, var_1.b.x, true), vec3<bool>(false, var_1.b.x, var_1.b.x)), var_1.b.x), global0[_wgslsmith_index_u32(68697u, 27u)], arg_1), var_1.d, func_2(!(!(!vec3<bool>(true, var_1.b.x, false))), Struct_2(Struct_1(arg_1, !vec2<bool>(true, var_1.b.x), 1f, var_1.d, _wgslsmith_add_vec2_i32(var_1.e, var_1.e)), !(var_1.b.x || var_1.b.x), var_1, -858f, arg_2.x), min(41259i, 0i)).d, func_2(select(vec3<bool>(false, any(vec2<bool>(var_1.b.x, true)), any(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x))), vec3<bool>(any(vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.b.x)), var_1.b.x, false), !select(vec3<bool>(true, var_1.b.x, false), vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), var_1.b.x)), global0[_wgslsmith_index_u32(~countOneBits(29015u), 27u)], 0i), Struct_2(Struct_1(-5191i, vec2<bool>(false, !var_1.b.x), _wgslsmith_f_op_f32(func_3(174f, var_1.c, Struct_2(Struct_1(1638i, vec2<bool>(var_1.b.x, true), 671f, vec4<i32>(3247i, 2147483647i, var_1.a, 0i), vec2<i32>(-2147483647i, u_input.a)), var_1.b.x, var_1, -889f, arg_2.x), i32(-1i) * -2147483647i)), vec4<i32>(reverseBits(2147483647i), u_input.d, func_2(vec3<bool>(var_1.b.x, true, var_1.b.x), global0[_wgslsmith_index_u32(u_input.b, 27u)], -2147483647i).c.e.x, -1i), -vec2<i32>(u_input.a, -37775i)), select(func_4(Struct_3(vec2<f32>(1134f, 1065f), var_0, var_1, Struct_1(0i, vec2<bool>(var_1.b.x, false), var_1.c, var_1.d, vec2<i32>(-32949i, u_input.c))), Struct_4(Struct_3(vec2<f32>(775f, var_0.x), var_0, var_1, var_1), vec4<i32>(13959i, 1i, -30912i, var_1.e.x), var_1, Struct_3(var_0, vec2<f32>(951f, var_0.x), var_1, var_1), Struct_2(Struct_1(arg_1, vec2<bool>(true, var_1.b.x), -617f, var_1.d, var_1.e), var_1.b.x, var_1, var_0.x, u_input.b)), Struct_3(vec2<f32>(-610f, -1988f), vec2<f32>(429f, var_0.x), var_1, var_1), func_2(vec3<bool>(false, false, var_1.b.x), global0[_wgslsmith_index_u32(u_input.b, 27u)], var_1.a)).x, any(select(vec4<bool>(false, var_1.b.x, var_1.b.x, true), vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(false, var_1.b.x, true, false))), !all(var_1.b)), var_1, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_div_f32(-467f, -113f))), var_1.c, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(106232u, u_input.b), 27u)], u_input.d | u_input.a)), 1u));
    return func_2(select(vec3<bool>(false, true || any(vec4<bool>(var_2.c.b.x, var_1.b.x, false, false)), all(var_2.e.c.b) == !var_1.b.x), !select(select(vec3<bool>(false, false, true), vec3<bool>(var_1.b.x, var_2.d.c.b.x, true), vec3<bool>(var_1.b.x, var_1.b.x, false)), select(vec3<bool>(var_1.b.x, var_1.b.x, true), vec3<bool>(var_1.b.x, true, var_1.b.x), var_1.b.x), vec3<bool>(true, var_1.b.x, false)), !(_wgslsmith_f_op_f32(1000f - var_0.x) == var_0.x)), Struct_2(func_2(!(!vec3<bool>(var_2.d.d.b.x, var_2.e.c.b.x, true)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(var_2.e.e), countOneBits(u_input.e.x)), 27u)], 1i).d, all(var_1.b), Struct_1(-2147483647i, var_1.b, func_2(select(vec3<bool>(var_2.d.c.b.x, true, false), vec3<bool>(true, var_2.d.c.b.x, false), true), Struct_2(Struct_1(var_2.a.c.a, var_1.b, 559f, vec4<i32>(var_1.d.x, 4719i, 2147483647i, 11608i), var_2.b.zx), var_1.b.x, Struct_1(u_input.a, vec2<bool>(true, var_1.b.x), -914f, var_2.b, vec2<i32>(u_input.a, -41870i)), -329f, arg_0), var_2.c.d.x).d.c, var_2.b, firstLeadingBit(vec2<i32>(26249i, 0i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-392f + var_1.c) + var_0.x), 619f, false)), select(~u_input.b, u_input.e.x, true)), abs(-2147483647i)).d;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 27>();
    let var_0 = arg_1.a.d.xwy;
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -164f), _wgslsmith_f_op_f32(540f - -614f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1232f, -638f) * vec2<f32>(-759f, 874f)), vec2<f32>(743f, -1681f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1321f, 199f) - vec2<f32>(1f, 1f))), func_5(467f, Struct_2(func_1(1u, -2515i, vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b)), false, func_2(vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(34958u, 27u)], u_input.d).c, _wgslsmith_f_op_f32(176f - 1581f), ~u_input.b)), Struct_1(u_input.d ^ ~2147483647i, func_2(vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 27u)], u_input.a).c.b, -689f, firstTrailingBit(~vec4<i32>(u_input.d, -17863i, -7733i, u_input.c)), vec2<i32>(_wgslsmith_add_i32(1i, -2147483647i), u_input.a))), select(vec4<i32>(u_input.d, ~58912i, abs(~21883i), u_input.c ^ 28916i), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, 0i, u_input.d, u_input.a)), vec4<i32>(39041i, 1i, u_input.a, -2147483647i) ^ vec4<i32>(2147483647i, -2147483647i, u_input.a, -10975i)) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.a, u_input.d, u_input.c), vec4<i32>(-1i, u_input.a, 2147483647i, u_input.a)), u_input.a != 3087i), Struct_1(_wgslsmith_mult_i32(func_5(-507f, global0[_wgslsmith_index_u32(u_input.b, 27u)]).d.x, 29192i), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), 3630f, vec4<i32>(_wgslsmith_mult_i32(22607i, -u_input.d), reverseBits(-3278i), 1i, u_input.c), select(_wgslsmith_div_vec2_i32(vec2<i32>(46122i, -23367i), vec2<i32>(u_input.c, u_input.d)) >> (firstTrailingBit(u_input.e) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.c, 0i)), vec2<i32>(u_input.c, u_input.c) & vec2<i32>(1i, u_input.c)), ~u_input.c > u_input.d)), func_2(vec3<bool>(true, true, false), Struct_2(func_2(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), Struct_2(Struct_1(-2147483647i, vec2<bool>(true, true), -620f, vec4<i32>(u_input.c, u_input.c, 1i, u_input.a), vec2<i32>(u_input.c, 25516i)), true, Struct_1(u_input.a, vec2<bool>(false, true), 567f, vec4<i32>(u_input.c, 2147483647i, 0i, u_input.c), vec2<i32>(2147483647i, 0i)), -1000f, u_input.e.x), u_input.c).c, all(vec2<bool>(true, true)), Struct_1(func_1(46104u, u_input.d, vec4<u32>(4294967295u, u_input.b, u_input.e.x, 0u)).d.x, vec2<bool>(false, false), 1f, vec4<i32>(u_input.c, 1i, -1i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 31516i), vec2<i32>(u_input.a, 0i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(853f, -1000f)), _wgslsmith_dot_vec2_u32(~vec2<u32>(2119u, 1u), vec2<u32>(u_input.e.x, 4294967295u))), u_input.c), global0[_wgslsmith_index_u32(~(~(~(1u | u_input.b))), 27u)]);
    let var_1 = 792f;
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(func_5(var_1, global0[_wgslsmith_index_u32(0u, 27u)]).c, _wgslsmith_f_op_f32(ceil(235f)), -1159f, _wgslsmith_f_op_f32(f32(-1f) * -1463f))));
    var var_3 = vec4<u32>(4294967295u, 1u, 16612u, select(var_0.e.e, 0u, (var_0.e.e <= var_0.e.e) || true) >> (1u % 32u));
    var var_4 = _wgslsmith_sub_u32(u_input.e.x, 1u);
    var_4 = ~(u_input.e.x & 1u) & _wgslsmith_clamp_u32(4294967295u, max(var_0.e.e, _wgslsmith_div_u32(var_3.x, 4294967295u)), firstTrailingBit(u_input.e.x) >> (var_3.x % 32u));
    global0 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

