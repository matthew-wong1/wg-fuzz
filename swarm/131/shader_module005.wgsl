struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1472f, -192f, 240f, 2461f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> vec4<f32> {
    var var_0 = 4294967295u ^ (u_input.c.x & min(u_input.c.x | _wgslsmith_mod_u32(11782u, u_input.c.x), 1u));
    let var_1 = vec4<i32>(u_input.b.x, abs(abs(u_input.a.x)), u_input.b.x, -1i);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.x, global0.a.x, 695f, 112f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_1, global0.a.x, 1705f)))))))));
    let var_2 = ~u_input.c.x == 0u;
    var var_3 = var_2;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1)), arg_1, _wgslsmith_f_op_f32(ceil(global0.a.x)), _wgslsmith_f_op_f32(arg_1 * 1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, global0.a.x, -1740f, arg_1) - global0.a))) * _wgslsmith_f_op_vec4_f32(-global0.a))) + _wgslsmith_f_op_vec4_f32(-global0.a));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1268f, _wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(f32(-1f) * -3306f), 238f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -675f, global0.a.x, global0.a.x) + vec4<f32>(global0.a.x, -1000f, -993f, global0.a.x))), vec4<f32>(1129f, _wgslsmith_f_op_f32(global0.a.x * 595f), global0.a.x, global0.a.x), vec4<bool>(true, true, true, true)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mod_vec3_u32(u_input.c.wyw, vec3<u32>(u_input.c.x, u_input.c.x, 41428u)), _wgslsmith_f_op_f32(select(global0.a.x, 180f, false)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(701f, var_0.a.x, var_0.a.x, 220f))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), var_0.a.x == 1546f)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = func_2(max(select(vec3<i32>(-2147483647i, 2147483647i, abs(u_input.b.x)), vec3<i32>(min(0i, u_input.d), 2147483647i, -u_input.a.x), select(!arg_0, select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, arg_0.x, true), arg_0), select(arg_0, arg_0, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), select(vec3<i32>(abs(0i), u_input.d >> (u_input.c.x % 32u), u_input.d), vec3<i32>(u_input.a.x & -15848i, -81153i, 30158i), arg_0)));
    global0 = func_2(firstLeadingBit(reverseBits(vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(0i, -1i, u_input.a.x), firstTrailingBit(u_input.b.x)))));
    global0 = arg_1;
    let var_0 = false;
    global0 = func_2(-(~min(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 20418i, 1i), vec3<i32>(u_input.b.x, u_input.d, 1i), vec3<i32>(u_input.b.x, 1i, 1i)), ~vec3<i32>(u_input.d, 23493i, u_input.a.x))));
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = u_input.c.x ^ ~0u;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-arg_1.a.x)), func_2(vec3<i32>(u_input.b.x, -2147483647i, -45023i) ^ vec3<i32>(u_input.d, 2147483647i, u_input.a.x)).a.x, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.a.x) + _wgslsmith_f_op_vec4_f32(-global0.a)));
    var var_1 = ~_wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_div_i32(-2147483647i, 1i), u_input.d ^ 79877i, reverseBits(u_input.a.x), u_input.a.x), vec4<i32>(~(i32(-1i) * -1i), ~_wgslsmith_sub_i32(1i, 81496i), 2147483647i, select(u_input.b.x << (u_input.c.x % 32u), -34694i, true)));
    return !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec3<bool>(true, true, false))), false), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true), all(vec4<bool>(true, any(vec3<bool>(true, true, false)), true, true)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = !any(vec3<bool>(true, true, true));
    let var_1 = u_input.c.wwy;
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-375f, global0.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2526f * global0.a.x) - _wgslsmith_f_op_f32(global0.a.x - 1609f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -145f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -2314f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1637f + global0.a.x) - -739f), _wgslsmith_f_op_f32(f32(-1f) * -796f))));
    let var_2 = select(u_input.b.x, 41106i, true);
    let var_3 = func_5(30275u | _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(u_input.c.x), u_input.c.x, 4294967295u, 1u), min(vec4<u32>(u_input.c.x, 45463u, 1u, 57043u), u_input.c)), func_4(select(select(!vec3<bool>(true, var_0, true), !vec3<bool>(var_0, true, false), !vec3<bool>(true, var_0, var_0)), !vec3<bool>(false, var_0, true), vec3<bool>(true, true, true)), func_2(vec3<i32>(arg_0.x, -45300i, -1i))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) + vec4<f32>(_wgslsmith_f_op_f32(-573f * 875f), global0.a.x, _wgslsmith_f_op_f32(abs(global0.a.x)), global0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b);
    let var_1 = -abs(36230i >> (_wgslsmith_sub_u32(u_input.c.x, 25321u) % 32u)) & _wgslsmith_clamp_i32(~firstTrailingBit(_wgslsmith_div_i32(u_input.d, u_input.b.x)), u_input.d, ~_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a.x, u_input.d, -1i), vec3<i32>(2147483647i, 41317i, u_input.d)), select(vec3<i32>(u_input.d, u_input.a.x, u_input.a.x), vec3<i32>(u_input.b.x, 24782i, -571i), vec3<bool>(false, false, false))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, global0.a.x) * global0.a))))));
    var_0 = func_1(-min(u_input.b, (u_input.b & u_input.b) << (u_input.c.wz % vec2<u32>(32u))));
    var var_3 = u_input.c;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2792f, var_0.a.x, 1000f, global0.a.x))))));
    global0 = Struct_1(global0.a);
    var_0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_4.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f))), -906f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1045f, 763f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_f32(f32(-1f) * -756f), global0.a.x, global0.a, u_input.a);
}

