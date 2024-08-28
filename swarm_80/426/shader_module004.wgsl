struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: u32) -> f32 {
    let var_0 = vec2<i32>(30065i, -2147483647i);
    var var_1 = select(vec3<bool>(select(1u != ~arg_3, arg_2.x, all(vec4<bool>(true, true, true, true))), true, true), !arg_2, arg_2);
    let var_2 = Struct_2(1u);
    var var_3 = Struct_3(select(!select(!vec3<bool>(var_1.x, var_1.x, false), arg_2, any(vec2<bool>(var_1.x, var_1.x))), arg_2, arg_2.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-341f + 2316f), _wgslsmith_f_op_f32(arg_1.a * -1433f), 2098f, 334f))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(floor(-870f)))), 477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a))), _wgslsmith_f_op_f32(arg_0.a * arg_1.a)))), arg_1.a, any(vec3<bool>(var_1.x, any(select(vec3<bool>(var_1.x, arg_2.x, false), arg_2, false)), false)));
    var_1 = !select(vec3<bool>(false, true, false), !(!(!vec3<bool>(true, true, arg_2.x))), arg_0.b.x == var_0.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -1181f);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1088f), _wgslsmith_f_op_f32(func_3(Struct_5(-914f, vec2<i32>(-49085i, u_input.a)), Struct_5(-1000f, vec2<i32>(u_input.a, 0i)), vec3<bool>(false, false, true), 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-148f + 232f) + _wgslsmith_div_f32(1237f, 423f)), 1016f))), firstLeadingBit(-vec3<i32>(_wgslsmith_add_i32(u_input.a, 26837i), -u_input.a, -2147483647i)), Struct_1(-2147483647i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1959f - 225f)))), firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, 0i), 1i) ^ -u_input.a));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.d, var_0.d)));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1875f, var_0.a.x, false)) + _wgslsmith_f_op_f32(f32(-1f) * -131f))))), vec2<i32>(i32(-1i) * -21557i, _wgslsmith_sub_i32(-(i32(-1i) * -33578i), -2147483647i)));
    var_2 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a * var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1241f)))), _wgslsmith_f_op_f32(-var_2.a))), ~reverseBits((var_2.b | var_2.b) ^ var_2.b));
    let var_3 = _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(32761u, 96532u), vec2<u32>(23249u, 0u)), ~69269u, _wgslsmith_mult_u32(132576u, 1u)) | vec3<u32>(1u, ~4294967295u, 23339u)), ~(firstTrailingBit(min(vec3<u32>(54455u, 19658u, 53143u), vec3<u32>(4294967295u, 0u, 0u))) << (vec3<u32>(countOneBits(6721u), min(0u, 33209u), 1u) % vec3<u32>(32u))));
    return Struct_3(!vec3<bool>(true, !any(vec4<bool>(true, true, true, false)), true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(717f, 2166f, -720f, 1000f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, -291f, -446f, var_2.a)))))))), 209f, !(!(_wgslsmith_f_op_f32(round(-1017f)) > 154f)));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = func_2();
    var var_1 = select(vec3<bool>(select(false, !(-76887i >= u_input.a), arg_0), true, arg_0), vec3<bool>(!var_0.d | any(vec4<bool>(arg_0, true, var_0.a.x, arg_0)), arg_0, false), all(var_0.a.zx));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(620f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.x * var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.x)))));
    var_1 = select(select(var_0.a, !(!vec3<bool>(var_0.a.x, false, var_1.x)), any(vec4<bool>(var_1.x, false, var_1.x, true)) & (select(true, var_0.d, true) & true)), select(!select(!var_0.a, vec3<bool>(true, true, true), any(var_0.a)), !var_0.a, arg_0), (!arg_0 != !func_2().d) & !any(!vec4<bool>(var_0.d, var_1.x, var_1.x, var_1.x)));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c))), 1323f))), _wgslsmith_add_vec2_i32(vec2<i32>(firstLeadingBit(-u_input.a), -39841i), ~abs(~vec2<i32>(u_input.a, u_input.a))));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -198f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-617f)));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-108f, 543f) - -448f)))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(false)), _wgslsmith_div_f32(-984f, _wgslsmith_f_op_f32(-227f + 807f)))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-933f)), _wgslsmith_f_op_f32(func_1(true)))) - -528f))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(220f))) * func_2().c)));
    var var_1 = abs(abs(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(u_input.a, 2147483647i), -2147483647i)));
    let var_2 = firstLeadingBit(vec4<u32>(28250u, reverseBits(72544u), 1u, 9314u));
    var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(firstTrailingBit(~(-vec2<i32>(u_input.a, u_input.a))), vec2<i32>(61394i | abs(u_input.a), ~2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-102f * 1000f), _wgslsmith_f_op_f32(floor(1f)))), _wgslsmith_f_op_f32(select(481f, -420f, true)), -643f));
}

