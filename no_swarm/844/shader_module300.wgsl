struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: u32 = 1u;

var<private> global2: Struct_2 = Struct_2(1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-262f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1036f, 576f)))));
    global2 = Struct_2(-18146i);
    let var_1 = ~vec3<u32>(~(~(~9404u)), u_input.a.x & _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, 58823u), select(~(~u_input.a.x), 1u, true));
    let var_2 = Struct_3(Struct_2(1i), !all(!(!vec2<bool>(global0.a, global0.a))), ~u_input.a);
    global1 = var_1.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-642f, var_0.a, var_0.a), vec3<f32>(-188f, var_0.a, 192f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a, var_0.a, var_0.a), vec3<f32>(-1324f, var_0.a, var_0.a))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1012f, -762f, var_0.a) * vec3<f32>(619f, -1249f, var_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-139f, 409f, var_0.a)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(371f, 291f, -1397f) * vec3<f32>(var_0.a, var_0.a, -490f)), vec3<f32>(var_0.a, 1006f, var_0.a), !vec3<bool>(var_2.b, var_2.b, var_2.b))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(589f, -290f, var_0.a) - vec3<f32>(-934f, var_0.a, 515f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -310f, var_0.a), vec3<f32>(var_0.a, -1400f, var_0.a))))))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> vec2<f32> {
    global2 = arg_0;
    global2 = Struct_2(1i);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(abs(vec4<i32>(arg_0.a, arg_0.a, -4284i, -1i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(531f, -367f, -1254f), vec3<f32>(735f, -530f, -966f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-348f, 286f, 1142f)))))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1740f, _wgslsmith_f_op_f32(trunc(815f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1799f)) - _wgslsmith_f_op_f32(ceil(-445f)))), vec3<f32>(-452f, _wgslsmith_f_op_f32(select(-116f, 1f, u_input.a.x <= 4294967295u)), -605f))));
    var var_1 = Struct_3(Struct_2(~global2.a), var_0.x > var_0.x, ~(~vec4<u32>(~3160u, ~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 1u), 2842u)));
    global2 = var_1.a;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.yz)))), vec2<f32>(443f, 354f), select(!vec2<bool>(select(global0.a, false, true), true), select(select(vec2<bool>(arg_2, var_1.b), select(vec2<bool>(true, global0.a), vec2<bool>(true, global0.a), var_1.b), all(vec3<bool>(arg_2, var_1.b, false))), select(select(vec2<bool>(false, global0.a), vec2<bool>(true, global0.a), vec2<bool>(false, arg_2)), vec2<bool>(false, arg_2), true), vec2<bool>(arg_2, global0.a)), global0.a && false)));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(-12295i);
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1968f, 1086f) * vec2<f32>(1641f, -1000f)) - vec2<f32>(1358f, -468f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 3851f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(132f, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(-1i), arg_0.a, false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 484f)))))) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1127f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1172f, 620f)) * _wgslsmith_f_op_f32(-409f - -232f)), true)), 766f));
    var_1 = _wgslsmith_add_u32(reverseBits(u_input.a.x), 1u);
    let var_3 = !(!vec2<bool>(select(false, true, global0.a), reverseBits(arg_0.a) <= var_0.a));
    return Struct_3(var_0, any(var_3), u_input.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_5) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2419f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1285f - 2039f)))));
    let var_1 = vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(11821i, _wgslsmith_clamp_i32(arg_1.a.a, 27456i, arg_1.a.a)), firstTrailingBit(vec2<i32>(arg_1.a.a, arg_1.a.a)) >> (vec2<u32>(arg_1.c.x, 8921u) % vec2<u32>(32u)));
    var_0 = Struct_4(var_0.a);
    global0 = arg_2;
    var var_2 = arg_1.c.x;
    return Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1229f)), -1152f), -1191f)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_5 {
    global1 = arg_1.c.x;
    var var_0 = all(vec4<bool>(!arg_1.b | true, _wgslsmith_f_op_f32(max(arg_0.a, arg_0.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * arg_0.a)), !arg_1.b, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(537f, _wgslsmith_f_op_f32(max(520f, arg_0.a)), -1998f) + vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a)), 1478f, _wgslsmith_f_op_f32(-arg_0.a)))), vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-461f)))), 844f));
    let var_2 = arg_0;
    var_1 = vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_vec2_f32(func_2(Struct_2(global2.a), select(arg_1.a.a, arg_1.a.a, any(select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(arg_1.b, global0.a, arg_1.b), true))), false)).x);
    return Struct_5(!arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_add_u32(4294967295u, 0u), ~u_input.a.x, 6059u, 24983u)), func_1(Struct_2(-global2.a)), Struct_5(true || !global0.a)), func_1(Struct_2(firstLeadingBit(max(global2.a, global2.a)))));
    let var_1 = select(!(!(!select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, true, var_0.a), vec3<bool>(var_0.a, true, false)))), vec3<bool>(~firstLeadingBit(global2.a) == -(~global2.a), select(var_0.a, _wgslsmith_div_i32(global2.a, global2.a) > firstTrailingBit(global2.a), all(vec3<bool>(false, false, global0.a)) | all(vec4<bool>(true, true, false, global0.a))), true), !any(!vec2<bool>(true, global0.a)));
    global2 = func_1(func_1(Struct_2(~(-1i))).a).a;
    let var_2 = reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.a, -31366i, -45132i) ^ vec3<i32>(53303i, -16162i, -7153i), ~vec3<i32>(global2.a, -23058i, 22245i)), vec3<i32>(-1i, reverseBits(21646i), global2.a << (0u % 32u)), firstLeadingBit(vec3<i32>(-1i, global2.a, global2.a) & vec3<i32>(73846i, -46024i, global2.a))), ~vec3<i32>(12394i, select(13403i, global2.a, false), 0i)));
    var var_3 = ~(~vec2<i32>(-16059i, -global2.a & ~(-1i)));
    var var_4 = vec4<u32>(~(~u_input.a.x) >> (1u % 32u), u_input.a.x, 28353u, ~(~u_input.a.x));
    let var_5 = ~(~countOneBits(19754u));
    var_4 = vec4<u32>(54317u, 0u, ~(~(~(~var_4.x))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(407f + -852f) + -2585f)), -1068f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1136f, 2854f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-248f, 1000f)))), 977f), ~2147483647i);
}

