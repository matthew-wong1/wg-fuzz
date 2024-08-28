struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !vec2<bool>(arg_2.a != ~(0u >> (arg_0.x % 32u)), false);
    var var_1 = vec4<u32>(_wgslsmith_clamp_u32(max(~arg_0.x, arg_0.x), ~(~_wgslsmith_add_u32(10397u, 1u)), arg_0.x), 4294967295u, countOneBits(reverseBits(_wgslsmith_sub_u32(arg_0.x, _wgslsmith_mod_u32(arg_0.x, 0u)))), 85224u);
    let var_2 = vec2<bool>(var_0.x, var_0.x);
    var var_3 = -762f;
    var_0 = vec2<bool>(true && var_0.x, var_2.x & select(select(var_0.x, false, true) && !var_0.x, abs(-12402i) == u_input.a, ~arg_2.a != _wgslsmith_add_u32(0u, arg_0.x)));
    return arg_2;
}

fn func_2(arg_0: i32) -> f32 {
    return 797f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global1 = -_wgslsmith_mult_i32(abs(u_input.a), ~u_input.a >> ((_wgslsmith_add_u32(27511u, u_input.b) ^ 4294967295u) % 32u));
    var var_0 = -vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -30246i, -2147483647i) & vec3<i32>(-11026i, u_input.a, 2147483647i), ~vec3<i32>(2147483647i, 0i, u_input.a)), _wgslsmith_sub_vec3_i32(-vec3<i32>(16507i, u_input.a, 8085i), vec3<i32>(24592i, 27704i, -50412i))), 25410i, u_input.a >> (_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.a, 33908u), ~21551u) % 32u), _wgslsmith_clamp_i32(-1i, _wgslsmith_mult_i32(1i, u_input.a), u_input.a));
    global0 = arg_1.a;
    let var_1 = select(vec4<bool>(true, 1501f != _wgslsmith_f_op_f32(sign(739f)), true, all(vec2<bool>(true, true))), vec4<bool>(true, true & all(vec2<bool>(false, true)), false, all(vec3<bool>(true, true, true))), false);
    global0 = _wgslsmith_mult_u32(0u, 0u);
    return -1383f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = any(vec4<bool>(all(vec4<bool>(false, select(false, true, true), all(vec2<bool>(false, false)), any(vec3<bool>(false, false, true)))), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), !(all(vec4<bool>(true, true, true, true)) || true), all(vec3<bool>(false, true, all(vec3<bool>(true, false, false))))));
    global0 = arg_1.a;
    global1 = -1i;
    var var_1 = firstTrailingBit(vec3<u32>(24467u, _wgslsmith_sub_u32(84400u, 4955u), 27512u)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(abs(arg_1.a) >> ((1u ^ arg_1.a) % 32u), ~(arg_1.a ^ 0u), firstTrailingBit(0u)), ~select(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a, 16715u, 0u), vec3<u32>(90899u, 5517u, 4294967295u)), vec3<u32>(arg_1.a, u_input.b, 63095u), any(vec2<bool>(false, var_0))));
    global0 = var_1.x;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    global0 = 1u;
    global0 = countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(13238u, u_input.b, 1u & u_input.b) & ~vec3<u32>(u_input.b, 492u, 0u), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 1u, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, 32096u), vec3<u32>(1u, 1u, u_input.b), vec3<u32>(22845u, 1u, u_input.b))), vec3<u32>(min(19559u, u_input.b), abs(u_input.b), 1u))));
    var var_0 = func_1(~vec2<u32>(~reverseBits(0u), 4294967295u), 258f, Struct_1(u_input.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(~52632i)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1488f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1970f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2070f, 1852f, false)) * _wgslsmith_f_op_f32(-152f - -981f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1735f, 2155f, -1632f) + vec3<f32>(-1077f, -885f, 956f)), func_1(vec2<u32>(u_input.b, 1u), 517f, Struct_1(var_0.a)), _wgslsmith_f_op_f32(func_3(Struct_1(0u), Struct_1(u_input.b))))))) * vec4<f32>(-953f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2796f - 157f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-111f - 653f) * _wgslsmith_f_op_f32(select(1000f, -315f, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1477f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-112f))) * 1182f)));
    var var_2 = abs(_wgslsmith_mult_vec2_i32(vec2<i32>(max(_wgslsmith_div_i32(u_input.a, -7397i), firstLeadingBit(u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(35052i, u_input.a, u_input.a, u_input.a), -vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a))), min(min(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~select(vec3<u32>(88981u, var_0.a, var_0.a), vec3<u32>(0u, 4294967295u, 1u), vec3<bool>(true, true, false))), vec3<u32>(var_0.a, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 49361u, var_0.a), vec3<u32>(1408u, u_input.b, 65138u)), var_0.a & 29739u), var_0.a), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -214f) * -1153f), 1123f)));
}

