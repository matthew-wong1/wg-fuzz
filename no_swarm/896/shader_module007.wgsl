struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(0i, 1i, 1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: f32) -> bool {
    var var_0 = Struct_1(-global0.a);
    var_0 = Struct_1(var_0.a);
    var var_1 = arg_3;
    let var_2 = arg_0;
    global0 = Struct_1(_wgslsmith_sub_vec3_i32(var_0.a, abs(firstTrailingBit(select(vec3<i32>(104417i, var_0.a.x, 2147483647i), vec3<i32>(global0.a.x, arg_1, 0i), vec3<bool>(false, false, false))))));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_div_i32(16723i, -1i), ~arg_0.a.x, global0.a.x));
    let var_1 = func_3(~(~select(u_input.a.x ^ 46536u, 96458u, all(vec2<bool>(false, true)))), arg_0.a.x, true, _wgslsmith_f_op_f32(f32(-1f) * -217f));
    let var_2 = _wgslsmith_div_u32((u_input.a.x << ((abs(0u) >> (0u % 32u)) % 32u)) ^ _wgslsmith_mod_u32(abs(~u_input.a.x), 0u), 20130u);
    global0 = Struct_1(-(~_wgslsmith_clamp_vec3_i32(global0.a, vec3<i32>(var_0.a.x, 0i, global0.a.x), vec3<i32>(arg_0.a.x, global0.a.x, -238i))) & _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.x, arg_1, arg_1) & vec3<i32>(-2147483647i, 2147483647i, arg_0.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.x, var_0.a.x, arg_1), arg_0.a)), vec3<i32>(arg_1, i32(-1i) * -1656i, ~global0.a.x)));
    var var_3 = select(select(select(vec4<bool>(any(vec2<bool>(false, var_1)), false, var_1, !var_1), select(vec4<bool>(false, var_1, var_1, false), select(vec4<bool>(true, false, var_1, true), vec4<bool>(var_1, var_1, true, var_1), var_1), vec4<bool>(var_1, var_1, var_1, true)), !(!vec4<bool>(var_1, false, false, var_1))), vec4<bool>(true != var_1, true, false, all(select(vec4<bool>(true, var_1, true, false), vec4<bool>(var_1, var_1, false, var_1), var_1))), vec4<bool>(true, all(vec3<bool>(var_1, false, false)), true, !any(vec3<bool>(var_1, true, false)))), vec4<bool>(!(select(true, var_1, false) & var_1), all(vec4<bool>(!var_1, true, var_1, var_1)), false, any(select(select(vec2<bool>(var_1, true), vec2<bool>(false, false), var_1), vec2<bool>(true, true), select(vec2<bool>(false, var_1), vec2<bool>(true, true), vec2<bool>(var_1, false))))), !(!(!select(vec4<bool>(var_1, false, true, true), vec4<bool>(var_1, true, true, false), vec4<bool>(false, var_1, false, var_1)))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    var var_0 = vec2<i32>(abs(_wgslsmith_dot_vec3_i32(-max(vec3<i32>(arg_1.x, -24282i, -24541i), vec3<i32>(-1i, -38320i, arg_0.a.x)), arg_0.a)), func_2(Struct_1(vec3<i32>(2147483647i, _wgslsmith_div_i32(2147483647i, arg_0.a.x), 7629i)), ~(-global0.a.x)).a.x);
    let var_1 = u_input.a.x;
    let var_2 = func_2(arg_0, global0.a.x);
    return all(select(select(vec4<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(false, true, true)), all(vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, any(vec3<bool>(false, false, false)), true), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, false), true), true)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = -1496f;
    let var_1 = vec4<bool>(func_4(func_2(Struct_1(vec3<i32>(1i, 20495i, global0.a.x)), -1i), vec2<i32>(global0.a.x, i32(-1i) * -95769i)), !(!all(vec4<bool>(true, true, false, true))), false, all(!vec4<bool>(arg_0.x == u_input.a.x, true, true, true)));
    var var_2 = vec4<i32>(global0.a.x, -56953i, global0.a.x, global0.a.x);
    var var_3 = var_2.x;
    let var_4 = func_2(func_2(func_2(func_2(Struct_1(global0.a), var_2.x), var_2.x), select(2147483647i, var_2.x, true)), 24654i);
    return Struct_1(var_4.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, any(vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true))), vec2<bool>(any(vec3<bool>(u_input.a.x >= 4294967295u, true, true)), all(vec3<bool>(true, true, true))), vec2<bool>(true, true));
    var var_1 = true && var_0.x;
    global0 = func_1(_wgslsmith_clamp_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 17109u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, 6430u))), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u) | ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 20890u, u_input.a.x, 49770u) >> (countOneBits(vec4<u32>(63783u, 2682u, 6854u, 56149u)) % vec4<u32>(32u))) & (vec4<u32>(1u, 4294967295u >> (0u % 32u), ~13777u, u_input.a.x) << (_wgslsmith_mult_vec4_u32(max(vec4<u32>(79022u, u_input.a.x, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x)), ~vec4<u32>(24306u, u_input.a.x, 0u, u_input.a.x)) % vec4<u32>(32u))));
    var var_2 = func_2(func_1(vec4<u32>(_wgslsmith_add_u32(~4294967295u, ~u_input.a.x), 40093u, ~(~74024u), 1u)), -1i);
    var var_3 = min(vec4<u32>(u_input.a.x << (~abs(6501u) % 32u), ~u_input.a.x | ~1u, ~(~0u), 12600u), vec4<u32>(2202u, 34007u, u_input.a.x, u_input.a.x));
    let var_4 = _wgslsmith_div_f32(-437f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1359f)))));
    var var_5 = -_wgslsmith_mult_vec3_i32(-vec3<i32>(var_2.a.x, var_2.a.x, -49661i) ^ abs(global0.a), ~(-vec3<i32>(-44567i, var_2.a.x, -10886i)));
    let var_6 = vec3<i32>(var_2.a.x, _wgslsmith_mod_i32(1i, ~(-14625i)), 1i);
    let var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_4)), _wgslsmith_f_op_f32(var_4 + var_4), _wgslsmith_f_op_f32(step(322f, 754f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1047f, var_4, -1005f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, var_4, -1268f))))), vec3<u32>(_wgslsmith_add_u32(countOneBits(8925u), u_input.a.x), 19224u, min(43113u, abs(u_input.a.x))) | vec3<u32>(var_3.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), reverseBits(var_3.x)), ~1u));
}

