struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    let var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(953f, -1919f)));
    let var_3 = vec3<i32>(_wgslsmith_add_i32(~(-35761i >> (arg_1.x % 32u)), -arg_0.a.x & min(1900i, var_0.a.x)) | 0i, 0i, var_1.a.x);
    var var_4 = firstLeadingBit(vec4<u32>(arg_1.x, ~51602u, _wgslsmith_add_u32(arg_1.x, ~countOneBits(44751u)), arg_1.x));
    return abs(~_wgslsmith_mod_i32(var_3.x, ~var_0.a.x) ^ 18055i);
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = -(~select(-(~vec3<i32>(15779i, 0i, -13293i)), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(6036i, -43891i, 0i)), vec3<i32>(-1i, -6564i, -2147483647i) >> (vec3<u32>(4199u, u_input.b, u_input.c) % vec3<u32>(32u))), arg_0));
    let var_1 = Struct_1(~(-vec3<i32>(var_0.x, var_0.x, 35047i) & abs(vec3<i32>(var_0.x, 2147483647i, var_0.x))) ^ -_wgslsmith_add_vec3_i32(max(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(2147483647i, var_0.x, -2147483647i)), vec3<i32>(2147483647i, var_0.x, 34726i)));
    let var_2 = -(-(vec2<i32>(-1i) * -vec2<i32>(2147483647i, var_1.a.x)) >> ((u_input.a.zy >> (vec2<u32>(~12784u, 59785u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_3 = ~abs(func_3(Struct_1(vec3<i32>(11765i, var_1.a.x, var_2.x) | var_1.a), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 30277u), vec2<u32>(u_input.c, 0u), u_input.a.zz))));
    var_0 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(-var_2.x, -22438i, -2147483647i)), -(~var_1.a));
    return -680f;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i >> (u_input.b % 32u), ~1i) | countOneBits(vec2<i32>(-1i, 59353i)), vec2<i32>(1i, 1i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(select(false, true, !arg_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3457f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(406f, -1130f)) - 1f), _wgslsmith_f_op_f32(131f * -1484f))));
    var_1 = _wgslsmith_f_op_f32(func_2(arg_1));
    var_0 = ~firstTrailingBit(1i);
    let var_2 = _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(-abs(1i), 55956i, 0i));
    return Struct_1(vec3<i32>(var_2, select(16534i, var_2 ^ -var_2, !all(vec2<bool>(arg_1, false))), var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-48921i, -25286i, -17918i) << (u_input.a.xwy % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(1i, 2147483647i, -11539i)) << ((u_input.a.zxz << (u_input.a.xzx % vec3<u32>(32u))) % vec3<u32>(32u))));
    var_0 = func_1(~u_input.a, select(true, true, u_input.c == _wgslsmith_sub_u32(34439u, u_input.b)) && true, 42419u);
    var_0 = Struct_1(abs(var_0.a));
    var var_1 = ~(~vec2<u32>(select(4294967295u, u_input.c, true), u_input.b));
    let var_2 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(167f, 389f)))))), 24551u << (u_input.a.x % 32u), ~var_0.a, ~vec2<u32>(_wgslsmith_add_u32(~10996u, _wgslsmith_div_u32(64216u, 23901u)), var_2), reverseBits(var_2));
}

