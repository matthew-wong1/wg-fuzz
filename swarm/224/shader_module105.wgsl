struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: bool = false;

var<private> global2: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 19828u, 37732u), vec3<u32>(1u, 0u, 1017u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 1u, 58921u), vec3<u32>(18975u, 4294967295u, 4294967295u), vec3<u32>(41341u, 47088u, 42166u), vec3<u32>(8171u, 4294967295u, 88637u), vec3<u32>(80624u, 0u, 3472u), vec3<u32>(1u, 0u, 0u), vec3<u32>(57604u, 1392u, 4294967295u), vec3<u32>(38165u, 17229u, 0u), vec3<u32>(8170u, 0u, 71702u), vec3<u32>(22402u, 52190u, 41474u), vec3<u32>(4294967295u, 6027u, 4123u), vec3<u32>(45203u, 14937u, 0u), vec3<u32>(4294967295u, 28139u, 0u), vec3<u32>(93762u, 42047u, 12457u), vec3<u32>(83937u, 3475u, 4294967295u), vec3<u32>(1u, 78154u, 5874u), vec3<u32>(27592u, 64281u, 0u), vec3<u32>(58311u, 4294967295u, 0u), vec3<u32>(45688u, 25856u, 0u), vec3<u32>(1u, 1u, 18479u), vec3<u32>(62900u, 27954u, 0u), vec3<u32>(4294967295u, 1u, 28706u), vec3<u32>(10423u, 0u, 73205u), vec3<u32>(47919u, 0u, 1u), vec3<u32>(7226u, 117871u, 29236u), vec3<u32>(73216u, 15923u, 0u), vec3<u32>(58957u, 12260u, 34447u), vec3<u32>(63606u, 82192u, 1u));

var<private> global3: array<vec3<f32>, 14>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = -1864f;
    global1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 20571i), -reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | abs(vec4<i32>(u_input.a.x, 9072i, u_input.a.x, 1512i)), firstLeadingBit(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)))) <= u_input.a.x;
    global2 = array<vec3<u32>, 32>();
    var var_1 = !vec4<bool>(abs(u_input.a.x) >= -1i, true, false, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 569f, var_0)) + global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(68226u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), 12u)], 12u)], 12u)], 14u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(196f - var_0)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) * global3[_wgslsmith_index_u32(u_input.b.x, 14u)]))) - _wgslsmith_f_op_vec3_f32(min(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 14u)], global3[_wgslsmith_index_u32(86037u, 14u)]))));
    return -(~(-2147483647i));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = u_input.b.x;
    var var_1 = -arg_1.x;
    global3 = array<vec3<f32>, 14>();
    var var_2 = _wgslsmith_add_vec3_i32(select(vec3<i32>(arg_0.e.a, -(arg_3.b.x << (7964u % 32u)), -29273i), max(arg_1, ~(arg_3.b.xwx >> (vec3<u32>(global0[_wgslsmith_index_u32(58824u, 12u)], 36423u, 13590u) % vec3<u32>(32u)))), false), ~vec3<i32>(1i, ~func_3(), 2147483647i));
    let var_3 = vec3<bool>(all(!(!arg_0.d.yzw)), arg_0.d.x, !all(vec3<bool>(all(vec2<bool>(arg_0.c.x, false)), arg_2.x & arg_2.x, any(vec3<bool>(false, true, false)))));
    return _wgslsmith_f_op_f32(arg_3.c - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.d.x))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec2<f32> {
    var var_0 = ~select(_wgslsmith_mult_vec3_i32(min(vec3<i32>(arg_1.a.b.x, u_input.a.x, arg_1.a.b.x), ~vec3<i32>(2147483647i, -14838i, 1i)), -abs(arg_1.e.b.yyy)), firstLeadingBit(countOneBits(max(vec3<i32>(1i, 0i, arg_1.a.a), vec3<i32>(30680i, u_input.a.x, arg_1.a.b.x)))), vec3<bool>(all(select(arg_1.d.wyy, arg_2.d.xyy, false)), true, !arg_3 && (false & arg_1.c.x)));
    var var_1 = -1i;
    global2 = array<vec3<u32>, 32>();
    global2 = array<vec3<u32>, 32>();
    var_1 = -var_0.x;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -912f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0, arg_1.b.x, arg_1.c.x)), -189f, true)), -218f))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> vec4<i32> {
    global2 = array<vec3<u32>, 32>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(773f, Struct_2(arg_1.e, vec4<f32>(arg_1.a.c, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(func_2(arg_1, arg_1.a.b.zyz, arg_1.d.xxz, arg_1.e)), _wgslsmith_f_op_f32(-370f + arg_1.e.d.x)), vec2<bool>(2147483647i != u_input.a.x, arg_1.e.c >= -1083f), !arg_1.d, Struct_1(-u_input.a.x, arg_1.a.b, 1000f, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(443f, arg_2, -842f, arg_2), arg_1.a.d)))), Struct_2(arg_1.a, arg_1.e.d, !select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_1.c.x, true), arg_1.c.x), vec4<bool>(any(arg_1.c), arg_1.b.x < arg_2, all(vec2<bool>(arg_3, arg_3)), true), Struct_1(1i, vec4<i32>(u_input.a.x, -1i, 35202i, u_input.a.x), _wgslsmith_f_op_f32(arg_1.b.x * -586f), _wgslsmith_f_op_vec4_f32(sign(arg_1.a.d)))), any(arg_1.d.wzy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.e.d.zz)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -732f) * arg_1.b.yw)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.b.wy - vec2<f32>(875f, 1000f)), vec2<f32>(405f, arg_2), vec2<bool>(arg_3, arg_1.c.x))), all(!vec2<bool>(arg_3, arg_3)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(-2039f - 990f)))));
    var var_2 = Struct_2(Struct_1(-34030i, arg_1.e.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.e.d.x + _wgslsmith_div_f32(2166f, arg_2)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, -1000f) - _wgslsmith_f_op_f32(arg_1.e.c + arg_2)))), arg_1.e.d), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2, arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-471f * -2159f) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-797f, -529f, false)), var_1.x))))), !arg_1.c, select(!arg_1.d, !select(arg_1.d, select(arg_1.d, vec4<bool>(arg_1.c.x, arg_3, true, arg_3), arg_3), vec4<bool>(arg_1.d.x, true, false, false)), arg_1.d), Struct_1(0i, _wgslsmith_sub_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-26762i, -1i, u_input.a.x, 39972i), arg_1.e.b)), arg_1.e.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - -3306f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(657f * var_1.x) - var_1.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_1.e.d, vec4<f32>(-919f, arg_1.e.c, arg_1.a.c, arg_2))) + arg_1.a.d), _wgslsmith_f_op_vec4_f32(arg_1.b * _wgslsmith_f_op_vec4_f32(abs(arg_1.a.d)))))));
    let var_3 = countOneBits(-9034i);
    return select(~vec4<i32>(select(-28336i ^ arg_1.a.b.x, -1i, arg_3), -3870i, ~(u_input.a.x ^ -1i), ~(-var_3)), arg_1.e.b, arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<i32>(-37451i, ~min(-2147483647i, 1i), u_input.a.x, u_input.a.x) ^ (~abs(vec4<i32>(1948i, 0i, u_input.a.x, 0i)) << (vec4<u32>(reverseBits(abs(u_input.b.x)), 1u, 0u, 72125u) % vec4<u32>(32u)));
    global3 = array<vec3<f32>, 14>();
    var var_1 = u_input.a >> (u_input.b % vec2<u32>(32u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1483f)))))), 466f, _wgslsmith_f_op_f32(sign(1806f)));
    let var_3 = _wgslsmith_mod_vec4_i32(~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_0.x, u_input.a.x, var_0.x, var_1.x)), func_1(~1u, Struct_2(Struct_1(u_input.a.x, vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, u_input.a.x), var_2.x, vec4<f32>(-1396f, -1325f, -1194f, var_2.x)), vec4<f32>(var_2.x, 2253f, 383f, var_2.x), vec2<bool>(true, true), vec4<bool>(true, false, false, true), Struct_1(var_0.x, vec4<i32>(var_1.x, var_0.x, var_1.x, var_1.x), var_2.x, vec4<f32>(var_2.x, 1647f, var_2.x, 559f))), _wgslsmith_f_op_f32(abs(2085f)), false)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(func_1(1u, Struct_2(Struct_1(u_input.a.x, vec4<i32>(var_0.x, u_input.a.x, 15732i, -62162i), 817f, vec4<f32>(1000f, var_2.x, var_2.x, 1614f)), vec4<f32>(251f, var_2.x, var_2.x, 1000f), vec2<bool>(false, false), vec4<bool>(false, true, false, true), Struct_1(var_1.x, vec4<i32>(u_input.a.x, 55294i, -32196i, 43054i), var_2.x, vec4<f32>(232f, var_2.x, -374f, var_2.x))), var_2.x, true), reverseBits(vec4<i32>(14637i, 0i, var_0.x, var_0.x))), -vec4<i32>(0i, 0i, -2147483647i, -1i)), ~((vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x) | vec4<i32>(var_0.x, u_input.a.x, 2147483647i, var_0.x)) << ((vec4<u32>(22902u, 26441u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)], u_input.b.x) ^ vec4<u32>(u_input.b.x, 38171u, 33681u, 0u)) % vec4<u32>(32u)))));
    let var_4 = Struct_2(Struct_1(-1i, firstTrailingBit(vec4<i32>(1i, ~var_1.x, var_3.x, var_3.x)), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(997f)) + -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-243f, var_2.x, -826f, 1709f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(860f, var_2.x, var_2.x, -465f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-452f, var_2.x, var_2.x, var_2.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-1174f - 458f), var_2.x))))), vec2<bool>(var_0.x < -2147483647i, select(true, true, true) == true), vec4<bool>(u_input.b.x != _wgslsmith_mod_u32(4294967295u, u_input.b.x), false, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)) && !any(vec3<bool>(true, true, true)), any(vec4<bool>(true, any(vec4<bool>(false, true, false, true)), false, true))), Struct_1(firstLeadingBit(~u_input.a.x), -var_3 & vec4<i32>(2147483647i, var_1.x | 2147483647i, 1i, i32(-1i) * -1i), -1086f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(732f, 664f, -331f, -369f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, 1f), _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(var_0.x, var_4.e.a), vec2<i32>(_wgslsmith_mult_i32(-2147483647i, var_0.x) | u_input.a.x, -_wgslsmith_mult_i32(-25471i, -26605i))), abs(var_1.x));
}

