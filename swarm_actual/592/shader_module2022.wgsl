struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-682f, 1407f));

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<f32>(-2215f, -1163f)), Struct_1(vec2<f32>(1000f, -202f)), Struct_1(vec2<f32>(-858f, -407f)), Struct_1(vec2<f32>(1725f, -1559f)), Struct_1(vec2<f32>(-1940f, 150f)), Struct_1(vec2<f32>(709f, 745f)));

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-1000f, -469f));

var<private> global3: Struct_2;

var<private> global4: i32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-570f, global0.a.x)) + -1947f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(588f - global2.a.x)) + global2.a.x), _wgslsmith_clamp_u32(~(global3.c.x << (71222u % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.c.x, 36699u, 4294967295u), vec3<u32>(4294967295u, global3.c.x, 0u)), ~(~42294u)) >= _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(97728u, global3.c.x, 48594u), vec3<u32>(25046u, global3.c.x, 3746u)), ~vec3<u32>(49277u, 1u, global3.c.x)), ~vec3<u32>(global3.c.x, 42073u, u_input.a) << (~vec3<u32>(23431u, 4294967295u, global3.c.x) % vec3<u32>(32u))), true);
    var var_1 = _wgslsmith_div_vec3_i32(-vec3<i32>(1i, -1386i, 3353i) ^ -_wgslsmith_div_vec3_i32(vec3<i32>(-13716i, 2147483647i, -4343i), -vec3<i32>(u_input.c, u_input.c, 1i)), vec3<i32>(-u_input.c, u_input.c, _wgslsmith_add_i32(2147483647i, (u_input.c >> (u_input.a % 32u)) << (max(0u, u_input.b) % 32u))));
    let var_2 = ~firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(45085u, global3.c.x), min(global3.c, vec2<u32>(0u, global3.c.x)) >> (global3.c % vec2<u32>(32u))));
    global2 = Struct_1(global0.a);
    global2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a), vec2<f32>(_wgslsmith_f_op_f32(-1535f * 1065f), global2.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)) - vec2<f32>(1458f, _wgslsmith_f_op_f32(step(global2.a.x, 1736f))))));
    return all(vec3<bool>(!all(select(vec4<bool>(arg_0.x, arg_0.x, var_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0.x))), false, all(var_0.wyy)));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(true, abs(-(reverseBits(vec4<i32>(-1i, u_input.c, u_input.c, -1i)) ^ -vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), abs(~(u_input.a >> (global3.c.x % 32u))) >> (36816u % 32u), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.a.x, global3.e, global2.a.x))) - vec3<f32>(-1000f, global0.a.x, global0.a.x)))), global3.b, max(vec2<u32>(firstTrailingBit(u_input.b), 33341u), ~vec2<u32>(127u, 6396u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global0.a.x) + _wgslsmith_f_op_vec2_f32(-global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1072f))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, 852f)), _wgslsmith_f_op_vec2_f32(-global2.a))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(global0.a)))))));
    var var_1 = select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(var_0.a, var_0.a), true), !(!vec2<bool>(var_0.a, true)), var_0.d.d.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1770f * 251f) + _wgslsmith_f_op_f32(f32(-1f) * -511f))), vec2<bool>(false, any(vec3<bool>(true, any(vec2<bool>(false, var_0.a)), true))), vec2<bool>(true, false));
    var var_2 = abs(_wgslsmith_sub_vec2_u32(global3.c, var_0.d.c) ^ _wgslsmith_clamp_vec2_u32(~global3.c, ~global3.c, vec2<u32>(global3.c.x, _wgslsmith_sub_u32(50186u, u_input.d))));
    global0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(global3.b.a.x, -454f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3.d.x, _wgslsmith_f_op_f32(global0.a.x * 931f)), _wgslsmith_div_f32(global2.a.x, -2031f)))));
    let var_3 = _wgslsmith_add_u32(u_input.a, ~31437u);
    return global3.c.x;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<bool>(any(vec2<bool>(any(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, true, true)))), any(vec3<bool>(func_2(vec2<bool>(true, true)) | true, true, true)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global3.a * vec3<f32>(global2.a.x, global2.a.x, global2.a.x))))))), Struct_1(global2.a), firstTrailingBit(vec2<u32>(0u, firstLeadingBit(abs(u_input.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.d * _wgslsmith_f_op_vec2_f32(global2.a * vec2<f32>(-663f, global0.a.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-578f, _wgslsmith_f_op_f32(step(338f, -1000f)))))), -139f));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(-_wgslsmith_mult_i32(-1i, u_input.c) >> (~func_3() % 32u), u_input.c), -1i);
    let var_3 = select(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 47912u, 62028u, 0u), vec4<u32>(u_input.b, 1u, 1u, global3.c.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, global3.c.x, u_input.a), vec4<u32>(var_1.c.x, u_input.a, u_input.a, u_input.a))) << (max(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, global3.c.x, u_input.d), vec4<u32>(var_1.c.x, global3.c.x, 104646u, var_1.c.x)), vec4<u32>(75646u, 45892u, 26152u, var_1.c.x) ^ vec4<u32>(var_1.c.x, global3.c.x, 22421u, global3.c.x), ~vec4<u32>(4294967295u, u_input.b, 1u, 4294967295u)), ~select(vec4<u32>(var_1.c.x, 0u, 49755u, u_input.d), vec4<u32>(0u, u_input.a, 38576u, 25259u), vec4<bool>(var_0.x, var_0.x, var_0.x, false))) % vec4<u32>(32u)), select(vec4<u32>(7603u, 49677u, var_1.c.x, 0u), firstTrailingBit(vec4<u32>(var_1.c.x ^ global3.c.x, ~global3.c.x, ~26198u, 1u | global3.c.x)), select(select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, false), select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x)), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), select(!vec4<bool>(true, var_0.x, false, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, false)))), false);
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(251f, 1170f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, global2.a.x, global3.b.a.x) - vec3<f32>(var_1.e, global3.a.x, global0.a.x))))))), var_1.b, countOneBits(var_3.yx), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.a.x))), 1137f))), global3.d.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, global3.e) + var_1.d)) - vec2<f32>(global3.e, global2.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = firstTrailingBit(4294967295u);
    var var_1 = u_input.d;
    global3 = arg_3;
    global1 = array<Struct_1, 6>();
    let var_2 = arg_3;
    return select(vec2<bool>(any(vec3<bool>(true, 567f >= global2.a.x, false)), select(all(vec3<bool>(false, true, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true)), any(vec4<bool>(true, true, true, true)) | true)), select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), false), vec2<bool>(all(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, true, true))), all(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), true))), !select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -573f;
    var var_1 = ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(79313u, 7419u), vec2<u32>(u_input.b, u_input.d)) >> ((firstTrailingBit(global3.c) | ~vec2<u32>(global3.c.x, global3.c.x)) % vec2<u32>(32u))));
    global4 = u_input.c;
    var var_2 = func_4(func_1(), ~(~vec3<u32>(~global3.c.x, ~0u, global3.c.x << (global3.c.x % 32u))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.a * vec3<f32>(global0.a.x, -859f, global2.a.x)))), func_1(), global3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(440f, global2.a.x) * global0.a)) + global3.b.a), _wgslsmith_f_op_f32(f32(-1f) * -2419f)), Struct_2(_wgslsmith_f_op_vec3_f32(-global3.a), func_1(), (~vec2<u32>(17707u, 0u) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), global3.c) % vec2<u32>(32u))) >> (vec2<u32>(~u_input.d, global3.c.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, -264f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a))), _wgslsmith_f_op_f32(abs(-351f))));
    var var_3 = Struct_3(u_input.c <= -57824i, countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.c, _wgslsmith_add_i32(2147483647i, -2147483647i), ~u_input.c, firstTrailingBit(u_input.c)), vec4<i32>(1i, u_input.c, u_input.c, ~(-2147483647i)))), global3.c.x, Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(164f * -486f), _wgslsmith_f_op_f32(abs(global2.a.x)), 1f), _wgslsmith_div_vec3_f32(global3.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.a.x, 1907f, global0.a.x), vec3<f32>(-1936f, global0.a.x, global0.a.x)))), false)), Struct_1(_wgslsmith_f_op_vec2_f32(global2.a + global2.a)), max(~firstTrailingBit(vec2<u32>(u_input.b, u_input.a)), global3.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(global2.a.x + global2.a.x)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.x, -401f), _wgslsmith_f_op_vec2_f32(global0.a + global2.a), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), global3.b);
    var_1 = _wgslsmith_mult_vec2_u32(~(~reverseBits(global3.c)), ((var_3.d.c & vec2<u32>(25175u, 19603u)) ^ abs(vec2<u32>(0u, var_1.x))) | var_3.d.c) ^ _wgslsmith_clamp_vec2_u32(~var_3.d.c, _wgslsmith_add_vec2_u32(vec2<u32>(abs(50262u), _wgslsmith_div_u32(15227u, 25406u)), global3.c), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_3.d.c, vec2<u32>(global3.c.x, var_3.c), global3.c) << (select(var_3.d.c, global3.c, vec2<bool>(var_2.x, false)) % vec2<u32>(32u)), global3.c));
    var var_4 = Struct_3(!var_3.a, firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_3.b, var_3.b), (vec4<i32>(var_3.b.x, 38047i, -1i, 0i) << (vec4<u32>(24453u, u_input.d, u_input.b, 1u) % vec4<u32>(32u))) & vec4<i32>(-24447i, 8045i, u_input.c, 0i))), 1u, var_3.d, var_3.e);
    global4 = 7688i;
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-564f, _wgslsmith_f_op_f32(global0.a.x - var_3.e.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.d.d.x, 470f)) * 358f), false)), -1673f));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3.c.x, 1u, var_3.d.c.x), vec3<u32>(var_3.c, var_3.c, 0u)), firstLeadingBit(u_input.d)), ~(~var_3.d.c)), var_4.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.b.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.b.x, var_3.b.x, 25637i, var_3.b.x), vec4<i32>(var_3.b.x, -18920i, 32175i, var_4.b.x))), u_input.c), select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -5529i, var_4.b.x) | var_3.b.yzy, _wgslsmith_clamp_vec3_i32(vec3<i32>(-40733i, u_input.c, var_4.b.x), vec3<i32>(1i, var_4.b.x, var_3.b.x), vec3<i32>(u_input.c, 2147483647i, 0i))), countOneBits(vec3<i32>(var_4.b.x, var_3.b.x, var_3.b.x) << (vec3<u32>(var_4.d.c.x, 21620u, 4294967295u) % vec3<u32>(32u))), !var_4.a)));
}

