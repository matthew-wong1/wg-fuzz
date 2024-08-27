struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec4<i32> {
    return vec4<i32>(2147483647i, countOneBits(1i), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_1, u_input.c | 0i), 7343i)), -arg_1);
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    let var_1 = ~vec3<u32>(4294967295u, u_input.a, 15433u);
    let var_2 = Struct_1(func_3(any(vec2<bool>(true, true)), i32(-1i) * -24928i) & var_0.a, _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) * _wgslsmith_f_op_f32(-arg_0.b)), arg_0.b))));
    var var_3 = var_0;
    return true;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = -519f;
    var var_1 = func_2(arg_0);
    var var_2 = select(vec2<bool>(select(any(vec3<bool>(true, false, true)), true, all(vec4<bool>(true, true, true, true))), true), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), var_0 >= -177f), select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(false, false, false))), vec2<bool>(all(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, true, true)))), true);
    var_2 = !select(select(select(select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x)), !vec2<bool>(var_2.x, var_2.x), !vec2<bool>(true, var_2.x)), vec2<bool>(all(vec4<bool>(true, true, var_2.x, true)), all(vec2<bool>(var_2.x, var_2.x))), vec2<bool>(var_2.x, var_0 > arg_0.b)), vec2<bool>(var_2.x, var_2.x), !select(all(vec3<bool>(var_2.x, true, var_2.x)), !var_2.x, var_2.x));
    return countOneBits(abs(1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>(~1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(42503i, u_input.c, 1i)), -vec3<i32>(0i, u_input.c, u_input.c)), _wgslsmith_add_i32(max(u_input.c, 55321i), u_input.c >> (0u % 32u)), 1i), -(func_1(Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), -314f)) | 17277i), _wgslsmith_mod_i32(~firstTrailingBit(-73798i), _wgslsmith_clamp_i32(u_input.c, -2147483647i, -u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(686f * -2125f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1272f - 1947f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1320f), _wgslsmith_f_op_f32(-177f + _wgslsmith_f_op_f32(f32(-1f) * -1493f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    var_0 = Struct_1(-(~var_0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1315f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1552f + var_1.x))))));
    var var_2 = Struct_1(min(var_0.a, vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(29498i, u_input.c, -43999i, u_input.c)), var_0.a), u_input.c, _wgslsmith_mult_i32(u_input.c, 7244i), 0i << (u_input.a % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b)) - _wgslsmith_f_op_f32(-1981f - 823f))));
    let var_3 = _wgslsmith_add_vec3_i32(var_0.a.zzx, vec3<i32>(_wgslsmith_dot_vec4_i32(var_0.a, _wgslsmith_mod_vec4_i32(var_2.a, vec4<i32>(u_input.c, -1i, -20351i, 6319i))) ^ var_0.a.x, 22979i, _wgslsmith_dot_vec4_i32(firstLeadingBit(var_0.a), var_0.a)));
    let var_4 = Struct_1(_wgslsmith_clamp_vec4_i32(~var_2.a, abs(countOneBits(~var_2.a)), var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)));
    let var_5 = reverseBits(max(u_input.b, _wgslsmith_sub_u32(firstTrailingBit(0u), u_input.a << (firstTrailingBit(u_input.a) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, -25282i), vec2<i32>(1i, var_2.a.x)), _wgslsmith_div_i32(var_0.a.x, u_input.c)), _wgslsmith_div_vec2_i32(max(var_2.a.yw, vec2<i32>(18338i, -36163i)), var_0.a.wy | var_2.a.xw)), ~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -45950i), countOneBits(var_3.yz))), var_0.a.x, var_3);
}

