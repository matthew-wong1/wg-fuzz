struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
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

var<private> global0: Struct_1;

var<private> global1: i32 = 6928i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    global0 = Struct_1(reverseBits(~_wgslsmith_sub_u32(1u, abs(global0.b.x))), select(~(~vec3<u32>(global0.a, u_input.a.x, global0.a)), vec3<u32>(_wgslsmith_mod_u32(global0.d, 2676u), ~u_input.a.x, 44278u), (global0.e.x <= -1087f) != true) | global0.b, abs(-_wgslsmith_add_vec4_i32(global0.c, _wgslsmith_div_vec4_i32(vec4<i32>(8758i, global0.c.x, -6386i, -2147483647i), vec4<i32>(2147483647i, 0i, 2147483647i, global0.c.x)))), global0.a, vec2<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(global0.e.x + global0.e.x)));
    global1 = 1i >> (u_input.a.x % 32u);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.e.x)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.e.x))))) + 899f);
    global1 = reverseBits(global0.c.x);
    var var_1 = Struct_1(~reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(18379u, u_input.a.x), vec2<u32>(u_input.b.x, 10011u)), u_input.b.x)), vec3<u32>(~max(~4294967295u, ~25668u), 4294967295u, u_input.b.x), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(~global0.c.x, ~u_input.c), -_wgslsmith_div_i32(19274i, global0.c.x)), global0.c.x, 1i, firstLeadingBit(-(~global0.c.x))), 24823u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.e) + global0.e) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(625f, global0.e.x)))))));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    let var_0 = Struct_1(global0.d, firstTrailingBit(global0.b), vec4<i32>(firstLeadingBit(~countOneBits(1571i)), global0.c.x, ~abs(global0.c.x), ~min(-39111i, countOneBits(global0.c.x))), ~(~global0.b.x), _wgslsmith_f_op_vec2_f32(global0.e * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, 111f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xx + vec2<f32>(-1000f, global0.e.x)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.e.x, 1000f), vec2<f32>(1561f, arg_1.x), vec2<bool>(false, arg_2.x)))))));
    return u_input.a.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    var var_0 = Struct_1(2269u, vec3<u32>(arg_1.a, 1u, arg_0.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(global0.c.x, firstTrailingBit(arg_1.c.x), -10543i, arg_1.c.x), -arg_1.c), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, arg_1.d), arg_0, u_input.a) ^ arg_0), select(~vec2<u32>(arg_1.b.x, 1u) & vec2<u32>(92241u, 1u), u_input.b, (-1000f >= global0.e.x) | true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.e)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, arg_1.e.x))))));
    let var_1 = u_input.a.x;
    var_0 = Struct_1(arg_1.a, _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, var_0.a, arg_1.a, 4294967295u), vec4<u32>(arg_1.d, 4294967295u, 1u, global0.b.x))), vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, u_input.a.x)) & ~var_1, 1u)), _wgslsmith_mod_vec4_i32(~global0.c, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.x, 1i, arg_1.c.x, var_0.c.x), arg_1.c) | (vec4<i32>(arg_1.c.x, 0i, var_0.c.x, 1i) >> (vec4<u32>(15652u, var_1, var_1, 51340u) % vec4<u32>(32u))), vec4<i32>(global0.c.x, arg_1.c.x, -arg_1.c.x, ~41035i))), 1u, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + 1000f), _wgslsmith_f_op_f32(-1450f + _wgslsmith_f_op_f32(-1000f - global0.e.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, var_0.e.x))))));
    var_0 = Struct_1(_wgslsmith_add_u32(arg_1.d, ~(~(~u_input.b.x))), vec3<u32>(1u, arg_1.b.x, ~36547u), ~(~abs(arg_1.c | var_0.c)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, abs(var_1) >> (max(var_0.b.x, u_input.a.x) % 32u), global0.a), 90151u), var_0.e);
    let var_2 = arg_2.yyz;
    return arg_2.x;
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = func_5(vec2<u32>(4294967295u, global0.a), Struct_1(_wgslsmith_add_u32(reverseBits(_wgslsmith_add_u32(arg_0.x, 1u)), 227u), vec3<u32>(u_input.a.x, ~595u, ~4294967295u), global0.c, func_4(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1430f, global0.e.x)))), vec2<bool>(func_3(), true), true), _wgslsmith_f_op_vec2_f32(global0.e * global0.e)), vec4<bool>(!(true || (arg_0.x <= 1u)), true, func_3(), !any(vec3<bool>(true, true, true))));
    var var_1 = Struct_1(~(~max(arg_0.x, 67553u)), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, arg_0.x, 1u), vec4<u32>(global0.b.x, arg_0.x, u_input.a.x, u_input.a.x)), 1u), 0u, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(~global0.a, ~global0.d, global0.a), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, 1u, u_input.b.x), global0.b))), -countOneBits(_wgslsmith_clamp_vec4_i32(global0.c, abs(vec4<i32>(global0.c.x, global0.c.x, global0.c.x, 1i)), abs(global0.c))), (~29904u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, u_input.b.x), global0.b.xy)) ^ global0.d, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.e * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.e))))));
    var var_2 = 1126f;
    return ~(-26451i);
}

fn func_6(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<i32>, arg_3: bool) -> vec3<bool> {
    var var_0 = ~min(global0.b, global0.b ^ vec3<u32>(func_4(arg_3, vec3<f32>(arg_1, global0.e.x, 700f), vec2<bool>(true, arg_3), true), _wgslsmith_mult_u32(20615u, 1u), ~20145u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) + 416f);
    return vec3<bool>(false, arg_3, true);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    global0 = Struct_1(~(_wgslsmith_dot_vec2_u32(u_input.b, arg_0.zz << (u_input.a % vec2<u32>(32u))) << (~(~arg_1) % 32u)), vec3<u32>(~(arg_1 ^ 4294967295u), ~0u | global0.d, 1u) >> (abs(~(~vec3<u32>(global0.d, 0u, 1u))) % vec3<u32>(32u)), global0.c, abs(arg_0.x), vec2<f32>(-1239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.e.x)))));
    var var_0 = select(vec3<bool>(true && select(u_input.c < 2147483647i, true, false), false, true), func_6(-(-global0.c.yz << (arg_0.xy % vec2<u32>(32u))), global0.e.x, vec2<i32>(func_2(~vec2<u32>(4294967295u, arg_1)), _wgslsmith_clamp_i32(-20100i, -18555i, 1i)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))), !(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    var var_1 = arg_1;
    var var_2 = Struct_1(4294967295u >> (arg_0.x % 32u), vec3<u32>(69311u, max(~min(90339u, arg_1), abs(arg_0.x & global0.a)), firstTrailingBit(_wgslsmith_dot_vec3_u32(global0.b, _wgslsmith_mult_vec3_u32(global0.b, global0.b)))), select(vec4<i32>(~min(u_input.d, u_input.c), _wgslsmith_div_i32(~(-37705i), _wgslsmith_mod_i32(2147483647i, 47349i)), 8031i, global0.c.x), vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(global0.c.x), ~(-66524i)), u_input.c, -_wgslsmith_sub_i32(global0.c.x, 21387i), _wgslsmith_dot_vec3_i32(global0.c.wyx, _wgslsmith_mult_vec3_i32(vec3<i32>(18022i, u_input.c, global0.c.x), global0.c.ywy))), any(!var_0.xx)), _wgslsmith_clamp_u32(65577u, ~(~reverseBits(u_input.b.x)), _wgslsmith_dot_vec4_u32(select(~arg_0, vec4<u32>(35073u, 0u, u_input.a.x, 53875u) >> (arg_0 % vec4<u32>(32u)), var_0.x), ~arg_0 & abs(vec4<u32>(86760u, 17429u, arg_1, 4294967295u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1078f * global0.e.x) * _wgslsmith_f_op_f32(global0.e.x - global0.e.x))), 481f));
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(-global0.c.wz, vec2<i32>(global0.c.x, ~(-2147483647i)), true), -(~var_2.c.xz) ^ var_2.c.yz), -(var_2.c.zw & vec2<i32>(62462i, countOneBits(global0.c.x))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)))), -343f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(2147483647i, ~(global0.c.x << (0u % 32u)), min(u_input.d, reverseBits(u_input.d))) & _wgslsmith_clamp_i32(1i, ~global0.c.x, _wgslsmith_dot_vec2_i32(global0.c.yy, vec2<i32>(u_input.d, 29528i))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(u_input.d, 74445i), ~global0.c.xw), firstLeadingBit(vec2<i32>(1i, 1i) >> (vec2<u32>(global0.d, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_div_vec2_i32(global0.c.ww, (vec2<i32>(global0.c.x, -1478i) ^ vec2<i32>(14227i, 7590i)) ^ (global0.c.xw | global0.c.wy))), -2147483647i, ~(~firstTrailingBit(1i)));
    var var_1 = Struct_1(0u, global0.b, var_0, u_input.a.x, vec2<f32>(global0.e.x, _wgslsmith_f_op_f32(func_1(~(vec4<u32>(4294967295u, 1u, global0.d, global0.d) & vec4<u32>(global0.a, global0.a, 0u, global0.d)), firstLeadingBit(global0.a)))));
    let var_2 = var_0.x;
    var_1 = Struct_1(1u, abs(vec3<u32>(u_input.b.x, u_input.b.x, ~_wgslsmith_mult_u32(var_1.d, 9554u))), var_0, ~(~func_4(true, vec3<f32>(1000f, -244f, 447f), vec2<bool>(false, true), true) ^ _wgslsmith_sub_u32(1u, var_1.a ^ var_1.a)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.e.x, 725f))));
    var var_3 = _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_1.c.x, 53895i, countOneBits(12861i)), firstTrailingBit(i32(-1i) * -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_0.x, var_2, u_input.c), ~(-1i), _wgslsmith_mult_i32(var_0.x, u_input.c)), abs(firstTrailingBit(var_1.c.yxy))), ~reverseBits(15443i), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c.x, u_input.d, -2147483647i), vec3<i32>(1i, -24259i, -26078i)), countOneBits(var_0.yyx)), -select(var_1.c.yxz, global0.c.yyy, false)) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(var_0.xxz, global0.c.wyy), _wgslsmith_div_vec3_i32(vec3<i32>(var_2, -8476i, 2147483647i), var_0.ywy) >> (~var_1.b % vec3<u32>(32u))), abs(var_2));
}

