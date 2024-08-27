struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, arg_0.b, abs(arg_0.a.x), _wgslsmith_sub_u32(arg_0.a.x, arg_0.b))), vec4<u32>(~_wgslsmith_mult_u32(arg_0.b, arg_0.b), max(~25866u, 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, arg_0.b, arg_0.b) & vec4<u32>(10690u, arg_0.b, 25947u, arg_0.b), ~abs(vec4<u32>(4294967295u, 4294967295u, arg_0.b, 4294967295u))), ~24833u));
    let var_1 = arg_0.a;
    var var_2 = firstTrailingBit(max(1u << (var_0.x % 32u), 4294967295u));
    var_2 = reverseBits(4294967295u);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1476f, 866f), vec3<f32>(-751f, 1146f, 1631f), true)) - vec3<f32>(-1607f, -360f, -324f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1170f * 1112f)), -1000f)));
    return var_0.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(select(vec3<u32>(~51793u, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(3151u, 15716u, 4294967295u), vec3<u32>(1u, 33354u, 67650u))), vec3<u32>(~4294967295u, 0u, firstLeadingBit(58411u)), true), func_3(Struct_1(vec3<u32>(4294967295u, 1u, 38848u), 29627u, ~vec3<i32>(arg_0.x, 63606i, u_input.a.x))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.wzx, vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x)), -vec3<i32>(u_input.a.x, u_input.c, -36459i)) | arg_0.wyy), !any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)) | true, firstTrailingBit(u_input.a.yx), Struct_2(min(_wgslsmith_mult_vec4_i32(u_input.b ^ arg_0, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, 13818i, -26587i, 7000i), vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, -2147483647i))), abs(vec4<i32>(u_input.c, 52296i, 0i, u_input.a.x)) | -vec4<i32>(u_input.c, arg_0.x, arg_0.x, 1i)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(46695u, 10292u), vec2<u32>(65030u, 32012u)) << (4294967295u % 32u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, _wgslsmith_div_f32(-622f, 149f), _wgslsmith_div_f32(892f, 573f), _wgslsmith_f_op_f32(step(474f, 581f))))), Struct_1(vec3<u32>(1u, 1u, 1u), 37972u, select(u_input.a >> (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u)), ~vec3<i32>(-1i, arg_0.x, -8661i), true)), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 52485u, 28608u), countOneBits(vec3<u32>(84602u, 29054u, 38953u))), ~(~58332u), min(u_input.b.xxy, u_input.b.yyz))), ~abs(vec2<u32>(~9044u, reverseBits(28208u))));
    var_0 = Struct_3(Struct_1(~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.a.a, var_0.a.a), min(var_0.a.a, vec3<u32>(var_0.d.e.a.x, 4294967295u, var_0.e.x))), 89575u, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_0.x, u_input.a.x), -2147483647i, -39289i), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-28732i, arg_0.x, 11367i), var_0.d.a.yzw), vec3<i32>(arg_0.x, var_0.d.a.x, 2147483647i)))), _wgslsmith_clamp_i32(u_input.b.x, ~_wgslsmith_dot_vec3_i32(var_0.a.c, arg_0.zzw), max(var_0.d.a.x, 13936i)) < (1i ^ arg_0.x), ~vec2<i32>(var_0.c.x, u_input.b.x), Struct_2(_wgslsmith_div_vec4_i32(var_0.d.a, vec4<i32>(-2147483647i, ~u_input.b.x, 2147483647i, -9512i)), 0u, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d.c)))), Struct_1(vec3<u32>(~37917u, countOneBits(32334u), var_0.e.x), var_0.d.b, abs(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.b.x), vec3<i32>(u_input.c, -9785i, arg_0.x)))), var_0.d.d), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.e.x, _wgslsmith_sub_u32(var_0.a.a.x, abs(0u))), var_0.a.a.xy));
    var_0 = Struct_3(Struct_1(select(~(vec3<u32>(var_0.e.x, 7380u, 14321u) ^ var_0.a.a), var_0.a.a, select(vec3<bool>(false, true, var_0.b), vec3<bool>(true, var_0.b, true), vec3<bool>(var_0.b, false, var_0.b))), 43671u, arg_0.yzz), !(!all(vec2<bool>(var_0.b, var_0.b))) || false, reverseBits(~arg_0.zy), var_0.d, ~(~abs(~var_0.a.a.xy)));
    let var_1 = abs(var_0.e);
    let var_2 = -32740i;
    return Struct_4(Struct_3(Struct_1(vec3<u32>(countOneBits(var_1.x), 4263u, var_0.d.d.b), ~var_1.x, arg_0.wxx), -2196f == _wgslsmith_f_op_f32(ceil(793f)), arg_0.zw, var_0.d, countOneBits(firstLeadingBit(var_1))), vec2<i32>(-(abs(var_0.a.c.x) | -10492i), 40865i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(27639i, u_input.b.x, 2147483647i, 1i), max(u_input.b, vec4<i32>(u_input.b.x, -32111i, var_0.a.c.x, u_input.b.x)))), _wgslsmith_div_u32(_wgslsmith_add_u32(26977u, var_0.a.a.x), 1u), select(~(-16209i), min(1i, var_0.d.e.c.x), (var_0.b | all(vec3<bool>(false, false, true))) & true), Struct_3(Struct_1(var_0.a.a & var_0.a.a, ~var_1.x, (vec3<i32>(-8264i, u_input.a.x, 1i) ^ arg_0.zyy) & firstLeadingBit(var_0.d.e.c)), -1306f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1479f), _wgslsmith_f_op_f32(sign(-119f))), _wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(var_0.c.x << (15333u % 32u), var_2 & arg_0.x)), Struct_2(~var_0.d.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_0.a.b, 56679u, 110464u), vec4<u32>(var_1.x, 4294967295u, var_0.a.b, 44839u)) << (~var_1.x % 32u), vec4<f32>(_wgslsmith_f_op_f32(select(-418f, -1165f, var_0.b)), _wgslsmith_f_op_f32(trunc(var_0.d.c.x)), var_0.d.c.x, _wgslsmith_div_f32(var_0.d.c.x, var_0.d.c.x)), var_0.d.d, Struct_1(vec3<u32>(var_0.a.b, 0u, 4294967295u), var_0.a.b, vec3<i32>(-26471i, -14172i, 28565i))), ~(~var_1)));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: bool) -> Struct_5 {
    let var_0 = ~(-max(_wgslsmith_add_i32(~27647i, 23105i << (arg_1.e.d.d.b % 32u)), u_input.a.x));
    var var_1 = arg_1.a.d.d;
    var_1 = Struct_1(vec3<u32>(_wgslsmith_add_u32(24101u, 61821u), func_3(func_2(arg_1.e.d.a).e.a), var_1.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u << (var_1.a.x % 32u), ~27377u, 1u), ~arg_1.a.a.a) ^ ~(var_1.a.x | ~var_1.b), vec3<i32>(~_wgslsmith_clamp_i32(u_input.b.x, 1i, var_1.c.x << (4294967295u % 32u)), var_1.c.x, 0i));
    var_1 = Struct_1(vec3<u32>(arg_1.a.d.b, arg_1.a.d.d.b, ~(~_wgslsmith_mod_u32(var_1.b, 0u))), ~(~var_1.b), vec3<i32>(_wgslsmith_sub_i32(12365i, i32(-1i) * -16637i), -var_0 ^ -3930i, 2147483647i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -1000f) - arg_0) - -375f), -1326f)));
    return Struct_5(arg_0, Struct_2(u_input.b, _wgslsmith_mod_u32(~var_1.b, var_1.b & 33208u) >> (~(0u >> (arg_1.e.a.b % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1654f, arg_1.a.d.c.x, arg_1.e.d.c.x, -187f)))), arg_1.e.a, func_2(countOneBits(vec4<i32>(var_0, 2147483647i, -88627i, var_0))).a.d.d));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    var var_0 = arg_0.a;
    let var_1 = arg_1.b;
    var_0 = countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(_wgslsmith_clamp_u32(1u, 1u, 32913u)), arg_1.d.b, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_1.d.e.a.x, var_0.x, 91846u, var_0.x)), ~vec4<u32>(4294967295u, 4294967295u, 1u, arg_0.b))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.x, arg_1.a.b), _wgslsmith_clamp_vec3_u32(arg_1.a.a, vec3<u32>(var_0.x, var_0.x, var_0.x), arg_0.a), ~vec3<u32>(9665u, var_0.x, var_0.x)), vec3<u32>(~4294967295u, var_0.x, var_0.x >> (15744u % 32u)))));
    let var_2 = func_4(1935f, func_2(vec4<i32>(-2147483647i, -1i, -61871i, -2147483647i)), true);
    let var_3 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.x, 2696u, 44746u), select(arg_1.d.d.a >> (arg_0.a % vec3<u32>(32u)), ~vec3<u32>(var_2.b.e.b, 1u, var_2.b.e.b), vec3<bool>(arg_1.b, var_1, var_1)) << ((arg_1.a.a ^ abs(vec3<u32>(arg_0.b, 52709u, 24724u))) % vec3<u32>(32u))), var_2.b.b, vec3<i32>(-_wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(u_input.b.x, 8997i)), -2147483647i, 43777i));
    return func_2(vec4<i32>(select(arg_0.c.x, var_2.b.a.x, var_1 != arg_1.b), -5915i, -1i, _wgslsmith_dot_vec3_i32(-var_3.c, func_2(arg_1.d.a).a.a.c)) & u_input.b).e.d.e;
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = arg_0.a.xy;
    var_0 = arg_0.a.yz;
    var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.a.x, arg_0.a.x) >> (arg_0.a.yy % vec2<u32>(32u))), ~arg_0.a.xx), vec2<u32>(1u, 1u)), max(vec2<u32>(arg_0.a.x, ~abs(16049u)), abs(arg_0.a.zy)));
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_1 = select(vec3<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), false), select(vec3<bool>(false, -1698f <= var_0, u_input.a.x == _wgslsmith_mod_i32(-1i, -16497i)), vec3<bool>(u_input.b.x != _wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(u_input.a.x, 1i)), true, !(2147483647i < u_input.b.x)), vec3<bool>(func_5(func_1(Struct_1(vec3<u32>(71529u, 15251u, 8170u), 4294967295u, u_input.b.yyz), Struct_3(Struct_1(vec3<u32>(13874u, 50360u, 139481u), 26194u, vec3<i32>(u_input.c, -1i, 9093i)), true, u_input.b.wy, Struct_2(u_input.b, 4294967295u, vec4<f32>(var_0, 1000f, 1000f, 204f), Struct_1(vec3<u32>(37502u, 14469u, 61810u), 13785u, vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x)), Struct_1(vec3<u32>(23713u, 439u, 34249u), 94077u, u_input.b.xwy)), vec2<u32>(4294967295u, 24518u))), _wgslsmith_f_op_f32(934f - -1856f)), func_2(vec4<i32>(u_input.c, u_input.a.x, u_input.b.x, -13546i)).e.b, true)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_2 = select(!select(vec4<bool>(all(vec4<bool>(true, var_1.x, var_1.x, var_1.x)), var_1.x, true, true), select(!vec4<bool>(false, var_1.x, true, false), select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_1.x), vec4<bool>(false, var_1.x, true, false)), select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, true), select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), select(select(select(select(vec4<bool>(true, true, false, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(false, true, true, true)), vec4<bool>(false, var_1.x, true, var_1.x), select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, true, false), var_1.x)), select(vec4<bool>(var_1.x, true, var_1.x, true), select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, false, var_1.x, true)), true), vec4<bool>(true, any(vec3<bool>(var_1.x, var_1.x, var_1.x)), !var_1.x, 2147483647i != u_input.c)), select(!vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(false, all(var_1), any(vec4<bool>(var_1.x, false, false, var_1.x)), true), false), vec4<bool>(_wgslsmith_f_op_f32(var_0 + var_0) == _wgslsmith_f_op_f32(-var_0), true, !(true || var_1.x), !var_1.x & var_1.x)), var_1.x);
    let var_3 = Struct_4(Struct_3(func_4(_wgslsmith_f_op_f32(f32(-1f) * -437f), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -44080i, 2147483647i, u_input.b.x), vec4<i32>(u_input.c, u_input.c, 1i, u_input.c))), all(vec4<bool>(var_2.x, false, var_1.x, false))).b.d, func_2(u_input.b).a.b & false, -vec2<i32>(~u_input.a.x, _wgslsmith_mult_i32(u_input.b.x, u_input.a.x)), func_2(vec4<i32>(-1i) * -u_input.b).a.d, firstTrailingBit(vec2<u32>(4294967295u, ~4294967295u))), vec2<i32>(abs(u_input.a.x), -22303i), 7690u, i32(-1i) * -reverseBits(countOneBits(u_input.b.x)), func_2(_wgslsmith_div_vec4_i32(u_input.b, select(u_input.b, u_input.b, true))).e);
    var var_4 = ~_wgslsmith_add_vec3_u32(select(~vec3<u32>(36002u, var_3.a.e.x, var_3.c), vec3<u32>(100954u, var_3.e.e.x, 42209u) << (_wgslsmith_div_vec3_u32(vec3<u32>(var_3.c, var_3.c, var_3.e.a.a.x), vec3<u32>(90194u, 4294967295u, var_3.e.a.b)) % vec3<u32>(32u)), var_2.x), vec3<u32>(var_3.a.e.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(var_3.a.d.d.a.x, var_3.a.d.e.b), var_3.c), ~(~var_3.e.e.x)));
    var_4 = func_1(Struct_1(var_3.a.d.e.a, ~firstTrailingBit(var_3.e.a.b << (4294967295u % 32u)), -(~u_input.b.ywy)), var_3.a).a;
    let var_5 = func_2(var_3.a.d.a).e.d.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.a.a.a), var_3.a.d.c.wyz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.e.d.c.yxx)) * _wgslsmith_f_op_vec3_f32(-var_3.a.d.c.xzw)), ~min(_wgslsmith_add_vec4_u32(vec4<u32>(60246u, 4294967295u, var_4.x, 0u), ~vec4<u32>(var_3.e.e.x, var_4.x, 56974u, var_4.x)), ~vec4<u32>(var_3.e.e.x, 57228u, var_3.c, var_3.e.d.d.a.x)), ~vec4<u32>(~var_3.a.d.b, ~_wgslsmith_div_u32(0u, var_4.x), ~26998u, var_4.x));
}

