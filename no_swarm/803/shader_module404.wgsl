struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(79671u, 12143u);

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_3, 2>;

var<private> global3: array<u32, 32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: i32) -> vec2<u32> {
    global3 = array<u32, 32>();
    return vec2<u32>(70334u, select(arg_1.c.a.x, 1u, any(vec3<bool>(true, true, true))));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_f32(770f, _wgslsmith_div_f32(-1793f, 1f)), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 8418u, global3[_wgslsmith_index_u32(1u, 32u)]), ~vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global0.b, 32u)], 1u)), _wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 32u)], 59950u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 8429u, u_input.a), ~vec3<u32>(0u, 4294967295u, 9673u), _wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 32u)], global0.a, u_input.a), vec3<u32>(26240u, 0u, 31728u))))), Struct_1(~vec2<u32>(~global3[_wgslsmith_index_u32(u_input.a, 32u)], global0.b)), _wgslsmith_f_op_f32(f32(-1f) * -778f));
    global1 = vec4<i32>(~firstLeadingBit(-19108i), u_input.b.x, global1.x, ~(~(abs(-3905i) << (min(7818u, global0.a) % 32u))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 61408u), 2u)];
    global2 = array<Struct_3, 2>();
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a, countOneBits(global3[_wgslsmith_index_u32(~(var_1.b << (4294967295u % 32u)), 32u)])), func_3(u_input.b.xx, var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.a, 1133f, 1000f)))), reverseBits(1876i)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.a))) + _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(var_1.c.a + var_1.c.d)))), var_1.c.d))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_5 {
    global1 = select(~firstLeadingBit(vec4<i32>(min(u_input.b.x, global1.x), 0i, _wgslsmith_mod_i32(2147483647i, u_input.b.x), global1.x & u_input.b.x)), reverseBits(firstTrailingBit(firstLeadingBit(abs(vec4<i32>(-34625i, global1.x, u_input.b.x, 2147483647i))))), 2147483647i <= max(u_input.b.x, _wgslsmith_add_i32(~(-2147483647i), ~global1.x)));
    let var_0 = _wgslsmith_add_i32(~(-31909i), (global1.x ^ 1i) & ((global1.x ^ reverseBits(global1.x)) ^ global1.x));
    global3 = array<u32, 32>();
    global2 = array<Struct_3, 2>();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -1000f, arg_0.x) * vec4<f32>(arg_0.x, 1000f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1271f, arg_0.x, 424f, arg_0.x))), any(vec3<bool>(arg_1.x, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2277f, arg_0.x, arg_0.x, 658f) + vec4<f32>(arg_0.x, arg_0.x, 540f, 1535f)))))));
    return Struct_5(0u, _wgslsmith_dot_vec2_u32(func_3(vec2<i32>(global1.x, ~24137i), Struct_2(_wgslsmith_f_op_f32(arg_0.x - -1552f), vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 32u)], 4294967295u, u_input.a), Struct_1(vec2<u32>(global0.b, 17887u)), _wgslsmith_f_op_f32(-var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(step(arg_0.x, var_1.x)), arg_0.x, arg_0.x), firstTrailingBit(_wgslsmith_mult_i32(-21236i, -23852i))), select(min(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a, 32u)], 32u)], 42554u), vec2<u32>(u_input.a, global0.a)), ~vec2<u32>(global3[_wgslsmith_index_u32(global0.a, 32u)], 6059u), arg_1.x) & ~vec2<u32>(1u, u_input.a)));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = abs(~(~vec2<u32>(1u, global3[_wgslsmith_index_u32(u_input.a, 32u)])));
    global0 = func_4(vec3<f32>(-108f, _wgslsmith_f_op_f32(func_2()), 1578f), vec3<bool>(all(vec2<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, true)))), true, any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    global1 = ~(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, u_input.b.x, u_input.b.x, -63581i) << (vec4<u32>(global0.b, global0.a, global3[_wgslsmith_index_u32(global0.a, 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 32u)], 32u)]) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, 22787i) & vec4<i32>(-2147483647i, global1.x, global1.x, global1.x)) >> (~(~vec4<u32>(var_0.x, 25328u, global3[_wgslsmith_index_u32(var_0.x, 32u)], global0.a)) % vec4<u32>(32u))) | vec4<i32>(firstLeadingBit(-67975i), ~u_input.b.x, global1.x, u_input.b.x);
    let var_1 = Struct_3(~(~4294967295u), 1u, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1008f, arg_0) - -388f), arg_0), vec3<u32>(2104u, 0u, ~1u), Struct_1(_wgslsmith_div_vec2_u32(select(vec2<u32>(30077u, 30816u), vec2<u32>(9156u, 83453u), vec2<bool>(true, false)), abs(vec2<u32>(var_0.x, var_0.x)))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f) + -267f))));
    let var_2 = global1.yw;
    return 4294967295u;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_5 {
    let var_0 = Struct_3(5575u | (func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.d, arg_0.c.d, -114f) + vec3<f32>(1000f, arg_0.c.d, 1073f)), arg_2.c).a ^ max(u_input.a, arg_3.a.x)), _wgslsmith_sub_u32(15084u, 1u << (~firstTrailingBit(arg_3.a.x) % 32u)), arg_0.c);
    let var_1 = 25164i;
    var var_2 = select(vec2<bool>(!(!all(vec4<bool>(arg_2.c.x, true, arg_1.x, arg_1.x))), arg_2.a.x), select(vec2<bool>(any(vec2<bool>(true, arg_1.x)) && true, true), !(!select(vec2<bool>(false, arg_1.x), arg_1.yx, arg_2.c.x)), arg_2.c.x), any(select(select(vec2<bool>(false, false), vec2<bool>(false, arg_1.x), select(vec2<bool>(true, arg_2.c.x), arg_2.c.xy, arg_1.xy)), arg_1.xz, select(select(arg_2.a, arg_1.zy, vec2<bool>(arg_1.x, false)), arg_2.a, all(vec2<bool>(arg_2.c.x, true))))));
    var_2 = !vec2<bool>(all(select(!vec4<bool>(arg_2.a.x, var_2.x, var_2.x, false), !vec4<bool>(false, var_2.x, var_2.x, var_2.x), !vec4<bool>(false, var_2.x, false, true))), true);
    var_2 = arg_2.a;
    return Struct_5(_wgslsmith_add_u32(func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(573f, 284f, arg_2.d.a)))), vec3<bool>(false, false, all(vec4<bool>(var_2.x, var_2.x, arg_2.c.x, true)))).a, arg_3.a.x), _wgslsmith_dot_vec2_u32(var_0.c.b.xx, vec2<u32>(~(~arg_3.a.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 29754u), 25364u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(global2[_wgslsmith_index_u32(countOneBits(func_1(-278f)), 2u)], !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, select(true, false, false), true)), Struct_4(vec2<bool>(true, true), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-722f, 786f)) * _wgslsmith_f_op_f32(f32(-1f) * -1020f)), select(abs(vec3<u32>(u_input.a, global0.a, 4294967295u)), vec3<u32>(0u, global0.a, global3[_wgslsmith_index_u32(1u, 32u)]), true), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(22963u, 32u)], global0.a), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a, 32u)], 32u)], global3[_wgslsmith_index_u32(0u, 32u)]), vec2<u32>(0u, 1u))), 116f), vec3<bool>(false, false, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false))), Struct_2(-877f, abs(abs(vec3<u32>(global0.b, 26933u, 72681u))), Struct_1(~vec2<u32>(3201u, global0.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1890f + 181f), 1050f, true))), -firstLeadingBit(0i << (global3[_wgslsmith_index_u32(u_input.a, 32u)] % 32u))), Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 32u)]), vec2<u32>(u_input.a, 0u)) & (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 65857u), vec2<u32>(0u, global0.b)) ^ func_3(vec2<i32>(-6143i, global1.x), Struct_2(501f, vec3<u32>(4294967295u, 0u, 63400u), Struct_1(vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 32u)])), 638f), vec4<f32>(-1437f, -1000f, 590f, -848f), -19798i))));
    global1 = -vec4<i32>(~firstLeadingBit(u_input.b.x), -5715i, -1i, -(~0i | u_input.b.x));
    var var_0 = vec2<u32>(0u, global3[_wgslsmith_index_u32(func_5(global2[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-521f, -358f, -319f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 1348f, -456f), vec3<f32>(-1000f, -534f, 1330f)))), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))).a, 2u)], vec3<bool>(true, true, true), Struct_4(vec2<bool>(false, 23606i == u_input.b.x), Struct_2(_wgslsmith_f_op_f32(step(174f, -1000f)), ~vec3<u32>(global0.b, 0u, u_input.a), Struct_1(vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_f_op_f32(select(-142f, -1098f, false))), vec3<bool>(false, true, 29454i == u_input.b.x), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -685f), vec3<u32>(18266u, 4294967295u, global0.a), Struct_1(vec2<u32>(u_input.a, u_input.a)), 1008f), ~reverseBits(global1.x)), Struct_1(vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), 1u))).b, 32u)]);
    global0 = Struct_5(var_0.x, 4294967295u);
    global3 = array<u32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~(-(vec4<i32>(-1i) * -vec4<i32>(27771i, 14180i, global1.x, -1i))));
}

