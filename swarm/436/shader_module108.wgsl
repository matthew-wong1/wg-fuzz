struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    return vec4<u32>(_wgslsmith_add_u32(58959u, firstTrailingBit(99130u)), 16575u, global0.a.x, 1u);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = 21371u;
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(70542u, arg_0, 0u, global0.a.x), vec4<u32>(1u, global0.a.x, 77067u, 1u)), func_3(234f, Struct_1(global0.a))), global0.a.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1481f)) + 102f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-314f, _wgslsmith_div_f32(572f, -1024f), _wgslsmith_div_f32(-648f, -2474f))), !select(arg_2, arg_2, vec3<bool>(false, true, arg_2.x)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-596f, 2229f, _wgslsmith_div_f32(1314f, -1496f)))))));
    let var_3 = Struct_1(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_1.a.x, arg_1, 4294967295u), vec4<u32>(17023u, arg_0, arg_0, 4294967295u), vec4<u32>(0u, 4294967295u, arg_0, arg_1)), ~vec4<u32>(arg_0, var_1.a.x, 20994u, var_1.a.x)), _wgslsmith_add_vec4_u32(select(vec4<u32>(var_1.a.x, var_1.a.x, 21781u, 0u), vec4<u32>(arg_0, arg_1, 22067u, 4294967295u), false), vec4<u32>(global0.a.x, arg_0, arg_1, 43144u)))));
    let var_4 = Struct_1(_wgslsmith_sub_vec2_u32(max(~var_1.a, reverseBits(vec2<u32>(47759u, 1u) | var_1.a)), (vec2<u32>(arg_1, arg_0) << (~global0.a % vec2<u32>(32u))) | _wgslsmith_mult_vec2_u32(~var_3.a, firstTrailingBit(vec2<u32>(arg_0, 0u)))));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<u32>) -> i32 {
    global0 = func_2(arg_3.x, ~global0.a.x, vec3<bool>(any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, false)))), true, arg_2.x <= u_input.a.x), u_input.a.x);
    let var_0 = func_2(arg_3.x, (1u << ((arg_3.x >> (global0.a.x % 32u)) % 32u)) ^ _wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(~1u, 29133u, ~arg_0.a.x)), vec3<bool>(any(vec2<bool>(true, true)), (any(vec3<bool>(false, false, false)) | any(vec3<bool>(true, false, true))) && true, !all(vec4<bool>(false, true, false, true)) | (_wgslsmith_mod_u32(arg_0.a.x, arg_3.x) != _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(47195u, global0.a.x)))), ~(-51662i));
    return u_input.a.x;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(~global0.a);
    var var_1 = abs(-1i);
    var var_2 = func_4(func_2(_wgslsmith_dot_vec2_u32(var_0.a, var_0.a), 4294967295u, vec3<bool>(true, true, true), -(firstLeadingBit(u_input.a.x) ^ -7469i)), 249f, ~(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -53156i)), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, 49964u, 0u), ~vec3<u32>(func_3(arg_1.x, Struct_1(vec2<u32>(1u, 1u))).x, 4294967295u, 78336u << (var_0.a.x % 32u))));
    var var_3 = select(!(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true))), vec4<bool>(!(!select(true, true, false)), true, any(vec4<bool>(true, arg_2 >= arg_2, true, true)), !all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), vec4<bool>(!(arg_1.x != _wgslsmith_f_op_f32(arg_1.x + 978f)), !all(vec4<bool>(true, true, false, false)), true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), all(vec4<bool>(true, true, false, true))))));
    var_1 = reverseBits(u_input.a.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(275f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f), _wgslsmith_div_f32(1671f, -628f)) + -484f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(678f, -1419f) - 737f))), global0.a.x);
    var var_0 = func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1172f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1028f, -1950f)), _wgslsmith_f_op_f32(f32(-1f) * -1164f)))), _wgslsmith_f_op_f32(sign(-1289f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(852f + _wgslsmith_f_op_f32(max(-1000f, 779f))), -1295f), vec2<f32>(_wgslsmith_f_op_f32(step(-948f, _wgslsmith_f_op_f32(round(-1549f)))), -1286f))), global0.a.x);
    var var_1 = Struct_1(vec2<u32>(15133u, max(29491u, ~(global0.a.x ^ var_0.a.x))));
    var var_2 = Struct_1(global0.a);
    var_2 = func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(36528u, 16950u, var_0.a.x), vec3<u32>(var_0.a.x, var_0.a.x, global0.a.x)), _wgslsmith_add_vec3_u32(vec3<u32>(23935u, var_2.a.x, var_2.a.x), vec3<u32>(var_0.a.x, global0.a.x, var_0.a.x))), firstLeadingBit(~select(vec3<u32>(var_2.a.x, 24697u, 4294967295u), vec3<u32>(var_0.a.x, var_2.a.x, 0u), vec3<bool>(true, true, false)))), ~abs(~4294967295u), vec3<bool>(false, true, true), -u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, var_1.a.x), 4294967295u, 4294967295u)), ~4294967295u);
}

