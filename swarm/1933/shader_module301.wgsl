struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 23679u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = all(select(vec2<bool>(true, all(vec3<bool>(false, true, true)) | true), select(vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(true, true), true && all(vec4<bool>(true, true, false, false))), vec2<bool>(true, true)));
    let var_1 = countOneBits(_wgslsmith_add_vec3_u32(select(firstTrailingBit(vec3<u32>(u_input.a, arg_0, 2680u)), firstTrailingBit(vec3<u32>(1u, u_input.a, u_input.a)), any(vec4<bool>(true, true, true, true))), vec3<u32>(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_mod_u32(77600u, u_input.a)), _wgslsmith_add_u32(0u >> (u_input.a % 32u), ~4294967295u), _wgslsmith_div_u32(~1u, ~arg_0))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.yzy + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, -357f, -774f), arg_1.wzx))) - arg_1.zyy) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 2163f, 2080f) * arg_1.xxy))), vec3<f32>(585f, arg_1.x, arg_1.x), all(vec2<bool>(true, true))))) * vec3<f32>(-150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(ceil(-1000f))));
    var var_3 = countOneBits(abs(countOneBits(1i)));
    var_3 = _wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, u_input.b), vec3<i32>(u_input.b, 21497i, u_input.b)), u_input.b)), -2147483647i, firstLeadingBit(u_input.b & u_input.b));
    return select(select(select(vec3<bool>(false, 4294967295u != var_1.x, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), true), !vec3<bool>(all(vec2<bool>(true, true)), true, true)), !select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec3<bool>(false, !any(vec2<bool>(true, true)), false));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    global0 = min(~0u, u_input.a);
    let var_0 = arg_1.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1));
    global0 = u_input.a;
    global0 = 74553u;
    return Struct_1(true, vec3<u32>(33119u, ~(~_wgslsmith_mult_u32(0u, u_input.a)), arg_3), all(!func_3(29484u, vec4<f32>(var_0, var_1.x, arg_1.x, 306f))), min(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -10980i), vec2<i32>(arg_0, 56827i))), vec2<i32>(~arg_0, u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 344f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1293f)))));
}

fn func_1(arg_0: bool, arg_1: bool) -> i32 {
    global0 = select(u_input.a, 2527u, arg_0);
    var var_0 = func_2(u_input.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1507f, 1042f, 1000f, -1650f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(734f, 855f, -1254f, -336f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1951f, 1203f, 610f))), false)), vec4<f32>(-882f, -279f, -1376f, _wgslsmith_div_f32(-1251f, _wgslsmith_f_op_f32(383f - -1222f))))), vec2<bool>(any(!vec4<bool>(arg_1, arg_1, true, arg_0)) && (_wgslsmith_div_u32(u_input.a, u_input.a) < 1u), select(!(arg_1 && true), 1u < u_input.a, !any(vec3<bool>(false, true, false)))), _wgslsmith_div_u32(25960u, ~(~u_input.a) >> (u_input.a % 32u)));
    var_0 = Struct_1(!(~abs(u_input.a) >= _wgslsmith_dot_vec2_u32(var_0.b.yx, vec2<u32>(u_input.a, var_0.b.x))), vec3<u32>(countOneBits(var_0.b.x >> (64177u % 32u)), 0u, _wgslsmith_dot_vec3_u32(~(~var_0.b), vec3<u32>(39010u, _wgslsmith_mult_u32(0u, u_input.a), min(u_input.a, 68395u)))), !arg_1, var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.e))));
    global0 = var_0.b.x;
    var var_1 = 94906u;
    return -9609i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 26467u;
    let var_0 = ~(vec3<i32>(-func_1(false, false), u_input.b, -(u_input.b << (48943u % 32u))) >> (~_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 58010u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(41635u, u_input.a, u_input.a))) % vec3<u32>(32u)));
    var var_1 = !select(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), vec4<bool>(true, all(vec2<bool>(true, false)), select(true, true, true), false), !any(vec3<bool>(false, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(true, false, false)), true);
    var_1 = vec4<bool>(var_1.x, false, all(select(select(var_1.xx, vec2<bool>(false, var_1.x), var_1.x), !select(var_1.yz, var_1.yz, true), vec2<bool>(var_1.x || false, true))), any(var_1.xxw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(-1i, vec4<f32>(-1000f, 352f, -421f, -594f), var_1.zw, 4294967295u).e)) + _wgslsmith_f_op_f32(f32(-1f) * -934f)), _wgslsmith_clamp_i32((-2147483647i << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u)) & ~u_input.b, -2147483647i, ~_wgslsmith_dot_vec3_i32(var_0, var_0 | vec3<i32>(18653i, 1i, var_0.x))), 32493u, select(var_0.zx, ~var_0.zy, var_0.x == firstTrailingBit(u_input.b << (u_input.a % 32u))));
}

