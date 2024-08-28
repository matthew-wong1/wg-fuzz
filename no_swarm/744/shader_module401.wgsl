struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(1644f, 1000f, -1089f, 418f, 168f, -854f, 356f, -380f, -209f, 703f, 1618f, -1000f, 1560f, 1415f, -519f, 1000f, 1081f, 356f, 1083f, 463f, 1142f, 668f, 2291f, -279f, 208f, 352f);

var<private> global1: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(4294967295u, 77352u, 31697u, 8759u), vec4<u32>(43609u, 1u, 0u, 0u), vec4<u32>(1u, 40114u, 100024u, 34761u), vec4<u32>(1u, 1u, 4294967295u, 77451u));

var<private> global2: array<i32, 30> = array<i32, 30>(-1i, i32(-2147483648), -19778i, -42387i, 2147483647i, 6985i, 0i, -31686i, 36542i, -399i, i32(-2147483648), i32(-2147483648), 2147483647i, 0i, 6416i, 560i, -5212i, 36651i, 2147483647i, 27529i, -27776i, 30797i, 46582i, 20769i, -8740i, 1i, -1i, -51159i, -1i, -36365i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = arg_1.c.e;
    var var_1 = arg_1.c.c;
    return vec2<f32>(1081f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.x - var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * -279f), arg_2.x)));
}

fn func_2(arg_0: i32, arg_1: Struct_5, arg_2: u32) -> u32 {
    var var_0 = Struct_3(Struct_1(-204f, _wgslsmith_f_op_vec2_f32(func_3(arg_1.b.zwy, Struct_4(Struct_1(1082f, vec2<f32>(137f, -360f), arg_0), vec4<i32>(global2[_wgslsmith_index_u32(65401u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)], -41842i, 1i) | vec4<i32>(1i, -32550i, global2[_wgslsmith_index_u32(23646u, 30u)], -6773i), Struct_3(Struct_1(arg_1.a, arg_1.b.wz, -8448i), Struct_2(arg_1.b.xyy), Struct_1(772f, vec2<f32>(-1611f, global0[_wgslsmith_index_u32(105324u, 26u)]), arg_0), global1[_wgslsmith_index_u32(u_input.a, 4u)], Struct_2(arg_1.b.ywz))), vec2<bool>(true, true))), -32452i), Struct_2(arg_1.b.xwy), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) + 714f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.zz)), arg_0), abs(vec4<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, u_input.a, u_input.a), u_input.a), 1u, arg_2)), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1109f, -683f, arg_1.b.x) * arg_1.b.zzy)));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, firstTrailingBit(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2, 4294967295u), 4u)], global1[_wgslsmith_index_u32(67405u, 4u)])), var_0.d.x), vec3<u32>(21064u, ~(var_0.d.x << (u_input.a % 32u)), _wgslsmith_sub_u32(69931u, ~(~u_input.a)))), 4u)];
    global1 = array<vec4<u32>, 4>();
    let var_2 = min(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 53338u, 0u), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(var_1.wzw, vec3<u32>(var_0.d.x, 0u, 1u)), countOneBits(var_1.wwz))) >> (~(~var_1.xwx) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(0u, 4u)], vec4<u32>(2803u, 9633u, 55901u, u_input.a)), firstTrailingBit(~0u), 0u), _wgslsmith_mod_u32(1u, min(0u, _wgslsmith_dot_vec3_u32(var_0.d.xzx, var_1.zwy))), _wgslsmith_clamp_u32(~arg_2, max(var_0.d.x, 1u), var_1.x)));
    var_0 = Struct_3(var_0.c, var_0.e, Struct_1(global0[_wgslsmith_index_u32(~(~(29486u ^ var_2.x)), 26u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, var_0.c.b.x), vec2<f32>(var_0.e.a.x, 1038f)))), var_0.c.c), ~(~select(~vec4<u32>(var_2.x, 0u, 4294967295u, var_1.x), _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(var_1.x, 4u)], global1[_wgslsmith_index_u32(arg_2, 4u)]), any(vec4<bool>(true, false, true, true)))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.b.a))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a, -1000f, 1569f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, 154f, 483f)))))));
    return ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.d.x, 8683u, 1u, var_0.d.x), max(vec4<u32>(20215u, 3393u, 23929u, 4294967295u), vec4<u32>(7890u, 26999u, var_2.x, 4294967295u)) << (global1[_wgslsmith_index_u32(~var_0.d.x, 4u)] % vec4<u32>(32u))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> vec2<bool> {
    global2 = array<i32, 30>();
    var var_0 = arg_0;
    return vec2<bool>(all(vec2<bool>(true, _wgslsmith_f_op_f32(-arg_1.a.b.x) >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(67160u, 26u)]))), !(any(vec3<bool>(true, false, false)) & false) || true);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: f32, arg_3: u32) -> vec2<i32> {
    let var_0 = select(func_4(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.x, 38331u, arg_0.x, 0u)), vec4<u32>(firstLeadingBit(4294967295u), ~u_input.a, func_2(-1i, Struct_5(523f, vec4<f32>(676f, global0[_wgslsmith_index_u32(1u, 26u)], -1418f, -949f)), u_input.a), countOneBits(arg_3))), Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1139f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(209f, 316f))), global2[_wgslsmith_index_u32(reverseBits(22669u), 30u)]), Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, -676f, -703f), vec3<f32>(arg_2, 540f, global0[_wgslsmith_index_u32(arg_3, 26u)])))), Struct_1(arg_2, vec2<f32>(global0[_wgslsmith_index_u32(95573u, 26u)], -1259f), -64531i), vec4<u32>(firstTrailingBit(38139u), 4294967295u, 1u, 4294967295u), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 26u)], arg_2, global0[_wgslsmith_index_u32(arg_0.x, 26u)])))), 89100u, _wgslsmith_dot_vec3_i32(vec3<i32>(-26474i, -55155i, 1i) ^ (vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 30u)], -6223i, global2[_wgslsmith_index_u32(4294967295u, 30u)]) & vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(39672u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)])), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(abs(0u), 30u)], ~global2[_wgslsmith_index_u32(u_input.a, 30u)]))), select(!arg_1.wy, func_4(u_input.a, Struct_3(Struct_1(arg_2, vec2<f32>(global0[_wgslsmith_index_u32(24195u, 26u)], 114f), -2147483647i), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], arg_2, global0[_wgslsmith_index_u32(arg_3, 26u)])), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 26u)], vec2<f32>(304f, 1293f), global2[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<u32>(25000u, 78111u, 10204u, arg_3), Struct_2(vec3<f32>(-1380f, arg_2, -1567f))), _wgslsmith_clamp_u32(arg_0.x, _wgslsmith_sub_u32(6016u, arg_3), 1u & arg_0.x), select(~global2[_wgslsmith_index_u32(arg_0.x, 30u)], 9153i, arg_1.x)), true), false);
    let var_1 = arg_1.wy;
    global0 = array<f32, 26>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, -1037f, global0[_wgslsmith_index_u32(4294967295u, 26u)]))))));
    var var_3 = func_2(global2[_wgslsmith_index_u32(1u, 30u)], Struct_5(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), var_2.a.x, 1339f, arg_2)))), ~u_input.a | u_input.a);
    return -vec2<i32>(firstTrailingBit(global2[_wgslsmith_index_u32(~abs(4294967295u), 30u)]), 10801i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 4>();
    var var_0 = vec3<u32>(u_input.a | reverseBits(4294967295u), ~(~u_input.a), u_input.a);
    var var_1 = max(~firstTrailingBit(1i), global2[_wgslsmith_index_u32(~u_input.a, 30u)]) | (firstTrailingBit(_wgslsmith_dot_vec2_i32(func_1(vec3<u32>(106470u, 19815u, 35197u), vec4<bool>(false, true, false, false), 1687f, var_0.x), countOneBits(vec2<i32>(4668i, 4987i)))) & _wgslsmith_mod_i32(countOneBits(reverseBits(0i)), 1i));
    var var_2 = 1000f;
    var_1 = _wgslsmith_mod_i32(abs(-1i), 1i);
    var var_3 = !(_wgslsmith_mod_u32(1u, ~7650u) != ~(u_input.a ^ (0u | u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(vec3<i32>(_wgslsmith_add_i32(17181i, 19094i), -global2[_wgslsmith_index_u32(73982u, 30u)], max(38837i, global2[_wgslsmith_index_u32(51654u, 30u)])), abs(vec3<i32>(global2[_wgslsmith_index_u32(32714u, 30u)], -4997i, global2[_wgslsmith_index_u32(1u, 30u)])), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))))), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~85624u, 26u)])), -abs(abs(17852i)), global2[_wgslsmith_index_u32(var_0.x, 30u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -690f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 26u)]))) * global0[_wgslsmith_index_u32(~(~var_0.x), 26u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_2(global2[_wgslsmith_index_u32(~u_input.a, 30u)], Struct_5(-759f, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], -1000f, global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)])), abs(1u)), 26u)]), true)));
}

