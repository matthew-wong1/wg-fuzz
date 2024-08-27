struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: f32,
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1867f)));
    var var_2 = Struct_1(4294967295u);
    var_2 = var_0;
    var_2 = arg_1;
    return 0i;
}

fn func_4(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-4111i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_0), -vec2<i32>(17693i, -21099i)))), reverseBits(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.d, u_input.b, -1i), vec4<i32>(-38541i, -33957i, arg_0, arg_0)), firstTrailingBit(~arg_0))));
    var var_1 = vec3<i32>(min(-(~(i32(-1i) * -36690i)), u_input.a), _wgslsmith_dot_vec3_i32(-(vec3<i32>(1i, -12212i, arg_0) | vec3<i32>(-24593i, arg_0, 1i)), ~vec3<i32>(2147483647i, -1i, -2147483647i) & vec3<i32>(arg_0, -53500i, -1i)) & (u_input.d << (reverseBits(0u) % 32u)), u_input.b);
    let var_2 = ~u_input.e.x;
    var_1 = ~(-vec3<i32>(min(u_input.d, -65899i), -u_input.a, ~u_input.b)) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(33907u, ~2910u, u_input.e.x), select(u_input.e ^ ~u_input.e, countOneBits(vec3<u32>(u_input.e.x, 15464u, 78219u)), false)) % vec3<u32>(32u));
    var_0 = i32(-1i) * -(i32(-1i) * -1i);
    return countOneBits(var_2);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(~func_4(reverseBits(func_3(vec2<bool>(false, true), arg_0))));
    var var_1 = var_0.a;
    var_0 = arg_0;
    let var_2 = arg_2;
    var_1 = arg_1;
    return arg_0;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = u_input.e.zx;
    let var_1 = ~(~vec2<u32>(u_input.e.x, abs(1u)));
    let var_2 = Struct_1(31229u);
    var var_3 = func_2(var_2, ~u_input.c.x, any(vec4<bool>(arg_0, false, ~4641u >= min(0u, var_2.a), all(!vec4<bool>(arg_0, true, false, true)))));
    var var_4 = var_2;
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = func_2(arg_2, 49275u, true);
    let var_1 = arg_2;
    var var_2 = vec2<f32>(-253f, -1152f);
    var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(1838f)), _wgslsmith_div_f32(var_2.x, var_2.x)))))));
    let var_3 = var_1;
    return !(!vec2<bool>(true, any(vec3<bool>(false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(true), func_1((all(vec2<bool>(false, true)) & all(vec3<bool>(true, false, false))) & all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), func_1(true), func_1(true));
    let var_1 = true;
    let var_2 = Struct_1(min(~select(~u_input.e.x, ~u_input.e.x, select(var_1, var_0.x, var_0.x)), 56040u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1897f, -2019f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1512f, -538f))))), vec4<u32>(0u, u_input.e.x, 27656u, 122398u), -abs(-(vec2<i32>(1i, u_input.d) >> (u_input.c.zy % vec2<u32>(32u)))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(913f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1696f * 1889f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -345f)))) - 1f));
}

