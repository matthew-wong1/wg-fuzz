struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_sub_vec2_u32(arg_0.a.c.c.yw, vec2<u32>(39342u, _wgslsmith_div_u32(1u, ~0u)));
    var var_1 = var_0.x;
    var var_2 = 0i;
    var var_3 = firstTrailingBit(countOneBits(arg_0.b | ~1u));
    var_1 = abs(arg_0.b);
    return ~(~_wgslsmith_mult_i32(u_input.a.x, 24109i));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = arg_0.x ^ -17970i;
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a.c.x, _wgslsmith_mod_u32(select(u_input.b, 131324u, arg_1.e) << (abs(arg_2.b) % 32u), ~(arg_1.a.c.x ^ arg_2.c.b)), _wgslsmith_mod_u32(71169u, ~(arg_1.a.c.x ^ 1u))), arg_2.c.a.c.yyy);
    let var_2 = !vec4<bool>(false, true, all(vec2<bool>(arg_2.a.e, arg_1.e)), arg_2.a.e);
    var_1 = vec3<u32>(~67006u, 9736u, 12761u);
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(1i, ~arg_1.c.b) | countOneBits(1i), arg_2.c.d.x, reverseBits(countOneBits(-arg_1.d.x))) << (~arg_2.c.a.c.wwz % vec3<u32>(32u));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_2.d.a.x, _wgslsmith_div_f32(-478f, 1800f)), _wgslsmith_div_f32(arg_2.c.c.a.x, _wgslsmith_f_op_f32(arg_1.c.a.x - -567f))) + _wgslsmith_f_op_vec2_f32(sign(arg_2.d.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_1.a.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.a.x, -909f)))))), select(vec2<bool>(!(arg_2.a.e && var_2.x), !all(vec3<bool>(var_2.x, true, var_2.x))), vec2<bool>(true | arg_1.e, var_2.x), var_2.xw)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(438f, 1000f, any(select(vec2<bool>(false, true), vec2<bool>(true, false), false))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(firstLeadingBit(vec3<i32>(0i, 63835i, u_input.a.x)) & vec3<i32>(func_3(Struct_3(Struct_2(Struct_1(vec2<f32>(348f, var_0), u_input.a.x, vec4<u32>(u_input.b, 0u, 1u, u_input.b)), u_input.b, Struct_1(vec2<f32>(var_0, -398f), -2147483647i, vec4<u32>(9282u, 4294967295u, 46937u, u_input.b)), vec2<i32>(-31517i, 0i), false), u_input.b, Struct_2(Struct_1(vec2<f32>(-1200f, var_0), -2602i, vec4<u32>(0u, 1u, 7671u, u_input.b)), u_input.b, Struct_1(vec2<f32>(var_0, 353f), u_input.a.x, vec4<u32>(1u, u_input.b, 79727u, 51783u)), u_input.a, true), Struct_1(vec2<f32>(1000f, -306f), -2147483647i, vec4<u32>(u_input.b, u_input.b, 0u, 35204u)), -1i), -2147483647i, vec3<i32>(-2147483647i, -2147483647i, -16807i)), _wgslsmith_mult_i32(2147483647i, u_input.a.x), countOneBits(-12208i)), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -304f), vec2<f32>(var_0, var_0)), u_input.a.x << (u_input.b % 32u), abs(vec4<u32>(u_input.b, 0u, 24695u, u_input.b))), u_input.b & _wgslsmith_clamp_u32(61867u, u_input.b, u_input.b), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 836f)), _wgslsmith_dot_vec4_i32(vec4<i32>(-18323i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 0i)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, u_input.b))), u_input.a, any(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), Struct_3(Struct_2(Struct_1(vec2<f32>(1295f, var_0), -2147483647i, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~0u, Struct_1(vec2<f32>(633f, 414f), -23604i, vec4<u32>(42831u, 1u, 2892u, u_input.b)), min(u_input.a, u_input.a), 1003f >= var_0), (u_input.b | 26330u) >> (4294967295u % 32u), Struct_2(Struct_1(vec2<f32>(1084f, 1693f), 0i, vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u)), ~23245u, Struct_1(vec2<f32>(-489f, 1592f), u_input.a.x, vec4<u32>(65700u, u_input.b, u_input.b, 49361u)), ~u_input.a, var_0 > -1252f), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(699f, -1071f), vec2<f32>(-1311f, var_0), true)), func_3(Struct_3(Struct_2(Struct_1(vec2<f32>(504f, 685f), 16070i, vec4<u32>(u_input.b, 21578u, u_input.b, 21387u)), 4409u, Struct_1(vec2<f32>(-1661f, 511f), -5546i, vec4<u32>(u_input.b, 4294967295u, 3601u, 30242u)), vec2<i32>(u_input.a.x, u_input.a.x), true), 1u, Struct_2(Struct_1(vec2<f32>(var_0, -1601f), u_input.a.x, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), 0u, Struct_1(vec2<f32>(-358f, var_0), 871i, vec4<u32>(4294967295u, 18016u, u_input.b, u_input.b)), u_input.a, false), Struct_1(vec2<f32>(var_0, -1918f), -2147483647i, vec4<u32>(u_input.b, 13461u, u_input.b, u_input.b)), u_input.a.x), 5327i, vec3<i32>(2147483647i, -1i, -1i)), firstLeadingBit(vec4<u32>(5775u, 1u, u_input.b, u_input.b))), 40834i))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(-685f)), -916f);
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 1000f))), var_0), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(247f, var_1.x))))))), -u_input.a.x, vec4<u32>(u_input.b, u_input.b, 1u, u_input.b | abs(_wgslsmith_add_u32(u_input.b, u_input.b))));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.x, var_2.a.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(338f, var_2.a.x))))), var_1.x, true));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a.x, -260f))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.a.x, -680f)))), var_2.a, true)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_0), _wgslsmith_f_op_vec2_f32(var_2.a - vec2<f32>(905f, 157f)))))), -1i, firstTrailingBit(var_2.c >> (abs(max(var_2.c, vec4<u32>(var_2.c.x, var_2.c.x, 1u, var_2.c.x))) % vec4<u32>(32u))));
}

fn func_1() -> vec3<u32> {
    var var_0 = 51017u;
    var var_1 = func_2();
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, 774f), vec2<f32>(var_1.a.x, 1865f)) * func_2().a), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.a)))))), 0i, vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.b, var_1.c.x), 1u, 11050u, reverseBits(var_1.c.x)) ^ ~(~var_1.c & _wgslsmith_add_vec4_u32(var_1.c, var_1.c)));
    var_1 = Struct_1(vec2<f32>(-650f, var_1.a.x), (u_input.a.x ^ func_3(Struct_3(Struct_2(Struct_1(vec2<f32>(var_1.a.x, var_1.a.x), u_input.a.x, var_1.c), 1u, Struct_1(vec2<f32>(var_1.a.x, var_1.a.x), -3963i, vec4<u32>(1507u, u_input.b, 4294967295u, 561u)), u_input.a, true), var_1.c.x, Struct_2(Struct_1(vec2<f32>(var_1.a.x, -449f), u_input.a.x, var_1.c), 0u, Struct_1(vec2<f32>(var_1.a.x, var_1.a.x), u_input.a.x, var_1.c), vec2<i32>(var_1.b, 33863i), false), Struct_1(vec2<f32>(var_1.a.x, var_1.a.x), u_input.a.x, vec4<u32>(u_input.b, var_1.c.x, 4294967295u, u_input.b)), var_1.b), -3199i, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_1.b, 2230i), vec3<i32>(u_input.a.x, 2147483647i, var_1.b)))) | _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a.x, u_input.a.x, -9039i) | vec3<i32>(u_input.a.x, var_1.b, u_input.a.x)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-45244i, var_1.b, var_1.b), min(vec3<i32>(u_input.a.x, var_1.b, -31966i), vec3<i32>(19284i, var_1.b, 83206i)))), _wgslsmith_mod_vec4_u32(~var_1.c, abs(vec4<u32>(~16270u, reverseBits(u_input.b), 4294967295u, ~var_1.c.x))));
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x))), (u_input.a.x >> (56028u % 32u)) ^ u_input.a.x, vec4<u32>(var_1.c.x, ~_wgslsmith_sub_u32(var_1.c.x, u_input.b), ~0u, ~u_input.b)), Struct_3(Struct_2(Struct_1(var_1.a, 1i, _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 26818u, var_1.c.x), vec4<u32>(4294967295u, 4294967295u, u_input.b, 14040u))), abs(u_input.b), Struct_1(vec2<f32>(1309f, var_1.a.x), -1i, ~vec4<u32>(4294967295u, 1u, 47666u, 0u)), select(~vec2<i32>(2147483647i, u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(var_1.b, var_1.b)), select(false, false, false)), false), 34670u, Struct_2(Struct_1(vec2<f32>(var_1.a.x, 103f), _wgslsmith_mult_i32(-1i, 2147483647i), firstLeadingBit(vec4<u32>(u_input.b, 4294967295u, 0u, var_1.c.x))), 61934u, func_2(), u_input.a, 1563f == var_1.a.x), func_2(), 1i), 1u > var_1.c.x, 84600u, vec2<f32>(var_1.a.x, var_1.a.x));
    return ~max(~vec3<u32>(reverseBits(u_input.b), ~var_1.c.x, abs(var_2.a.c.x)), var_2.a.c.xwx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~_wgslsmith_div_vec3_u32(abs(reverseBits(vec3<u32>(u_input.b, 14630u, 55571u))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 62562u), reverseBits(vec3<u32>(u_input.b, 5476u, 38659u)))), _wgslsmith_div_vec3_u32(~(~select(vec3<u32>(u_input.b, u_input.b, 38746u), vec3<u32>(32720u, 27651u, u_input.b), vec3<bool>(true, false, false))), func_1()));
    var var_1 = -1i;
    var var_2 = firstLeadingBit(~var_0.zx);
    let var_3 = !(!(!(u_input.b <= var_0.x))) == true;
    let var_4 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -264f))), 2147483647i, select(~vec4<u32>(4294967295u, var_2.x, 4294967295u, var_2.x), ~vec4<u32>(0u, 38613u, 41215u, 51935u), !vec4<bool>(false, var_3, true, var_3))), _wgslsmith_clamp_u32(select(1u, 7726u, false), ~44021u, select(4294967295u, var_0.x, true)) & (32336u & select(89320u, 4294967295u, var_3)), func_2(), _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), select(-vec2<i32>(u_input.a.x, -1i), ~vec2<i32>(2147483647i, 15905i), vec2<bool>(true, true))), true), ~1u, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1544f, -1266f), vec2<f32>(-442f, -1139f))))), abs(u_input.a.x >> (0u % 32u)), ~vec4<u32>(var_0.x, u_input.b, var_0.x, var_0.x)), abs(var_2.x), func_2(), vec2<i32>(u_input.a.x, 1i), true), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_4(vec3<i32>(2147483647i, -1i, -2078i), Struct_2(Struct_1(vec2<f32>(-918f, -450f), u_input.a.x, vec4<u32>(0u, 44853u, u_input.b, 112473u)), var_2.x, Struct_1(vec2<f32>(-831f, 1656f), 0i, vec4<u32>(24633u, var_0.x, 1u, 18132u)), vec2<i32>(u_input.a.x, -2147483647i), var_3), Struct_3(Struct_2(Struct_1(vec2<f32>(1010f, 267f), u_input.a.x, vec4<u32>(var_0.x, var_2.x, var_2.x, 13572u)), 49105u, Struct_1(vec2<f32>(1071f, -1669f), u_input.a.x, vec4<u32>(u_input.b, var_0.x, 0u, var_0.x)), vec2<i32>(1i, 1979i), var_3), var_2.x, Struct_2(Struct_1(vec2<f32>(-199f, -454f), 0i, vec4<u32>(102699u, u_input.b, 26987u, var_2.x)), var_2.x, Struct_1(vec2<f32>(-658f, 794f), -2147483647i, vec4<u32>(0u, 4294967295u, 61856u, 60391u)), u_input.a, var_3), Struct_1(vec2<f32>(977f, -509f), -26817i, vec4<u32>(var_0.x, 6106u, 1u, u_input.b)), -19825i))))), -2147483647i << (_wgslsmith_clamp_u32(~17433u, 1u, 4294967295u) % 32u), abs(~vec4<u32>(var_0.x, u_input.b, u_input.b, u_input.b) << (vec4<u32>(4294967295u, var_2.x, 53874u, var_0.x) % vec4<u32>(32u)))), -(~1i));
    let var_5 = Struct_4(Struct_1(var_4.a.a.a, u_input.a.x, var_4.d.c), Struct_3(var_4.c, ~var_4.b, Struct_2(var_4.c.a, _wgslsmith_add_u32(var_2.x, var_0.x), func_2(), select(firstTrailingBit(vec2<i32>(u_input.a.x, -25435i)), ~var_4.a.d, 25487u == u_input.b), any(vec4<bool>(true, var_3, true, true))), func_2(), var_4.e | reverseBits(_wgslsmith_mult_i32(20342i, 25779i))), var_3, ~(~var_4.d.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4.c.a.a + vec2<f32>(var_4.a.a.a.x, var_4.c.a.a.x)))));
    let var_6 = Struct_4(func_2(), var_4, var_3, 90875u, func_2().a);
    var var_7 = Struct_3(Struct_2(var_4.a.a, var_6.b.c.a.c.x, func_2(), u_input.a, true), 1u, var_4.a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_4.a.a.a)))), (~(-1i) << (~var_6.b.b % 32u)) ^ ~(-1i), var_5.a.c), var_4.d.b);
    var var_8 = var_4.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(-firstTrailingBit(abs(vec4<i32>(var_5.b.e, 31214i, var_7.d.b, var_6.b.c.d.x))), -(~(vec4<i32>(-1i, var_4.a.a.b, 2147483647i, -69017i) ^ vec4<i32>(55757i, var_6.b.d.b, 2147483647i, var_7.e)))), 92901u);
}

