struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: bool) -> f32 {
    return _wgslsmith_div_f32(263f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-281f, -190f)))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = vec3<i32>(max(abs(arg_2), arg_3), abs(firstLeadingBit(-2351i) << ((arg_1.a.a.x | u_input.b) % 32u)) >> (1u % 32u), arg_2);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(arg_0 - 606f)))))));
    return arg_1.a;
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_3(Struct_2(func_3(_wgslsmith_f_op_f32(func_2(true)), Struct_2(Struct_1(vec2<u32>(1u, u_input.a.x))), ~_wgslsmith_mult_i32(1i, -2147483647i), -22301i)));
    return func_3(-467f, var_1.a, _wgslsmith_mult_i32(countOneBits(~firstLeadingBit(10206i)), firstTrailingBit(reverseBits(~1i))), 0i);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = countOneBits(-(~firstLeadingBit(-arg_1)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-832f, -1860f))))) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -969f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(1083f)), _wgslsmith_f_op_f32(round(416f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(var_1.x)))));
    let var_3 = Struct_2(arg_3);
    var var_4 = Struct_4(abs(vec2<i32>(_wgslsmith_clamp_i32(var_0 ^ -2147483647i, var_0, -12878i), _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -2147483647i), vec2<i32>(-1i, arg_1))))), vec4<i32>(~arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(-3940i, -3855i, arg_1, -42525i) << (u_input.a % vec4<u32>(32u)), abs(vec4<i32>(-2147483647i, -49253i, 0i, var_0))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1, 1i, var_0), -42657i, reverseBits(1i)), var_0) | -min(~vec4<i32>(var_0, arg_1, arg_1, -15463i), vec4<i32>(arg_1, -1i, arg_1, var_0) & vec4<i32>(0i, -52911i, arg_1, 2147483647i)));
    return max(var_4.a, var_4.b.wz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec2_i32(min(func_4(all(vec3<bool>(false, false, true)), 1i, vec3<bool>(false, true, true), func_1()), vec2<i32>(1i, 1i)), ~(vec2<i32>(0i, 1i) << (~vec2<u32>(u_input.a.x, u_input.b) % vec2<u32>(32u))));
    var var_1 = Struct_3(Struct_2(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2300f + 642f) * _wgslsmith_f_op_f32(select(-543f, 832f, false))), Struct_2(func_1()), -(i32(-1i) * -1i), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(394f, var_0, 119f, -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_0, 44763i, var_0) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(2147483647i, -1i, var_0, var_0) ^ vec4<i32>(var_0, -1i, var_0, -5162i)), _wgslsmith_add_vec4_i32(-vec4<i32>(var_0, 8694i, 1i, -41288i), abs(vec4<i32>(-2147483647i, var_0, var_0, 1i)))));
}

