struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-1i, -1i, 0i), vec3<i32>(-29958i, 0i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 31052i), vec3<i32>(22095i, 56023i, -5713i), vec3<i32>(-4858i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 46984i, 0i), vec3<i32>(i32(-2147483648), 32767i, 2147483647i), vec3<i32>(-2263i, -16326i, 0i), vec3<i32>(30575i, 28411i, 12374i), vec3<i32>(0i, 1162i, 38915i), vec3<i32>(25447i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-27148i, -39074i, 26647i), vec3<i32>(4484i, 2147483647i, 2147483647i), vec3<i32>(0i, 25696i, -5702i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(-14065i, i32(-2147483648), -5427i), vec3<i32>(-18142i, -1i, 2147483647i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(0i, 1i, 1i), vec3<i32>(i32(-2147483648), 6674i, -56258i), vec3<i32>(14292i, 41785i, -1i), vec3<i32>(i32(-2147483648), -23934i, -21467i), vec3<i32>(1i, 0i, 1i), vec3<i32>(16840i, -43159i, -43163i), vec3<i32>(-16300i, 25536i, 0i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(-1i, 16796i, i32(-2147483648)), vec3<i32>(0i, -81995i, 2147483647i), vec3<i32>(0i, 5641i, i32(-2147483648)), vec3<i32>(74851i, 0i, -4900i), vec3<i32>(-1103i, 2147483647i, 3852i));

var<private> global1: array<Struct_3, 19>;

var<private> global2: array<f32, 32> = array<f32, 32>(-984f, -734f, -1459f, -150f, -392f, 498f, -2283f, 1048f, 1026f, -230f, -1697f, 1357f, 317f, -1188f, -2041f, -2482f, 363f, 1102f, 618f, 734f, -262f, -1178f, 1000f, -1730f, -279f, -1227f, -1445f, -1905f, -777f, 424f, -415f, 1871f);

var<private> global3: vec2<bool>;

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(-580f, Struct_1(-select(-11204i, -2147483647i, 13873u == u_input.e), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(268f, -950f, 366f, global2[_wgslsmith_index_u32(40657u, 32u)])))))), Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1576f, -391f, global2[_wgslsmith_index_u32(1u, 32u)], -175f)), vec4<f32>(613f, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(39223u, 32u)], global2[_wgslsmith_index_u32(10602u, 32u)]), !vec4<bool>(global3.x, false, true, true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.e, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], 1653f, 1327f))))), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(304f)) * -390f))));
    var var_1 = Struct_4(vec4<i32>(u_input.c, var_0.d, u_input.b, 0i), Struct_1(~(-u_input.b), var_0.c.b), Struct_1(-1i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1047f, 518f, -568f, 398f)))))), 1737f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.x) * _wgslsmith_f_op_f32(abs(1162f)))), _wgslsmith_f_op_f32(-968f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1187f + -253f)))), false)));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_4 {
    var var_0 = vec3<i32>(abs(u_input.b), _wgslsmith_mult_i32(5666i, 64098i), ~u_input.b);
    global4 = u_input.d.x;
    let var_1 = -4102i;
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.d.x, 32u)])), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], -1000f) * vec2<f32>(global2[_wgslsmith_index_u32(u_input.e, 32u)], arg_0))))))));
    var var_3 = u_input.a;
    return Struct_4(_wgslsmith_mult_vec4_i32(vec4<i32>(-var_0.x, u_input.c, 0i & _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, -1i, var_0.x), vec4<i32>(arg_1, 1i, 1i, -1i)), _wgslsmith_div_i32(var_1, -1i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 0i, var_0.x, 47435i), vec4<i32>(var_1, -2147483647i, arg_1, -1i), vec4<i32>(16048i, arg_1, 10116i, -1i)) ^ -vec4<i32>(u_input.b, u_input.c, var_0.x, -1i)), Struct_1(firstLeadingBit(15265i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 32u)] * -619f), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(11759u, 32u)])), _wgslsmith_f_op_f32(select(-165f, -436f, global3.x)), _wgslsmith_f_op_f32(max(arg_0, var_2.x))))), Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-956f, arg_0, 1714f, -429f) - vec4<f32>(-1063f, 235f, arg_0, -321f))))), 2515f);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: i32) -> vec4<f32> {
    let var_0 = firstTrailingBit(select(vec2<u32>(4294967295u, ~0u), ~vec2<u32>(u_input.e, ~u_input.d.x), false));
    global1 = array<Struct_3, 19>();
    var var_1 = arg_1.a;
    let var_2 = vec4<f32>(global2[_wgslsmith_index_u32(countOneBits(~(abs(var_0.x) | u_input.a.x)), 32u)], -943f, global2[_wgslsmith_index_u32(~(firstLeadingBit(~var_0.x) & min(1u, min(0u, u_input.d.x))), 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.b.x - 2227f) + -822f));
    let var_3 = var_2.x;
    return _wgslsmith_f_op_vec4_f32(min(arg_1.c.b, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(select(var_3, 167f, global3.x))))), 113f, -563f, func_2(arg_1.c.b.x, -1i).d)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1212f), Struct_1(min(arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(global3.x, global3.x), func_2(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.c), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(global3.x, global3.x)), 5743i)))), func_2(-577f, u_input.b << (abs(~0u) % 32u)).c, -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~(~u_input.e), 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-102f))))) + _wgslsmith_f_op_f32(floor(-320f))));
    let var_1 = global3.x | !global3.x;
    global4 = ~u_input.a.x ^ 1u;
    var var_2 = Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(round(var_0.b.b)));
    var_2 = Struct_1(var_2.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1315f))), -1681f));
    return Struct_1(-103234i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x >> (max(u_input.e, 0u) % 32u), 32u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~4294967295u, 32u)] - _wgslsmith_f_op_f32(round(443f))), var_0.b.b.x, var_0.e), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-827f)))), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-114f)))), all(!(!vec4<bool>(var_1, true, false, false))))));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_4 {
    var var_0 = Struct_4(vec4<i32>(-(11716i << (~u_input.e % 32u)), ~arg_0.b.a, func_2(-1000f, ~_wgslsmith_div_i32(arg_0.b.a, arg_0.a.x)).c.a, -2147483647i), func_1(vec2<i32>(arg_3.b.d, _wgslsmith_mult_i32(28084i, -22097i))), func_2(-1666f, u_input.c).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)) - _wgslsmith_f_op_f32(arg_3.a.b.x - 1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f))));
    global1 = array<Struct_3, 19>();
    var_0 = Struct_4(reverseBits(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, u_input.b, 1i, 2147483647i), arg_0.a)) ^ vec4<i32>(1i, abs(_wgslsmith_add_i32(-948i, 27573i)), ~_wgslsmith_sub_i32(2147483647i, var_0.a.x), func_2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(27588u, 32u)]), ~(-15695i)).a.x), Struct_1(~(-1i), vec4<f32>(arg_0.c.b.x, arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -360f), func_2(_wgslsmith_f_op_f32(1683f * 458f), func_1(var_0.a.zz).a).c.b.x)), func_1(-(arg_0.a.xx | vec2<i32>(0i, arg_3.b.d))), _wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(select(global3.x, global3.x, true), true), func_2(arg_2.x, _wgslsmith_mult_i32(arg_3.b.c.a, 20597i)), !vec2<bool>(global3.x & false, all(vec4<bool>(global3.x, true, false, global3.x))), abs(-1i) << (firstTrailingBit(min(arg_1, u_input.e)) % 32u))).x);
    var var_1 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 259f))))), func_1(var_0.a.yw).a);
    global2 = array<f32, 32>();
    return Struct_4(vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.b.a, -15580i), var_0.a.wx)), vec2<i32>(0i | var_1.b.a, reverseBits(11357i))), reverseBits(12421i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.c, 2235i), vec2<i32>(-2147483647i, u_input.b)), arg_0.a.ww), -1i), arg_0.b, func_2(_wgslsmith_f_op_f32(f32(-1f) * -589f), firstTrailingBit(firstTrailingBit(arg_0.b.a) >> (select(arg_1, 1u, false) % 32u))).c, -441f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 19>();
    let var_0 = func_5(Struct_4(vec4<i32>(_wgslsmith_add_i32(-2147483647i, 0i), u_input.b, u_input.b, -1i) | -(~vec4<i32>(0i, 0i, u_input.b, u_input.c)), func_1(vec2<i32>(1i, 1i) << (abs(u_input.d.yz) % vec2<u32>(32u))), Struct_1(830i, _wgslsmith_f_op_vec4_f32(func_4(select(vec2<bool>(global3.x, global3.x), vec2<bool>(true, global3.x), global3.x), func_2(-1204f, -1i), vec2<bool>(true, true), u_input.c))), global2[_wgslsmith_index_u32(~1u, 32u)]), 0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1228f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.e, 32u)] - 1213f))), 153f, 270f)), global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u << (~(~u_input.d.x) % 32u)), 19u)]);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(758f, 871f)))), var_0.c, func_1(-var_0.a.wx), _wgslsmith_mult_i32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], 1210f)) - _wgslsmith_f_op_f32(-283f + var_0.c.b.x)), 2147483647i).a.x, u_input.b), _wgslsmith_f_op_f32(var_0.b.b.x * 223f));
    global3 = select(!vec2<bool>(!(!global3.x), !(!global3.x)), select(vec2<bool>(!(-3876i < var_0.b.a), false), vec2<bool>(all(!vec3<bool>(true, true, global3.x)), true), global3.x && global3.x), select(vec2<bool>(!global3.x, global3.x), select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, global3.x), global3.x), vec2<bool>(global3.x, global3.x)), vec2<bool>(all(vec2<bool>(global3.x, true)), !global3.x), true), !(!select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, false), true))));
    var var_2 = func_2(-863f, select(_wgslsmith_mod_i32((u_input.b >> (50822u % 32u)) & ~2147483647i, 1i), u_input.c, true)).b;
    var var_3 = Struct_1(~abs(-var_1.c.a & ~1i), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(vec4<u32>(1u, u_input.e, 0u, abs(u_input.a.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 25738u, 1u, 0u), vec4<u32>(u_input.e, 0u, 51088u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 19704u, u_input.a.x, 1u), vec4<u32>(0u, u_input.e, 4294967295u, 39095u))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 32u)]) <= global2[_wgslsmith_index_u32(~1u, 32u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.b.xz))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.d, 286f, global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b.x) * _wgslsmith_f_op_f32(var_0.c.b.x - 380f))) * 851f), _wgslsmith_f_op_f32(ceil(func_2(_wgslsmith_f_op_f32(-var_3.b.x), min(48840i | u_input.b, var_1.d)).b.b.x)), _wgslsmith_f_op_f32(sign(512f)));
}

