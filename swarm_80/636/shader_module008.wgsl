struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> bool {
    return false;
}

fn func_2(arg_0: vec4<bool>) -> vec2<u32> {
    let var_0 = 2071f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1492f, var_0))) + -997f) <= var_0, 2147483647i, vec3<f32>(var_0, -349f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2023f, 1503f) + -892f)))), arg_0);
    var_1 = Struct_1(any(vec4<bool>(all(!arg_0), true, !arg_0.x, func_3(u_input.a, Struct_3(Struct_1(var_1.a, var_1.b, vec3<f32>(1559f, 961f, 1565f), vec4<bool>(false, false, false, true)), 645f, Struct_1(true, -2147483647i, vec3<f32>(-1000f, -2293f, 390f), arg_0), vec2<u32>(0u, u_input.a), Struct_1(false, u_input.c, vec3<f32>(-591f, 564f, -636f), vec4<bool>(false, arg_0.x, false, true))), u_input.a))), var_1.b | min(-reverseBits(u_input.c), -var_1.b << (0u % 32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(var_1.c, var_1.c)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-208f, var_0, -929f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_0, -1151f) + var_1.c))))), vec4<bool>(true, arg_0.x, false, select(_wgslsmith_f_op_f32(step(var_0, -216f)) >= 150f, select(0u, 1u, true) >= ~u_input.a, false)));
    let var_2 = vec2<u32>(~(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(76345u, u_input.a), vec2<u32>(u_input.a, u_input.a), var_1.a), vec2<u32>(0u, 1u) | vec2<u32>(u_input.a, u_input.a))), _wgslsmith_clamp_u32(0u, u_input.a, 30127u));
    let var_3 = Struct_3(Struct_1(arg_0.x, _wgslsmith_div_i32(-21884i, -50688i), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(var_0 + -1564f), _wgslsmith_div_f32(-337f, var_1.c.x)) * var_1.c), arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-1631f - 486f))), 1313f), Struct_1(false, var_1.b, _wgslsmith_div_vec3_f32(var_1.c, vec3<f32>(1000f, _wgslsmith_f_op_f32(681f + -597f), var_1.c.x)), vec4<bool>(true, arg_0.x, !var_1.a, false)), countOneBits(countOneBits(abs(abs(var_2)))), Struct_1(false, _wgslsmith_dot_vec3_i32(u_input.b.zxy, ~vec3<i32>(var_1.b, 1i, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 960f, 565f), _wgslsmith_f_op_vec3_f32(var_1.c * var_1.c)))), var_1.d));
    return var_3.d;
}

fn func_1(arg_0: i32, arg_1: u32) -> f32 {
    var var_0 = Struct_2(Struct_1(true, arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(140f, _wgslsmith_f_op_f32(-675f - -376f), _wgslsmith_f_op_f32(trunc(1675f)))), vec4<bool>(true, true, any(vec2<bool>(true, true)), ~u_input.c <= max(6829i, 0i))), Struct_1(false, -_wgslsmith_div_i32(1i, ~arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-899f * 272f), _wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(565f + 555f))), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, false, true, false)), false, true, true))), Struct_1(select(true, true, all(vec4<bool>(true, true, true, true))), reverseBits(arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-319f, -895f, -672f))), vec3<f32>(1668f, -120f, -1043f))), vec4<bool>(false, true, true, false)));
    var var_1 = reverseBits(~vec2<u32>(3179u << (arg_1 % 32u), 1u)) << (countOneBits(func_2(var_0.b.d)) % vec2<u32>(32u));
    let var_2 = Struct_3(var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f * var_0.b.c.x)), _wgslsmith_f_op_f32(trunc(var_0.c.c.x)))), Struct_1(-_wgslsmith_sub_i32(9323i, u_input.b.x) != -1i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), var_0.b.c, vec4<bool>(var_0.c.d.x, any(select(vec3<bool>(var_0.a.d.x, var_0.c.a, var_0.c.a), vec3<bool>(var_0.c.a, var_0.c.d.x, var_0.c.d.x), var_0.b.d.x)), false, false)), firstLeadingBit(_wgslsmith_div_vec2_u32(firstTrailingBit(~vec2<u32>(arg_1, var_1.x)), ~min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(arg_1, 1u)))), var_0.a);
    let var_3 = -(~reverseBits(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x))) <= arg_0;
    let var_4 = var_2;
    return _wgslsmith_f_op_f32(119f * -102f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-u_input.b.x >= u_input.b.x, -34707i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(132f, 875f, -470f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(268f, 622f, -1092f)), vec3<bool>(true, true, true)))) + vec3<f32>(-998f, _wgslsmith_f_op_f32(-874f - _wgslsmith_f_op_f32(func_1(-2147483647i, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -1597f))), !(!vec4<bool>(false, true, false, u_input.a >= 0u)));
    let var_1 = ~(~_wgslsmith_sub_vec3_u32(~abs(vec3<u32>(u_input.a, 270u, u_input.a)), ~(~vec3<u32>(4294967295u, 0u, u_input.a))));
    var var_2 = -11918i;
    var var_3 = Struct_3(Struct_1(true, reverseBits(_wgslsmith_add_i32(var_0.b, -1i) >> (_wgslsmith_add_u32(var_1.x, u_input.a) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.c)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1477f, -592f, 1388f), vec3<f32>(-166f, -1000f, var_0.c.x)))) - _wgslsmith_f_op_vec3_f32(-var_0.c)), select(var_0.d, var_0.d, true)), var_0.c.x, Struct_1(var_0.c.x != var_0.c.x, max(~0i, var_0.b), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(921f, var_0.c.x, 1700f))))))), !(!(!vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)))), ~(var_1.zz | ~var_1.zz), var_0);
    var var_4 = Struct_3(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e.c.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a.c.x))))), var_0, vec2<u32>(var_3.d.x, ~(_wgslsmith_div_u32(4294967295u, var_1.x) & 80524u)), Struct_1(var_3.e.a, 0i, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x + -1000f), _wgslsmith_div_f32(var_0.c.x, 1223f), _wgslsmith_f_op_f32(sign(-337f))))), select(vec4<bool>(true, false, false, true), var_3.c.d, any(!vec2<bool>(true, var_0.d.x)))));
    var var_5 = select(select(select(vec4<bool>(true, true, any(var_0.d.wy), true), var_0.d, var_0.d), !select(select(vec4<bool>(var_0.d.x, false, var_3.c.d.x, false), vec4<bool>(false, var_0.d.x, var_4.e.d.x, var_0.d.x), vec4<bool>(var_0.a, false, var_4.c.d.x, false)), !var_3.a.d, var_3.e.d), false), var_0.d, true && func_3(~1u, Struct_3(Struct_1(var_0.d.x, 1i, var_3.e.c, var_4.a.d), -414f, var_4.c, ~var_1.zx, Struct_1(true, var_4.e.b, vec3<f32>(-440f, var_4.c.c.x, -518f), var_0.d)), ~var_1.x << (~4294967295u % 32u)));
    var_5 = vec4<bool>(false, true, 7224i < _wgslsmith_mult_i32(min(1i, -27192i), var_0.b), true);
    let var_6 = ~vec2<u32>(~11392u, 30764u);
    let x = u_input.a;
    s_output = StorageBuffer(20002i, ~countOneBits(u_input.b), 56706i, vec3<f32>(303f, _wgslsmith_f_op_f32(-var_0.c.x), -1000f), vec3<i32>(_wgslsmith_add_i32(var_4.c.b, var_3.a.b), _wgslsmith_add_i32(~(~var_0.b), -3062i), var_0.b));
}

