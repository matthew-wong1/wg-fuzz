struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
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

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(1u, 1429u, 1u), vec3<u32>(3050u, 4294967295u, 1u), vec3<u32>(4294967295u, 217u, 18060u), vec3<u32>(1u, 1u, 46050u), vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 7384u, 1u), vec3<u32>(71386u, 71141u, 4294967295u), vec3<u32>(1u, 7665u, 16505u), vec3<u32>(34168u, 6990u, 4294967295u), vec3<u32>(4294967295u, 28380u, 4294967295u), vec3<u32>(74259u, 48935u, 75054u), vec3<u32>(37013u, 4294967295u, 84427u), vec3<u32>(4294967295u, 85966u, 4294967295u), vec3<u32>(88267u, 1u, 1u), vec3<u32>(0u, 0u, 39928u), vec3<u32>(1u, 59509u, 1u), vec3<u32>(2994u, 69125u, 4228u), vec3<u32>(16538u, 81502u, 4294967295u), vec3<u32>(222u, 1u, 0u), vec3<u32>(4294967295u, 0u, 13455u), vec3<u32>(82352u, 6764u, 71650u), vec3<u32>(1u, 19342u, 91704u), vec3<u32>(53177u, 1u, 4294967295u), vec3<u32>(1u, 0u, 10225u), vec3<u32>(7210u, 4294967295u, 56286u), vec3<u32>(0u, 36821u, 29723u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec3<bool> {
    var var_0 = all(!vec4<bool>(all(!vec3<bool>(true, arg_1, false)), any(!vec2<bool>(arg_1, false)), arg_0, true));
    let var_1 = Struct_1(-_wgslsmith_sub_i32(_wgslsmith_sub_i32(countOneBits(56634i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 2147483647i), vec3<i32>(1i, 36336i, 21058i))), _wgslsmith_mod_i32(-21815i, -1i)));
    var_0 = arg_0;
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.c, 20570u, u_input.c)), ~(~(vec4<u32>(u_input.b.x, u_input.d.x, 4294967295u, u_input.a.x) << (vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))))));
    let var_3 = true;
    return select(vec3<bool>(arg_1, true, _wgslsmith_div_u32(4493u, ~u_input.d.x) != min(~0u, 1u)), vec3<bool>(all(vec4<bool>(false, any(vec2<bool>(arg_1, false)), arg_1, any(vec3<bool>(arg_1, true, true)))), !all(vec3<bool>(arg_1, false, arg_0)), any(vec2<bool>(true, true))), true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = !any(!select(func_3(false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    global0 = array<vec3<u32>, 26>();
    global0 = array<vec3<u32>, 26>();
    let var_1 = arg_2;
    global0 = array<vec3<u32>, 26>();
    return -8354i;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-592f * -530f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(f32(-1f) * -1009f))) + -1162f));
    var var_1 = Struct_1(-(~reverseBits(func_2(Struct_1(-28695i), Struct_1(-69098i), Struct_1(21586i), 6229i))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(827f)) * 198f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-2029f, 437f)), _wgslsmith_f_op_f32(-345f * -330f), true))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -305f) + 425f)))), _wgslsmith_f_op_f32(-426f * -1400f), -243f);
    let var_3 = Struct_1(-25219i);
    let var_4 = var_3;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    global0 = array<vec3<u32>, 26>();
    let var_1 = !(!vec2<bool>(false && all(vec2<bool>(true, false)), true));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-570f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(374f)))), -329f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(961f, 1481f, -2265f)))), vec3<f32>(_wgslsmith_f_op_f32(step(-308f, -887f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(105f)) * _wgslsmith_f_op_f32(f32(-1f) * -277f)), _wgslsmith_f_op_f32(floor(-1000f))), false)));
    let var_3 = func_1();
    let var_4 = -1217f;
    let x = u_input.a;
    s_output = StorageBuffer(var_4);
}

