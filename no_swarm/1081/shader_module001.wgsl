struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(f32(-1f) * -2019f)), -1459f);
    let var_1 = vec3<i32>(u_input.b.x, i32(-1i) * -(-19721i ^ _wgslsmith_sub_i32(arg_0.b, u_input.b.x)), ~u_input.c.x);
    var var_2 = u_input.a.x;
    var var_3 = u_input.c;
    let var_4 = Struct_2(select(select(any(vec3<bool>(false, arg_0.c, arg_0.c)), arg_0.c, true), !arg_0.c, arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1441f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-359f, arg_1.x)), ~5097u < ~u_input.e)) * _wgslsmith_f_op_f32(575f + arg_1.x)), -max(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-15281i, arg_0.b, -10833i, 3459i), vec4<i32>(arg_0.b, 49028i, arg_0.b, var_1.x)), i32(-1i) * -1i), var_1.zy), u_input.c.x, countOneBits(vec3<u32>(44256u, select(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), u_input.e, true), ~4294967295u)));
    return !select(vec2<bool>(all(vec2<bool>(true, true)), !(4294967295u >= var_4.e.x)), !select(vec2<bool>(true, arg_0.c), !vec2<bool>(false, arg_0.c), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), _wgslsmith_dot_vec2_i32(var_4.c, vec2<i32>(var_3.x, 902i)) >= _wgslsmith_sub_i32(var_1.x >> (45943u % 32u), var_1.x));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -761f) * 375f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + 988f)))), -1i, true || all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)))));
    var var_1 = Struct_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1628f) - 983f))), 22278i, true);
    var_1 = Struct_1(743f, i32(-1i) * -6108i, !(!all(vec4<bool>(var_0.c, true, var_1.c, false))));
    var_1 = Struct_1(153f, ~_wgslsmith_mult_i32(-(~(-22166i)), var_0.b), true);
    var var_2 = var_0.b;
    return select(select(!(!select(vec2<bool>(var_0.c, var_1.c), vec2<bool>(var_1.c, false), true)), vec2<bool>(all(select(vec4<bool>(true, true, var_0.c, false), vec4<bool>(false, false, true, true), var_0.c)), any(vec4<bool>(true, true, true, true))), any(func_3(Struct_1(935f, var_1.b, var_1.c), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, var_0.a, 394f, var_0.a)))))), select(vec2<bool>(!any(vec2<bool>(var_1.c, false)), var_1.c), !(!(!vec2<bool>(var_1.c, var_0.c))), vec2<bool>(true, !all(vec4<bool>(var_0.c, false, false, true)))), select(func_3(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-937f, 1097f, 209f, -414f), vec4<f32>(var_0.a, var_0.a, var_0.a, var_1.a))))), select(vec2<bool>(!var_1.c, var_1.c | true), vec2<bool>(all(vec3<bool>(true, var_0.c, true)), true), true), !select(vec2<bool>(var_0.c, false), !vec2<bool>(var_1.c, var_0.c), true)));
}

fn func_1(arg_0: u32, arg_1: i32) -> i32 {
    var var_0 = func_2();
    var_0 = vec2<bool>(select(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(-596f, -320f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -542f)), true, any(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)) != var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(587f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1508f)))) > _wgslsmith_div_f32(-835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(724f, -530f, false)))));
    let var_1 = u_input.e;
    var var_2 = select(!select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, func_2().x, true, all(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), ~u_input.c.x >= -u_input.c.x), vec4<bool>(var_0.x, (var_0.x && any(vec2<bool>(var_0.x, var_0.x))) & var_0.x, var_0.x, false), vec4<bool>(arg_1 >= -12955i, true, !((65099i >= arg_1) || !var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(196f - 1116f), _wgslsmith_f_op_f32(floor(-1619f)), true)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f))));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1956f * 473f), _wgslsmith_f_op_f32(-133f * -894f))), _wgslsmith_f_op_f32(select(544f, 252f, any(vec4<bool>(var_0.x, true, var_2.x, false))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(559f + -653f) * _wgslsmith_f_op_f32(sign(-2079f)))))))));
    return ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.c.x), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var var_1 = Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -738f))))), -(~u_input.b ^ max(-vec2<i32>(u_input.b.x, u_input.c.x), vec2<i32>(u_input.c.x, u_input.b.x))), u_input.b.x | (u_input.c.x ^ ~func_1(4834u, u_input.b.x)), abs(vec3<u32>(firstTrailingBit(u_input.d.x), 37725u, u_input.a.x)));
    var var_2 = u_input.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b * -189f))), var_1.b));
    var_2 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_3.x, -1332f) - vec3<f32>(1039f, 271f, -871f)))), vec3<f32>(_wgslsmith_f_op_f32(-1000f - var_3.x), _wgslsmith_f_op_f32(ceil(2920f)), _wgslsmith_f_op_f32(-var_1.b))) + vec3<f32>(231f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-244f, var_1.b)) - -473f)) + var_3.x), _wgslsmith_f_op_f32(floor(-1003f)));
}

