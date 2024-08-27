struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<u32>) -> u32 {
    let var_0 = -190f;
    var var_1 = ~49801i;
    var_1 = -1i;
    var var_2 = true;
    var_1 = 1i;
    return select(reverseBits(arg_1.b.x), abs(firstTrailingBit(_wgslsmith_dot_vec2_u32(~arg_1.b, arg_3.xw))), true || any(vec2<bool>(false, true)));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~17897u, countOneBits(_wgslsmith_sub_u32(42631u, 1u)), firstLeadingBit(33943u), 14072u), vec4<u32>(~_wgslsmith_mod_u32(15532u, ~24570u), ~(1u & func_2(arg_1, Struct_1(vec4<i32>(-88077i, 15111i, arg_0, arg_2.x), vec2<u32>(0u, 8049u), false), 2147483647i, vec4<u32>(4294967295u, 2030u, 1u, 10265u))), 40323u, 4294967295u));
    var var_1 = arg_2.wyy << (_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(min(10786u, 0u), abs(4294967295u), 1u)), firstTrailingBit(vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u));
    var_0 = 0u;
    var_0 = 1u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)), -1312f) * arg_1.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = true;
    var_0 = false;
    var_0 = arg_3.x;
    let var_1 = Struct_1(-(vec4<i32>(-1i) * -(~u_input.a)), ~select(~vec2<u32>(33203u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(24561u, 24277u), ~vec2<u32>(51642u, 1u), ~vec2<u32>(4294967295u, 33562u)), true), true);
    var var_2 = arg_3;
    return firstTrailingBit(-(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1(1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(569f, 1000f, 280f, 426f))))), -u_input.a));
    var var_1 = Struct_1(u_input.a, vec2<u32>(~_wgslsmith_mult_u32(countOneBits(13409u), 1u), 4294967295u), true);
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(func_3(-(~42013i), max(vec4<i32>(u_input.a.x, -15224i, -2147483647i, var_1.a.x), abs(u_input.a)), ~u_input.a.x, select(vec3<bool>(var_1.c, var_1.c, false), !vec3<bool>(false, var_1.c, true), var_1.c)), vec4<i32>(0i, func_3(reverseBits(-1i), firstTrailingBit(u_input.a), 1i, vec3<bool>(false, false, true)).x, u_input.a.x, _wgslsmith_dot_vec3_i32(var_1.a.www, -vec3<i32>(u_input.a.x, -22514i, -71709i)))), var_1.b, !var_1.c);
    let var_3 = vec3<bool>(!all(vec3<bool>(true, true, var_2.c | false)), true, true);
    let var_4 = var_2;
    var_1 = Struct_1(~var_2.a, var_1.b, any(!var_3.zz));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, abs(~13135i)), 401f, 4294967295u);
}

