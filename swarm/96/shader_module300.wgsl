struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-87786i, i32(-2147483648), i32(-2147483648), 24552i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: bool) -> u32 {
    global0 = Struct_1(_wgslsmith_clamp_vec4_i32(global0.a, vec4<i32>(-28175i, _wgslsmith_sub_i32(2147483647i, ~global0.a.x), 1i, -(i32(-1i) * -31466i)), firstLeadingBit(~(vec4<i32>(-58957i, global0.a.x, global0.a.x, -2147483647i) & vec4<i32>(44289i, u_input.b, 2147483647i, 36712i)))));
    var var_0 = 1i;
    return 18755u;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: u32, arg_3: u32) -> vec4<i32> {
    var var_0 = countOneBits(vec4<u32>(~u_input.a, ~(~abs(arg_2)), func_3(select(any(vec2<bool>(false, true)), false, -26312i >= arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, -1444f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -1652f)), false), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(41852u, arg_3 ^ 53299u, min(arg_2, arg_3)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_3), vec2<u32>(u_input.a, arg_3)) ^ ~arg_2)));
    let var_1 = -max(-(~15120i), u_input.b);
    let var_2 = abs(~firstLeadingBit(abs(countOneBits(vec2<u32>(1u, arg_3)))));
    var var_3 = ~(~((22989u << (reverseBits(arg_2) % 32u)) | _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(arg_3, var_2.x))));
    var var_4 = (countOneBits(-vec2<i32>(-1i, u_input.b) & arg_1.yz) & select(_wgslsmith_mult_vec2_i32(~arg_1.yz, vec2<i32>(-36445i, var_1)), ~vec2<i32>(19451i, global0.a.x) & arg_1.yx, select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true)))) << (~(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29761u, var_2.x), vec2<u32>(0u, u_input.a)), var_2.x >> (58323u % 32u)) | (var_2 | (var_2 | vec2<u32>(4294967295u, 4294967295u)))) % vec2<u32>(32u));
    return global0.a;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.b;
    let var_1 = 1f;
    var var_2 = any(vec3<bool>(-u_input.b >= -global0.a.x, !any(vec2<bool>(true, true)) || (any(vec3<bool>(true, true, true)) == true), true));
    global0 = Struct_1(-_wgslsmith_mult_vec4_i32(arg_2.a.a, var_0.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0, vec4<f32>(530f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(602f, -587f)), _wgslsmith_f_op_f32(trunc(1764f)), _wgslsmith_f_op_f32(round(233f))))));
    return arg_2.b;
}

fn func_1() -> Struct_1 {
    global0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1801f, 1132f, 1000f, 657f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1313f, 119f, -402f, 696f)))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-837f))), Struct_2(Struct_1(vec4<i32>(u_input.b | 4845i, countOneBits(6956i), global0.a.x ^ u_input.b, global0.a.x)), Struct_1(~func_2(1415f, vec3<i32>(0i, u_input.b, global0.a.x), u_input.a, 0u))));
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b, _wgslsmith_div_i32(global0.a.x, _wgslsmith_add_i32(-u_input.b, global0.a.x)), u_input.b, -2147483647i), global0.a);
    return Struct_1(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = global0.a.ywz;
    global0 = Struct_1(vec4<i32>(firstLeadingBit(~var_0.x), min(-max(-1i, 16060i), u_input.b), ~(~(-15447i)), -18223i));
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(~47534u), 12685u, max(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(5862u, 0u, u_input.a, u_input.a), max(vec4<u32>(12732u, 0u, 26869u, u_input.a), vec4<u32>(31228u, 2305u, u_input.a, u_input.a)))), ~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))) >> (u_input.a % 32u);
    var var_2 = ~(~(~23857u));
    var_2 = var_1;
    var_2 = abs(u_input.a);
    global0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1867f), _wgslsmith_f_op_f32(1936f - -914f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-143f, -850f, false))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1656f)))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -109f), true))))), Struct_2(Struct_1(vec4<i32>(var_0.x, _wgslsmith_add_i32(25266i, var_0.x), global0.a.x << (0u % 32u), 1i)), Struct_1(vec4<i32>(-12388i, max(u_input.b, var_0.x), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global0.a.x), vec2<i32>(30113i, 2147483647i))))));
    var var_3 = -20982i;
    let x = u_input.a;
    s_output = StorageBuffer(2024f);
}

