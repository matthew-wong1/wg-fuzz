struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec2<f32>;

var<private> global2: array<bool, 17>;

var<private> global3: f32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = -min(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2320i), -vec2<i32>(-33292i, -15820i)), _wgslsmith_add_i32(u_input.b, _wgslsmith_mult_i32(arg_0.a.d.x, arg_0.a.d.x))), -1i);
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(select(635f, -1427f, any(select(vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(10607u, 17u)], true, arg_0.a.a), global0.a.x))))))));
    var var_1 = select(!select(select(vec4<bool>(arg_0.a.b, arg_0.a.b, true, arg_0.a.c.x), select(vec4<bool>(false, arg_0.a.a, true, arg_0.a.b), vec4<bool>(true, global0.a.x, true, true), false), global1.x <= 516f), vec4<bool>(select(false, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], true), !arg_0.a.a, any(vec4<bool>(global2[_wgslsmith_index_u32(67995u, 17u)], global2[_wgslsmith_index_u32(35494u, 17u)], arg_0.a.a, true)), true), !all(vec2<bool>(false, arg_0.a.b))), select(select(vec4<bool>(arg_0.a.a, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], any(vec3<bool>(true, arg_0.a.a, true)), var_0 <= -2147483647i), vec4<bool>(!global2[_wgslsmith_index_u32(u_input.a.x, 17u)], true, global0.a.x, arg_0.a.b), vec4<bool>(true, global1.x < global1.x, !arg_0.a.c.x, !global2[_wgslsmith_index_u32(0u, 17u)])), vec4<bool>(true, !all(vec4<bool>(true, arg_0.a.a, false, global0.a.x)), all(!vec2<bool>(arg_0.a.b, global2[_wgslsmith_index_u32(u_input.a.x, 17u)])), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, global0.a.x, true)))), true), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x) ^ select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(16981u, 17835u, 0u, 4294967295u), global2[_wgslsmith_index_u32(1u, 17u)])), 17u)]);
    global2 = array<bool, 17>();
    let var_2 = Struct_3(arg_0.a);
    return _wgslsmith_f_op_f32(global1.x - 720f) > _wgslsmith_f_op_f32(-global1.x);
}

fn func_2(arg_0: f32, arg_1: Struct_5) -> vec4<f32> {
    var var_0 = -(-1i | u_input.c);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_f_op_f32(arg_0 + global1.x)) * vec2<f32>(-902f, -863f))));
    var var_1 = Struct_1(true, global2[_wgslsmith_index_u32(~reverseBits(_wgslsmith_div_u32(20703u ^ u_input.a.x, ~u_input.a.x)), 17u)], select(!vec2<bool>(any(vec4<bool>(global0.a.x, false, true, global2[_wgslsmith_index_u32(0u, 17u)])), all(arg_1.a)), select(arg_1.a, global0.a, arg_1.a), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], true)), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-23479i, 13941i), select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -67582i), vec2<i32>(0i, 1i)), vec2<i32>(-22182i, 1i), global0.a))));
    var var_2 = select(!vec4<bool>(!all(vec3<bool>(true, global0.a.x, false)), true, true, arg_1.a.x), !select(vec4<bool>(arg_1.a.x, -914f > arg_0, global0.a.x, all(vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 17u)]))), vec4<bool>(false || global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global0.a.x, var_1.b, func_3(Struct_3(Struct_1(arg_1.a.x, false, vec2<bool>(true, false), var_1.d)))), -516f < _wgslsmith_f_op_f32(global1.x - 998f)), !all(!(!vec4<bool>(false, false, global0.a.x, arg_1.a.x))));
    var_2 = select(select(select(!vec4<bool>(false, arg_1.a.x, arg_1.a.x, true), vec4<bool>(false, select(global2[_wgslsmith_index_u32(0u, 17u)], var_1.b, true), global0.a.x, arg_1.a.x), _wgslsmith_f_op_f32(1453f - -261f) < _wgslsmith_f_op_f32(round(global1.x))), select(vec4<bool>(true, u_input.a.x == u_input.a.x, any(var_1.c), global0.a.x), !select(vec4<bool>(var_1.b, true, var_2.x, false), vec4<bool>(arg_1.a.x, global0.a.x, true, arg_1.a.x), vec4<bool>(true, var_2.x, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], false)), !(!vec4<bool>(var_1.c.x, false, var_2.x, false))), var_2.x), vec4<bool>(func_3(Struct_3(Struct_1(true, var_2.x, arg_1.a, vec2<i32>(var_1.d.x, -2147483647i)))), ~u_input.a.x >= ~(~u_input.a.x), !any(vec2<bool>(var_1.b, global0.a.x)) && !(var_2.x | true), arg_1.a.x), !(!vec4<bool>(false | global0.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], !global2[_wgslsmith_index_u32(0u, 17u)], false | global0.a.x)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2355f, 346f) - 143f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 1220f)), _wgslsmith_f_op_f32(f32(-1f) * -1109f), arg_0))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(!(global1.x > _wgslsmith_f_op_f32(select(arg_1.x, 537f, global0.a.x))), _wgslsmith_div_f32(global1.x, arg_1.x) >= 335f, arg_3.zy, -abs(~vec2<i32>(39454i, u_input.c))), arg_3.ywz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_1, arg_1))), arg_1)), Struct_1(select(global0.a.x, true, func_3(Struct_3(Struct_1(true, global0.a.x, global0.a, vec2<i32>(arg_2, u_input.b))))), !(!global0.a.x) && (global1.x < global1.x), !select(arg_3.zy, global0.a, -43793i == u_input.b), countOneBits(vec2<i32>(i32(-1i) * -1i, max(0i, 1772i)))), Struct_1(all(!select(vec4<bool>(arg_3.x, global0.a.x, true, global0.a.x), arg_3, arg_3)), all(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], false, global0.a.x))), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], !any(vec4<bool>(global0.a.x, global0.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], false))), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -2147483647i, arg_2), _wgslsmith_sub_vec3_i32(vec3<i32>(9767i, 1i, 11442i), vec3<i32>(u_input.b, -2147483647i, -2147483647i))), arg_2)));
    let var_1 = ~0i;
    var var_2 = reverseBits(u_input.a ^ (_wgslsmith_sub_vec2_u32(~arg_0.yy, max(u_input.a, arg_0.yy)) >> (~firstTrailingBit(vec2<u32>(0u, arg_0.x)) % vec2<u32>(32u))));
    global0 = Struct_5(vec2<bool>(true, true));
    var var_3 = var_0.b;
    return Struct_1(true, select(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, reverseBits(34861u), 4294967295u), arg_0), 17u)], all(arg_3)), !(!vec2<bool>(true, all(arg_3.yz))), firstTrailingBit(~vec2<i32>(var_1, arg_2) | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 42076i), _wgslsmith_mod_vec2_i32(vec2<i32>(44238i, 83191i), var_0.a.d))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = ~u_input.a.x;
    var var_1 = Struct_4(vec3<u32>(u_input.a.x, ~0u, ~0u), Struct_3(func_4(~_wgslsmith_mod_vec3_u32(vec3<u32>(81654u, u_input.a.x, 33581u), vec3<u32>(u_input.a.x, 1u, 23964u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(838f, Struct_5(vec2<bool>(false, false)))))), ~(i32(-1i) * -2147483647i), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(22122u, u_input.a.x, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 8126u)), 17u)], global0.a.x, u_input.a.x > u_input.a.x, global2[_wgslsmith_index_u32(4294967295u ^ u_input.a.x, 17u)]))));
    var var_2 = Struct_2(func_4(_wgslsmith_div_vec3_u32(~abs(vec3<u32>(var_1.a.x, var_1.a.x, 1u)), (vec3<u32>(36017u, 4294967295u, 1u) ^ var_1.a) & var_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -107f, -493f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1842f, 831f, global1.x, 179f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-915f, -536f, 505f, -1006f))), var_1.b.a.d.x, !select(vec4<bool>(true, arg_0.x, false, global2[_wgslsmith_index_u32(1u, 17u)]), select(vec4<bool>(true, var_1.b.a.b, var_1.b.a.c.x, arg_0.x), vec4<bool>(var_1.b.a.a, global2[_wgslsmith_index_u32(0u, 17u)], global0.a.x, arg_0.x), arg_0.x), var_1.b.a.c.x)), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(u_input.a.x), (var_1.a.x & u_input.a.x) & var_1.a.x), 17u)], _wgslsmith_f_op_f32(-933f * global1.x) == -808f, !global0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-255f, -1000f, -794f, global1.x), vec4<f32>(1012f, global1.x, 158f, -607f), vec4<bool>(true, true, false, arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 199f, -810f)) * vec4<f32>(-384f, -461f, global1.x, global1.x)))), func_4(vec3<u32>(var_1.a.x, 1u, 44698u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1380f, global1.x, 171f, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1348f, global1.x, global1.x) * vec4<f32>(global1.x, 313f, -1575f, global1.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1367f, global1.x, global1.x, global1.x), vec4<f32>(global1.x, -897f, global1.x, 716f))))), _wgslsmith_clamp_i32(-var_1.b.a.d.x | max(-52016i, u_input.b), -10193i, ~(arg_1.x >> (u_input.a.x % 32u))), select(!select(vec4<bool>(false, true, global0.a.x, var_1.b.a.a), vec4<bool>(false, arg_0.x, global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec4<bool>(global0.a.x, true, global0.a.x, global2[_wgslsmith_index_u32(39323u, 17u)])), vec4<bool>(global0.a.x, global0.a.x && global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(~4294967295u, 17u)], global2[_wgslsmith_index_u32(abs(u_input.a.x), 17u)]), !(!vec4<bool>(global0.a.x, arg_0.x, global2[_wgslsmith_index_u32(var_1.a.x, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)])))), Struct_1(all(vec3<bool>(!global0.a.x, arg_0.x & global0.a.x, true)), true || (func_4(vec3<u32>(31853u, 0u, 3909u), vec4<f32>(-131f, -956f, global1.x, global1.x), -9883i, vec4<bool>(global0.a.x, global0.a.x, global0.a.x, arg_0.x)).b & false), !arg_0, var_1.b.a.d));
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global1.x - global1.x) > 2807f, true, !vec2<bool>(func_3(var_1.b), true), vec2<i32>(var_2.a.d.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.d.x, var_1.b.a.d.x), var_1.b.a.d))), var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(trunc(572f)), _wgslsmith_f_op_f32(ceil(-509f)), -1189f))), func_4(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a.x, 4294967295u, 9291u), var_1.a), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), var_2.c.x), -1066f, -720f, -1106f), firstLeadingBit(~(-359i)), vec4<bool>(arg_0.x, any(!vec4<bool>(arg_0.x, true, true, arg_0.x)), true, var_2.d.b)), Struct_1(true, false, func_4(_wgslsmith_div_vec3_u32(var_1.a & var_1.a, var_1.a & var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -492f, var_2.c.x, 638f)))), _wgslsmith_clamp_i32(-var_2.e.d.x, var_2.a.d.x, abs(arg_1.x)), select(!vec4<bool>(var_1.b.a.b, var_1.b.a.c.x, true, var_1.b.a.a), vec4<bool>(arg_0.x, var_2.d.c.x, false, true), var_2.b.x)).c, var_1.b.a.d));
    let var_3 = var_1.b;
    return Struct_4(vec3<u32>(19702u, ~4294967295u, 4294967295u), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.a, -min(abs(max(vec3<i32>(u_input.c, u_input.c, 0i), vec3<i32>(-1i, 5206i, u_input.c))), -reverseBits(vec3<i32>(1i, -1i, 12234i))));
    let var_1 = select(func_1(!vec2<bool>(func_4(var_0.a, vec4<f32>(442f, global1.x, 2067f, global1.x), var_0.b.a.d.x, vec4<bool>(var_0.b.a.a, true, false, global2[_wgslsmith_index_u32(u_input.a.x, 17u)])).b, true), -(~_wgslsmith_add_vec3_i32(vec3<i32>(53291i, 51237i, u_input.b), vec3<i32>(var_0.b.a.d.x, u_input.c, 25354i)))).b.a.c, vec2<bool>(var_0.b.a.b, !(any(vec2<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 17u)], false)) && (global2[_wgslsmith_index_u32(var_0.a.x, 17u)] | global2[_wgslsmith_index_u32(104789u, 17u)]))), !any(global0.a));
    let var_2 = vec4<bool>(all(select(!vec4<bool>(true, global0.a.x, false, true), vec4<bool>(global0.a.x, true, true, false), true)), !(!(-27237i >= var_0.b.a.d.x) & !(var_0.b.a.b || false)), true, !global2[_wgslsmith_index_u32(u_input.a.x, 17u)]);
    var var_3 = vec3<bool>(false, false, true);
    var var_4 = Struct_5(!(!func_4(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -904f, global1.x, global1.x)), ~u_input.c, vec4<bool>(var_0.b.a.c.x, var_1.x, var_2.x, var_3.x)).c));
    global3 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~(vec2<u32>(4294967295u, var_0.a.x) ^ vec2<u32>(var_0.a.x, u_input.a.x)), _wgslsmith_div_vec2_u32(var_0.a.xy, reverseBits(vec2<u32>(23153u, u_input.a.x)))), var_0.a.zx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, global1.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -219f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), vec2<f32>(1f, 1f)))));
}

