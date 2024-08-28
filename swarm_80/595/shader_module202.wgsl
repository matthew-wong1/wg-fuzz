struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(46143u, vec4<f32>(860f, -1681f, 212f, 1000f), false, vec2<u32>(1u, 1u), vec4<f32>(-531f, 1407f, 815f, -169f));

var<private> global1: u32;

var<private> global2: array<f32, 25>;

var<private> global3: bool = false;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<i32>) -> vec4<f32> {
    global2 = array<f32, 25>();
    var var_0 = Struct_1(u_input.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f * global0.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(abs(19290u), 25u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) * _wgslsmith_f_op_f32(-744f * global0.b.x))), global0.b.x, _wgslsmith_f_op_f32(-global0.b.x)), true, global0.d, global0.e);
    global1 = u_input.b;
    let var_1 = vec2<f32>(var_0.e.x, -531f);
    let var_2 = Struct_1(reverseBits(var_0.d.x), global0.e, false, abs((select(vec2<u32>(var_0.a, 10266u), vec2<u32>(1u, 0u), var_0.c) | (var_0.d & global0.d)) << ((~vec2<u32>(global0.a, 1u) | _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 39542u), global0.d)) % vec2<u32>(32u))), _wgslsmith_div_vec4_f32(var_0.e, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b - vec4<f32>(-531f, global2[_wgslsmith_index_u32(7345u, 25u)], 1155f, global0.e.x)))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.x, global2[_wgslsmith_index_u32(92122u, 25u)]), -530f, all(vec2<bool>(global0.c, var_2.c)))), var_2.e.x, -1843f, global0.b.x)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = Struct_1(~49543u & global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(-1i, arg_0, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(-global0.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1127f, global2[_wgslsmith_index_u32(1u, 25u)], -389f, global2[_wgslsmith_index_u32(global0.d.x, 25u)])) * _wgslsmith_f_op_vec4_f32(-arg_1.b)))), all(select(vec3<bool>(all(vec4<bool>(false, global0.c, false, arg_1.c)), true, arg_1.c && global0.c), !(!vec3<bool>(true, global0.c, true)), select(select(vec3<bool>(global0.c, global0.c, false), vec3<bool>(global0.c, global0.c, true), global0.c), vec3<bool>(global0.c, false, false), arg_1.c))), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(global0.d, ~vec2<u32>(arg_1.d.x, global0.a)), min(firstLeadingBit(arg_1.d), firstTrailingBit(vec2<u32>(u_input.b, 4294967295u)))) << (select(~arg_1.d, vec2<u32>(global0.d.x, select(u_input.b, arg_1.d.x, arg_1.c)), !select(vec2<bool>(true, arg_1.c), vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, false))) % vec2<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 25u)] - 223f)), _wgslsmith_f_op_f32(select(994f, _wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x), any(vec3<bool>(global0.c, false, arg_1.c)))), _wgslsmith_f_op_f32(-691f + _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.b, 25u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-738f, -547f, _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-1438f + arg_1.e.x)))));
    let var_0 = select(_wgslsmith_div_i32(-1i, -(~arg_0)), -9585i, !(!global0.c));
    global3 = all(select(select(select(vec2<bool>(true, global0.c), !vec2<bool>(true, global0.c), vec2<bool>(true, true)), !(!vec2<bool>(global0.c, global0.c)), global0.c), !vec2<bool>(global0.c, any(vec3<bool>(arg_1.c, global0.c, true))), global0.c));
    global2 = array<f32, 25>();
    let var_1 = Struct_1(22234u, _wgslsmith_f_op_vec4_f32(-arg_1.b), true, min(global0.d, ~select(global0.d, countOneBits(global0.d), !vec2<bool>(arg_1.c, false))), arg_1.b);
    return Struct_1(reverseBits(arg_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.x, -891f, global2[_wgslsmith_index_u32(19246u, 25u)], -305f) - vec4<f32>(global2[_wgslsmith_index_u32(19207u, 25u)], global2[_wgslsmith_index_u32(var_1.a, 25u)], 417f, 1272f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1911f, _wgslsmith_f_op_f32(min(var_1.e.x, -1431f)), 1106f, _wgslsmith_f_op_f32(-635f + global0.e.x)))), true, ~abs(vec2<u32>(3387u ^ u_input.b, abs(global0.d.x))), _wgslsmith_f_op_vec4_f32(func_3(-countOneBits(vec4<i32>(8931i, var_0, 1i, var_0)) >> ((~vec4<u32>(arg_2, global0.a, var_1.a, 0u) ^ (vec4<u32>(arg_1.a, 60274u, 65309u, 33857u) << (vec4<u32>(1u, 4294967295u, arg_2, u_input.b) % vec4<u32>(32u)))) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = 30451u;
    let var_0 = firstLeadingBit(arg_1.d);
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(func_2(-_wgslsmith_sub_i32(2147483647i, 22225i), arg_2, _wgslsmith_div_u32(_wgslsmith_div_u32(arg_2.a, u_input.b), var_0.x)).d, ~var_0), arg_1.d);
    var var_2 = u_input.a;
    var var_3 = vec4<f32>(833f, 318f, -913f, 736f);
    return ~abs(u_input.b);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(arg_2.d.x, func_4(func_2(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, u_input.a), i32(-1i) * -15674i, -19428i >> (arg_2.d.x % 32u)), arg_2, arg_2.a), func_2(arg_0.x, func_2(23945i, Struct_1(global0.a, vec4<f32>(arg_1.x, -714f, global2[_wgslsmith_index_u32(global0.a, 25u)], global0.e.x), arg_2.c, vec2<u32>(arg_2.a, 0u), vec4<f32>(global0.b.x, global2[_wgslsmith_index_u32(arg_2.d.x, 25u)], arg_1.x, -244f)), 0u), 34496u), arg_2));
    let var_1 = ~vec2<i32>(u_input.a, arg_0.x);
    global2 = array<f32, 25>();
    let var_2 = arg_0.xyx;
    global0 = func_2(34946i, func_2(9019i, func_2(var_1.x, arg_2, _wgslsmith_div_u32(var_0, 28228u) | 0u), var_0), 93370u);
    return func_2(u_input.a, Struct_1(~abs(~global0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.b, vec4<f32>(1000f, -821f, global0.b.x, -2306f))) + _wgslsmith_f_op_vec4_f32(abs(arg_2.b))), vec4<f32>(1649f, -1427f, -674f, arg_2.e.x)), arg_2.c, ~global0.d << (arg_2.d % vec2<u32>(32u)), func_2(_wgslsmith_dot_vec3_i32(arg_0.wwz, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, var_2.x), vec3<i32>(arg_0.x, arg_0.x, var_2.x))), arg_2, ~7365u & var_0).e), 16082u);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = func_1(min(-vec4<i32>(u_input.a, -2372i, u_input.a, 2147483647i), vec4<i32>(u_input.a, 0i, u_input.a, 0i)) << (vec4<u32>(0u, _wgslsmith_dot_vec3_u32(arg_1.xww, vec3<u32>(12175u, 0u, arg_0.d.x)) << (u_input.b % 32u), _wgslsmith_dot_vec3_u32(arg_1.zyy, arg_1.xzw), arg_1.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.e.ww) * global0.b.ww), arg_0);
    var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(max(4294967295u, func_2(1i, Struct_1(1u, var_0.b, arg_0.c, vec2<u32>(22122u, arg_0.d.x), var_0.e), var_0.a).d.x), 1u), ~(~(4294967295u >> (0u % 32u)))), _wgslsmith_f_op_vec4_f32(trunc(func_1(vec4<i32>(~(-2147483647i), u_input.a, u_input.a, firstLeadingBit(1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(347f, global0.e.x)), func_2(countOneBits(1i), arg_0, _wgslsmith_mult_u32(u_input.b, 0u))).e)), ~_wgslsmith_mod_i32(u_input.a, ~0i) < abs(u_input.a >> (4248u % 32u)), func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, ~(-1i), _wgslsmith_mod_i32(u_input.a, -27081i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 60302i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i))), abs(-vec4<i32>(u_input.a, 2147483647i, -2147483647i, -20354i))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)), -638f), _wgslsmith_f_op_f32(531f + global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(38900u, u_input.b), 25u)])), arg_0).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e)));
    let var_1 = !(!vec2<bool>(arg_2.x, arg_0.c));
    var_0 = func_2(~(-u_input.a), arg_0, ~0u);
    let var_2 = arg_0;
    return Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(sign(arg_0.b)), any(select(vec3<bool>(any(vec4<bool>(arg_0.c, var_0.c, arg_0.c, arg_2.x)), global0.c, u_input.a <= 19262i), vec3<bool>(true, var_0.c, true), var_2.c)), ~arg_1.ww, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 26314i, 24779i), vec4<i32>(u_input.a, i32(-1i) * -9456i, ~u_input.a, -2147483647i), ~(-vec4<i32>(u_input.a, u_input.a, 28005i, 1i))))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<f32>) -> Struct_1 {
    global2 = array<f32, 25>();
    global3 = !(!arg_1.c);
    global0 = arg_1;
    let var_0 = max(vec3<i32>(_wgslsmith_div_i32(~(-2626i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-14322i, u_input.a), select(u_input.a, -8426i, global0.c))), u_input.a, _wgslsmith_div_i32(arg_0 >> (_wgslsmith_mult_u32(arg_2.x, 7686u) % 32u), 0i)), -(vec3<i32>(u_input.a, 1i, _wgslsmith_div_i32(u_input.a, arg_0)) | -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, arg_0, u_input.a), vec3<i32>(30107i, 2147483647i, 0i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(func_1(~(~(-vec4<i32>(var_0.x, var_0.x, var_0.x, -34497i))), global0.b.wy, func_1(~select(vec4<i32>(arg_0, u_input.a, 65900i, 2147483647i), vec4<i32>(2147483647i, arg_0, var_0.x, arg_0), global0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.e.xz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(arg_1.d.x, 25u)], global0.b.x))), func_2(1i, func_5(arg_1, vec4<u32>(1u, global0.d.x, arg_1.d.x, 0u), vec2<bool>(global0.c, global0.c)), global0.d.x))).e.wxz, vec3<f32>(738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.x, 2928f, false)))), func_2(var_0.x, func_1(abs(vec4<i32>(-1i, 0i, 18676i, var_0.x)), _wgslsmith_f_op_vec2_f32(-global0.e.yy), func_5(arg_1, vec4<u32>(11284u, 0u, 9193u, arg_1.d.x), vec2<bool>(arg_1.c, arg_1.c))), firstLeadingBit(0u)).e.x)));
    return arg_1;
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = arg_1;
    var var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -33320i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<i32>(u_input.a, -1i, 1i, 2147483647i)), min(~vec4<i32>(u_input.a, -54850i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(var_1.a, 1u, 4294967295u, u_input.b) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(select(vec4<i32>(39944i, 1430i, -3693i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(false, true, var_1.c, false)), _wgslsmith_div_vec4_i32(vec4<i32>(1866i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, -28459i, u_input.a, u_input.a)))), vec4<i32>(i32(-1i) * -2312i, 39616i, 2147483647i & u_input.a, -1287i)), firstLeadingBit(vec4<i32>(firstLeadingBit(u_input.a), countOneBits(-23192i), i32(-1i) * -18359i, _wgslsmith_add_i32(~u_input.a, _wgslsmith_clamp_i32(u_input.a, -19837i, -18360i)))), ~vec4<i32>(~13364i, _wgslsmith_mod_i32(46989i, u_input.a), ~(u_input.a << (u_input.b % 32u)), u_input.a));
    var var_3 = 1i;
    var_1 = func_1(vec4<i32>(_wgslsmith_div_i32(~firstLeadingBit(-2147483647i), ~27954i), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(2147483647i, u_input.a, u_input.a, 43938i), -vec4<i32>(var_2.x, var_2.x, u_input.a, 1i), arg_1.c || global0.c), -(~vec4<i32>(u_input.a, u_input.a, var_2.x, var_2.x))), var_2.x, -20847i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-970f)), -1717f)) * arg_0.yx), func_6(max(var_2.x, abs(min(var_2.x, 3389i))), func_5(arg_1, select(abs(vec4<u32>(40008u, var_1.a, 8450u, 4294967295u)), ~vec4<u32>(global0.a, var_1.d.x, var_1.a, 0u), all(vec2<bool>(true, var_1.c))), select(select(vec2<bool>(false, global0.c), vec2<bool>(true, var_1.c), true), select(vec2<bool>(global0.c, var_1.c), vec2<bool>(false, var_1.c), var_1.c), !vec2<bool>(arg_1.c, var_1.c))), vec2<u32>(4294967295u, ~1u), _wgslsmith_f_op_vec2_f32(-var_1.b.wy)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -569f;
    global0 = func_7(global0.e, func_6(u_input.a << (u_input.b % 32u), func_5(func_1(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, -1i, u_input.a), vec4<i32>(44031i, -60178i, -45164i, 645i)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-569f, 1000f), vec2<f32>(-592f, 198f))), Struct_1(global0.a, vec4<f32>(-1278f, -1828f, -1000f, 865f), true, global0.d, vec4<f32>(global0.b.x, -1388f, global2[_wgslsmith_index_u32(44864u, 25u)], 462f))), (vec4<u32>(16778u, global0.a, 1u, 1u) & vec4<u32>(u_input.b, global0.a, u_input.b, u_input.b)) >> (abs(vec4<u32>(global0.a, 4294967295u, 18106u, u_input.b)) % vec4<u32>(32u)), vec2<bool>(true, false)), reverseBits(select(global0.d, global0.d, vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(global0.e.ww)))), global0.e.zw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, u_input.b), 25u)])));
    global3 = true;
    var var_1 = _wgslsmith_f_op_f32(floor(func_2(-36733i, Struct_1(~_wgslsmith_mult_u32(u_input.b, global0.a), global0.e, all(vec2<bool>(global0.c, global0.c)), ~max(vec2<u32>(global0.a, global0.a), global0.d), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], global0.b.x, 1672f, func_7(vec4<f32>(-921f, 141f, 1185f, global0.e.x), Struct_1(global0.d.x, vec4<f32>(-309f, 1118f, global2[_wgslsmith_index_u32(global0.a, 25u)], -1535f), global0.c, global0.d, global0.b), global2[_wgslsmith_index_u32(4294967295u, 25u)]).e.x)), _wgslsmith_sub_u32(~(~u_input.b), 36046u)).e.x));
    global1 = max(func_4(func_6(abs(-5981i), func_7(vec4<f32>(774f, -1000f, -509f, -194f), Struct_1(69637u, vec4<f32>(-241f, 988f, -1104f, -1000f), false, vec2<u32>(global0.d.x, 1u), vec4<f32>(530f, -1647f, -2203f, global2[_wgslsmith_index_u32(global0.d.x, 25u)])), 974f), _wgslsmith_add_vec2_u32(vec2<u32>(global0.d.x, 9415u), global0.d), _wgslsmith_f_op_vec2_f32(-global0.e.yy)), Struct_1(4712u, vec4<f32>(364f, -1406f, global2[_wgslsmith_index_u32(global0.d.x, 25u)], -951f), global0.c, func_5(Struct_1(u_input.b, vec4<f32>(global2[_wgslsmith_index_u32(global0.d.x, 25u)], 1000f, global0.e.x, -976f), global0.c, global0.d, global0.e), vec4<u32>(0u, 27131u, u_input.b, 0u), vec2<bool>(global0.c, false)).d, _wgslsmith_f_op_vec4_f32(vec4<f32>(114f, global0.e.x, global2[_wgslsmith_index_u32(u_input.b, 25u)], 1563f) + vec4<f32>(global2[_wgslsmith_index_u32(14568u, 25u)], -1000f, 654f, global0.e.x))), Struct_1(reverseBits(17498u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -694f, global2[_wgslsmith_index_u32(4294967295u, 25u)], 1096f) * global0.b), global0.c, vec2<u32>(15139u, 15563u), global0.b)), ~u_input.b) << (abs(~(~(~global0.a))) % 32u);
    let var_2 = ~17338u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, -2147483647i, _wgslsmith_mult_i32(u_input.a, ~(-21484i)), -2147483647i) << (_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2, 1u, 0u), vec4<u32>(4294967295u, global0.d.x, var_2, var_2)), ~vec4<u32>(47137u, global0.a, var_2, global0.d.x) >> (vec4<u32>(global0.a, u_input.b, u_input.b, 3966u) % vec4<u32>(32u))) % vec4<u32>(32u)), global0.d.x, _wgslsmith_f_op_f32(abs(global0.b.x)));
}

