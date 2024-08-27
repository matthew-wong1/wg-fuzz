struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = vec2<f32>(165f, 1240f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(394f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1386f), var_0.x))), _wgslsmith_f_op_f32(var_0.x * var_0.x), -1286f);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1001f, _wgslsmith_f_op_f32(select(483f, var_0.x, false)), _wgslsmith_f_op_f32(var_1.x - var_1.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.yxx, vec3<f32>(var_0.x, 494f, var_0.x))) - var_1.xyw)), true));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a.x, var_0.x, -457f) - vec3<f32>(var_2.a.a.x, var_1.x, var_1.x))))))), select(var_2.a.b, var_2.a.b, true & var_2.a.b));
    let var_4 = -_wgslsmith_dot_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-13042i, -30183i, -2147483647i) << (vec3<u32>(4294967295u, 5371u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(-48178i, -17949i, 0i), vec3<i32>(1i, 1i, 1i)), (vec3<i32>(-2841i, 1i, -2147483647i) >> (u_input.a % vec3<u32>(32u))) | -vec3<i32>(2147483647i, -6739i, 1i), vec3<bool>(var_2.a.b, var_3.b, any(vec3<bool>(false, var_2.a.b, var_3.b)))), ~abs(reverseBits(vec3<i32>(0i, -11935i, -24956i))));
    return var_2.a.b;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = !(!vec4<bool>(false && func_3(), all(vec2<bool>(true, true)), true, all(vec3<bool>(true, true, true))));
    var_0 = vec4<bool>(false, all(vec4<bool>(true, true, true, true)), false, var_0.x || (((1u & u_input.a.x) <= u_input.b) | (1i > -arg_0.x)));
    var var_1 = var_0.x;
    var_1 = all(select(vec4<bool>(true, true, var_0.x, true), select(select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, var_0.x, false, var_0.x))), vec4<bool>(false, func_3(), false, u_input.b > 1u), select(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x)), vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, true, true, var_0.x))), select(!select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x), !(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), true)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-725f, 327f, 674f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(496f, 1000f, -1702f) + vec3<f32>(1000f, 906f, -1000f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(557f, -231f, 826f))), var_0.wzy))), all(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x), vec3<bool>(true, false, true))) && true));
    return 526f;
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec2_i32(firstLeadingBit(reverseBits(-(~vec2<i32>(-2147483647i, 18740i)))), min(reverseBits(max(select(vec2<i32>(5631i, 6823i), vec2<i32>(1i, 15648i), vec2<bool>(true, false)), max(vec2<i32>(1i, 23018i), vec2<i32>(-2147483647i, -2147483647i)))), vec2<i32>(27696i, -_wgslsmith_mult_i32(-34067i, -1i))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<i32>(var_0.x, var_0.x, var_0.x, 22384i))), _wgslsmith_f_op_f32(sign(474f)), _wgslsmith_f_op_f32(step(778f, 986f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(151f, 797f, 316f)))), any(vec2<bool>(true, true)))), all(vec4<bool>(true, false, false, true))));
    var_1 = Struct_2(var_1.a);
    var var_2 = u_input.a;
    var var_3 = -(vec4<i32>(var_0.x, 28294i, var_0.x, 0i) & _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(744i, var_0.x, var_0.x, 10409i), vec4<i32>(1i, -62871i, -2789i, var_0.x) >> (vec4<u32>(var_2.x, u_input.a.x, var_2.x, 1u) % vec4<u32>(32u))), max(~vec4<i32>(var_0.x, var_0.x, var_0.x, 2147483647i), ~vec4<i32>(2147483647i, var_0.x, 1i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 29965i, 1i, 16412i), _wgslsmith_sub_vec4_i32(vec4<i32>(21707i, -7997i, var_0.x, -1i), vec4<i32>(var_0.x, var_0.x, 28069i, var_0.x)), countOneBits(vec4<i32>(var_0.x, var_0.x, 2147483647i, var_0.x)))));
    return !(!(!select(select(vec3<bool>(var_1.a.b, var_1.a.b, var_1.a.b), vec3<bool>(var_1.a.b, var_1.a.b, var_1.a.b), vec3<bool>(var_1.a.b, true, true)), vec3<bool>(false, var_1.a.b, var_1.a.b), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), vec3<bool>(u_input.b <= u_input.a.x, 37534u > u_input.a.x, true), _wgslsmith_sub_u32(u_input.a.x, 0u) > (u_input.b << (0u % 32u))), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true))), !vec3<bool>(select(false, true, true), true, true), select(vec3<bool>(true, true, true), func_1(), any(vec4<bool>(all(vec2<bool>(true, true)), true, true, true))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, 1i) & firstTrailingBit(select(vec2<i32>(-30072i, -2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<bool>(var_0.x, false)) ^ vec2<i32>(2147483647i, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -1504f), vec2<u32>(27147u, ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)));
}

