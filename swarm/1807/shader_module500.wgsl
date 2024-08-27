struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 14> = array<i32, 14>(2147483647i, 2147483647i, 61730i, -23305i, 1i, 1i, 60407i, -20517i, -1i, 2147483647i, -1i, 0i, 1i, 3963i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_2) -> i32 {
    return 0i;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(vec3<i32>(_wgslsmith_mult_i32(arg_3.a, 1i), firstLeadingBit(arg_0.a), _wgslsmith_mult_i32(func_2(arg_0, arg_2.x, vec4<bool>(true, false, false, false), Struct_2(vec3<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 14u)], arg_3.a), u_input.c)) & -2147483647i, arg_3.a)), max(-1814i, arg_0.a) & -31833i);
    var_0 = Struct_2(vec3<i32>(func_2(Struct_1(28665i, 37326u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1579f, arg_2.x))), select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, true, false, false)), Struct_2(~u_input.a.xxy, _wgslsmith_mult_i32(0i, 39340i))), u_input.c, 0i), i32(-1i) * -1i);
    let var_1 = Struct_2(vec3<i32>(-34841i, arg_0.a, u_input.c), _wgslsmith_add_i32(0i, _wgslsmith_mult_i32(arg_3.a >> (_wgslsmith_div_u32(728u, 4294967295u) % 32u), 10086i)));
    var var_2 = ~_wgslsmith_mod_i32(var_1.a.x, -global1[_wgslsmith_index_u32(arg_0.b, 14u)] ^ _wgslsmith_sub_i32(-2147483647i, u_input.b)) > -u_input.b;
    var var_3 = !vec2<bool>(arg_1.x, arg_1.x);
    return vec2<bool>(false, false);
}

fn func_4(arg_0: bool) -> i32 {
    var var_0 = Struct_2(-u_input.a.xxx, -20160i | _wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.a.x, u_input.c & global1[_wgslsmith_index_u32(61700u, 14u)]), 2897i));
    let var_1 = 1u;
    global0 = any(!vec4<bool>(arg_0, false && (true || arg_0), arg_0, false));
    let var_2 = _wgslsmith_clamp_u32(~var_1, var_1, 4294967295u);
    return firstLeadingBit(-_wgslsmith_add_i32(_wgslsmith_div_i32(1i, u_input.b), -10530i)) & var_0.b;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = ((~(~arg_0.x) != arg_0.x) || true) & ((firstLeadingBit(4294967295u) <= _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_0.x, arg_0.x), ~vec3<u32>(arg_0.x, arg_0.x, arg_0.x))) && false);
    let var_1 = -(u_input.a.xxw & vec3<i32>(countOneBits(u_input.b) ^ u_input.b, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, u_input.b), -global1[_wgslsmith_index_u32(13460u, 14u)]), func_2(Struct_1(u_input.a.x, arg_0.x), _wgslsmith_f_op_f32(sign(-1646f)), vec4<bool>(true, true, true, true), Struct_2(vec3<i32>(-15582i, global1[_wgslsmith_index_u32(10155u, 14u)], 0i), -36736i))));
    global0 = !((true && var_0) | var_0);
    let var_2 = Struct_2(_wgslsmith_sub_vec3_i32(select(firstLeadingBit(select(vec3<i32>(u_input.b, 1i, -25484i), vec3<i32>(u_input.b, 0i, -2147483647i), vec3<bool>(var_0, var_0, var_0))), ~vec3<i32>(var_1.x, var_1.x, var_1.x), !(true & var_0)), vec3<i32>(1i, -u_input.c & _wgslsmith_mod_i32(u_input.b, u_input.b), 54689i)), func_4(all(func_3(Struct_1(-40225i, arg_0.x), vec3<bool>(var_0, false, var_0), vec3<f32>(-935f, -2366f, 1302f), Struct_1(50247i, 21585u)))) & firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.a, reverseBits(u_input.a))));
    global1 = array<i32, 14>();
    return Struct_1(var_1.x, ~arg_0.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(abs(var_0.b << (~_wgslsmith_add_u32(1u, 41642u) % 32u)), 14u)], var_0.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-340f, 616f, -1463f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x)), arg_0.x)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, -1677f, 853f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(548f, arg_0.x, -611f) + vec3<f32>(arg_0.x, arg_0.x, -1523f))) - vec3<f32>(-699f, arg_0.x, _wgslsmith_f_op_f32(-1684f + 603f))))));
    var var_3 = arg_3.b;
    global1 = array<i32, 14>();
    return 997f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 16205u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(400f, -339f), vec2<f32>(_wgslsmith_f_op_f32(select(-884f, 1086f, true)), _wgslsmith_div_f32(1143f, 826f)), vec2<bool>(true, true))), Struct_2(u_input.a.wzy, global1[_wgslsmith_index_u32(4294967295u, 14u)]), ~u_input.a, func_1(abs(~vec2<u32>(4294967295u, 4294967295u))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-673f, -1000f), vec2<f32>(-1680f, 139f)))), Struct_2(~vec3<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 14u)], 18128i), -39448i), firstLeadingBit(vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(1u, 14u)], 9174i, 1i)), func_1(max(vec2<u32>(1u, var_0), vec2<u32>(1u, 0u))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-143f + -1345f)))))));
    global1 = array<i32, 14>();
    let var_2 = var_1;
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(80983u, var_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-928f, 1493f, var_2)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, -2131f, var_1), vec3<f32>(1071f, var_2, 1287f), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2081f, -927f, 1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(533f, var_1, -1623f) - vec3<f32>(-1000f, var_2, 246f))) + vec3<f32>(_wgslsmith_f_op_f32(-1361f * 1000f), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_2) - 1000f) - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_1))), u_input.a.yxx);
}

