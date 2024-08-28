struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec2<i32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    return Struct_1(true);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(arg_2.a);
    var var_2 = arg_3 >> (vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(1u, arg_3.x, arg_3.x), min(reverseBits(arg_3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, 4294967295u, arg_3.x), vec3<u32>(arg_3.x, 46356u, 7426u)))), arg_3.x) % vec2<u32>(32u));
    let var_3 = func_2(-(~(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 48467i, u_input.b.x), vec3<i32>(u_input.c, -64059i, -2147483647i)))));
    let var_4 = ~select(max(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, var_2.x, 4294967295u, arg_3.x) >> (vec4<u32>(arg_3.x, 82114u, 4294967295u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(var_2.x, arg_3.x, 37365u, arg_3.x)), firstLeadingBit(~vec4<u32>(arg_3.x, arg_3.x, 0u, arg_3.x))), ~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_2.x, var_2.x, 55675u, arg_3.x)), ~vec4<u32>(var_2.x, 0u, 42753u, 12171u)), true);
    return 1f;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = 1f;
    var var_1 = func_2(countOneBits(vec3<i32>(i32(-1i) * -u_input.b.x, -(~u_input.c), u_input.a)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, arg_0))) * _wgslsmith_f_op_f32(func_3(func_2(countOneBits(~vec3<i32>(-5463i, -9127i, u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_f32(-2064f - _wgslsmith_f_op_f32(f32(-1f) * -2014f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-205f + arg_0)), arg_0), func_2(select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.b.x), vec3<i32>(-2147483647i, 36448i, -60002i)), -vec3<i32>(0i, u_input.b.x, 19481i), !var_1.a)), ~(~vec2<u32>(1u, 44677u)))));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_add_i32(min(-34098i, _wgslsmith_add_i32(0i, 0i)), -(countOneBits(1i) >> (~min(arg_1, arg_1) % 32u)));
    return _wgslsmith_f_op_f32(ceil(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false);
    let var_1 = abs(-(~firstTrailingBit(abs(vec4<i32>(0i, 2147483647i, u_input.a, u_input.a)))));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(181f, 0u, var_0, var_0.a))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))));
    var_2 = true;
    var var_4 = Struct_1(true);
    var_2 = true;
    var var_5 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~33075u, 4294967295u, ~(~4294967295u), min(_wgslsmith_dot_vec2_u32(vec2<u32>(51867u, 4294967295u), vec2<u32>(1u, 68699u)), firstLeadingBit(15921u))), ~(~countOneBits(vec4<u32>(27057u, 33332u, 4294967295u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3, -929f, var_3))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_3, var_3, 1048f), vec3<f32>(-973f, -1000f, -1000f)))))), -1873f, _wgslsmith_mod_vec4_u32(~(~abs(vec4<u32>(var_5.x, 111034u, var_5.x, 69706u))), vec4<u32>(_wgslsmith_sub_u32(~var_5.x, var_5.x << (var_5.x % 32u)), ~_wgslsmith_div_u32(var_5.x, 6301u), 4294967295u, _wgslsmith_div_u32(var_5.x ^ 0u, reverseBits(var_5.x)))), max(vec2<i32>(-u_input.b.x >> (var_5.x % 32u), -_wgslsmith_mult_i32(58282i, u_input.a)), max(u_input.b, max(vec2<i32>(var_1.x, -48412i) | var_1.xy, vec2<i32>(var_1.x, var_1.x)))));
}

