struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<bool>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> u32 {
    return _wgslsmith_clamp_u32(~u_input.c.x, ~firstTrailingBit(_wgslsmith_mod_u32(arg_2.e.x << (4245u % 32u), ~u_input.c.x)), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(4294967295u), arg_2.d.d.x), _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(39819u, 74798u, 4294967295u, 58765u), vec4<u32>(6041u, arg_2.d.b.e, 3134u, arg_2.d.a)))));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> u32 {
    var var_0 = false;
    var_0 = true;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -681f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * -1490f))))), -973f)));
    var_1 = arg_1.x;
    var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    return ~1u;
}

fn func_2() -> Struct_1 {
    var var_0 = min(func_4(~func_3(true, -193f, Struct_4(Struct_3(vec4<i32>(u_input.a, 1i, -1i, u_input.a), u_input.b.yw, vec3<bool>(true, false, true), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec3<i32>(-2147483647i, 0i, u_input.b.x), vec2<bool>(false, false), Struct_2(u_input.c.x, Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.a), vec4<i32>(0i, u_input.b.x, u_input.b.x, 59646i), vec3<f32>(334f, 1436f, 280f), vec3<bool>(true, false, false), u_input.c.x), Struct_1(u_input.b, vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, 32743i), vec3<f32>(512f, 1120f, 1179f), vec3<bool>(false, true, false), 4294967295u), vec3<u32>(20606u, u_input.c.x, 25007u), u_input.c.x), u_input.c)), vec4<f32>(1270f, -1260f, -298f, _wgslsmith_div_f32(-431f, -241f))), ~20350u) | ~u_input.c.x;
    var_0 = 1u;
    var var_1 = Struct_4(Struct_3(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(9229i, u_input.a, u_input.b.x, u_input.a), u_input.b, vec4<bool>(false, true, true, false)), u_input.b | u_input.b), u_input.b), reverseBits(u_input.b.xx), vec3<bool>(~u_input.c.x < 64888u, false, any(vec4<bool>(true, true, true, true))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c.x, 31746u, 0u), ~vec3<u32>(25709u, u_input.c.x, 4294967295u)), ~(vec3<u32>(1u, 53022u, 45047u) ^ vec3<u32>(0u, u_input.c.x, 4294967295u)))), vec3<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(-30220i, 1i)) >> (0u % 32u), firstTrailingBit(u_input.a), u_input.b.x << (func_4(1u, vec4<f32>(-698f, -1000f, -1228f, 334f)) % 32u)), vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true), Struct_2(u_input.c.x, Struct_1(firstTrailingBit(vec4<i32>(-1i, u_input.a, u_input.a, 1i)) & u_input.b, u_input.b, vec3<f32>(1f, 1f, 1f), vec3<bool>(true, true, true), _wgslsmith_add_u32(u_input.c.x | 67246u, ~0u)), Struct_1(-vec4<i32>(-1i, u_input.a, u_input.b.x, -42916i), ~vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.b.x) & u_input.b, vec3<f32>(_wgslsmith_f_op_f32(1078f - -252f), -1033f, _wgslsmith_f_op_f32(-1128f - -502f)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), u_input.b.x == 2147483647i), u_input.c.x), _wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(2005u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 1u, u_input.c.x)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<u32>(u_input.c.x, 1u, u_input.c.x))), 57885u), u_input.c & ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 28487u))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.d.b.c.x) > -2225f;
    let var_3 = Struct_4(Struct_3((countOneBits(vec4<i32>(31605i, -10725i, 1i, 13261i)) & -var_1.d.c.a) << (~(vec4<u32>(u_input.c.x, 1831u, u_input.c.x, 1u) >> (vec4<u32>(4294967295u, 0u, u_input.c.x, 54278u) % vec4<u32>(32u))) % vec4<u32>(32u)), var_1.a.a.yz, !var_1.d.c.d, var_1.d.d), u_input.b.xxz, vec2<bool>(var_1.a.c.x, (firstLeadingBit(3418i) >= max(var_1.b.x, u_input.a)) && all(select(vec4<bool>(true, var_1.a.c.x, var_1.c.x, true), vec4<bool>(true, true, var_1.a.c.x, false), var_1.d.c.d.x))), var_1.d, vec2<u32>(countOneBits(func_4(_wgslsmith_mod_u32(var_1.d.e, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1804f, var_1.d.c.c.x, var_1.d.b.c.x, -524f)))), u_input.c.x));
    return Struct_1(u_input.b, var_1.d.b.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.d.b.c.x)) + -1065f), _wgslsmith_f_op_f32(-281f - var_1.d.b.c.x), _wgslsmith_f_op_f32(f32(-1f) * -370f)), _wgslsmith_f_op_vec3_f32(var_3.d.c.c - vec3<f32>(var_3.d.c.c.x, -1153f, -1140f)), false)), var_1.a.c, 4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> u32 {
    let var_0 = -reverseBits(_wgslsmith_add_i32(0i, -1i));
    return _wgslsmith_sub_u32(u_input.c.x, 1u);
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2.c.a.x;
    var var_1 = !(countOneBits(firstLeadingBit(arg_0)) > abs(_wgslsmith_mod_u32(~0u, ~25772u)));
    let var_2 = arg_1;
    let var_3 = (~(~vec3<u32>(u_input.c.x, arg_1.a.d.x, 1u) << (arg_2.d % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), u_input.c), abs(arg_2.d.xx)), 4294967295u, 1u) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, arg_0, 36137u)), vec3<u32>(func_2().e, firstLeadingBit(arg_2.d.x) >> (24201u % 32u), func_5(Struct_1(arg_1.a.a, arg_1.d.c.a, arg_1.d.b.c, arg_2.c.d, u_input.c.x), Struct_2(var_2.e.x, var_2.d.c, arg_1.d.b, var_2.d.d, arg_1.d.a), -2096f >= arg_2.c.c.x, arg_1.a)));
    var_0 = -2147483647i;
    return Struct_2(max(~11643u, 1u << (arg_1.d.d.x % 32u)), Struct_1(~countOneBits(-arg_2.c.b), firstTrailingBit(abs(vec4<i32>(arg_2.b.b.x, u_input.a, var_2.d.b.a.x, u_input.b.x))), var_2.d.b.c, select(!(!var_2.d.b.d), select(var_2.d.b.d, func_2().d, vec3<bool>(false, arg_1.a.c.x, arg_1.d.c.d.x)), !arg_1.d.c.d), ~50360u), Struct_1(u_input.b | arg_1.a.a, arg_2.c.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1417f, 164f, 1000f), _wgslsmith_f_op_vec3_f32(exp2(arg_1.d.b.c)), true)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(583f, arg_2.c.c.x, 1719f), vec3<f32>(235f, -2197f, -2077f), arg_1.a.c.x))), select(var_2.a.c, vec3<bool>(false, all(var_2.c), any(vec4<bool>(arg_1.a.c.x, true, arg_2.c.d.x, false))), func_2().d), 140556u), select(~(~_wgslsmith_clamp_vec3_u32(arg_2.d, arg_1.a.d, arg_2.d)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_3.x, 0u), u_input.c.x << (arg_2.b.e % 32u), ~var_3.x), _wgslsmith_div_vec3_u32(arg_1.d.d, ~var_2.d.d), ~vec3<u32>(var_2.d.a, 4294967295u, 10451u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(49196u, arg_1.e.x, var_3.x))), true), func_4(arg_2.e, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1221f, var_2.d.b.c.x, -1680f, arg_1.d.c.c.x)))))))));
}

fn func_1() -> bool {
    var var_0 = func_6(firstLeadingBit(func_5(func_2(), Struct_2(u_input.c.x, Struct_1(u_input.b, vec4<i32>(0i, u_input.a, -9357i, u_input.a), vec3<f32>(1228f, -1262f, 696f), vec3<bool>(true, true, false), u_input.c.x), func_2(), ~vec3<u32>(u_input.c.x, 21073u, u_input.c.x), 37360u), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), Struct_3(-vec4<i32>(u_input.b.x, -40709i, 31802i, 17472i), ~vec2<i32>(5168i, u_input.b.x), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<u32>(u_input.c.x, u_input.c.x, 0u)))), Struct_4(Struct_3(countOneBits(u_input.b), u_input.b.xw, vec3<bool>(u_input.a <= u_input.b.x, true, false), select(abs(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)), abs(vec3<u32>(34690u, 1u, 4294967295u)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), vec3<i32>(_wgslsmith_mult_i32(abs(55759i), _wgslsmith_div_i32(u_input.b.x, 0i)), abs(~u_input.b.x), 0i), vec2<bool>(true, true), Struct_2(~(u_input.c.x >> (u_input.c.x % 32u)), func_2(), Struct_1(u_input.b | vec4<i32>(u_input.a, 2147483647i, u_input.a, -4652i), max(u_input.b, u_input.b), vec3<f32>(785f, -609f, -294f), vec3<bool>(true, true, true), func_2().e), ~vec3<u32>(10985u, u_input.c.x, 0u), u_input.c.x), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 44777u), u_input.c)), Struct_2(_wgslsmith_mult_u32(0u, u_input.c.x), Struct_1(countOneBits(~vec4<i32>(1i, 2147483647i, u_input.a, -1i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.b.x, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), -27280i & u_input.a, 1i, -14104i), _wgslsmith_f_op_vec3_f32(vec3<f32>(349f, -1095f, 109f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-118f, -614f, 572f), vec3<f32>(-1112f, 342f, 689f)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2().d), ~(~102012u)), Struct_1(vec4<i32>(countOneBits(1i), -6978i, -2147483647i, u_input.a), _wgslsmith_add_vec4_i32(-u_input.b, ~u_input.b), vec3<f32>(-598f, _wgslsmith_f_op_f32(sign(916f)), -865f), vec3<bool>(all(vec3<bool>(true, true, true)), false, true), 1u), vec3<u32>(u_input.c.x, 1u, 1u), ~6626u));
    var var_1 = Struct_4(Struct_3(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.b.a.x, u_input.b.x, u_input.a, var_0.c.a.x), ~var_0.b.b), vec4<i32>(-1i) * -var_0.b.a), _wgslsmith_mult_vec2_i32(u_input.b.yy & vec2<i32>(u_input.b.x, -41945i), ~var_0.b.a.zx) | ~var_0.b.b.xx, vec3<bool>(var_0.c.d.x, all(vec2<bool>(true, true)) | true, true), var_0.d), max(min(var_0.b.a.yxw, select(u_input.b.zzw, vec3<i32>(-42504i, -1i, -21472i), true)), vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i, var_0.c.a.x), _wgslsmith_mod_i32(0i, var_0.c.b.x)), -var_0.b.a.x)), var_0.b.d.xz, func_6(u_input.c.x & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.d, var_0.d), ~4294967295u), Struct_4(Struct_3(vec4<i32>(u_input.b.x, var_0.c.a.x, var_0.b.a.x, -11670i), vec2<i32>(u_input.a, 3235i), vec3<bool>(var_0.c.d.x, false, var_0.b.d.x), ~vec3<u32>(u_input.c.x, 29256u, u_input.c.x)), var_0.c.b.zzw, select(func_2().d.yx, !var_0.c.d.xx, !var_0.b.d.x), func_6(~var_0.d.x, Struct_4(Struct_3(var_0.b.b, vec2<i32>(u_input.b.x, var_0.b.a.x), var_0.b.d, vec3<u32>(var_0.b.e, 1u, 47670u)), vec3<i32>(u_input.b.x, -18194i, 32212i), var_0.c.d.xz, Struct_2(47469u, var_0.c, var_0.c, var_0.d, var_0.a), vec2<u32>(u_input.c.x, u_input.c.x)), Struct_2(u_input.c.x, var_0.c, var_0.b, var_0.d, 4294967295u)), vec2<u32>(countOneBits(var_0.e), var_0.d.x)), func_6(_wgslsmith_div_u32(func_6(1063u, Struct_4(Struct_3(u_input.b, vec2<i32>(-33138i, 15003i), var_0.c.d, vec3<u32>(0u, var_0.b.e, 1u)), var_0.c.b.wwy, var_0.c.d.yy, Struct_2(var_0.b.e, Struct_1(vec4<i32>(-7590i, 0i, 0i, 0i), u_input.b, vec3<f32>(var_0.c.c.x, var_0.c.c.x, 280f), var_0.c.d, var_0.d.x), Struct_1(var_0.b.b, vec4<i32>(-56905i, -2147483647i, u_input.a, var_0.c.a.x), var_0.c.c, var_0.c.d, u_input.c.x), var_0.d, u_input.c.x), vec2<u32>(u_input.c.x, 0u)), Struct_2(17462u, var_0.c, var_0.c, vec3<u32>(1u, var_0.c.e, var_0.d.x), 33143u)).a, ~u_input.c.x), Struct_4(Struct_3(u_input.b, u_input.b.xw, var_0.b.d, var_0.d), vec3<i32>(2147483647i, var_0.c.a.x, -2147483647i), select(vec2<bool>(var_0.c.d.x, true), vec2<bool>(false, false), var_0.b.d.x), func_6(47982u, Struct_4(Struct_3(vec4<i32>(-1i, u_input.b.x, var_0.c.a.x, var_0.c.a.x), u_input.b.yy, var_0.c.d, var_0.d), vec3<i32>(0i, u_input.a, -1i), var_0.b.d.yx, Struct_2(var_0.b.e, Struct_1(vec4<i32>(-1i, u_input.a, -19282i, 2147483647i), u_input.b, var_0.c.c, var_0.c.d, u_input.c.x), Struct_1(vec4<i32>(-46291i, -995i, 2147483647i, 2147483647i), u_input.b, vec3<f32>(var_0.b.c.x, var_0.c.c.x, var_0.b.c.x), var_0.b.d, u_input.c.x), vec3<u32>(73675u, u_input.c.x, 0u), 0u), vec2<u32>(3987u, var_0.d.x)), Struct_2(1u, var_0.b, Struct_1(vec4<i32>(1i, -37572i, -53418i, 1i), vec4<i32>(47233i, -44047i, -32008i, -31737i), vec3<f32>(var_0.c.c.x, -1634f, -465f), var_0.c.d, 4294967295u), var_0.d, u_input.c.x)), ~vec2<u32>(u_input.c.x, 22488u)), func_6(var_0.b.e, Struct_4(Struct_3(var_0.b.a, vec2<i32>(var_0.c.a.x, u_input.a), vec3<bool>(true, var_0.c.d.x, true), var_0.d), var_0.c.a.xyz, vec2<bool>(var_0.b.d.x, var_0.b.d.x), Struct_2(15314u, Struct_1(u_input.b, var_0.b.a, vec3<f32>(var_0.b.c.x, 602f, 356f), var_0.c.d, u_input.c.x), Struct_1(vec4<i32>(-11410i, var_0.c.b.x, u_input.b.x, var_0.c.b.x), var_0.b.a, var_0.b.c, var_0.b.d, var_0.a), var_0.d, var_0.e), var_0.d.yy), Struct_2(18314u, var_0.c, var_0.b, var_0.d, 15730u)))), max(var_0.d.xy, _wgslsmith_mod_vec2_u32(~(~vec2<u32>(5945u, u_input.c.x)), vec2<u32>(4294967295u | u_input.c.x, var_0.c.e))));
    let var_2 = func_6(var_1.a.d.x, Struct_4(var_1.a, min(select(vec3<i32>(-15074i, var_0.b.a.x, 4962i), var_0.b.a.ywz, var_0.b.d.x), vec3<i32>(_wgslsmith_clamp_i32(-3881i, u_input.a, -32369i), -var_1.d.c.b.x, var_0.c.a.x)), vec2<bool>(0i <= ~var_1.d.b.a.x, true | (var_0.c.b.x != var_1.d.b.b.x)), var_1.d, abs(u_input.c)), func_6(~4294967295u, Struct_4(var_1.a, vec3<i32>(21803i, -1i, -38713i), func_6(0u, Struct_4(Struct_3(var_0.b.b, var_1.d.b.a.ww, vec3<bool>(var_0.c.d.x, var_0.b.d.x, true), vec3<u32>(u_input.c.x, 32873u, 37358u)), vec3<i32>(var_0.c.b.x, 0i, 2147483647i), vec2<bool>(var_0.c.d.x, var_0.b.d.x), Struct_2(u_input.c.x, var_1.d.c, var_0.c, vec3<u32>(u_input.c.x, var_1.d.a, var_0.d.x), 79578u), var_0.d.zx), var_1.d).c.d.yy, var_1.d, ~max(u_input.c, vec2<u32>(var_1.e.x, 85495u))), func_6(~(4294967295u << (0u % 32u)), Struct_4(Struct_3(var_0.b.a, var_0.b.b.xw, vec3<bool>(true, var_1.a.c.x, false), var_1.a.d), vec3<i32>(u_input.b.x, 2147483647i, -1i), vec2<bool>(var_1.d.c.d.x, false), func_6(var_0.e, Struct_4(var_1.a, u_input.b.xyy, vec2<bool>(var_1.a.c.x, var_0.b.d.x), Struct_2(1u, Struct_1(vec4<i32>(-22534i, 38587i, 0i, 2147483647i), u_input.b, var_0.b.c, vec3<bool>(var_0.b.d.x, var_1.d.c.d.x, var_0.c.d.x), 23089u), var_0.c, vec3<u32>(4294967295u, var_0.d.x, var_0.e), 1u), vec2<u32>(0u, u_input.c.x)), Struct_2(0u, Struct_1(u_input.b, var_0.c.a, vec3<f32>(761f, -809f, var_0.b.c.x), vec3<bool>(false, true, var_1.c.x), u_input.c.x), var_1.d.b, var_0.d, 91214u)), vec2<u32>(var_1.d.c.e, 0u)), Struct_2(u_input.c.x, var_1.d.c, var_1.d.c, abs(var_1.a.d), 0u)))).b;
    var var_3 = vec2<i32>(-17399i, 34455i);
    var_1 = Struct_4(var_1.a, vec3<i32>(-2147483647i, var_2.b.x, _wgslsmith_mod_i32(var_0.b.a.x, -6341i) ^ (var_3.x & _wgslsmith_sub_i32(-2147483647i, -2147483647i))), var_0.c.d.yy, Struct_2(~reverseBits(firstTrailingBit(0u)), var_0.c, Struct_1(~vec4<i32>(-12918i, -2147483647i, u_input.b.x, -20279i), -_wgslsmith_add_vec4_i32(var_0.b.b, vec4<i32>(61774i, u_input.b.x, 0i, -2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.x), -1836f, var_2.c.x), func_2().d, reverseBits(0u)), ~_wgslsmith_clamp_vec3_u32(~var_0.d, _wgslsmith_sub_vec3_u32(var_1.a.d, vec3<u32>(var_1.e.x, var_1.e.x, u_input.c.x)), vec3<u32>(0u, var_2.e, 29277u)), var_1.e.x), select(vec2<u32>(20305u, 1u), u_input.c, vec2<bool>((true | var_1.d.b.d.x) == false, any(func_2().d))));
    return all(vec4<bool>(var_1.c.x, var_0.c.d.x, (1u < _wgslsmith_mod_u32(var_0.b.e, 118742u)) || (1i >= var_2.b.x), var_3.x >= ~min(var_2.b.x, var_2.b.x)));
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = Struct_4(Struct_3(firstLeadingBit(countOneBits(vec4<i32>(-2147483647i, arg_0.c.b.x, 2147483647i, -1i))), _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.b.xz ^ vec2<i32>(u_input.b.x, arg_0.b.a.x)), ~u_input.b.ww), !vec3<bool>(true, all(vec4<bool>(arg_0.c.d.x, false, true, true)), !arg_0.c.d.x), vec3<u32>(1u, 1u ^ ~u_input.c.x, countOneBits(arg_1) >> (min(53355u, 4294967295u) % 32u))), vec3<i32>(-42605i, _wgslsmith_add_i32(arg_2, arg_0.b.a.x), 0i), select(vec2<bool>(arg_0.c.d.x, true), arg_0.b.d.xx, true), arg_0, func_6(1u & ~func_2().e, Struct_4(Struct_3(-u_input.b, vec2<i32>(arg_2, u_input.b.x), select(vec3<bool>(arg_0.c.d.x, arg_0.c.d.x, true), vec3<bool>(false, arg_0.c.d.x, arg_0.b.d.x), false), arg_0.d), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 19446i, arg_2), vec3<i32>(1i, arg_0.b.b.x, 1i)), countOneBits(vec3<i32>(arg_0.c.a.x, u_input.b.x, arg_0.c.b.x))), vec2<bool>(arg_0.b.d.x, all(vec3<bool>(arg_0.c.d.x, true, arg_0.c.d.x))), Struct_2(u_input.c.x, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, arg_2), vec4<i32>(2147483647i, 16130i, -40761i, 3828i), vec3<f32>(arg_0.b.c.x, arg_0.b.c.x, -1000f), arg_0.c.d, arg_0.d.x), arg_0.c, select(arg_0.d, vec3<u32>(0u, arg_0.d.x, 92650u), false), 4294967295u), u_input.c), func_6(func_2().e, Struct_4(Struct_3(vec4<i32>(u_input.a, arg_2, arg_0.c.a.x, u_input.a), vec2<i32>(arg_0.c.a.x, arg_2), vec3<bool>(arg_0.b.d.x, true, false), arg_0.d), ~vec3<i32>(u_input.a, arg_0.b.a.x, u_input.b.x), vec2<bool>(arg_0.b.d.x, false), Struct_2(arg_0.d.x, arg_0.b, Struct_1(u_input.b, vec4<i32>(arg_0.b.a.x, 1i, arg_0.c.b.x, arg_0.b.b.x), arg_0.b.c, vec3<bool>(arg_0.c.d.x, false, arg_0.b.d.x), 76339u), vec3<u32>(0u, arg_0.c.e, 1u), arg_0.a), firstTrailingBit(vec2<u32>(u_input.c.x, 92334u))), arg_0)).d.zx);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.c));
    var_0 = Struct_4(var_0.a, u_input.b.yxz, vec2<bool>(-2147483647i != arg_0.b.b.x, !(!arg_0.b.d.x)), arg_0, ~var_0.a.d.yy);
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(820f)), -1248f), vec2<f32>(-997f, -986f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.c.c.xz) - var_0.d.c.c.yx) + vec2<f32>(_wgslsmith_f_op_f32(-533f - var_0.d.c.c.x), _wgslsmith_f_op_f32(var_0.d.c.c.x * var_0.d.b.c.x)))));
    var_0 = Struct_4(Struct_3(abs(arg_0.c.b), -_wgslsmith_mod_vec2_i32(u_input.b.xw, -var_0.b.xz), select(!select(arg_0.b.d, vec3<bool>(true, false, arg_0.c.d.x), var_0.a.c.x), vec3<bool>(!arg_0.c.d.x, true, true), arg_0.b.d), abs(arg_0.d)), arg_0.c.a.wwx, var_0.d.c.d.zx, func_6(arg_1, Struct_4(Struct_3(arg_0.b.b, vec2<i32>(u_input.b.x, arg_2) >> (var_0.a.d.zz % vec2<u32>(32u)), select(var_0.a.c, var_0.a.c, arg_0.b.d), var_0.a.d), var_0.b, select(arg_0.c.d.xx, select(vec2<bool>(arg_0.b.d.x, false), var_0.d.c.d.xy, vec2<bool>(false, true)), func_6(var_0.a.d.x, Struct_4(var_0.a, var_0.b, vec2<bool>(true, true), Struct_2(144863u, var_0.d.c, Struct_1(vec4<i32>(-19552i, 10904i, 12540i, 2147483647i), vec4<i32>(-1i, var_0.b.x, 1i, -1i), vec3<f32>(-599f, -757f, -1000f), arg_0.c.d, 1u), arg_0.d, 4294967295u), u_input.c), Struct_2(4294967295u, arg_0.b, var_0.d.c, var_0.d.d, 23035u)).b.d.x), arg_0, vec2<u32>(arg_1, 0u)), var_0.d), countOneBits(arg_0.d.zx));
    return any(vec3<bool>(true, all(vec4<bool>(arg_0.b.d.x, true, true, any(vec4<bool>(true, true, arg_0.c.d.x, var_0.c.x)))), func_1()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = any(select(select(vec3<bool>(true, var_0, all(vec3<bool>(var_0, true, true))), vec3<bool>(var_0, var_0 & var_0, true), vec3<bool>(any(vec2<bool>(true, var_0)), all(vec2<bool>(true, var_0)), u_input.c.x < 56366u)), !vec3<bool>(any(vec4<bool>(false, var_0, true, false)), var_0, var_0), var_0));
    var var_2 = ~(~vec4<u32>(1u, 1u, 79427u, 4026u) & vec4<u32>(u_input.c.x, select(firstTrailingBit(u_input.c.x), countOneBits(97863u), var_0 && false), u_input.c.x & u_input.c.x, u_input.c.x));
    var_1 = func_7(Struct_2(11010u, Struct_1(u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a), ~vec4<i32>(u_input.b.x, -44005i, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1305f, 699f, 667f))), vec3<bool>(any(vec3<bool>(var_0, true, true)), !var_0, func_1()), ~(~u_input.c.x)), func_6(11420u, Struct_4(Struct_3(u_input.b, vec2<i32>(33760i, u_input.b.x), vec3<bool>(var_0, true, false), var_2.zxw), vec3<i32>(0i, -4533i, 16123i) & u_input.b.yxz, select(vec2<bool>(true, false), vec2<bool>(true, false), var_0), Struct_2(71441u, Struct_1(u_input.b, u_input.b, vec3<f32>(432f, 1000f, 231f), vec3<bool>(false, var_0, true), 4294967295u), Struct_1(u_input.b, u_input.b, vec3<f32>(-184f, 189f, -1500f), vec3<bool>(false, true, false), u_input.c.x), var_2.zxw, var_2.x), vec2<u32>(u_input.c.x, 4294967295u)), func_6(67653u, Struct_4(Struct_3(vec4<i32>(u_input.b.x, 23224i, u_input.b.x, 2147483647i), u_input.b.zz, vec3<bool>(false, var_0, var_0), vec3<u32>(var_2.x, 6898u, u_input.c.x)), u_input.b.zwz, vec2<bool>(var_0, false), Struct_2(98364u, Struct_1(vec4<i32>(0i, 0i, u_input.a, 7744i), vec4<i32>(u_input.b.x, 20843i, u_input.b.x, 0i), vec3<f32>(-857f, -1000f, -774f), vec3<bool>(false, var_0, false), 4294967295u), Struct_1(vec4<i32>(54294i, -19459i, u_input.b.x, 0i), vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x), vec3<f32>(-1205f, 1333f, -882f), vec3<bool>(var_0, var_0, false), 1u), vec3<u32>(18605u, 17511u, u_input.c.x), var_2.x), vec2<u32>(u_input.c.x, 26231u)), func_6(1u, Struct_4(Struct_3(vec4<i32>(1i, u_input.b.x, u_input.b.x, 0i), vec2<i32>(-1i, u_input.b.x), vec3<bool>(var_0, var_0, true), var_2.xww), vec3<i32>(u_input.a, u_input.b.x, u_input.a), vec2<bool>(false, var_0), Struct_2(1677u, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 1i, 28426i), vec3<f32>(-306f, -419f, 1000f), vec3<bool>(true, false, var_0), u_input.c.x), Struct_1(u_input.b, u_input.b, vec3<f32>(-686f, -936f, 1788f), vec3<bool>(true, var_0, false), 4294967295u), vec3<u32>(4294967295u, 1u, 72370u), u_input.c.x), u_input.c), Struct_2(13746u, Struct_1(vec4<i32>(u_input.a, 32613i, 1i, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec3<f32>(425f, 448f, 1000f), vec3<bool>(false, true, var_0), 4294967295u), Struct_1(vec4<i32>(u_input.a, -592i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, -22931i), vec3<f32>(1116f, -339f, 1427f), vec3<bool>(true, true, false), 88585u), var_2.yyy, var_2.x)))).c, ~_wgslsmith_sub_vec3_u32(var_2.zyy << (vec3<u32>(u_input.c.x, var_2.x, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(51577u, var_2.x, 0u)), _wgslsmith_mult_u32(_wgslsmith_add_u32(var_2.x, func_3(true, -1925f, Struct_4(Struct_3(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -2147483647i), vec2<i32>(u_input.a, u_input.a), vec3<bool>(var_0, true, var_0), var_2.zzy), vec3<i32>(u_input.b.x, u_input.a, u_input.a), vec2<bool>(false, false), Struct_2(0u, Struct_1(u_input.b, vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.b.x), vec3<f32>(-964f, 276f, -901f), vec3<bool>(var_0, false, false), var_2.x), Struct_1(u_input.b, u_input.b, vec3<f32>(-1000f, 887f, -791f), vec3<bool>(false, true, false), u_input.c.x), var_2.zyz, u_input.c.x), vec2<u32>(var_2.x, 61942u)))), max(u_input.c.x, func_3(false, 972f, Struct_4(Struct_3(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 2147483647i), vec2<i32>(u_input.b.x, u_input.b.x), vec3<bool>(var_0, true, var_0), vec3<u32>(u_input.c.x, var_2.x, u_input.c.x)), vec3<i32>(2147483647i, -5374i, 32265i), vec2<bool>(var_0, var_0), Struct_2(var_2.x, Struct_1(vec4<i32>(11102i, 2147483647i, 9540i, u_input.a), vec4<i32>(-6346i, 76262i, 42495i, u_input.a), vec3<f32>(737f, -476f, -1156f), vec3<bool>(true, var_0, var_0), u_input.c.x), Struct_1(u_input.b, vec4<i32>(23957i, 24051i, -9804i, 27543i), vec3<f32>(473f, 1958f, -600f), vec3<bool>(var_0, var_0, true), 0u), vec3<u32>(u_input.c.x, 0u, u_input.c.x), u_input.c.x), vec2<u32>(1u, 0u)))))), ~func_2().e, ~(-32510i) | u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(min(vec4<u32>(~var_2.x, var_2.x << (u_input.c.x % 32u), var_2.x, _wgslsmith_clamp_u32(var_2.x, 45755u, 0u)), ~(~vec4<u32>(var_2.x, u_input.c.x, var_2.x, 36153u))), max(select(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 43288u), ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x), vec4<bool>(false, false, false, var_0)), abs(vec4<u32>(1u, 16083u, var_2.x, 0u)))), 1u);
}

