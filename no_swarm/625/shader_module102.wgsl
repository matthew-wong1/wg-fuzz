struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(1i, 6539i, 1i, -21211i, 1i, 2147483647i, -16003i, 0i, 45424i, 17474i, -5633i, 15460i, 2147483647i, -60657i, -1i, -12873i, i32(-2147483648), 2147483647i, i32(-2147483648), 0i, 2147483647i, i32(-2147483648), -1i, i32(-2147483648), -10149i, -32963i, -810i, -68855i, 1i, 32988i, -25637i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<f32>) -> vec4<f32> {
    var var_0 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(any(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(true, false, false, arg_0))), 24146u != u_input.a.x), false), vec4<i32>(1i, u_input.b.x, -global0[_wgslsmith_index_u32(~countOneBits(873u), 31u)], -53941i));
    let var_1 = all(select(select(var_0.a, var_0.a, !var_0.a), !(!select(vec2<bool>(var_0.a.x, true), var_0.a, var_0.a)), var_0.a));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1220f))) + arg_1), arg_1, _wgslsmith_f_op_f32(-arg_2.x), 514f);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(false, _wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1358f, 377f, 121f, -497f) + vec4<f32>(-418f, -1224f, -582f, 2015f))))))));
    global0 = array<i32, 31>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(482f, var_0.x, var_0.x, 1954f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -417f))))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(1398f)), 662f, -1328f, -1412f);
    var_2 = vec4<f32>(-2075f, _wgslsmith_f_op_f32(min(var_1.x, -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_2.x))), -247f), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1222f * var_0.x)))));
    return _wgslsmith_clamp_u32(1u, u_input.a.x, 0u);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> f32 {
    var var_0 = (~vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c), func_2()) << (_wgslsmith_div_vec2_u32(firstTrailingBit(u_input.a.zz | vec2<u32>(42492u, 4294967295u)), ~u_input.a.yx) % vec2<u32>(32u))) | vec2<u32>(abs(u_input.c), ~select(firstTrailingBit(1u), u_input.a.x, arg_1.x));
    var var_1 = _wgslsmith_f_op_f32(select(-376f, -1125f, !arg_1.x | false));
    let var_2 = !(!vec3<bool>(false, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a) < _wgslsmith_clamp_u32(63111u, var_0.x, 32534u), !(arg_1.x || true)));
    let var_3 = Struct_5(any(select(select(!arg_1.yyz, select(arg_1.zxz, var_2, var_2.x), !vec3<bool>(var_2.x, var_2.x, arg_1.x)), vec3<bool>(true, arg_1.x, false), select(all(arg_1), any(arg_1), true))), Struct_4(Struct_2(arg_1.xz, vec4<i32>(~arg_0.x, ~(-1i), _wgslsmith_mult_i32(9751i, arg_0.x), min(u_input.b.x, global0[_wgslsmith_index_u32(var_0.x, 31u)]))), abs(_wgslsmith_add_vec2_i32(vec2<i32>(-40121i, arg_2.x), max(vec2<i32>(1i, 0i), arg_0.xz)))), reverseBits(vec2<u32>(max(u_input.c, u_input.c), var_0.x)), arg_1.zyy, select(vec4<bool>(var_2.x, var_2.x, true, 84473u > firstTrailingBit(u_input.a.x)), !select(vec4<bool>(true, arg_1.x, true, true), !vec4<bool>(false, var_2.x, false, false), true), select(arg_1, arg_1, true)));
    var var_4 = var_3.b.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(all(vec2<bool>(true, true)), _wgslsmith_div_f32(537f, -1495f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2177f, 1000f, 913f, 769f)))).x - _wgslsmith_f_op_f32(trunc(-978f))) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1066f, -1000f, false)) + -1029f))), _wgslsmith_f_op_f32(func_1(u_input.b, vec4<bool>(true, true, true, true), vec2<i32>(u_input.b.x, 30303i) << (~vec2<u32>(u_input.c, 19930u) % vec2<u32>(32u)))))));
    let var_1 = vec2<u32>(1972u, 1u);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1019f))) - _wgslsmith_f_op_f32(188f + _wgslsmith_f_op_f32(max(513f, -1339f))))) * _wgslsmith_f_op_f32(min(-351f, -809f)));
    global0 = array<i32, 31>();
    let var_2 = any(vec3<bool>(_wgslsmith_f_op_f32(select(830f, _wgslsmith_f_op_f32(-1588f + -2383f), true)) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f), !any(vec4<bool>(true, true, true, true)), false));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-861f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -807f), _wgslsmith_f_op_f32(-573f * _wgslsmith_f_op_f32(func_1(u_input.b, vec4<bool>(false, true, var_2, true), u_input.b.yx))), select(all(vec3<bool>(var_2, var_2, true)), !var_2, 49161u < var_1.x)))) + 1349f);
    global0 = array<i32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(~func_2(), u_input.c, 60677u, ~(~71252u)), ~vec4<u32>(_wgslsmith_add_u32(11992u, var_1.x), ~5775u, _wgslsmith_clamp_u32(u_input.a.x, 62119u, 46509u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, 18511u, var_1.x), vec4<u32>(var_1.x, 4294967295u, 49337u, var_1.x)))), ~(vec4<u32>(var_1.x, var_1.x, ~72289u, firstLeadingBit(72947u)) & min(vec4<u32>(21211u, var_1.x, var_1.x, var_1.x), ~vec4<u32>(49447u, u_input.a.x, var_1.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-1120f - 620f), _wgslsmith_f_op_f32(max(-1182f, -180f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1981f, -541f, 294f) + vec3<f32>(1318f, -280f, 271f)) - vec3<f32>(-161f, -1201f, -1135f))))));
}

