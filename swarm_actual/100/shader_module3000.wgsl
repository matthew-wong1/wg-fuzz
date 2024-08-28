struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

var<private> global1: array<i32, 30> = array<i32, 30>(-29308i, 1i, 1i, -50760i, 49969i, 2147483647i, 22202i, -24688i, 1i, i32(-2147483648), -1i, -3106i, 3017i, -1i, 1i, 57538i, i32(-2147483648), 1i, 9974i, -13977i, -25685i, 44779i, 1i, -1i, -1i, -37176i, -12740i, -1i, 35121i, 33905i);

var<private> global2: array<bool, 22> = array<bool, 22>(false, false, false, false, false, false, false, false, true, false, true, true, false, true, true, false, false, false, false, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_4(Struct_2(u_input.b.x), firstTrailingBit(~(-(~global1[_wgslsmith_index_u32(u_input.c, 30u)]))), Struct_1(global1[_wgslsmith_index_u32(~(~72336u), 30u)], !(!select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(u_input.d, 22u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(43042u, 22u)]), vec2<bool>(false, false))), vec2<bool>(683f != _wgslsmith_f_op_f32(round(1418f)), global2[_wgslsmith_index_u32(max(1u, ~u_input.e), 22u)]), !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], true, global2[_wgslsmith_index_u32(1u, 22u)])), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], false), !vec2<bool>(global2[_wgslsmith_index_u32(6053u, 22u)], true), true))), 2060f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)), _wgslsmith_f_op_f32(step(-790f, 1322f)), _wgslsmith_f_op_f32(select(-2129f, _wgslsmith_f_op_f32(f32(-1f) * -2165f), all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 22u)], global2[_wgslsmith_index_u32(u_input.a.x, 22u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * -240f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(975f, -303f, -1000f, -1000f), vec4<f32>(-516f, 565f, 227f, -1220f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1031f, -860f, 1880f, 1717f)))) - vec4<f32>(_wgslsmith_f_op_f32(-186f * -1593f), _wgslsmith_div_f32(-318f, -1066f), -388f, 174f))));
    return min(_wgslsmith_sub_i32(var_0.a.a, _wgslsmith_mult_i32(-26326i, global1[_wgslsmith_index_u32(u_input.d, 30u)])) >> (u_input.d % 32u), global1[_wgslsmith_index_u32(u_input.d, 30u)]) >> (_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, 4294967295u)), u_input.a.yy)), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, 19793u), vec3<u32>(1u, u_input.d, u_input.c))), select(_wgslsmith_clamp_vec2_u32(u_input.a.zy, vec2<u32>(4294967295u, u_input.a.x), u_input.a.yz), select(u_input.a.xz, vec2<u32>(1u, 1u), vec2<bool>(var_0.c.e.x, true)), all(vec4<bool>(var_0.c.e.x, true, global2[_wgslsmith_index_u32(u_input.c, 22u)], false)))), 1u) % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec4<i32> {
    global2 = array<bool, 22>();
    var var_0 = -vec4<i32>(0i, arg_0.a, 1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(8948i, global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<i32>(1i, 1678i)), func_3()) & ~(1i << (1u % 32u)));
    let var_1 = Struct_4(arg_1, global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(~(u_input.a.yz << (vec2<u32>(u_input.c, 55392u) % vec2<u32>(32u))), u_input.a.zx)), 30u)], Struct_1(func_3(), vec2<bool>(true, !(!global2[_wgslsmith_index_u32(u_input.a.x, 22u)])), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(118102u, 22u)], arg_2.x), arg_2), !arg_2), vec2<bool>(true, arg_2.x & global2[_wgslsmith_index_u32(30879u, 22u)]), select(select(vec2<bool>(arg_2.x, true), arg_2, arg_2), vec2<bool>(global2[_wgslsmith_index_u32(77839u, 22u)], global2[_wgslsmith_index_u32(u_input.a.x, 22u)]), !arg_2)), select(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 22u)], false, global2[_wgslsmith_index_u32(1u, 22u)])), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(~u_input.e << (1u % 32u), 22u)]), vec2<bool>(!all(arg_2), any(select(vec3<bool>(false, arg_2.x, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 22u)], arg_2.x, false), vec3<bool>(arg_2.x, true, arg_2.x))))), -1000f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -468f), -423f, _wgslsmith_f_op_f32(1339f * -965f), _wgslsmith_f_op_f32(max(-626f, -155f)))))));
    var var_2 = Struct_3(166f, select(arg_3.x, 1i, global2[_wgslsmith_index_u32(0u, 22u)]));
    let var_3 = Struct_4(Struct_2(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i) << (vec2<u32>(4294967295u, 9614u) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(var_1.b, 1i))))), ((arg_1.a << (4294967295u % 32u)) << ((u_input.e >> (countOneBits(u_input.e) % 32u)) % 32u)) ^ -20137i, Struct_1(48995i, var_1.c.e, select(vec2<bool>(arg_2.x, !global2[_wgslsmith_index_u32(43624u, 22u)]), select(arg_2, !vec2<bool>(var_1.c.d.x, false), all(var_1.c.b)), !(!arg_2.x)), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 22u)], true, !var_1.c.b.x | any(var_1.c.d)), var_1.c.e), _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, 574f, -143f, -573f) * vec4<f32>(-136f, 1551f, var_1.e.x, 1152f)), _wgslsmith_f_op_vec4_f32(step(var_1.e, vec4<f32>(-480f, 223f, -855f, -1045f))))))));
    return vec4<i32>(min(27583i, var_3.b | countOneBits(arg_0.a | u_input.b.x)), var_2.b, -var_0.x, -854i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> Struct_4 {
    return Struct_4(arg_2, u_input.b.x, Struct_1(-9335i, select(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 22u)])), select(vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(14864u, 22u)], true), vec2<bool>(false, global2[_wgslsmith_index_u32(arg_3, 22u)]), vec2<bool>(false, true)), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], true)), vec2<bool>(all(vec3<bool>(true, false, true)), true)), !select(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_3, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(arg_3, 22u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 22u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], true), true), vec2<bool>(false, false)), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 22u)] | any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 22u)], false, true, global2[_wgslsmith_index_u32(arg_3, 22u)])), all(!vec2<bool>(global2[_wgslsmith_index_u32(arg_3, 22u)], global2[_wgslsmith_index_u32(u_input.c, 22u)]))), select(vec2<bool>(true, global2[_wgslsmith_index_u32(~arg_3, 22u)]), select(select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 22u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 22u)], true), false), select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 22u)]), vec2<bool>(false, true), global2[_wgslsmith_index_u32(4294967295u, 22u)]), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 22u)], true)), global2[_wgslsmith_index_u32(select(80921u, firstLeadingBit(48473u), !global2[_wgslsmith_index_u32(4294967295u, 22u)]), 22u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1206f) + _wgslsmith_f_op_f32(-arg_0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(699f)) + -520f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 1825f, arg_0.a, arg_1.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a))), arg_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-571f)))), arg_0.a)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = func_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x), 330f), _wgslsmith_f_op_f32(exp2(arg_2.x))), _wgslsmith_dot_vec4_i32(~min(vec4<i32>(40074i, 15996i, -8873i, 1i), vec4<i32>(-48453i, 92688i, 1911i, u_input.b.x)), countOneBits(firstLeadingBit(vec4<i32>(-1i, u_input.b.x, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(u_input.d, 30u)]))))), Struct_3(arg_2.x, _wgslsmith_dot_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, 8716i, 20566i), vec4<i32>(-2600i, global1[_wgslsmith_index_u32(arg_0, 30u)], -23279i, u_input.b.x)), firstLeadingBit(vec4<i32>(u_input.b.x, 9787i, global1[_wgslsmith_index_u32(u_input.c, 30u)], 2147483647i))), -func_2(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 30u)]), Struct_2(0i), vec2<bool>(arg_1, global2[_wgslsmith_index_u32(u_input.c, 22u)]), vec4<i32>(global1[_wgslsmith_index_u32(6911u, 30u)], u_input.b.x, 1i, global1[_wgslsmith_index_u32(u_input.c, 30u)])))), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 79457i, global1[_wgslsmith_index_u32(1u, 30u)], -1i), vec4<i32>(15725i, u_input.b.x, -9607i, u_input.b.x) >> (vec4<u32>(36186u, arg_0, 1u, 4294967295u) % vec4<u32>(32u))) | -_wgslsmith_dot_vec2_i32(u_input.b, global0[_wgslsmith_index_u32(55775u, 4u)])), 0u & _wgslsmith_add_u32(0u, firstTrailingBit(reverseBits(18676u))));
    let var_1 = func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_2.x) - arg_2.x), global1[_wgslsmith_index_u32(~arg_0, 30u)]), Struct_3(_wgslsmith_f_op_f32(abs(201f)), ~global1[_wgslsmith_index_u32(min(arg_0, 31715u), 30u)]), var_0.a, abs(~_wgslsmith_mult_u32(~arg_0, u_input.d))).e.x;
    let var_2 = select(select(!select(select(vec4<bool>(var_0.c.c.x, global2[_wgslsmith_index_u32(9109u, 22u)], true, true), vec4<bool>(arg_1, var_0.c.e.x, false, arg_1), vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 22u)], false, true, true)), !vec4<bool>(false, var_0.c.c.x, true, true), var_0.c.d.x || global2[_wgslsmith_index_u32(arg_0, 22u)]), vec4<bool>(false, all(!vec3<bool>(true, var_0.c.b.x, false)), false, false && !arg_1), vec4<bool>(all(vec3<bool>(true, true, false)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(0u, 4294967295u)) <= ~arg_0, true && (global2[_wgslsmith_index_u32(27268u, 22u)] || arg_1), select(any(var_0.c.e), var_0.c.d.x, global1[_wgslsmith_index_u32(0u, 30u)] < -6804i))), select(vec4<bool>(all(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0, 22u)], true)), all(vec3<bool>(var_0.c.b.x, var_0.c.c.x, var_0.c.c.x)), false, !var_0.c.d.x), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 22u)], true, false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 22u)], arg_1, global2[_wgslsmith_index_u32(117562u, 22u)])), vec4<bool>(arg_1, false, any(vec2<bool>(true, arg_1)), global1[_wgslsmith_index_u32(4294967295u, 30u)] != -33056i), !select(vec4<bool>(arg_1, false, false, true), vec4<bool>(true, arg_1, false, false), false)), global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(u_input.c, arg_0)), 22u)]), select(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(14195u, 22u)], arg_1, false), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 22u)], true, true), global2[_wgslsmith_index_u32(firstLeadingBit(44450u), 22u)]), vec4<bool>(global2[_wgslsmith_index_u32(~(~13192u), 22u)], any(!vec4<bool>(arg_1, false, arg_1, false)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c, arg_0), 22u)], true), true));
    global0 = array<vec2<i32>, 4>();
    var var_3 = _wgslsmith_f_op_f32(1727f + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return Struct_3(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, ~vec2<u32>(4294967295u, u_input.a.x)), 30u)], 47961i & ~global1[_wgslsmith_index_u32(u_input.c, 30u)]) | -2147483647i);
}

fn func_5(arg_0: Struct_3) -> i32 {
    var var_0 = func_4(arg_0, arg_0, func_4(func_1(0u, !global2[_wgslsmith_index_u32(min(u_input.c, u_input.a.x), 22u)], _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -818f, arg_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -1296f, 260f) - vec3<f32>(-420f, -1699f, -737f)))), arg_0, Struct_2(select(min(-42440i, u_input.b.x), arg_0.b, true)), ~u_input.c & u_input.a.x).a, abs(~14229u)).c.d.x;
    let var_1 = func_4(Struct_3(-429f, global1[_wgslsmith_index_u32(~(~firstTrailingBit(22484u)), 30u)]), func_1(50389u, !all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 22u)], global2[_wgslsmith_index_u32(u_input.c, 22u)], false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, arg_0.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(199f, arg_0.a, 808f) * vec3<f32>(arg_0.a, 125f, -1165f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1049f, 158f, 1142f)))), func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-318f - arg_0.a) + 896f), 2147483647i), func_1(abs(u_input.a.x) << (4294967295u % 32u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.e), 73232u), 22u)], vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.a, arg_0.a)), arg_0.a, _wgslsmith_f_op_f32(-arg_0.a))), Struct_2(-45662i), 64953u | _wgslsmith_mod_u32(1u ^ u_input.d, 1u)).a, 0u).c;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a + -1082f)));
    global1 = array<i32, 30>();
    var_0 = global2[_wgslsmith_index_u32(0u, 22u)];
    return -21213i;
}

fn func_6(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = func_4(func_1(u_input.e, !select(true, all(arg_2), true), vec3<f32>(1221f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-282f, -2303f)), -339f)), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1838f - -1126f)), _wgslsmith_f_op_f32(f32(-1f) * -1765f)), _wgslsmith_clamp_i32(max(_wgslsmith_mult_i32(u_input.b.x, 2147483647i), -u_input.b.x), _wgslsmith_sub_i32(2147483647i, ~u_input.b.x), ~u_input.b.x)), Struct_2(-3555i), ~(~u_input.c) & u_input.d).a;
    var var_1 = func_1(u_input.e, global2[_wgslsmith_index_u32(~4294967295u, 22u)], vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1153f, 572f))), 1500f, func_1(firstTrailingBit(firstLeadingBit(u_input.d)), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-640f, 1426f, 944f))).a)).a;
    global0 = array<vec2<i32>, 4>();
    let var_2 = _wgslsmith_mult_vec4_i32(countOneBits(func_2(Struct_2(8394i), func_4(Struct_3(-1157f, 33248i), Struct_3(385f, -2147483647i), Struct_2(global1[_wgslsmith_index_u32(1u, 30u)]), ~4294967295u).a, vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 22u)]), -vec4<i32>(u_input.b.x, var_0.a, global1[_wgslsmith_index_u32(1u, 30u)], arg_0) >> (reverseBits(vec4<u32>(1u, 4294967295u, u_input.e, u_input.c)) % vec4<u32>(32u)))), vec4<i32>(19446i, func_1(1u, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(565f, 385f, -424f))).b & _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, arg_1.x), _wgslsmith_mult_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.c, 30u)])), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(func_4(Struct_3(-1488f, u_input.b.x), Struct_3(474f, -7305i), Struct_2(u_input.b.x), u_input.c).b, -10415i, _wgslsmith_div_i32(-37627i, 7624i)), reverseBits(func_2(Struct_2(0i), var_0, arg_2.yz, vec4<i32>(-524i, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(u_input.c, 30u)], var_0.a)).wwx))));
    global0 = array<vec2<i32>, 4>();
    return func_4(func_1(17908u, !(!select(true, global2[_wgslsmith_index_u32(23979u, 22u)], true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1015f, -1704f)))), func_1(u_input.c, any(vec3<bool>(arg_2.x, false, global2[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 796f, 2276f)))), var_0, min(countOneBits(min(~u_input.d, min(u_input.c, 4294967295u))), _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(60376u, 0u, u_input.a.x)), firstTrailingBit(vec3<u32>(u_input.d, u_input.e, 4565u))))).c;
}

fn func_7(arg_0: Struct_4) -> Struct_4 {
    global2 = array<bool, 22>();
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(arg_0.e));
    var var_1 = var_0.wyw;
    var var_2 = var_0.zyy;
    let var_3 = -vec3<i32>(reverseBits(u_input.b.x) << (~(3590u ^ u_input.d) % 32u), _wgslsmith_sub_i32(_wgslsmith_add_i32(-arg_0.c.a, 1i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(35702u, 4294967295u, u_input.d, 86578u), vec4<u32>(1u, u_input.c, u_input.c, 4294967295u)), 30u)]), ~select(u_input.b.x, min(arg_0.a.a, u_input.b.x), false));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_4(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 30u)]), _wgslsmith_div_i32(abs(_wgslsmith_sub_i32(-1i, global1[_wgslsmith_index_u32(u_input.e, 30u)])), ~9607i), func_6(func_5(func_1(u_input.e, global2[_wgslsmith_index_u32(4294967295u, 22u)], vec3<f32>(-1000f, -1388f, -721f))), global0[_wgslsmith_index_u32(u_input.d, 4u)], !(!vec3<bool>(global2[_wgslsmith_index_u32(63674u, 22u)], global2[_wgslsmith_index_u32(u_input.d, 22u)], global2[_wgslsmith_index_u32(u_input.d, 22u)]))), 582f, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f)))), -346f, _wgslsmith_f_op_f32(max(func_1(u_input.a.x, global2[_wgslsmith_index_u32(25292u, 22u)], vec3<f32>(-679f, -548f, 412f)).a, 1578f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1493f)))));
    global2 = array<bool, 22>();
    global2 = array<bool, 22>();
    let var_1 = var_0;
    var var_2 = var_1;
    global2 = array<bool, 22>();
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.d), 157f);
    let var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_1.e - _wgslsmith_f_op_vec4_f32(min(var_1.e, var_2.e)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.e))));
    var var_5 = func_4(func_1(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(13146u, 1u)), func_6(-u_input.b.x, vec2<i32>(u_input.b.x, firstLeadingBit(u_input.b.x)), !vec3<bool>(var_2.c.c.x, false, true)).b.x, _wgslsmith_f_op_vec3_f32(ceil(var_4.xyx))), func_1(~u_input.a.x, !(!global2[_wgslsmith_index_u32(countOneBits(0u), 22u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.e.wzx))) * vec3<f32>(_wgslsmith_f_op_f32(-820f - var_0.e.x), var_0.d, func_1(1u, global2[_wgslsmith_index_u32(4294967295u, 22u)], var_1.e.xww).a))), Struct_2(var_2.c.a), abs(4294967295u)).e.xww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_4.xy)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_5.zz, var_5.zx) * var_4.yw)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(273f)), -1225f))), vec4<f32>(_wgslsmith_f_op_f32(323f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x * var_5.x) - var_1.d)), _wgslsmith_f_op_f32(619f - _wgslsmith_f_op_f32(floor(-2008f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1376f)));
}

