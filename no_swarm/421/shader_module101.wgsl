struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec3<i32> {
    var var_0 = abs(i32(-1i) * -3873i);
    let var_1 = !select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(true, true, any(vec3<bool>(true, false, false)))), select(vec2<bool>(arg_0 < arg_0, true), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(true, true));
    var_0 = ~(~(-1i));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0), ~(~vec3<i32>(1i, 1i, 1i)), ~_wgslsmith_add_vec3_u32(~max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(32811u, u_input.a, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 104493u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a)), u_input.a | u_input.a)));
    var var_3 = ~_wgslsmith_sub_vec3_u32(var_2.c, vec3<u32>(~u_input.a, 1u, var_2.c.x));
    return vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(var_2.b.x, -var_2.b.x)), 2147483647i, firstLeadingBit(min(~var_2.b.x, var_2.b.x | -2147483647i)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(57332u, _wgslsmith_sub_u32(select(u_input.a, u_input.a, false), ~5933u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(31891u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 36761u) << (vec2<u32>(28677u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, u_input.a))))), vec2<u32>(~(_wgslsmith_add_u32(u_input.a, u_input.a) >> (_wgslsmith_mult_u32(0u, u_input.a) % 32u)), ~u_input.a >> (_wgslsmith_sub_u32(u_input.a, 1u) % 32u)));
    var var_1 = !(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true));
    var var_2 = ~_wgslsmith_dot_vec3_i32(-func_3(-669f), -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, 0i, -2147483647i), vec3<i32>(2147483647i, arg_0, 2147483647i), vec3<i32>(arg_0, 0i, 1i))));
    var var_3 = vec4<bool>(var_1.x, true, all(vec2<bool>(false, false)), true || !(!(!var_1.x)));
    let var_4 = vec4<bool>(!var_3.x, var_1.x, !var_3.x, all(!select(!var_3.wzy, var_3.zyy, vec3<bool>(true, var_1.x, var_3.x))));
    return Struct_3(988f, 370f);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    let var_0 = select(vec2<bool>(true, any(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) & true);
    var var_1 = select(abs(_wgslsmith_clamp_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -101866i), vec2<i32>(13530i, -7888i)), vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -19333i, 1i, 2147483647i), vec4<i32>(-2147483647i, 1i, 0i, -57362i)), -27254i))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -56223i), vec2<i32>(-29611i, 1i)) >> (arg_1 % vec2<u32>(32u)), vec2<i32>(min(1i, 1i), abs(-1i))) >> (~(~vec2<u32>(0u, arg_0)) % vec2<u32>(32u)), any(!select(vec2<bool>(var_0.x, false), !var_0, !vec2<bool>(var_0.x, var_0.x))));
    var var_2 = func_2(-1i);
    let var_3 = var_0.x;
    let var_4 = vec2<u32>(abs(~(~max(0u, 15007u))), _wgslsmith_clamp_u32(firstLeadingBit(u_input.a) & u_input.a, _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(arg_1.x, 4294967295u, 0u)), ~firstLeadingBit(vec3<u32>(u_input.a, 642u, u_input.a))), abs(~u_input.a)));
    return Struct_1(1000f, vec3<i32>(-1i, var_1.x, var_1.x), abs(vec3<u32>(arg_0, u_input.a, 14825u)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = arg_1;
    let var_1 = func_4(52714u, vec2<u32>(arg_2.a.x, ~(~_wgslsmith_mult_u32(4294967295u, 1u))), Struct_3(_wgslsmith_f_op_f32(var_0.a + -1253f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a), arg_0.x)))), Struct_3(-745f, var_0.a));
    var_0 = func_4(_wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a, 1u) << (var_1.c.x % 32u), ~u_input.a), vec2<u32>(var_0.c.x, firstTrailingBit(47010u) ^ ~1u) & vec2<u32>(_wgslsmith_add_u32(~4294967295u, _wgslsmith_mult_u32(var_1.c.x, 32772u)), 1u), Struct_3(-1351f, var_0.a), func_2(~var_0.b.x));
    let var_2 = arg_2;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-723f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a)) - arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(213f * -746f) + func_4(arg_2.a.x, arg_2.a, Struct_3(var_0.a, arg_1.a), Struct_3(arg_1.a, -880f)).a))), firstTrailingBit(~(~(~vec3<i32>(arg_1.b.x, 2147483647i, 0i)))), vec3<u32>(var_2.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c.x, arg_1.c.x, var_1.c.x, 1u), vec4<u32>(0u, 4294967295u, 38949u, u_input.a)), reverseBits(vec4<u32>(var_2.a.x, arg_2.a.x, arg_1.c.x, u_input.a))), arg_2.a.x), ~countOneBits(~var_2.a.x)));
    return var_1.c;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec3_u32(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-688f, 328f, 226f, 145f) - vec4<f32>(2523f, 557f, -430f, -850f))), func_4(4294967295u | u_input.a, abs(vec2<u32>(u_input.a, u_input.a)), func_2(0i), Struct_3(-1439f, -1573f)), Struct_2(countOneBits(vec2<u32>(0u, 1u)))) | abs(~vec3<u32>(u_input.a, 22016u, 28143u) | select(vec3<u32>(u_input.a, 21835u, u_input.a), vec3<u32>(u_input.a, u_input.a, 52304u), false)), vec3<u32>(1u, u_input.a, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(54193u, u_input.a, 67227u, 1u)), vec4<u32>(38684u, 44017u, u_input.a, 45842u))) | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, firstLeadingBit(u_input.a)), vec3<u32>(firstTrailingBit(u_input.a), u_input.a, 1u)), ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 1u)), firstTrailingBit(vec3<u32>(50620u, 65639u, u_input.a))));
    let var_1 = func_2(~(-24058i));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, ~0i), abs(2147483647i | func_3(var_1.a).x) >> (var_0.x % 32u));
    let var_3 = ~var_0.x;
    var var_4 = Struct_2(~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, var_3), var_3 | var_3), var_3 << ((u_input.a | 5065u) % 32u)));
    return Struct_3(var_1.a, _wgslsmith_f_op_f32(-var_1.b));
}

fn func_6(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(arg_3.b.x, -1i), vec2<i32>(-(~(-1i)) << (select(~u_input.a, abs(0u), arg_0.x) % 32u), arg_3.b.x));
    let var_1 = true;
    var var_2 = vec4<u32>(arg_3.c.x, 11312u << (reverseBits(abs(_wgslsmith_sub_u32(u_input.a, 106662u))) % 32u), 2401u, ((arg_1 >> (u_input.a % 32u)) ^ (~arg_1 | (4294967295u | arg_3.c.x))) ^ (arg_3.c.x >> (u_input.a % 32u)));
    var var_3 = func_2(_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_3.b.x, _wgslsmith_mod_i32(-var_0.x, 0i), -2147483647i), var_0.x));
    var_2 = ~(abs(~min(vec4<u32>(var_2.x, u_input.a, 1u, 69486u), vec4<u32>(arg_3.c.x, var_2.x, var_2.x, 4294967295u))) >> (vec4<u32>(~(~83505u), ~arg_1, firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_3.c, arg_3.c)), 1u) % vec4<u32>(32u)));
    return Struct_3(_wgslsmith_f_op_f32(825f + -1165f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-760f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.a, var_3.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), 4294967295u, func_1(), func_4(u_input.a, vec2<u32>(19129u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 11286u), vec2<u32>(15726u, 19036u))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1634f * -961f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1704f))), Struct_3(-1000f, _wgslsmith_f_op_f32(sign(-161f)))));
    var var_1 = func_2(3866i);
    let var_2 = ~9952u >> (u_input.a % 32u);
    let var_3 = vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(10281i, 1i), vec2<i32>(-60850i, -19322i))), i32(-1i) * -18561i), -34604i, _wgslsmith_mod_i32(1i, ~1i) >> (0u % 32u), -26588i);
    var var_4 = vec3<bool>(any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true))), false, true);
    var var_5 = vec2<i32>(_wgslsmith_dot_vec3_i32(abs(~_wgslsmith_clamp_vec3_i32(var_3.yyx, vec3<i32>(var_3.x, -1i, var_3.x), var_3.zyw)), vec3<i32>(2147483647i, -abs(-61356i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, var_3.x), vec2<i32>(-10289i, var_3.x)), 2147483647i))), _wgslsmith_dot_vec3_i32(var_3.wwz, _wgslsmith_sub_vec3_i32(vec3<i32>(-5721i, -54300i, var_3.x), select(~vec3<i32>(-841i, 26646i, var_3.x), -vec3<i32>(19160i, 2147483647i, var_3.x), vec3<bool>(false, false, var_4.x)))));
    var var_6 = var_1.b;
    let var_7 = ~(~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, var_2, u_input.a) & vec3<u32>(6601u, u_input.a, 0u), func_5(vec4<f32>(715f, var_1.a, var_1.b, var_0.a), Struct_1(var_0.b, vec3<i32>(1i, -9694i, var_3.x), vec3<u32>(1u, 34192u, u_input.a)), Struct_2(vec2<u32>(902u, u_input.a))))));
    let var_8 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), -121f, 203f, -461f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_8.x * -348f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-709f + var_0.b) * 1382f)), _wgslsmith_div_vec2_f32(var_8.ww, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a, 1000f))))));
}

