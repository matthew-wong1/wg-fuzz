struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~u_input.a);
    var var_1 = ~(~(~(~(~vec4<u32>(u_input.c, var_0.x, 1u, 110219u)))));
    var_1 = ~select(u_input.e | u_input.e, vec4<u32>(_wgslsmith_sub_u32(~var_1.x, u_input.a.x), var_0.x, 1u, 0u), true);
    return Struct_1(!((u_input.b <= max(14458i, u_input.b)) | any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), vec2<bool>((16331u < (u_input.e.x & var_1.x)) & true, false || (u_input.b >= 2147483647i)), ~(~countOneBits(vec2<i32>(-20970i, u_input.b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = 13462u;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(-(~(2147483647i ^ arg_1.c.x)), _wgslsmith_sub_i32(countOneBits(-u_input.d), 1i)), arg_1.c.x);
    var_1 = abs(-28275i);
    var_1 = ~arg_1.c.x;
    let var_2 = !select(vec2<bool>(all(!vec4<bool>(arg_1.b.x, arg_1.b.x, false, false)), !all(arg_1.b)), vec2<bool>(false, arg_1.b.x), true);
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = u_input.e;
    var var_1 = (_wgslsmith_sub_vec3_i32(select(vec3<i32>(arg_1.c.x, u_input.d, -1i), vec3<i32>(arg_1.c.x, -42625i, 25510i), true) | ~vec3<i32>(arg_1.c.x, -12499i, 53592i), vec3<i32>(arg_1.c.x, -2147483647i, arg_1.c.x) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.d, 14604i), vec3<i32>(43054i, arg_1.c.x, 0i))) & firstLeadingBit(vec3<i32>(-1i, _wgslsmith_add_i32(u_input.d, arg_1.c.x), select(0i, arg_1.c.x, arg_1.b.x)))) << (reverseBits(select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 32698u, var_0.x, 5540u), vec4<u32>(u_input.e.x, 22742u, var_0.x, u_input.e.x)), ~56358u, 4294967295u), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, var_0.x), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a.x, 0u), vec4<u32>(1u, var_0.x, 1223u, u_input.a.x))), !any(vec4<bool>(false, arg_1.b.x, false, true)))) % vec3<u32>(32u));
    var var_2 = Struct_1(true, !vec2<bool>(!arg_1.b.x, true), _wgslsmith_sub_vec2_i32(arg_1.c >> (min(u_input.a, _wgslsmith_clamp_vec2_u32(u_input.a, var_0.xw, u_input.a)) % vec2<u32>(32u)), -vec2<i32>(countOneBits(374i), -u_input.d)));
    let var_3 = Struct_1(!(!arg_1.a) && var_2.a, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) * arg_0)), arg_1, 4294967295u).b, vec2<i32>(_wgslsmith_mult_i32(max(firstTrailingBit(var_2.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(64920i, var_2.c.x, 2147483647i), vec3<i32>(var_1.x, arg_1.c.x, 13i))), u_input.d), func_3(arg_0, arg_1, var_0.x).c.x));
    let var_4 = true;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1166f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2272f - arg_0))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(136f, -244f, arg_0), vec3<f32>(-610f, arg_0, -1535f), false)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -693f) - vec3<f32>(-115f, 1000f, 269f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(698f, arg_0, -1000f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 909f, arg_0) - _wgslsmith_div_vec3_f32(vec3<f32>(451f, arg_0, -218f), vec3<f32>(arg_0, arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -436f) + vec3<f32>(648f, 1000f, -1000f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 153f, 1213f)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2209f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1042f)) + _wgslsmith_f_op_f32(select(-628f, -1000f, false)))))), func_3(_wgslsmith_f_op_f32(floor(418f)), func_2(), u_input.e.x)));
    var var_1 = Struct_3(func_3(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(195f + var_0.x))), true)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 46516i, 1i, -17403i), vec4<i32>(-1i, u_input.b, u_input.b, 2147483647i)) <= (u_input.d | u_input.b), vec2<bool>(true, true), vec2<i32>(13773i, u_input.b >> (4294967295u % 32u))), _wgslsmith_add_u32(countOneBits(~u_input.c), u_input.a.x)).c.x, countOneBits(vec4<i32>(-2147483647i, max(u_input.d, u_input.d), 0i, u_input.b)), 1u, ~(-vec4<i32>(-2147483647i, firstTrailingBit(-12277i), -2147483647i, u_input.b)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.d, u_input.b), vec2<i32>(-61244i, -2251i), true), vec2<i32>(u_input.d, u_input.d) | vec2<i32>(-60470i, 1i)), u_input.b), u_input.d));
    var var_2 = Struct_3(_wgslsmith_clamp_i32(var_1.b.x, u_input.b, _wgslsmith_sub_i32(~0i, ~10950i)), var_1.d, var_1.c, ~firstTrailingBit(vec4<i32>(var_1.a, u_input.d >> (u_input.c % 32u), u_input.d, ~var_1.a)), firstLeadingBit(var_1.b.wy) | vec2<i32>(var_1.b.x, select(abs(u_input.d), var_1.d.x, false)));
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(min(var_1.c, firstTrailingBit(u_input.a.x))), u_input.a.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.e.yzw), ~u_input.e.yww), var_1.c), ~(~vec4<u32>(1u, 0u, ~45910u, ~u_input.c)));
    let var_4 = ~(-var_1.b);
    return Struct_1(true, !func_2().b, vec2<i32>(u_input.b, 2147483647i));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    var var_0 = ~reverseBits(vec4<u32>(arg_3.c, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 55044u), u_input.a) << ((u_input.c << (28627u % 32u)) % 32u), ~(~arg_3.c), ~arg_3.c));
    var_0 = u_input.e;
    let var_1 = max(~_wgslsmith_mult_u32(_wgslsmith_div_u32(abs(arg_3.c), arg_3.c), u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, countOneBits(var_0.x)), ~vec2<u32>(arg_3.c >> (20828u % 32u), ~arg_3.c)));
    var var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * 889f), _wgslsmith_f_op_f32(f32(-1f) * -834f)))), _wgslsmith_f_op_f32(-arg_1.x)));
    return !(!(!any(vec4<bool>(arg_0.a, true, arg_2.a, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-186f))), 219f, func_5(func_1(), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-376f, -1544f), vec2<f32>(257f, -1925f), vec2<bool>(true, false))), func_1(), Struct_3(u_input.b, vec4<i32>(u_input.d, 48484i, u_input.b, u_input.b), 1u, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<i32>(-30571i, u_input.b))) & true)));
    var var_1 = func_1();
    let var_2 = -361f;
    let var_3 = Struct_2(func_1(), reverseBits(118770u), func_2(), func_2());
    var var_4 = ~vec4<u32>(0u, abs(u_input.e.x), ~var_3.b ^ select(u_input.e.x | 0u, ~1u, var_1.b.x), 0u);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-541f, -1008f))) + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1543f * -1677f) + _wgslsmith_div_f32(var_2, var_2)))), var_0.x);
    var_4 = vec4<u32>(14017u, u_input.e.x, ~(_wgslsmith_div_u32(var_3.b, min(30509u, 0u)) << (~var_3.b % 32u)), ~min(var_4.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, u_input.c, 0u), var_4.zyw)));
    var var_5 = -reverseBits(var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().c, u_input.a);
}

