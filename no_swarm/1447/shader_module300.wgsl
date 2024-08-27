struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32) -> f32 {
    let var_0 = Struct_3(all(select(select(!vec4<bool>(arg_0, arg_0, arg_0, false), !vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, false, arg_0, arg_0)), vec4<bool>(arg_0, true, any(vec2<bool>(arg_0, false)), all(vec2<bool>(true, arg_0))), select(!vec4<bool>(arg_0, false, true, true), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, false, true), arg_0), select(vec4<bool>(false, false, arg_0, false), vec4<bool>(true, true, arg_0, false), true)))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1444f * 1f), _wgslsmith_f_op_f32(min(-1675f, _wgslsmith_f_op_f32(sign(-874f)))), var_0.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2157f, var_1)))));
    var var_3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(select(1296f, 201f, var_0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -286f), -132f), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, ~(u_input.b.x ^ u_input.b.x), u_input.a.x, u_input.c), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-10262i, u_input.a.x, u_input.c, 28325i)), firstLeadingBit(vec4<i32>(u_input.c, u_input.a.x, 1i, -1i))), vec4<i32>(-15437i, -589i, u_input.a.x, -u_input.c))), var_0.a, _wgslsmith_f_op_f32(-var_2.x));
    let var_4 = _wgslsmith_f_op_f32(-var_2.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-397f)), 1000f)), var_4));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = 0i;
    var var_1 = i32(-1i) * -(~(~(-42515i) << (countOneBits(u_input.d.x) % 32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, 68541u)))))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(arg_1)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(arg_1)))))))));
    let var_3 = _wgslsmith_mod_vec2_u32(~vec2<u32>(~(~u_input.d.x), 62277u), _wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.xy, false), ~vec2<u32>(36850u, u_input.d.x)), vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(u_input.d.yx, u_input.d.xy))));
    var var_4 = -595f;
    return Struct_3(var_2.b.x);
}

fn func_1() -> Struct_4 {
    let var_0 = func_2(~reverseBits(-(~u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1648f, 1000f, -960f, 2038f) - vec4<f32>(463f, 1268f, -684f, 1000f))))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-739f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1993f * 880f), _wgslsmith_f_op_f32(min(-499f, -884f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(169f, -1362f, var_0.a)))) * vec3<f32>(-548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1610f * 960f)), -614f)), select(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c, u_input.a.x, u_input.b.x, -1i) & reverseBits(vec4<i32>(1i, -31975i, u_input.b.x, -32111i)), abs(~vec4<i32>(u_input.c, 29081i, u_input.b.x, -2147483647i))), -_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, u_input.c, -1i), vec4<i32>(u_input.a.x, -5619i, 2147483647i, 2147483647i)), abs(vec4<i32>(2147483647i, u_input.a.x, -14232i, u_input.b.x))), false), !any(select(select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(false, var_0.a, false), var_0.a), !vec3<bool>(true, true, var_0.a), var_0.a)), 140f);
    var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -419f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1319f * -180f) + _wgslsmith_div_f32(var_1.d, var_1.a.x)), 316f)), 128f), var_1.b, all(!(!vec2<bool>(true, var_0.a))) | !(!var_1.c && func_2(76217i, vec4<f32>(var_1.a.x, var_1.d, -918f, -646f)).a), -890f);
    var var_2 = firstLeadingBit(firstTrailingBit(0u));
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2080f, var_1.d, _wgslsmith_f_op_f32(-var_1.a.x))))), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -41290i, u_input.b.x << (u_input.d.x % 32u), select(13968i, 2147483647i, true)), -var_1.b)), !(!(true & all(vec3<bool>(var_1.c, var_0.a, var_1.c)))), _wgslsmith_f_op_f32(-var_1.d));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec3<bool>(var_0.c, true, all(vec3<bool>(all(!vec4<bool>(false, true, var_0.c, false)), var_0.c, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(var_0.b.x), ~var_0.b.x, 31401i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 975f, -1000f, 391f))) - vec4<f32>(_wgslsmith_f_op_f32(sign(1629f)), _wgslsmith_f_op_f32(var_0.a.x + -1046f), -590f, var_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-297f, -1146f, var_0.d, 911f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1398f, var_0.d, var_0.d))))));
}

