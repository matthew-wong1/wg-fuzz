struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<u32> {
    global0 = array<vec2<bool>, 13>();
    global0 = array<vec2<bool>, 13>();
    let var_0 = ~4294967295u;
    global0 = array<vec2<bool>, 13>();
    var var_1 = true;
    return vec4<u32>(~countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, var_0), vec4<u32>(u_input.c.x, 0u, 24492u, 41252u)), 1u)), 22402u, var_0, _wgslsmith_dot_vec2_u32(~vec2<u32>(~14827u, _wgslsmith_sub_u32(u_input.a, 1u)), min(vec2<u32>(var_0, u_input.c.x), min(u_input.c, vec2<u32>(0u, 0u)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = true;
    let var_1 = Struct_3(true, u_input.c.x, Struct_2(arg_2.a), !(!vec4<bool>(var_0, u_input.b == u_input.b, all(vec2<bool>(true, false)), any(global0[_wgslsmith_index_u32(29528u, 13u)]))));
    var var_2 = _wgslsmith_div_u32(var_1.b, var_1.b);
    var_2 = _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(0u), 1u), var_1.b & _wgslsmith_mult_u32(u_input.c.x, u_input.a), _wgslsmith_dot_vec2_u32(~u_input.c, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 80800u), vec2<u32>(u_input.a, 56847u))), var_1.b ^ 4294967295u)), func_3(select(select(var_1.d.xw, vec2<bool>(arg_2.b.x, var_0), any(vec2<bool>(arg_2.b.x, var_0))), !select(global0[_wgslsmith_index_u32(44838u, 13u)], arg_2.b.yx, vec2<bool>(false, var_1.d.x)), !vec2<bool>(var_0, var_0)), vec3<f32>(_wgslsmith_div_f32(var_1.c.a, arg_0.x), arg_1, 1f), var_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_div_f32(1898f, 804f)))));
    global0 = array<vec2<bool>, 13>();
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(176f, 991f, arg_1.c.a), vec3<f32>(578f, arg_1.c.a, arg_1.c.a)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.c.a, -169f, 1650f), vec3<f32>(arg_1.c.a, -1000f, arg_1.c.a))), arg_1.b <= u_input.a)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-351f, -729f, arg_1.c.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(1214f, -1751f, arg_1.c.a), arg_1.c.a, Struct_1(-768f, vec3<bool>(true, arg_1.d.x, arg_1.a))))))) * vec3<f32>(-1389f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-796f, 855f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_1.c.a)))), arg_1.d.x)), 1796f));
    let var_1 = ~42864u;
    var_0 = _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2067f, var_0.x, -1185f) + vec3<f32>(arg_1.c.a, -218f, var_0.x)) - vec3<f32>(arg_1.c.a, -1097f, -736f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.a, arg_1.c.a, var_0.x) - vec3<f32>(var_0.x, 225f, 599f)) * vec3<f32>(arg_1.c.a, -385f, var_0.x)))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.a, arg_1.c.a) * _wgslsmith_f_op_f32(step(484f, arg_1.c.a))) * -2444f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_f_op_f32(ceil(var_0.x))) * _wgslsmith_f_op_f32(-arg_1.c.a)), !arg_1.d.zzy)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(644f, -1459f, 497f))))), _wgslsmith_f_op_f32(select(var_0.x, arg_1.c.a, true & all(vec2<bool>(arg_1.a, arg_1.a)))), Struct_1(_wgslsmith_f_op_f32(-arg_1.c.a), select(vec3<bool>(false, arg_1.a, arg_1.a), select(arg_1.d.xww, arg_1.d.wyz, arg_1.d.yxx), true)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(var_2, _wgslsmith_f_op_f32(-arg_1.c.a), Struct_1(1162f, vec3<bool>(false, true, false)))).x), -699f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(292f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, var_2.x, arg_1.a)), _wgslsmith_f_op_f32(1000f + -561f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -831f), _wgslsmith_f_op_f32(round(586f)))))));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    global0 = array<vec2<bool>, 13>();
    let var_0 = arg_3;
    var var_1 = Struct_2(arg_2.a);
    let var_2 = Struct_1(arg_3, !select(select(!vec3<bool>(arg_2.b.x, false, arg_1.x), select(vec3<bool>(arg_2.b.x, false, arg_1.x), vec3<bool>(false, false, false), arg_2.b.x), select(vec3<bool>(arg_1.x, true, true), vec3<bool>(arg_2.b.x, false, arg_2.b.x), true)), select(!arg_2.b, select(vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_1.x, false, false), arg_1.x), vec3<bool>(false, arg_1.x, arg_2.b.x)), true));
    var var_3 = Struct_3(any(select(select(select(var_2.b.yz, global0[_wgslsmith_index_u32(u_input.c.x, 13u)], arg_1.x), !var_2.b.zy, true), vec2<bool>(arg_2.b.x, true), !arg_1.yy)), u_input.c.x << (_wgslsmith_dot_vec2_u32(~(~u_input.c), min(vec2<u32>(arg_0, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(19548u, 0u)))) % 32u), Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(432f, arg_2.a), var_0), -581f)), select(vec4<bool>(arg_1.x, true, true, arg_2.b.x & all(arg_2.b.xz)), select(vec4<bool>(true, true, any(vec3<bool>(false, true, arg_2.b.x)), true), !(!vec4<bool>(false, arg_1.x, false, var_2.b.x)), false), arg_2.b.x));
    return arg_1.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_4(26236u, !vec3<bool>(u_input.b == u_input.b, true, true), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1273f - -756f))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-994f * _wgslsmith_f_op_f32(min(1395f, 1038f))) + _wgslsmith_f_op_f32(func_1(1i, Struct_3(true, 1u, Struct_2(100f), vec4<bool>(false, false, false, false)))))), !global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(countOneBits(21345u), _wgslsmith_add_u32(u_input.c.x, 10717u))), 13u)]);
    var var_1 = ~(~(~(~vec3<u32>(u_input.a, 10965u, u_input.c.x))));
    var var_2 = Struct_3(true, 19897u, Struct_2(_wgslsmith_f_op_f32(422f - _wgslsmith_f_op_f32(-1572f - _wgslsmith_f_op_f32(876f * -415f)))), select(!(!select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), false)), select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), !select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false)), false), var_0.x & true));
    var_1 = vec3<u32>(_wgslsmith_sub_u32(55754u, ~var_1.x), reverseBits(u_input.a), 4294967295u);
    var var_3 = !select(select(select(vec4<bool>(false, false, var_0.x, var_2.d.x), var_2.d, var_2.d), var_2.d, firstTrailingBit(var_2.b) != 1u), select(!vec4<bool>(var_2.d.x, true, var_0.x, true), vec4<bool>(!var_2.d.x, all(vec3<bool>(var_0.x, var_0.x, false)), true && var_0.x, true), !func_4(u_input.a, vec3<bool>(true, true, true), Struct_1(var_2.c.a, var_2.d.wxz), var_2.c.a).x), var_2.d);
    global0 = array<vec2<bool>, 13>();
    let var_4 = var_3.wzx;
    var var_5 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-344f + 520f) + -1009f)), -778f)));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(772f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1208f, 1113f, 900f) * vec3<f32>(-392f, var_2.c.a, -105f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-209f, var_2.c.a, 1137f))) - vec3<f32>(-833f, var_2.c.a, var_2.c.a)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(max(4294967295u, 4294967295u), ~4531u, ~4294967295u, select(var_1.x, var_1.x, true)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_2.b, var_2.b, 4294967295u, u_input.c.x), func_3(vec2<bool>(var_3.x, true), vec3<f32>(-1674f, var_2.c.a, var_2.c.a), Struct_2(var_2.c.a), vec2<f32>(var_2.c.a, 188f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-457f, -1236f, var_2.c.a, var_2.c.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.a, var_2.c.a, -1507f, -1433f) + vec4<f32>(563f, var_2.c.a, var_2.c.a, var_2.c.a)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.a - 1384f), var_2.c.a), var_2.c.a, _wgslsmith_f_op_f32(floor(var_2.c.a)), var_2.c.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-120f, 559f, 466f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1582f, 633f, 1090f) * vec3<f32>(-805f, -357f, var_2.c.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(772f, -431f, -1078f) + vec3<f32>(var_2.c.a, var_2.c.a, var_2.c.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.c.a, -339f)))))));
}

