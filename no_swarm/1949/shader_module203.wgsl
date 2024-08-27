struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, u_input.a.x, ~1u, arg_0.d), u_input.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-638f + 587f)), arg_0.c), -306f)));
    var var_2 = arg_0;
    var var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c, -1538f), vec2<f32>(var_2.c, 1077f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.c, arg_0.c), vec2<f32>(arg_0.c, var_3.c), true)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-666f, 350f))))))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1579f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-945f, var_3.c), vec2<f32>(var_3.c, arg_0.c)))), vec2<bool>(true, true))), !all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)) && any(vec2<bool>(any(vec2<bool>(true, true)), true))));
    return var_0.yw;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = -10522i;
    let var_1 = ~(i32(-1i) * -(arg_3.b << (1u % 32u)));
    var var_2 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -arg_2, _wgslsmith_mod_i32(arg_2, 33098i)), ~(vec3<i32>(arg_0.b, 1i, 94943i) | vec3<i32>(arg_3.b, 13341i, 8593i))) & (_wgslsmith_add_i32(var_1, 191i) >> (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(19669u, 0u << (arg_3.a % 32u)), abs(reverseBits(arg_0.a)), 1u & arg_0.a) % 32u));
    var_2 = -29362i;
    var var_3 = ~_wgslsmith_sub_vec2_u32(abs(min(u_input.a.xy, reverseBits(u_input.a.yy))), vec2<u32>(arg_0.d, _wgslsmith_sub_u32(u_input.a.x, 46541u)) | (~vec2<u32>(arg_0.a, 0u) ^ func_3(arg_0)));
    return vec2<bool>(any(vec3<bool>(false, false, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))))), true);
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = select(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), false))), vec2<bool>(true, true), func_2(Struct_1(0u, max(firstLeadingBit(-2147483647i), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-547f * -104f)), 16996u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f), -862f) * -2231f), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(57205i, 0i)) << (u_input.a.x % 32u), Struct_1(1u, _wgslsmith_mod_i32(1i, i32(-1i) * -3193i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1249f, 749f, true)) + _wgslsmith_f_op_f32(max(1946f, -2004f))), ~arg_0 ^ ~4294967295u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1743f, -418f), _wgslsmith_f_op_f32(282f + -288f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1009f))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-3200f, -1722f)) * _wgslsmith_f_op_f32(-733f + 1104f)), -1543f))) - _wgslsmith_f_op_f32(-1f));
    var var_2 = u_input.a.x;
    let var_3 = !(!select(false, any(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !(var_0.x | var_0.x)));
    let var_4 = Struct_1(_wgslsmith_add_u32(74843u, 52053u), -13652i, var_1, ~1u);
    return -12476i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = false;
    var var_1 = arg_0.x;
    var_1 = _wgslsmith_div_i32(countOneBits(40807i), _wgslsmith_mult_i32(arg_1.b, ~arg_1.b));
    var_1 = 4050i;
    var var_2 = ~vec2<i32>(_wgslsmith_div_i32(~func_1(arg_1.a), ~(-1i)), abs(max(3911i, _wgslsmith_add_i32(-15437i, arg_1.b))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-276f, -2104f, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.c, arg_1.c)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2469f + -1195f)), 1f, -723f), func_3(Struct_1(arg_1.a, arg_0.x, -1371f, u_input.a.x)).x <= 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, -350f)))), -(~(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(abs(vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(u_input.a.x, func_1(1u), _wgslsmith_f_op_f32(ceil(-441f)), firstTrailingBit(4294967295u)));
}

