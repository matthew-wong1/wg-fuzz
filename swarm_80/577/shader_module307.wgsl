struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> vec4<f32> {
    var var_0 = ~reverseBits(firstTrailingBit(~vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1971f, 1000f, 753f, -1000f), vec4<f32>(1698f, 142f, 896f, -639f), false))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(531f, -2118f, -335f, -543f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(819f, 286f, -315f, -1446f), vec4<f32>(681f, 1001f, 2317f, -1486f), true)))))));
    let var_2 = u_input.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_1.x)), var_1.x)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<u32>(~abs(abs(arg_0.x & 52590u)), 33182u, u_input.b, max(4294967295u, ~_wgslsmith_dot_vec2_u32(arg_0.yy, arg_0.xw)));
    var_0 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2()).x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1659f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1751f + -712f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(351f)))))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), _wgslsmith_f_op_vec4_f32(func_2())));
    let var_1 = Struct_5(!(!any(vec4<bool>(true, true, false, false))), Struct_4(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)))), _wgslsmith_f_op_f32(trunc(-186f)));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_2()).x));
    var_2 = _wgslsmith_f_op_f32(round(var_0.x));
    var_0 = vec4<f32>(-371f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2009f * var_1.c) - _wgslsmith_f_op_f32(f32(-1f) * -2314f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(118868u, arg_0.a, 0u, u_input.b), Struct_1(arg_1, vec4<i32>(arg_0.b.x, -1i, 33175i, arg_0.b.x), arg_1, arg_0.b.x, true))))) * var_1.c), var_1.c, _wgslsmith_div_f32(1241f, var_1.c));
    return Struct_1(arg_1, abs(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 2147483647i), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2, 1i, arg_0.b.x), arg_0.b), (-1i | arg_1) | (arg_1 ^ 54673i), 2147483647i)), arg_0.b.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(select(9599i, 2147483647i >> (1u % 32u), var_1.b.a.x), -u_input.a), reverseBits(30054i)), false);
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = Struct_5(true, Struct_4(vec3<bool>(true, any(vec4<bool>(false, arg_2.e, false, arg_2.e)), !(!arg_2.e))), _wgslsmith_f_op_f32(max(152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1226f, -489f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * 296f));
    var var_2 = any(select(!select(select(vec4<bool>(var_0.b.a.x, arg_2.e, arg_2.e, true), vec4<bool>(false, false, arg_2.e, true), vec4<bool>(arg_2.e, false, arg_2.e, false)), !vec4<bool>(arg_2.e, false, var_0.b.a.x, false), !var_0.a), select(select(!vec4<bool>(true, arg_2.e, var_0.b.a.x, true), vec4<bool>(arg_2.e, false, var_0.a, false), vec4<bool>(true, arg_2.e, arg_2.e, true)), vec4<bool>(all(var_0.b.a), arg_1.x > -7946i, false, false), !any(vec4<bool>(false, arg_2.e, true, arg_2.e))), select(vec4<bool>(true, false, true, true), vec4<bool>(all(var_0.b.a), all(var_0.b.a), true, var_0.b.a.x), !select(vec4<bool>(true, var_0.a, true, true), vec4<bool>(var_0.b.a.x, true, var_0.b.a.x, true), vec4<bool>(var_0.a, false, var_0.b.a.x, true)))));
    var var_3 = func_1(Struct_2(u_input.b, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(48003i, arg_2.a, 74031i, u_input.a), arg_2.b) << ((u_input.b | 1u) % 32u), arg_2.b.x, 1i)), abs(_wgslsmith_mult_i32(-18417i, ~_wgslsmith_dot_vec4_i32(arg_2.b, vec4<i32>(u_input.a, arg_0, 15962i, 26523i)))), firstTrailingBit(_wgslsmith_add_i32(43426i, 5032i)) | arg_0);
    return arg_2.b;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> Struct_4 {
    return Struct_4(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), ~(2147483647i | arg_1.x) >= u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(false, func_5(_wgslsmith_f_op_f32(-1051f + 254f), _wgslsmith_div_vec4_i32(func_4(reverseBits(u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), func_1(Struct_2(u_input.b, vec3<i32>(u_input.a, 2147483647i, u_input.a)), u_input.a, 7734i)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(45373i, 10846i), vec2<i32>(u_input.a, 2147483647i)), -2147483647i, u_input.a, _wgslsmith_div_i32(u_input.a, 60387i))), _wgslsmith_mult_i32(-2147483647i, ~(u_input.a & 20432i))), _wgslsmith_f_op_f32(f32(-1f) * -805f));
    var var_1 = _wgslsmith_sub_i32(1i, -32i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_0.c));
    let var_3 = !vec4<bool>(var_0.a, true, var_0.b.a.x, false);
    let var_4 = vec2<bool>(select(false, true, (_wgslsmith_f_op_f32(-var_0.c) == _wgslsmith_f_op_f32(1073f * var_0.c)) | select(var_3.x, var_0.a, !var_3.x)), var_3.x);
    var_0 = Struct_5((reverseBits(~0u) <= u_input.b) | select(!all(vec3<bool>(false, var_0.b.a.x, false)), true, !(!var_0.b.a.x)), var_0.b, _wgslsmith_f_op_f32(trunc(-188f)));
    var_1 = u_input.a;
    var var_5 = ~(~(-select(func_4(u_input.a, vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(u_input.a, vec4<i32>(0i, -2147483647i, u_input.a, u_input.a), -2147483647i, -2147483647i, var_3.x)).zwz, ~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, var_3.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(~firstTrailingBit(4294967295u), u_input.b), countOneBits(~u_input.b << (u_input.b % 32u))), ~countOneBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(9143u, u_input.b), vec2<u32>(u_input.b, 0u), ~vec2<u32>(u_input.b, 1u))));
}

