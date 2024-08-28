struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_3(0u, u_input.a.x);
    let var_1 = reverseBits(7060i);
    let var_2 = u_input.a;
    let var_3 = Struct_1(vec2<bool>(true, true), max(_wgslsmith_mod_i32(-18338i, var_1 ^ -arg_0.x), arg_1.c), vec2<f32>(arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.d.x)) + arg_1.d.x))), arg_0, -(~1i));
    let var_4 = Struct_4(select(select(!select(vec3<bool>(arg_1.b, arg_1.a.x, false), vec3<bool>(true, false, arg_1.b), arg_1.a.x), arg_1.a, var_3.a.x), !arg_1.a, !(!(var_0.a >= u_input.a.x))), all(select(!vec4<bool>(true, var_3.a.x, true, false), !(!vec4<bool>(true, arg_1.a.x, true, true)), vec4<bool>(true, arg_1.b, u_input.a.x > 4294967295u, !arg_1.a.x))), ~12377i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_div_f32(var_3.c.x, -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, arg_1.d.x)), _wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.d.x)) + arg_1.d.x)))));
    return u_input.b;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = ~(-(max(vec4<i32>(u_input.b, arg_0.x, 47663i, 15542i), vec4<i32>(-2147483647i, 1i, u_input.b, arg_0.x)) << ((vec4<u32>(u_input.a.x, u_input.a.x, 14327u, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u)))) & vec4<i32>(arg_0.x | _wgslsmith_mod_i32(arg_0.x, u_input.c.x), 85747i, -u_input.b, 96424i);
    var_0 = vec4<i32>(-1i, arg_0.x, arg_0.x, -20954i);
    let var_1 = firstTrailingBit(~vec3<i32>(0i, var_0.x, -func_3(vec4<i32>(u_input.b, 0i, 2147483647i, 42953i), Struct_4(vec3<bool>(false, false, false), true, -52809i, vec4<f32>(-1000f, -422f, -680f, 304f)))));
    return u_input.a.x;
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), u_input.c.x, vec2<f32>(_wgslsmith_f_op_f32(-776f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1692f + 719f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-289f * -979f), 1f)) - _wgslsmith_f_op_f32(-691f * _wgslsmith_f_op_f32(step(-411f, -279f))))), ~_wgslsmith_add_vec4_i32(max(firstTrailingBit(vec4<i32>(u_input.c.x, u_input.b, u_input.b, u_input.b)), ~vec4<i32>(18918i, u_input.b, 9972i, -5089i)), -vec4<i32>(u_input.c.x, u_input.c.x, 12688i, u_input.c.x)), select(min(_wgslsmith_clamp_i32(0i, u_input.b, 2744i), _wgslsmith_mult_i32(9058i, u_input.c.x)) ^ u_input.b, abs(_wgslsmith_div_i32(39362i, u_input.c.x)), false));
    var var_1 = Struct_2(Struct_1(vec2<bool>(!var_0.a.x, !select(true, false, false)), -2147483647i, _wgslsmith_f_op_vec2_f32(step(var_0.c, var_0.c)), countOneBits(vec4<i32>(3487i, 0i, -1i, -6128i) | var_0.d), u_input.c.x), vec3<u32>(countOneBits(~(~7895u)), 65444u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x ^ u_input.a.x, ~u_input.a.x), _wgslsmith_add_u32(min(u_input.a.x, 33562u), 11031u))), Struct_1(select(vec2<bool>(true, true), var_0.a, var_0.a.x), func_3(max(select(vec4<i32>(u_input.b, 0i, var_0.d.x, var_0.d.x), vec4<i32>(u_input.c.x, u_input.b, -18605i, u_input.b), var_0.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_0.b, u_input.c.x, var_0.d.x), vec4<i32>(-2706i, 0i, -2147483647i, 45055i))), Struct_4(select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(true, true, true)), !var_0.a.x, _wgslsmith_add_i32(40063i, 6638i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-771f, -385f, var_0.c.x, var_0.c.x), vec4<f32>(var_0.c.x, -343f, -1710f, 249f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(155f, var_0.c.x)))), var_0.c)), var_0.d, 2206i << (u_input.a.x % 32u)));
    var var_2 = var_0.c;
    var_0 = Struct_1(!vec2<bool>(var_1.a.a.x, !var_0.a.x == (6883i <= u_input.b)), u_input.b, var_1.c.c, vec4<i32>(-(~u_input.c.x), -1i, func_3(firstTrailingBit(var_0.d), Struct_4(!vec3<bool>(false, false, var_0.a.x), select(false, false, var_0.a.x), var_1.a.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1415f, 374f, var_2.x, var_0.c.x)))), i32(-1i) * -57026i), -1i);
    var var_3 = firstTrailingBit(reverseBits(_wgslsmith_mod_vec3_u32(var_1.b, vec3<u32>(1u, var_1.b.x, arg_0.b)) ^ _wgslsmith_add_vec3_u32(u_input.a, u_input.a)) & var_1.b);
    return Struct_2(var_1.c, ~abs(var_1.b), Struct_1(var_0.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(~17985i, firstLeadingBit(0i)), -1i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -484f)))), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, _wgslsmith_clamp_i32(1i, 41539i, 11435i), var_1.c.b, -13282i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-4884i, 0i, var_1.c.e, 12815i), ~var_0.d, _wgslsmith_clamp_vec4_i32(var_1.c.d, var_1.c.d, var_0.d))), var_0.d.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(~(~arg_0.b.x & func_4(Struct_3(49157u, 8457u)).b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.x, u_input.a.x) | arg_0.b.zy, _wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, 75378u))), arg_0.b.zx) << (u_input.a.x % 32u));
    var var_1 = _wgslsmith_div_f32(func_4(Struct_3(13912u, firstLeadingBit(1571u))).c.c.x, arg_1.c.x);
    var var_2 = Struct_1(vec2<bool>(2147483647i != u_input.c.x, arg_1.a.x), _wgslsmith_dot_vec2_i32(~select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(arg_1.d.x, -2147483647i)), ~u_input.c, select(vec2<bool>(arg_0.c.a.x, true), arg_0.a.a, arg_1.a.x)), ~_wgslsmith_mult_vec2_i32(~vec2<i32>(15697i, -1i), max(vec2<i32>(arg_0.a.e, 1i), vec2<i32>(-1i, u_input.b)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_div_f32(arg_0.c.c.x, arg_1.c.x)), 789f), arg_0.c.c.x), ~reverseBits(vec4<i32>(_wgslsmith_add_i32(1i, u_input.b), i32(-1i) * -54957i, -u_input.b, ~1i)), -23534i);
    var var_3 = vec2<u32>(_wgslsmith_mult_u32(abs(0u << (arg_0.b.x % 32u)), _wgslsmith_mod_u32(var_0.b, 62736u)), firstLeadingBit(~arg_0.b.x) << (((~u_input.a.x | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 4294967295u, u_input.a.x, 10578u), vec4<u32>(arg_0.b.x, u_input.a.x, u_input.a.x, 1u))) & _wgslsmith_sub_u32(arg_0.b.x >> (4294967295u % 32u), reverseBits(0u))) % 32u));
    var var_4 = select(~_wgslsmith_mod_u32(36317u, arg_0.b.x), 44692u, any(!vec3<bool>(var_2.a.x, var_2.a.x, false)));
    return func_4(Struct_3(var_3.x, ~var_0.a)).a;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2(func_5(func_4(Struct_3(func_2(vec2<i32>(1i, -2147483647i)), ~arg_1.x)), arg_2), u_input.a, Struct_1(vec2<bool>(false, true), i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0.x) + _wgslsmith_f_op_vec2_f32(arg_0 * arg_0))), arg_2.d, ~_wgslsmith_dot_vec4_i32(arg_2.d, vec4<i32>(arg_2.d.x, 0i, -44622i, arg_2.b)) & _wgslsmith_dot_vec3_i32(-vec3<i32>(17482i, u_input.b, arg_2.b), ~vec3<i32>(-31019i, -26149i, 0i))));
    let var_1 = _wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1253f, 1000f)) * var_0.a.c.x) - var_0.a.c.x));
    let var_2 = _wgslsmith_f_op_f32(arg_2.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
    var var_3 = select(43738u >> (~(reverseBits(u_input.a.x) >> (abs(0u) % 32u)) % 32u), u_input.a.x, all(vec2<bool>(firstTrailingBit(arg_1.x) <= var_0.b.x, !var_0.a.a.x)));
    return ~var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~55139u;
    let var_1 = vec4<u32>(firstTrailingBit(u_input.a.x), ((u_input.a.x ^ u_input.a.x) >> (1u % 32u)) & firstTrailingBit(u_input.a.x), abs(~(u_input.a.x >> (u_input.a.x % 32u))), _wgslsmith_sub_u32(u_input.a.x << (u_input.a.x % 32u), func_1(vec2<f32>(238f, 854f), vec4<u32>(22456u, u_input.a.x, 4294967295u, u_input.a.x), Struct_1(vec2<bool>(false, true), u_input.c.x, vec2<f32>(-1509f, 887f), vec4<i32>(u_input.c.x, 0i, -62597i, 17657i), -2147483647i))) | u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.a.zx, vec2<u32>(4294967295u, 9465u))), u_input.a.yz), func_4(Struct_3(u_input.a.x, max(68626u, u_input.a.x))).b.x) % vec4<u32>(32u));
    var var_2 = (~firstLeadingBit(65374u) << (_wgslsmith_add_u32(var_1.x, _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(u_input.a, u_input.a))) % 32u)) & (u_input.a.x & ~u_input.a.x);
    var var_3 = Struct_4(vec3<bool>(!(func_5(Struct_2(Struct_1(vec2<bool>(true, false), u_input.b, vec2<f32>(-973f, 709f), vec4<i32>(u_input.b, u_input.c.x, -2147483647i, -22163i), u_input.c.x), u_input.a, Struct_1(vec2<bool>(false, true), u_input.c.x, vec2<f32>(927f, 793f), vec4<i32>(0i, u_input.b, u_input.b, u_input.c.x), -15663i)), Struct_1(vec2<bool>(true, false), -1i, vec2<f32>(-1133f, -1082f), vec4<i32>(2147483647i, -7354i, 0i, u_input.b), -6934i)).a.x | false), false, (abs(0i) > select(u_input.c.x, u_input.c.x, false)) || func_4(Struct_3(u_input.a.x, 62931u)).a.a.x), true, i32(-1i) * -28787i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1135f, 1000f));
    var var_4 = _wgslsmith_f_op_vec3_f32(-var_3.d.www);
    var var_5 = !var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(~vec4<i32>(1i, u_input.c.x, u_input.b, ~1i), _wgslsmith_add_vec4_i32(vec4<i32>(var_3.c, u_input.c.x, -60203i, -41666i), ~vec4<i32>(-2147483647i, -1i, u_input.b, var_3.c)) & (min(vec4<i32>(11317i, u_input.b, var_3.c, 4695i), vec4<i32>(-2147483647i, 0i, var_3.c, -4807i)) >> (var_1 % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_4.zy))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.d.xy * vec2<f32>(var_3.d.x, var_4.x))))));
}

