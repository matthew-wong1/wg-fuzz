struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, false, true, true, false, false, true, true, true, false, false, true, true, false, true, false, false, true, true, true, false, false, true, true, true, false, true, false, false, true);

var<private> global1: f32 = -1848f;

var<private> global2: array<i32, 8> = array<i32, 8>(2147483647i, 44625i, 0i, 0i, 2147483647i, 7657i, -22298i, -10575i);

var<private> global3: array<u32, 22> = array<u32, 22>(1u, 0u, 110036u, 51096u, 0u, 4294967295u, 20068u, 112294u, 1u, 4416u, 30788u, 1u, 86193u, 1u, 12259u, 67063u, 0u, 1u, 1u, 1u, 57084u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(815f)), _wgslsmith_f_op_f32(716f - 1028f), _wgslsmith_f_op_f32(sign(1191f)), 631f)))), vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(51946u, 28519u, u_input.e)), select(reverseBits(u_input.c), ~u_input.c, false)), _wgslsmith_mod_u32(~(~43770u), select(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 22u)], u_input.c.x), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], select(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(88525u, 22u)], 30u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 30u)], true))), _wgslsmith_add_u32(~(~42438u), 39200u), global3[_wgslsmith_index_u32(31076u, 22u)]), 1i, !vec2<bool>(true, global0[_wgslsmith_index_u32(countOneBits(u_input.c.x), 30u)]));
    let var_1 = var_0.b.yx;
    global3 = array<u32, 22>();
    let var_2 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(round(var_0.a.x)));
    let var_3 = ~0u;
    return 1894f;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(353f)) + _wgslsmith_f_op_f32(f32(-1f) * -436f)), _wgslsmith_f_op_f32(round(346f)))));
    let var_1 = arg_0;
    let var_2 = var_1.a.b;
    let var_3 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.d)) + arg_0.b), _wgslsmith_f_op_f32(-var_0.x), false)))), 1u);
    let var_4 = _wgslsmith_div_i32(min(73438i, 17311i), -57592i);
    return arg_1;
}

fn func_2() -> vec4<f32> {
    let var_0 = global2[_wgslsmith_index_u32((abs(1u) >> (global3[_wgslsmith_index_u32(76877u, 22u)] % 32u)) >> (func_4(Struct_2(Struct_1(0i, -vec4<i32>(u_input.d.x, u_input.d.x, 26866i, global2[_wgslsmith_index_u32(22050u, 8u)]), _wgslsmith_f_op_f32(func_3()), -1361f, u_input.b.x != global3[_wgslsmith_index_u32(73164u, 22u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(399f * 265f)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31089u, 6477u, u_input.a.x), select(vec3<u32>(29241u, u_input.b.x, 11821u), vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], 1u, 1u), true)), 22u)]), ~1u) % 32u), 8u)];
    let var_1 = _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.d.x, ~(~28570i), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d.x, u_input.d.x), -1i), min(~global2[_wgslsmith_index_u32(20230u, 8u)], u_input.d.x)), ~(-vec4<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40468u, 22u)], 8u)], -74015i, u_input.d.x, 1860i)), 69412u >= _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], 31971u, 4294967295u)), abs(vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c >> (u_input.c % vec3<u32>(32u)), u_input.c & u_input.c), 8u)], ~abs(-35785i), _wgslsmith_clamp_i32(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.b.x, 8u)]), global2[_wgslsmith_index_u32(30187u, 8u)], -2147483647i), 1i)));
    var var_2 = global2[_wgslsmith_index_u32(u_input.e, 8u)];
    var var_3 = Struct_2(Struct_1(i32(-1i) * -1i, vec4<i32>(global2[_wgslsmith_index_u32(~func_4(Struct_2(Struct_1(global2[_wgslsmith_index_u32(1u, 8u)], var_1, 1000f, 448f, global0[_wgslsmith_index_u32(0u, 30u)]), -1516f, global3[_wgslsmith_index_u32(u_input.e, 22u)]), 0u), 8u)], -_wgslsmith_mult_i32(27258i, var_1.x), var_1.x, ~(-3779i) >> (select(global3[_wgslsmith_index_u32(u_input.b.x, 22u)], global3[_wgslsmith_index_u32(14305u, 22u)], global0[_wgslsmith_index_u32(39395u, 30u)]) % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-230f, -1000f) * _wgslsmith_f_op_f32(max(-1978f, -685f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-844f, 1000f), _wgslsmith_f_op_f32(-1413f + -899f))), all(vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(68367u, 22u)], global3[_wgslsmith_index_u32(19581u, 22u)]), 30u)], true, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-2298f)))))), u_input.b.x ^ global3[_wgslsmith_index_u32(~u_input.b.x, 22u)]);
    var var_4 = false;
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2086f)), _wgslsmith_f_op_f32(345f - 819f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.b))), -101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1103f), var_3.a.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-299f - var_3.a.d))) + _wgslsmith_f_op_f32(var_3.a.d * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_3.b, 611f)))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    return Struct_1(~global2[_wgslsmith_index_u32(~abs(~4294967295u), 8u)], firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 8u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)], 8u)], u_input.d.x, u_input.d.x) ^ vec4<i32>(-17909i, u_input.d.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3610u, 22u)], 22u)], 8u)], global2[_wgslsmith_index_u32(806u, 8u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.d.x, 1i, -1i) << (vec4<u32>(29582u, u_input.e, u_input.b.x, u_input.e) % vec4<u32>(32u))) << (~(~vec4<u32>(59660u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 22u)], 22u)], u_input.b.x, 20127u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_2)))), all(select(!vec3<bool>(arg_1, false, global0[_wgslsmith_index_u32(38741u, 30u)]), vec3<bool>(arg_1, true, false), !vec3<bool>(false, global0[_wgslsmith_index_u32(11942u, 30u)], true))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1087f)), arg_2)), !all(vec2<bool>(true, all(vec3<bool>(arg_1, false, global0[_wgslsmith_index_u32(71788u, 30u)])))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    var var_0 = !arg_2.d;
    var var_1 = !(!(!vec3<bool>(var_0.x, true, arg_0.e)));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1723f - arg_1.c))))))));
    var var_3 = func_5(arg_2.a, !any(vec4<bool>(false, arg_2.d.x, all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_2.b.x, 30u)], true)), all(vec4<bool>(var_1.x, arg_1.e, arg_2.d.x, arg_0.e)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-492f + _wgslsmith_f_op_f32(arg_1.c + arg_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.a.x)), _wgslsmith_div_f32(arg_1.c, 1574f))) * _wgslsmith_f_op_f32(f32(-1f) * -195f)));
    var var_4 = Struct_2(func_5(arg_2.a, func_5(vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-arg_0.d), func_5(vec4<f32>(var_3.d, arg_2.a.x, arg_2.a.x, arg_2.a.x), arg_1.e, arg_0.c).d, arg_0.d), arg_2.d.x, _wgslsmith_f_op_f32(-886f * arg_1.d)).e, arg_2.a.x), 153f, 1u);
    return arg_1;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = vec3<i32>(arg_0, i32(-1i) * -4063i, ~(-_wgslsmith_sub_i32(arg_0, -27294i)) ^ 3271i);
    var var_1 = abs(-2147483647i);
    var var_2 = func_6(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(192f, -1017f, -624f, -1000f)) - _wgslsmith_f_op_vec4_f32(func_2()))), all(select(!vec2<bool>(global0[_wgslsmith_index_u32(26557u, 30u)], true), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], 30u)]), vec2<bool>(true, false), global0[_wgslsmith_index_u32(0u, 30u)]), true)), -440f), func_5(vec4<f32>(1f, 1f, 1f, 1f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-643f, -1894f)) + -1436f))), Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(100f, 286f, -461f, 1024f), vec4<f32>(170f, 1142f, 715f, 364f)) * vec4<f32>(669f, -1000f, 2471f, 358f)))), vec4<u32>(global3[_wgslsmith_index_u32(~u_input.b.x, 22u)] ^ (u_input.c.x << (164u % 32u)), min(max(1u, u_input.a.x), 4294967295u), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(1413u, 22u)], global3[_wgslsmith_index_u32(1u, 22u)]), ~(~u_input.a.x)), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~1u, 22u)] & ~(~u_input.a.x), 8u)], select(vec2<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5874u, 22u)], 30u)] | true), vec2<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 30u)], false), global0[_wgslsmith_index_u32(firstLeadingBit(6182u), 30u)])));
    global2 = array<i32, 8>();
    let var_3 = Struct_2(Struct_1(var_2.a, _wgslsmith_clamp_vec4_i32(var_2.b, _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, var_2.b.x, arg_0, 30478i), var_2.b), firstLeadingBit(vec4<i32>(arg_0, var_0.x, -1i, u_input.d.x)) & var_2.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1039f)))), 1f, global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, u_input.a.x))), 22u)], 30u)]), var_2.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(max(~func_4(Struct_2(Struct_1(arg_0, vec4<i32>(var_0.x, var_2.a, arg_0, var_2.a), var_2.d, var_2.d, var_2.e), var_2.d, global3[_wgslsmith_index_u32(47962u, 22u)]), max(u_input.a.x, u_input.b.x)), 1097u), 22u)], 22u)]);
    return any(!select(vec3<bool>(var_2.e, global3[_wgslsmith_index_u32(0u, 22u)] == global3[_wgslsmith_index_u32(72467u, 22u)], !var_3.a.e), vec3<bool>(var_2.e, var_3.a.e, 369f <= var_2.d), select(select(vec3<bool>(var_3.a.e, false, true), vec3<bool>(true, global0[_wgslsmith_index_u32(var_3.c, 30u)], true), vec3<bool>(var_2.e, global0[_wgslsmith_index_u32(13428u, 30u)], var_3.a.e)), vec3<bool>(false, true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.d.x << ((~(~u_input.b.x) & 1u) % 32u), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(select(vec4<i32>(global2[_wgslsmith_index_u32(u_input.e, 8u)], 2147483647i, 25856i, -1i), vec4<i32>(u_input.d.x, 0i, 1444i, 1i), vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(39709u, 30u)], true)), -vec4<i32>(u_input.d.x, 1i, -11099i, -1i)), -669f, _wgslsmith_f_op_f32(1000f * 229f), true);
    var_0 = Struct_1(-1i, min(var_0.b, _wgslsmith_div_vec4_i32(var_0.b, vec4<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)] ^ u_input.a.x, 22u)], 8u)], -6479i, -u_input.d.x, 34494i))), _wgslsmith_f_op_f32(var_0.c * -385f), var_0.c, all(vec3<bool>(true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 22u)], 22u)], 22u)], 22u)], 8u)] < -14792i, true)) && false);
    var var_1 = _wgslsmith_f_op_f32(var_0.d * var_0.c);
    var var_2 = vec4<bool>(var_0.e, all(select(!vec3<bool>(var_0.e, global0[_wgslsmith_index_u32(4294967295u, 30u)], var_0.e), vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(u_input.e, 30u)], false)), var_0.e, var_0.e), func_1(36296i) && any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 30u)], var_0.e, false, global0[_wgslsmith_index_u32(94784u, 30u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(144f)), _wgslsmith_f_op_f32(-var_0.d)) * _wgslsmith_f_op_f32(-1211f + -1393f)) != _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1507f, -1000f)) * var_0.c)), ~_wgslsmith_add_u32(u_input.c.x, u_input.b.x) < u_input.b.x);
    let var_3 = Struct_2(func_5(vec4<f32>(_wgslsmith_f_op_f32(ceil(190f)), _wgslsmith_f_op_f32(-261f * _wgslsmith_f_op_f32(-197f * var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), select(!(!global0[_wgslsmith_index_u32(28518u, 30u)]), _wgslsmith_mod_u32(u_input.a.x, u_input.e) <= 27042u, select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(11477u, 42294u), 30u)], var_2.x, var_0.e)), var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1065f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c)) + _wgslsmith_f_op_f32(-var_0.d)) + -1495f)), ~u_input.b.x);
    global3 = array<u32, 22>();
    global0 = array<bool, 30>();
    global2 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_f32(sign(var_0.c)));
}

