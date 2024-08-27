struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = ~((~u_input.b ^ u_input.a.x) & select(_wgslsmith_dot_vec2_u32(vec2<u32>(15794u, 13170u), u_input.a.zz), u_input.a.x >> (0u % 32u), true)) & 1u;
    let var_1 = select(!vec4<bool>(!all(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)) | true, true, true), select(select(vec4<bool>(false, true, true, all(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(1u < u_input.a.x, all(vec2<bool>(true, false)), true, select(true, false, false))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true)), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)))), false & all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_2 = Struct_1(~select(select(vec4<i32>(-2147483647i, 8198i, -2147483647i, -1i), -vec4<i32>(1i, -2147483647i, 1i, -10436i), select(var_1.x, var_1.x, true)), max(_wgslsmith_add_vec4_i32(vec4<i32>(55161i, 35265i, 0i, -23122i), vec4<i32>(-1i, 1i, -19503i, 10448i)), vec4<i32>(1i, 2147483647i, -2147483647i, 1i)), var_1.x), -7856i, 25390u);
    let var_3 = select(select(vec3<bool>(true, var_1.x, all(vec3<bool>(true, true, true))), var_1.wzz, vec3<bool>(any(select(vec3<bool>(true, false, var_1.x), var_1.wzx, vec3<bool>(var_1.x, var_1.x, false))), var_1.x, var_1.x)), select(select(select(var_1.yzz, var_1.xxz, var_1.x), vec3<bool>(all(vec2<bool>(false, var_1.x)), true, var_1.x), any(vec3<bool>(true, var_1.x, var_1.x))), var_1.xww, var_1.zzy), vec3<bool>(select(true, all(!var_1.ywx), !all(vec4<bool>(false, var_1.x, var_1.x, var_1.x))), !all(var_1) && true, any(var_1)));
    var_0 = 34623u;
    return _wgslsmith_f_op_f32(ceil(527f));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1658f, -542f), vec2<f32>(-527f, 475f))))), vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -307f), -876f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-253f, -838f))), -1000f))));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-516f, 1735f))))));
    return !select(!(!select(vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(true, false, true, arg_1.x))), select(vec4<bool>(select(true, false, false), 4294967295u != u_input.a.x, all(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), !(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), !(!vec4<bool>(false, arg_1.x, arg_1.x, true))), vec4<bool>(arg_1.x, all(select(vec4<bool>(arg_1.x, arg_1.x, false, false), vec4<bool>(arg_1.x, arg_1.x, true, false), arg_1.x)), false, arg_1.x));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = all(!select(!func_2(Struct_2(2147483647i), vec2<bool>(true, false)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, false, false, true), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, false), any(vec3<bool>(false, false, false)))));
    let var_1 = func_2(Struct_2(_wgslsmith_div_i32(-3700i, -1i)), vec2<bool>(true, true)).x && true;
    let var_2 = ~vec3<i32>(_wgslsmith_div_i32(arg_1.x, -5805i), _wgslsmith_mod_i32(firstTrailingBit(i32(-1i) * -6769i), arg_1.x), _wgslsmith_div_i32(arg_2.x, min(arg_2.x, arg_2.x)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1087f) * _wgslsmith_f_op_f32(arg_3.x + arg_3.x)))), _wgslsmith_f_op_f32(-2122f - -1008f))));
    let var_4 = u_input.a.x;
    return !vec2<bool>(false, !var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 166f;
    let var_1 = select(!(!select(func_1(var_0, vec2<i32>(-16793i, -2147483647i), vec3<i32>(-27942i, 58087i, 36594i), vec3<f32>(var_0, 1000f, 1000f)), vec2<bool>(true, true), vec2<bool>(true, false))), !func_2(Struct_2(~(-4782i)), vec2<bool>(true, true)).xx, vec2<bool>(true, true));
    var var_2 = Struct_1(vec4<i32>(1i, -11562i, ~(-2147483647i), -_wgslsmith_sub_i32(15804i, 19509i << (u_input.a.x % 32u))), ~51069i, u_input.b);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 + 1341f)))));
    let x = u_input.a;
    s_output = StorageBuffer(2415f, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_3), vec2<f32>(492f, -1514f), var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(1307f, 975f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, var_0), vec2<f32>(292f, -706f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, 1778f) - vec2<f32>(-298f, var_0))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, 792f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1471f), -1000f))), -(~(_wgslsmith_dot_vec4_i32(var_2.a, var_2.a) | _wgslsmith_sub_i32(var_2.a.x, -29647i))));
}

