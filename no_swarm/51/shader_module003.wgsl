struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: u32) -> vec3<i32> {
    let var_0 = Struct_4(Struct_2(!((arg_0 || arg_2) && false), vec4<bool>(0u >= arg_3, true, all(vec4<bool>(true, arg_2, arg_0, false)), any(vec4<bool>(arg_0, arg_0, arg_0, arg_2)) == false), vec4<i32>(countOneBits(1i), 61959i, u_input.d.x, 0i), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -879f), _wgslsmith_f_op_f32(853f - 813f), _wgslsmith_div_f32(-450f, -714f)), min(96177u, u_input.e.x), max(60492u, arg_3) >> (16980u % 32u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e.x, 34364u, arg_3) >> (vec3<u32>(u_input.e.x, arg_1, arg_1) % vec3<u32>(32u)), vec3<u32>(arg_1, 1u, 20120u), ~vec3<u32>(13077u, arg_1, 4294967295u)), vec3<i32>(_wgslsmith_div_i32(40679i, 36263i), u_input.b | 1i, 24268i)), vec3<bool>(any(select(vec4<bool>(arg_2, arg_0, true, true), vec4<bool>(arg_0, arg_2, arg_2, false), vec4<bool>(arg_0, arg_0, arg_0, false))), all(select(vec2<bool>(arg_2, arg_0), vec2<bool>(arg_2, true), arg_0)), _wgslsmith_f_op_f32(select(614f, 1000f, false)) == _wgslsmith_f_op_f32(-329f + -2486f))), any(select(vec4<bool>(any(vec2<bool>(arg_2, arg_2)), true, !arg_0, arg_0), select(!vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_2, true, arg_0, arg_0), select(vec4<bool>(arg_2, arg_0, false, true), vec4<bool>(true, true, true, arg_2), vec4<bool>(false, arg_0, false, arg_0))), true)));
    let var_1 = select(!vec2<bool>(any(vec2<bool>(false, false)), !(620f >= var_0.a.d.a.x)), vec2<bool>(arg_0, any(!select(vec4<bool>(var_0.b, arg_2, var_0.a.b.x, var_0.b), var_0.a.b, arg_2))), true);
    return _wgslsmith_div_vec3_i32(var_0.a.d.e, vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.d.x, 0i, 1i), vec3<i32>(var_0.a.c.x, var_0.a.d.e.x, var_0.a.c.x), var_0.a.b.zww), vec3<i32>(var_0.a.d.e.x, u_input.d.x, 54749i) | u_input.c), ~0i, ~(~1i))) | vec3<i32>(0i, ~(~firstLeadingBit(18149i)), _wgslsmith_dot_vec3_i32(u_input.c, select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.d.e.x, u_input.c.x, 59232i), u_input.c), u_input.c, !var_0.b)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = vec4<f32>(arg_2.b.a.x, -237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-896f)), _wgslsmith_f_op_f32(floor(723f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-295f, arg_3.a.x)) * -1555f))));
    let var_1 = Struct_2(!arg_0, !(!select(!vec4<bool>(arg_0, arg_0, false, arg_0), select(vec4<bool>(true, false, false, arg_0), vec4<bool>(arg_0, true, false, true), vec4<bool>(false, false, true, false)), arg_0)), vec4<i32>(2147483647i, ~max(arg_2.b.e.x, 1i), _wgslsmith_div_i32(i32(-1i) * -2147483647i, -1i), _wgslsmith_dot_vec3_i32(min(arg_3.e, vec3<i32>(-1i, -2147483647i, -2147483647i)), min(vec3<i32>(-2147483647i, arg_3.e.x, arg_2.a), vec3<i32>(arg_2.b.e.x, 18923i, 52519i))) >> (u_input.e.x % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.a.x, 379f, -135f), var_0.ywx, arg_0))), arg_3.d.x, u_input.e.x, arg_1.b.d, -vec3<i32>(-2147483647i, -52999i, 40284i)), vec3<bool>(!(!(!arg_0)), any(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), false)), !any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false)))));
    let var_2 = var_1.d.d.x;
    let var_3 = -1136f;
    let var_4 = 1u;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(1116f, _wgslsmith_f_op_f32(-arg_1.b.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -2708f));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(true, Struct_3(u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2153f, 974f, -530f))), ~(~1u), 0u, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), u_input.c), func_3(true, _wgslsmith_mod_u32(u_input.a, 1u), true, 71872u) >> (countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 27439u, u_input.a), vec3<u32>(48658u, u_input.a, u_input.e.x))) % vec3<u32>(32u))), Struct_3(u_input.b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(446f)), _wgslsmith_f_op_f32(abs(270f)), _wgslsmith_f_op_f32(step(551f, 612f))), _wgslsmith_add_u32(max(1u, u_input.e.x), u_input.e.x), ~4294967295u, min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, u_input.a), vec3<u32>(82018u, u_input.a, 41820u)), vec3<u32>(0u, 1u, u_input.e.x)), ~(~u_input.c)), vec3<i32>(1i, ~0i, u_input.d.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-820f, -603f, 117f))))), 91960u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(7467u, 4294967295u, u_input.a)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(42297u, 0u, 28899u), vec3<u32>(u_input.a, 4294967295u, u_input.e.x)), vec3<u32>(u_input.a, u_input.a, u_input.e.x), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false))), vec3<u32>(u_input.a, 1u, u_input.e.x) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.e.x), vec3<u32>(u_input.a, u_input.e.x, 79618u) ^ vec3<u32>(17038u, 123152u, 83157u), vec3<u32>(0u, u_input.a, u_input.e.x) ^ vec3<u32>(0u, 0u, 4294967295u)) % vec3<u32>(32u)), -(~vec3<i32>(1i, u_input.c.x, -24091i)) >> (~(vec3<u32>(u_input.a, 78573u, 72918u) << (vec3<u32>(28796u, u_input.e.x, u_input.e.x) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    let var_1 = Struct_5(select(vec2<bool>(any(vec4<bool>(true, true, true, true)), false), vec2<bool>(true, false), true));
    var var_2 = Struct_4(Struct_2(!(!all(vec3<bool>(var_1.a.x, true, var_1.a.x))), !vec4<bool>(var_1.a.x, var_1.a.x | false, var_1.a.x, var_1.a.x), vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, -1327i) << (u_input.e.x % 32u), -1i, ~(-2147483647i), max(u_input.b, -34142i) << (u_input.e.x % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(375f, -131f, 258f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-780f, 2017f, -2452f))), firstLeadingBit(~0u), ~u_input.e.x, vec3<u32>(~4294967295u, u_input.e.x, 4294967295u), vec3<i32>(u_input.d.x, -1i, 24893i)), vec3<bool>(any(vec3<bool>(var_1.a.x, var_1.a.x, true)), var_1.a.x, true)), all(!vec4<bool>(true, !var_1.a.x, true, !var_1.a.x)));
    var var_3 = vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_clamp_i32(var_2.a.d.e.x, -var_2.a.c.x, 26061i)), u_input.b), var_2.a.d.e.x, _wgslsmith_dot_vec2_i32(var_2.a.d.e.zx, vec2<i32>(_wgslsmith_div_i32(0i, abs(1i)), -u_input.b)), _wgslsmith_sub_i32(var_2.a.c.x, func_3(all(select(vec4<bool>(var_1.a.x, var_1.a.x, true, false), var_2.a.b, var_1.a.x)), ~u_input.a, false, ~4294967295u).x));
    let var_4 = Struct_4(Struct_2(all(vec4<bool>(false, true, var_1.a.x, true)), var_2.a.b, var_2.a.c | vec4<i32>(-var_2.a.c.x, 0i, ~23913i, var_2.a.c.x), Struct_1(vec3<f32>(var_2.a.d.a.x, 1f, var_2.a.d.a.x), ~1u, ~69018u, var_2.a.d.d, -abs(u_input.c)), !vec3<bool>(true, 64739i <= var_2.a.c.x, select(var_2.b, true, var_1.a.x))), var_1.a.x);
    return _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_2.a.d.a.x)))));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    return u_input.e.x;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> StorageBuffer {
    var var_0 = reverseBits(u_input.c.xy);
    var var_1 = select(!vec4<bool>(all(!vec2<bool>(arg_3.x, true)), arg_3.x, arg_3.x, true), !vec4<bool>(true, all(vec3<bool>(arg_3.x, arg_3.x, arg_3.x)), false, false), !arg_3.x || all(vec3<bool>(true, !arg_3.x, !arg_3.x)));
    var var_2 = min(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, arg_2), vec3<u32>(arg_2, u_input.e.x, 41919u))), select(_wgslsmith_dot_vec4_u32(~vec4<u32>(38476u, 1u, 1u, u_input.a), firstLeadingBit(vec4<u32>(0u, u_input.e.x, 1u, u_input.e.x))), 645u, arg_3.x)), (firstTrailingBit(4294967295u) << (~countOneBits(37297u) % 32u)) | ~firstLeadingBit(_wgslsmith_clamp_u32(0u, u_input.a, 4294967295u)));
    var_1 = vec4<bool>(arg_3.x, !all(!vec2<bool>(var_1.x, var_1.x)), ~arg_0 != abs(countOneBits(abs(14350i))), var_1.x);
    var var_3 = Struct_2(false, select(vec4<bool>(select(true, u_input.a == 24822u, all(vec3<bool>(arg_3.x, false, false))), var_1.x, true, !var_1.x), !(!select(vec4<bool>(var_1.x, true, true, true), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), var_1.x)), any(select(!vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x), select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(var_1.x, true, true, false), vec4<bool>(arg_3.x, var_1.x, false, true)), var_1.x && true))), (-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, -3686i, var_0.x), vec4<i32>(var_0.x, 1i, arg_0, 2147483647i), vec4<i32>(arg_0, var_0.x, 6380i, 52450i)) ^ max(-vec4<i32>(-1i, 0i, var_0.x, -1i), vec4<i32>(10479i, -8893i, u_input.d.x, u_input.b) | vec4<i32>(u_input.c.x, arg_0, 1i, arg_0))) << (vec4<u32>(83773u, _wgslsmith_mod_u32(1u, 1u), _wgslsmith_mult_u32(12500u, ~arg_2), firstTrailingBit(arg_2 ^ 6388u)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 1000f, arg_1), vec3<f32>(arg_1, arg_1, arg_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1))))), u_input.e.x, u_input.e.x, ~vec3<u32>(_wgslsmith_mod_u32(arg_2, 63055u), 0u, u_input.a), countOneBits(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, u_input.c.x, u_input.d.x)), ~vec3<i32>(45472i, -2147483647i, arg_0)))), select(arg_3, select(var_1.wyw, select(select(var_1.yzx, vec3<bool>(true, true, false), var_1.ywz), vec3<bool>(arg_3.x, false, arg_3.x), vec3<bool>(arg_3.x, var_1.x, true)), arg_3), true));
    return StorageBuffer(vec2<i32>(1i, 1i), 1491f, ~(-var_3.c), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = -abs(u_input.c);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1621f, -1331f, -246f), vec3<f32>(271f, -488f, -2178f)), vec3<f32>(1f, 1f, 1f))))), 77305u, ~1u, ~vec3<u32>(_wgslsmith_sub_u32(u_input.a, 0u), 0u, _wgslsmith_sub_u32(u_input.e.x, abs(u_input.e.x))), vec3<i32>(countOneBits(1i), var_1.x, u_input.c.x));
    var var_3 = abs(0u);
    var_1 = firstLeadingBit(u_input.c);
    var var_4 = 1i;
    let x = u_input.a;
    s_output = func_5(select(u_input.d.x, var_1.x, ~func_1(vec3<u32>(4294967295u, 4294967295u, var_2.c)) <= ~_wgslsmith_mult_u32(0u, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)) - var_2.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -879f)), 2018u, select(vec3<bool>(_wgslsmith_f_op_f32(var_2.a.x + -1878f) < _wgslsmith_f_op_f32(-var_2.a.x), true, select(all(vec2<bool>(true, false)), select(false, false, false), true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), any(vec3<bool>(false, true, false))), countOneBits(var_2.e.x) < -(~var_2.e.x)));
}

