struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<f32> {
    let var_0 = true;
    let var_1 = Struct_1(vec4<i32>(10816i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.zy, u_input.a.yz), ~vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_div_i32(u_input.a.x, firstLeadingBit(-1i)) & _wgslsmith_div_i32(~u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, i32(-1i) * -2147483647i), -(vec2<i32>(1i, -2147483647i) ^ vec2<i32>(u_input.a.x, -27235i)))));
    let var_2 = ~(~(~u_input.b.x));
    let var_3 = select(!(!select(!vec2<bool>(var_0, true), vec2<bool>(true, var_0), var_0)), vec2<bool>(var_0, false), var_0 == select(false, var_0, var_0));
    let var_4 = vec4<bool>(var_1.a.x > u_input.a.x, var_3.x, any(!vec4<bool>(var_3.x, var_3.x || true, !var_0, true)), any(var_3));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2080f + _wgslsmith_f_op_f32(select(525f, -240f, false)))), -1000f);
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> i32 {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, 40862i), ~27001i, 1i, ~u_input.a.x));
    var var_1 = var_0.a.x ^ (countOneBits(_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(14143i, u_input.a.x, 0i, var_0.a.x))) & (var_0.a.x >> (4294967295u % 32u)));
    var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(arg_1, -429f)), arg_0.x))))));
    let var_3 = 0i;
    return _wgslsmith_add_i32(reverseBits(var_3) << (((_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) ^ 1u) & _wgslsmith_dot_vec4_u32(~u_input.b, u_input.b)) % 32u), countOneBits(19035i));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_1(~(-vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -1i | u_input.a.x, func_2(vec4<bool>(true, false, true, true), -1000f), reverseBits(2205i))));
    var_0 = Struct_1(firstLeadingBit(var_0.a));
    return 1408f;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1972f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()))))));
    var var_1 = Struct_1(vec4<i32>(62028i, func_2(!vec4<bool>(true, arg_3, false, false), var_0.x) ^ ~min(arg_2.x, -2850i), 1313i, arg_2.x));
    var_1 = Struct_1(-arg_2);
    var var_2 = Struct_1(-abs(-vec4<i32>(0i, arg_2.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, 1u, 97114u) % vec4<u32>(32u))));
    let var_3 = Struct_1(var_1.a);
    return StorageBuffer(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0.x, 435f, any(vec3<bool>(arg_3, false, false)) && arg_3)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-436f, 1147f, arg_0.x))) * vec3<f32>(_wgslsmith_f_op_f32(var_0.x * 1340f), _wgslsmith_f_op_f32(1576f * arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1831f))), arg_0)), u_input.b.x, u_input.a.x << (~u_input.b.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec4_u32(u_input.b, u_input.b);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1545f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(217f, -1810f, true))), _wgslsmith_f_op_f32(func_1(~u_input.b.xw)))), !all(vec2<bool>(true, true)), firstLeadingBit(abs(vec4<i32>(-u_input.a.x, 1i, 5161i, u_input.a.x))), true);
}

