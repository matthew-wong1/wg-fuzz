struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
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

var<private> global0: Struct_1;

var<private> global1: array<f32, 24> = array<f32, 24>(-1166f, -593f, -349f, -636f, -738f, -1094f, 587f, -1063f, 481f, 1574f, 652f, -273f, -430f, 744f, -2088f, -2105f, 656f, -647f, 618f, 861f, -864f, 587f, -351f, 1000f);

var<private> global2: vec4<u32> = vec4<u32>(933u, 1u, 0u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = select(arg_0.c, select(!select(select(global0.c, vec3<bool>(true, arg_0.c.x, global0.d), global0.d), select(vec3<bool>(global0.d, false, false), vec3<bool>(arg_1, true, global0.b.x), arg_0.c), !global0.d), !global0.c, any(select(select(global0.c.xz, vec2<bool>(global0.b.x, true), false), !arg_0.b, u_input.c < u_input.b.x))), !global0.b.x);
    global1 = array<f32, 24>();
    let var_1 = arg_0;
    let var_2 = vec3<i32>(2147483647i, reverseBits(abs(-u_input.a)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, select(5455u, u_input.b.x, true)), u_input.b.xw) % 32u), 0i);
    global0 = Struct_1(-(~global0.a) | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, arg_0.a) ^ _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 1i), var_2.xy), var_2.xz), !var_1.b, arg_0.c, true);
    return 52033u;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = !global0.c.xz;
    global2 = vec4<u32>(func_3(Struct_1(countOneBits(firstTrailingBit(arg_1)), !global0.c.xx, select(!global0.c, select(global0.c, global0.c, var_0.x), false), false), all(select(!vec4<bool>(true, global0.c.x, false, var_0.x), !vec4<bool>(true, var_0.x, false, true), false))), _wgslsmith_sub_u32(0u, u_input.b.x & abs(~global2.x)), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(global2.x, u_input.c), 20756u, _wgslsmith_div_u32(abs(global2.x), u_input.b.x)), 1u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.x, 3999u), select(vec3<u32>(25838u, 0u, global2.x), global2.zxw, global0.c)));
    var_0 = !vec2<bool>(true, !global0.c.x);
    global1 = array<f32, 24>();
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit((42027u & global2.x) | _wgslsmith_clamp_u32(u_input.c, 21361u, 39713u)), 4294967295u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1865u, 0u, global2.x, global2.x), vec4<u32>(global2.x, 1u, global2.x, 18514u))) | 1u), select(global2.xww, u_input.b.ywy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * global1[_wgslsmith_index_u32(u_input.b.x, 24u)])) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-341f + arg_0))));
    return select(vec3<bool>(true, true, (67683u != ~u_input.c) && any(vec2<bool>(true, true))), vec3<bool>(-1977f > global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), 24u)], true, any(select(!global0.c, global0.c, global0.d & true))), !(!global0.c));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = array<f32, 24>();
    global2 = u_input.b;
    global0 = Struct_1(8096i, arg_2.b, vec3<bool>(arg_0.b.x, any(select(select(vec4<bool>(true, arg_3.b.x, arg_2.d, arg_2.d), vec4<bool>(arg_1, true, false, arg_3.d), global0.c.x), !vec4<bool>(global0.d, arg_1, arg_3.b.x, arg_2.d), !global0.c.x)), global0.d), any(select(!select(global0.b, arg_0.c.xz, arg_3.c.x), !vec2<bool>(true, arg_0.b.x), true)));
    let var_0 = Struct_1(arg_0.a, arg_3.c.zx, vec3<bool>(arg_3.b.x, false | any(select(vec4<bool>(true, arg_1, true, false), vec4<bool>(arg_0.b.x, arg_2.d, arg_3.d, true), vec4<bool>(true, false, arg_1, true))), true), arg_3.c.x);
    global1 = array<f32, 24>();
    return Struct_1(global0.a, var_0.b, vec3<bool>(arg_1, global0.c.x, !(!arg_3.d | any(vec2<bool>(arg_2.b.x, true)))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1211f))) - -1167f), -22015i, _wgslsmith_add_vec4_i32(vec4<i32>(-2148i, 28954i, u_input.a, _wgslsmith_sub_i32(39571i, arg_3.a)), reverseBits(~vec4<i32>(arg_3.a, 1i, arg_3.a, arg_0.a)))).x);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.a, ~44271i), -2147483647i), 25815i, 35957i), vec3<i32>(~(~func_4(arg_3, false, Struct_1(u_input.a, arg_3.b, arg_0.c, false), Struct_1(32120i, vec2<bool>(false, global0.d), vec3<bool>(arg_0.d, global0.d, arg_3.d), false)).a), _wgslsmith_dot_vec2_i32(vec2<i32>(54251i, -global0.a), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-302i, global0.a), vec2<i32>(arg_3.a, 49285i), vec2<i32>(u_input.a, 1100i)))), min(arg_1, 2147483647i)));
    let var_1 = select(select(select(!vec4<bool>(true, global0.c.x, global0.c.x, arg_3.d), vec4<bool>(true, arg_3.d, any(vec2<bool>(true, true)), any(vec3<bool>(arg_0.c.x, true, arg_3.d))), vec4<bool>(true, true, var_0.x > u_input.a, select(global0.b.x, true, arg_0.d))), !select(vec4<bool>(true, global0.b.x, arg_0.d, arg_3.b.x), select(vec4<bool>(global0.b.x, true, arg_0.d, false), vec4<bool>(true, false, arg_3.d, false), vec4<bool>(true, true, false, arg_3.b.x)), vec4<bool>(arg_3.c.x, true, false, arg_3.d)), !global0.d == !global0.b.x), vec4<bool>(all(select(vec4<bool>(arg_0.b.x, arg_3.c.x, global0.d, true), vec4<bool>(true, arg_0.c.x, true, arg_0.c.x), !vec4<bool>(arg_3.c.x, global0.b.x, true, arg_3.d))), true, any(!vec4<bool>(arg_3.d, false, global0.c.x, true)), true), vec4<bool>(u_input.c == abs(~u_input.c), true, global0.b.x, func_4(arg_0, true, Struct_1(abs(-2147483647i), select(arg_3.c.xz, vec2<bool>(arg_0.c.x, global0.b.x), arg_0.c.x), vec3<bool>(true, global0.c.x, true), arg_0.b.x | global0.d), func_4(arg_0, true, arg_0, arg_3)).d));
    let var_2 = func_4(arg_0, !arg_0.b.x & (global0.d | true), arg_3, Struct_1(firstTrailingBit(firstTrailingBit(_wgslsmith_div_i32(var_0.x, var_0.x))), !(!vec2<bool>(arg_0.b.x, var_1.x)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-185f, global1[_wgslsmith_index_u32(u_input.c, 24u)])), arg_0.a, min(~vec4<i32>(-38742i, -2147483647i, var_0.x, 2147483647i), vec4<i32>(-1i, arg_1, arg_1, 50302i))), arg_3.c.x)).b;
    let var_3 = func_4(Struct_1(arg_0.a, var_2, !var_1.zyw, true), arg_0.b.x, func_4(Struct_1(1i, arg_3.c.zy, arg_3.c, any(arg_3.c.yy)), true, Struct_1(0i, vec2<bool>(u_input.b.x < u_input.b.x, arg_3.b.x), arg_0.c, false), arg_3), arg_0);
    global2 = u_input.b;
    return Struct_1(var_3.a, select(var_2, select(func_4(var_3, arg_0.b.x, Struct_1(var_0.x, vec2<bool>(global0.d, arg_3.b.x), arg_3.c, var_2.x), var_3).c.zy, arg_3.c.zx, !(!global0.b.x)), func_2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)] - -156f), countOneBits(arg_3.a << (4294967295u % 32u)), countOneBits(-vec4<i32>(var_0.x, 1i, global0.a, global0.a))).zy), !vec3<bool>(var_2.x, arg_0.c.x, any(var_1) && true), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.x, 24u)] - 1080f)) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-806f))), _wgslsmith_div_f32(_wgslsmith_div_f32(747f, -1000f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 24u)] * 1117f)))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    global2 = vec4<u32>(1u, countOneBits(_wgslsmith_mult_u32(117660u, 17218u)), ~(u_input.c ^ u_input.c), max(u_input.b.x, 1u));
    global1 = array<f32, 24>();
    global0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(reverseBits(-arg_2.a), ~(-44156i >> (0u % 32u))), -1i), vec2<bool>(arg_3, true), arg_2.c, -1708f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 1529f), arg_0));
    let var_0 = func_5(func_4(Struct_1(~(-24292i) & _wgslsmith_add_i32(-8189i, arg_2.a), global0.b, func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 24u)]), firstTrailingBit(-2147483647i), vec4<i32>(global0.a, 1i, arg_2.a, arg_1)), true || all(global0.c)), all(!(!vec4<bool>(true, global0.d, arg_2.b.x, true))), arg_2, Struct_1(global0.a, !vec2<bool>(true, arg_3), arg_2.c, true)), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(490f, arg_0, global1[_wgslsmith_index_u32(0u, 24u)], arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 24u)], 1141f, 770f, arg_0) * vec4<f32>(-2631f, 1612f, -139f, arg_0)), false)))), func_4(func_4(func_4(arg_2, true, arg_2, func_4(Struct_1(34246i, global0.b, global0.c, true), global0.b.x, Struct_1(u_input.a, vec2<bool>(false, arg_2.c.x), arg_2.c, arg_3), arg_2)), arg_2.c.x, arg_2, arg_2), all(vec3<bool>(global0.d, arg_3, global0.c.x)) & arg_3, Struct_1(-global0.a, func_2(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c, 24u)], arg_0), -1i, vec4<i32>(0i, arg_2.a, -25786i, -2147483647i)).xx, select(vec3<bool>(arg_2.c.x, true, global0.c.x), !vec3<bool>(false, arg_3, false), global2.x > global2.x), false), func_4(arg_2, arg_3, Struct_1(-global0.a, !global0.b, vec3<bool>(true, arg_2.c.x, true), true), Struct_1(arg_1, global0.b, !global0.c, true))));
    global1 = array<f32, 24>();
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 38313u;
    let var_1 = ~(-25187i);
    let var_2 = select(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1767f, global1[_wgslsmith_index_u32(0u, 24u)])) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.x, 24u)] - global1[_wgslsmith_index_u32(1u, 24u)])))), global0.a, Struct_1(i32(-1i) * -2147483647i, global0.b, select(global0.c, !vec3<bool>(global0.c.x, global0.d, false), !global0.c), true), global0.c.x), global0.c.yz, global0.b.x);
    global0 = func_5(Struct_1(firstTrailingBit(global0.a), global0.b, vec3<bool>(true, _wgslsmith_div_u32(u_input.b.x, u_input.c) <= func_3(Struct_1(26716i, global0.b, vec3<bool>(var_2.x, var_2.x, false), global0.c.x), global0.c.x), global0.b.x), select(~0u >= global2.x, var_2.x, var_2.x)), -40926i | ~_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(54099i, global0.a, global0.a, 0i), vec4<i32>(u_input.a, 20424i, u_input.a, -2147483647i))), vec4<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x) & u_input.b.wyw, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), 24u)], 1743f, global1[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(min(72005u, u_input.c), _wgslsmith_div_u32(820u, global2.x)), 0u, global0.b.x), 24u)], 1389f), Struct_1(1i, func_5(Struct_1(var_1, !vec2<bool>(var_2.x, var_2.x), !vec3<bool>(false, global0.c.x, false), true), min(min(var_1, -1i), -1i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1013f, global1[_wgslsmith_index_u32(global2.x, 24u)], -494f, -201f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 24u)], global1[_wgslsmith_index_u32(130000u, 24u)], -954f, global1[_wgslsmith_index_u32(global2.x, 24u)]), vec4<f32>(446f, global1[_wgslsmith_index_u32(global2.x, 24u)], -1375f, global1[_wgslsmith_index_u32(u_input.c, 24u)]), vec4<bool>(true, false, global0.b.x, false))))), Struct_1(~23108i, !vec2<bool>(false, var_2.x), global0.c, func_1(573f, u_input.a, Struct_1(var_1, vec2<bool>(false, true), vec3<bool>(var_2.x, false, false), var_2.x), true).x)).b, !global0.c, false && select(!var_2.x, global0.d || false, false)));
    var_0 = u_input.b.x << (~1u % 32u);
    var var_3 = ~u_input.b;
    var_0 = 25640u;
    let var_4 = _wgslsmith_dot_vec4_i32(~(~vec4<i32>(var_1, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(_wgslsmith_div_i32(var_1, u_input.a), func_5(Struct_1(-30561i, vec2<bool>(global0.b.x, false), vec3<bool>(true, global0.d, false), var_2.x), var_1, vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], 732f, 499f, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), Struct_1(-33443i, vec2<bool>(true, false), vec3<bool>(var_2.x, false, false), false)).a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 83852i), vec2<i32>(u_input.a, var_1)), -3563i)), countOneBits(-vec4<i32>(global0.a, u_input.a, -33248i, 1i) ^ vec4<i32>(var_1, 1i, u_input.a | u_input.a, -u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-127f);
}

