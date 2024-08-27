struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f))));
    var var_1 = Struct_2(u_input.d.x, Struct_1(vec4<bool>(reverseBits(u_input.e) >= -27093i, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), true, !(4294967295u > u_input.d.x)), 2147483647i), ~(~vec4<i32>(-32861i, _wgslsmith_add_i32(-1i, -16968i), -5446i, u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1250f + _wgslsmith_f_op_f32(f32(-1f) * -1214f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-391f)) * -320f), _wgslsmith_f_op_f32(1f - 188f)))));
    let var_3 = var_1.b;
    let var_4 = -13318i;
    return !select(var_1.b.a.wz, var_1.b.a.xy, select(!(!var_3.a.yx), vec2<bool>(var_3.a.x, 1u == var_1.a), true));
}

fn func_2() -> vec4<bool> {
    var var_0 = reverseBits(u_input.e);
    let var_1 = countOneBits(u_input.b) == _wgslsmith_add_i32(min(-43402i, -u_input.e), u_input.e);
    let var_2 = vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(19407i, u_input.e), ~vec2<i32>(40947i, u_input.e)), abs(-vec2<i32>(-18239i, u_input.e)));
    var var_3 = !vec2<bool>(any(!(!vec3<bool>(true, var_1, true))), any(!(!vec2<bool>(var_1, var_1))));
    var_3 = func_3(-(~_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, -14165i, u_input.e), ~vec3<i32>(-8867i, 27813i, u_input.b))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(2147483647i, 2147483647i, -48805i)), vec3<i32>(-2147483647i, 1i, 24073i) << (_wgslsmith_mod_vec3_u32(u_input.d.yyx, u_input.d.xyz) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.e, -1i, var_2.x) << (vec3<u32>(3338u, u_input.d.x, 7352u) % vec3<u32>(32u)), select(vec3<i32>(u_input.b, var_2.x, var_2.x), vec3<i32>(var_2.x, 56131i, var_2.x), var_3.x)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b, -6105i, var_2.x), -vec3<i32>(u_input.e, u_input.e, 0i)))));
    return !select(vec4<bool>(true, var_1, (11405u | u_input.a) <= u_input.a, func_3(vec3<i32>(u_input.b, var_2.x, 11611i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-22090i, -2147483647i, 36934i), vec3<i32>(var_2.x, 0i, u_input.e), vec3<i32>(0i, var_2.x, -11887i))).x), vec4<bool>(var_3.x, var_1, false, true), vec4<bool>(var_1, !(!var_3.x), var_1, !var_3.x));
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = ~u_input.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1289f, arg_0, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1161f, 821f, arg_0)), true))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(764f - arg_0)), arg_0))));
    let var_2 = u_input.e;
    let var_3 = 4294967295u;
    let var_4 = -824f;
    return Struct_4(var_4, all(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2369f + var_4) * _wgslsmith_f_op_f32(max(var_4, var_1.x)))) * arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(floor(485f)));
    let var_1 = Struct_2(countOneBits(u_input.c), Struct_1(func_2(), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-46926i, u_input.b, u_input.e, -5103i)), vec4<i32>(u_input.b, 2147483647i, 4512i, min(-3732i, u_input.b)))), firstTrailingBit(max(min(vec4<i32>(u_input.b, 1i, -1i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, -3285i, u_input.e, 1i), vec4<i32>(u_input.b, -1i, -29801i, -2147483647i))), vec4<i32>(-65863i, -14828i, abs(0i), _wgslsmith_sub_i32(-12404i, 1i)))));
    var var_2 = !((u_input.e >= 1i) | (max(35239u, 80668u) >= (118894u & ~var_1.a)));
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) + _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(var_0.c + var_0.a))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-820f + _wgslsmith_f_op_f32(f32(-1f) * -783f)))), false, all(func_3(var_1.c.wzz, _wgslsmith_add_vec3_i32(vec3<i32>(var_1.c.x, u_input.e, var_1.c.x), select(vec3<i32>(13303i, var_1.c.x, var_1.c.x), vec3<i32>(1i, var_1.c.x, 1i), vec3<bool>(true, false, false))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1024f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a - var_0.a))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(313f)), _wgslsmith_f_op_f32(-var_0.c)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(128f * -1053f)))), var_0.c)));
    let var_5 = -1873f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1469f, var_4.x, var_4.x, -1000f), vec4<f32>(924f, -821f, var_0.a, -916f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, -1237f, var_5, var_4.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3050f, _wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(abs(-2180f)), _wgslsmith_f_op_f32(trunc(199f))))));
}

