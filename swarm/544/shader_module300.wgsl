struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = Struct_1(reverseBits(vec2<i32>(~_wgslsmith_clamp_i32(-1i, -2147483647i, 37010i), 1i)), select(select(vec4<bool>(arg_0, any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), arg_0, true), !vec4<bool>(arg_0, arg_0, false, arg_0), arg_0), select(vec4<bool>(arg_0, !arg_0, select(arg_0, true, arg_0), !arg_0), vec4<bool>(arg_0, arg_0 | arg_0, true && arg_0, false), !select(vec4<bool>(false, false, arg_0, true), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0))), arg_0));
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(-(vec4<i32>(u_input.a, 68270i, -2147483647i, -19433i) | (vec4<i32>(877i, -11518i, u_input.b.x, -1i) << (vec4<u32>(1u, 4294967295u, 44507u, 4294967295u) % vec4<u32>(32u)))), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1i, 0i), vec4<i32>(-17887i, var_0.a.x, var_0.a.x, 43709i))), ~(~vec4<i32>(-16205i, ~u_input.b.x, var_0.a.x, countOneBits(30098i))));
    let var_2 = min(firstTrailingBit(countOneBits(vec4<i32>(var_1.x, u_input.b.x, 5085i, u_input.b.x)) ^ ~vec4<i32>(-469i, -32362i, 2147483647i, var_1.x)), vec4<i32>(2147483647i, -23007i, firstTrailingBit(0i), ~(~u_input.b.x))) << (vec4<u32>(4294967295u, firstLeadingBit(~(~12515u)), ~31318u, _wgslsmith_mod_u32(1u, 1u)) % vec4<u32>(32u));
    let var_3 = _wgslsmith_add_vec4_i32(select(min(select(reverseBits(vec4<i32>(u_input.b.x, u_input.a, var_1.x, -33520i)), min(var_2, var_2), select(vec4<bool>(true, arg_0, var_0.b.x, false), vec4<bool>(true, arg_0, true, var_0.b.x), vec4<bool>(true, var_0.b.x, true, var_0.b.x))), _wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, u_input.b.x, 0i, var_0.a.x), -var_2)), abs(~(-var_2)), select(vec4<bool>(any(var_0.b), var_0.b.x, false, var_0.a.x > -2147483647i), vec4<bool>(true, true & var_0.b.x, true, select(var_0.b.x, arg_0, arg_0)), select(vec4<bool>(false, arg_0, var_0.b.x, arg_0), vec4<bool>(true, var_0.b.x, true, var_0.b.x), select(var_0.b, vec4<bool>(false, false, true, var_0.b.x), var_0.b)))), abs(countOneBits(countOneBits(vec4<i32>(2147483647i, var_1.x, 1i, var_1.x)))));
    var var_4 = 1u;
    return var_0.b;
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(299f - _wgslsmith_f_op_f32(-1620f - _wgslsmith_f_op_f32(trunc(1973f)))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f - 363f)))));
    var var_1 = -17298i;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(401f - -1000f) + -1000f)))));
    var_0 = -2052f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(442f + -984f), _wgslsmith_div_f32(1252f, -602f)))))));
    return _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2026f), _wgslsmith_f_op_f32(644f * -367f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-893f, -884f)))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = 4758i;
    var var_1 = countOneBits(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-13601i, -arg_0, _wgslsmith_div_i32(-1i, arg_0)), vec3<i32>(~var_0, u_input.b.x << (47584u % 32u), ~0i), vec3<i32>(-2147483647i, 46695i, 25135i) & ~vec3<i32>(1i, u_input.a, -3234i)));
    let var_2 = vec4<u32>(1u, 0u, 33990u, ~78140u);
    let var_3 = _wgslsmith_f_op_f32(func_4(select(true, true, select(any(vec3<bool>(false, false, true)), true, true)), Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(75721i, 0i, arg_0, 2147483647i), vec4<i32>(u_input.a, 0i, var_0, var_0)), Struct_1(~var_1.xy, func_3(true)), select(true, all(vec2<bool>(false, true)), false)))) < -1160f;
    global0 = array<Struct_4, 11>();
    return Struct_2(-1828f, Struct_1(firstLeadingBit(_wgslsmith_div_vec2_i32(-u_input.b, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 7449i), vec2<i32>(arg_0, var_1.x)))), func_3(any(vec2<bool>(false, false)))), vec2<i32>(_wgslsmith_mod_i32(6913i, var_0), firstLeadingBit(arg_0)));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = abs(vec2<u32>(arg_1, ~(~0u)));
    let var_1 = Struct_3(_wgslsmith_div_i32(arg_3.b.a.x, -select(firstLeadingBit(0i), arg_3.c.x, arg_0.a == -1586f)), arg_0.b, arg_0.b.b.x);
    global0 = array<Struct_4, 11>();
    var_0 = vec2<u32>(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, arg_1, 64151u, arg_1), vec4<u32>(arg_1, arg_1, arg_1, var_0.x)), 27940u), ~countOneBits(var_0.x), _wgslsmith_mod_u32(countOneBits(63085u), reverseBits(var_0.x))), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_0.x, var_0.x, 0u) | vec3<u32>(29450u, var_0.x, arg_1)), vec3<u32>(~1494u, 27584u, 19323u))));
    var var_2 = _wgslsmith_f_op_f32(abs(115f));
    return func_2(27847i).b;
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    let var_0 = arg_3.b.b.x;
    var var_1 = countOneBits(abs(select(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, arg_1.a, 44255i), vec3<i32>(u_input.a, arg_1.a, arg_0)), -arg_2.a.x, all(vec2<bool>(var_0, false))) & -10894i));
    let var_2 = ~4294967295u;
    return func_5(arg_3, var_2 << (var_2 % 32u), Struct_2(_wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.a, arg_3.a, true)))), Struct_1(vec2<i32>(_wgslsmith_mod_i32(31606i, 16067i), -u_input.a), select(arg_1.b.b, !vec4<bool>(arg_3.b.b.x, arg_2.b.x, false, arg_2.b.x), select(arg_1.b.b, arg_3.b.b, arg_2.b))), _wgslsmith_div_vec2_i32(select(arg_2.a, arg_2.a, arg_1.c) ^ u_input.b, firstLeadingBit(u_input.b))), Struct_2(arg_3.a, func_5(arg_3, ~var_2, Struct_2(-1838f, Struct_1(vec2<i32>(-1i, -1i), vec4<bool>(arg_1.b.b.x, true, arg_2.b.x, false)), arg_1.b.a), func_2(arg_2.a.x)), arg_1.b.a));
}

fn func_7(arg_0: Struct_1) -> Struct_2 {
    global0 = array<Struct_4, 11>();
    var var_0 = reverseBits(~1u);
    var var_1 = select(arg_0.b.yx, select(vec2<bool>(arg_0.b.x, !arg_0.b.x), select(vec2<bool>(true, arg_0.b.x), select(func_2(u_input.a).b.b.zy, !arg_0.b.xw, select(vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b.zy, arg_0.b.x)), func_2(20718i).b.b.xx), arg_0.b.zx), arg_0.b.xx);
    global0 = array<Struct_4, 11>();
    return func_2(1i ^ arg_0.a.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>) -> vec2<u32> {
    let var_0 = func_7(func_6(-3528i, Struct_3(u_input.a, func_5(Struct_2(-565f, Struct_1(u_input.b, arg_0), vec2<i32>(-1i, -1193i)), _wgslsmith_mult_u32(0u, 0u), func_2(arg_1.x), func_2(u_input.b.x)), !arg_0.x || true), Struct_1(u_input.b, !vec4<bool>(arg_0.x, false, true, arg_0.x)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-250f - 959f)), func_2(0i).b, func_5(Struct_2(431f, Struct_1(u_input.b, vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_clamp_u32(1u, 1u, 83580u), func_2(1i), func_2(u_input.b.x)).a)));
    let var_1 = ~vec3<u32>(52459u, _wgslsmith_div_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(64272u, 0u, 11493u, 6935u), vec4<u32>(7682u, 4294967295u, 21369u, 77572u)), _wgslsmith_mult_u32(22161u, 1u), !arg_0.x), 0u), ~(~(~0u)));
    global0 = array<Struct_4, 11>();
    var var_2 = all(arg_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2227f, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a)), _wgslsmith_f_op_f32(ceil(var_0.a))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(722f, _wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(func_4(true, Struct_3(37930i, var_0.b, arg_0.x))), var_0.a)))));
    return var_1.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~49641u, _wgslsmith_dot_vec2_u32(func_1(vec4<bool>(false, false, false, false), u_input.b) << (~vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), select(firstLeadingBit(vec2<u32>(42335u, 30758u)), ~vec2<u32>(0u, 22503u), select(vec2<bool>(false, false), vec2<bool>(false, false), false)))) == 0u;
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1455f, _wgslsmith_f_op_f32(-251f * 894f))))), Struct_3(countOneBits(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b.x, 2147483647i), u_input.b.x, _wgslsmith_clamp_i32(-61782i, -14344i, u_input.a))), Struct_1(vec2<i32>(func_5(Struct_2(789f, Struct_1(u_input.b, vec4<bool>(true, true, var_0, var_0)), u_input.b), 4294967295u, Struct_2(-1663f, Struct_1(u_input.b, vec4<bool>(true, true, true, var_0)), u_input.b), Struct_2(-848f, Struct_1(u_input.b, vec4<bool>(var_0, var_0, var_0, false)), u_input.b)).a.x, 1i), func_3(true)), !any(vec2<bool>(var_0, true))), u_input.b.x, true);
    let var_2 = true;
    global0 = array<Struct_4, 11>();
    var var_3 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, firstTrailingBit(12045u), _wgslsmith_div_u32(1u, 42488u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), countOneBits(vec3<u32>(1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(21250u, 4294967295u, 62500u), vec3<u32>(4294967295u, 55561u, 0u)))));
    global0 = array<Struct_4, 11>();
    var var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(-var_1.a), Struct_3(u_input.a, var_1.b.b, !(!(!var_2))), u_input.a, func_6(u_input.b.x, var_1.b, var_1.b.b, func_7(var_1.b.b)).b.x);
    global0 = array<Struct_4, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a.x), -1215f), select(vec4<i32>(18314i, -(u_input.b.x ^ 1i), select(i32(-1i) * -26178i, _wgslsmith_mod_i32(u_input.b.x, 67481i), any(vec2<bool>(true, var_1.b.b.b.x))), _wgslsmith_div_i32(min(-35677i, var_1.c), 1i)), -(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 17007i, var_4.c), vec4<i32>(var_4.b.b.a.x, 26360i, u_input.b.x, 18535i)) & -vec4<i32>(-13407i, u_input.b.x, var_4.b.b.a.x, -21397i)), vec4<bool>(var_0, var_1.b.c, var_0, false)), (vec2<i32>(min(6822i, 1i), var_1.c) | vec2<i32>(1i, 1i)) << (max(var_3.zx, _wgslsmith_div_vec2_u32(abs(var_3.zz), firstTrailingBit(vec2<u32>(var_3.x, var_3.x)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a.x, _wgslsmith_f_op_f32(min(var_4.a.x, 711f)), var_4.a.x, var_4.a.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, 653f, 186f, 177f), vec4<f32>(553f, var_1.a.x, -1000f, var_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, 904f, 153f, var_4.a.x)))), 0i != _wgslsmith_sub_i32(var_4.c, -16038i))))));
}

