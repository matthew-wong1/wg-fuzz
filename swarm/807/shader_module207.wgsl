struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_3(!(!vec2<bool>(true, !arg_0.a.x)), ~reverseBits(max(arg_0.b, u_input.d)), _wgslsmith_f_op_f32(sign(488f)));
    let var_1 = _wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.b.yy), _wgslsmith_sub_vec2_u32(max(u_input.a.zw, ~u_input.b.zy & ~vec2<u32>(u_input.a.x, u_input.a.x)), u_input.b.xx));
    var_0 = arg_0;
    let var_2 = vec3<bool>((var_0.b ^ ~_wgslsmith_clamp_i32(u_input.c.x, arg_0.b, u_input.c.x)) > _wgslsmith_add_i32(_wgslsmith_mod_i32(-30934i, _wgslsmith_mod_i32(2147483647i, u_input.d)), -1i), all(arg_0.a), arg_0.a.x);
    var_0 = arg_0;
    return var_0.b;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = -func_3(Struct_3(vec2<bool>(true, true), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f - 1209f))));
    return select(vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-310f + -715f))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1255f), -577f)), false, true, true), select(!vec4<bool>(0i >= arg_0, true, true, true), vec4<bool>(-750f <= _wgslsmith_f_op_f32(select(1000f, 592f, false)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), true | (u_input.a.x < 0u), false), !all(vec4<bool>(true, true, true, true))), !select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(select(true, true, true), true, 39435i >= var_0, true)));
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = Struct_1(1i, !(!(!func_2(u_input.d))), false, vec2<f32>(_wgslsmith_f_op_f32(-490f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(749f + 2097f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(931f, 223f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1486f - _wgslsmith_div_f32(460f, -300f))), -182f));
    var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(u_input.c.x), var_0.a), vec2<i32>(0i, u_input.e) << (vec2<u32>(u_input.b.x, u_input.a.x) % vec2<u32>(32u))), var_0.a), func_2(countOneBits(abs(~u_input.d))), 41255u == _wgslsmith_dot_vec3_u32(~u_input.b >> (~u_input.a.zyz % vec3<u32>(32u)), u_input.a.ywy), vec2<f32>(1000f, -1200f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -770f), 1f)) * -735f), var_0.d.x));
    var_0 = Struct_1(_wgslsmith_add_i32(countOneBits(countOneBits(-21460i) >> (_wgslsmith_dot_vec3_u32(u_input.a.wxw, u_input.a.ywx) % 32u)), reverseBits(_wgslsmith_div_i32(~var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-32356i, u_input.c.x), vec2<i32>(u_input.c.x, u_input.e))))), func_2(0i), var_0.b.x, vec2<f32>(var_0.e, _wgslsmith_div_f32(var_0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_f32(-1605f - 819f)))), _wgslsmith_f_op_f32(step(-1092f, var_0.d.x)));
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - var_0.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e))), Struct_1(-_wgslsmith_add_i32(-2147483647i, countOneBits(var_0.a)), !var_0.b, -1776f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.d + var_0.d))))), _wgslsmith_f_op_f32(var_0.d.x - var_0.e)), vec4<bool>(var_0.b.x, any(vec3<bool>(u_input.b.x >= u_input.a.x, any(var_0.b), false)), all(var_0.b.zz) && select(0i == var_0.a, true, false), any(vec2<bool>(var_0.b.x, -385i == u_input.e))), Struct_1(15981i, vec4<bool>(_wgslsmith_div_f32(var_0.e, -247f) > _wgslsmith_f_op_f32(select(var_0.e, 221f, var_0.c)), var_0.c, true || !var_0.c, true), var_0.b.x || all(vec2<bool>(true, var_0.b.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d.x, var_0.e), var_0.d, var_0.b.yz)))), _wgslsmith_f_op_f32(582f * _wgslsmith_f_op_f32(-var_0.e))));
    let var_2 = false;
    return Struct_4(Struct_3(select(vec2<bool>(all(vec3<bool>(var_0.b.x, arg_0, var_2)), var_0.a != -16350i), var_0.b.zx, vec2<bool>(true, true)), var_1.d.a, var_0.e), select(!func_2(i32(-1i) * -2147483647i), var_1.c, true));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_0.a.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1809f + arg_0.a.c)), _wgslsmith_f_op_f32(-arg_1.d.d.x))), arg_1.d, select(!arg_0.b, func_1(func_1(true).a.a.x).b, !arg_1.d.b), arg_1.b);
    var_0 = arg_1;
    let var_1 = func_1(select(arg_0.b.x, arg_1.d.b.x, true));
    var_0 = arg_1;
    var var_2 = _wgslsmith_dot_vec3_i32(-(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-8644i, -1i, arg_1.b.a)), vec3<i32>(29424i, 2147483647i, 31483i) ^ vec3<i32>(var_0.d.a, -2381i, -27030i)) | ~max(vec3<i32>(var_1.a.b, u_input.d, -1805i), vec3<i32>(23398i, arg_1.b.a, 2147483647i))), ~(~vec3<i32>(-28844i, -6742i, arg_0.a.b) | -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.b, arg_1.d.a, u_input.c.x), vec3<i32>(var_1.a.b, 8262i, var_1.a.b))));
    return StorageBuffer(var_0.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(true && ((24986i >= u_input.d) & true)), Struct_2(vec2<f32>(1f, 1f), Struct_1(_wgslsmith_add_i32(~15616i, abs(-38969i)), vec4<bool>(true, true, true, true), true, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(837f, -420f), vec2<f32>(-362f, -621f)))), -543f), vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, false), Struct_1(firstLeadingBit(select(2147483647i, u_input.e, true)), vec4<bool>(all(vec3<bool>(true, true, true)), true, select(true, true, false), true), _wgslsmith_mult_i32(u_input.e, u_input.d) < _wgslsmith_div_i32(-1i, u_input.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1511f, -735f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -350f))), -458f)));
}

