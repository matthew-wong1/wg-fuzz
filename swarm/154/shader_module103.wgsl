struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<f32> {
    var var_0 = max(~firstTrailingBit(~(~u_input.d.xx)), u_input.d.yx);
    let var_1 = !(!select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(arg_0.c, arg_0.c, arg_0.c)), vec3<bool>(true, true, true), vec3<bool>(arg_0.c, true, true)));
    let var_2 = arg_0;
    let var_3 = var_2.b.wyw;
    var_0 = ~((~vec2<u32>(var_0.x, var_2.a) | vec2<u32>(_wgslsmith_div_u32(1u, var_2.a), var_0.x)) << (vec2<u32>(var_2.a, abs(46441u)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0.b))) * _wgslsmith_f_op_vec4_f32(select(arg_0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, arg_0.b.x, var_3.x, var_2.b.x)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(909f * arg_0.b.x), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(floor(var_3.x))), vec4<bool>(any(vec2<bool>(true, var_2.c)), !var_2.c, var_2.c, true))), !vec4<bool>(false, !var_2.c, arg_0.c, any(vec4<bool>(true, false, var_1.x, arg_0.c))))));
}

fn func_2() -> vec2<bool> {
    var var_0 = -677f;
    let var_1 = Struct_1(_wgslsmith_sub_u32(u_input.b, ~max(~23476u, _wgslsmith_dot_vec2_u32(u_input.d.zx, u_input.e.xx))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-226f)), _wgslsmith_div_f32(1000f, -1196f), -1000f, 404f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.b, vec4<f32>(-183f, 564f, 575f, -1565f), true), vec3<i32>(u_input.a, 64033i, 31275i)))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-525f + -1499f), _wgslsmith_f_op_f32(ceil(-510f)), _wgslsmith_f_op_f32(-479f * 116f), _wgslsmith_f_op_f32(-272f + 1570f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-471f, 509f, -1481f, 532f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-461f, 1356f, 163f, 2160f)))))), !(!(-55956i >= u_input.a)))), any(!vec3<bool>(false, true, all(vec2<bool>(true, false)))));
    let var_2 = min(~_wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(u_input.a), min(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(-39864i, 2147483647i), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(41624i, u_input.a), vec2<bool>(false, var_1.c)))), vec2<i32>(i32(-1i) * -max(-2147483647i, 33966i), u_input.a));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -890f);
    var_0 = 979f;
    return !select(select(select(!vec2<bool>(var_1.c, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(var_1.c, var_1.c), var_1.c)), !select(vec2<bool>(var_1.c, true), vec2<bool>(false, var_1.c), vec2<bool>(false, var_1.c)), vec2<bool>(var_1.b.x >= 356f, true)), select(!vec2<bool>(false, var_1.c), vec2<bool>(var_1.c, !var_1.c), true), vec2<bool>(all(select(vec4<bool>(var_1.c, false, true, true), vec4<bool>(false, var_1.c, true, true), vec4<bool>(false, false, var_1.c, false))), false));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(~select(vec3<i32>(-u_input.a, -u_input.a, reverseBits(u_input.a)), min(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(2147483647i, u_input.a, 1768i)) << (u_input.d % vec3<u32>(32u)), true), vec3<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a, ~u_input.a));
    let var_1 = !any(select(func_2(), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), func_2()));
    let var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~u_input.b), _wgslsmith_div_vec2_u32(u_input.d.zy & u_input.e.xx, vec2<u32>(u_input.c, 86457u))), u_input.b), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(min(var_2, -784f))))), -1263f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-250f, _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * 730f)))), _wgslsmith_f_op_f32(step(arg_0, 677f))), !any(vec3<bool>(arg_0 >= arg_0, true, var_1)));
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-945f, _wgslsmith_f_op_f32(var_2 + arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-178f * var_3.b.x)))) * _wgslsmith_f_op_f32(-var_3.b.x)), true));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(372u, vec3<u32>(1u, ~u_input.b, ~(~(~18324u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-402f, _wgslsmith_f_op_f32(-2517f - 543f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1083f, 1362f))))))), countOneBits(~func_1(_wgslsmith_f_op_f32(sign(1540f)))));
    let var_1 = select(select(vec3<bool>(select(false, false, all(vec3<bool>(false, true, false))), 26285u >= _wgslsmith_dot_vec2_u32(var_0.b.xx, u_input.e.yy), all(vec3<bool>(true, true, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), -1i >= u_input.a), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !vec3<bool>(true, all(vec3<bool>(false, false, true)), true), true), vec3<bool>(any(vec3<bool>(all(vec2<bool>(false, true)), true, true)), (u_input.a << (var_0.d % 32u)) > u_input.a, all(vec3<bool>(true, u_input.c > var_0.b.x, true))));
    let var_2 = !var_1.yz;
    var var_3 = var_0.c.x;
    var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + var_0.c.x)), -646f)));
    var_3 = var_0.c.x;
    var_3 = _wgslsmith_f_op_f32(514f * -1471f);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(var_0.b.x, 77847u), u_input.d.zz, false), -min(_wgslsmith_dot_vec3_i32(~vec3<i32>(-17767i, u_input.a, u_input.a), vec3<i32>(1i, u_input.a, -2147483647i)), ~(~u_input.a)), max(abs(~(~vec4<u32>(1u, 4541u, 46227u, var_0.a))), vec4<u32>(4294967295u, u_input.e.x, var_0.b.x, 1u)));
}

