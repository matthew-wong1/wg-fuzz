struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, i32(-2147483648));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global0.a && true, -3822i);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-221f, 1570f, 1835f, -904f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-767f, -1107f, 160f, 898f), vec4<f32>(421f, -205f, 788f, 141f)))) * vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1220f, 816f, 267f, -2175f)) * vec4<f32>(936f, 684f, -765f, 1f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3519f), -1080f, 941f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1332f + 995f), 996f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2207f)), -1243f, _wgslsmith_f_op_f32(743f - _wgslsmith_f_op_f32(f32(-1f) * -313f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-481f + 1161f))))), true));
    return Struct_1(var_0.a, _wgslsmith_div_i32(reverseBits(1i), ~(-(-49097i ^ global0.b))));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~global0.b >> (~u_input.a.x % 32u);
    var var_1 = arg_0.a;
    var var_2 = select(_wgslsmith_mod_vec4_i32(~countOneBits(~vec4<i32>(arg_0.b, var_0, 2147483647i, arg_0.b)), -vec4<i32>(-2147483647i, countOneBits(arg_0.b), -1i, var_0)), -select(vec4<i32>(6567i, abs(global0.b), global0.b & -20612i, _wgslsmith_add_i32(var_0, var_0)), ~min(vec4<i32>(0i, global0.b, global0.b, global0.b), vec4<i32>(arg_0.b, 2147483647i, 21024i, 1i)), select(vec4<bool>(global0.a, global0.a, false, global0.a), select(vec4<bool>(false, arg_0.a, arg_0.a, false), vec4<bool>(true, true, arg_0.a, true), true), all(vec2<bool>(true, arg_0.a)))), true);
    let var_3 = Struct_1(true, global0.b & func_2().b);
    var var_4 = var_3;
    return arg_0;
}

fn func_1() -> u32 {
    global0 = Struct_1(global0.a, -137i);
    let var_0 = func_3(func_2());
    var var_1 = var_0;
    let var_2 = global0.b;
    var_1 = Struct_1(any(!vec2<bool>(global0.a && var_1.a, false)), 1i);
    return min(~0u, u_input.a.x) ^ (~select(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(0u, u_input.a.x, 4294967295u, 25488u)), var_0.a) >> (_wgslsmith_sub_u32(1u, ~(~u_input.a.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(u_input.a.x, 171u);
    global0 = Struct_1(!(true || global0.a), global0.b);
    var var_1 = u_input.a.zy >> (vec2<u32>(~(~func_1()), 0u) % vec2<u32>(32u));
    var_1 = u_input.a.zy;
    var_1 = firstLeadingBit(u_input.a.yx);
    let var_2 = _wgslsmith_mod_u32(firstTrailingBit(~1u), ~abs(~u_input.a.x));
    global0 = Struct_1(!(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-781f + -1000f))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(231f, 1310f)), _wgslsmith_f_op_f32(f32(-1f) * -938f)))), 2147483647i);
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(var_2, firstLeadingBit(1u))), ~1u), max(1u, abs(firstLeadingBit(var_2))), 0u, _wgslsmith_f_op_f32(step(724f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_f_op_f32(step(1000f, 431f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(159f + -775f)))))), vec2<u32>(_wgslsmith_mult_u32(~var_1.x, ~(~var_1.x)), 40820u));
}

