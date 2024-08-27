struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(select(233f, _wgslsmith_f_op_f32(min(-404f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2053f, _wgslsmith_div_f32(-293f, -577f))))), var_0.b));
    var_0 = arg_2;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-386f, var_1)), _wgslsmith_div_f32(885f, 880f))), -806f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-198f, _wgslsmith_div_f32(1000f, var_1)), _wgslsmith_f_op_f32(min(753f, _wgslsmith_f_op_f32(step(-1000f, 118f))))))));
    return var_1;
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(203f - -777f), _wgslsmith_f_op_f32(-656f * -1408f))))) * -854f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(var_0)), -874f), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1233f, 1000f) + vec3<f32>(var_0, var_0, var_0)), vec3<f32>(var_0, -1390f, 180f)), vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0))))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) + 236f), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(func_3(~(-u_input.b), u_input.c.zw, Struct_3(vec2<bool>(true, true), true)))), _wgslsmith_f_op_f32(f32(-1f) * -217f), -258f);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_3.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + vec4<f32>(1f, _wgslsmith_f_op_f32(abs(arg_3.a.x)), arg_3.a.x, _wgslsmith_f_op_f32(544f * arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(521f, arg_3.a.x, arg_0, -497f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_3.a)))) + arg_3.a), arg_1.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - var_0.x)), arg_3.a.x)));
    var var_2 = any(vec4<bool>(true, arg_2, !(!any(vec3<bool>(arg_1.a.x, arg_2, false))), _wgslsmith_mod_i32(-1i, arg_3.b.x << (12186u % 32u)) >= _wgslsmith_mult_i32(u_input.b >> (u_input.d.x % 32u), u_input.b)));
    var var_3 = vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(875f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(175f - -790f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_3 = vec3<f32>(-439f, 1202f, var_3.x);
    return 40673u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1084f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -907f), -1029f)))), abs(vec4<i32>(u_input.b, ~32567i, -2147483647i, select(-1i, -3107i, false))) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 54746u, ~4294967295u, firstLeadingBit(u_input.d.x)), vec4<u32>(func_1(-1981f, Struct_3(vec2<bool>(false, false), false), true, Struct_2(vec4<f32>(-842f, -1891f, -859f, -1000f), vec4<i32>(21833i, 2147483647i, -2147483647i, u_input.b))), u_input.c.x, u_input.e, max(u_input.d.x, u_input.e))) % vec4<u32>(32u)));
    var_0 = Struct_2(vec4<f32>(176f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a.x, var_0.a.x))), var_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(func_3(var_0.b.x, vec2<u32>(u_input.d.x, u_input.d.x), Struct_3(vec2<bool>(true, false), true)))), -310f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(399f)), _wgslsmith_f_op_f32(f32(-1f) * -159f))))), var_0.b);
    var_0 = Struct_2(vec4<f32>(905f, var_0.a.x, 1552f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x))), 1000f)), vec4<i32>(-2147483647i, _wgslsmith_add_i32(-var_0.b.x, ~(-var_0.b.x)), ~(firstTrailingBit(-1i) << (~u_input.c.x % 32u)), ~_wgslsmith_dot_vec4_i32(var_0.b, _wgslsmith_add_vec4_i32(var_0.b, var_0.b))));
    let var_1 = Struct_1(firstTrailingBit(var_0.b.wy), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + 916f) + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1508f), false)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(var_0.a * var_0.a), vec4<i32>((min(var_0.b.x, var_1.a.x) >> (firstLeadingBit(54154u) % 32u)) | _wgslsmith_sub_i32(abs(u_input.b), _wgslsmith_mult_i32(1i, var_0.b.x)), -2147483647i, var_1.a.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.a.x, -8764i), 48905i), -49293i)));
    let var_3 = abs(32930i);
    var var_4 = -vec2<i32>(abs(var_2.b.x), var_3);
    var_4 = _wgslsmith_add_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(var_2.b.wx, select(vec2<i32>(var_4.x, var_3), vec2<i32>(44166i, var_3), false))), var_2.b.zw) << (_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), reverseBits(vec2<u32>(0u, 5269u)) >> ((u_input.d & u_input.c.yy) % vec2<u32>(32u))), vec2<u32>(u_input.d.x, _wgslsmith_add_u32(firstTrailingBit(72932u), _wgslsmith_clamp_u32(u_input.a, u_input.c.x, u_input.e)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, 4294967295u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c));
}

