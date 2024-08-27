struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1062f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-569f + 1077f) * 2007f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1686f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.yz - _wgslsmith_div_vec2_f32(var_0.yw, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -697f) + var_0.yy)));
    return u_input.b;
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(~29647i < abs(u_input.e.x), false, all(vec4<bool>(true, false, true, true)), false));
    let var_1 = func_2(!(!(!var_0.x)) && (-u_input.e.x != global0.a));
    let var_2 = 21750i;
    var var_3 = 1u;
    let var_4 = vec4<bool>(false, var_0.x, var_0.x, false & var_0.x);
    return -2147483647i;
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = !select(vec2<bool>(true, true), !vec2<bool>(true, select(false, true, true)), vec2<bool>(false, false));
    let var_1 = Struct_1(true, u_input.b, select(vec4<bool>(!(true & var_0.x), true, any(select(vec2<bool>(false, false), var_0, vec2<bool>(true, var_0.x))), var_0.x), !select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, false, var_0.x, false)), select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, var_0.x)), true), vec4<bool>(true, var_0.x, true, !any(vec2<bool>(false, true)))));
    var var_2 = 87790u;
    var var_3 = Struct_2(21975i);
    var var_4 = var_1;
    return 46352u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(func_1(_wgslsmith_div_u32(firstTrailingBit(u_input.b.x), ~0u)), _wgslsmith_clamp_i32(global0.a, func_1(max(0u, 1u)), select(-32807i, u_input.a.x ^ 0i, true)), -17510i >> (func_3(u_input.b.x) % 32u)), ~countOneBits(min(reverseBits(global0.a), u_input.d)), u_input.a.x, _wgslsmith_dot_vec2_i32(select(_wgslsmith_add_vec2_i32(u_input.e >> (u_input.b.zz % vec2<u32>(32u)), u_input.e), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.e, vec2<i32>(global0.a, -2147483647i)), firstLeadingBit(u_input.e)), vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(-27283i, 1i), countOneBits(vec2<i32>(u_input.e.x, 1i)))));
    global0 = Struct_2((2147483647i >> (~abs(u_input.c) % 32u)) ^ u_input.d);
    let var_1 = -1022f;
    var var_2 = Struct_3(2311f);
    var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2754f, _wgslsmith_f_op_f32(select(var_2.a, var_2.a, false)))));
    global0 = Struct_2(global0.a);
    let var_3 = global0.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(1613f)), var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_4, 1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1812f, var_2.a) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a)))));
}

