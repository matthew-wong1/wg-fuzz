struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<u32>) -> f32 {
    let var_0 = Struct_1(~(_wgslsmith_mult_i32(-9871i, _wgslsmith_div_i32(-12397i, 62042i)) >> (~arg_3.x % 32u)), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_3.x, 55363u, arg_3.x), vec3<u32>(1u, 1u, 1u), true), reverseBits(abs(vec3<u32>(arg_3.x, 53329u, arg_3.x)))), false);
    var var_1 = -(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.a, arg_0, -12461i, 2147483647i)), ~vec4<i32>(-2147483647i, 24215i, var_0.a, -1659i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, arg_0), vec4<i32>(u_input.b.x, 1i, u_input.b.x, var_0.a))));
    let var_2 = arg_2.xy;
    var var_3 = _wgslsmith_dot_vec2_u32(firstTrailingBit(reverseBits(select(countOneBits(arg_3), arg_3, arg_2.zx))), arg_3);
    let var_4 = var_0;
    return -1064f;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>) -> vec3<f32> {
    var var_0 = u_input.b.xy;
    var var_1 = ~1u;
    var_0 = min(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.x, -1i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~(-vec2<i32>(u_input.b.x, var_0.x))), vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_div_i32(-58688i, abs(-13682i))), reverseBits(arg_0.x)));
    var_1 = ~_wgslsmith_mod_u32(4589u, 14201u) << (reverseBits(_wgslsmith_sub_u32(reverseBits(~4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(41928u, 3123u), vec2<u32>(1u, 10122u)))) % 32u);
    var_1 = _wgslsmith_mult_u32(3217u, _wgslsmith_mult_u32(76374u, ~firstTrailingBit(4294967295u))) ^ ~abs(~(~34386u));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1287f, 1290f, 1550f) * vec3<f32>(2067f, -1244f, -1477f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1707f, -969f, 1364f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-142f, -348f, 1483f)))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(func_3(16373i, 1055f, arg_1, vec2<u32>(0u, 57389u))), _wgslsmith_f_op_f32(trunc(354f)), _wgslsmith_f_op_f32(ceil(1180f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-342f, -1681f, 1008f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-982f, -1000f, -1027f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(471f, -1180f, -308f)))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(trunc(818f))) + _wgslsmith_f_op_f32(-219f * arg_1.x));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_1.x))));
    let var_1 = Struct_1(reverseBits(1i), ~arg_0.b, any(select(!select(vec4<bool>(true, true, arg_0.c, false), vec4<bool>(true, arg_0.c, false, arg_0.c), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c)), vec4<bool>(arg_0.c & arg_0.c, arg_0.b < 34753u, arg_0.c, !arg_0.c), any(select(vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.c, false), vec2<bool>(false, arg_0.c))))));
    var var_2 = vec3<u32>(21322u, var_1.b, abs(var_1.b));
    var_0 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: i32) -> StorageBuffer {
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-832f, 919f))))), -439f, arg_0.x, _wgslsmith_f_op_f32(func_4(Struct_1(-10719i, ~0u, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 903f)), _wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(arg_2, arg_1), vec4<bool>(true, false, true, true))))))), ~(~(~_wgslsmith_sub_u32(4294967295u, 8442u))), -1i, arg_1, ~(~(~abs(vec4<u32>(1u, 4541u, 1u, 14933u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-850f, -1000f, -1189f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-304f, -885f, -2893f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(939f, 477f, -1161f)))))))), _wgslsmith_mult_i32(reverseBits(0i), _wgslsmith_add_i32(select(1i, reverseBits(u_input.b.x), true), u_input.a)), 2147483647i);
}

