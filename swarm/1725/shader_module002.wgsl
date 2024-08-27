struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec4<bool> {
    global0 = array<Struct_2, 29>();
    let var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, false, true, true)), true, all(vec2<bool>(true, false)))), select(vec3<bool>(true, all(vec3<bool>(true, false, true)), u_input.c.x <= 4294967295u), vec3<bool>(u_input.e < 28984u, 2147483647i == u_input.d, true), vec3<bool>(true, true, true)), vec3<bool>(_wgslsmith_f_op_f32(-arg_0) != -716f, all(vec4<bool>(false, false, false, true)), true));
    var var_1 = ~u_input.e;
    var var_2 = firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(min(-5520i, -55492i), ~u_input.d), vec2<i32>(reverseBits(u_input.d), i32(-1i) * -2147483647i))) | ~_wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.d, u_input.d) | vec2<i32>(u_input.d, 0i), -vec2<i32>(-20821i, 0i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(u_input.d, 16211i)));
    var var_3 = global0[_wgslsmith_index_u32(max(~u_input.b, u_input.c.x & _wgslsmith_add_u32(min(~u_input.e, _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(4294967295u, 1u))), u_input.c.x)), 29u)];
    return select(vec4<bool>(false || (any(vec4<bool>(true, true, var_0.x, var_3.b.a.x)) & any(vec4<bool>(false, false, true, var_3.a.a.x))), any(vec4<bool>(var_0.x, any(var_3.b.a), false, false)), any(vec3<bool>(any(vec4<bool>(var_3.b.a.x, false, var_3.b.a.x, false)), var_0.x, true)), !all(vec2<bool>(false, true))), select(vec4<bool>(true, false, abs(var_2.x) < -1i, any(select(vec4<bool>(true, var_3.a.a.x, false, var_0.x), vec4<bool>(var_3.b.a.x, false, var_0.x, false), vec4<bool>(true, var_3.b.a.x, true, var_3.a.a.x)))), select(select(!vec4<bool>(false, true, false, var_3.b.a.x), select(vec4<bool>(var_0.x, var_0.x, var_3.a.a.x, false), vec4<bool>(var_0.x, false, var_3.b.a.x, true), vec4<bool>(var_0.x, var_3.b.a.x, var_0.x, var_3.a.a.x)), any(var_0)), vec4<bool>(true | var_3.a.a.x, true, true, var_3.a.a.x), vec4<bool>(all(vec4<bool>(true, true, true, var_3.b.a.x)), var_3.a.a.x, false, !var_3.b.a.x)), true), select(!(1u >= _wgslsmith_mod_u32(1u, u_input.c.x)), !var_0.x | var_3.a.a.x, select(!var_0.x, countOneBits(1u) > u_input.a.x, true)));
}

fn func_2(arg_0: bool) -> u32 {
    global0 = array<Struct_2, 29>();
    let var_0 = vec2<bool>(false, all(!func_3(_wgslsmith_f_op_f32(select(-424f, 1547f, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1818f, -1877f) + vec3<f32>(1165f, -539f, 461f)))));
    let var_1 = var_0.x;
    let var_2 = select(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1631f - -628f) + _wgslsmith_f_op_f32(sign(593f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2221f, -239f, -1000f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -608f, -114f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, -1221f, -1770f))))).yyz, vec3<bool>(var_1, true, true), true);
    var var_3 = ~vec2<i32>(abs(max(u_input.d, min(u_input.d, -1i))), u_input.d);
    return _wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, u_input.a.x, u_input.a.x, u_input.c.x), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.b), abs(vec4<u32>(u_input.a.x, u_input.b, 0u, u_input.e))), select(vec4<u32>(u_input.b, 7622u, 88214u, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(30969u, u_input.e, u_input.e, u_input.e), vec4<u32>(u_input.c.x, 28515u, u_input.b, u_input.e), vec4<u32>(1u, u_input.c.x, u_input.b, u_input.e)), true))), u_input.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3.a;
    global0 = array<Struct_2, 29>();
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(199f, 1218f, -899f, 633f), vec4<f32>(673f, -946f, -473f, -153f), vec4<bool>(true, false, true, true))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1065f) - _wgslsmith_f_op_f32(f32(-1f) * -242f)), _wgslsmith_f_op_f32(1186f - _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(215f + 1395f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1047f)))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var_0 = Struct_1(vec2<bool>(all(select(!vec4<bool>(false, false, var_0.a.x, arg_3.a.a.x), vec4<bool>(true, arg_0.b.a.x, false, true), select(vec4<bool>(var_0.a.x, false, false, var_0.a.x), vec4<bool>(false, var_0.a.x, false, arg_3.b.a.x), vec4<bool>(arg_3.b.a.x, true, false, arg_3.a.a.x)))), arg_3.b.a.x));
    return Struct_1(func_3(var_1.x, _wgslsmith_f_op_vec3_f32(-var_1.yxw)).xx);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = 1i;
    var var_1 = u_input.a.x;
    var var_2 = !(!all(arg_0.a));
    var_2 = true;
    var var_3 = func_4(global0[_wgslsmith_index_u32(countOneBits(u_input.e), 29u)], vec4<i32>(u_input.d, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0, reverseBits(u_input.d), max(var_0, var_0)), _wgslsmith_mult_i32(-var_0, u_input.d | var_0)), u_input.d, ~_wgslsmith_mod_i32(2147483647i, ~1i)), u_input.c.x, Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(!arg_0.a.x, !arg_1.a.x))));
    return _wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, select(u_input.b, u_input.e, arg_0.a.x)), abs(~u_input.a.yy))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_5(func_4(global0[_wgslsmith_index_u32(func_2(true), 29u)], vec4<i32>(-1i) * -(~vec4<i32>(u_input.d, -23233i, u_input.d, u_input.d)), u_input.c.x, Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)))), func_4(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], vec4<i32>(u_input.d, u_input.d, -_wgslsmith_mod_i32(u_input.d, u_input.d), -2147483647i), select(_wgslsmith_div_u32(min(9146u, u_input.b), ~32457u), 4294967295u, all(vec2<bool>(false, true))), global0[_wgslsmith_index_u32(91271u, 29u)]));
    var var_1 = i32(-1i) * -u_input.d;
    var_1 = (firstLeadingBit((u_input.d ^ 1i) << (var_0.x % 32u)) ^ _wgslsmith_div_i32(-(~1i), ~(~45319i))) << (~(u_input.e << (~(9000u << (1u % 32u)) % 32u)) % 32u);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) * arg_0) - _wgslsmith_f_op_f32(-624f * _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_div_f32(1f, arg_0)));
    let var_3 = ~select(vec4<u32>(abs(func_5(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true))).x), ~u_input.a.x, ~var_0.x << (~var_0.x % 32u), var_0.x), max(abs(vec4<u32>(58446u, u_input.e, 0u, u_input.e)), ~vec4<u32>(u_input.b, 43637u, var_0.x, 0u) ^ abs(vec4<u32>(var_0.x, 0u, u_input.b, var_0.x))), vec4<bool>(select(true, true, true), all(func_3(arg_0, vec3<f32>(-434f, arg_0, arg_0))), false, true));
    return func_4(Struct_2(Struct_1(func_3(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1029f, arg_0, -281f) + vec3<f32>(arg_0, 3213f, arg_0))).yz), Struct_1(vec2<bool>(true, arg_0 <= -490f))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(53061i, -33970i, u_input.d, -22838i), vec4<i32>(-10629i, 0i, -1i, 682i), vec4<i32>(u_input.d, u_input.d, u_input.d, 1i)), vec4<i32>(u_input.d, 0i, -87148i, -1i) | vec4<i32>(u_input.d, -16137i, u_input.d, u_input.d)), -vec4<i32>(-25598i, u_input.d, 1i, -2147483647i)), countOneBits(max(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -7379i, 5524i, -53970i), vec4<i32>(-14278i, -1i, -2147483647i, u_input.d)), firstLeadingBit(vec4<i32>(-13970i, 1i, 25876i, -18967i))))), var_3.x, Struct_2(func_4(global0[_wgslsmith_index_u32(var_0.x, 29u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.d, u_input.d, u_input.d) >> (vec4<u32>(49632u, 4294967295u, var_3.x, 42465u) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.d, u_input.d, u_input.d), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -21403i, 26679i, u_input.d), vec4<i32>(36389i, -31594i, u_input.d, u_input.d))), ~var_3.x, Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)))), func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_3.wzy, vec3<u32>(var_0.x, 1u, u_input.e)), var_3.xzy | vec3<u32>(0u, var_3.x, var_3.x)), 29u)], ~vec4<i32>(u_input.d, u_input.d, 0i, -4253i), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, var_3.x, 723u), var_3.yyy), var_3.zyz >> (vec3<u32>(5687u, 1u, 16253u) % vec3<u32>(32u))), Struct_2(func_4(Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false))), vec4<i32>(u_input.d, -1i, u_input.d, 18619i), var_0.x, Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)))), func_4(global0[_wgslsmith_index_u32(var_0.x, 29u)], vec4<i32>(-56619i, u_input.d, u_input.d, 1548i), 51708u, Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    let var_0 = all(vec4<bool>(true, true, true, false));
    global0 = array<Struct_2, 29>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 490f, -190f, 2646f) - vec4<f32>(405f, -753f, -820f, -134f)) - vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-134f, 301f, _wgslsmith_f_op_f32(min(-746f, 927f)), _wgslsmith_f_op_f32(max(1218f, -123f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(185f, -365f, -1077f, -1000f)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_1.x, 1422f))))), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(763f - var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(min(-1348f, _wgslsmith_f_op_f32(f32(-1f) * -157f))))));
    global0 = array<Struct_2, 29>();
    let var_3 = true;
    var var_4 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-273f + -376f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -833f) * _wgslsmith_f_op_f32(400f - -1064f)))));
    var var_5 = -vec4<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.d << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 84911u, 69900u), vec3<u32>(1u, 1u, u_input.c.x)) % 32u)), -11184i, ~(-u_input.d), max(u_input.d >> (4294967295u % 32u), select(~u_input.d, 1i, true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(33701u, 4294967295u, u_input.c.x, u_input.c.x)), max(vec4<u32>(48406u, u_input.e, 16400u, 0u), ~vec4<u32>(u_input.e, u_input.c.x, 1u, 61066u)))), _wgslsmith_f_op_vec4_f32(var_1 * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 2922f, var_2.x, var_1.x)), var_1, var_4.b.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(756f))), -1175f, var_1.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 * vec4<f32>(var_1.x, 137f, 952f, -831f)) + _wgslsmith_f_op_vec4_f32(var_1 - var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 + vec4<f32>(var_1.x, var_1.x, -1179f, var_1.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -319f, 423f, -219f), vec4<f32>(-2360f, 1554f, var_1.x, -955f)))))));
}

