struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(0u, 1u, 58369u, 53036u, 4294967295u, 39203u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> vec2<bool> {
    let var_0 = arg_0.x;
    let var_1 = Struct_4(Struct_1(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a.x, 51694u, 46811u, 60637u)), max(~vec4<u32>(u_input.a.x, 35102u, 55375u, global0[_wgslsmith_index_u32(9324u, 6u)]), firstTrailingBit(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 6u)], u_input.a.x, u_input.a.x))), ~(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70998u, 6u)], 6u)], global0[_wgslsmith_index_u32(21058u, 6u)]) & vec4<u32>(global0[_wgslsmith_index_u32(15269u, 6u)], global0[_wgslsmith_index_u32(26815u, 6u)], u_input.a.x, 36089u)))));
    var var_2 = !select(arg_0, vec4<bool>(all(vec2<bool>(false, arg_0.x)), true, true, true), !(!select(arg_0, vec4<bool>(var_0, false, false, arg_0.x), arg_0.x)));
    let var_3 = abs(u_input.c.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1197f))) == -1724f;
    return arg_0.zy;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1526f, arg_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -852f)))) * arg_1.x);
    var var_1 = select(vec2<bool>(true, all(select(vec4<bool>(false, true, false, arg_0), vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, arg_0, arg_2.x, true))) & select(arg_0, select(true, arg_0, arg_2.x), false || arg_2.x)), arg_2.yz, arg_0);
    var_1 = select(vec2<bool>(select(true, false, var_1.x), arg_0), vec2<bool>(!arg_2.x, any(select(func_3(vec4<bool>(var_1.x, false, arg_2.x, arg_2.x)), select(vec2<bool>(false, arg_0), arg_2.xy, arg_2.x), true))), select(arg_2.xy, vec2<bool>(!arg_0, any(!vec3<bool>(arg_2.x, arg_2.x, var_1.x))), vec2<bool>(arg_0, true)));
    var var_2 = u_input.c.x;
    var var_3 = u_input.a.x != abs(4294967295u);
    return vec4<bool>(all(select(select(vec4<bool>(arg_2.x, arg_2.x, false, var_1.x), !vec4<bool>(arg_0, false, arg_0, var_1.x), vec4<bool>(false, true, arg_0, arg_2.x)), !select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(true, false, var_1.x, arg_0), true), all(arg_2.zx))), 13245u >= u_input.a.x, any(!(!vec4<bool>(arg_2.x, true, true, var_1.x))) & true, var_1.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = -442f;
    global0 = array<u32, 6>();
    var var_1 = true;
    var var_2 = -1i;
    var var_3 = !select(!func_2(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(934f, arg_0, 108f, arg_0))), vec3<bool>(true, true, true), countOneBits(0u)), vec4<bool>(true, true, true, -718f < _wgslsmith_f_op_f32(floor(arg_0))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_2(true, vec4<f32>(arg_0, arg_0, 324f, -360f), vec3<bool>(true, false, true), 4294967295u).x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false))));
    return Struct_1(vec4<u32>(45046u, ~(~4294967295u) | u_input.a.x, 27191u, 82946u));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = abs(vec4<i32>(~(~1i), 42584i, -u_input.b.x, -2147483647i));
    var var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(max(var_0.wyz & vec3<i32>(u_input.c.x, u_input.c.x, 38480i), var_0.xxx), vec3<i32>(-1i, var_0.x, -2147483647i) >> (vec3<u32>(2389u, u_input.a.x, global0[_wgslsmith_index_u32(1u, 6u)]) % vec3<u32>(32u))), u_input.c), u_input.c, ~(vec3<i32>(-1i) * -(~var_0.xyw)));
    return Struct_4(arg_0.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_4 {
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    let var_0 = Struct_2(vec3<bool>(true, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))), func_2(true, arg_1, vec3<bool>(true, true, true), ~(~5522u)).x), func_2(!(u_input.c.x > -2147483647i), vec4<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), 266f, arg_1.x, _wgslsmith_f_op_f32(-221f - _wgslsmith_f_op_f32(-arg_1.x))), !select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, true)), 1u));
    let var_1 = Struct_3(all(func_2(!any(var_0.a), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, arg_1.x, -894f, arg_1.x))), vec3<bool>(true, true, true), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(14833u, arg_2.a.a.x))).wwy), max(22910i, _wgslsmith_mod_i32(u_input.b.x, -u_input.b.x)));
    let var_2 = !func_2(_wgslsmith_f_op_f32(-arg_1.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)) - _wgslsmith_f_op_f32(arg_1.x - arg_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(861f, arg_1.x, arg_1.x, 225f) - vec4<f32>(arg_1.x, 1339f, 1707f, -1003f)), arg_1)), !select(select(vec3<bool>(true, false, var_0.a.x), vec3<bool>(false, var_0.a.x, var_1.a), var_0.b.yzy), var_0.a, !vec3<bool>(var_1.a, var_0.b.x, var_0.b.x)), abs(53632u)).zy;
    return func_4(func_4(Struct_4(func_4(func_4(arg_2, Struct_4(arg_0), var_0.a), arg_2, vec3<bool>(var_1.a, var_2.x, var_0.b.x)).a), func_4(Struct_4(Struct_1(vec4<u32>(u_input.a.x, arg_2.a.a.x, u_input.a.x, u_input.a.x))), func_4(Struct_4(Struct_1(arg_2.a.a)), arg_2, !var_0.a), func_2(false, arg_1, !var_0.b.yzw, u_input.a.x & 4294967295u).wxz), vec3<bool>(true, ~u_input.a.x <= ~77077u, true)), arg_2, !select(!(!var_0.a), func_2(true, _wgslsmith_f_op_vec4_f32(arg_1 * arg_1), !vec3<bool>(false, false, var_1.a), 67214u).yzz, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(max(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 34971u, 1u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32799u, 6u)], 6u)]))), min(vec4<u32>(59587u, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(11407u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6988u, 6u)], 6u)], 6u)]), vec4<u32>(12694u, u_input.a.x, u_input.a.x, 4294967295u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1568f, -2070f, 169f, -708f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1526f, 1000f, 896f, 1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1485f, -470f, 430f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(647f, -1000f, 823f, -523f) * vec4<f32>(589f, 1600f, -821f, 575f)), true))))), func_4(Struct_4(func_1(-183f)), Struct_4(Struct_1(~vec4<u32>(0u, 64351u, global0[_wgslsmith_index_u32(22055u, 6u)], u_input.a.x))), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))));
    let var_1 = Struct_2(vec3<bool>(true, true, true), !(!select(func_2(true, vec4<f32>(1000f, -765f, 1282f, 1166f), vec3<bool>(true, false, false), 4380u), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), func_2(true, vec4<f32>(-109f, 120f, 1000f, -1177f), vec3<bool>(false, true, true), u_input.a.x))));
    let var_2 = func_5(var_0.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(867f, -115f, 669f, 1450f), vec4<f32>(990f, -561f, 1000f, 230f)))))))), func_4(func_4(Struct_4(var_0.a), func_4(func_4(Struct_4(Struct_1(var_0.a.a)), Struct_4(Struct_1(var_0.a.a)), vec3<bool>(var_1.a.x, false, false)), func_4(Struct_4(Struct_1(var_0.a.a)), Struct_4(Struct_1(vec4<u32>(var_0.a.a.x, var_0.a.a.x, 0u, 76650u))), vec3<bool>(var_1.a.x, true, var_1.b.x)), vec3<bool>(var_1.b.x, var_1.a.x, var_1.b.x)), vec3<bool>(true, true, true)), Struct_4(func_1(-628f)), func_2(!var_1.b.x | var_1.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1123f, 1933f, -527f, -730f), vec4<f32>(219f, 218f, -188f, -1604f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-818f, 982f, -1905f, -879f)))), !var_1.a, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(6872u, 4294967295u), 6u)], ~global0[_wgslsmith_index_u32(16127u, 6u)])).zzz)).a;
    var var_3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1188f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-971f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-941f))))))).a;
    let var_4 = Struct_4(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(vec3<i32>(-7897i, u_input.b.x, u_input.c.x) << (max(var_4.a.a.yzy, u_input.a) % vec3<u32>(32u))), 0i);
}

