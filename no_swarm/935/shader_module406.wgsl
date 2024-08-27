struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> i32 {
    let var_0 = Struct_1(!(!any(arg_1.a.wx)), _wgslsmith_f_op_f32(ceil(arg_2)), ~firstLeadingBit(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, -12526i) | vec4<i32>(u_input.c.x, -60624i, -32627i, u_input.c.x)) << ((vec4<u32>(u_input.a ^ u_input.a, 42202u, u_input.d.x, u_input.e.x) >> (firstLeadingBit(select(vec4<u32>(arg_0, u_input.b, 1u, 0u), u_input.e, arg_1.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-25890i, 0i, var_0.c.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.x, u_input.c.x, u_input.c.x), max(var_0.c.yww, var_0.c.zzy))) << (~_wgslsmith_add_u32(u_input.a, arg_0) % 32u), 0i);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_2(!(!arg_1));
    var var_1 = 14991i;
    let var_2 = func_3(~u_input.e.x, var_0, _wgslsmith_f_op_f32(abs(1f)));
    var_1 = ~(~func_3(_wgslsmith_div_u32(45026u, 4294967295u) & abs(u_input.e.x), var_0, 1204f));
    var var_3 = var_0;
    return var_0;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> f32 {
    var var_0 = true;
    var var_1 = func_2(u_input.c >> (u_input.e.wx % vec2<u32>(32u)), arg_1.a);
    let var_2 = Struct_2(!vec4<bool>(false, ~7686u <= u_input.b, true, !(!arg_1.a.x)));
    var_0 = false;
    var_0 = var_1.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1884f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f) * _wgslsmith_div_f32(297f, 1000f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1828f, -1078f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -538f, -198f, -787f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-380f, -511f, 1239f, 1000f), vec4<f32>(-151f, 176f, 1788f, -112f)) * vec4<f32>(1088f, -461f, -527f, -707f)))) * vec4<f32>(-351f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -285f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(76896u, Struct_2(vec4<bool>(false, true, true, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(401f + 1723f)) + -290f)));
    var var_1 = ~u_input.d.x;
    var var_2 = true;
    let var_3 = func_2(vec2<i32>(u_input.c.x, 0i), vec4<bool>(all(vec3<bool>(1u > u_input.a, any(vec4<bool>(true, true, true, true)), func_2(u_input.c, vec4<bool>(true, true, true, true)).a.x)), countOneBits(u_input.c.x) >= func_3(max(0u, u_input.e.x), func_2(vec2<i32>(u_input.c.x, u_input.c.x), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(var_0.x - var_0.x)), true, !(!any(vec4<bool>(false, true, true, true)))));
    let var_4 = var_3;
    var var_5 = vec3<bool>(true, var_3.a.x, !(_wgslsmith_sub_i32(u_input.c.x, -47295i) > abs(-2147483647i)) && true);
    var var_6 = var_5.zx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1765f, -2062f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.x)), -271f))), _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_dot_vec2_u32(u_input.d.wy, abs(u_input.d.ww)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(-select(vec3<i32>(1056i, 13017i, u_input.c.x), vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), var_4.a.x), vec3<i32>(-2147483647i, abs(5533i), u_input.c.x), -select(vec3<i32>(24326i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, -37769i), false))), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(2147483647i, -50476i, -1i, u_input.c.x) << (u_input.e % vec4<u32>(32u))) >> (~vec4<u32>(1u, u_input.d.x, u_input.d.x, 12344u) % vec4<u32>(32u)), ~vec4<i32>(1i, ~(-1i), i32(-1i) * -20599i, _wgslsmith_mod_i32(-1i, -32942i)), vec4<i32>(1i, u_input.c.x, 15719i, -u_input.c.x & max(u_input.c.x, 12871i))), countOneBits(~(-u_input.c.x)));
}

