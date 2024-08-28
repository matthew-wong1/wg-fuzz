struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_4 {
    return Struct_4(Struct_1(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), -9765i >= u_input.c.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1680f)))), Struct_2(-1000f), !any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), any(vec2<bool>(false, false)))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-145f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-620f, 735f)))))));
    var var_1 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0))), _wgslsmith_f_op_f32(sign(var_0))), true);
    var_1 = Struct_5(var_0, true);
    var var_2 = -u_input.c;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-239f, var_0))), var_0);
    return 611f;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = u_input.b.x;
    let var_2 = vec2<u32>(73710u << ((_wgslsmith_sub_u32(abs(4294967295u), ~1u) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), ~vec2<u32>(1u, 1u)) % 32u)) % 32u), ~1u);
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 2390f), var_0.c.a), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_div_f32(1771f, 348f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1382f)), vec2<f32>(arg_0, var_0.b), var_0.a.a.xx)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), vec2<f32>(849f, arg_0)))))));
    let var_4 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(162f * 1112f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x - arg_0), _wgslsmith_f_op_f32(max(1251f, arg_0)))))), !var_0.d);
    return var_0.c;
}

fn func_4(arg_0: Struct_2) -> Struct_5 {
    let var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1629f, -1114f, true)))), _wgslsmith_f_op_f32(-160f + 511f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_0.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1260f, -1721f, arg_0.a, -169f), vec4<f32>(1821f, 387f, arg_0.a, arg_0.a)) * vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.a, arg_0.a, arg_0.a)))))));
    var var_2 = var_1.zx;
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * -1445f) * var_1.x))) + 733f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-307f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - -1770f)), func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-181f * var_2.x), _wgslsmith_div_f32(-311f, 135f)))).a)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1)));
    return Struct_5(var_2.x, _wgslsmith_f_op_f32(-721f * var_3.x) <= var_3.x);
}

fn func_5(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = ~abs(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(46819u, 0u), vec2<u32>(1u, 4294967295u)), 4294967295u, _wgslsmith_clamp_u32(firstTrailingBit(0u), max(62032u, 8918u), 1u), reverseBits(_wgslsmith_mod_u32(66314u, 4294967295u))));
    var var_1 = -363f;
    var_1 = _wgslsmith_div_f32(arg_1.x, arg_1.x);
    var var_2 = _wgslsmith_mult_vec2_u32(firstLeadingBit(select(reverseBits(var_0.wz), _wgslsmith_mod_vec2_u32(var_0.xx, vec2<u32>(9725u, 26534u)), !arg_0.b) << (vec2<u32>(~34746u, 14544u) % vec2<u32>(32u))), ~(~vec2<u32>(var_0.x, 62914u >> (1u % 32u))));
    var_2 = vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(var_0, _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, var_2.x, 44315u, var_0.x), var_0)), ~(~(4294967295u | var_0.x))), 1u);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_add_vec2_i32(vec2<i32>(-1i, ~(-1i)), ~max(firstLeadingBit(u_input.a.zy), vec2<i32>(u_input.b.x, -1i) << (vec2<u32>(0u, 88482u) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(func_5(func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1145f, 692f, true))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-250f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1636f, -327f)) + _wgslsmith_f_op_f32(-439f - 846f))))), _wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, 1i) & vec4<i32>(2147483647i, 2147483647i, -4546i, -9620i), u_input.a | u_input.a), vec4<i32>(-(~(-1i)), -_wgslsmith_sub_i32(-1i, 1i), _wgslsmith_div_i32(1i, -2147483647i), (var_0.x >> (0u % 32u)) >> (~5068u % 32u)))));
    let var_2 = func_2().c;
    let var_3 = countOneBits(~1u);
    var var_4 = _wgslsmith_div_i32(var_0.x, 0i);
    let var_5 = abs(1i);
    var var_6 = Struct_1(select(vec3<bool>(true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false))), all(vec2<bool>(false, true))), vec3<bool>(true, true, !all(vec4<bool>(true, true, false, false))), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))));
    let var_7 = Struct_1(vec3<bool>(all(!var_6.a.xy) || any(!vec4<bool>(var_6.a.x, var_6.a.x, false, false)), var_6.a.x, !(var_6.a.x & var_6.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -641f) - 911f), vec3<u32>(1347u >> (var_3 % 32u), var_3, 1057u), max(vec2<u32>(var_3, _wgslsmith_clamp_u32(var_3, ~0u, firstLeadingBit(4294967295u))), vec2<u32>(4294967295u, ~var_3)), 4294967295u, firstLeadingBit(~countOneBits(~var_3)));
}

