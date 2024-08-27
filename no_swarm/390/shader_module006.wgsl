struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> f32 {
    global2 = array<Struct_1, 10>();
    let var_0 = Struct_1(u_input.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % 32u), arg_1, ~(~(~1094u)), _wgslsmith_f_op_f32(ceil(-659f)));
    global2 = array<Struct_1, 10>();
    var var_1 = var_0;
    global0 = Struct_2(615f);
    return _wgslsmith_f_op_f32(f32(-1f) * -303f);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = 1u;
    var var_1 = Struct_2(-854f);
    var_1 = Struct_2(-343f);
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f - 1f))));
    let var_2 = Struct_2(799f);
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-452f + _wgslsmith_div_f32(784f, var_1.a))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a, global1.a))), true)))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> u32 {
    global1 = arg_0;
    global1 = func_2(_wgslsmith_mult_i32(u_input.a, u_input.b));
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f));
    var var_2 = select(vec2<i32>(abs(abs(u_input.a)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, -2575i), vec3<i32>(-29018i, u_input.a, 34615i)), u_input.b)), -reverseBits(abs(vec2<i32>(-1i, u_input.a))), vec2<bool>(_wgslsmith_mult_i32(1i, -34744i) > u_input.b, true)) ^ vec2<i32>(~_wgslsmith_clamp_i32(min(32550i, -4064i), -u_input.a, max(0i, -1i)), 0i);
    return arg_1;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(select(4294967295u, 1u, any(vec4<bool>(true, arg_1.b, arg_3, arg_3))), func_4(func_2(2147483647i), arg_2, func_2(u_input.a))), vec2<u32>((_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, 1u, arg_1.c), vec3<u32>(arg_1.c, 23426u, 1u)) ^ 1u) << (~(~arg_2) % 32u), ~(~arg_1.c) | arg_1.c)), 10u)];
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(369f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(abs(2375f))))), !arg_0.x)), -567f, global1.a);
    var var_2 = Struct_2(arg_1.d);
    var var_3 = any(arg_0);
    var_2 = Struct_2(var_2.a);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_f32(1690f, -1023f));
    global2 = array<Struct_1, 10>();
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1727f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + -1908f) * _wgslsmith_f_op_f32(669f + global1.a)))));
    var var_1 = !select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(-421f != global1.a, -248f > global1.a), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_2 = _wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.b, -673i)) >> ((select(vec2<u32>(91764u, 122954u), vec2<u32>(21837u, 23126u), vec2<bool>(true, var_1.x)) & vec2<u32>(1u, 0u)) % vec2<u32>(32u)), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 14524i), vec2<i32>(-101131i, -63170i)) & firstTrailingBit(~vec2<i32>(1i, 2147483647i))) | select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i) | -vec2<i32>(-23524i, u_input.b), vec2<i32>(_wgslsmith_mod_i32(21285i, u_input.a), i32(-1i) * -1i), select(vec2<i32>(u_input.b, u_input.a), vec2<i32>(11047i, u_input.a), var_1.x) << (vec2<u32>(1u, 22325u) % vec2<u32>(32u))), vec2<i32>(-78925i, u_input.b), !var_1.x);
    var_1 = !(!vec2<bool>(func_1(vec2<bool>(false, var_1.x), Struct_1(u_input.a, var_1.x, 8310u, global1.a), ~1u, true && var_1.x), true));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-func_2(var_2.x).a), _wgslsmith_f_op_f32(step(-922f, 667f)));
    global0 = func_2(i32(-1i) * -(i32(-1i) * -1i));
    var var_4 = vec3<f32>(-1527f, _wgslsmith_f_op_f32(-248f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1229f * 606f), _wgslsmith_f_op_f32(min(var_0.a, -1394f)), func_1(vec2<bool>(var_1.x, true), Struct_1(u_input.b, var_1.x, 1u, 697f), 30932u, var_1.x) & (true != var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec2<f32>(677f, var_0.a), false))))) * 776f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(func_2(u_input.a).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(13650i).a + func_2(u_input.a).a)), 181f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_0.a) * _wgslsmith_f_op_f32(func_3(var_4.zy, true))), _wgslsmith_f_op_f32(-187f * 585f))), 43126u);
}

