struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, false, false), 113f, -244f, -1350f, vec4<i32>(0i, 11829i, 4871i, i32(-2147483648)));

var<private> global1: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(vec4<bool>(true, all(global0.a.zx), global0.a.x, -4457i != firstTrailingBit(~10847i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(881f - global0.b), _wgslsmith_f_op_f32(-global0.b)), -690f, true)), global0.c, !any(global0.a.zwx))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(global0.b * global0.b)), global0.d) - -1450f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(2273f, _wgslsmith_f_op_f32(1032f - -1775f))))), ~vec4<i32>(select(-global0.e.x, u_input.d, true), -1i, ~countOneBits(global0.e.x), global0.e.x));
    global1 = global0.e.x;
    let var_1 = true | (u_input.b <= reverseBits(max(reverseBits(u_input.a), ~4294967295u)));
    var var_2 = Struct_1(var_0.a, global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1494f + var_0.d))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + -1260f) * 1402f))), var_0.b, vec4<i32>(~2147483647i, 40602i, ~(~(-2147483647i ^ global0.e.x)), u_input.c.x >> (~u_input.b % 32u)));
    var var_3 = Struct_1(select(var_0.a, select(vec4<bool>(any(vec2<bool>(true, false)), !global0.a.x, true, global0.a.x), vec4<bool>(var_0.a.x & true, true, any(vec2<bool>(true, false)), any(var_0.a.wy)), vec4<bool>(true, !var_2.a.x, !var_0.a.x, true)), _wgslsmith_sub_u32(u_input.a, 21275u) == 4294967295u), -732f, _wgslsmith_f_op_f32(step(-450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-763f + -219f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d))), _wgslsmith_mod_vec4_i32(~(vec4<i32>(u_input.c.x, -57161i, u_input.c.x, -1i) >> ((vec4<u32>(27145u, 1u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(max(global0.e.x, var_2.e.x), var_0.e.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 0i, 1i), var_0.e.xzx), global0.e.zxw), ~var_2.e.x, 70290i)));
    return var_2.d;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = global0.d;
    let var_1 = _wgslsmith_f_op_f32(round(204f));
    var var_2 = select(global0.a, global0.a, false);
    var var_3 = Struct_1(!(!(!(!vec4<bool>(true, var_2.x, var_2.x, false)))), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c)))))), _wgslsmith_div_vec4_i32(select(global0.e, global0.e, global0.a.x), -vec4<i32>(firstTrailingBit(1i), -14074i, global0.e.x, 19059i)));
    var var_4 = vec3<u32>(29820u, 4294967295u, ~u_input.a) ^ ~(~vec3<u32>(20105u, arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, 0u, 16293u), vec4<u32>(arg_0.x, 0u, 56009u, 22449u))));
    return Struct_1(!(!select(!var_3.a, !var_3.a, select(false, var_2.x, true))), var_3.b, var_3.c, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c, _wgslsmith_div_f32(var_1, global0.d))), global0.a.x)), min(select(var_3.e & vec4<i32>(global0.e.x, 0i, arg_1, -15568i), firstLeadingBit(var_3.e), 2147483647i < global0.e.x) | global0.e, var_3.e));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> bool {
    var var_0 = func_2(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(22105u, _wgslsmith_clamp_u32(4294967295u, 0u, u_input.b), 1u, 4294967295u), ~(~vec4<u32>(u_input.a, arg_2.x, u_input.b, 0u)))), _wgslsmith_div_i32(-_wgslsmith_mult_i32(-60357i, global0.e.x << (1271u % 32u)), -1i));
    var var_1 = arg_0.d;
    var_0 = Struct_1(!arg_0.a, _wgslsmith_f_op_f32(func_3()), var_0.c, 246f, abs(global0.e));
    global0 = func_2(vec4<u32>(~u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 57117u, 0u), vec4<u32>(u_input.a, arg_2.x, 4294967295u, u_input.a)), 2580u ^ ~u_input.b, 40554u), u_input.d);
    let var_2 = func_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.a, 42377u, arg_2.x), vec4<u32>(~1u, _wgslsmith_mod_u32(u_input.a, 17467u), arg_2.x, arg_2.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(20020u, 7397u), ~arg_2), _wgslsmith_sub_u32(~u_input.a, u_input.b << (61981u % 32u)), u_input.b, u_input.b), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b, 1u), ~vec4<u32>(arg_2.x, 42183u, 0u, 7400u)), ~(vec4<u32>(1u, 5725u, u_input.a, 0u) ^ vec4<u32>(72966u, arg_2.x, arg_2.x, arg_2.x)))), firstTrailingBit(-1i)).a.x;
    return all(select(vec3<bool>(var_2, true, var_2), !var_0.a.xzy, true));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> i32 {
    var var_0 = Struct_1(vec4<bool>(func_4(func_2(vec4<u32>(u_input.a, 14226u, u_input.b, u_input.b), _wgslsmith_mult_i32(global0.e.x, 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1357f, -1687f) - vec2<f32>(-765f, 393f)) - vec2<f32>(global0.c, 108f)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(21578u, 97393u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1393f, -108f, 1865f, global0.c)), vec4<f32>(670f, global0.d, -109f, global0.d))), true, !all(global0.a.yyx), select(all(vec4<bool>(global0.a.x, arg_1, true, false)), true, !arg_1 || true)), global0.b, global0.b, global0.d, ~(-countOneBits(vec4<i32>(1011i, u_input.c.x, 2147483647i, global0.e.x))));
    let var_1 = func_2(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, 81627u, 4294967295u)), vec3<u32>(u_input.b, 1u, u_input.b)), 10127u, u_input.b, ~1u)), ~(~max(var_0.e.x, -3440i)));
    let var_2 = func_2(~vec4<u32>(abs(max(21934u, 0u)), _wgslsmith_sub_u32(reverseBits(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(30325u, 49786u, 98111u, u_input.a))), min(52435u, 1u | u_input.a), ~(~99900u)), ~global0.e.x);
    global0 = var_1;
    var var_3 = var_2;
    return _wgslsmith_mult_i32(countOneBits(-719i), _wgslsmith_mult_i32(arg_0.x >> (u_input.b % 32u), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec4<bool>(-1000f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b))), 1u != u_input.b, max(min(47561u, u_input.a), 67175u) < _wgslsmith_sub_u32(u_input.b, u_input.b), true), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b, global0.c))), _wgslsmith_f_op_f32(-1000f + global0.b), global0.e);
    var var_0 = Struct_1(vec4<bool>(select(!global0.a.x, true, !(!global0.a.x)), 0u >= u_input.b, !global0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-265f, -1629f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f - global0.b))), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b + 2301f), 1472f), 578f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * -1272f) + _wgslsmith_f_op_f32(-global0.b))), global0.e);
    var var_1 = Struct_1(select(select(vec4<bool>(global0.e.x == u_input.c.x, any(var_0.a.zzz), true, true), vec4<bool>(true, any(vec3<bool>(false, false, false)), global0.a.x, var_0.a.x), true), vec4<bool>(var_0.a.x, select(!global0.a.x, !global0.a.x, false), global0.a.x, !all(vec4<bool>(false, false, var_0.a.x, true))), !vec4<bool>(any(global0.a.zy), true, true, true)), _wgslsmith_div_f32(851f, -517f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-502f, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.b, 127f, select(global0.a.x, global0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(sign(global0.b))))), vec4<i32>(func_1(firstTrailingBit(u_input.c), global0.a.x), countOneBits(~(-2147483647i)), 1i, -_wgslsmith_clamp_i32(var_0.e.x, -1i, -1i)) | countOneBits(global0.e));
    var var_2 = -var_0.e;
    global1 = func_1(-(countOneBits(vec3<i32>(var_2.x, global0.e.x, global0.e.x)) << (~vec3<u32>(4294967295u, 0u, 89534u) % vec3<u32>(32u))), true) ^ ~_wgslsmith_sub_i32(max(~var_0.e.x, abs(var_2.x)), i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1780f, global0.b, -980f, -1007f) * vec4<f32>(var_0.d, var_1.c, global0.d, -1484f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1388f, -1014f))), 984f)), select(u_input.a, _wgslsmith_add_u32(0u, 17833u), !(62612i >= var_2.x)), vec2<i32>(_wgslsmith_sub_i32(-countOneBits(var_1.e.x), var_0.e.x), var_2.x | -2147483647i));
}

