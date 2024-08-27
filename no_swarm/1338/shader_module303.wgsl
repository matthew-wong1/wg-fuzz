struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: i32 = 9753i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = select(vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(arg_2.a.x, 21638u)), select(_wgslsmith_add_u32(u_input.a.x, arg_2.a.x), arg_2.a.x, !arg_3.x)), vec2<u32>(_wgslsmith_mod_u32(abs(reverseBits(0u)), 64718u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xx, firstTrailingBit(vec2<u32>(40919u, arg_0.a.x))), vec2<u32>(1743u, ~70984u))), arg_3.x);
    return arg_2;
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_2(vec3<u32>(~firstLeadingBit(18920u) | firstTrailingBit(1u), abs(32316u), 4294967295u), arg_3.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.a.x))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-362f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) + global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 24u)]), func_2(Struct_2(vec3<u32>(arg_3.b, 54682u, 31570u), arg_3.c.x, vec3<f32>(1930f, -785f, -1637f), 2147483647i, arg_2.x), vec2<i32>(1i, arg_3.d.x), Struct_2(vec3<u32>(arg_3.b, u_input.a.x, u_input.a.x), arg_3.c.x, arg_1, arg_3.d.x, false), vec2<bool>(true, true)).c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(142f)), _wgslsmith_f_op_f32(abs(-736f))))), _wgslsmith_div_i32(arg_3.d.x, 1i | min(~arg_3.d.x, func_2(Struct_2(vec3<u32>(0u, arg_3.b, 0u), 0i, arg_1, -8827i, true), vec2<i32>(arg_3.c.x, -2147483647i), Struct_2(vec3<u32>(arg_3.b, arg_0, 60258u), arg_3.d.x, arg_1, arg_3.c.x, true), arg_2).d)), arg_2.x);
    let var_1 = var_0;
    var var_2 = arg_3;
    var var_3 = arg_3;
    var var_4 = func_2(Struct_2(~var_1.a, 1i, vec3<f32>(-849f, var_2.a.x, 495f), -var_1.b, true), ~(-(~(vec2<i32>(arg_3.d.x, -14860i) & vec2<i32>(var_3.d.x, -36228i)))), var_1, !(!select(!vec2<bool>(true, var_0.e), select(vec2<bool>(var_0.e, true), vec2<bool>(true, var_0.e), arg_2), true)));
    return arg_3.a.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> i32 {
    global0 = array<f32, 24>();
    let var_0 = func_2(arg_2, vec2<i32>(-5580i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, -2147483647i, -6383i) | _wgslsmith_clamp_vec3_i32(arg_1.xzx, arg_1.yyy, arg_1.wwx), ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.b, 36114i, arg_2.d), arg_1.zyy))), arg_2, arg_3);
    var var_1 = !arg_3;
    var var_2 = var_0;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.x, vec3<f32>(arg_2.c.x, 1000f, var_0.c.x), vec2<bool>(var_1.x, false), Struct_3(var_0.c, 0u, vec3<i32>(24785i, -370i, arg_1.x), vec2<i32>(17685i, -1i))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.x, global0[_wgslsmith_index_u32(62542u, 24u)]))))));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~select(-vec2<i32>(-1i, -2820i), vec2<i32>(-4872i, 20042i), global0[_wgslsmith_index_u32(u_input.a.x, 24u)] == global0[_wgslsmith_index_u32(4294967295u, 24u)]) ^ vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, func_1(u_input.a.yx, vec4<i32>(2147483647i, 2147483647i, -39921i, 6314i), Struct_2(vec3<u32>(1u, u_input.a.x, u_input.a.x), -1i, vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -2321f, -1926f), 1i, true), vec2<bool>(false, false))), ~reverseBits(1i)));
    global0 = array<f32, 24>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 24u)])) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)] - global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 24u)]) - global0[_wgslsmith_index_u32(~37938u, 24u)]), -1063f)), ~(~max(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), 4294967295u & u_input.a.x)), vec3<i32>(7779i, var_0.x, -var_0.x), -(~min(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, var_0.x)) & vec2<i32>(_wgslsmith_sub_i32(var_0.x, 0i), abs(var_0.x))));
    let var_2 = var_1;
    var var_3 = u_input.a;
    let var_4 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_3.x, 28831u), ~u_input.a.x), var_3.x, countOneBits(var_2.b ^ 4294967295u))), u_input.a.xww);
    global1 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-536f + 1309f) * -115f)) * _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(Struct_2(var_3.yxw, var_2.d.x, var_1.a, var_0.x, true), vec2<i32>(var_0.x, var_1.d.x), Struct_2(u_input.a.yxw, 13806i, vec3<f32>(var_2.a.x, 868f, -834f), var_1.d.x, false), vec2<bool>(false, false)).a.x, u_input.a.x), 24u)]))), u_input.a, max(0u, _wgslsmith_sub_u32(var_1.b, 1u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.b, _wgslsmith_mult_u32(var_4.x, var_3.x)), vec2<u32>(max(1u, var_4.x), _wgslsmith_clamp_u32(u_input.a.x, var_4.x, var_3.x))) % 32u), _wgslsmith_mod_u32(u_input.a.x, ~116362u));
}

