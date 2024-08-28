struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = 27575i;
    let var_1 = arg_1;
    var var_2 = arg_3.c;
    var_2 = -2147483647i;
    global0 = !select(!arg_1, !select(vec3<bool>(true, true, true), select(vec3<bool>(arg_3.b.x, arg_1.x, false), arg_1, true), var_1.x), true);
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    global0 = !(!vec3<bool>(true, any(vec3<bool>(true, arg_2.b.x, global0.x)), global0.x));
    var var_0 = Struct_1(_wgslsmith_mult_u32(select(0u, u_input.a.x >> (1540u % 32u), true), ~arg_2.a << (~arg_2.a % 32u)) | 1u, select(global0.zy, !vec2<bool>(any(vec2<bool>(global0.x, global0.x)), any(arg_2.b)), vec2<bool>(true, all(vec4<bool>(arg_2.b.x, false, false, false)))), -arg_3, arg_1.a.x);
    let var_1 = select(!select(vec3<bool>(false, var_0.b.x, !arg_2.b.x), vec3<bool>(true, true, true), !(!vec3<bool>(true, global0.x, global0.x))), vec3<bool>(false, global0.x, arg_2.b.x), true);
    var var_2 = _wgslsmith_mult_u32(77676u, _wgslsmith_mult_u32(countOneBits(4294967295u), _wgslsmith_mod_u32(~4294967295u, u_input.a.x)));
    var_0 = Struct_1(_wgslsmith_sub_u32(~(~_wgslsmith_div_u32(0u, u_input.a.x)), u_input.a.x), select(vec2<bool>(arg_2.b.x, false), arg_2.b, arg_2.b), ~arg_3, select(min(-4403i, ~countOneBits(-53127i)), var_0.d, var_0.b.x));
    return -arg_1.a;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = 2147483647i <= ~firstTrailingBit(-1i);
    let var_1 = Struct_2(select(abs(~select(vec3<i32>(1i, 71811i, -2147483647i), vec3<i32>(8476i, -13026i, 4881i), vec3<bool>(arg_0, global0.x, false))), func_3(-391f, func_2(Struct_2(vec3<i32>(51065i, 10674i, 0i)), vec3<bool>(false, false, global0.x), 0u, Struct_1(u_input.a.x, global0.zz, 32713i, -38551i)), Struct_1(u_input.a.x, vec2<bool>(false, true), 50876i, 11703i), 0i) << (abs(vec3<u32>(1u, 82904u, u_input.a.x) ^ u_input.a) % vec3<u32>(32u)), global0.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(777f + 268f), -462f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-546f)), -117f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-120f - -1047f), -437f))));
    global0 = !vec3<bool>(arg_0, true, any(select(vec3<bool>(arg_0, global0.x, true), vec3<bool>(false, false, global0.x), vec3<bool>(false, false, true))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, -695f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(456f, 1000f, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2388f, 675f, var_2.x, 792f))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, 2104f, -212f, 616f))))));
    return -_wgslsmith_dot_vec4_i32(min(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 6648i, 2147483647i, var_1.a.x), vec4<i32>(-2147483647i, 1i, var_1.a.x, var_1.a.x), vec4<i32>(var_1.a.x, 0i, -1i, 2147483647i)), vec4<i32>(-1i, -1i, -1i, 0i) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 29650u) % vec4<u32>(32u))), vec4<i32>(-12664i, var_1.a.x | -68443i, -var_1.a.x, 55536i >> (u_input.a.x % 32u))), ~reverseBits(vec4<i32>(var_1.a.x, var_1.a.x, 12204i, 2147483647i)) ^ (~vec4<i32>(23484i, -6540i, var_1.a.x, 0i) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 14669u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.x, vec2<bool>(all(vec3<bool>(false || global0.x, global0.x & global0.x, any(vec3<bool>(false, false, false)))), global0.x), -firstTrailingBit(~(i32(-1i) * -32593i)), _wgslsmith_mod_i32(9264i, ~(func_1(global0.x) | 51374i)));
    let var_1 = Struct_2(countOneBits(abs(countOneBits(vec3<i32>(12790i, -2147483647i, 55515i)) << (u_input.a % vec3<u32>(32u)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(274f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-693f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2931f)), _wgslsmith_f_op_f32(1025f - -781f)))), -572f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1704f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    let var_4 = vec4<u32>(_wgslsmith_add_u32(~39185u, u_input.a.x), select(1u ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, 1u, var_0.a), vec4<u32>(u_input.a.x, 62057u, 45650u, var_0.a)) << (~1u % 32u)), u_input.a.x, true), 35674u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(22296u, 1u, var_0.a, u_input.a.x), abs(vec4<u32>(4294967295u, 3859u, var_0.a, var_0.a)), true), vec4<u32>(var_0.a, var_0.a, 4294967295u, 1u)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 0u, 1u, 0u), vec4<u32>(31599u, var_0.a, u_input.a.x, 1u)) ^ ~var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(396f)) - 1034f)))));
}

