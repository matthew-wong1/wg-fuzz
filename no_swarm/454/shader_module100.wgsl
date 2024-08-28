struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1351f;

var<private> global1: vec2<i32> = vec2<i32>(-1i, -76944i);

var<private> global2: vec3<u32> = vec3<u32>(15017u, 37935u, 25950u);

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(-1i, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    global3 = Struct_1(abs(global4.a), global3.b == global3.b);
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-630f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-2233f)), -354f)) - 1f))));
    global2 = u_input.b;
    var var_1 = global3.a;
    global4 = Struct_1(0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(765f - _wgslsmith_f_op_f32(f32(-1f) * -183f)) * _wgslsmith_f_op_f32(ceil(-840f))) < _wgslsmith_f_op_f32(max(859f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f * 404f)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1321f))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(reverseBits(global1.x), !global3.b);
    let var_1 = var_0;
    var var_2 = u_input.a.x;
    let var_3 = max(global1.x, ~global4.a);
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1472f, -404f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec2<bool>(var_0.b, arg_0.b))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1033f, -188f, true))))))));
    return _wgslsmith_clamp_i32(-countOneBits(0i), -33943i, firstLeadingBit(_wgslsmith_sub_i32(14466i, firstTrailingBit(1i))));
}

fn func_1(arg_0: i32) -> vec2<bool> {
    var var_0 = Struct_1(-(~global1.x), _wgslsmith_mult_i32(0i, select(func_2(Struct_1(global1.x, global4.b)), -54319i, true)) == (~(-4129i) & arg_0));
    let var_1 = Struct_1(-global3.a, ~_wgslsmith_dot_vec2_u32(~u_input.b.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(49461u, global2.x), global2.zx)) > _wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 62828u, 0u, u_input.a.x), vec4<u32>(global2.x, u_input.b.x, u_input.b.x, 0u))), u_input.a.x));
    var var_2 = _wgslsmith_f_op_f32(max(-1453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1422f + -899f))) - -1000f))));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-621f, 2293f)))), vec2<f32>(1225f, _wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, global4.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(475f, -230f) + vec2<f32>(1511f, -1000f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-746f, 428f), vec2<f32>(1000f, -820f))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(557f, 1135f) * vec2<f32>(619f, -1390f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2033f, -1000f) + vec2<f32>(-256f, -750f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(573f, 475f), vec2<f32>(279f, 357f), vec2<bool>(true, false))))))));
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(155f, _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-var_3.x)))) + var_3.x)));
    return vec2<bool>(global4.b, global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = abs(reverseBits(vec2<i32>(-global1.x, 2147483647i)));
    var var_1 = global2.x;
    var var_2 = firstLeadingBit(vec3<u32>(~min(4294967295u, 6801u), abs(~max(0u, 41096u)), 1u));
    var var_3 = !select(!select(!vec2<bool>(global3.b, true), vec2<bool>(global3.b, false), select(vec2<bool>(false, true), vec2<bool>(true, true), global3.b)), func_1(global1.x), -_wgslsmith_mult_i32(1i, global4.a) != (_wgslsmith_sub_i32(34925i, global3.a) ^ abs(-1i)));
    var_2 = ~firstLeadingBit(~vec3<u32>(7654u | global2.x, 1u, ~u_input.a.x));
    var var_4 = vec4<u32>(_wgslsmith_div_u32(1u, abs(select(u_input.b.x, 4294967295u, global3.b))), 4294967295u, firstLeadingBit(global2.x), u_input.a.x) | u_input.a;
    var var_5 = vec2<u32>(firstTrailingBit(~_wgslsmith_mod_u32(103093u, abs(var_4.x))), 81677u);
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1729f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1042f), _wgslsmith_div_f32(-1000f, -132f), _wgslsmith_f_op_f32(max(-2863f, 1034f))))))), ~(~vec3<u32>(global2.x ^ var_5.x, var_2.x, 1u)));
}

