struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-963f, arg_0.x) - _wgslsmith_f_op_vec2_f32(-var_0.a)))), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(var_0.a, _wgslsmith_f_op_vec2_f32(round(arg_0)))))), var_0.a));
    let var_2 = vec4<i32>(-13761i, 41127i, -2147483647i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(-13081i, 3941i, 22364i, u_input.a) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(-9777i, -27204i, u_input.b.x, -2147483647i))), vec4<i32>(-2147483647i, -1i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x << (arg_1.x % 32u)), firstLeadingBit(0i))));
    let var_3 = select(vec3<i32>(-1i, var_2.x, firstTrailingBit(min(-68104i, 28761i))), var_2.yzz, any(!vec3<bool>(true, !var_1.b, !arg_2.b)));
    var_1 = Struct_1(vec2<f32>(_wgslsmith_div_f32(var_0.c.x, arg_2.a.x), arg_0.x), select(any(!select(vec3<bool>(var_1.b, true, false), vec3<bool>(false, true, var_1.b), vec3<bool>(arg_2.b, true, true))), (0i >> (max(48301u, arg_1.x) % 32u)) == u_input.a, select(~arg_1.x != countOneBits(arg_1.x), all(select(vec3<bool>(arg_2.b, false, false), vec3<bool>(true, true, true), arg_2.b)), any(!vec3<bool>(var_1.b, var_0.b, false)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), arg_0.x))));
    return select(!vec2<bool>(true == (arg_2.b == arg_2.b), false), select(!select(vec2<bool>(true, true), !vec2<bool>(var_0.b, arg_2.b), true), select(!(!vec2<bool>(true, var_1.b)), vec2<bool>(any(vec2<bool>(var_1.b, arg_2.b)), arg_2.b), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2.b), vec2<bool>(false, var_1.b), vec2<bool>(var_0.b, true)), arg_2.b & arg_2.b)), select(select(select(vec2<bool>(arg_2.b, var_0.b), vec2<bool>(var_1.b, true), vec2<bool>(true, var_1.b)), vec2<bool>(true, var_0.b), true), !select(vec2<bool>(arg_2.b, var_0.b), vec2<bool>(arg_2.b, true), false), 2147483647i >= firstTrailingBit(18300i))), true);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1053f, 1000f) - vec2<f32>(638f, -1188f))))), !arg_1.x && any(func_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -2263f))), ~vec4<u32>(16074u, 103608u, arg_0, arg_0), Struct_1(vec2<f32>(-711f, -1015f), arg_1.x, vec2<f32>(-2010f, 341f)))), vec2<f32>(_wgslsmith_div_f32(-200f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1458f)) * _wgslsmith_f_op_f32(trunc(-309f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1322f)), _wgslsmith_f_op_f32(f32(-1f) * -299f)), !(!arg_1.x)))));
    let var_1 = firstTrailingBit(~(~vec3<u32>(arg_0 | 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(4294967295u, arg_0, arg_0)), ~15526u)));
    let var_2 = vec4<i32>(_wgslsmith_add_i32(-2147483647i, -24554i >> (var_1.x % 32u)), -2113i, u_input.b.x, 0i);
    var var_3 = min(_wgslsmith_dot_vec4_u32(select(select(vec4<u32>(var_1.x, 18594u, var_1.x, 1u), vec4<u32>(4294967295u, 0u, arg_0, 69582u), select(vec4<bool>(arg_1.x, var_0.b, false, var_0.b), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, var_0.b))), reverseBits(firstLeadingBit(vec4<u32>(arg_0, 1u, 9711u, arg_0))), arg_1.x), (vec4<u32>(arg_0, 76576u, arg_0, 3031u) & select(vec4<u32>(4294967295u, 0u, var_1.x, 18144u), vec4<u32>(arg_0, 26728u, 1u, arg_0), var_0.b)) & select(vec4<u32>(51396u, 32124u, arg_0, arg_0) ^ vec4<u32>(arg_0, var_1.x, 4294967295u, var_1.x), ~vec4<u32>(23329u, 1u, 4294967295u, arg_0), false && var_0.b)), ~var_1.x);
    let var_4 = var_0;
    return vec4<bool>(var_0.b, !(!(_wgslsmith_sub_u32(3632u, 0u) <= var_1.x)), var_2.x >= min(-827i, 1i | min(u_input.a, var_2.x)), false);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<i32>) -> StorageBuffer {
    let var_0 = vec3<bool>(true, arg_1, false || (true && any(func_2(4294967295u, vec2<bool>(arg_1, arg_1)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(832f, arg_0, arg_0, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(arg_0 - 871f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0)))), _wgslsmith_f_op_f32(step(-865f, 773f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 754f) + _wgslsmith_f_op_f32(ceil(arg_0)))))));
    var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(max(-1139f, arg_0)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-758f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1231f * arg_0))))), 364f, 940f);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), var_1.x, arg_0, _wgslsmith_div_f32(-283f, var_1.x)) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(arg_0, 787f), 1110f)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 118f, arg_0, arg_0)))))) - vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(546f))))), -338f, _wgslsmith_f_op_f32(ceil(arg_0))));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11115u), ~vec2<u32>(4294967295u, 16086u))), firstLeadingBit(0u)) != 1u;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, var_1.x), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, var_1.x))))), vec2<f32>(-917f, _wgslsmith_f_op_f32(var_1.x - var_1.x)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -403f), 1364f)), 18516i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(64750u, 19842u), vec2<u32>(44859u, 0u)), ~22753u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) & select(vec4<u32>(74859u, 59155u, 1u, 19739u), vec4<u32>(37369u, 1u, 1u, 51637u), true), vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(12616u), ~8747u);
    var var_1 = ~_wgslsmith_add_u32(~(var_0.x ^ 1u), var_0.x);
    let var_2 = reverseBits(u_input.a);
    var_0 = ~reverseBits(abs(~vec4<u32>(1u, 74084u, var_0.x, 4294967295u)));
    var var_3 = 842f;
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1213f * -2044f)), -455f))));
    var var_5 = var_4.x;
    var_5 = var_4.x;
    let x = u_input.a;
    s_output = func_1(-595f, !all(vec4<bool>(var_4.x == -1454f, any(vec4<bool>(false, false, false, true)), false, all(vec3<bool>(true, true, false)))), vec2<i32>(abs(_wgslsmith_add_i32(u_input.b.x, 19728i)), 2147483647i));
}

