struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-22969i, arg_0)), vec2<i32>(0i, arg_0) & _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(1i, arg_0))), -1i, _wgslsmith_sub_i32(60785i, arg_0) | arg_0), true);
    let var_1 = _wgslsmith_f_op_f32(-1f);
    var_0 = Struct_1(reverseBits(vec3<i32>(~firstTrailingBit(arg_0), ~arg_0, ~(-arg_0))), true);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 * var_1)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(930f))))), _wgslsmith_f_op_f32(ceil(-599f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(-519f)), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(206f, var_1))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1102f, 1202f, var_1)))), vec3<f32>(var_1, var_1, _wgslsmith_div_f32(var_1, var_1)))), vec3<bool>(true, any(select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(true, false, false), vec3<bool>(true, var_0.b, var_0.b))), all(!vec4<bool>(var_0.b, var_0.b, false, true))))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_2.x, var_2.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(357f, var_1, var_1)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1000f, -400f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1212f, var_1, var_2.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -394f, -1473f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -148f, -220f) * vec3<f32>(var_1, -251f, var_2.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -672f, -1442f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-890f, var_2.x, var_2.x))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, var_2.x, -1115f))))));
    return vec4<bool>(any(vec3<bool>(any(!vec2<bool>(var_0.b, false)), any(vec4<bool>(true, false, false, var_0.b)), !all(vec3<bool>(var_0.b, var_0.b, true)))), true, !var_0.b, 907f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: vec4<u32>) -> vec2<bool> {
    return arg_2;
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = select(select(func_4(!func_3(1i), ~vec3<i32>(1i, 1i, 1i), select(vec2<bool>(arg_0, false), !vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true)), u_input.a), vec2<bool>(any(vec4<bool>(arg_0, arg_0, false, arg_0)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(arg_0, true)))), select(vec2<bool>(arg_0 & arg_0, true), !(!vec2<bool>(true, arg_0)), vec2<bool>(func_3(-2147483647i).x, true))), vec2<bool>(arg_0, !arg_0), all(func_3(countOneBits(12631i)).xxy));
    var_0 = vec2<bool>(true, all(!vec2<bool>(var_0.x, !var_0.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-760f))))), 1133f));
    var var_2 = true;
    var_2 = true;
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_div_f32(1251f, _wgslsmith_div_f32(var_1.x, 547f))) == _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 250f, _wgslsmith_f_op_f32(-var_1.x), var_1.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(880f, -2085f, 1087f, var_1.x) * vec4<f32>(var_1.x, -392f, -1058f, 174f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2003f, 350f, 613f, 1068f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1703f, var_1.x, var_1.x, 573f)))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1786f)) - vec2<f32>(214f, -2041f)))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_1.x, -1606f)), _wgslsmith_f_op_f32(step(1000f, var_1.x))))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = func_2(true);
    let var_1 = func_2(var_0.a).c;
    let var_2 = select(vec2<bool>(!(!arg_2.b), true), func_3(9823i).yy, func_3(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(46251i, 36769i, arg_2.a.x, arg_2.a.x), vec4<i32>(-2147483647i, -1i, 20679i, arg_2.a.x)) << (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u) % vec4<u32>(32u)), -(vec4<i32>(arg_2.a.x, -32793i, arg_2.a.x, 9105i) & vec4<i32>(arg_2.a.x, 736i, -29400i, arg_2.a.x)))).x);
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec2_f32(var_3.d.a + var_1.a);
    return vec2<i32>(select(_wgslsmith_div_i32(-31671i, ~arg_2.a.x), arg_2.a.x, arg_2.b & !(arg_2.a.x >= arg_2.a.x)), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(select(func_1(25867u, Struct_2(vec2<f32>(201f, 1007f)), Struct_1(vec3<i32>(12656i, 1i, 0i), false)), vec2<i32>(1i, 1i), vec2<bool>(true, true)))), firstTrailingBit(vec2<i32>(4074i, countOneBits(36955i << (u_input.a.x % 32u)))), ~u_input.a.yzy, _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.a.zy, vec2<u32>(u_input.b, 15173u)), ~u_input.a.zx, _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(1u, u_input.b) ^ vec2<u32>(17156u, u_input.a.x)), countOneBits(reverseBits(vec2<u32>(u_input.a.x, 0u))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-219f, -271f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -654f) * _wgslsmith_f_op_f32(1090f - -509f)))));
}

