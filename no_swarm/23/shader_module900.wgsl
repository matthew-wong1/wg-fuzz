struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = firstLeadingBit(u_input.a);
    var var_1 = 366f;
    global0 = array<i32, 24>();
    let var_2 = true;
    return 1i;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = vec2<i32>(_wgslsmith_add_i32(func_3(true, arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)), Struct_1(vec2<bool>(arg_2.a.x, true), _wgslsmith_f_op_vec2_f32(arg_3 * arg_2.b))), ~(-select(54236i, -1i, arg_1.x))), _wgslsmith_mult_i32(max(-_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]), global0[_wgslsmith_index_u32(0u, 24u)]), ~(~25194i)));
    var_0 = arg_2.a.x;
    var var_2 = _wgslsmith_f_op_f32(trunc(-103f));
    var_0 = -435f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.x + 1000f), arg_2.b.x))));
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(285f, arg_2.b.x, arg_1.a.x)), -1023f, !arg_1.a.x)), _wgslsmith_f_op_f32(sign(-1564f)))))));
    let var_1 = func_2(~_wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.a, 66247u)), u_input.b), vec2<bool>(false, arg_2.a.x | any(select(vec3<bool>(arg_1.a.x, false, arg_1.a.x), vec3<bool>(arg_1.a.x, arg_1.a.x, false), false))), func_2(firstTrailingBit(~(~u_input.b)), !select(arg_1.a, vec2<bool>(false, false), arg_2.a.x), func_2(_wgslsmith_mod_vec2_u32(~u_input.b, vec2<u32>(25484u, 63248u) | vec2<u32>(u_input.b.x, u_input.a)), arg_1.a, arg_1, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.b.x, arg_1.b.x), arg_2.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-321f, -316f)));
    global0 = array<i32, 24>();
    var var_2 = vec2<i32>(-global0[_wgslsmith_index_u32(~u_input.b.x, 24u)], _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~(-32014i), _wgslsmith_clamp_i32(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 24u)]), _wgslsmith_div_i32(-20006i, 53849i)) << (firstTrailingBit(min(u_input.a, u_input.b.x)) % 32u), ~(-arg_0 & -arg_0)));
    let var_3 = select(abs(_wgslsmith_add_vec3_u32(abs(~vec3<u32>(u_input.a, 4294967295u, u_input.b.x)), vec3<u32>(1u, 62264u, u_input.a) | _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 26701u), vec3<u32>(40020u, 50325u, u_input.b.x)))), abs(vec3<u32>(u_input.a, min(~140675u, ~u_input.b.x), 106416u >> (~u_input.a % 32u))), vec3<bool>(false, false, true));
    return Struct_1(!select(arg_2.a, var_1.a, select(select(var_1.a, arg_1.a, vec2<bool>(true, true)), func_2(var_3.zx, var_1.a, Struct_1(vec2<bool>(false, true), vec2<f32>(arg_1.b.x, 1371f)), vec2<f32>(207f, -486f)).a, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1438f, var_1.b.x))))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a.x;
    var var_1 = _wgslsmith_add_u32(u_input.a, u_input.a);
    var var_2 = arg_0;
    var var_3 = arg_0.a.x;
    let var_4 = Struct_1(var_2.a, arg_0.b);
    return var_4;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(1109f));
    global0 = array<i32, 24>();
    var var_1 = !((var_0 != 1f) && all(vec4<bool>(all(vec4<bool>(true, true, false, true)), true, true, any(vec2<bool>(true, false)))));
    let var_2 = func_5(func_4(21233i, func_2(u_input.b, select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec2<bool>(false, false))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(133f, -572f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1175f, 740f)) + vec2<f32>(var_0, var_0))), func_2(abs(u_input.b) & _wgslsmith_clamp_vec2_u32(vec2<u32>(5558u, 1u), vec2<u32>(arg_1, 3885u), vec2<u32>(arg_1, arg_1)), !func_2(vec2<u32>(46362u, 1u), vec2<bool>(false, true), Struct_1(vec2<bool>(false, false), vec2<f32>(-1284f, 234f)), vec2<f32>(229f, 1796f)).a, func_2(~vec2<u32>(u_input.b.x, arg_1), vec2<bool>(true, true), Struct_1(vec2<bool>(true, false), vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1827f, var_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1872f, -1378f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 207f))))));
    global0 = array<i32, 24>();
    return func_2(~u_input.b, var_2.a, func_2(vec2<u32>(firstLeadingBit(arg_1), reverseBits(u_input.b.x)), !(!(!vec2<bool>(var_2.a.x, false))), Struct_1(vec2<bool>(true, func_2(vec2<u32>(1u, 4294967295u), var_2.a, Struct_1(vec2<bool>(true, true), var_2.b), var_2.b).a.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(var_2.b))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(var_2.b, vec2<f32>(-309f, -924f)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.b, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1344f, var_0)))) * var_2.b));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    let var_0 = Struct_1(!(!(!(!arg_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, -1122f))))));
    var var_1 = Struct_1(!func_2(select(select(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), true), ~vec2<u32>(u_input.a, u_input.b.x), !arg_0.a), !arg_0.a, func_2(u_input.b, func_4(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], arg_0, Struct_1(var_0.a, vec2<f32>(-1541f, 953f))).a, Struct_1(vec2<bool>(arg_2.a.x, var_0.a.x), vec2<f32>(636f, arg_1)), vec2<f32>(-646f, 1196f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.b)))).a, arg_0.b);
    let var_2 = func_5(Struct_1(!vec2<bool>(var_1.a.x, true), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1409f, -1000f)), _wgslsmith_f_op_f32(-var_1.b.x)), arg_2.b)));
    let var_3 = min(min(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~u_input.a) & _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a), vec2<u32>(1u, 3790u)), 24u)], _wgslsmith_add_i32(_wgslsmith_add_i32(arg_3, -42924i), -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 8128i), vec4<i32>(2147483647i, 27200i, 33446i, global0[_wgslsmith_index_u32(u_input.a, 24u)])), global0[_wgslsmith_index_u32(0u, 24u)]), ~_wgslsmith_clamp_i32(-1i, arg_3, 1i)), ~(-min(vec3<i32>(4706i, global0[_wgslsmith_index_u32(33514u, 24u)], arg_3), vec3<i32>(arg_3, arg_3, arg_3)))));
    var_1 = Struct_1(var_1.a, var_1.b);
    return vec2<bool>(var_1.a.x, arg_2.a.x);
}

fn func_7(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_5(Struct_1(!arg_2.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.b.x, -2214f))))).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f) + _wgslsmith_f_op_f32(arg_2.b.x * 246f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.b.x)), arg_2.b.x))) * 257f);
    let var_1 = arg_1;
    global0 = array<i32, 24>();
    let var_2 = Struct_1(vec2<bool>(var_1, firstLeadingBit(2147483647i) <= _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(~arg_0.x, 24u)], _wgslsmith_div_i32(-50049i, 34798i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_2.b))));
    global0 = array<i32, 24>();
    return StorageBuffer(vec4<u32>(~1u, arg_3.x & (arg_3.x >> (arg_3.x % 32u)), arg_0.x, arg_3.x) | vec4<u32>(max(56619u, _wgslsmith_sub_u32(0u, 0u)), 13737u, _wgslsmith_mult_u32(u_input.a ^ arg_0.x, 1u), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(u_input.b, true | any(vec4<bool>(true, true, true, true)), Struct_1(!func_6(func_1(-40383i, 2923u), _wgslsmith_div_f32(-2219f, 480f), func_5(Struct_1(vec2<bool>(false, true), vec2<f32>(630f, -701f))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 24u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1089f, _wgslsmith_f_op_f32(f32(-1f) * -1112f)))), ~abs(~max(vec2<u32>(u_input.b.x, 872u), vec2<u32>(11109u, 4294967295u))));
}

