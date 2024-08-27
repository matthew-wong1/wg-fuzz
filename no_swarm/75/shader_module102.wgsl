struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: vec2<bool>;

var<private> global2: Struct_1 = Struct_1(-4747i, 15704u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global2 = Struct_1(~_wgslsmith_clamp_i32(-1i, select(-11656i, -u_input.b, true), global2.a), ~(~max(~1u, _wgslsmith_sub_u32(1u, 1u))));
    global1 = select(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 82133u, global2.b, 47292u), vec4<u32>(global2.b, u_input.d, 4294967295u, 8358u)), reverseBits(vec4<u32>(18063u, global2.b, global2.b, u_input.a.x))), 15u)], any(vec4<bool>(global1.x, false, false, false)) != global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 15u)]), select(select(select(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.d, 15u)]), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(11841u, 15u)]), true), 4294967295u <= global2.b), select(select(vec2<bool>(false, false), vec2<bool>(global1.x, true), global1.x), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(55457u, 15u)]), false), vec2<bool>(!global0[_wgslsmith_index_u32(72784u, 15u)], global1.x)), select(select(!vec2<bool>(global0[_wgslsmith_index_u32(global2.b, 15u)], true), vec2<bool>(true, true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 15u)]), vec2<bool>(false, global1.x), vec2<bool>(true, true))), !(!vec2<bool>(global1.x, global0[_wgslsmith_index_u32(36304u, 15u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(51495u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 15u)]), true), true)), true), select(select(!select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 15u)], false), vec2<bool>(global1.x, true), vec2<bool>(global0[_wgslsmith_index_u32(global2.b, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), select(!vec2<bool>(global0[_wgslsmith_index_u32(global2.b, 15u)], global0[_wgslsmith_index_u32(6952u, 15u)]), vec2<bool>(true, true), any(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 15u)]))), !select(vec2<bool>(true, global1.x), vec2<bool>(true, global1.x), global0[_wgslsmith_index_u32(global2.b, 15u)])), !vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)] && global0[_wgslsmith_index_u32(1u, 15u)]), !(!select(vec2<bool>(true, false), vec2<bool>(global1.x, global1.x), false))));
    let var_0 = max(global2.a, 21338i);
    var var_1 = select(select(select(vec4<bool>(true, any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)], global1.x, true)), false, u_input.b == global2.a), vec4<bool>(!global0[_wgslsmith_index_u32(global2.b, 15u)], all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d, 15u)], global0[_wgslsmith_index_u32(u_input.d, 15u)])), true, any(vec3<bool>(false, global1.x, true))), vec4<bool>(global0[_wgslsmith_index_u32(abs(global2.b), 15u)], global0[_wgslsmith_index_u32(countOneBits(42764u), 15u)], global1.x, global2.b == u_input.d)), !(!(!vec4<bool>(false, global1.x, false, global1.x))), false), !vec4<bool>(any(vec2<bool>(true, true)), global1.x, 35389u >= global2.b, all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], false, global0[_wgslsmith_index_u32(1u, 15u)]))), !any(vec2<bool>(true, 1i != u_input.c.x)));
    var var_2 = firstTrailingBit(~(~53130u));
    return select(1i, _wgslsmith_clamp_i32(-32334i, var_0, i32(-1i) * -(~global2.a)), var_1.x);
}

fn func_4(arg_0: bool) -> u32 {
    var var_0 = Struct_3(!all(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 15u)], false, global1.x), !vec4<bool>(true, true, arg_0, false), !vec4<bool>(arg_0, false, arg_0, global1.x))), _wgslsmith_mod_i32(u_input.c.x ^ -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(17941i, global2.a), ~vec2<i32>(u_input.b, -1i))), Struct_2(vec3<bool>(false, all(!vec4<bool>(global0[_wgslsmith_index_u32(global2.b, 15u)], true, global1.x, true)), !arg_0), Struct_1(global2.a, u_input.a.x), Struct_1(i32(-1i) * -u_input.b, 27997u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1738f, 1f, _wgslsmith_div_f32(-207f, -176f), _wgslsmith_div_f32(462f, 506f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1449f, -1204f, 1379f, 1588f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.d.x) - _wgslsmith_f_op_f32(sign(var_0.c.d.x))) * var_0.c.d.x), -1000f));
    var var_2 = var_0.c;
    let var_3 = max(~(-29028i), _wgslsmith_mult_i32(64937i, firstLeadingBit(abs(countOneBits(u_input.c.x)))));
    var var_4 = var_0.c.d.yw;
    return ~min(~countOneBits(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), u_input.a.x);
}

fn func_2() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.d, 15u)];
    global1 = !select(vec2<bool>(global0[_wgslsmith_index_u32(42841u, 15u)], false), vec2<bool>(global1.x, any(vec2<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))), global1.x);
    global0 = array<bool, 15>();
    var var_1 = 41439u << (0u % 32u);
    var_1 = func_4(func_3() < ~select(global2.a, u_input.c.x, global1.x));
    return Struct_2(!vec3<bool>(true, global1.x, global0[_wgslsmith_index_u32(1u, 15u)]), Struct_1(15462i, _wgslsmith_add_u32(min(4294967295u, _wgslsmith_sub_u32(0u, 0u)), ~u_input.d)), Struct_1(global2.a, ~(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(45178u, 19055u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(790f, -1289f, -1306f, 1533f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1530f, 328f, -1271f, 477f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-488f, -1980f, 1000f, -1379f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-330f, 1112f, 517f, -1291f)) - vec4<f32>(-1264f, _wgslsmith_f_op_f32(select(-1224f, -775f, global0[_wgslsmith_index_u32(0u, 15u)])), 684f, _wgslsmith_f_op_f32(f32(-1f) * -800f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    global0 = array<bool, 15>();
    let var_0 = arg_2.b;
    global2 = arg_2.b;
    var var_1 = Struct_1(-2147483647i, arg_2.c.b);
    var var_2 = Struct_4(Struct_3(true, _wgslsmith_div_i32(var_0.a, reverseBits(select(var_1.a, 2147483647i, true))), func_2()), func_2(), u_input.a);
    return Struct_3(select(func_2().a.x, true, true), -40666i, func_2());
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<u32>) -> bool {
    let var_0 = vec3<bool>(false, true, false);
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -621f, arg_0)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(1377f, arg_0, 857f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))), func_2(), func_2());
    let var_2 = ~1u;
    let var_3 = func_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.c.d.xyy, var_1.c.d.xzx, vec3<bool>(var_0.x, var_1.a, var_1.c.a.x)))), _wgslsmith_f_op_vec3_f32(floor(var_1.c.d.xxx)))))), Struct_2(!vec3<bool>(var_1.a, any(vec4<bool>(true, global0[_wgslsmith_index_u32(global2.b, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], var_0.x)), func_5(vec3<f32>(442f, -1846f, var_1.c.d.x), Struct_2(vec3<bool>(false, false, var_0.x), var_1.c.b, Struct_1(global2.a, 4294967295u), vec4<f32>(-149f, var_1.c.d.x, -1638f, var_1.c.d.x)), Struct_2(var_0, Struct_1(13407i, var_2), Struct_1(global2.a, 1u), vec4<f32>(var_1.c.d.x, 2353f, 2351f, 537f))).a), func_5(var_1.c.d.zxy, var_1.c, func_5(var_1.c.d.xwy, Struct_2(vec3<bool>(var_1.c.a.x, global0[_wgslsmith_index_u32(global2.b, 15u)], false), var_1.c.b, Struct_1(1i, arg_1.x), vec4<f32>(var_1.c.d.x, arg_0, arg_0, var_1.c.d.x)), var_1.c).c).c.b, Struct_1(i32(-1i) * -35018i, 4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, -1000f, var_1.c.d.x, arg_0))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-972f, arg_0, arg_0, -645f), vec4<f32>(arg_0, arg_0, -1514f, var_1.c.d.x), vec4<bool>(var_1.c.a.x, global0[_wgslsmith_index_u32(40640u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], false)))) * _wgslsmith_f_op_vec4_f32(-var_1.c.d))), var_1.c);
    global2 = var_1.c.b;
    return true;
}

fn func_6(arg_0: bool, arg_1: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_4(Struct_3(true, max(-19773i, _wgslsmith_mod_i32(~2147483647i, _wgslsmith_mult_i32(-16965i, global2.a))), func_2()), func_2(), vec2<u32>(u_input.d, abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(35915u, 4294967295u, 90685u, 4294967295u)), ~vec4<u32>(0u, 7950u, global2.b, u_input.a.x)))));
    global0 = array<bool, 15>();
    let var_1 = (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, global2.b, 33622u), vec3<u32>(u_input.d, global2.b, u_input.a.x)) << (func_2().b.b % 32u), firstLeadingBit(global2.b), abs(reverseBits(var_0.c.x))) & vec3<u32>(_wgslsmith_div_u32(~1u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, 7754u, 42841u), vec3<u32>(var_0.c.x, u_input.d, var_0.a.c.c.b)) & 0u, ~countOneBits(48200u))) >> (~vec3<u32>(8595u, 1u, var_0.b.c.b) % vec3<u32>(32u));
    global0 = array<bool, 15>();
    var var_2 = vec4<i32>(0i, _wgslsmith_div_i32(~var_0.a.c.c.a, -(u_input.c.x & _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b, var_0.a.c.c.a, u_input.c.x, var_0.b.b.a), vec4<i32>(0i, global2.a, global2.a, u_input.c.x)))), -1i, ~max(func_3() << (var_1.x % 32u), ~(-6887i)));
    return Struct_4(var_0.a, var_0.b, vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(0u, global2.b, u_input.d)), ~u_input.d), 4294967295u));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(firstLeadingBit(func_2().c.a), arg_1.b);
    var var_1 = Struct_4(Struct_3(global1.x || arg_1.a, ~(-1i), func_6(true, vec3<f32>(arg_2.c.d.x, _wgslsmith_div_f32(arg_0.a.c.d.x, 1088f), func_6(arg_2.c.a.x, arg_0.a.c.d.zzz).b.d.x)).a.c), Struct_2(vec3<bool>(func_6(global1.x, _wgslsmith_f_op_vec3_f32(trunc(arg_0.b.d.xwx))).b.a.x, global2.b == 2523u, false), func_2().b, Struct_1(-2147483647i, _wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), 24742u << (u_input.d % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.c.d.x, 1052f, arg_2.c.d.x, 2846f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.d.x, arg_2.c.d.x, arg_0.a.c.d.x, 318f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.d.x, arg_1.c.d.x, -1000f, -1070f) + arg_0.a.c.d)))), ~firstTrailingBit(vec2<u32>(~u_input.d, 47911u)));
    let var_2 = func_6(arg_1.c.a.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(619f * -578f), _wgslsmith_f_op_f32(-arg_0.b.d.x), func_5(arg_2.c.d.xyy, Struct_2(arg_2.c.a, Struct_1(2147483647i, 116443u), arg_2.c.c, vec4<f32>(arg_1.c.d.x, 991f, var_1.a.c.d.x, -1316f)), arg_0.b).c.d.x), arg_0.a.c.d.zxx)))).a.c.b;
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(-593f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2130f, arg_2.c.d.x)) * 423f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1.a.c.d.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1076f, -1436f)), arg_1.c.d.x) + _wgslsmith_f_op_vec3_f32(abs(arg_2.c.d.yxx))));
    var_3 = arg_2.c.d.wxw;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-289f + 1000f) * -161f), vec3<u32>(~4294967295u, global2.b, _wgslsmith_mult_u32(57041u, 0u)), _wgslsmith_mod_vec3_u32(min(vec3<u32>(57851u, 50846u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, global2.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 39627u, 23560u), vec3<u32>(38144u, 45370u, 24339u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(672f, -843f, -807f))) * vec3<f32>(1f, 1f, 1f)))), Struct_3(global0[_wgslsmith_index_u32(global2.b, 15u)], 1i, Struct_2(vec3<bool>(all(vec2<bool>(global1.x, true)), func_6(global1.x, vec3<f32>(-2242f, -585f, 1358f)).b.a.x, true), func_6(any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 15u)], true)), vec3<f32>(1296f, 631f, -1000f)).a.c.b, func_5(vec3<f32>(-1449f, 313f, 1156f), Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false, global0[_wgslsmith_index_u32(17766u, 15u)]), Struct_1(-27355i, 4294967295u), Struct_1(1i, 4294967295u), vec4<f32>(2371f, -639f, 683f, -1043f)), func_6(false, vec3<f32>(2016f, -616f, -1368f)).a.c).c.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1107f, -470f, -382f, 300f)), func_6(global1.x, vec3<f32>(769f, 975f, -1153f)).a.c.d, vec4<bool>(global1.x, global1.x, true, global1.x))))), Struct_3(all(vec3<bool>(func_2().a.x, any(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 15u)])), true)), u_input.c.x, Struct_2(func_6(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-902f, 1862f, -1057f))).a.c.a, Struct_1(global2.a, u_input.a.x), func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-602f, -1000f, -1000f), vec3<f32>(871f, 2033f, 713f), vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], false, global1.x))), func_6(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], vec3<f32>(780f, 1401f, -1825f)).b, func_5(vec3<f32>(-538f, -267f, 104f), Struct_2(vec3<bool>(false, true, true), Struct_1(-2147483647i, global2.b), Struct_1(-44381i, u_input.a.x), vec4<f32>(-882f, -1000f, 451f, -839f)), Struct_2(vec3<bool>(true, global1.x, true), Struct_1(-15697i, u_input.d), Struct_1(1i, global2.b), vec4<f32>(4076f, -1000f, -1866f, -897f))).c).c.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(-618f * -1000f), _wgslsmith_div_f32(-1106f, 1100f)))));
    var var_1 = 38423u;
    let var_2 = Struct_4(Struct_3(!(!(u_input.a.x != global2.b)), 74632i, Struct_2(vec3<bool>(all(vec4<bool>(var_0.a.x, true, true, true)), true, true), Struct_1(global2.a | u_input.b, _wgslsmith_mod_u32(4294967295u, 34407u)), var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-564f, 1986f, var_0.d.x, 1645f))))), func_5(_wgslsmith_f_op_vec3_f32(var_0.d.xyy * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(var_0.d.www))))), func_2(), func_2()).c, _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(16551u, _wgslsmith_mod_u32(var_0.b.b << (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, 45804u, var_0.b.b), vec3<u32>(12676u, global2.b, 4294967295u))))));
    var_1 = ~(~_wgslsmith_div_u32(~4294967295u, global2.b));
    var var_3 = 0u;
    global0 = array<bool, 15>();
    let var_4 = select(var_2.a.c.a, var_0.a, firstLeadingBit(var_0.b.b ^ ~4294967295u) >= abs(52384u));
    let var_5 = vec2<bool>(var_2.b.a.x | !var_4.x, all(vec4<bool>((global2.b == var_2.b.b.b) & (-43302i >= var_0.b.a), (27276u >> (0u % 32u)) > (global2.b ^ u_input.a.x), true, var_0.a.x)));
    let var_6 = -1670f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_2.b.c.a, _wgslsmith_div_i32(-_wgslsmith_mult_i32(u_input.b, var_2.b.c.a), ~(~(-1i)))), _wgslsmith_div_vec4_u32(select(select(vec4<u32>(u_input.d, 8580u, global2.b, 35789u), vec4<u32>(4294967295u, 6100u, var_0.c.b, u_input.d), vec4<bool>(global1.x, false, false, true)), vec4<u32>(1u, u_input.a.x, 63656u, 43313u), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 15u)], true, false, false)) ^ (~vec4<u32>(u_input.a.x, global2.b, u_input.d, var_2.a.c.b.b) & ~vec4<u32>(47854u, u_input.d, u_input.d, var_2.b.b.b)), ~vec4<u32>(6847u, 1u, 85126u, var_0.c.b)));
}

