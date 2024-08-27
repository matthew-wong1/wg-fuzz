struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), max(i32(-1i) * -u_input.a, u_input.a), u_input.c.x << (_wgslsmith_mod_u32(29797u, 1u) % 32u), -u_input.a), select(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -1849i, u_input.c.x << (41072u % 32u)), min(31760i, ~2147483647i), _wgslsmith_mod_i32(u_input.a, -19778i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(4163i, 0i, u_input.a, -1i), u_input.c), max(u_input.a, -5944i)), _wgslsmith_div_vec4_i32(u_input.c << (vec4<u32>(0u, 16028u, 1u, 51671u) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i))), vec4<bool>(true, true && any(vec4<bool>(true, true, true, false)), true, true)));
    var var_1 = Struct_1(false, -u_input.c.x, abs(~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 22716u, 1580u), vec3<u32>(9639u, 0u, 27275u), vec3<u32>(62839u, 13854u, 0u)), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true))));
    var_1 = Struct_1(!all(!(!vec2<bool>(var_1.a, true))), _wgslsmith_div_i32(-2147483647i, u_input.c.x), abs(var_1.c | var_1.c));
    let var_2 = Struct_1(true, i32(-1i) * -1i, var_1.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1068f, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2019f, arg_0)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2585f), _wgslsmith_f_op_f32(arg_0 * arg_0)))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0)))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))))), select(!select(select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(true, false), var_1.a), select(vec2<bool>(false, true), vec2<bool>(var_2.a, false), false), !vec2<bool>(false, var_1.a)), select(!select(vec2<bool>(true, var_1.a), vec2<bool>(true, false), vec2<bool>(true, var_1.a)), vec2<bool>(all(vec4<bool>(var_1.a, true, false, true)), false || var_1.a), !vec2<bool>(var_1.a, false)), select(vec2<bool>(var_1.a, var_2.a), select(!vec2<bool>(var_2.a, true), vec2<bool>(true, false), !vec2<bool>(false, var_2.a)), var_1.a))));
    return _wgslsmith_f_op_f32(f32(-1f) * -320f);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -385f))) + -238f));
    var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(1000f, -300f)));
    var_1 = _wgslsmith_f_op_f32(-543f - -1459f);
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-328f))))))));
    return ~(max(~countOneBits(vec4<u32>(arg_2.a.c.x, arg_2.d.c.x, 1u, 57664u)), ~(vec4<u32>(0u, 70230u, arg_2.a.c.x, 4294967295u) | vec4<u32>(4294967295u, arg_3.b.c.x, arg_2.b.c.x, 30580u))) & vec4<u32>(~(~59923u), arg_3.d.c.x, _wgslsmith_mod_u32(max(60994u, arg_3.a.c.x), 4294967295u), ~var_0.a.c.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    let var_0 = ~arg_0.b;
    var var_1 = 0u;
    var var_2 = select(select(_wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, 23933u, 12703u, 6573u)), func_2(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 0i), u_input.c.xy), vec2<i32>(var_0, 55142i), Struct_2(arg_0, Struct_1(true, 3037i, arg_0.c), vec4<bool>(true, false, arg_0.a, true), Struct_1(true, -6979i, vec3<u32>(0u, arg_1.x, arg_1.x))), Struct_2(Struct_1(arg_0.a, arg_0.b, arg_0.c), arg_0, vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), arg_0))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.x, 0u, 94295u, 19339u), countOneBits(vec4<u32>(27981u, arg_0.c.x, arg_0.c.x, 32779u))), true), ~(~(~select(vec4<u32>(14414u, 28960u, 0u, arg_0.c.x), vec4<u32>(22987u, 4294967295u, 63777u, 23135u), true))), select(select(vec4<bool>(true, true, arg_0.a, any(vec2<bool>(arg_0.a, arg_0.a))), !select(vec4<bool>(true, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), true), arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, true), true));
    var_1 = firstLeadingBit(_wgslsmith_sub_u32(~arg_0.c.x << (var_2.x % 32u), var_2.x));
    var_1 = 615u;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 57161u;
    var var_1 = (-2147483647i << (~(~0u) % 32u)) | -(-func_1(Struct_1(false, u_input.c.x, vec3<u32>(var_0, var_0, 0u)), vec2<u32>(var_0, 1u)) << (countOneBits(reverseBits(4294967295u)) % 32u));
    let var_2 = _wgslsmith_sub_i32(u_input.a, u_input.a);
    let var_3 = _wgslsmith_dot_vec4_i32(~u_input.c, ~vec4<i32>(i32(-1i) * -33058i, ~(~(-54673i)), u_input.c.x, _wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 32311i, u_input.c.x)))));
    var var_4 = Struct_1(false, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), var_2), firstTrailingBit(_wgslsmith_clamp_i32(var_2, 1i, 0i) & -1i)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(61015u, var_0, 1u) << (vec3<u32>(4294967295u, var_0, var_0) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, var_0, 1u), min(abs(vec3<u32>(var_0, 37489u, 4294967295u)), abs(vec3<u32>(var_0, var_0, 4294967295u))))));
    let var_5 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_4.c, func_2(u_input.c.yx, -vec2<i32>(1i, var_2), Struct_2(Struct_1(var_4.a, -1i, var_4.c), Struct_1(false, -27450i, var_4.c), vec4<bool>(false, false, false, true), Struct_1(var_4.a, -15366i, var_4.c)), Struct_2(Struct_1(false, u_input.b.x, vec3<u32>(var_0, 0u, 4294967295u)), Struct_1(true, -67988i, vec3<u32>(1554u, 69273u, 1u)), vec4<bool>(true, var_4.a, false, true), Struct_1(var_4.a, var_4.b, vec3<u32>(var_0, 0u, var_4.c.x)))).yzx), func_2(u_input.b.yz, u_input.c.zy, Struct_2(Struct_1(var_4.a, var_4.b, var_4.c), Struct_1(false, 0i, vec3<u32>(2961u, 70300u, 41046u)), vec4<bool>(var_4.a, var_4.a, var_4.a, true), Struct_1(var_4.a, -1i, var_4.c)), Struct_2(Struct_1(true, var_4.b, vec3<u32>(4294967295u, var_0, var_4.c.x)), Struct_1(true, var_4.b, var_4.c), select(vec4<bool>(true, var_4.a, true, var_4.a), vec4<bool>(false, var_4.a, var_4.a, false), vec4<bool>(var_4.a, var_4.a, true, var_4.a)), Struct_1(true, -2147483647i, var_4.c))).yzz), _wgslsmith_add_u32(var_4.c.x, 1u), ~reverseBits(0u), var_0);
    var_4 = Struct_1(false, -var_3, _wgslsmith_mod_vec3_u32(~var_4.c, var_4.c));
    var var_6 = ~_wgslsmith_div_u32(abs(abs(~4294967295u)), var_4.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1324f, 1078f, -1643f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, -1984f, -1167f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(991f, _wgslsmith_f_op_f32(-836f - -362f), _wgslsmith_f_op_f32(select(-576f, -719f, var_4.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-656f, -1000f, 750f), vec3<f32>(1392f, 360f, -435f))))), var_5.zxw, -1000f, 11470i, -((i32(-1i) * -11169i) << (var_0 % 32u)) >> ((~1u | var_4.c.x) % 32u));
}

