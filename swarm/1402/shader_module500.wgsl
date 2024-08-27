struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec3<i32> {
    return vec3<i32>(u_input.b.x, 1i, _wgslsmith_add_i32(abs(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1809i, -1i), vec3<i32>(1i, arg_0.a.x, 13923i))), abs(firstTrailingBit(7501i))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> vec3<i32> {
    return _wgslsmith_sub_vec3_i32(~min(func_3(Struct_1(vec2<i32>(u_input.d.x, 1i), arg_1.x, u_input.b.x), arg_1.x, -1437f, Struct_1(vec2<i32>(u_input.d.x, 2147483647i), false, -47722i)), -(~u_input.d.zyy)), ~(~u_input.d.yzz | vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, u_input.d.x), u_input.d.x)));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = firstTrailingBit(~max(func_2(select(vec4<u32>(u_input.c, 25428u, 19389u, 0u), arg_0, true), vec2<bool>(false, true)), _wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.d.zxy), ~vec3<i32>(-24864i, -1i, u_input.b.x))));
    let var_1 = u_input.b.x;
    var_0 = vec3<i32>(~1920i, _wgslsmith_add_i32(var_1 | ~(~var_0.x), u_input.d.x), 0i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2163f)) * _wgslsmith_f_op_f32(472f - 1733f)) + _wgslsmith_f_op_f32(-1107f - -253f)), -117f, _wgslsmith_f_op_f32(select(-415f, -142f, _wgslsmith_sub_u32(0u, arg_0.x) <= (u_input.e.x & arg_0.x)))));
    let var_3 = var_1;
    return max(countOneBits(~var_1), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<i32>(1i, abs(~u_input.d.x)), select(!(!any(vec4<bool>(false, true, false, true))), true, true), _wgslsmith_clamp_i32(~min(-59901i, _wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(u_input.d.x, -68863i))), _wgslsmith_mod_i32(35126i | (4146i << (u_input.e.x % 32u)), abs(u_input.d.x >> (8883u % 32u))), _wgslsmith_dot_vec2_i32(u_input.d.yw, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.d.xyy, u_input.d.xzz), func_1(vec4<u32>(u_input.a.x, 56734u, 4294967295u, 16690u))))));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(abs(u_input.b.x)), u_input.e, abs(min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, -1i), -vec2<i32>(u_input.b.x, var_0.c)), u_input.d.zz)));
}

