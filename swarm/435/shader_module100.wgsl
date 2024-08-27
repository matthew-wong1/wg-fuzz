struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = select(vec2<bool>(arg_0 | all(!vec2<bool>(true, arg_0)), !select(true | arg_0, false, true)), !select(vec2<bool>(true, false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), true), all(!vec2<bool>(arg_0, arg_0))), vec2<bool>(arg_0, !(!(!arg_0))));
    let var_1 = !select(vec3<bool>(true, all(vec3<bool>(arg_0, var_0.x, arg_0)), all(vec4<bool>(true, true, true, true))), vec3<bool>(!var_0.x, any(!vec3<bool>(false, true, var_0.x)), !any(vec3<bool>(var_0.x, var_0.x, true))), false);
    let var_2 = Struct_2(-1063f);
    var var_3 = select(select(!select(select(vec4<bool>(false, arg_0, true, var_0.x), vec4<bool>(arg_0, false, var_1.x, var_0.x), false), select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, true, false, var_0.x)), vec4<bool>(var_0.x, arg_0, false, arg_0)), select(!vec4<bool>(false, var_0.x, true, false), !(!vec4<bool>(var_0.x, var_0.x, var_1.x, arg_0)), any(vec4<bool>(var_1.x, arg_0, var_1.x, false))), select(select(vec4<bool>(false, var_1.x, true, var_1.x), !vec4<bool>(false, true, arg_0, var_0.x), !vec4<bool>(arg_0, true, arg_0, var_1.x)), vec4<bool>(var_1.x, u_input.a.x >= u_input.a.x, !var_1.x, any(var_1)), !all(vec4<bool>(var_0.x, arg_0, arg_0, var_0.x)))), !select(vec4<bool>(var_0.x, var_0.x, false, true == arg_0), vec4<bool>(true, true, true, true), !(!vec4<bool>(true, false, arg_0, arg_0))), select(vec4<bool>(true, var_0.x, all(!var_1.zy), !var_1.x), vec4<bool>(true, true, true, !arg_0), vec4<bool>(false, false, all(var_1.zx), u_input.a.x == -1i)));
    var var_4 = Struct_1(true);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, var_2.a, 1266f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(976f, -1331f, arg_2.a), vec3<f32>(-823f, arg_1.a, arg_1.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a, arg_2.a, arg_1.a), vec3<f32>(1703f, -816f, -1000f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1978f, var_2.a, arg_2.a) + vec3<f32>(var_2.a, -1134f, -899f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.a, -1185f)), _wgslsmith_f_op_f32(-arg_2.a), 1835f))), var_3.yxy));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = u_input.a.x < ~_wgslsmith_mod_i32(~2147483647i << (arg_2.x % 32u), ~arg_0.x);
    var var_1 = false;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(round(650f)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(true, Struct_2(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1066f))), var_2)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-940f + _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a))), 1395f)));
    var var_4 = firstTrailingBit(~46530u);
    return var_3.x;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.a, _wgslsmith_f_op_f32(f32(-1f) * -688f), -787f, -419f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(989f, arg_3.a, arg_0, arg_0)))))));
    let var_1 = -265f;
    let var_2 = _wgslsmith_add_vec3_u32(u_input.c.xwz >> (u_input.c.zzx % vec3<u32>(32u)), u_input.d);
    let var_3 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(false, false)), true), false), vec4<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), all(vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(-1026f, -728f) != _wgslsmith_f_op_f32(-var_0.x)), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)));
    let var_4 = Struct_1(!(u_input.a.x < u_input.a.x));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(select(-29506i, arg_1, var_3.x), u_input.a.x, -1i, arg_1), firstLeadingBit(vec2<i32>(0i, -22973i)), ~u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-2440f, 1551f), _wgslsmith_f_op_f32(trunc(-1668f)), -805f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1449f, _wgslsmith_f_op_f32(func_1(-1000f, u_input.a.x, Struct_2(-354f), Struct_2(-571f))), -559f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1825f, 396f, -1375f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(334f, 331f, -953f) - vec3<f32>(-915f, -489f, 433f))))));
    var var_1 = u_input.d.x;
    var var_2 = vec2<bool>(true, true);
    var_1 = max(~u_input.b.x, _wgslsmith_add_u32(1u, ~4294967295u));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-756f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(-1f)))));
    var var_3 = vec2<i32>(~u_input.a.x, ~u_input.a.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -304f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, -1832f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 583f, var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-727f + 259f), -758f, var_0.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 733f, var_0.x)) * vec3<f32>(-231f, -1143f, -1548f))), vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(163f - -166f) - -1000f), -198f))), select(vec3<i32>(abs(_wgslsmith_add_i32(u_input.a.x, -1564i)), ~1i, -68536i), reverseBits(vec3<i32>(_wgslsmith_mult_i32(var_3.x, var_3.x), 1i, -32684i)), vec3<bool>(var_2.x, var_2.x, true)));
}

