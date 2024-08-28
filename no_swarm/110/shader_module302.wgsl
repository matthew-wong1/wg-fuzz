struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(375f, -530f, 598f, 1731f), 1u, 1581f);

var<private> global1: array<Struct_2, 3>;

var<private> global2: array<Struct_2, 12>;

var<private> global3: Struct_1;

var<private> global4: array<f32, 10>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<f32> {
    let var_0 = global0.b;
    global3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-464f)))), _wgslsmith_f_op_f32(abs(-789f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 10u)])), -515f), global0.b, -783f);
    var var_1 = Struct_2(~u_input.a, Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 1000f, global4[_wgslsmith_index_u32(global0.b, 10u)], -635f)) + global3.a), _wgslsmith_f_op_vec4_f32(-global3.a))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(39122u, 10u)] * -217f), global3.c, true)))), select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, true, true, true))), !any(vec4<bool>(true, true, true, true))), true);
    global4 = array<f32, 10>();
    let var_2 = var_1.b;
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(~global0.b >> (~var_1.a % 32u), 10u)])))), -2055f, 373f, _wgslsmith_f_op_f32(var_1.b.a.x - var_1.b.c));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global4 = array<f32, 10>();
    var var_0 = _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(abs(9051u), 10u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), select(global3.b, _wgslsmith_mod_u32(global3.b, u_input.a), any(vec4<bool>(true, true, true, true)) == !(u_input.a <= 1u)), -649f);
    global3 = Struct_1(global3.a, countOneBits(select(_wgslsmith_clamp_u32(arg_0.b, global0.b, arg_0.b), 0u, all(vec4<bool>(true, false, false, true)))) & (1u << (countOneBits(global0.b & 51980u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1560f * _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(global3.b, 10u)], _wgslsmith_div_f32(global3.c, 1373f))))));
    var var_2 = vec3<bool>(true, all(vec3<bool>(false, true, (var_1.a.x < arg_0.a.x) & false)), true);
    return var_1;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec4<i32>(reverseBits(1i), -(~(0i >> (global0.b % 32u))), ~1i, firstLeadingBit(34978i)) << (firstTrailingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 46044u, 10110u, global3.b) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b, u_input.a, u_input.a, 13235u), vec4<u32>(0u, 45240u, 4294967295u, 1u)) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, global3.b, 86452u, arg_1.b))) % vec4<u32>(32u));
    let var_1 = var_0.x == -(~(-firstLeadingBit(-35936i)));
    let var_2 = Struct_2(arg_1.b, func_2(func_2(Struct_1(vec4<f32>(global0.a.x, global4[_wgslsmith_index_u32(4294967295u, 10u)], arg_1.c, -408f), 53760u, _wgslsmith_div_f32(118f, arg_1.a.x)))), vec2<bool>(false, all(vec4<bool>(all(vec3<bool>(false, true, arg_0.x)), !var_1, true, all(vec4<bool>(arg_0.x, true, var_1, var_1))))), any(select(!vec4<bool>(arg_0.x, var_1, true, true), !(!vec4<bool>(arg_0.x, var_1, true, var_1)), all(!vec3<bool>(arg_0.x, var_1, false)))));
    let var_3 = select(select(vec3<bool>(any(!vec3<bool>(var_2.d, true, false)), select(true | var_1, select(var_1, var_1, true), select(var_1, true, false)), !var_1 | true), vec3<bool>(all(select(vec4<bool>(arg_0.x, var_1, true, true), vec4<bool>(var_1, arg_0.x, false, true), vec4<bool>(var_1, var_2.d, true, false))), !(!var_2.d), all(!vec4<bool>(false, var_2.c.x, false, false))), any(!vec4<bool>(var_2.d, var_1, var_1, true)) && true), select(vec3<bool>(!(var_0.x < -46325i), arg_0.x, arg_0.x), !select(select(vec3<bool>(true, var_1, var_2.d), vec3<bool>(false, false, true), vec3<bool>(arg_0.x, true, true)), !vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(var_1, var_1, false)), !vec3<bool>(!arg_0.x, all(vec4<bool>(var_1, true, var_2.c.x, false)), false)), vec3<bool>(var_2.c.x, !all(!vec3<bool>(false, true, var_1)), true));
    var var_4 = var_2.b;
    return Struct_2(var_4.b, func_2(var_2.b), vec2<bool>(var_0.x == -_wgslsmith_div_i32(var_0.x, 59028i), var_3.x), select(arg_0.x, !var_3.x, select(true, any(vec3<bool>(true, false, false)) & any(var_3), !(!var_3.x))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    global2 = array<Struct_2, 12>();
    let var_0 = global2[_wgslsmith_index_u32(abs(global3.b), 12u)];
    let var_1 = arg_0;
    var var_2 = vec2<f32>(-100f, var_1.b.c);
    global0 = var_0.b;
    return _wgslsmith_f_op_f32(-564f + -1000f);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = Struct_1(arg_0.a, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.c))))));
    let var_1 = 1563f;
    let var_2 = ~(~1u);
    let var_3 = arg_3;
    let var_4 = true;
    return _wgslsmith_f_op_f32(765f - _wgslsmith_f_op_f32(func_5(func_4(select(vec2<bool>(false, var_3), !vec2<bool>(var_4, var_3), false), func_2(arg_0)), _wgslsmith_mult_i32(firstTrailingBit(-37833i) ^ 1i, -22118i), !(!vec2<bool>(arg_3, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(~16102u, 10u)], _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(global3.b, 10u)])), _wgslsmith_f_op_f32(func_1(Struct_1(global0.a, 4294967295u, global0.c), vec3<f32>(-647f, 552f, 1000f), 4294967295u, false)), 1203f))), 13338u, _wgslsmith_f_op_f32(-global0.c));
    let var_1 = func_4(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), func_4(vec2<bool>(true, true), func_4(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)), 1u, _wgslsmith_f_op_f32(-global3.c))).b).b);
    let var_2 = !(!vec4<bool>(var_1.c.x, all(select(vec3<bool>(var_1.d, false, var_1.c.x), vec3<bool>(false, false, false), vec3<bool>(var_1.c.x, true, false))), var_1.d, !var_1.d & var_1.c.x));
    global2 = array<Struct_2, 12>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c));
    global3 = func_2(func_2(func_4(!(!var_1.c), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1366f, global0.c, 1028f, -1264f))), ~u_input.a, 275f)).b));
    var var_4 = _wgslsmith_div_i32(1i, -2147483647i) == _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -4194i, 2147483647i), vec2<i32>(i32(-1i) * -7823i, ~(-32168i >> (global3.b % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(~global0.b, 86397u, (var_0.b | u_input.a) | _wgslsmith_dot_vec4_u32(vec4<u32>(8108u, var_0.b, u_input.a, 103975u), vec4<u32>(0u, var_1.a, 39083u, u_input.a)), var_0.b)), vec2<i32>(1i, 1i) | vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(45554i, 8795i, -24986i), firstTrailingBit(-1i)), 1i & (-11562i << (global3.b % 32u))), 107f, _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1.b.b, 0u), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global0.b, 25689u)), vec2<u32>(42570u, global3.b) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 19920u), vec2<u32>(global0.b, 79853u)))), ~vec2<u32>(var_0.b, global0.b)), vec4<f32>(var_1.b.c, global0.a.x, 669f, var_0.a.x));
}

