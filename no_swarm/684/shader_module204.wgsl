struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32 = 0u;

var<private> global2: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(18607i, i32(-2147483648), 1i), vec3<i32>(19525i, 3108i, 1i), vec3<i32>(49559i, 2147483647i, i32(-2147483648)), vec3<i32>(36037i, 1i, 0i), vec3<i32>(9872i, i32(-2147483648), 1i), vec3<i32>(0i, 1i, 42125i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(-37788i, 2147483647i, -1i), vec3<i32>(2147483647i, -12187i, 82829i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(2147483647i, 2147483647i, 23525i), vec3<i32>(1i, 2147483647i, -1340i), vec3<i32>(0i, 0i, -17247i), vec3<i32>(9621i, -12965i, 1i), vec3<i32>(19796i, -30406i, 48621i), vec3<i32>(0i, 30282i, -7101i), vec3<i32>(i32(-2147483648), 24701i, 2147483647i), vec3<i32>(-30203i, 0i, -1i), vec3<i32>(i32(-2147483648), -43077i, i32(-2147483648)), vec3<i32>(1i, 22579i, 23643i), vec3<i32>(28004i, -48495i, -9022i), vec3<i32>(-1i, 1i, 37999i), vec3<i32>(-20925i, -34884i, -1i));

var<private> global3: vec2<i32> = vec2<i32>(41967i, -11620i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    global3 = vec2<i32>(select(global3.x, global3.x, !(!all(vec3<bool>(true, true, false)))), -(global3.x >> (reverseBits(u_input.c.x) % 32u)));
    global3 = u_input.d;
    let var_0 = u_input.c.xy;
    global1 = ~(~abs(4294967295u));
    global2 = array<vec3<i32>, 23>();
    return 510f;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: i32) -> bool {
    var var_0 = ~_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.xy)), u_input.c.x, 4294967295u);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    let var_2 = Struct_1(firstTrailingBit(-(-vec2<i32>(-1i, global3.x) ^ ~arg_1.zx)));
    var var_3 = -4240i >> (0u % 32u);
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    return any(!vec2<bool>(true, all(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(-1575f, -413f, 1781f), vec3<bool>(arg_1, false, true))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1376f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, -1000f, arg_0.x), vec3<bool>(true, arg_1, arg_1)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(719f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, 602f, arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1638f, arg_0.x)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) * vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -321f, arg_0.x) + vec3<f32>(-1570f, arg_0.x, arg_0.x))))))), true));
    let var_1 = all(select(vec4<bool>(arg_1, false, !arg_1, global3.x < -49660i), select(vec4<bool>(arg_1, u_input.c.x >= 4294967295u, arg_1, arg_1 != arg_1), vec4<bool>(true, true, true, true), all(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, true, true)))), select(select(vec4<bool>(arg_1, true, false, arg_1), !vec4<bool>(true, false, arg_1, true), vec4<bool>(true, false, true, false)), vec4<bool>(all(vec3<bool>(arg_1, true, true)), !arg_1, 930f == arg_0.x, true), true)));
    let var_2 = Struct_1(~vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) << (u_input.c.x % 32u), 0i));
    var var_3 = Struct_1(_wgslsmith_clamp_vec2_i32(u_input.a.zx, ~(~(vec2<i32>(1i, 1i) >> (u_input.c.yy % vec2<u32>(32u)))), u_input.d));
    var var_4 = var_0;
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32(arg_0.a, abs(countOneBits(-vec2<i32>(u_input.a.x, arg_0.a.x)))));
    var_0 = func_4(vec2<f32>(-1000f, 888f), func_2(u_input.a.zy, vec4<i32>(1i, global3.x, 2147483647i, ~50570i), var_0.a.x));
    global1 = _wgslsmith_div_u32(~reverseBits(u_input.c.x), abs(4294967295u));
    global2 = array<vec3<i32>, 23>();
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), true);
    return StorageBuffer(~(~u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<i32>(12490i, ~(-1i) ^ -u_input.b) & abs(vec2<i32>(-(~(-2147483647i)), global3.x));
    let x = u_input.a;
    s_output = func_1(Struct_1(u_input.d), u_input.c.x, Struct_1(u_input.a.zy));
}

