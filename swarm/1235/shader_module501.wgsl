struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    let var_0 = 452f;
    let var_1 = !vec3<bool>(_wgslsmith_f_op_f32(sign(var_0)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f - 467f)), false & !all(vec2<bool>(true, arg_2)), !(!all(arg_0.zy)));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -663f), var_0)) + var_0), 1292f));
    let var_4 = Struct_1((false && all(!var_1.xz)) || !(!arg_2));
    return !select(arg_0, vec4<bool>(true, !(!var_1.x), var_1.x, arg_2), vec4<bool>(select(true, false, false), true, false, arg_1.a || true));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(376f, 256f))) - vec2<f32>(2021f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-164f - -1038f), _wgslsmith_f_op_f32(f32(-1f) * -602f)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(612f, 841f, _wgslsmith_f_op_f32(-var_0.x), 1215f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), 596f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 534f) + _wgslsmith_f_op_f32(ceil(var_0.x)))))));
    let var_3 = Struct_1(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), func_3(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true), Struct_1(true), true))));
    var var_4 = Struct_1(false);
    return Struct_1(u_input.a.x >= select(~_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, true));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2908f))) - -1000f), -820f, -451f)));
    var var_2 = func_2();
    let var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), _wgslsmith_mod_i32(-10002i, -1i), -8716i), vec3<i32>(944i, -1i, _wgslsmith_add_i32(-15559i, -26568i))), vec3<i32>(~7823i, firstLeadingBit(u_input.a.x), u_input.a.x)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(66377u, 118802u, 4294967295u) >> (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u))), ~(~vec3<u32>(1u, arg_0, 4294967295u))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0, arg_0, 68583u), ~vec3<u32>(0u, 1u, 27593u))) % vec3<u32>(32u));
    return vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(min(4294967295u, 4294967295u), ~arg_0), _wgslsmith_div_vec2_u32(~vec2<u32>(arg_0, arg_0), vec2<u32>(0u, 4294967295u) ^ vec2<u32>(38764u, arg_0))) << (reverseBits(firstLeadingBit(arg_0 & 4294967295u)) % 32u), _wgslsmith_mod_u32(~1u, firstTrailingBit(_wgslsmith_sub_u32(arg_0, 39086u) >> (~1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1373f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1044f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-296f - 1000f), _wgslsmith_div_f32(-1136f, 1126f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(650f, -838f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-678f, 1552f))) + 620f), 109f);
    var var_1 = u_input.a.x;
    var var_2 = ~func_1(firstTrailingBit(~(~59116u)));
    let var_3 = _wgslsmith_f_op_f32(-var_0.x);
    var_2 = vec2<u32>(~1u, var_2.x);
    var_1 = -(i32(-1i) * -_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 2062i, 16682i), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    var_2 = _wgslsmith_mult_vec2_u32(~(vec2<u32>(var_2.x, var_2.x) ^ abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 31698u), vec2<u32>(var_2.x, var_2.x), vec2<u32>(7114u, var_2.x)))), ~(~func_1(~var_2.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(step(-189f, _wgslsmith_f_op_f32(-var_3))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3470f - 358f) - 880f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-411f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + 1075f) - _wgslsmith_f_op_f32(f32(-1f) * -351f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(~1u, var_2.x), var_2.x, 46450u, var_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zx)), u_input.a.x, _wgslsmith_f_op_vec2_f32(ceil(var_0.xx)));
}

