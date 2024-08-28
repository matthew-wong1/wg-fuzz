struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 848f;

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    var var_0 = max(u_input.b.x, u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(785f)) * _wgslsmith_f_op_f32(max(2726f, -721f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1342f, -1131f)))), -1000f, arg_0.c))));
    let var_2 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(arg_0.e.xwz, ~vec3<u32>(41084u, arg_1, u_input.c.x)), max(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(32964u, arg_0.e.x, 1455u, arg_0.e.x), vec4<u32>(4294967295u, 1u, u_input.c.x, 0u), vec4<u32>(19074u, u_input.c.x, 0u, u_input.d)), ~vec4<u32>(20296u, 0u, 4294967295u, u_input.c.x)), _wgslsmith_sub_u32(~0u, _wgslsmith_mod_u32(0u, u_input.c.x))));
    var var_3 = true;
    let var_4 = ~(~firstLeadingBit(firstTrailingBit(38831u))) & min(~arg_0.e.x, var_2);
    return _wgslsmith_mod_u32(var_2, u_input.d);
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    let var_0 = arg_1.a;
    let var_1 = vec4<u32>(36457u, func_3(var_0, ~18901u, select(!vec2<bool>(var_0.a.a, false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_1.a.c, var_0.b.a), vec2<bool>(true, arg_1.a.d)), select(vec2<bool>(false, arg_1.a.b.a), vec2<bool>(true, true), vec2<bool>(arg_0, true)))) ^ ~(~(~arg_1.a.e.x)), arg_1.a.e.x, 4294967295u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.b, arg_1.b, arg_1.b)))))))));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1033f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), -541f))), var_2.x));
    var var_3 = arg_1;
    return arg_1;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    let var_0 = !(!any(vec3<bool>(false, true, arg_1.b.a)));
    global1 = 1i;
    global1 = u_input.b.x;
    var var_1 = arg_2.a;
    global0 = arg_0.x;
    return func_2(!arg_2.a, Struct_3(Struct_2(Struct_1(true), arg_1.b, true, true, ~select(vec4<u32>(u_input.c.x, 21383u, 22551u, arg_1.e.x), vec4<u32>(u_input.d, 26246u, arg_1.e.x, 0u), arg_2.a)), arg_0.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_mod_i32(u_input.b.x, u_input.b.x);
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-497f, _wgslsmith_f_op_f32(f32(-1f) * -758f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(160f * -1092f)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b, 1326f, arg_0.b) * vec3<f32>(-1669f, arg_0.b, arg_3.b))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3.b, arg_3.b, arg_3.b)))))), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-334f + -831f), arg_0.b, _wgslsmith_f_op_f32(-1486f * -1323f))), arg_2, Struct_1(select(arg_1.a, arg_1.a, false) | true)).a, Struct_1(arg_0.a.b.a));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(366f + 365f), arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))));
    var var_4 = !vec3<bool>(true | (false | select(arg_2.d, arg_1.a, arg_1.a)), all(vec3<bool>(true, true, true)), arg_0.a.c);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b)) | ~1i, func_4(func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-334f, 147f, 867f))), Struct_2(Struct_1(true), Struct_1(false), false, false, vec4<u32>(u_input.a.x, 29358u, 38304u, u_input.d)), Struct_1(false)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-830f, -682f, 295f) + vec3<f32>(2072f, -424f, -688f)), func_2(false, Struct_3(Struct_2(Struct_1(false), Struct_1(true), false, false, vec4<u32>(u_input.c.x, 0u, u_input.d, u_input.a.x)), -583f)).a, func_2(false, Struct_3(Struct_2(Struct_1(false), Struct_1(false), false, false, vec4<u32>(19682u, u_input.a.x, 32430u, 13929u)), -1641f)).a.b).a.b, func_2(true, func_2(true, Struct_3(Struct_2(Struct_1(false), Struct_1(true), true, true, vec4<u32>(4294967295u, u_input.a.x, 35576u, 4294967295u)), -121f))).a, Struct_3(func_1(vec3<f32>(-988f, 1750f, -749f), Struct_2(Struct_1(false), Struct_1(false), false, false, vec4<u32>(64840u, 1u, 1u, 28265u)), Struct_1(false)).a, _wgslsmith_f_op_f32(min(1684f, -985f))))), 1i, firstTrailingBit(-2147483647i));
    var_0 = u_input.b.x;
    var var_1 = Struct_2(Struct_1(any(vec4<bool>(true, all(vec2<bool>(false, true)), true, func_2(false, Struct_3(Struct_2(Struct_1(false), Struct_1(false), true, true, vec4<u32>(u_input.d, 0u, u_input.d, u_input.a.x)), 1032f)).a.a.a))), Struct_1(~u_input.a.x <= firstTrailingBit(17475u)), u_input.c.x != u_input.a.x, func_2(true, Struct_3(Struct_2(Struct_1(false), Struct_1(true), false, false, vec4<u32>(1u, 33274u, 0u, 4294967295u)), _wgslsmith_f_op_f32(1323f - -255f))).a.c || func_2(all(vec2<bool>(false, false)), Struct_3(func_2(true, Struct_3(Struct_2(Struct_1(true), Struct_1(false), true, false, vec4<u32>(4294967295u, 23913u, u_input.a.x, u_input.c.x)), 1420f)).a, func_2(false, Struct_3(Struct_2(Struct_1(true), Struct_1(true), false, true, vec4<u32>(44149u, 4294967295u, 51524u, 3791u)), 1000f)).b)).a.c, vec4<u32>(~(~(~u_input.a.x)), _wgslsmith_div_u32(64670u, 1u), ~func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2136f, 524f, 1636f)), func_1(vec3<f32>(-101f, -1360f, -244f), Struct_2(Struct_1(true), Struct_1(false), true, true, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 25729u)), Struct_1(false)).a, Struct_1(true)).a.e.x, ~u_input.d));
    var_0 = countOneBits(u_input.b.x);
    let var_2 = Struct_3(Struct_2(func_2(!(!var_1.a.a), Struct_3(Struct_2(Struct_1(true), Struct_1(var_1.a.a), false, var_1.b.a, vec4<u32>(0u, var_1.e.x, 4508u, 4294967295u)), -1664f)).a.b, var_1.a, false, true, vec4<u32>(~(~0u), 1u, _wgslsmith_mod_u32(var_1.e.x, var_1.e.x) & var_1.e.x, firstLeadingBit(u_input.c.x))), _wgslsmith_f_op_f32(345f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_f_op_f32(select(-1870f, 1457f, false))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1349f, -711f), vec2<f32>(-1208f, -236f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-359f, 845f)))))));
}

