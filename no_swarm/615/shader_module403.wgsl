struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(1i, 0i, -4778i, 1i), vec4<i32>(-1i, -1i, -46787i, 3242i), vec4<i32>(4453i, 2147483647i, 27335i, 15801i), vec4<i32>(3827i, -5166i, -1i, 20817i), vec4<i32>(10114i, i32(-2147483648), 48173i, 33536i), vec4<i32>(-1i, 2147483647i, 1i, i32(-2147483648)), vec4<i32>(91446i, -1i, -78247i, 1i), vec4<i32>(24827i, 0i, i32(-2147483648), 34573i), vec4<i32>(-61430i, -7668i, -1i, 1i), vec4<i32>(2147483647i, -25160i, -34146i, -3907i), vec4<i32>(10873i, 0i, -3976i, 2147483647i), vec4<i32>(1i, -24159i, -23283i, i32(-2147483648)), vec4<i32>(5238i, -1i, -1i, 38169i), vec4<i32>(1i, -8311i, -45741i, 0i), vec4<i32>(16407i, i32(-2147483648), -31436i, 0i), vec4<i32>(i32(-2147483648), -21985i, -56385i, 1586i), vec4<i32>(60238i, 2299i, -31227i, -16859i), vec4<i32>(103334i, -1i, i32(-2147483648), -10808i), vec4<i32>(-3247i, 0i, 0i, -83722i), vec4<i32>(-24579i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(-15503i, 1i, 51500i, -27034i), vec4<i32>(0i, 51164i, 22881i, -16898i), vec4<i32>(0i, -1i, 0i, 1i), vec4<i32>(5693i, 15059i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), 8520i, -1i, 38871i), vec4<i32>(0i, 1i, i32(-2147483648), 0i), vec4<i32>(-7246i, 1i, -1i, 31283i), vec4<i32>(-39119i, 0i, -1i, 0i));

var<private> global1: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-5160i, -1i, 2147483647i), vec3<i32>(3051i, -1i, 0i), vec3<i32>(-2398i, 1i, 54274i), vec3<i32>(-54339i, 46146i, 1i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(i32(-2147483648), -1i, 20091i), vec3<i32>(2483i, 62684i, 35995i), vec3<i32>(-48747i, -12900i, -38869i));

var<private> global2: array<f32, 2> = array<f32, 2>(2695f, -376f);

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_2) -> vec3<bool> {
    global0 = array<vec4<i32>, 28>();
    var var_0 = u_input.b.x;
    return vec3<bool>(select(true, global2[_wgslsmith_index_u32(85549u, 2u)] >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_div_f32(224f, arg_1) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.b.x, 2u)]))))), true, arg_0.b.x);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_2(arg_3.b, select(!arg_3.a, !select(arg_3.c, vec3<bool>(arg_0.d.a, true, false), vec3<bool>(true, true, true)), !(!func_3(arg_3, -2365f, global0[_wgslsmith_index_u32(arg_0.e.x, 28u)], arg_3))), vec3<bool>(false, all(select(select(vec4<bool>(false, arg_3.b.x, false, arg_3.b.x), vec4<bool>(arg_3.b.x, arg_0.d.a, arg_3.a.x, true), arg_0.d.a), select(vec4<bool>(arg_0.d.a, arg_0.d.a, arg_3.a.x, arg_0.d.a), vec4<bool>(arg_0.d.a, arg_0.d.a, false, true), false), arg_3.a.x || arg_0.d.a)), arg_0.e.x != ~1u));
    var var_1 = Struct_2(arg_3.c, select(arg_3.a, select(func_3(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -909f), global0[_wgslsmith_index_u32(min(u_input.b.x, arg_0.e.x), 28u)], Struct_2(var_0.c, var_0.a, arg_3.b)), vec3<bool>(true, func_3(Struct_2(vec3<bool>(arg_0.d.a, false, arg_3.c.x), arg_3.a, var_0.b), arg_0.a, vec4<i32>(7031i, 2147483647i, u_input.a, 5414i), Struct_2(arg_3.c, vec3<bool>(arg_0.d.a, true, var_0.c.x), arg_3.c)).x, !arg_0.d.a), arg_3.c), arg_3.b), arg_3.a);
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -select(arg_1, _wgslsmith_add_i32(u_input.a, u_input.a), func_3(arg_3, -552f, vec4<i32>(-2147483647i, -2147483647i, 52371i, 2147483647i), Struct_2(vec3<bool>(arg_0.d.a, false, var_0.b.x), vec3<bool>(false, var_0.a.x, false), var_0.b)).x)), abs(-firstLeadingBit(vec2<i32>(arg_1, 22345i))) ^ vec2<i32>(-1i, arg_1));
    var_1 = arg_3;
    global3 = -8646i;
    return vec3<bool>(true, false, !var_0.b.x);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(select(select(select(func_2(Struct_3(-1000f, vec3<f32>(-948f, 200f, global2[_wgslsmith_index_u32(0u, 2u)]), -917f, Struct_1(true), vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u)), u_input.a, vec3<f32>(1890f, 1126f, -695f), Struct_2(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(-198f < global2[_wgslsmith_index_u32(u_input.b.x, 2u)], true, all(vec4<bool>(false, false, false, true)))), select(func_3(Struct_2(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 2u)] - -741f), _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], vec4<i32>(u_input.a, 14290i, u_input.a, -9842i)), Struct_2(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), func_2(Struct_3(390f, vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)], -425f), 1141f, Struct_1(false), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)), u_input.a | u_input.a, vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 438f), Struct_2(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), vec3<bool>(true, true, true)), !any(vec3<bool>(true, true, true))), vec3<bool>(any(vec3<bool>(true, true, true)) && true, true, ~(-88364i) < ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -15185i), vec3<i32>(1i, u_input.a, u_input.a))), select(vec3<bool>(u_input.b.x != 4294967295u, false, _wgslsmith_sub_u32(u_input.b.x, 4294967295u) <= ~4294967295u), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), !vec3<bool>(true, any(vec2<bool>(false, true)), true)));
    global2 = array<f32, 2>();
    let var_1 = ~u_input.b.x < reverseBits(reverseBits(~u_input.b.x));
    global2 = array<f32, 2>();
    var var_2 = global2[_wgslsmith_index_u32(40534u, 2u)];
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(1470f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(40397u, 2u)] + -2422f) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 2u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(firstLeadingBit(1u), 2u)]))))));
    global0 = array<vec4<i32>, 28>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, arg_1.x, 4294967295u) >> (arg_1.x % 32u), 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-526f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 2u)]))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(42833u, 2u)], -182f), vec2<f32>(-525f, global2[_wgslsmith_index_u32(0u, 2u)])))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(948f, -757f))))));
    var var_2 = arg_3;
    var var_3 = func_1();
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(u_input.b.x), arg_1.x), 28u)];
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(523f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-957f)), -1322f)))));
    let var_1 = arg_1;
    let var_2 = abs(u_input.a);
    let var_3 = Struct_2(vec3<bool>(any(select(!vec4<bool>(var_1.a, true, true, true), vec4<bool>(var_1.a, arg_1.a, var_1.a, var_1.a), any(vec3<bool>(true, var_1.a, var_1.a)))), all(!vec4<bool>(arg_1.a, true, true, arg_1.a)), true == !arg_1.a), vec3<bool>(all(vec2<bool>(true, var_1.a)) & false, func_1().c.x, var_1.a), vec3<bool>(true, arg_1.a, false));
    global0 = array<vec4<i32>, 28>();
    return Struct_2(func_3(func_1(), _wgslsmith_div_f32(-2017f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 603f)))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.a, arg_0, u_input.a, var_2), vec4<i32>(68753i, 2147483647i, var_2, -32354i)), vec4<i32>(arg_0, arg_0, arg_0, -1i)), firstTrailingBit(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))), var_3), vec3<bool>(all(func_3(var_3, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 511f)), global0[_wgslsmith_index_u32(u_input.b.x, 28u)], func_1())), false, true), func_1().c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_dot_vec4_i32(~func_4(func_1(), _wgslsmith_add_vec4_u32(vec4<u32>(23674u, 3647u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 31390u, 0u)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a)), func_1()), firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -5887i, u_input.a), global1[_wgslsmith_index_u32(70758u, 8u)]), min(-18804i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a)), u_input.a))), Struct_1(true));
    var var_1 = ~0u;
    let var_2 = firstTrailingBit(~(-(global1[_wgslsmith_index_u32(u_input.b.x, 8u)] & global1[_wgslsmith_index_u32(55385u, 8u)]))) ^ ~vec3<i32>(~u_input.a, _wgslsmith_mod_i32(1i, firstLeadingBit(-1i)), 9901i);
    let var_3 = vec4<bool>(true, !var_0.a.x, func_5(-_wgslsmith_div_i32(2094i, u_input.a), Struct_1(all(vec4<bool>(true, true, true, true)))).b.x, !(-7295i != firstTrailingBit(61150i)));
    let var_4 = Struct_3(global2[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], global2[_wgslsmith_index_u32(21822u, 2u)], 2512f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, -349f, global2[_wgslsmith_index_u32(61860u, 2u)]) * vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)])))) - vec3<f32>(global2[_wgslsmith_index_u32(~(u_input.b.x >> (31468u % 32u)), 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1976f)) * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 2u)], 715f)), 1073f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 2u)]))))), Struct_1(false), ~(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 1608u, 4294967295u, 0u), vec4<u32>(u_input.b.x, 4231u, 102501u, 22563u)) >> ((vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)) % vec4<u32>(32u)))));
    var var_5 = func_5(var_2.x, Struct_1(var_4.d.a));
    let x = u_input.a;
    s_output = StorageBuffer(677f);
}

