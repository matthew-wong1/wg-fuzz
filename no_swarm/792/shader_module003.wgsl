struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    let var_0 = -abs(~0i);
    var var_1 = 1u >> (~(~1u) % 32u);
    var_1 = ~(~4294967295u);
    global0 = array<vec2<bool>, 24>();
    var var_2 = vec3<bool>(true, arg_0, _wgslsmith_sub_i32(_wgslsmith_sub_i32(~1i, _wgslsmith_mult_i32(-27038i, var_0)), -24524i) >= 21213i);
    return select(select(true, true, true), true, all(vec4<bool>(any(global0[_wgslsmith_index_u32(u_input.c, 24u)]), all(vec4<bool>(arg_2.a.x, var_2.x, arg_0, false)), arg_2.a.x | any(arg_2.a.yww), var_2.x)));
}

fn func_2() -> Struct_1 {
    return Struct_1(select(!vec4<bool>(true, func_3(false, vec4<bool>(false, false, true, false), Struct_1(vec4<bool>(false, true, false, false))), select(true, false, true), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), all(global0[_wgslsmith_index_u32(~u_input.a, 24u)]), true, true), !vec4<bool>(true, true, true, func_3(true, vec4<bool>(false, false, true, true), Struct_1(vec4<bool>(false, true, true, false))))));
}

fn func_1() -> vec2<u32> {
    let var_0 = func_2();
    let var_1 = ~(~(~vec2<u32>(~22312u, _wgslsmith_add_u32(u_input.a, u_input.b))));
    let var_2 = func_2();
    global0 = array<vec2<bool>, 24>();
    let var_3 = func_2();
    return vec2<u32>(600u, 4689u);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = any(vec3<bool>(arg_3.a.x, 112f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1202f * 845f) + _wgslsmith_f_op_f32(step(873f, -913f))), all(arg_3.a)));
    global0 = array<vec2<bool>, 24>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(339f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(-1211f, -2026f))))), -313f) * vec2<f32>(-962f, _wgslsmith_div_f32(1537f, -1692f)));
    global0 = array<vec2<bool>, 24>();
    let var_2 = arg_1;
    return Struct_1(arg_1.a);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = abs(arg_1);
    let var_1 = func_4(select(global0[_wgslsmith_index_u32(919u, 24u)], func_2().a.zy, !(true && func_4(global0[_wgslsmith_index_u32(5814u, 24u)], Struct_1(vec4<bool>(false, false, true, true)), vec2<u32>(u_input.d, u_input.d), Struct_1(arg_2.a)).a.x)), arg_2, vec2<u32>(_wgslsmith_add_u32(42654u, 35561u) >> (select(21649u, u_input.b, arg_2.a.x) % 32u), func_1().x) & ~func_1(), arg_2);
    return any(arg_0.a) && true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(func_5(func_4(vec2<bool>(false, true), Struct_1(vec4<bool>(false, false, true, false)), func_1(), Struct_1(vec4<bool>(true, false, false, false))), -countOneBits(2147483647i), Struct_1(vec4<bool>(true, true, false, true))), true));
    var_0 = !(!any(select(global0[_wgslsmith_index_u32(u_input.d >> (u_input.c % 32u), 24u)], global0[_wgslsmith_index_u32(1u, 24u)], true)));
    var var_1 = vec2<i32>(1i, -(~_wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(2147483647i, 25306i)))));
    var_1 = vec2<i32>(-185i, var_1.x << (~(~countOneBits(7993u)) % 32u));
    let var_2 = var_1.x;
    var_1 = vec2<i32>(40421i, var_1.x);
    var var_3 = min(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(-2147483647i, 2462i)), vec2<i32>(2147483647i, var_1.x)), var_1.x), var_1.x), ~firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -36829i) >> (vec2<u32>(u_input.d, u_input.b) % vec2<u32>(32u)), reverseBits(vec2<i32>(var_1.x, -22093i)))));
    var var_4 = false;
    var var_5 = Struct_1(func_4(select(global0[_wgslsmith_index_u32(~(u_input.d << (u_input.d % 32u)), 24u)], vec2<bool>(true, true), true), Struct_1(select(vec4<bool>(true, true, true, false), func_4(vec2<bool>(false, true), Struct_1(vec4<bool>(true, true, false, false)), vec2<u32>(11742u, 0u), Struct_1(vec4<bool>(false, false, true, true))).a, vec4<bool>(true, false, false, false))), ~reverseBits(~vec2<u32>(38580u, u_input.a)), Struct_1(vec4<bool>(true, true, true, false))).a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~abs(4294967295u)), 12414i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3104f, -3385f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-657f, 1000f), vec2<f32>(1063f, -1221f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(251f, -1006f), vec2<f32>(-580f, 977f), var_5.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(605f, -1101f), vec2<f32>(-1076f, -765f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-348f, -653f), vec2<f32>(-1109f, -1202f), var_5.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-456f, -1527f)))), !vec2<bool>(true, var_5.a.x))), -_wgslsmith_mod_i32(~39304i, ~0i ^ (var_1.x | 1i)), _wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.a, 31997u) ^ vec3<u32>(u_input.b, u_input.c, 0u), firstTrailingBit(vec3<u32>(66708u, 550u, u_input.c)), min(vec3<u32>(0u, u_input.a, 26940u), vec3<u32>(68536u, 61348u, 134916u))), _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 18737u), vec3<u32>(u_input.d, 4294967295u, 45332u)), vec3<u32>(u_input.b, 1u, 8521u) << (~vec3<u32>(u_input.a, u_input.c, 1u) % vec3<u32>(32u)))));
}

