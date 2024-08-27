struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<i32> {
    var var_0 = !vec3<bool>(true, any(vec3<bool>(true, false, true)), select(~0u, 0u, true) > u_input.a.x);
    var_0 = select(!select(select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false)), !vec3<bool>(false, var_0.x, true), true), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, true)), !vec3<bool>(var_0.x, false, false)), vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, ~33630u >= u_input.b, select(!var_0.x, var_0.x, !var_0.x)));
    let var_1 = vec3<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.b, 76600u), 46247u);
    let var_2 = (_wgslsmith_mult_i32(1i, -(~(-2147483647i))) << (u_input.a.x % 32u)) != _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, -2147483647i), _wgslsmith_sub_i32(min(i32(-1i) * -23040i, i32(-1i) * -43752i), ~(~(-1i))), -2147483647i);
    var var_3 = u_input.a;
    return vec3<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -30840i, -1i), vec3<i32>(1i, 1i, 1i))) >> (~31203u % 32u), -(~(2147483647i << (0u % 32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(select(1i, -32846i, var_0.x), min(2147483647i, 1i)), -vec2<i32>(1i, 1i)) & select(~0i, abs(2147483647i), true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = -589f;
    var_0 = 1000f;
    var var_1 = ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(46115u, 55840u, 4294967295u), vec3<u32>(~u_input.b, 1u, u_input.a.x)));
    let var_2 = select(true, any(select(select(arg_0.a.b, select(arg_1.b, arg_0.a.b, arg_1.b), select(vec3<bool>(arg_0.a.b.x, true, false), arg_0.a.b, vec3<bool>(arg_1.b.x, true, arg_1.b.x))), !vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_1.b.x), arg_1.b)), false);
    let var_3 = 910f;
    return vec3<i32>(arg_0.a.c.x, 0i, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, -13662i) & arg_0.a.c.x, select(countOneBits(1i), 2147483647i, false)) & arg_1.d.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_3(arg_1.a, false | arg_1.a.a.x, arg_1, Struct_2(arg_1.a));
    var_0 = Struct_3(Struct_1(var_0.a.a, vec3<bool>(var_0.a.b.x, arg_1.a.b.x, false), _wgslsmith_add_vec3_i32(~vec3<i32>(var_0.d.a.c.x, arg_1.a.d.x, arg_1.a.c.x), vec3<i32>(-arg_1.a.c.x, -11378i, 0i & arg_2)), _wgslsmith_mod_vec3_i32(~select(arg_1.a.c, var_0.a.c, false), vec3<i32>(var_0.a.d.x, 10888i, ~arg_2))), false, arg_1, Struct_2(Struct_1(vec2<bool>(var_0.a.d.x == arg_1.a.d.x, false | arg_1.a.b.x), vec3<bool>(any(vec2<bool>(arg_1.a.b.x, false)), arg_1.a.a.x && var_0.a.b.x, arg_0.x >= 484f), vec3<i32>(countOneBits(23113i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a.c.x, arg_1.a.d.x, -6567i), vec4<i32>(21944i, arg_1.a.d.x, arg_1.a.d.x, -2147483647i)), arg_1.a.c.x), abs(countOneBits(arg_1.a.c)))));
    var var_1 = 4294967295u;
    let var_2 = Struct_2(Struct_1(vec2<bool>(var_0.b, arg_0.x >= 991f), arg_1.a.b, func_4(Struct_2(var_0.c.a), Struct_1(vec2<bool>(false, arg_1.a.a.x), vec3<bool>(false, true, false), func_3(), arg_1.a.d)), arg_1.a.c << (abs(~vec3<u32>(u_input.b, u_input.a.x, 4294967295u)) % vec3<u32>(32u))));
    let var_3 = ~reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, 24728u, u_input.b, u_input.a.x) | (vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.a.x) << (vec4<u32>(82355u, u_input.a.x, u_input.b, 61563u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, u_input.a.x, u_input.b, 6024u), abs(vec4<u32>(u_input.b, u_input.a.x, 4294967295u, u_input.b))), vec4<u32>(firstTrailingBit(u_input.b), 0u, ~58886u, 1u)));
    return var_0.d;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = false;
    var var_1 = Struct_2(Struct_1(arg_1.a.b.xx, func_2(vec3<f32>(_wgslsmith_div_f32(-722f, 886f), -2573f, _wgslsmith_f_op_f32(-1220f + 747f)), arg_1, 7670i).a.b, arg_1.a.d, ~reverseBits(vec3<i32>(arg_1.a.c.x, arg_1.a.d.x, -2147483647i))));
    var_1 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, 373f, 982f)), vec3<f32>(1130f, 1000f, 2101f))))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-213f, -952f, -940f), vec3<f32>(1790f, -444f, -368f), false)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1283f, -1578f, 1000f))), Struct_2(arg_1.a), firstLeadingBit(25113i)), _wgslsmith_div_i32(-12568i, -_wgslsmith_mult_i32(0i, arg_1.a.d.x))).a);
    let var_2 = Struct_3(arg_1.a, false, arg_1, Struct_2(func_2(vec3<f32>(_wgslsmith_f_op_f32(-328f + -430f), -547f, -1957f), func_2(vec3<f32>(-1121f, 746f, -653f), func_2(vec3<f32>(-759f, 1013f, 146f), arg_1, -28220i), ~var_1.a.c.x), -firstLeadingBit(17185i)).a));
    var_1 = arg_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(129f, -534f) + vec2<f32>(1234f, 1539f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1013f, -656f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-393f, -408f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1082f, 798f))), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1242f, _wgslsmith_f_op_f32(trunc(1595f)))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(reverseBits(1u & u_input.a.x), func_2(vec3<f32>(392f, 586f, -1202f), arg_1.c, -28330i)))));
    var var_1 = 35515u;
    var var_2 = vec3<u32>(0u, ~(~(~(3806u << (1u % 32u)))), _wgslsmith_sub_u32(u_input.b, ~max(~u_input.a.x, abs(u_input.a.x))));
    var_1 = u_input.b;
    var_1 = var_2.x;
    return _wgslsmith_sub_i32(-arg_0.c.a.c.x, arg_1.d.a.c.x ^ 4858i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(59454i, countOneBits(~1i), _wgslsmith_mod_i32(func_1(Struct_3(Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), vec3<i32>(1638i, -21396i, 1i), vec3<i32>(1i, -1i, 44822i)), true, Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true), vec3<i32>(18466i, 40508i, 32869i), vec3<i32>(3369i, 0i, 54143i))), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, false), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(1i, 0i, -6435i)))), Struct_3(Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, true), vec3<i32>(-37560i, 2147483647i, -1i), vec3<i32>(-33520i, 2147483647i, 13469i)), false, Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true), vec3<i32>(40305i, 2147483647i, 37913i), vec3<i32>(36704i, 36857i, 2147483647i))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true), vec3<i32>(-20643i, -2147483647i, -2147483647i), vec3<i32>(-40156i, 1i, 0i)))), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false), vec3<i32>(-10635i, -11158i, 1i), vec3<i32>(12676i, 1i, -1i))), -23170i), 1i), _wgslsmith_div_vec4_i32(firstLeadingBit(countOneBits(vec4<i32>(-16408i, 0i, -18743i, -1i))), vec4<i32>(1i, 1i, 1i, 1i))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(997f + 955f), _wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(abs(705f)))), func_2(vec3<f32>(1f, 1f, 1f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, false), vec3<i32>(6125i, -5246i, -2147483647i), vec3<i32>(-2147483647i, -49316i, -2147483647i))), _wgslsmith_sub_i32(abs(24050i), func_3().x)), func_4(Struct_2(func_2(vec3<f32>(-798f, 1000f, 835f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, false), vec3<i32>(9867i, 24767i, -26847i), vec3<i32>(1i, 0i, 22788i))), 22019i).a), Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, true), _wgslsmith_mod_vec3_i32(vec3<i32>(32526i, -20066i, -28373i), vec3<i32>(-2147483647i, 1i, -42254i)), vec3<i32>(1i, 1i, 1i))).x).a.c.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(u_input.b, Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false), vec3<i32>(1i, 47773i, var_0.x), vec3<i32>(12771i, 1i, var_0.x))))).x))) >= -317f;
    let var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(54390i, 26869i, var_0.x)), vec3<i32>(~29464i, func_3().x, -17615i)), select(28319i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, var_0.x, -2313i, 5434i)), vec4<i32>(1i, 1i, 1i, 1i)), true), 22947i);
    let var_3 = !(!func_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(977f)), -126f, _wgslsmith_f_op_f32(-554f - 372f)), func_2(vec3<f32>(290f, 917f, -1365f), func_2(vec3<f32>(-1055f, -421f, -1173f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, false), var_2, var_2)), var_0.x), -var_0.x), -abs(var_0.x)).a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(func_4(Struct_2(Struct_1(vec2<bool>(var_3, false), vec3<bool>(var_3, var_3, false), var_2, vec3<i32>(var_0.x, var_0.x, var_2.x))), Struct_1(vec2<bool>(var_3, var_3), vec3<bool>(var_3, var_3, true), vec3<i32>(var_0.x, var_0.x, -17840i), var_2))) >> (reverseBits(vec3<u32>(~u_input.b, ~u_input.b, abs(u_input.a.x))) % vec3<u32>(32u)), var_2.x);
}

