struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<bool> {
    return !select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, true), any(vec4<bool>(false, false, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false)), vec4<bool>(u_input.b.x < u_input.c, false, true, true), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(u_input.b.x <= -30392i));
    var var_1 = select(vec3<bool>(var_0.a.a, var_0.a.a, true), vec3<bool>(all(func_3()), !(!var_0.a.a) && true, 0u <= u_input.a), select(false, var_0.a.a, !var_0.a.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(690f * -515f) - _wgslsmith_f_op_f32(-217f - 267f)))), _wgslsmith_f_op_f32(abs(1902f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(110f * -207f), !var_1.x)))));
    let var_3 = var_0.a;
    let var_4 = _wgslsmith_f_op_f32(var_2.x + 1835f);
    return Struct_1(any(select(vec4<bool>(true, true, true, true), func_3(), vec4<bool>(true, true, var_1.x, var_0.a.a))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    let var_0 = arg_2.c;
    var var_1 = arg_2.e.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-176f))));
    var_2 = arg_2.e.x;
    let var_3 = Struct_3(Struct_1(!(4294967295u < (arg_0 ^ 0u))));
    return var_3;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<f32>) -> i32 {
    let var_0 = min(u_input.a, 1u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_div_f32(1000f, -1000f), false)));
    var_1 = arg_2.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(round(-1969f))))) - -1978f));
    var var_2 = func_4(1u, -7083i << (var_0 % 32u), Struct_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(-41713i, -1i), _wgslsmith_add_i32(min(24740i, -12795i), min(arg_0, 1i))), countOneBits(~arg_0), func_2(u_input.c), func_2(arg_0), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1341f, arg_2.x, -815f, arg_2.x) + vec4<f32>(-268f, arg_2.x, arg_2.x, arg_2.x)))))), 37452u < u_input.a);
    return _wgslsmith_mult_i32(u_input.b.x, ~arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(all(vec2<bool>(true, true)), !any(vec4<bool>(true, false, true, false)), true) & all(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), all(vec2<bool>(true, true))));
    let var_1 = -1i;
    let var_2 = func_1(~_wgslsmith_add_i32(var_1 ^ -1i, _wgslsmith_add_i32(-25666i, u_input.d.x)), ~(~(~vec3<u32>(1u, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))) | (var_1 << (4294967295u % 32u));
    var_0 = (all(!func_3()) && !func_2(i32(-1i) * -1i).a) && false;
    var_0 = true;
    let var_3 = select(!select(select(vec3<bool>(true, true, true), func_3().yyx, true), vec3<bool>(true, func_2(-1i).a, u_input.a == u_input.a), select(true, true, u_input.a >= u_input.a)), vec3<bool>(true, !(true || func_2(var_1).a), !(!all(vec4<bool>(false, false, true, false)))), select(vec3<bool>(true, var_2 <= var_1, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false))), select(vec3<bool>(true, true, true), func_3().xyx, true), any(func_3().yxz)));
    var_0 = func_4(u_input.a, abs(var_2), Struct_2(2147483647i, -(~(-var_1)), func_2(_wgslsmith_sub_i32(~var_2, u_input.c)), Struct_1(var_3.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(223f, 1387f, 524f, -656f))))), (all(vec3<bool>(false, false, var_3.x)) || var_3.x) == true).a.a;
    var_0 = all(vec2<bool>(var_3.x, all(vec3<bool>(!var_3.x, true, var_2 < var_2))));
    let var_4 = _wgslsmith_mod_vec2_i32(u_input.b.xw, ~vec2<i32>(abs(var_1), firstLeadingBit(var_1)) >> (vec2<u32>(~select(u_input.a, u_input.a, var_3.x), u_input.a) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(599f, -739f, -641f)) * vec3<f32>(2404f, -232f, -1035f)), vec3<f32>(500f, -1000f, -102f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1779f, 455f, 241f) + vec3<f32>(-1748f, -365f, -670f))))), 0u);
}

