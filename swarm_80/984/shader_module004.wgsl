struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-882f + arg_0))))), 1356f);
    let var_1 = ~min(_wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 1i, 1i), vec3<i32>(max(22994i, -48286i), ~6060i, _wgslsmith_dot_vec4_i32(vec4<i32>(-18881i, -49217i, -25715i, 2147483647i), vec4<i32>(-2147483647i, 30429i, -1i, 1i)))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, i32(-1i) * -62101i, i32(-1i) * -2147483647i), ~vec3<i32>(1i, 1i, 1i)));
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, -189f)) - arg_2.b.x) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -396f), arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))), false)), -218f);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-32143i, 82924i, -2147483647i), select(-2147483647i, 1i, true), 11581i), _wgslsmith_add_vec3_i32(-vec3<i32>(-3692i, 5545i, -626i), -vec3<i32>(-10406i, -1i, -1i))), ~min(min(vec3<i32>(-42745i, 2147483647i, 1i), vec3<i32>(33240i, 0i, 9131i)), vec3<i32>(-43399i, -31243i, 0i)), select(abs(max(vec3<i32>(1i, 31820i, 1i), vec3<i32>(1i, 2147483647i, 2147483647i))), vec3<i32>(1i, 1i, 1i), !(arg_0 & arg_0))), firstTrailingBit(max(vec3<i32>(0i, ~(-38670i), 1i), vec3<i32>(~(-39902i), 11107i, 91544i))));
    let var_1 = arg_2.x;
    let var_2 = Struct_1(1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1932f, arg_1.x)))), !(_wgslsmith_div_f32(arg_1.x, -170f) > _wgslsmith_f_op_f32(f32(-1f) * -377f)))));
    let var_3 = vec2<bool>(arg_0, any(vec4<bool>(_wgslsmith_div_f32(459f, -205f) > _wgslsmith_f_op_f32(exp2(arg_1.x)), all(!vec4<bool>(arg_0, arg_0, true, arg_0)), _wgslsmith_add_u32(0u, 1u) >= var_2.a, any(vec2<bool>(arg_0, true)) | arg_0)));
    var var_4 = var_2;
    return vec4<u32>(~var_2.a, ~100u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(31005u, 4294967295u), max(~arg_2, arg_2 ^ u_input.c.ww)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, _wgslsmith_div_u32(arg_2.x, var_4.a)), u_input.b, select(~vec2<u32>(1u, arg_2.x), u_input.c.yx, !var_3.x))), reverseBits(var_1));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(-349f, vec3<bool>(true, true, true), Struct_1(countOneBits(4294967295u | u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1111f, -1110f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(470f, 1184f)))))));
    let var_1 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, 4294967295u) & func_3(false, vec2<f32>(-438f, var_0.x), u_input.b), vec4<u32>(~u_input.d, ~33227u, 19715u, u_input.c.x)), u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, -1800f)))) * vec2<f32>(_wgslsmith_f_op_f32(round(1954f)), _wgslsmith_f_op_f32(var_0.x * 348f))) + _wgslsmith_f_op_vec2_f32(select(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0))), true))));
    let var_2 = 1i & abs(0i >> ((var_1.a ^ u_input.b.x) % 32u));
    let var_3 = Struct_1(~firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, u_input.c.x), max(4294967295u, 4294967295u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1626f, 1000f))) * _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -459f), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), Struct_1(u_input.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-475f, 371f)))))));
    var var_4 = var_2;
    return Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.b - var_3.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.yx;
    var var_1 = func_1();
    let var_2 = all(vec2<bool>(true, true));
    let var_3 = 1u & var_0.x;
    let var_4 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_div_u32(~var_1.a, _wgslsmith_add_u32(13234u, var_3))), var_3), func_3(!var_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.b, vec2<f32>(var_1.b.x, var_1.b.x))) + _wgslsmith_div_vec2_f32(var_1.b, var_1.b)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.b + var_1.b)))), u_input.b).x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec4<u32>(~var_3 & var_0.x, 3549u, ~func_1().a, 0u ^ var_1.a));
}

