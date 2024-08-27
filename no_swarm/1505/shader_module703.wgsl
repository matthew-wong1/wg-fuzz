struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global0 = false;
    global0 = true;
    var var_0 = ~vec4<u32>(u_input.b.x ^ 1u, 61370u, 6010u, ~(~_wgslsmith_div_u32(0u, 3718u)));
    let var_1 = vec4<i32>(u_input.a.x, ~(min(~43332i, _wgslsmith_dot_vec3_i32(u_input.a.wwz, vec3<i32>(2147483647i, -83543i, u_input.a.x))) >> (u_input.b.x % 32u)), u_input.a.x, ~(~1i));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(541f - 697f), -1639f, _wgslsmith_f_op_f32(-267f + 1638f), _wgslsmith_f_op_f32(step(623f, 1108f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, 1000f, true)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-478f, -1614f))))), var_2.x, true)) + var_2.x);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = u_input.b;
    var_0 = vec3<u32>(var_0.x, ~u_input.c, ~(~(~(u_input.c ^ 32937u))));
    var var_1 = _wgslsmith_f_op_f32(func_3());
    let var_2 = vec2<bool>(true, true);
    var_1 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-207f - _wgslsmith_f_op_f32(-arg_2.b))))));
    return arg_1;
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = vec4<i32>(~_wgslsmith_mod_i32(1i >> (select(4294967295u, u_input.c, arg_0.b) % 32u), firstLeadingBit(~arg_0.e)), _wgslsmith_mod_i32(-11685i, 1i), -(~(-107486i)), countOneBits(-u_input.a.x));
    var var_1 = ~u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.d.xwx, vec3<f32>(arg_0.d.x, arg_0.d.x, 149f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-818f * 1000f), arg_0.d.x), select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(true, arg_0.b, true), select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), arg_0.b))))));
    global0 = true;
    var var_3 = Struct_1(true, _wgslsmith_f_op_f32(561f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return select(vec3<i32>(u_input.a.x, -(~(u_input.a.x | u_input.a.x)), min(2147483647i, u_input.a.x)), var_0.yww, vec3<bool>(true, all(!vec4<bool>(var_3.a, var_3.a, true, arg_0.b)), !arg_0.b));
}

fn func_1() -> Struct_1 {
    let var_0 = ~countOneBits(~func_4(func_2(true, Struct_2(1i, false, u_input.d.x, vec4<f32>(-246f, 555f, 1025f, 1087f), u_input.a.x), Struct_1(true, -186f), vec4<bool>(false, false, false, false))));
    var var_1 = Struct_1(false, 405f);
    let var_2 = func_2(true, Struct_2(-(~(-2147483647i)), var_1.a, abs(u_input.d.x), _wgslsmith_f_op_vec4_f32(func_2(var_1.a, Struct_2(1i, var_1.a, 4294967295u, vec4<f32>(var_1.b, 1283f, -1449f, var_1.b), 26977i), Struct_1(false, var_1.b), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)).d * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1168f, -496f, var_1.b, 684f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1209f, 1123f, -1237f, var_1.b))))), -firstLeadingBit(u_input.a.x)), Struct_1(var_1.a, _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(max(179f, _wgslsmith_f_op_f32(-244f * 765f))))), !(!vec4<bool>(var_1.a, select(var_1.a, false, false), true, var_1.a)));
    let var_3 = Struct_2(-firstTrailingBit(var_0.x), true, ~0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(max(1998f, var_1.b)), var_2.d.x, 488f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-174f, 463f, 1493f, var_2.d.x) - vec4<f32>(var_2.d.x, var_1.b, 1229f, -229f))))) + var_2.d), ~_wgslsmith_div_i32(var_0.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.x, 31564i), 1i, min(19247i, u_input.a.x))));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.d.x, var_1.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_1.b, var_2.d.x)))), 449f, -823f);
    return Struct_1(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(204f)))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_0 < _wgslsmith_div_u32(~countOneBits(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(7166u, arg_0, 1u))), ~func_2(34437u <= u_input.d.x, Struct_2(-2147483647i, arg_2.a, u_input.b.x, vec4<f32>(arg_1.b, arg_3.b, arg_3.b, 343f), u_input.a.x), Struct_1(false, arg_3.b), select(vec4<bool>(arg_1.a, false, false, arg_2.a), vec4<bool>(false, true, arg_1.a, true), vec4<bool>(false, arg_1.a, arg_2.a, true))).c);
    global0 = arg_1.a && false;
    let var_0 = ~(~(~arg_0));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_add_i32(-reverseBits(u_input.a.x), u_input.a.x), u_input.a.x);
    global0 = !arg_3.a;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(20952u, func_1(), Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1672f, 226f, true)))))), func_1());
    let var_1 = vec4<bool>(false || var_0.a, var_0.a, !(!(!var_0.a)), false);
    global0 = false;
    global0 = true;
    let var_2 = i32(-1i) * -2147483647i;
    let var_3 = min(18672u, (u_input.c | _wgslsmith_sub_u32(1u, u_input.c ^ u_input.b.x)) >> ((~_wgslsmith_mod_u32(27955u, u_input.d.x) | 1u) % 32u));
    global0 = all(!var_1);
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1355f - var_0.b), func_5(u_input.c, Struct_1(var_1.x, -1000f), var_4, var_0).b, var_0.a & true))), -824f, _wgslsmith_f_op_f32(var_4.b - -238f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.b, var_4.b, var_4.b) + vec3<f32>(var_4.b, -609f, 3246f)), _wgslsmith_f_op_vec3_f32(-func_2(var_1.x, Struct_2(-90828i, var_4.a, 46916u, vec4<f32>(-679f, var_0.b, var_0.b, -695f), u_input.a.x), var_0, vec4<bool>(var_4.a, false, var_0.a, false)).d.wzx)))), reverseBits(-7549i), 1u);
}

