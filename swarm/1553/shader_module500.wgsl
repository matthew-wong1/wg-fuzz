struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: array<bool, 31> = array<bool, 31>(false, true, true, false, true, true, true, true, true, false, false, false, false, true, false, false, true, false, true, false, false, true, false, true, false, true, false, false, true, true, true);

var<private> global2: array<i32, 30>;

var<private> global3: Struct_3 = Struct_3(Struct_1(vec2<u32>(0u, 1u)), false, vec4<i32>(30814i, -13207i, 1i, 7412i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> Struct_3 {
    return Struct_3(Struct_1(vec2<u32>(~reverseBits(global3.a.a.x), 905u)), true, global3.c);
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    global1 = array<bool, 31>();
    let var_0 = global3.a.a;
    var var_1 = Struct_2(func_2(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], Struct_2(Struct_1(vec2<u32>(25111u, 0u)), arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.a.a.x, 20u)] + 562f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)] - 291f), -398f), vec3<bool>(true, any(vec2<bool>(false, global1[_wgslsmith_index_u32(58397u, 31u)])), arg_0.b & false), Struct_1(~vec2<u32>(48698u, arg_0.a.a.x))), -countOneBits(u_input.a.x) != (2147483647i ^ -global2[_wgslsmith_index_u32(15478u, 30u)]), false).a, arg_0.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(9203u, 20u)], -1000f, global0[_wgslsmith_index_u32(global3.a.a.x, 20u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(var_0.x, 20u)], 1261f), vec3<bool>(false, global3.b, true))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(6214u, 20u)], global0[_wgslsmith_index_u32(var_0.x, 20u)], -602f)))))), select(select(!select(vec3<bool>(global3.b, arg_0.b, arg_0.b), vec3<bool>(global3.b, false, global3.b), global1[_wgslsmith_index_u32(var_0.x, 31u)]), !select(vec3<bool>(arg_0.b, global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], global3.b), vec3<bool>(true, arg_0.b, global1[_wgslsmith_index_u32(19332u, 31u)]), global1[_wgslsmith_index_u32(var_0.x, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(select(global3.a.a.x, global3.a.a.x, true), 31u)], global3.b, !global3.b)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, global3.b, true), vec3<bool>(global3.b, true, false)), select(vec3<bool>(global3.b, global3.b, false), vec3<bool>(false, false, arg_0.b), arg_0.b), false), vec3<bool>(true, true, true), !vec3<bool>(arg_0.b, arg_0.b, global1[_wgslsmith_index_u32(var_0.x, 31u)])), all(vec4<bool>(arg_0.b, global1[_wgslsmith_index_u32(var_0.x << (var_0.x % 32u), 31u)], false, true))), global3.a);
    let var_2 = Struct_2(func_2(global0[_wgslsmith_index_u32(select(1u, _wgslsmith_mult_u32(global3.a.a.x | 4294967295u, abs(1u)), true), 20u)], Struct_2(func_2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)] + -504f), Struct_2(Struct_1(vec2<u32>(4294967295u, 133353u)), Struct_1(var_1.b.a), var_1.c, var_1.d, Struct_1(arg_0.a.a)), all(var_1.d.yz), all(vec4<bool>(global3.b, var_1.d.x, arg_0.b, true))).a, Struct_1(vec2<u32>(30249u, global3.a.a.x) ^ vec2<u32>(4294967295u, 11570u)), _wgslsmith_f_op_vec3_f32(min(var_1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, -1166f, 327f)))), vec3<bool>(4294967295u <= var_1.b.a.x, global3.b, true), func_2(1427f, Struct_2(var_1.e, var_1.e, var_1.c, vec3<bool>(arg_0.b, false, global3.b), arg_0.a), true, arg_0.b | true).a), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(25355u, global3.a.a.x), 31u)], true).a, Struct_1(var_1.a.a), var_1.c, select(select(var_1.d, !vec3<bool>(arg_0.b, var_1.d.x, arg_0.b), select(vec3<bool>(global3.b, arg_0.b, arg_0.b), !vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 31u)], true, false), any(vec2<bool>(false, var_1.d.x)))), !vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 20u)] >= var_1.c.x, var_1.d.x & true), false), func_2(var_1.c.x, Struct_2(Struct_1(vec2<u32>(arg_0.a.a.x, global3.a.a.x)), func_2(-1381f, Struct_2(Struct_1(global3.a.a), Struct_1(vec2<u32>(21537u, 71692u)), vec3<f32>(415f, var_1.c.x, 913f), vec3<bool>(var_1.d.x, global3.b, true), arg_0.a), !arg_0.b, false).a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, -655f, -544f) + vec3<f32>(global0[_wgslsmith_index_u32(37044u, 20u)], var_1.c.x, global0[_wgslsmith_index_u32(0u, 20u)])))), vec3<bool>(any(vec4<bool>(var_1.d.x, arg_0.b, arg_0.b, arg_0.b)), any(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.a.a.x, 31u)], var_1.d.x)), !global1[_wgslsmith_index_u32(var_1.e.a.x, 31u)]), Struct_1(global3.a.a & arg_0.a.a)), abs(global3.a.a.x) < arg_0.a.a.x, !(!(var_1.d.x || true))).a);
    var var_3 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1038f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-320f, -297f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) * _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(-728f * 1094f)))), var_2, !(true & (true & func_2(global0[_wgslsmith_index_u32(arg_0.a.a.x, 20u)], Struct_2(var_2.e, Struct_1(var_1.a.a), vec3<f32>(-748f, -588f, var_1.c.x), vec3<bool>(arg_0.b, var_1.d.x, true), global3.a), var_1.d.x, true).b)), true).a;
    return var_2.d;
}

fn func_1() -> f32 {
    global2 = array<i32, 30>();
    var var_0 = all(select(select(func_3(func_2(-1000f, Struct_2(global3.a, global3.a, vec3<f32>(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], global0[_wgslsmith_index_u32(1099u, 20u)], 586f), vec3<bool>(global3.b, global1[_wgslsmith_index_u32(4294967295u, 31u)], global3.b), global3.a), global1[_wgslsmith_index_u32(1u, 31u)], true)), vec3<bool>(global3.b, select(global1[_wgslsmith_index_u32(4294967295u, 31u)], true, global1[_wgslsmith_index_u32(global3.a.a.x, 31u)]), func_2(global0[_wgslsmith_index_u32(4294967295u, 20u)], Struct_2(Struct_1(global3.a.a), Struct_1(vec2<u32>(1u, global3.a.a.x)), vec3<f32>(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], 1073f, 166f), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(global3.a.a.x, 31u)]), Struct_1(global3.a.a)), global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], false).b), true), !func_3(func_2(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], Struct_2(global3.a, global3.a, vec3<f32>(global0[_wgslsmith_index_u32(10894u, 20u)], 1000f, 137f), vec3<bool>(global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], true, true), global3.a), global3.b, global3.b)), !(!func_3(Struct_3(global3.a, true, vec4<i32>(global2[_wgslsmith_index_u32(global3.a.a.x, 30u)], 11654i, u_input.b.x, 25949i))))));
    var_0 = func_3(Struct_3(Struct_1(global3.a.a), all(!vec4<bool>(global3.b, global3.b, false, global1[_wgslsmith_index_u32(0u, 31u)])) == true, vec4<i32>(0i << (abs(global3.a.a.x) % 32u), global3.c.x, global2[_wgslsmith_index_u32(0u << (global3.a.a.x % 32u), 30u)] | ~global3.c.x, 1i))).x;
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -355f), global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], global3.b))), Struct_2(Struct_1(max(vec2<u32>(global3.a.a.x, global3.a.a.x), vec2<u32>(global3.a.a.x, global3.a.a.x))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.a.x, 23181u, global3.a.a.x, 42601u), vec4<u32>(global3.a.a.x, 0u, 1u, 9836u)), 20u)], Struct_2(Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(48064u, global3.a.a.x)), vec3<f32>(-597f, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(22276u, 20u)]), vec3<bool>(global3.b, global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], global1[_wgslsmith_index_u32(1u, 31u)]), global3.a), func_3(Struct_3(Struct_1(vec2<u32>(global3.a.a.x, global3.a.a.x)), global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], vec4<i32>(7570i, global2[_wgslsmith_index_u32(global3.a.a.x, 30u)], -1i, -50855i))).x, all(vec4<bool>(false, global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], true))).a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], -1092f, -172f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1271f, global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]))), func_3(Struct_3(global3.a, global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], vec4<i32>(0i, -16100i, -2147483647i, 0i))))), vec3<bool>(true, global3.b, global1[_wgslsmith_index_u32(global3.a.a.x, 31u)] & global3.b), Struct_1(firstTrailingBit(global3.a.a))), all(vec3<bool>(true, u_input.a.x == -31881i, global1[_wgslsmith_index_u32(~global3.a.a.x, 31u)])), false).a, func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(global3.a.a.x), (global3.a.a.x >> (global3.a.a.x % 32u)) >> (global3.a.a.x % 32u)), 20u)], Struct_2(Struct_1(firstTrailingBit(global3.a.a)), global3.a, vec3<f32>(global0[_wgslsmith_index_u32(28977u, 20u)], _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(48645u, 20u)])), -510f), !func_3(Struct_3(Struct_1(vec2<u32>(1u, 14448u)), true, vec4<i32>(u_input.a.x, -63519i, -48541i, 2147483647i))), func_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.a.a.x, 20u)]), Struct_2(global3.a, Struct_1(global3.a.a), vec3<f32>(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], 1140f, global0[_wgslsmith_index_u32(global3.a.a.x, 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], true, true), Struct_1(global3.a.a)), true, any(vec2<bool>(global3.b, global3.b))).a), -global2[_wgslsmith_index_u32(max(global3.a.a.x, global3.a.a.x), 30u)] <= ~35712i, select(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, global3.b), global1[_wgslsmith_index_u32(47502u, 31u)])), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.a.a.x, ~global3.a.a.x), 31u)], !(!global1[_wgslsmith_index_u32(global3.a.a.x, 31u)]))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)] * global0[_wgslsmith_index_u32(58241u, 20u)]), -1704f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], -257f), vec3<f32>(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], -410f, -1150f)))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(974f, global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], -1906f), vec3<f32>(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], global0[_wgslsmith_index_u32(44242u, 20u)], 1137f), false)))))), !(!vec3<bool>(global1[_wgslsmith_index_u32(23768u, 31u)], !global3.b, global3.b)), Struct_1(~vec2<u32>(0u, abs(34613u))));
    let var_2 = Struct_2(global3.a, Struct_1(~vec2<u32>(~66466u, firstLeadingBit(0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c - _wgslsmith_f_op_vec3_f32(vec3<f32>(-641f, 352f, var_1.c.x) - var_1.c))) * _wgslsmith_f_op_vec3_f32(var_1.c * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, -354f, var_1.c.x) + var_1.c))))), select(var_1.d, var_1.d, 52040u > ~_wgslsmith_dot_vec2_u32(global3.a.a, var_1.a.a)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -569f), Struct_2(Struct_1(func_2(-1070f, Struct_2(Struct_1(vec2<u32>(4294967295u, 37027u)), global3.a, var_1.c, var_1.d, Struct_1(vec2<u32>(44489u, global3.a.a.x))), false, global3.b).a.a), func_2(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], Struct_2(Struct_1(var_1.b.a), var_1.a, var_1.c, vec3<bool>(var_1.d.x, global1[_wgslsmith_index_u32(var_1.b.a.x, 31u)], true), var_1.e), func_2(-496f, Struct_2(Struct_1(global3.a.a), var_1.e, var_1.c, vec3<bool>(var_1.d.x, true, global3.b), global3.a), false, global3.b).b, var_1.d.x).a, vec3<f32>(-1186f, -761f, _wgslsmith_f_op_f32(f32(-1f) * -151f)), var_1.d, Struct_1(vec2<u32>(var_1.b.a.x, 4294967295u))), !global3.b, (0i <= select(global3.c.x, 6562i, global1[_wgslsmith_index_u32(27174u, 31u)])) | (_wgslsmith_div_f32(-1751f, global0[_wgslsmith_index_u32(var_1.a.a.x, 20u)]) < _wgslsmith_f_op_f32(floor(var_1.c.x)))).a);
    return 332f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(~min(global3.a.a.x, 0u) < global3.a.a.x, !select(firstLeadingBit(0i) < (global3.c.x ^ 40123i), any(vec2<bool>(global3.b, false)), !all(vec4<bool>(true, global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], false, global1[_wgslsmith_index_u32(115398u, 31u)]))), -683f >= _wgslsmith_f_op_f32(func_1()), true);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global3.a.a, firstLeadingBit(~global3.a.a)), vec2<u32>(~firstTrailingBit(0u), 1u)) << (abs(~(global3.a.a.x & _wgslsmith_div_u32(global3.a.a.x, global3.a.a.x))) % 32u), 20u)];
    var var_2 = Struct_2(Struct_1(~(~select(global3.a.a, vec2<u32>(0u, global3.a.a.x), global1[_wgslsmith_index_u32(58188u, 31u)]))), global3.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], 766f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], global0[_wgslsmith_index_u32(13498u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]) + vec3<f32>(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], global0[_wgslsmith_index_u32(52622u, 20u)], 454f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], 1026f)), vec3<f32>(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], global0[_wgslsmith_index_u32(22360u, 20u)], global0[_wgslsmith_index_u32(global3.a.a.x, 20u)])))))), var_0.zwy, func_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(global3.a.a.x), 20u)]), Struct_2(Struct_1(vec2<u32>(global3.a.a.x, 0u)), Struct_1(~global3.a.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(311f, global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], 930f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(4660u, 20u)], global0[_wgslsmith_index_u32(114847u, 20u)], global0[_wgslsmith_index_u32(2248u, 20u)]), vec3<f32>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)])))), func_3(func_2(global0[_wgslsmith_index_u32(global3.a.a.x, 20u)], Struct_2(global3.a, global3.a, vec3<f32>(-1363f, -177f, global0[_wgslsmith_index_u32(1u, 20u)]), var_0.xzy, global3.a), global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], false)), global3.a), any(!var_0), false).a);
    var var_3 = _wgslsmith_sub_vec2_i32(abs(vec2<i32>(0i, _wgslsmith_mod_i32(u_input.a.x, ~global2[_wgslsmith_index_u32(41597u, 30u)]))), -_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(global3.c.x, u_input.b.x)), select(u_input.a, global3.c.zw, var_2.d.yz)) & (~global3.c.yw | reverseBits(u_input.b.xz)));
    global2 = array<i32, 30>();
    let var_4 = Struct_2(func_2(_wgslsmith_f_op_f32(max(-1000f, global0[_wgslsmith_index_u32(58753u, 20u)])), Struct_2(Struct_1(~var_2.b.a), func_2(_wgslsmith_f_op_f32(floor(-909f)), Struct_2(var_2.b, global3.a, vec3<f32>(1441f, global0[_wgslsmith_index_u32(4294967295u, 20u)], var_2.c.x), vec3<bool>(var_0.x, true, false), Struct_1(global3.a.a)), global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], all(var_0.yzw)).a, _wgslsmith_f_op_vec3_f32(var_2.c * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, -913f, var_2.c.x) * var_2.c)), select(select(var_2.d, var_2.d, var_0.xyx), vec3<bool>(global1[_wgslsmith_index_u32(var_2.e.a.x, 31u)], true, global1[_wgslsmith_index_u32(9931u, 31u)]), false), Struct_1(vec2<u32>(35608u, var_2.b.a.x))), true, true).a, func_2(-1899f, Struct_2(Struct_1(global3.a.a), Struct_1(func_2(var_2.c.x, Struct_2(Struct_1(vec2<u32>(4294967295u, var_2.b.a.x)), Struct_1(global3.a.a), vec3<f32>(-242f, 851f, var_2.c.x), vec3<bool>(false, var_0.x, false), global3.a), false, var_0.x).a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_2.c.x, var_2.c.x) + vec3<f32>(-1005f, var_2.c.x, -113f)), var_2.d, Struct_1(~vec2<u32>(var_2.a.a.x, 23880u))), !global3.b, global3.b).a, vec3<f32>(_wgslsmith_f_op_f32(max(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 20u)] * 116f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-706f - -286f))), select(select(var_2.d, vec3<bool>(global3.b, true, var_0.x), any(var_0)), vec3<bool>(true, (40895i & u_input.a.x) <= _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(12879u, 30u)], global2[_wgslsmith_index_u32(31000u, 30u)]), 1f >= _wgslsmith_f_op_f32(358f + global0[_wgslsmith_index_u32(global3.a.a.x, 20u)])), global3.b & var_2.d.x), Struct_1(global3.a.a));
    let var_5 = -144f;
    let var_6 = max(_wgslsmith_mod_u32(var_4.b.a.x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(2957u, 4294967295u, var_4.b.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(47162u, 34737u, 26971u), vec3<u32>(12112u, 31431u, 69836u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.a.x, var_4.e.a.x, 53415u), vec3<u32>(var_4.b.a.x, var_2.e.a.x, 15618u)))), ~(~0u));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.a.a.x, abs(~global3.a.a.x), 28278u, 0u), vec4<u32>(~(~var_2.e.a.x), 26376u, 1u, _wgslsmith_add_u32(abs(var_4.b.a.x), var_4.e.a.x)), vec4<u32>(~_wgslsmith_mult_u32(10693u, 46942u), ~firstLeadingBit(22013u), 70575u, var_6)), vec4<i32>(u_input.b.x, 4611i, _wgslsmith_mult_i32(u_input.a.x, firstTrailingBit(-1i)), _wgslsmith_add_i32(abs(-2147483647i), u_input.b.x)), ~(-(-77442i << (var_6 % 32u))) ^ ~_wgslsmith_clamp_i32(select(var_3.x, global2[_wgslsmith_index_u32(4294967295u, 30u)], false), i32(-1i) * -2147483647i, var_3.x & global3.c.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1653f, var_2.c.x, -690f, -1600f), vec4<f32>(-205f, 124f, -731f, var_5)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(96726u, 20u)], var_2.c.x, global0[_wgslsmith_index_u32(var_4.a.a.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0[_wgslsmith_index_u32(36648u, 20u)], -1024f, global0[_wgslsmith_index_u32(4033u, 20u)]) - vec4<f32>(-422f, var_4.c.x, -978f, global0[_wgslsmith_index_u32(var_4.b.a.x, 20u)]))))))));
}

