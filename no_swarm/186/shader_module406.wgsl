struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(select(-725f, arg_0.a, true)), vec2<bool>(!arg_1.b.x, select(!(!arg_1.b.x), any(vec4<bool>(true, true, arg_1.b.x, arg_1.b.x)), arg_1.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_1.c), _wgslsmith_f_op_vec3_f32(-arg_1.c))))), Struct_1(vec2<u32>(~14535u >> (arg_1.d.b.x % 32u), _wgslsmith_mod_u32(0u, arg_1.d.a.x & arg_1.d.a.x)), (firstLeadingBit(vec2<u32>(4294967295u, arg_1.d.b.x)) | _wgslsmith_sub_vec2_u32(arg_1.d.a, vec2<u32>(19286u, 7163u))) ^ firstTrailingBit(~arg_1.d.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a, 1000f), arg_1.d.c, true)))))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1401f)), 205f)), 1323f));
}

fn func_2() -> vec3<bool> {
    return vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(130f)), _wgslsmith_f_op_f32(round(-1082f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(-695f), Struct_3(-2247f, vec2<bool>(true, false), vec3<f32>(210f, 201f, 2482f), Struct_1(u_input.a.zy, u_input.a.zz, vec2<f32>(2616f, -1388f))))) + 668f), true & any(vec4<bool>(false, true, true, true)))) >= _wgslsmith_div_f32(1340f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1060f))), all(vec2<bool>(true, select(any(vec2<bool>(false, true)), true, select(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-239f)), -342f)) < _wgslsmith_f_op_f32(f32(-1f) * -909f));
}

fn func_1() -> f32 {
    let var_0 = select(vec4<bool>(true, true, all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec3<bool>(true, true, true)))), true), vec4<bool>(any(vec2<bool>(true, false)), true, false, !all(vec4<bool>(true, true, true, true))), any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, false, false))));
    let var_1 = !select(vec3<bool>(!all(vec2<bool>(false, false)), true || !var_0.x, true), var_0.zxx, var_0.x);
    let var_2 = var_0;
    let var_3 = _wgslsmith_add_vec3_i32(firstTrailingBit(~u_input.c.yxw) & u_input.c.yyx, select(select(firstLeadingBit(u_input.c.wxz), vec3<i32>(u_input.c.x, u_input.c.x, 1i), !var_0.yyy) << ((abs(vec3<u32>(54921u, 1u, u_input.a.x)) >> (~u_input.a.zzz % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~(~u_input.c.xyz)), any(func_2())));
    let var_4 = u_input.c;
    return -160f;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, 2213f) + -274f))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.c + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-615f, 505f, true))), -800f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1183f, var_0)))))));
    var var_3 = var_1.b;
    let var_4 = ~firstLeadingBit(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.d.b.x, var_1.d.a.x, 72927u)), min(vec3<u32>(arg_0.d.a.x, 16183u, var_1.d.a.x), vec3<u32>(arg_0.d.b.x, 20303u, 0u))));
    return Struct_2(-375f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(-969f));
    let var_1 = vec2<u32>(75285u, ~(~u_input.b));
    let var_2 = func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(var_0 * var_0), all(vec3<bool>(false, true, false))))), !func_2().yz, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, 1000f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1567f, -1020f) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1330f, var_0, 1629f)))))), Struct_1(u_input.a.ww, var_1, vec2<f32>(_wgslsmith_f_op_f32(abs(-472f)), _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(-1f));
    var var_3 = -2147483647i;
    var_3 = 68819i;
    let var_4 = vec4<bool>(false, all(select(func_2(), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false, var_0 == var_2.a);
    var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(u_input.c.x, firstLeadingBit(23704i), -_wgslsmith_dot_vec3_i32(u_input.c.wxz, vec3<i32>(u_input.c.x, 0i, 2147483647i)) ^ -firstTrailingBit(u_input.c.x)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

