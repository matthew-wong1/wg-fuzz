struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), all(vec4<bool>(false, false, true, false)), true != any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))));
    let var_1 = var_0.yx;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1428f, 1000f) + vec2<f32>(-189f, 1227f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 447f), vec2<f32>(1495f, -1439f)))))));
    var_0 = !select(!select(!vec3<bool>(var_1.x, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, true)), select(select(!vec3<bool>(true, true, var_0.x), !vec3<bool>(false, false, var_1.x), select(vec3<bool>(false, false, false), vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_1.x, false))), select(!vec3<bool>(true, false, var_1.x), vec3<bool>(true, true, true), 672f >= var_2.x), vec3<bool>(true, true, true)), false);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1476f, var_2.x, -1265f, 1165f), vec4<f32>(var_2.x, var_2.x, var_2.x, -131f), vec4<bool>(var_0.x, false, var_0.x, var_0.x))))), u_input.b));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_3.a.a.x, var_2.x, -1608f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.a.a * var_3.a.a))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(412f, _wgslsmith_f_op_f32(-var_3.a.a.x), -1295f, _wgslsmith_f_op_f32(max(481f, -1883f)))))), u_input.b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: i32) -> vec4<f32> {
    let var_0 = u_input.d.x;
    let var_1 = select(select(!vec3<bool>(true, any(vec2<bool>(true, false)), true), vec3<bool>(select(false, u_input.c <= 8059i, true), any(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, false, true))), vec3<bool>(true, false, _wgslsmith_clamp_u32(24699u, u_input.d.x, 4294967295u) != _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 33499u), vec4<u32>(var_0, u_input.d.x, u_input.d.x, 61086u)))), !(!vec3<bool>(true, all(vec3<bool>(false, false, false)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-491f - _wgslsmith_f_op_f32(f32(-1f) * -1774f))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_2 = Struct_3(true, abs(~select(~vec3<i32>(arg_1.b.x, u_input.b.x, arg_1.b.x), ~arg_2.xwy, var_1.x & false)), var_1.x, Struct_1(_wgslsmith_f_op_vec4_f32(arg_0 - arg_1.a), vec2<i32>(_wgslsmith_dot_vec2_i32(arg_2.xx, vec2<i32>(-8981i, arg_1.b.x)), -30593i)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1185f, 1047f, -876f)) + arg_0), arg_1.b)));
    let var_3 = !select(vec2<bool>(true, var_1.x), var_1.yy, var_1.x);
    let var_4 = arg_1;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.d.a.x)) * _wgslsmith_f_op_f32(floor(var_4.a.x))) * var_4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.a.x)) - 222f))), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1847f + 1938f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_4.a.x)))))), _wgslsmith_f_op_f32(-arg_0.x)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(false, vec3<i32>(-u_input.a.x, -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -66339i, u_input.a.x, u_input.a.x), vec4<i32>(11392i, -1i, u_input.a.x, 0i)), _wgslsmith_add_i32(1i, u_input.c)), -u_input.a.x), 47728i >= u_input.a.x, func_2(), Struct_2(func_2()));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.a.a.x, var_0.e.a.a.x, 352f, 356f) * var_0.d.a), vec4<f32>(var_0.e.a.a.x, -371f, var_0.d.a.x, 531f), true)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.e.a.a.x, var_0.d.a.x, var_0.e.a.a.x, var_0.e.a.a.x))), _wgslsmith_add_vec2_i32(u_input.a.xx, u_input.a.zx)), -u_input.a, _wgslsmith_add_i32(-39679i, -var_0.e.a.b.x))) + _wgslsmith_f_op_vec4_f32(-var_0.e.a.a)), vec2<i32>(2147483647i, u_input.a.x));
    let var_2 = var_0.d.a.x;
    var_1 = func_2();
    let var_3 = -max(u_input.a, vec4<i32>(1i, -firstTrailingBit(-2147483647i), var_0.e.a.b.x, var_1.b.x & -2147483647i));
    return var_0.e;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = func_1();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.a.x, -817f, 327f, arg_0.a.a.x)))), arg_2.d.b));
    var_0 = func_1();
    var_0 = var_1;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(190f, var_0.a.a.x, arg_2.e.a.a.x, var_1.a.a.x), arg_2.d, u_input.a, 2147483647i))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.a.a)))), vec2<i32>(abs(_wgslsmith_div_i32(arg_0.a.b.x, -2147483647i)), i32(-1i) * -9054i)));
    return _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-1331f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.e.a.a.x, arg_1.x) - -1345f), var_0.a.a.x), _wgslsmith_f_op_f32(791f - arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec4_f32(arg_2.d.a, vec4<f32>(-437f, -2046f, 1000f, 1588f)), arg_0.a, vec4<i32>(34402i, arg_2.d.b.x, -2147483647i, arg_0.a.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x), vec3<i32>(var_1.a.b.x, var_0.a.b.x, 0i)))).x)), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.a.x - arg_0.a.a.x), _wgslsmith_f_op_f32(-var_1.a.a.x)), -298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x - -749f)), _wgslsmith_f_op_f32(max(823f, _wgslsmith_f_op_f32(f32(-1f) * -139f)))), _wgslsmith_div_vec2_i32(func_2().b, arg_2.e.a.b)), -vec4<i32>(var_0.a.b.x, _wgslsmith_add_i32(-25180i, var_1.a.b.x), 2147483647i, _wgslsmith_clamp_i32(arg_2.d.b.x, select(arg_0.a.b.x, 1i, arg_2.a), _wgslsmith_mult_i32(-20546i, 15956i))), arg_2.e.a.b.x)).zxx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_1(), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-147f, -141f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-173f, 374f) - vec2<f32>(-512f, -1000f))), vec2<f32>(1235f, _wgslsmith_f_op_f32(-103f - -520f)), vec2<bool>(true, any(vec2<bool>(false, false))))), Struct_3(true, -max(u_input.a.wzy, u_input.a.yyx), true, func_1().a, Struct_2(Struct_1(vec4<f32>(1635f, 259f, -1174f, 1301f), vec2<i32>(u_input.a.x, 570i)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().a.a.x));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1().a.a.wyz * vec3<f32>(_wgslsmith_f_op_f32(select(424f, _wgslsmith_div_f32(var_1, var_1), u_input.d.x >= 34983u)), 387f, _wgslsmith_f_op_f32(floor(-1109f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f - 893f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * -639f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, var_0.x)) - _wgslsmith_f_op_f32(select(-1201f, -643f, false))))));
    let var_2 = func_1();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-159f - 823f), func_2().a.x, var_2.a.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.b.x);
}

