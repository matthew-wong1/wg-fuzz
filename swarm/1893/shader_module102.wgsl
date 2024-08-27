struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 0i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<f32> {
    global0 = _wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(global0.x << (1u % 32u), _wgslsmith_div_i32(16656i, global0.x)))), u_input.a.xz >> (~vec2<u32>(1u, ~0u) % vec2<u32>(32u)));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-620f * 761f), -1167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -694f))))), -1i, _wgslsmith_add_vec2_i32(-select(u_input.a.zx << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), vec2<i32>(-2147483647i, -8043i) ^ vec2<i32>(u_input.a.x, 1i), any(vec3<bool>(false, true, false))), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, 2147483647i) << (~vec2<u32>(17959u, 93042u) % vec2<u32>(32u)), -_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.b), u_input.a.zz), vec2<i32>(global0.x, 29028i) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))));
    var var_1 = var_0;
    global0 = var_1.c;
    var var_2 = abs(-vec3<i32>(i32(-1i) * -1i, var_0.b, max(var_0.b, global0.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2220f, _wgslsmith_f_op_f32(var_0.a.x * var_1.a.x)))), _wgslsmith_f_op_f32(step(-1623f, var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_1.a.x), _wgslsmith_f_op_f32(ceil(var_1.a.x)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_1, -1000f) + vec4<f32>(arg_2, arg_1, arg_2, -1519f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-572f, arg_2, 2253f, 655f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_1, arg_0.a.x, arg_1) - vec4<f32>(arg_2, 1000f, arg_2, arg_0.a.x))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 1389f, 886f, -819f)) - _wgslsmith_f_op_vec4_f32(func_3()))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_2, 108f, -1260f), vec4<f32>(_wgslsmith_f_op_f32(757f + -1407f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1077f) - 1000f), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f) + _wgslsmith_f_op_f32(trunc(arg_1)))))));
    global0 = firstTrailingBit(vec2<i32>(arg_3.x, u_input.a.x));
    let var_1 = arg_0;
    let var_2 = max(4294967295u, _wgslsmith_dot_vec2_u32(reverseBits(~(~vec2<u32>(7614u, 1u))), select(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(func_3()).x, 1701f, arg_1) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1985f + -778f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - arg_1)), _wgslsmith_f_op_f32(-1504f + -1095f))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.a))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec4_f32(func_3()).xx))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1870f), _wgslsmith_div_f32(-420f, arg_1)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.xw)))))));
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-727f, 147f), vec2<f32>(1250f, 537f)), global0.x, vec2<i32>(-1i, -2147483647i) & vec2<i32>(0i, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(272f, -546f))), _wgslsmith_f_op_f32(abs(-1198f)), vec4<i32>(0i, 1i, _wgslsmith_mult_i32(27793i, global0.x), ~global0.x)))), u_input.a.x, min(-u_input.a.zx & u_input.a.yz, -_wgslsmith_mult_vec2_i32(~u_input.a.yy, -vec2<i32>(-12103i, -1i))));
    var var_1 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)));
    let var_2 = u_input.a;
    var_1 = !(!select(!(!vec3<bool>(false, true, var_1.x)), vec3<bool>(true, var_1.x, select(var_1.x, var_1.x, true)), vec3<bool>(false, true, all(vec2<bool>(true, var_1.x)))));
    let var_3 = ~1i;
    return var_2.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(~_wgslsmith_mod_vec2_i32(func_1(), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.yz, vec2<i32>(-1i, 2147483647i)), u_input.a.zz | vec2<i32>(u_input.a.x, 2147483647i), ~vec2<i32>(-11290i, global0.x))));
    global0 = reverseBits(func_1());
    global0 = -(-reverseBits(u_input.a.yz) >> (_wgslsmith_mod_vec2_u32(firstTrailingBit(abs(vec2<u32>(4294967295u, 46510u))), firstTrailingBit(vec2<u32>(1u, 1u))) % vec2<u32>(32u)));
    var var_0 = select(u_input.a.zz, abs(~(~vec2<i32>(6749i, -19952i))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, any(vec3<bool>(true, false, true))), true), vec2<bool>(select(select(true, true, true), false, all(vec3<bool>(true, false, true))), !(48604i > global0.x))));
    var_0 = u_input.a.yz;
    var var_1 = -vec4<i32>(-64713i, 1i, u_input.b, -min(_wgslsmith_add_i32(u_input.b, -1i), u_input.d));
    let var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(select(max(~28422u, ~41801u), ~firstTrailingBit(39560u), false) << (1u % 32u), vec2<u32>(firstTrailingBit(~1u), countOneBits(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 0u), 1u))), ~vec2<u32>(4294967295u, _wgslsmith_clamp_u32(abs(19604u), reverseBits(1u), ~4294967295u)), ~1u, -853f);
}

