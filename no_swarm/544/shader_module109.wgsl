struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    var var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, true, false))), true);
    var_0 = vec2<bool>(false, var_0.x);
    let var_1 = -791f;
    let var_2 = Struct_2(var_0.x != true);
    var_0 = vec2<bool>(all(!vec4<bool>(true, var_0.x | false, true, var_2.a & var_2.a)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(var_2.a, !var_0.x, false, var_2.a), !(!vec4<bool>(var_0.x, false, false, var_2.a)))));
    return abs(min(~(~40257u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 1u, 40312u, 4294967295u)) | 4294967295u));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2, -895f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1416f * 1000f))) + arg_1.x), arg_3.x);
    var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(var_0.a)), -34420i);
    var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2473f + -1630f)), var_0.a))), ~u_input.a.x | (-(2147483647i & var_0.b) & arg_3.x));
    let var_1 = _wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -781f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-246f, 1499f) * 866f)));
    var_0 = Struct_1(-600f, _wgslsmith_clamp_i32(~(-firstTrailingBit(2147483647i)), ~(-(~u_input.a.x)), 1i >> (~func_3(vec4<i32>(2147483647i, 1i, 1i, 69573i)) % 32u)));
    return Struct_1(246f, var_0.b);
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = func_2(~select(vec3<i32>(~(-1706i), max(-58216i, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), u_input.a, select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.x, arg_0.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1385f, arg_0.x) * vec3<f32>(arg_0.x, 545f, 521f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -1000f) - vec3<f32>(arg_0.x, -1223f, -1148f)))))), arg_0.x, vec2<i32>(i32(-1i) * -1i, u_input.a.x | 1i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(-336f)), ~9763i);
    var var_2 = 0i ^ var_1.b;
    var_0 = func_2(u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.a), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-252f))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, var_0.a, 367f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 837f, var_0.a) - vec3<f32>(-1000f, arg_0.x, arg_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f)), u_input.a.yx ^ ~(vec2<i32>(u_input.a.x, -2147483647i) ^ -vec2<i32>(u_input.a.x, u_input.a.x)));
    var var_3 = _wgslsmith_clamp_u32(firstTrailingBit(~1u) ^ abs(1u), 0u, 1u);
    return 18801u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(40463u, firstTrailingBit(min(~44817u, min(func_1(vec2<f32>(-1236f, 338f)), 1u))));
    let var_1 = true;
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1086f, -2074f)), vec2<f32>(-732f, 1000f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-988f, 404f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2097f, 285f) + vec2<f32>(-279f, 2466f))))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1031f, 672f) + -498f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(trunc(291f))))), -191f));
    var var_4 = Struct_2(!all(select(select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, true, true), true), !vec3<bool>(var_1, false, true), false & var_1)));
    let var_5 = min(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_div_i32(~u_input.a.x, countOneBits(~u_input.a.x))), abs(-(~firstTrailingBit(-34403i))));
    let var_6 = vec2<bool>(true, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_2, 54223u), _wgslsmith_mod_vec4_u32(~(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2, var_2, 25051u, var_2), vec4<u32>(96563u, 11284u, 29598u, 0u)) >> (vec4<u32>(var_0, var_0, var_0, var_0) % vec4<u32>(32u))), ~max(vec4<u32>(var_0, 0u, var_2, var_2), abs(vec4<u32>(4294967295u, var_2, 37713u, 0u)))), _wgslsmith_div_vec4_i32(select(~vec4<i32>(-14864i, u_input.a.x, 2147483647i, u_input.a.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, var_5, 2147483647i), vec4<i32>(var_5, -11851i, u_input.a.x, 1i)), var_1), vec4<i32>(_wgslsmith_mod_i32(var_5, var_5) | u_input.a.x, ~reverseBits(var_5), _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, 2147483647i), 24696i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_5, 4153i, 0i), var_5))), var_3.x);
}

