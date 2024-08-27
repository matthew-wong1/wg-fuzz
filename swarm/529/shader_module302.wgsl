struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-26894i, vec2<u32>(7478u, 11243u));

var<private> global1: array<bool, 14>;

var<private> global2: f32 = -455f;

var<private> global3: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(0i, 2147483647i, -52864i), vec3<i32>(7952i, 0i, 2147483647i), vec3<i32>(-28343i, 2355i, -16851i), vec3<i32>(-26395i, -1i, i32(-2147483648)), vec3<i32>(2671i, 2147483647i, 2147483647i), vec3<i32>(-1i, 32949i, 44847i), vec3<i32>(-45933i, i32(-2147483648), -1i), vec3<i32>(-1i, 0i, 16083i), vec3<i32>(1i, 1i, -6179i), vec3<i32>(1i, 2147483647i, -1304i), vec3<i32>(-10274i, 0i, 36891i), vec3<i32>(41932i, 2147483647i, 1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> f32 {
    global2 = -1105f;
    return 856f;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 1273f;
    let var_1 = -32308i;
    global2 = _wgslsmith_f_op_f32(-977f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-648f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(arg_2, vec4<bool>(false, arg_0, global1[_wgslsmith_index_u32(global0.b.x, 14u)], global1[_wgslsmith_index_u32(arg_2, 14u)]))))), true)), _wgslsmith_f_op_f32(abs(-981f)))));
    let var_2 = Struct_1(-4587i, ~global0.b);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f));
    return arg_3;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = func_2(true, select(!vec2<bool>(global1[_wgslsmith_index_u32(global0.b.x, 14u)], true), !(!vec2<bool>(global1[_wgslsmith_index_u32(global0.b.x, 14u)], true)), !global1[_wgslsmith_index_u32(select(0u, global0.b.x, global1[_wgslsmith_index_u32(global0.b.x, 14u)]), 14u)] || true), ~_wgslsmith_sub_u32(global0.b.x, reverseBits(~global0.b.x)), Struct_1(abs(_wgslsmith_mod_i32(u_input.a, global0.a)) & -2814i, global0.b));
    global1 = array<bool, 14>();
    global3 = array<vec3<i32>, 12>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-908f, 3918f, false))), 581f)), 834f);
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(func_3(firstLeadingBit(1u), vec4<bool>(true, true, true, true)))))));
    return func_2(any(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 14u)]))), vec2<bool>(!global1[_wgslsmith_index_u32(reverseBits(var_0.b.x), 14u)], all(select(select(vec2<bool>(global1[_wgslsmith_index_u32(global0.b.x, 14u)], true), vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 14u)], global1[_wgslsmith_index_u32(arg_0.x, 14u)])), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 14u)], false), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 14u)], global1[_wgslsmith_index_u32(0u, 14u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 14u)], global1[_wgslsmith_index_u32(arg_0.x, 14u)])), u_input.a < -12542i))), _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, ~global0.b.x), ~var_0.b.x >> (arg_0.x % 32u)), Struct_1(u_input.a, arg_0));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_1(0i | _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-21029i, -2147483647i, -3777i, -55243i)), firstLeadingBit(vec4<i32>(0i, arg_2.a, u_input.a, -59737i)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(arg_3.a, global0.a, arg_3.a, arg_3.a), vec4<i32>(-27920i, 2147483647i, -1i, arg_3.a))), func_1(func_1(~reverseBits(vec2<u32>(1u, 1u))).b).b);
    global0 = Struct_1(-1i, ~abs(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_2.b.x), vec2<u32>(50353u, arg_3.b.x)))));
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~global0.b.x >> (max(0u, 4294967295u) % 32u), !select(vec4<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(global0.b.x, 14u)], arg_0), vec4<bool>(true, global1[_wgslsmith_index_u32(71664u, 14u)], false, arg_0), vec4<bool>(true, global1[_wgslsmith_index_u32(25610u, 14u)], true, global1[_wgslsmith_index_u32(arg_3.b.x, 14u)])))), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(sign(-1297f)));
    let var_1 = !all(select(select(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(global1[_wgslsmith_index_u32(0u, 14u)], true, true, false), global1[_wgslsmith_index_u32(arg_3.b.x, 14u)]), !vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(global0.b.x, 14u)], global1[_wgslsmith_index_u32(4237u, 14u)])), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(global0.b.x, 14u)], true, true)), (u_input.a ^ -69723i) == u_input.a));
    return func_2(true, vec2<bool>(any(!select(vec3<bool>(var_1, true, true), vec3<bool>(var_1, false, arg_0), vec3<bool>(var_1, false, var_1))), !(!(!var_1))), ~(~(arg_3.b.x & _wgslsmith_add_u32(24492u, 0u))), arg_2);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    let var_0 = select(vec4<bool>(true, all(select(select(vec4<bool>(true, true, arg_1, false), vec4<bool>(arg_1, true, arg_1, false), global1[_wgslsmith_index_u32(arg_0.b.x, 14u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 14u)], true, arg_1, global1[_wgslsmith_index_u32(arg_0.b.x, 14u)]), vec4<bool>(false, arg_1, true, true), vec4<bool>(false, arg_1, arg_1, false)), select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(arg_1, false, true, true), false))), global1[_wgslsmith_index_u32(abs(3339u), 14u)], !(_wgslsmith_mult_u32(arg_0.b.x, 15391u) < abs(1u))), select(select(vec4<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(31115u, 14u)], false)), true, any(vec4<bool>(false, global1[_wgslsmith_index_u32(27826u, 14u)], arg_1, arg_1)), !arg_1), !vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.b.x, 14u)], false, arg_1), all(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 14u)]))), !select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.b.x, 14u)], true, global1[_wgslsmith_index_u32(global0.b.x, 14u)], arg_1), vec4<bool>(false, true, arg_1, true), true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1357u, arg_0.b.x), global0.b), 14u)]), vec4<bool>(false, all(select(vec4<bool>(global1[_wgslsmith_index_u32(global0.b.x, 14u)], true, global1[_wgslsmith_index_u32(arg_0.b.x, 14u)], global1[_wgslsmith_index_u32(global0.b.x, 14u)]), vec4<bool>(arg_1, true, global1[_wgslsmith_index_u32(arg_0.b.x, 14u)], false), vec4<bool>(arg_1, true, false, false))), all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 14u)]), vec2<bool>(arg_1, true), global1[_wgslsmith_index_u32(4294967295u, 14u)])), global1[_wgslsmith_index_u32(arg_0.b.x, 14u)])), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(1576u, 14u)] | false, true, true), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(65895u, 14u)], global1[_wgslsmith_index_u32(64785u, 14u)], false), vec4<bool>(arg_1, false, arg_1, true), true), vec4<bool>(1i <= arg_0.a, global0.a < global0.a, global1[_wgslsmith_index_u32(10818u, 14u)], true)));
    let var_1 = arg_0.a;
    var var_2 = func_1(global0.b);
    let var_3 = arg_0.b;
    global0 = func_2(var_0.x, var_0.zw, ~(~(~_wgslsmith_mod_u32(var_2.b.x, 4294967295u))), func_1(var_2.b));
    return ~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_3.x, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 4294967295u, global0.b.x), vec3<u32>(var_2.b.x, global0.b.x, global0.b.x))), reverseBits(1u)), global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-global0.a, func_5(func_4(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.b.x, global0.b.x), 14u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(384f, -729f, -155f)))), func_1(~vec2<u32>(4294967295u, global0.b.x)), Struct_1(~global0.a, _wgslsmith_add_vec2_u32(global0.b, global0.b))), !(global1[_wgslsmith_index_u32(global0.b.x & 1u, 14u)] & true)));
    global1 = array<bool, 14>();
    global1 = array<bool, 14>();
    var_0 = func_2(global1[_wgslsmith_index_u32(var_0.b.x, 14u)], !vec2<bool>(true, ~4294967295u != global0.b.x), ~1u, Struct_1(var_0.a, vec2<u32>(19118u, 3999u) << (func_4(!global1[_wgslsmith_index_u32(var_0.b.x, 14u)], vec3<f32>(588f, -716f, 184f), func_2(false, vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.b.x, 14u)]), 30573u, Struct_1(27230i, var_0.b)), func_1(global0.b)).b % vec2<u32>(32u))));
    let var_1 = vec3<bool>(!all(!vec4<bool>(true, global1[_wgslsmith_index_u32(50340u, 14u)], false, true)), true, false);
    let var_2 = vec4<bool>(var_1.x, true, true & (var_1.x != any(!vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.b.x, 14u)], global1[_wgslsmith_index_u32(var_0.b.x, 14u)], true))), true);
    let var_3 = func_2(!var_1.x, select(select(var_1.xx, vec2<bool>(var_1.x, var_1.x), var_1.zz), select(select(var_2.wx, var_1.yx, false && var_1.x), vec2<bool>(all(vec2<bool>(var_2.x, global1[_wgslsmith_index_u32(var_0.b.x, 14u)])), true), all(var_2.yxx)), 0u >= func_4(45610u < var_0.b.x, vec3<f32>(-662f, -253f, 858f), Struct_1(-2147483647i, vec2<u32>(var_0.b.x, var_0.b.x)), func_4(var_1.x, vec3<f32>(-382f, -123f, -114f), Struct_1(2147483647i, var_0.b), Struct_1(u_input.a, global0.b))).b.x), ~(reverseBits(_wgslsmith_mod_u32(58455u, 21785u)) >> ((~var_0.b.x & 1u) % 32u)), func_2(!var_2.x, var_1.yy, var_0.b.x, func_4(true, vec3<f32>(_wgslsmith_f_op_f32(-1356f * -569f), 118f, _wgslsmith_div_f32(-485f, 1000f)), Struct_1(firstTrailingBit(var_0.a), global0.b), func_1(_wgslsmith_mod_vec2_u32(global0.b, vec2<u32>(var_0.b.x, 18490u))))));
    let var_4 = abs(func_2(!(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_3.b.x, 41518u), vec3<u32>(16547u, global0.b.x, var_0.b.x)), 14u)]), var_2.yy, ~(~1u ^ firstLeadingBit(global0.b.x)), func_4(1i > var_3.a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(263f, -1246f, 558f))), var_3, var_3)).a);
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(3266u, -636f, select(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(var_0.a, var_3.a)), firstLeadingBit(~vec2<i32>(2147483647i, var_3.a)), var_2.x) & (vec2<i32>(-1i) * -vec2<i32>(var_0.a, 2147483647i)), abs(~((vec4<i32>(-18704i, global0.a, 2147483647i, var_0.a) & vec4<i32>(2147483647i, u_input.a, global0.a, var_0.a)) << (~vec4<u32>(4294967295u, var_3.b.x, global0.b.x, 25441u) % vec4<u32>(32u)))));
}

