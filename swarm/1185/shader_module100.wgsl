struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 30> = array<f32, 30>(2252f, -866f, -885f, 1595f, 1000f, -547f, -589f, 353f, 1830f, 463f, 1503f, -1061f, -1036f, -426f, -929f, 172f, -1589f, 127f, 1000f, 335f, 1000f, -1158f, -1000f, 561f, -528f, 250f, -691f, -428f, 954f, 346f);

var<private> global2: vec3<bool>;

var<private> global3: array<vec4<i32>, 28>;

var<private> global4: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = Struct_1(select(select(vec3<bool>(true, true, all(vec4<bool>(global2.x, true, global2.x, true))), vec3<bool>(global2.x, global2.x, true), global2.x), vec3<bool>(all(vec2<bool>(true, true)), global2.x, global2.x), global2.x));
    let var_1 = select(vec4<bool>((-1i < (u_input.c >> (11571u % 32u))) | all(vec3<bool>(false, global2.x, global2.x)), global2.x, abs(1u) <= arg_0.b.x, !((i32(-1i) * -2147483647i) > _wgslsmith_mult_i32(0i, u_input.c))), select(vec4<bool>(!global2.x, !(false & global2.x), true, all(!var_0.a.yy)), select(select(vec4<bool>(true, var_0.a.x, global2.x, false), vec4<bool>(true, false, var_0.a.x, false), select(vec4<bool>(false, var_0.a.x, global2.x, var_0.a.x), vec4<bool>(true, true, global2.x, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, true))), !select(vec4<bool>(var_0.a.x, global2.x, true, true), vec4<bool>(var_0.a.x, false, var_0.a.x, global2.x), vec4<bool>(false, true, false, true)), true), select(!(!vec4<bool>(true, false, var_0.a.x, var_0.a.x)), !vec4<bool>(var_0.a.x, true, false, global2.x), vec4<bool>(any(global2.yz), true || var_0.a.x, global2.x || false, global2.x & true))), any(vec3<bool>(all(!var_0.a), select(true, true, true), true)));
    global2 = vec3<bool>(true, var_1.x, any(!vec4<bool>(!var_1.x, true, var_1.x, any(vec2<bool>(false, true)))));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-102f))))) * global1[_wgslsmith_index_u32(~(~(~arg_0.b.x)), 30u)]));
    var var_2 = -146f;
    return arg_0.b;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), 884f)), func_3(Struct_3(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(f32(-1f) * -353f)), max(~vec4<u32>(u_input.e, 55711u, 4294967295u, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.e, u_input.a.x, 0u)), arg_1)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -749f)));
    let var_1 = ~max(~vec3<i32>(-2147483647i, 2147483647i, -66415i), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(-9466i, u_input.c, u_input.c), vec3<i32>(64418i, u_input.d.x, -1i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1283f + global1[_wgslsmith_index_u32(var_0.b.x, 30u)]) * _wgslsmith_f_op_f32(f32(-1f) * -1745f))));
    var_0 = Struct_3(1918f, var_0.b, Struct_2(-975f));
    var var_3 = Struct_1(vec3<bool>(all(select(select(vec2<bool>(true, global2.x), vec2<bool>(arg_0, false), vec2<bool>(global2.x, arg_0)), !global2.zz, select(global2.xz, global2.yx, global2.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a * global0.a))) > global0.a, false));
    return ~(~(-1i));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(abs(18995u), reverseBits(reverseBits(min(1u, 43697u)))), _wgslsmith_sub_u32(arg_0.x, u_input.a.x) << (u_input.a.x % 32u));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(747f))), vec4<u32>(_wgslsmith_clamp_u32(1463u, 1u, var_0.x), 0u, u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a, func_3(Struct_3(global0.a, vec4<u32>(39113u, 4294967295u, arg_0.x, u_input.e), Struct_2(arg_3.x))).zyx) | ~89146u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a)))));
    let var_2 = var_1.b;
    let var_3 = Struct_2(826f);
    var var_4 = var_1.b;
    return vec3<bool>(global2.x, true, true);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = vec4<bool>(global2.x, false, all(vec2<bool>(global2.x, false)), !(!(true & (global0.a < arg_0.a))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(10192u, 30u)], -2038f), vec2<f32>(arg_0.a, arg_2.a)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, -1093f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-778f, arg_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(20564u, 30u)], -1009f))), !all(var_0.zz)))));
    global2 = select(select(func_4(~u_input.a.yz, _wgslsmith_add_i32(u_input.c, func_2(var_0.x, arg_2.c)), vec3<f32>(_wgslsmith_div_f32(arg_2.a, 229f), arg_2.a, _wgslsmith_f_op_f32(step(417f, global0.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, 436f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.a, arg_2.a) + vec2<f32>(arg_0.a, arg_0.a)))), func_4(~firstTrailingBit(vec2<u32>(1u, 0u)), 9350i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(600f, 1000f, global0.a), vec3<f32>(arg_0.a, -915f, arg_0.a)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.c.a, arg_0.a)))))), !any(select(var_0.www, var_0.wxx, var_0.xzw))), !(!(!var_0.xxx)), arg_2.b.x < 22075u);
    global3 = array<vec4<i32>, 28>();
    global3 = array<vec4<i32>, 28>();
    return select(vec3<u32>(29588u, 1u, firstLeadingBit(arg_1.x)), vec3<u32>(~arg_2.b.x, abs(_wgslsmith_clamp_u32(arg_2.b.x & 1u, 1u, func_3(arg_2).x)), arg_2.b.x), u_input.a.x > ~arg_1.x);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_1(vec3<bool>(global2.x, !any(func_4(vec2<u32>(1u, u_input.a.x), -25442i, vec3<f32>(655f, 400f, 1070f), vec2<f32>(global0.a, arg_2))), arg_0.x));
    var var_1 = true || global2.x;
    var_1 = global2.x;
    global0 = Struct_2(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~u_input.e, 30u)], _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(1u, 30u)], -1342f))));
    var var_2 = arg_1;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.e, max(0u, 23536u)), 30u)]), _wgslsmith_f_op_f32(439f - -390f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f))));
    let var_1 = u_input.a;
    let var_2 = !select(func_5(!(!global2.zx), Struct_1(vec3<bool>(true, global2.x, false)), -2098f, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.c, u_input.c), vec3<i32>(2147483647i, u_input.b, 0i)) >> (func_1(Struct_2(var_0.x), vec3<u32>(var_1.x, u_input.a.x, u_input.a.x), Struct_3(-219f, vec4<u32>(0u, var_1.x, 51262u, u_input.a.x), Struct_2(1072f))) % vec3<u32>(32u))), vec3<bool>(u_input.d.x == -8652i, global2.x, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_1.x, 30u)])) <= -3088f), all(!vec2<bool>(global2.x, global2.x)));
    let var_3 = var_0;
    global4 = -_wgslsmith_dot_vec4_i32(~(-global3[_wgslsmith_index_u32(var_1.x >> (u_input.e % 32u), 28u)]), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, 2147483647i, 75276i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, -1i, -2147483647i, u_input.d.x), global3[_wgslsmith_index_u32(58644u, 28u)])), firstLeadingBit(_wgslsmith_clamp_vec4_i32(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)], vec4<i32>(-80806i, u_input.c, -2147483647i, 0i)))));
    var var_4 = 4294967295u;
    global2 = var_2;
    let var_5 = Struct_2(2625f);
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec4_i32(countOneBits(-vec4<i32>(u_input.c, -41530i, 6665i, 0i)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.yx, vec2<u32>(59606u, var_1.x)), 28u)] | firstLeadingBit(global3[_wgslsmith_index_u32(91672u, 28u)]), global3[_wgslsmith_index_u32(~0u, 28u)] << (vec4<u32>(u_input.e, var_1.x, 100697u, u_input.e) % vec4<u32>(32u)))), -1000f, var_1.zy);
}

