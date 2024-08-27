struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -512f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(745f))))));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(1u, 2177u, u_input.a)), vec3<u32>(u_input.a, u_input.a, 0u)) ^ ~(~vec3<u32>(u_input.a, 69757u, 1u)), vec3<u32>(~_wgslsmith_sub_u32(u_input.a, 4294967295u), u_input.a, 4294967295u)) > 4294967295u;
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, var_0.a.x, 727f, var_0.a.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1396f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 369f, var_0.a.x, var_0.a.x)))))));
    var var_3 = vec3<f32>(var_2.x, -1862f, _wgslsmith_f_op_f32(abs(var_2.x)));
    let var_4 = select(vec3<bool>(true, var_1, !(!all(vec3<bool>(true, false, false)))), select(vec3<bool>(false, false, var_1), vec3<bool>(select(!var_1, any(vec3<bool>(var_1, false, true)), true), select(!var_1, !var_1, false == var_1), !var_1), vec3<bool>(false, true, !all(vec2<bool>(false, true)))), select(vec3<bool>(!(false || var_1), any(vec2<bool>(var_1, false)), true), vec3<bool>(87016i <= _wgslsmith_mult_i32(69516i, u_input.b), any(select(vec3<bool>(true, true, var_1), vec3<bool>(var_1, true, var_1), vec3<bool>(false, false, false))), all(select(vec3<bool>(var_1, var_1, true), vec3<bool>(true, true, var_1), vec3<bool>(var_1, false, false)))), true));
    return var_4;
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = 729f;
    var var_1 = all(arg_0.a);
    global0 = true;
    var var_2 = Struct_2(arg_0.a, Struct_1(vec2<f32>(arg_0.b.a.x, _wgslsmith_f_op_f32(ceil(-1179f)))));
    var_0 = 693f;
    return _wgslsmith_f_op_f32(trunc(543f));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    var var_0 = u_input.a;
    var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(func_4(Struct_2(select(func_3(), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1535f, 146f)))))));
    var_0 = ~_wgslsmith_add_u32(1u >> (0u % 32u), u_input.a);
    let var_2 = select(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(35884i, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(u_input.b, u_input.b))) & (vec2<i32>(1i, u_input.b) & select(vec2<i32>(2147483647i, 13752i), vec2<i32>(2147483647i, arg_0), vec2<bool>(true, false))), abs(vec2<i32>(arg_0 ^ arg_0, reverseBits(76405i))), vec2<i32>(arg_0, 21325i >> (~u_input.a % 32u))), vec2<i32>(78789i, -countOneBits(~arg_0)), vec2<bool>(var_1 < _wgslsmith_f_op_f32(-869f - -2544f), true));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(var_1 - 199f))), _wgslsmith_f_op_f32(trunc(var_1)), -1153f), vec3<f32>(-608f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1220f))) * _wgslsmith_f_op_f32(exp2(var_1))), var_1));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_4) -> vec2<bool> {
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(-select(u_input.c ^ _wgslsmith_sub_i32(arg_0.x, -18028i), -1i, true)));
    let var_1 = ~vec3<u32>(18382u, u_input.a, u_input.a);
    let var_2 = vec4<bool>(select(!any(vec3<bool>(arg_2.c, false, arg_2.c)) | (_wgslsmith_f_op_vec3_f32(func_2(-2147483647i)).x > 1438f), arg_2.a.x, arg_2.b.a.x & all(vec3<bool>(arg_2.c, arg_2.b.a.x, arg_2.c))), arg_2.c && false, arg_2.c, arg_2.a.x);
    let var_3 = select(vec3<bool>(false, arg_2.d.a.x, true), vec3<bool>(!any(!var_2), arg_2.c, true), all(func_3()));
    return arg_2.a.wy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(abs(~u_input.b), -30911i), vec2<i32>(2147483647i, u_input.b), select(vec2<bool>(true, true), func_1(~vec2<i32>(u_input.b, u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -1972f), Struct_4(vec4<bool>(false, true, false, true), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<f32>(584f, -1100f))), true, Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<f32>(var_0, var_0))))), all(vec4<bool>(true, true, true, true)))), 398f);
}

