struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool = false;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<u32> {
    global0 = Struct_4(Struct_1(vec2<bool>(true, any(vec4<bool>(true, false, false, global0.b.x))), vec2<i32>(~global0.a.b.x, abs(u_input.c.x) & -u_input.c.x), false & global0.a.c, u_input.a.x ^ (global0.a.d << (_wgslsmith_sub_u32(u_input.d.x, 1u) % 32u))), select(select(global0.a.a, !global0.b, !select(global0.a.a, global0.a.a, global0.a.c)), select(select(!global0.b, select(global0.b, vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false)), global0.a.a, global0.a.c), abs(u_input.c.x) <= global0.a.d));
    global1 = global0.b.x;
    global1 = all(!global0.b) | global0.a.c;
    global0 = Struct_4(Struct_1(global0.b, ~_wgslsmith_add_vec2_i32(~vec2<i32>(-29699i, global0.a.d), vec2<i32>(global0.a.d, 1i)), true, ~_wgslsmith_mult_i32(-8345i, 1i)), global0.b);
    let var_0 = Struct_3(-2147483647i, Struct_2(global0.a, global0.a, global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1339f, -169f, -1291f) * vec3<f32>(786f, -1946f, -2916f)))) * vec3<f32>(_wgslsmith_f_op_f32(min(-2098f, -241f)), 1000f, _wgslsmith_f_op_f32(sign(1053f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1389f))), 1000f)), max(u_input.b, 76030u), -(vec2<i32>(-1i) * -u_input.a));
    return ~vec4<u32>(34151u, 12245u, u_input.e, (_wgslsmith_clamp_u32(u_input.d.x, 15554u, u_input.e) & 4294967295u) ^ ~(var_0.c << (var_0.c % 32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>) -> vec2<bool> {
    global0 = Struct_4(Struct_1(select(!select(global0.a.a, global0.a.a, global0.b), vec2<bool>(global0.b.x, true), false), _wgslsmith_sub_vec2_i32(vec2<i32>(-36901i, 2147483647i), min(firstLeadingBit(vec2<i32>(global0.a.d, -2147483647i)), ~u_input.a)), global0.b.x, max(u_input.c.x, countOneBits(firstTrailingBit(global0.a.d)))), !select(!select(global0.b, vec2<bool>(true, global0.a.a.x), global0.b), vec2<bool>(true, global0.a.a.x), !vec2<bool>(global0.a.c, global0.b.x)));
    let var_0 = -149f;
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-329f)))), _wgslsmith_f_op_f32(round(-1596f)))))) <= _wgslsmith_f_op_f32(-155f - 1931f);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(870f, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-430f, var_0, 1000f))))))) - vec3<f32>(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 + -1388f), _wgslsmith_f_op_f32(floor(var_0))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 2032f) + var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(max(var_0, -699f)))))));
    var var_2 = _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(_wgslsmith_div_i32(-5285i, _wgslsmith_clamp_i32(-2147483647i, -9162i, -2147483647i)), min(2147483647i, -1129i) & (-1i >> (arg_1.x % 32u)))), u_input.c.x);
    return select(select(!global0.a.a, global0.b, vec2<bool>(true, true)), !select(select(global0.b, select(vec2<bool>(false, true), global0.a.a, vec2<bool>(global0.a.a.x, global0.b.x)), select(vec2<bool>(global0.b.x, false), vec2<bool>(true, true), global0.a.a.x)), !global0.a.a, select(vec2<bool>(true, global0.a.a.x), vec2<bool>(true, false), !global0.a.a)), global0.b);
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = Struct_4(Struct_1(func_4(func_3() << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.e, 36422u), vec4<u32>(u_input.d.x, u_input.b, u_input.b, 0u)) % vec4<u32>(32u)), min(~vec3<u32>(0u, u_input.e, 56758u), vec3<u32>(44296u, 17349u, u_input.d.x))), ~u_input.a, global0.b.x, arg_0), global0.a.a);
    global1 = !any(select(select(vec4<bool>(true, true, true, global0.a.c), vec4<bool>(true, global0.b.x, global0.a.a.x, global0.a.a.x), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), true)) || false;
    let var_0 = Struct_4(global0.a, select(global0.b, select(vec2<bool>(true, global0.b.x || global0.b.x), vec2<bool>(true, global0.b.x & global0.a.a.x), true), global0.a.a));
    var var_1 = ~u_input.d;
    return Struct_1(vec2<bool>(func_4(~countOneBits(vec4<u32>(4294967295u, 4294967295u, u_input.d.x, var_1.x)), vec3<u32>(var_1.x, var_1.x, var_1.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, u_input.d.x, 4294967295u), vec3<u32>(4294967295u, 0u, var_1.x)) % vec3<u32>(32u))).x, global0.a.c | !(var_0.a.c && global0.a.c)), vec2<i32>(-1i, arg_0), any(vec2<bool>(!var_0.a.c, (u_input.b | 21873u) != ~1907u)), u_input.c.x);
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(1000f * -236f);
    var var_1 = func_2(u_input.a.x);
    var var_2 = vec3<u32>(min(~u_input.d.x, abs(min(u_input.d.x << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, 0u, u_input.e))))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, 1803u), 12233u, _wgslsmith_sub_u32(4294967295u, 1995u), u_input.b), firstTrailingBit(vec4<u32>(u_input.e, ~1u, u_input.b, 1u))), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, ~(~42925u)), 6675u));
    var var_3 = Struct_2(func_2(_wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(12194i, global0.a.d, 0i, 10422i)), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -10534i, var_1.b.x), vec4<i32>(2147483647i, -47549i, 22582i, var_1.d))))), func_2(-14477i), !select(vec2<bool>(select(global0.a.a.x, true, false), var_1.c | true), vec2<bool>(func_4(vec4<u32>(var_2.x, var_2.x, 1u, 0u), vec3<u32>(var_2.x, u_input.b, 0u)).x, true), global0.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, 818f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -2528f, -1112f))))), !(!vec3<bool>(var_1.c, global0.a.a.x, global0.b.x)))))), var_0);
    let var_4 = false;
    return select(!(!vec3<bool>(var_3.c.x, all(vec4<bool>(false, false, global0.a.a.x, global0.b.x)), select(false, global0.b.x, var_3.a.a.x))), select(vec3<bool>(true & !var_1.a.x, var_1.c, !(!global0.b.x)), vec3<bool>(true, true, true), vec3<bool>(true, all(select(vec4<bool>(global0.a.c, global0.a.a.x, var_3.b.a.x, var_1.c), vec4<bool>(var_4, global0.a.a.x, var_1.a.x, false), vec4<bool>(false, true, true, false))), true)), select(false, var_3.c.x, false));
}

fn func_5(arg_0: vec3<bool>) -> Struct_4 {
    let var_0 = u_input.b;
    return Struct_4(global0.a, arg_0.xy);
}

fn func_6(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec3<bool> {
    global0 = Struct_4(func_2(func_5(!vec3<bool>(global0.b.x, arg_3.b.a.x, global0.a.a.x)).a.b.x), func_2(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, arg_3.a.d, 4323i), vec4<i32>(-2147483647i, u_input.a.x, 21419i, 14789i)))).a);
    let var_0 = -(~(-u_input.c) | _wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, arg_3.b.b.x), vec2<i32>(24174i, 1i))) ^ u_input.c;
    let var_1 = u_input.d.x;
    var var_2 = -2147483647i;
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(~var_1, 32847u, arg_3.b.c | arg_3.a.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x | arg_2.x, _wgslsmith_mult_u32(0u, arg_1.x), var_1, var_1), _wgslsmith_add_vec4_u32(vec4<u32>(42499u, arg_1.x, 4294967295u, 23526u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, 1u, arg_1.x), vec4<u32>(u_input.d.x, var_1, arg_2.x, u_input.b)))), u_input.e, ~arg_1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(abs(arg_1.x), 4294967295u, max(var_1 << (4294967295u % 32u), 4294967295u), 31663u), vec4<u32>(u_input.d.x, 0u, abs(4294967295u), ~arg_1.x) >> (min(_wgslsmith_clamp_vec4_u32(vec4<u32>(37072u, 63860u, 4348u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(612u, arg_2.x, 1u, 4294967295u)), vec4<u32>(var_1, u_input.e, 49621u, 1u)) % vec4<u32>(32u))));
    return !select(func_1(), select(select(func_1(), vec3<bool>(global0.b.x, global0.b.x, true), any(vec4<bool>(true, false, global0.a.a.x, arg_3.c.x))), vec3<bool>(!global0.b.x, !arg_3.a.a.x, true), true), 10688u < abs(~var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(select(select(select(vec3<bool>(global0.b.x, global0.b.x, global0.b.x), vec3<bool>(false, true, global0.b.x), global0.b.x), !vec3<bool>(global0.a.a.x, false, true), vec3<bool>(true, true, false)), select(!vec3<bool>(global0.b.x, global0.a.a.x, global0.a.c), vec3<bool>(true, true, true), func_1()), any(select(vec4<bool>(false, false, true, false), vec4<bool>(global0.b.x, true, true, global0.b.x), false)))), select(vec2<u32>(~u_input.b, u_input.b) | vec2<u32>(firstLeadingBit(u_input.e), 94596u), u_input.d, global0.b), vec2<u32>(_wgslsmith_sub_u32(~(~u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), ~vec2<u32>(47375u, 0u))), 1u), Struct_2(global0.a, global0.a, func_4(~vec4<u32>(1u, u_input.e, u_input.e, 22633u), vec3<u32>(37596u, min(u_input.d.x, 76188u), _wgslsmith_add_u32(u_input.e, u_input.e))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1300f, 1461f, -641f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1431f, -207f, -987f)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(885f, -1602f, -881f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-213f, 1113f, -822f)), vec3<bool>(false, true, global0.a.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(998f, 340f)))));
    var var_1 = Struct_3(global0.a.b.x, Struct_2(Struct_1(vec2<bool>(global0.b.x, any(global0.b)), vec2<i32>(-1i, -13924i), any(select(vec4<bool>(false, global0.b.x, true, true), vec4<bool>(true, false, false, global0.a.a.x), global0.a.a.x)), 1i), func_5(!vec3<bool>(true, var_0.x, true)).a, func_1().yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1783f, -2046f, 1000f))), -852f), abs(~22264u), vec2<i32>(2147483647i, i32(-1i) * -2147483647i));
    let var_2 = var_1.b;
    let var_3 = reverseBits(vec4<u32>(_wgslsmith_clamp_u32(78296u, 6647u, 73512u) | 58968u, max(u_input.b << (1u % 32u), firstTrailingBit(4294967295u)), 4294967295u, func_3().x) << (firstTrailingBit(abs(vec4<u32>(var_1.c, 2781u, u_input.e, u_input.e))) % vec4<u32>(32u)));
    let var_4 = func_5(func_6(Struct_4(global0.a, func_4(var_3, ~vec3<u32>(17087u, u_input.e, 47608u))), var_3.zw, vec2<u32>(firstLeadingBit(func_3().x), 846u), var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, u_input.c.x, select(vec3<i32>(-1i, ~0i, global0.a.b.x), abs(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b.b.x, 1i, -2147483647i), vec3<i32>(-1i, var_4.a.d, var_1.a))), true));
}

