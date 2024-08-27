struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = 1i;
    var var_1 = min(~var_0, 1i);
    var var_2 = true;
    var var_3 = select(all(vec4<bool>(!(arg_0 >= arg_0), false, true, true)), select(!any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), true, ~var_0 <= var_0), -var_0 != 13943i);
    var var_4 = Struct_1(global0.a);
    return arg_2;
}

fn func_3(arg_0: u32) -> f32 {
    global0 = Struct_1(_wgslsmith_div_u32(~(~arg_0), 60606u));
    let var_0 = func_1(_wgslsmith_f_op_f32(floor(750f)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(27383u, u_input.a.x), vec2<u32>(56740u, global0.a)), abs(min(u_input.a.xz, vec2<u32>(arg_0, u_input.a.x)))), Struct_1(9846u), ~(~abs(1u)));
    var var_1 = Struct_1(~abs(1u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-977f, _wgslsmith_f_op_f32(min(-936f, 934f)), 1029f, -236f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(758f, -1000f, 828f, 772f) * vec4<f32>(841f, -629f, -222f, 1131f))))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, 764f, var_2.x, 846f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 926f, 145f, var_2.x) - vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-831f, var_2.x, 1316f, var_2.x))))))), select(all(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)))))));
    return 451f;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_1 {
    global0 = func_1(165f, countOneBits(~(_wgslsmith_dot_vec3_u32(arg_2.yyx, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) ^ ~7337u)), func_1(_wgslsmith_f_op_f32(func_3(min(1u, arg_0) >> (_wgslsmith_div_u32(arg_2.x, arg_2.x) % 32u))), global0.a, Struct_1(u_input.a.x), _wgslsmith_add_u32(37187u, func_1(765f, ~57421u, Struct_1(9963u), _wgslsmith_mult_u32(59715u, 1u)).a)), u_input.a.x);
    let var_0 = vec3<u32>(~arg_2.x, _wgslsmith_sub_u32(~u_input.a.x, firstLeadingBit(countOneBits(24379u))), ~4294967295u);
    let var_1 = Struct_1(var_0.x);
    var var_2 = arg_1.x;
    let var_3 = var_1;
    return func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-343f))))), ~abs(_wgslsmith_sub_u32(4294967295u, ~4294967295u)), var_1, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(530f, countOneBits(67024u) << (firstLeadingBit(~(~u_input.a.x)) % 32u), Struct_1(~44512u), _wgslsmith_div_u32(1u, u_input.a.x));
    let var_0 = vec2<u32>(~62007u, reverseBits(global0.a));
    global0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * 1f)), func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_clamp_u32(37129u, 4294967295u ^ global0.a, global0.a), func_2(u_input.a.x, vec3<bool>(true, true, true), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(40616u, var_0.x, var_0.x, global0.a), vec4<u32>(4294967295u, 48410u, global0.a, var_0.x), vec4<u32>(u_input.a.x, 20419u, var_0.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.x, 27711u, var_0.x), vec4<u32>(0u, 4294967295u, global0.a, 21226u)))), global0.a).a, Struct_1(~(~1u)), ~355u | u_input.a.x);
    global0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-510f - _wgslsmith_div_f32(1363f, -1649f)))), ~u_input.a.x, func_1(_wgslsmith_f_op_f32(f32(-1f) * -316f), ~reverseBits(~0u), Struct_1(global0.a), func_2(global0.a, vec3<bool>(true, true, true), vec4<u32>(129u, var_0.x, var_0.x, max(4666u, 75028u))).a), 0u);
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-11231i, 0i, -20173i), _wgslsmith_mult_vec3_i32(vec3<i32>(8182i, -1i, 22326i), vec3<i32>(0i, 0i, 1i)))), ~(-(~select(1i, 1i, false))));
    let var_2 = _wgslsmith_mod_i32(-((_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(-19272i, 2147483647i, -1i, 1i)) & _wgslsmith_dot_vec2_i32(vec2<i32>(63546i, 32458i), vec2<i32>(-32468i, -15470i))) & firstTrailingBit(~(-39552i))), 43837i);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) - -788f), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2794f) * -727f))), _wgslsmith_f_op_f32(-984f * -1757f), -1474f);
    global0 = Struct_1(0u);
    global0 = Struct_1(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2, -2147483647i), vec2<i32>(var_2, var_2), vec2<i32>(var_2, var_2)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -275f)))));
}

