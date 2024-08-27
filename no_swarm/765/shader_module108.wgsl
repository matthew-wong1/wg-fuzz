struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = select(vec3<bool>(arg_1.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, arg_0.x, arg_0.x), arg_0.zzy) < arg_0.x, all(select(vec2<bool>(arg_1.c.x, false), vec2<bool>(true, false), vec2<bool>(false, arg_1.c.x))) || true), select(vec3<bool>(any(select(arg_1.c.xww, vec3<bool>(arg_1.b, true, arg_1.c.x), arg_1.c.xww)), _wgslsmith_add_i32(12368i, -1798i) != _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 47119i, -24998i), vec4<i32>(-31479i, 56457i, -2147483647i, 16934i)), arg_1.c.x | true), arg_1.c.zxz, !arg_1.c.yxw), !arg_1.c.x);
    return arg_1.c.x;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_1(arg_1, func_3(select(~(~vec4<u32>(25960u, 2323u, u_input.a, u_input.a)), vec4<u32>(select(u_input.a, u_input.a, false), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1817u, u_input.a, u_input.a), vec4<u32>(109736u, u_input.a, u_input.a, u_input.a)), u_input.a, ~u_input.a), vec4<bool>(all(vec2<bool>(true, true)), true, true, select(true, true, false))), Struct_1(-1618f, false, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), -917f)), select(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), any(vec4<bool>(true, true, true, true)), true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, false, false))), false), -1522f);
    let var_1 = _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(835f - arg_2.x)));
    var var_2 = vec2<f32>(arg_1, 690f);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_2.x), false, vec4<bool>(true, _wgslsmith_f_op_f32(exp2(arg_2.x)) == var_2.x, true, !any(select(var_0.c, var_0.c, vec4<bool>(false, var_0.b, var_0.c.x, var_0.c.x)))), var_0.d);
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.yz * arg_2.yy)), arg_2.zx, var_0.c.yx)) + _wgslsmith_f_op_vec2_f32(arg_2.xy * vec2<f32>(_wgslsmith_f_op_f32(floor(297f)), _wgslsmith_f_op_f32(f32(-1f) * -1239f)))));
    return var_0.d;
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-369f + _wgslsmith_f_op_f32(func_2(arg_0, 312f, vec3<f32>(598f, -152f, -823f), arg_0))), _wgslsmith_f_op_f32(trunc(-1198f))) * 1185f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -926f) * _wgslsmith_f_op_f32(round(1240f))));
    let var_1 = arg_0;
    let var_2 = -(~_wgslsmith_mult_i32(2147483647i, arg_0.a.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1341f, _wgslsmith_f_op_f32(f32(-1f) * -110f)), vec2<f32>(218f, 531f)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(-1110f)), _wgslsmith_f_op_f32(f32(-1f) * -1320f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-286f, -757f))))));
    var var_1 = select(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, 295f > _wgslsmith_f_op_f32(step(var_0.x, -1106f))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), u_input.a != u_input.a), !vec4<bool>(any(vec4<bool>(false, true, true, true)), all(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, true)), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, false)), select(false, false, false), true, true), !func_1(Struct_3(vec3<i32>(-18929i, -1i, 18546i)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), false), true), true);
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2150f))), _wgslsmith_f_op_f32(var_0.x + -209f), -1235f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-629f, _wgslsmith_f_op_f32(f32(-1f) * -1084f), _wgslsmith_f_op_f32(var_0.x * -1000f))))));
    var var_3 = ~vec3<i32>(1i, 1i, 1i);
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-817f)), 663f));
    var_1 = vec4<bool>(any(select(!vec4<bool>(false, false, false, var_1.x), !vec4<bool>(true, var_1.x, false, true), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), true))), true, select(true || var_1.x, select(all(!vec2<bool>(true, var_1.x)), false, true), any(select(vec2<bool>(false, false), !var_1.ww, var_1.zz))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-549f, var_0.x)) * var_0.x), 1040f) != _wgslsmith_f_op_f32(f32(-1f) * -1020f));
    var_1 = vec4<bool>(func_3(vec4<u32>(u_input.a, firstTrailingBit(4294967295u), u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a)), min(84351u, u_input.a))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1009f, 583f)) - _wgslsmith_div_f32(1455f, var_0.x)), !var_1.x, vec4<bool>(var_1.x & false, true, true, all(vec4<bool>(true, var_1.x, var_1.x, false))), var_0.x)), !all(!select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(false, var_1.x))), !var_1.x || (true & all(vec4<bool>(false, true, true, var_1.x))), true);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.x))))));
    let var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f - _wgslsmith_div_f32(var_0.x, 857f)) + var_0.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-864f + 608f)))), u_input.a, 0u);
}

