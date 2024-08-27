struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = global1.x;
    var var_1 = min(67894i, 40855i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-430f + 574f));
    var var_3 = select(min(arg_2.a.b.xx, _wgslsmith_mult_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -12647i), arg_2.a.a.wx)), abs(_wgslsmith_mod_vec2_i32(arg_1.a.a.xz, vec2<i32>(arg_2.a.a.x, -50298i))))), vec2<i32>(i32(-1i) * -1i, i32(-1i) * -(i32(-1i) * -5280i)), all(!select(vec3<bool>(true, true, true), !vec3<bool>(arg_2.b.x, arg_2.b.x, arg_0), false)));
    var var_4 = _wgslsmith_sub_u32(53625u, 3447u);
    return vec3<i32>(80141i, -9833i, 1i);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: f32) -> Struct_4 {
    global1 = select(arg_2.b, arg_2.b, select(arg_2.b, !vec2<bool>(arg_2.b.x, true), select(true, false, false)));
    var var_0 = Struct_3(arg_2.a);
    var var_1 = Struct_3(Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(func_3(arg_2.b.x, Struct_3(arg_2.a), arg_2), select(vec3<i32>(1i, 34846i, u_input.d), vec3<i32>(arg_1.x, var_0.a.a.x, -1i), arg_2.b.x)), -2147483647i, ~arg_2.a.a.x, var_0.a.b.x), arg_2.a.a.xzz, vec2<u32>(abs(26302u), u_input.c), _wgslsmith_f_op_f32(-arg_3)));
    let var_2 = ~(-func_3(!global1.x, Struct_3(Struct_1(var_0.a.a, vec3<i32>(arg_2.a.b.x, 2147483647i, -9976i), vec2<u32>(u_input.b, var_0.a.c.x), global0[_wgslsmith_index_u32(var_0.a.c.x, 18u)])), arg_2).x) >> ((6724u >> (~arg_2.a.c.x % 32u)) % 32u);
    global1 = !(!vec2<bool>(true, all(vec2<bool>(false, arg_2.b.x))));
    return Struct_4(arg_2.b);
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    global1 = select(vec2<bool>(abs(41988u) < reverseBits(0u | u_input.b), arg_1), arg_0.a, arg_1);
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, 0i, u_input.a, u_input.d)) ^ vec4<i32>(-2147483647i, u_input.d, 0i, u_input.d), max(vec4<i32>(11709i, u_input.a, u_input.a, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, -34504i, u_input.d), vec4<i32>(18936i, u_input.d, -20667i, u_input.a)))), vec3<i32>(_wgslsmith_add_i32(max(u_input.d, 2147483647i), u_input.a), -u_input.d, min(0i, ~(-1i))), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.c, 32010u))), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.c), vec3<u32>(3917u, u_input.b, 14731u)), u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b)), 18u)]))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -19341i, u_input.d), var_0.a.b), ~(-62764i)), firstLeadingBit(var_0.a.a ^ var_0.a.a)), ~var_0.a.a.zzy, _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(u_input.c, 0u) | vec2<u32>(u_input.b, 4294967295u)), var_0.a.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(70949u, 0u), 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))))), vec2<bool>(arg_1, arg_0.a.x));
    global0 = array<f32, 18>();
    var_0 = Struct_3(var_1.a);
    return var_1.a.d;
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> Struct_2 {
    var var_0 = select(!vec4<bool>(true, !(arg_1 < 0u), !(-370f >= global0[_wgslsmith_index_u32(arg_0.x, 18u)]), !(-13371i > u_input.a)), select(vec4<bool>(true, !(!global1.x), global1.x, global1.x), !(!select(vec4<bool>(false, global1.x, false, true), vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false))), select(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, false, global1.x), select(false, false, global1.x)), vec4<bool>(all(vec2<bool>(global1.x, global1.x)), global1.x, arg_0.x < 4294967295u, false), true)), !(!global1.x));
    let var_1 = Struct_2(Struct_1(-((vec4<i32>(15904i, -6369i, 1i, u_input.a) >> (vec4<u32>(arg_0.x, u_input.c, 1u, 0u) % vec4<u32>(32u))) << (~vec4<u32>(arg_1, arg_0.x, arg_0.x, u_input.c) % vec4<u32>(32u))), -_wgslsmith_sub_vec3_i32(min(vec3<i32>(1i, u_input.d, 658i), vec3<i32>(30748i, 6789i, -16263i)), -vec3<i32>(-4888i, u_input.d, 10840i)), arg_0.zy, -1485f), !select(vec2<bool>(var_0.x, true), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_1, 18u)], -735f, -691f, -333f) - vec4<f32>(2673f, global0[_wgslsmith_index_u32(68609u, 18u)], arg_2, arg_2)), countOneBits(vec2<i32>(u_input.d, u_input.a)), Struct_2(Struct_1(vec4<i32>(u_input.a, -16356i, u_input.a, -17690i), vec3<i32>(-1i, u_input.d, -2147483647i), arg_0.xx, 118f), var_0.xz), _wgslsmith_f_op_f32(func_4(Struct_4(vec2<bool>(global1.x, global1.x)), false, -966f, vec4<bool>(true, var_0.x, false, false)))).a, !(!global1.x)));
    let var_2 = Struct_3(Struct_1(~var_1.a.a, var_1.a.b, vec2<u32>(~var_1.a.c.x, ~(~107986u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -178f), var_1.a.d, var_0.x || all(vec3<bool>(false, var_1.b.x, var_0.x))))));
    let var_3 = abs(reverseBits(~arg_0));
    global0 = array<f32, 18>();
    return var_1;
}

fn func_6(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_3 {
    global1 = select(select(!vec2<bool>(false, arg_2.a.d <= 331f), vec2<bool>(global1.x, arg_2.b.x), vec2<bool>(global1.x, arg_2.b.x)), !vec2<bool>(arg_2.b.x, true), arg_2.b);
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    global1 = vec2<bool>(global1.x, false);
    let var_0 = func_5(arg_1.wwy, arg_2.a.c.x, -1580f).a;
    return Struct_3(arg_2.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec4<i32> {
    let var_0 = -max(-_wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(2147483647i, 59765i), 40027i), ~arg_0.b.x);
    let var_1 = func_6(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(2147483647i), -679i ^ var_0, arg_0.a.x, -3885i), _wgslsmith_add_vec4_i32(arg_0.a, vec4<i32>(var_0, u_input.d, 4059i, var_0)) ^ abs(vec4<i32>(-1i, -2147483647i, var_0, arg_0.a.x)))), abs(vec4<u32>(arg_0.c.x, 1u, countOneBits(arg_2.x), ~arg_0.c.x)) << (firstTrailingBit(~arg_2) % vec4<u32>(32u)), func_5(_wgslsmith_add_vec3_u32(min(arg_2.zwz & vec3<u32>(u_input.b, arg_2.x, u_input.b), vec3<u32>(4294967295u, 38759u, arg_0.c.x)), arg_2.zyw), ~3507u, _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 202f, arg_0.d, 155f) * vec4<f32>(116f, 1340f, 106f, 134f)), vec2<i32>(arg_1.x, 2147483647i), Struct_2(Struct_1(arg_0.a, vec3<i32>(25243i, 28497i, -2147483647i), arg_0.c, arg_0.d), vec2<bool>(global1.x, false)), _wgslsmith_f_op_f32(-485f - global0[_wgslsmith_index_u32(4294967295u, 18u)])), true, -146f, !vec4<bool>(false, global1.x, false, global1.x)))), ~vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(arg_0.a.yyy, vec3<i32>(u_input.d, 1i, -2147483647i))) << (arg_2.xz % vec2<u32>(32u)));
    var var_2 = ~(~(~7142i));
    var var_3 = vec4<i32>(i32(-1i) * -1i, ~(min(u_input.d, var_1.a.a.x >> (0u % 32u)) | -11837i), _wgslsmith_dot_vec3_i32(func_6(var_1.a.a.x, ~vec4<u32>(arg_2.x, 17894u, arg_0.c.x, 4294967295u) & abs(vec4<u32>(26288u, var_1.a.c.x, arg_0.c.x, u_input.c)), func_5(vec3<u32>(1u, u_input.b, 4294967295u), arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.d)), vec2<i32>(-1i) * -arg_0.a.xx).a.a.wzw, (~arg_0.a.zxy << (arg_2.zxw % vec3<u32>(32u))) << ((vec3<u32>(var_1.a.c.x, u_input.b, 55007u) ^ min(vec3<u32>(var_1.a.c.x, arg_2.x, u_input.c), arg_2.xww)) % vec3<u32>(32u))), arg_0.a.x);
    var var_4 = all(!select(vec2<bool>(global1.x, false), vec2<bool>(select(global1.x, true, global1.x), true), !func_2(vec4<f32>(305f, 768f, var_1.a.d, global0[_wgslsmith_index_u32(49381u, 18u)]), vec2<i32>(u_input.a, -15739i), Struct_2(arg_0, vec2<bool>(global1.x, true)), global0[_wgslsmith_index_u32(35573u, 18u)]).a));
    return ~(func_5(vec3<u32>(0u, ~arg_2.x, 118212u), _wgslsmith_mult_u32(0u, arg_2.x) ^ u_input.b, var_1.a.d).a.a | ~vec4<i32>(abs(arg_1.x), reverseBits(1720i), _wgslsmith_clamp_i32(1i, 47852i, u_input.a), _wgslsmith_mod_i32(var_3.x, var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 18>();
    var var_0 = vec3<bool>(all(!(!vec2<bool>(false, global1.x))) & true, !(!(!(!global1.x))), true);
    let var_1 = Struct_3(Struct_1(func_1(Struct_1(-vec4<i32>(u_input.a, u_input.d, u_input.a, u_input.a), ~vec3<i32>(2147483647i, u_input.a, 2147483647i), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 20113u), vec2<u32>(51451u, u_input.c)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(13630u, 18u)] - -2125f)), vec2<i32>(u_input.d, -21754i) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 9196i), vec2<i32>(u_input.d, u_input.d)), vec4<u32>(~1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(29028u, u_input.b), vec2<u32>(1u, u_input.c)), 1u)), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(u_input.a), func_1(Struct_1(vec4<i32>(u_input.d, 1i, u_input.d, 46025i), vec3<i32>(u_input.d, u_input.d, 27919i), vec2<u32>(u_input.b, u_input.b), 319f), vec2<i32>(u_input.a, u_input.d), vec4<u32>(1u, u_input.b, 6773u, 4294967295u)).x, _wgslsmith_mod_i32(u_input.d, -2147483647i)), -countOneBits(vec3<i32>(u_input.d, 1i, u_input.a))), reverseBits(~(~vec2<u32>(u_input.b, u_input.c))), _wgslsmith_f_op_f32(f32(-1f) * -1144f)));
    let var_2 = Struct_3(Struct_1(func_6(_wgslsmith_clamp_i32(var_1.a.a.x & 2147483647i, u_input.a, u_input.d), vec4<u32>(firstLeadingBit(1u), u_input.b | var_1.a.c.x, max(u_input.c, 48738u), var_1.a.c.x << (var_1.a.c.x % 32u)), func_5(vec3<u32>(21904u, u_input.c, var_1.a.c.x), u_input.c, func_5(vec3<u32>(1u, var_1.a.c.x, 9196u), var_1.a.c.x, var_1.a.d).a.d), var_1.a.a.zy << (firstTrailingBit(var_1.a.c) % vec2<u32>(32u))).a.a, _wgslsmith_mod_vec3_i32(var_1.a.b, vec3<i32>(~u_input.d, ~u_input.d, var_1.a.b.x)), var_1.a.c, global0[_wgslsmith_index_u32(u_input.c, 18u)]));
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1826f, var_1.a.d, 1000f, -248f), vec4<f32>(global0[_wgslsmith_index_u32(41153u, 18u)], var_1.a.d, var_1.a.d, -200f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(912f, 626f, -602f, -737f), vec4<f32>(-349f, var_1.a.d, -1163f, -1000f), vec4<bool>(true, true, false, global1.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(var_1.a.c.x, 18u)]), _wgslsmith_f_op_f32(-var_1.a.d), 666f, _wgslsmith_f_op_f32(max(-432f, var_2.a.d)))))), vec2<i32>(u_input.d, 1i), func_5(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 22313u, 62337u), vec3<u32>(0u, u_input.b, u_input.b)), ~vec3<u32>(var_2.a.c.x, u_input.b, 64567u)), (vec3<u32>(73384u, 1u, u_input.c) | vec3<u32>(u_input.b, var_2.a.c.x, 62636u)) & countOneBits(vec3<u32>(0u, 39106u, 0u))), ~56327u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.d * -429f), -616f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.d, var_1.a.d, global0[_wgslsmith_index_u32(u_input.b, 18u)]))))), var_2.a.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.d), 938f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, var_1.a.c.x), 18u)]) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1039f, -1153f, -1417f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.d, 242f, var_1.a.d) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.d, -1495f, var_1.a.d) * vec3<f32>(var_2.a.d, var_2.a.d, var_1.a.d)))))), _wgslsmith_f_op_f32(-func_6(var_1.a.a.x, ~vec4<u32>(u_input.c, var_1.a.c.x, var_1.a.c.x, var_1.a.c.x), Struct_2(Struct_1(var_2.a.a, var_1.a.b, var_2.a.c, -817f), select(var_0.xy, var_3.a, true)), ~vec2<i32>(23843i, -2147483647i) ^ -var_2.a.a.xx).a.d), 909f);
}

