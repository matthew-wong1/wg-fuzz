struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    return 0i;
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> f32 {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(56244i, _wgslsmith_sub_i32(arg_1, arg_1)), ~arg_1);
    let var_1 = arg_0.x;
    let var_2 = Struct_1(u_input.a.x);
    let var_3 = !vec3<bool>(true, !(!(var_1 >= 589f)), true);
    var var_4 = ~(_wgslsmith_add_u32(4294967295u, abs(_wgslsmith_add_u32(0u, 0u))) << (min(var_2.a, _wgslsmith_clamp_u32(1u, ~u_input.a.x, _wgslsmith_add_u32(var_2.a, 13527u))) % 32u));
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(691f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2270f, -919f), vec2<f32>(-845f, 723f)) * vec2<f32>(-1171f, 977f)), -2147483647i)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1156f * _wgslsmith_f_op_f32(f32(-1f) * -1816f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(216f - 391f)))))));
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(true, true), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-975f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -158f), 887f, var_1.x)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1218f, 502f));
    let var_2 = -62158i;
    return Struct_1(abs(1u) | _wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a & u_input.a, u_input.a)));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-326f + _wgslsmith_f_op_f32(1437f - -1687f)) - -635f), _wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(296f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-360f + 1318f) * 1f)));
    let var_1 = ~(vec3<i32>(reverseBits(arg_1 | 2147483647i), abs(2147483647i >> (arg_2.x % 32u)), _wgslsmith_clamp_i32(-39967i, ~(-38147i), arg_1)) >> (_wgslsmith_sub_vec3_u32(arg_2, arg_2) % vec3<u32>(32u)));
    var var_2 = any(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_3 = _wgslsmith_f_op_f32(ceil(497f));
    var_2 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) + _wgslsmith_f_op_f32(1010f - -185f)) + var_3) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(615f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<u32>(u_input.a.x, u_input.a.x), func_1(vec4<u32>(u_input.a.x, 2732u, 32753u, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), func_2())) - 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-579f - 921f), 221f), _wgslsmith_f_op_f32(530f + _wgslsmith_f_op_f32(round(-484f))));
    var var_1 = vec2<i32>(countOneBits(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(18216i, -79626i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(1i, -1666i))), ~0i)), _wgslsmith_mod_i32(-5915i, min(1i, abs(abs(-27493i)))));
    let var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-57036i, var_1.x, var_1.x, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x))), max(vec4<i32>(0i, var_1.x, var_1.x, var_1.x), vec4<i32>(-29590i, var_1.x, var_1.x, var_1.x))), vec4<i32>(min(var_1.x, 1i), 15736i, var_1.x, 2147483647i) ^ countOneBits(-vec4<i32>(var_1.x, 0i, var_1.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1140f - var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)) * -801f)), ~_wgslsmith_sub_u32(31813u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(119774u, 1u, 0u), vec3<u32>(16122u, 0u, 60423u)))));
}

