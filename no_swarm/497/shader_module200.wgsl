struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_1(select(arg_2, !select(vec4<bool>(arg_2.x, false, false, arg_2.x), arg_2, true), select(!vec4<bool>(arg_2.x, false, false, arg_1.c.x), !arg_2, arg_0.x)), ~vec2<i32>(1i, 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-978f, -840f, arg_1.a.x, -168f), vec4<f32>(arg_1.a.x, 325f, -156f, arg_1.a.x)))))), arg_0.x & !(!(!arg_1.b.x)));
    var var_1 = var_0.d;
    let var_2 = var_0;
    var var_3 = Struct_2(vec2<f32>(1055f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-642f, var_0.c.x))), vec3<bool>(select(any(select(vec3<bool>(var_0.a.x, var_0.a.x, arg_1.c.x), var_0.a.wwy, arg_0)), all(var_2.a), !any(var_0.a.xz)), var_0.a.x & any(vec2<bool>(true, false)), arg_0.x | var_0.d), select(select(var_0.a.wx, select(vec2<bool>(var_2.a.x, var_0.d), !arg_2.xw, var_0.a.yw), vec2<bool>(arg_2.x, var_0.d)), !vec2<bool>(all(vec3<bool>(var_0.d, true, true)), arg_2.x), select(!(arg_1.a.x != 917f), !all(vec3<bool>(false, arg_0.x, false)), false)));
    let var_4 = arg_1.a.x;
    return select(!select(!vec3<bool>(false, arg_0.x, false), vec3<bool>(false, all(vec3<bool>(arg_1.c.x, var_2.d, arg_1.c.x)), any(var_0.a)), false), !vec3<bool>(true, !arg_2.x, true), var_0.a.x);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = all(arg_1.b);
    let var_1 = Struct_1(vec4<bool>(true, any(vec2<bool>(true, true)), true, true), select(-vec2<i32>(min(1i, 2147483647i), 21395i), _wgslsmith_div_vec2_i32(max(~vec2<i32>(-3976i, 1i), vec2<i32>(61438i, 1323i)), firstTrailingBit(vec2<i32>(0i, -1i)) | vec2<i32>(1i, -2147483647i)), arg_0), vec4<f32>(1333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.x, _wgslsmith_f_op_f32(1187f + arg_1.a.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_1.a.x))))), _wgslsmith_div_f32(1856f, _wgslsmith_f_op_f32(ceil(134f))), 428f), (_wgslsmith_div_f32(arg_1.a.x, 1194f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1116f))) || any(!vec4<bool>(false, true, var_0, var_0)));
    let var_2 = var_1.c.ywz;
    let var_3 = _wgslsmith_mult_u32(0u, 16564u) > u_input.a.x;
    var var_4 = _wgslsmith_f_op_f32(-var_2.x);
    return _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.x, arg_1.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -2337f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x - var_2.x), _wgslsmith_f_op_f32(select(arg_1.a.x, -1000f, true)))))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec2_f32(func_4(true, Struct_2(vec2<f32>(-412f, _wgslsmith_f_op_f32(min(-359f, 1071f))), func_3(vec3<bool>(true, true, true), Struct_2(vec2<f32>(-114f, 1278f), vec3<bool>(true, false, true), vec2<bool>(true, true)), vec4<bool>(true, true, true, true)), vec2<bool>(all(vec4<bool>(true, false, true, false)), true)))), vec3<bool>(any(vec3<bool>(true, true, true)), !all(vec2<bool>(true, true)), true), !vec2<bool>(!any(vec3<bool>(false, true, true)), false));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = func_2(12882u);
    let var_1 = vec2<bool>(var_0.c.x, !(!all(var_0.b.zy) && select(all(vec4<bool>(true, var_0.c.x, false, false)), var_0.b.x, var_0.b.x)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, vec2<bool>(true, true))), var_0.b, !func_3(var_0.b, func_2(0u), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_0.c.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), !vec4<bool>(false, var_1.x, true, var_0.b.x), select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(true, var_0.b.x, var_0.c.x, false), false))).xx);
    let var_3 = _wgslsmith_f_op_f32(-441f * -929f);
    var_0 = func_2(_wgslsmith_clamp_u32(65652u, ~u_input.a.x, ~(~(~u_input.b))));
    return func_2(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<u32>(~_wgslsmith_sub_u32(72575u, u_input.d), ~firstTrailingBit(u_input.b), ~_wgslsmith_clamp_u32(u_input.c.x, u_input.a.x, 1u)), ~(-_wgslsmith_mod_i32(50667i, -20593i)) << ((u_input.d >> (1u % 32u)) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(374f, _wgslsmith_f_op_f32(-623f + -316f), 858f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1487f, -1314f, 2242f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(752f, 1375f, -1399f))))));
    var var_1 = u_input.a.x & u_input.c.x;
    var var_2 = vec3<bool>(false, false, !all(select(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), vec4<bool>(var_0.b.x, var_0.b.x, false, true), !vec4<bool>(var_0.b.x, var_0.c.x, true, var_0.b.x))));
    let var_3 = Struct_1(!select(!vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), !select(vec4<bool>(var_0.b.x, false, false, var_0.b.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(false, true, var_2.x, false)), vec4<bool>(!var_0.c.x, !var_0.c.x, all(var_0.b), true)), ~select(vec2<i32>(-75802i, -1i), vec2<i32>(1i, 1i), vec2<bool>(var_0.b.x, var_0.c.x)), vec4<f32>(-1000f, -795f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-521f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)))))), false);
    let var_4 = all(var_3.a.wz);
    var_1 = u_input.d;
    let var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a.x), vec4<u32>(max(u_input.d, 1u) & ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), max(u_input.d, 0u), ~4515u, u_input.b), _wgslsmith_f_op_f32(-var_0.a.x));
}

