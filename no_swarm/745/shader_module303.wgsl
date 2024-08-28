struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-712f, -956f, 1051f);

var<private> global1: vec3<i32> = vec3<i32>(-50289i, -1i, -45794i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>) -> vec4<f32> {
    global1 = vec3<i32>(_wgslsmith_clamp_i32(abs(i32(-1i) * -58402i) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(7023u, 42539u), vec2<u32>(0u, 25869u)) % 32u), abs(-1i), -15863i), 12704i, ~1i);
    global1 = u_input.b;
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-369f, 1373f, arg_1.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-777f, arg_0.x, -1000f)), _wgslsmith_f_op_vec3_f32(arg_1.wyw + arg_1.xyx))))));
    global1 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, ~(~global1.x), i32(-1i) * -1i), countOneBits(u_input.b));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -485f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-869f, _wgslsmith_f_op_f32(f32(-1f) * -945f), -1000f, _wgslsmith_f_op_f32(max(-360f, global0.x)))));
    return _wgslsmith_f_op_vec4_f32(exp2(var_0.b));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: i32) -> vec2<bool> {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-217f * -1454f), global0.x, _wgslsmith_div_f32(-539f, 275f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -277f, -1019f, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(-global0.xx), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1365f, global0.x, 3113f, global0.x))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-557f, -270f, global0.x, global0.x))) + vec4<f32>(-494f, global0.x, -381f, global0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -1504f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, -1720f, 1013f))))))));
    let var_2 = Struct_3(Struct_2(Struct_1(var_1.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1559f, 208f, 402f, 944f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.x, var_1.x, var_1.x) - vec4<f32>(global0.x, var_1.x, 342f, var_1.x)))))), _wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, ~4294967295u), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)))));
    var var_3 = min(~(~(~(vec2<u32>(4294967295u, 42495u) & vec2<u32>(var_2.b, 0u)))), select(max(vec2<u32>(var_2.b, ~50965u), vec2<u32>(abs(var_2.b), 1u)), vec2<u32>(reverseBits(20488u) << (_wgslsmith_sub_u32(29489u, var_2.b) % 32u), ~(~1u)), !(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, true), false))));
    var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(0u, var_3.x)), vec2<u32>(4294967295u, 1u) & vec2<u32>(var_3.x, var_3.x)) & ~vec2<u32>(42413u, 4294967295u), ~(abs(vec2<u32>(1u, 4294967295u)) & _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.x, 90233u), vec2<u32>(var_3.x, 1u)))), ~min(_wgslsmith_add_vec2_u32(vec2<u32>(100669u, var_2.b) << (vec2<u32>(var_3.x, 34832u) % vec2<u32>(32u)), select(vec2<u32>(12766u, 1u), vec2<u32>(var_3.x, var_2.b), arg_0)), select(vec2<u32>(13209u, 4294967295u) >> (vec2<u32>(35343u, var_3.x) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, var_3.x), vec2<bool>(false, arg_0))));
    return !vec2<bool>(!arg_0, ~(-7486i) <= _wgslsmith_clamp_i32(global1.x, ~0i, ~(-34632i)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    var var_0 = -775f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1254f * arg_1.a)))) + _wgslsmith_f_op_f32(f32(-1f) * -1753f));
    var var_1 = arg_0.x;
    let var_2 = Struct_3(Struct_2(arg_1), 4294967295u);
    var var_3 = global0.xz;
    return -454f;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32) -> f32 {
    var var_0 = vec2<i32>(~(-1i << (arg_1 % 32u)), global1.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(arg_1, arg_2, 4294967295u)), ~(vec3<u32>(arg_2, arg_1, 0u) | vec3<u32>(arg_2, arg_2, 1u))), Struct_1(global0.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(300f, -1988f, 300f, -147f), vec4<bool>(true, false, true, false)))))), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), false), func_2(true, 2147483647i, var_0.x & global1.x), func_2(true, var_0.x, ~global1.x)))));
    global1 = ~countOneBits(~(-(~vec3<i32>(var_0.x, u_input.d.x, global1.x))));
    var_0 = u_input.b.yy;
    let var_2 = Struct_3(Struct_2(Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, 1000f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1029f, 1258f, -376f))))), arg_1);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1036f - _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-arg_0)))), -1000f, any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1189f, global0.x, -956f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1000f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(625f, -2414f, -286f) + vec3<f32>(global0.x, -444f, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, global0.x, global0.x))))) * vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(587f - _wgslsmith_f_op_f32(func_1(1227f, 47731u, 8880u))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x))), global0.x));
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -558f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1297f, global0.x, 875f), vec3<f32>(global0.x, -784f, 2191f), true)), vec3<f32>(-960f, global0.x, 1000f)))));
    let var_0 = Struct_1(-434f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f))), _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(min(-1204f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) + _wgslsmith_f_op_f32(global0.x + 371f))))));
    var var_1 = var_0;
    var_1 = var_0;
    global1 = abs(u_input.b);
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), 407f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.x, 112f, var_0.a, 570f))));
    global1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, abs(~1u) & (_wgslsmith_clamp_u32(1483u, 1u, 4294967295u) & _wgslsmith_mult_u32(0u, 1u)), min(1u, 1u)));
}

