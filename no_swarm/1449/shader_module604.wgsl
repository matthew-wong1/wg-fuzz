struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(2147483647i, -1i), vec2<u32>(1u, 1u), vec4<bool>(true, true, true, true), vec4<i32>(i32(-2147483648), 0i, -32257i, -9028i));

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(641i, 4294967295u, vec4<u32>(87270u, 0u, 1u, 4294967295u), 2209i), Struct_2(83926i, 68200u, vec4<u32>(1u, 1u, 1u, 0u), -1i));

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(-25390i, i32(-2147483648)), vec2<u32>(4294967295u, 0u), vec4<bool>(false, false, true, true), vec4<i32>(16914i, 0i, 1i, 29061i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>) -> i32 {
    global0 = arg_0;
    let var_0 = Struct_1(~vec2<i32>(min(-23163i, global0.d.x), _wgslsmith_mult_i32(~(-1i), global3.a.x)), arg_0.b | countOneBits(abs(global3.b)), arg_0.c, -vec4<i32>(1i, -firstLeadingBit(29472i), global0.d.x, global0.d.x));
    global1 = vec3<i32>(global1.x, 1i, 14194i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-131f, -1909f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1131f))) + -1000f), false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1813f, -1256f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1353f - 345f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1620f)) + _wgslsmith_f_op_f32(-742f - 2023f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -594f))))));
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(min(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.x, var_0.b.x, 4294967295u), vec3<u32>(21237u, global3.b.x, arg_0.b.x)), ~vec3<u32>(arg_0.b.x, 65713u, var_0.b.x)), ~global4.b.x), _wgslsmith_mult_u32(_wgslsmith_add_u32(global3.b.x, arg_0.b.x), min(_wgslsmith_clamp_u32(u_input.b.x, 8188u, global3.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 1u, u_input.b.x), vec3<u32>(global0.b.x, var_0.b.x, global4.b.x))))), 0u, global4.b.x);
    return u_input.a.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> bool {
    global0 = Struct_1(-_wgslsmith_div_vec2_i32(vec2<i32>(global3.d.x, arg_0.x), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, -53551i)), vec2<i32>(-1i, global4.d.x))), firstLeadingBit(u_input.b), global3.c, -firstLeadingBit(max(~vec4<i32>(arg_0.x, -1i, -1i, global4.a.x), ~vec4<i32>(u_input.a.x, -1352i, 1i, 1i))));
    var var_0 = _wgslsmith_add_i32(57941i & (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global1.x, 0i), ~vec3<i32>(global3.d.x, arg_0.x, -31603i)) >> (_wgslsmith_mod_u32(arg_1.c.x, _wgslsmith_div_u32(u_input.b.x, 1u)) % 32u)), _wgslsmith_mult_i32(global3.d.x & _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, 25193i, global1.x), u_input.a, arg_2.x), vec3<i32>(2147483647i, 0i, -28981i)), -34685i));
    var var_1 = vec2<bool>(all(select(global0.c, select(!vec4<bool>(arg_2.x, arg_2.x, false, global4.c.x), !vec4<bool>(arg_2.x, true, true, true), global4.c.x), any(vec4<bool>(true, arg_2.x, false, false)))), global1.x <= _wgslsmith_add_i32(min(1i, ~global3.a.x), _wgslsmith_add_i32(countOneBits(39000i), abs(global0.d.x))));
    global1 = vec3<i32>(func_3(Struct_1(-_wgslsmith_div_vec2_i32(arg_0, vec2<i32>(-5003i, global4.d.x)), _wgslsmith_mod_vec2_u32(global3.b, u_input.b), select(vec4<bool>(arg_2.x, false, false, true), global4.c, select(vec4<bool>(true, true, false, false), global4.c, arg_2.x)), vec4<i32>(0i, i32(-1i) * -61058i, _wgslsmith_clamp_i32(global1.x, 0i, global3.d.x), min(arg_1.d, 2147483647i))), arg_2, -_wgslsmith_mult_vec2_i32(select(vec2<i32>(-1i, -83385i), vec2<i32>(arg_0.x, -1i), var_1.x), max(global1.zx, vec2<i32>(global0.a.x, arg_1.a)))), -_wgslsmith_dot_vec4_i32(global4.d, _wgslsmith_add_vec4_i32(global0.d, _wgslsmith_mod_vec4_i32(global4.d, global0.d))), -20576i);
    var_1 = arg_2;
    return global3.c.x;
}

fn func_2() -> bool {
    let var_0 = select(~38983u, 4294967295u, func_4(vec2<i32>(func_3(Struct_1(vec2<i32>(global1.x, -26930i), vec2<u32>(global0.b.x, global4.b.x), global4.c, vec4<i32>(-2147483647i, -27042i, global4.d.x, global1.x)), select(vec2<bool>(global4.c.x, global4.c.x), vec2<bool>(false, global4.c.x), vec2<bool>(global0.c.x, false)), vec2<i32>(1i, -32302i)), global0.a.x), global2[_wgslsmith_index_u32(~global3.b.x ^ ~u_input.b.x, 2u)], vec2<bool>(true, !(!global4.c.x))));
    var var_1 = global3.c.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(527f + 362f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-639f, 1006f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1212f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-146f, -1000f, -488f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(874f, 1183f, 744f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-296f, -557f, -2028f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1460f, -980f, -1255f) - vec3<f32>(271f, 909f, -1358f)), !vec3<bool>(false, global0.c.x, global3.c.x))), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-788f, 1554f, 1069f))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_2 - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1561f)), vec3<f32>(var_2.x, -1000f, _wgslsmith_f_op_f32(-var_2.x))))));
    global2 = array<Struct_2, 2>();
    return _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~(~vec2<u32>(global3.b.x, global3.b.x)), vec2<u32>(u_input.b.x, u_input.b.x ^ 1u)), vec2<u32>(abs(global4.b.x), ~global0.b.x) | global0.b) <= 1u;
}

fn func_5(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * 770f), arg_0, 35090u != global0.b.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, -2686f, -1081f), vec3<f32>(-621f, arg_0, arg_0))), vec3<f32>(arg_0, 1404f, arg_0), 11763u != global3.b.x)))));
    let var_1 = vec3<i32>(-_wgslsmith_add_i32(_wgslsmith_mod_i32(i32(-1i) * -8297i, _wgslsmith_sub_i32(global4.a.x, global3.a.x)), abs(_wgslsmith_div_i32(global3.a.x, 1i))), -1i, reverseBits(0i));
    var var_2 = global2[_wgslsmith_index_u32(~75456u, 2u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(704f, -564f, 1170f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, -1220f), vec3<f32>(arg_0, arg_0, -279f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, var_0.x)), vec3<bool>(true, global4.c.x, global4.c.x))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 122f, -488f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1085f, var_0.x)))))))));
    var var_4 = Struct_2(global3.d.x, ~(_wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_mult_u32(global4.b.x, global4.b.x)) ^ _wgslsmith_clamp_u32(~var_2.b, _wgslsmith_div_u32(42956u, 26106u), 10512u)), ~var_2.c, _wgslsmith_sub_i32(~0i, ~(~(-2147483647i))));
    return Struct_2(_wgslsmith_div_i32(~_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(-1i, -39592i)), global1.x), (~15308u ^ firstTrailingBit(global4.b.x)) ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(~69823u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(7322u, var_2.c.x))), 4816u), ~var_2.c, _wgslsmith_clamp_i32(1i, -2147483647i, ~global1.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = func_5(-953f, !func_2());
    let var_1 = !select(arg_2.c, !select(select(vec4<bool>(global3.c.x, false, global4.c.x, global4.c.x), global4.c, arg_2.c), vec4<bool>(true, true, false, false), select(vec4<bool>(global3.c.x, true, global0.c.x, true), global3.c, vec4<bool>(false, global0.c.x, true, false))), !(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 1i, arg_1), vec4<i32>(29819i, global1.x, arg_2.a.x, u_input.a.x)) >= ~2147483647i));
    global2 = array<Struct_2, 2>();
    var var_2 = vec3<bool>(!(all(vec3<bool>(false, false, global4.c.x)) & !func_4(vec2<i32>(62431i, var_0.d), Struct_2(28565i, global3.b.x, vec4<u32>(arg_2.b.x, arg_0.x, arg_3, 8762u), -44474i), vec2<bool>(var_1.x, var_1.x))), _wgslsmith_dot_vec3_u32(var_0.c.xwx, var_0.c.wyw) > ~(~87679u), false);
    global1 = select(~vec3<i32>(func_3(Struct_1(vec2<i32>(1i, global1.x), var_0.c.ww, vec4<bool>(true, global4.c.x, var_2.x, var_2.x), global3.d), var_2.xz, _wgslsmith_div_vec2_i32(arg_2.d.xy, vec2<i32>(5757i, 1i))), countOneBits(1i), ~(-global1.x)), u_input.a, vec3<bool>(any(select(vec2<bool>(global0.c.x, arg_2.c.x), global3.c.ww, !var_2.x)), !var_2.x, arg_2.c.x));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -655f)));
    var var_1 = _wgslsmith_clamp_i32(firstLeadingBit(0i), ~_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, global3.d.x), u_input.a.x) | -52505i, (i32(-1i) * -18198i) & ((max(global0.d.x, 0i) >> (global4.b.x % 32u)) >> (5704u % 32u)));
    global0 = Struct_1(u_input.a.yy, vec2<u32>(abs(global3.b.x << (global0.b.x % 32u)) ^ ~1u, ((global4.b.x << (global0.b.x % 32u)) | _wgslsmith_sub_u32(global3.b.x, 118475u)) >> (func_1(vec2<u32>(global4.b.x, global4.b.x), 59903i | global4.d.x, Struct_1(global0.d.yy, global4.b, vec4<bool>(false, false, global3.c.x, true), global0.d), 1u << (global4.b.x % 32u)) % 32u)), vec4<bool>(true, global3.c.x, false, any(!(!global4.c.xz))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, -global3.d.x), global4.a.x), 2147483647i & firstLeadingBit(global4.a.x), ~_wgslsmith_clamp_i32(global0.a.x, global0.a.x, -84002i), _wgslsmith_mult_i32(func_3(Struct_1(global3.d.xw, global4.b, vec4<bool>(global0.c.x, true, false, true), global4.d), global3.c.yz, min(vec2<i32>(0i, -2147483647i), vec2<i32>(global1.x, global1.x))), abs(0i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(var_0, var_0))), _wgslsmith_div_f32(-1040f, _wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, 720f, global4.c.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(901f, var_0, var_0), vec3<f32>(637f, -1215f, 499f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1755f, 1359f, var_0) - vec3<f32>(1608f, var_0, -382f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 1286f))))))));
    var var_3 = !select(select(global3.c.wzw, vec3<bool>(any(global4.c), false, func_2()), vec3<bool>(!global3.c.x, false, true)), vec3<bool>(true, global3.c.x, any(global3.c.yz)), select(select(!global3.c.wyz, vec3<bool>(false, true, global4.c.x), global0.c.x), !vec3<bool>(global3.c.x, global3.c.x, true), all(global4.c.zw)));
    global0 = Struct_1(global3.a, abs(firstLeadingBit(_wgslsmith_add_vec2_u32(min(global4.b, global3.b), global0.b))), select(vec4<bool>(global4.c.x || any(global0.c), true, false, global3.c.x), vec4<bool>(true, true, false, !global4.c.x), select(select(global0.c, global3.c, select(vec4<bool>(false, var_3.x, false, true), vec4<bool>(global3.c.x, false, global0.c.x, false), global4.c.x)), select(vec4<bool>(false, false, global0.c.x, global4.c.x), vec4<bool>(false, global0.c.x, global3.c.x, false), global4.c), vec4<bool>(global0.c.x, global4.b.x >= 7587u, false, false & global4.c.x))), global3.d);
    var_3 = !global3.c.wzz;
    global1 = -_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(min(-2147483647i, -2147483647i), 2147483647i), _wgslsmith_add_i32(global3.a.x ^ -15475i, global4.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(39910i, global3.a.x, 0i), u_input.a) >> ((0u >> (u_input.b.x % 32u)) % 32u)), vec3<i32>(u_input.a.x, func_5(var_2.x, any(vec3<bool>(true, global0.c.x, true))).d, global3.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(-u_input.a.x)), global1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(trunc(1580f)), _wgslsmith_f_op_f32(select(var_2.x, var_2.x, var_3.x)), _wgslsmith_f_op_f32(ceil(var_0))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -226f))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_2.x * 938f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -971f) + -539f))), reverseBits(global4.a.x), abs(abs(global4.b.x)));
}

