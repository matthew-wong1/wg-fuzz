struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: i32;

var<private> global2: vec3<u32> = vec3<u32>(0u, 90466u, 59822u);

var<private> global3: vec2<i32> = vec2<i32>(-20417i, 9935i);

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(556f, -2374f, global0[_wgslsmith_index_u32(global2.x, 19u)])))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(429f, global0[_wgslsmith_index_u32(u_input.d, 19u)], -378f)))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 19u)]), global0[_wgslsmith_index_u32(global2.x, 19u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 19u)])) - vec3<f32>(global0[_wgslsmith_index_u32(98760u, 19u)], -332f, _wgslsmith_f_op_f32(f32(-1f) * -702f))))));
    global1 = -3157i;
    let var_1 = 286f;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(85420u, 19u)], 1421f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(651f + 1578f), -1223f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 19u)])) + _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(f32(-1f) * -368f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(494f - _wgslsmith_f_op_f32(var_1 - 2221f))), 161f));
    global3 = vec2<i32>(u_input.a, ~(-7985i));
    return var_0.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))));
    var var_1 = firstTrailingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(i32(-1i) * -4658i, global3.x), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, arg_3), -(~vec2<i32>(2147483647i, arg_3)))));
    global2 = min(vec3<u32>(~_wgslsmith_mult_u32(2298u, u_input.c.x), 4294967295u, _wgslsmith_dot_vec2_u32(global2.yy, firstLeadingBit(global2.zz))), vec3<u32>(0u, 4294967295u, 1u)) ^ max(vec3<u32>(abs(max(4294967295u, global2.x)), ~4294967295u, _wgslsmith_mod_u32(u_input.d, 0u)), u_input.c);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.b.x, -1000f), _wgslsmith_f_op_f32(max(1786f, arg_0.a.x))));
    var var_3 = -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -4713i), ~max(vec2<i32>(0i, var_1.x), ~vec2<i32>(var_1.x, -2147483647i)));
    return arg_2.b.x;
}

fn func_4(arg_0: f32, arg_1: f32) -> vec3<f32> {
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -countOneBits(-1i), u_input.a >> (u_input.b % 32u), -_wgslsmith_mod_i32(u_input.a, u_input.a)) << (reverseBits(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 1u, 4294967295u, global2.x), vec4<u32>(u_input.b, 0u, 97081u, 1756u)))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-6889i, 2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, global3.x, -2147483647i), vec4<i32>(u_input.a, u_input.a, -15954i, 26780i)), -vec4<i32>(22036i, u_input.a, global3.x, global3.x)), global3.x), max(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 7318i, 2147483647i, global3.x), -select(vec4<i32>(global3.x, u_input.a, 11958i, global3.x), vec4<i32>(-2147483647i, global3.x, -55527i, 1i), false)), ~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), abs(vec4<i32>(global3.x, global3.x, 1i, global3.x)))));
    global2 = vec3<u32>(u_input.c.x, 0u, abs(~4294967295u) & _wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(u_input.c.x, 0u)));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1)), arg_1, -540f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-239f, global0[_wgslsmith_index_u32(0u, 19u)], arg_0)))))), vec3<f32>(arg_1, global0[_wgslsmith_index_u32(~abs(u_input.b), 19u)], _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(abs(179f)))));
    global3 = vec2<i32>(firstLeadingBit(-(~(~30326i))), abs(global3.x));
    var var_1 = u_input.c.x;
    return var_0.a;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(1423f - global0[_wgslsmith_index_u32(global2.x, 19u)]), _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(-1197f, -1799f, global0[_wgslsmith_index_u32(18457u, 19u)]), vec3<f32>(global0[_wgslsmith_index_u32(0u, 19u)], 240f, global0[_wgslsmith_index_u32(4294967295u, 19u)])), Struct_1(vec3<f32>(1000f, global0[_wgslsmith_index_u32(global2.x, 19u)], -817f), vec3<f32>(320f, global0[_wgslsmith_index_u32(global2.x, 19u)], -413f)), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(global2.x, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<f32>(-346f, global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])), -7663i)))))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), 346f, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 26943u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 20946u, u_input.c.x, 1u), vec4<u32>(global2.x, 4294967295u, global2.x, 1445u))), 19u)]));
    var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.a)), vec3<f32>(2070f, var_0.b.x, _wgslsmith_div_f32(-2158f, -199f))), _wgslsmith_f_op_vec3_f32(-var_0.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1973u, 19u)], 286f, 2097f) - vec3<f32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], var_0.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, global0[_wgslsmith_index_u32(global2.x, 19u)])))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2413f, 928f, var_0.a.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], 456f))))), global4.x)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(global2.x, 19u)], _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(81199u, 19u)])))), _wgslsmith_f_op_f32(max(-208f, global0[_wgslsmith_index_u32(global2.x, 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(342f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(161f, -935f, -659f) * vec3<f32>(856f, global0[_wgslsmith_index_u32(u_input.b, 19u)], 768f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -692f, 519f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.a.x, -862f)))))));
    var var_1 = Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(~u_input.d << (0u % 32u), 19u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global2.x, 19u)], global0[_wgslsmith_index_u32(global2.x, 19u)]))), _wgslsmith_f_op_f32(var_0.b.x - var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1153f * global0[_wgslsmith_index_u32(global2.x, 19u)]))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * -2960f), _wgslsmith_f_op_f32(var_0.a.x * 314f), 1000f))))));
    let var_2 = Struct_1(vec3<f32>(var_1.a.x, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(-1344f - var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(var_0.b, vec3<f32>(-358f, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], 152f)), Struct_1(var_0.b, var_1.b), Struct_1(vec3<f32>(1284f, var_0.a.x, -1243f), vec3<f32>(var_1.a.x, -1018f, 461f)), 2147483647i))))).x, var_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) - _wgslsmith_f_op_f32(902f - _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 19u)], 1000f, 1770f), vec3<f32>(global0[_wgslsmith_index_u32(30225u, 19u)], -984f, global0[_wgslsmith_index_u32(global2.x, 19u)])), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 19u)], global0[_wgslsmith_index_u32(global2.x, 19u)], 1022f), var_1.a), Struct_1(var_1.a, var_1.a), -1i)))), -263f));
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1282f, -685f, global0[_wgslsmith_index_u32(global2.x, 19u)]))), vec3<f32>(-887f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 19u)] + -327f), _wgslsmith_f_op_f32(557f * global0[_wgslsmith_index_u32(33932u, 19u)]))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1037f, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(u_input.d, 19u)])))), vec3<f32>(-335f, _wgslsmith_f_op_f32(min(1966f, -1000f)), _wgslsmith_div_f32(-1784f, global0[_wgslsmith_index_u32(u_input.b, 19u)]))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(59627u, 19u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(757f, 182f, global0[_wgslsmith_index_u32(u_input.b, 19u)]))) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(36727u, 19u)], global0[_wgslsmith_index_u32(global2.x, 19u)]))), global3.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -255f)) + global0[_wgslsmith_index_u32(firstTrailingBit(reverseBits(4294967295u)), 19u)]) - _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(591f, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]))), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 19u)], 378f, global0[_wgslsmith_index_u32(global2.x, 19u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(global2.x, 19u)], 2390f))), Struct_1(vec3<f32>(2438f, global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], -222f) * vec3<f32>(877f, global0[_wgslsmith_index_u32(u_input.d, 19u)], 565f))), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 19u)], global0[_wgslsmith_index_u32(82929u, 19u)], 169f), _wgslsmith_f_op_vec3_f32(func_4(global0[_wgslsmith_index_u32(u_input.d, 19u)], 453f))), reverseBits(global3.x)))));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 19u)] + global0[_wgslsmith_index_u32(1u, 19u)])), 1f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 19u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1176f, _wgslsmith_f_op_f32(1000f + 930f)) * _wgslsmith_f_op_f32(max(-1279f, _wgslsmith_f_op_f32(-1298f + 133f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -1000f, global0[_wgslsmith_index_u32(global2.x, 19u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(768f, global0[_wgslsmith_index_u32(u_input.b, 19u)], -1588f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 19u)], -765f) * vec3<f32>(1530f, 136f, global0[_wgslsmith_index_u32(1u, 19u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], -1567f, -681f) + vec3<f32>(-708f, global0[_wgslsmith_index_u32(u_input.b, 19u)], -781f)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(abs(36776u), 19u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.d, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 19u)]))))));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u & u_input.d, 19u)], 166f)) + global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, global2.x, 4294967295u), _wgslsmith_clamp_u32(global2.x, 22418u, 24426u)), 19u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.b.x, -268f)) - _wgslsmith_f_op_f32(471f + var_2.a.x))))));
    let var_3 = select(!vec4<bool>(global4.x, global4.x, true, global4.x), vec4<bool>(any(vec3<bool>(select(true, global4.x, false), global3.x != u_input.a, all(vec4<bool>(global4.x, global4.x, global4.x, false)))), global4.x, true, all(vec3<bool>(global4.x, global4.x, global4.x)) == false), select(vec4<bool>(global4.x, true, true, false), !(!select(vec4<bool>(global4.x, true, global4.x, global4.x), vec4<bool>(global4.x, false, true, global4.x), vec4<bool>(true, false, false, false))), vec4<bool>(true, global4.x, !global4.x, global4.x)));
    let var_4 = vec4<u32>(~u_input.c.x, global2.x, global2.x, (global2.x & 4294967295u) >> (0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1524f, 764f, 283f, var_2.b.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1018f, 574f, var_2.a.x, -617f), vec4<f32>(-586f, -127f, var_2.b.x, -1484f), false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 19u)], -893f, global0[_wgslsmith_index_u32(var_4.x, 19u)], -645f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-115f, 496f, var_2.b.x, -590f) - vec4<f32>(718f, 452f, 1952f, -498f))))), global2.x);
}

