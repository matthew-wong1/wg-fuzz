struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = true;
    global0 = 4294967295u;
    var var_1 = Struct_1(arg_0.zy, u_input.c, vec3<f32>(arg_2, arg_2, arg_2), select(countOneBits(_wgslsmith_mult_vec2_i32(u_input.a.zx, -u_input.a.yy)), ~((vec2<i32>(u_input.c, -4572i) >> (vec2<u32>(4294967295u, 9866u) % vec2<u32>(32u))) << (arg_0.xw % vec2<u32>(32u))), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1105f, -478f, arg_1))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 953f, arg_1, 1945f) - vec4<f32>(-2329f, 1498f, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_2, arg_1, arg_2))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_1, arg_2, -666f) * vec4<f32>(_wgslsmith_f_op_f32(sign(148f)), _wgslsmith_f_op_f32(sign(arg_2)), 1966f, -555f)))));
    var var_2 = Struct_1(~select(vec2<u32>(4930u, 30405u), ~arg_0.yw, true) << (arg_0.xz % vec2<u32>(32u)), var_1.b, _wgslsmith_f_op_vec3_f32(-var_1.c), ~(~vec2<i32>(-var_1.d.x, 14583i >> (var_1.a.x % 32u))), _wgslsmith_f_op_vec4_f32(abs(var_1.e)));
    let var_3 = Struct_2(Struct_1(var_1.a, _wgslsmith_clamp_i32(-2147483647i, countOneBits(18928i), 0i), vec3<f32>(1426f, _wgslsmith_f_op_f32(round(arg_2)), -212f), var_1.d >> (_wgslsmith_add_vec2_u32(select(var_1.a, vec2<u32>(20364u, arg_0.x), true), vec2<u32>(1u, 3228u)) % vec2<u32>(32u)), var_1.e));
    return var_2.a.x;
}

fn func_2() -> vec2<i32> {
    global0 = 12018u;
    var var_0 = Struct_4(Struct_1(vec2<u32>(firstTrailingBit(u_input.d), ~34365u) & ((vec2<u32>(4294967295u, 16775u) | vec2<u32>(21845u, u_input.b)) ^ (vec2<u32>(u_input.d, 37527u) ^ vec2<u32>(u_input.b, 4294967295u))), 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1450f, 1229f, -1363f)) + vec3<f32>(458f, 930f, 1846f))), ~(~vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-856f * 227f), _wgslsmith_f_op_f32(f32(-1f) * -358f), 947f, _wgslsmith_f_op_f32(-1301f - 1405f))))), firstLeadingBit(_wgslsmith_add_u32(~func_3(vec4<u32>(u_input.d, u_input.d, u_input.b, u_input.d), -956f, 357f), u_input.b)));
    global0 = ~(~(~max(u_input.b, 2680u))) << (~0u % 32u);
    return firstLeadingBit(vec2<i32>(u_input.c, u_input.e));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_3) -> Struct_4 {
    global0 = abs(~_wgslsmith_add_u32(~_wgslsmith_sub_u32(1u, u_input.d), ~10736u));
    var var_0 = abs(arg_2.b.a.b);
    var var_1 = Struct_4(arg_2.b.a, _wgslsmith_mod_u32(firstTrailingBit(u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.a.a.x, ~0u, 0u, 4294967295u), ~vec4<u32>(10546u, arg_2.b.a.a.x, 60302u, u_input.b) | max(vec4<u32>(u_input.b, 65108u, 24692u, u_input.d), vec4<u32>(u_input.b, 31203u, 35967u, 83450u)))));
    var var_2 = !(!select(vec2<bool>(false, false), vec2<bool>(true, all(vec3<bool>(arg_2.a, true, arg_2.a))), select(vec2<bool>(true, false), vec2<bool>(false, false), arg_2.a)));
    var_0 = arg_2.b.a.d.x;
    return Struct_4(var_1.a, ~16259u);
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: Struct_4) -> Struct_3 {
    global0 = _wgslsmith_sub_u32(~67853u, min(arg_3.a.a.x, ~max(~arg_3.a.a.x, func_3(vec4<u32>(u_input.d, arg_3.b, arg_3.b, u_input.b), arg_3.a.c.x, 1517f))));
    var var_0 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, u_input.b, arg_3.a.a.x, 1u), _wgslsmith_mod_vec4_u32(~vec4<u32>(72093u, arg_3.a.a.x, u_input.b, 41584u), vec4<u32>(33286u, 55049u, u_input.d, 31728u) | vec4<u32>(u_input.b, u_input.b, 1u, arg_3.b))), _wgslsmith_sub_vec4_u32(abs(max(vec4<u32>(u_input.d, 4294967295u, 47040u, 25224u), vec4<u32>(arg_3.b, u_input.d, 1u, arg_3.a.a.x))), _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.b, 1u, 0u, 9228u) | vec4<u32>(0u, 4294967295u, u_input.b, u_input.b), max(vec4<u32>(4294967295u, 4294967295u, 83460u, 25081u), vec4<u32>(u_input.b, 4294967295u, 0u, arg_3.a.a.x)))), ~vec4<u32>(~21954u, max(arg_3.a.a.x, 81003u), func_3(vec4<u32>(78012u, 4294967295u, u_input.b, u_input.b), -1000f, -492f), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 0u, u_input.b), vec4<u32>(1u, 61150u, 9986u, 22491u))));
    var_0 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(36834u, u_input.d, u_input.d, 0u), select(vec4<u32>(109159u, var_0.x, var_0.x, var_0.x), vec4<u32>(arg_3.a.a.x, var_0.x, 28588u, var_0.x), vec4<bool>(false, arg_1.x, true, true))) << (vec4<u32>(arg_3.b, arg_3.a.a.x, arg_3.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(17918u, arg_3.b, var_0.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 48107u, 1u, 0u), vec4<u32>(4294967295u, 0u, u_input.d, 3689u), vec4<u32>(arg_3.b, arg_3.a.a.x, u_input.b, 0u)))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.a.a.x, _wgslsmith_add_u32(~0u, ~u_input.b), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1700u, 1u, u_input.b), var_0.zxz), abs(4294967295u)), ~10747u), abs(~vec4<u32>(4294967295u, 5812u, 83751u, arg_3.a.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, arg_3.b, u_input.d) >> (vec4<u32>(var_0.x, arg_3.a.a.x, 4294967295u, u_input.b) % vec4<u32>(32u)), select(vec4<u32>(5506u, 1u, 31350u, arg_3.b), vec4<u32>(0u, u_input.d, 36523u, 12233u), false)) & abs(abs(vec4<u32>(3026u, 44516u, var_0.x, arg_3.a.a.x)))), vec4<u32>(arg_3.b, firstTrailingBit(var_0.x), 1u, var_0.x));
    var var_1 = Struct_5(Struct_2(func_4(select(-arg_3.a.d, _wgslsmith_add_vec2_i32(vec2<i32>(arg_2.x, 20966i), arg_3.a.d), select(vec2<bool>(true, arg_1.x), arg_1, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.c.x)), Struct_3(any(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), Struct_2(Struct_1(vec2<u32>(1u, 18795u), arg_2.x, arg_3.a.c, u_input.a.xz, vec4<f32>(-1993f, arg_3.a.c.x, arg_3.a.e.x, 549f))))).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-988f + arg_3.a.c.x), _wgslsmith_f_op_f32(arg_3.a.c.x * arg_3.a.e.x), arg_3.a.a.x >= 1u)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.a.c.x, arg_3.a.c.x))))), -_wgslsmith_clamp_i32(-arg_2.x, u_input.c, -1i) >> (49079u % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-448f, _wgslsmith_f_op_f32(-arg_3.a.e.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.a.e.x))), -467f)));
    global0 = ~_wgslsmith_sub_u32(11819u, min(0u, _wgslsmith_mod_u32(var_1.a.a.a.x, firstTrailingBit(4294967295u))));
    return Struct_3(false & arg_1.x, var_1.a);
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    global0 = (arg_0.b.a.a.x << (arg_0.b.a.a.x % 32u)) << (63700u % 32u);
    global0 = firstLeadingBit(_wgslsmith_add_u32(~u_input.d, 55346u));
    var var_0 = Struct_5(func_5(-17484i, !select(vec2<bool>(arg_0.a, true), !vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, true)), abs(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-28266i, u_input.e, u_input.a.x), vec3<i32>(1445i, 57519i, 12548i)), abs(u_input.a.yzy))), Struct_4(Struct_1(arg_0.b.a.a >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), abs(arg_0.b.a.d.x), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, -158f, 885f), arg_0.b.a.e.wxw), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b.a.d.x, 0i), vec2<i32>(1i, 0i)), _wgslsmith_f_op_vec4_f32(arg_0.b.a.e * vec4<f32>(arg_1, arg_1, arg_0.b.a.c.x, arg_1))), ~_wgslsmith_mod_u32(u_input.b, arg_0.b.a.a.x))).b, _wgslsmith_f_op_f32(round(arg_0.b.a.e.x)), ~u_input.e, arg_1, arg_0.b.a.e.x);
    global0 = ~1u;
    let var_1 = arg_0.a;
    return func_5(~(-2147483647i), select(select(vec2<bool>(!var_1, arg_0.a), vec2<bool>(arg_0.a, true), vec2<bool>(true, true)), select(select(!vec2<bool>(var_1, arg_0.a), vec2<bool>(true, var_1), func_5(-13685i, vec2<bool>(arg_0.a, false), vec3<i32>(7547i, u_input.e, -13388i), Struct_4(Struct_1(arg_0.b.a.a, -2147483647i, vec3<f32>(var_0.a.a.c.x, arg_1, var_0.d), vec2<i32>(1i, 55278i), var_0.a.a.e), arg_0.b.a.a.x)).a), vec2<bool>(false, false), arg_0.a), func_5(arg_0.b.a.d.x, vec2<bool>(arg_0.a, all(vec3<bool>(arg_0.a, arg_0.a, false))), u_input.a.xzx, Struct_4(func_5(-2147483647i, vec2<bool>(true, true), vec3<i32>(arg_0.b.a.b, var_0.c, var_0.a.a.d.x), Struct_4(Struct_1(var_0.a.a.a, -56603i, vec3<f32>(-499f, var_0.e, 332f), arg_0.b.a.d, arg_0.b.a.e), u_input.b)).b.a, u_input.b)).a), _wgslsmith_mult_vec3_i32(u_input.a.xyy, _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b.a.b, u_input.a.x, u_input.c), vec3<i32>(-2147483647i, u_input.e, var_0.c)), vec3<i32>(2147483647i, 2147483647i, arg_0.b.a.b), u_input.a.wyy)), Struct_4(func_4(_wgslsmith_mod_vec2_i32(-var_0.a.a.d, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.a.b, 1i), u_input.a.yy)), _wgslsmith_f_op_f32(round(-882f)), arg_0).a, var_0.a.a.a.x));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = func_6(func_5(_wgslsmith_sub_i32(i32(-1i) * -9753i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_0.x, 2367i), u_input.c)), vec2<bool>(true, true), firstLeadingBit(abs(arg_0.wwx >> (vec3<u32>(u_input.d, 4294967295u, 0u) % vec3<u32>(32u)))), func_4(func_2(), _wgslsmith_div_f32(-1145f, _wgslsmith_div_f32(-1261f, -488f)), Struct_3(true, Struct_2(Struct_1(vec2<u32>(u_input.d, 25885u), u_input.e, vec3<f32>(1000f, -415f, -1843f), vec2<i32>(2147483647i, u_input.a.x), vec4<f32>(398f, 499f, -694f, -2251f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 698f)))));
    var var_1 = var_0.b.a.a.x;
    var_1 = 5362u;
    var var_2 = func_5(_wgslsmith_div_i32(0i, 2147483647i), !select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, true)), !vec2<bool>(var_0.a, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.a), vec2<bool>(false, false), vec2<bool>(var_0.a, false)), vec2<bool>(true, var_0.a)), vec2<bool>(false, true)), select(~vec3<i32>(0i, var_0.b.a.b, u_input.a.x), vec3<i32>(_wgslsmith_mod_i32(u_input.e, -2147483647i), _wgslsmith_mult_i32(u_input.c, -2147483647i), ~2147483647i), vec3<bool>(false, true, var_0.a)) << (countOneBits(vec3<u32>(_wgslsmith_clamp_u32(u_input.d, 1u, 25715u), ~1u, ~0u)) % vec3<u32>(32u)), func_4(~var_0.b.a.d, 539f, Struct_3(!var_0.a, Struct_2(Struct_1(vec2<u32>(47944u, 0u), var_0.b.a.b, vec3<f32>(var_0.b.a.c.x, var_0.b.a.c.x, -411f), vec2<i32>(45349i, u_input.e), vec4<f32>(var_0.b.a.c.x, var_0.b.a.c.x, var_0.b.a.e.x, -1306f)))))).b.a;
    let var_3 = select(!(!vec3<bool>(true, var_0.b.a.e.x <= var_2.e.x, true)), select(select(vec3<bool>(!var_0.a, false, !var_0.a), vec3<bool>(!var_0.a, var_0.a, var_0.a && false), !(!vec3<bool>(var_0.a, true, var_0.a))), !select(select(vec3<bool>(var_0.a, false, false), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a)), vec3<bool>(true, false, var_0.a), var_0.a), true), !select(!select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, true, false), var_0.a), select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, var_0.a, var_0.a)), !(!vec3<bool>(var_0.a, false, var_0.a))));
    return Struct_1(max(var_2.a, vec2<u32>(var_2.a.x, 1u) | _wgslsmith_mult_vec2_u32(~var_2.a, func_6(Struct_3(true, Struct_2(var_0.b.a)), var_2.e.x).b.a.a)), 10656i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.b.a.e.zzy))))), vec2<i32>(abs(u_input.a.x), -1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(132f, var_0.b.a.c.x, var_2.e.x, var_2.c.x) + var_0.b.a.e) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.a.e.x, var_0.b.a.c.x, var_0.b.a.e.x, -1185f), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.e.x, 399f, var_2.c.x, var_0.b.a.c.x), var_2.e))) - _wgslsmith_f_op_vec4_f32(-func_4(-vec2<i32>(u_input.c, var_2.d.x), _wgslsmith_f_op_f32(1089f * var_2.c.x), func_6(Struct_3(true, var_0.b), var_0.b.a.e.x)).a.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.d;
    var var_0 = func_1(u_input.a);
    let var_1 = ~var_0.a.x;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-var_0.c.x) == _wgslsmith_f_op_f32(abs(var_0.e.x)), Struct_2(func_1(vec4<i32>(u_input.a.x, func_2().x, -15263i, u_input.e))));
    var var_3 = _wgslsmith_sub_u32(var_0.a.x, (4294967295u >> (1u % 32u)) | _wgslsmith_mult_u32(_wgslsmith_add_u32(var_1, u_input.b), _wgslsmith_sub_u32(abs(var_2.b.a.a.x), _wgslsmith_sub_u32(var_0.a.x, 1u))));
    global0 = 32574u;
    var_3 = reverseBits(var_0.a.x) >> (var_2.b.a.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.e.yy)), _wgslsmith_f_op_vec2_f32(-var_2.b.a.e.ww)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.a.c.x, var_2.b.a.e.x)), var_0.e.yx) - var_0.e.xx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b.a.e.wzx - var_0.e.zzz))));
}

