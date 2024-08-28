struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(13309i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(19676i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(8700i, 1i), vec2<i32>(0i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(47542i, -27650i), vec2<i32>(-6680i, -61232i), vec2<i32>(7174i, -1i), vec2<i32>(39363i, 2147483647i), vec2<i32>(418i, i32(-2147483648)), vec2<i32>(-10114i, 52051i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-30187i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, 30103i), vec2<i32>(-12520i, -12633i), vec2<i32>(-50883i, -48829i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(35721i, -9063i), vec2<i32>(-12206i, i32(-2147483648)), vec2<i32>(1i, 22373i), vec2<i32>(2868i, i32(-2147483648)), vec2<i32>(-10475i, 0i));

var<private> global2: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global3: array<i32, 16>;

var<private> global4: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(37509u, 0u, 1u), vec3<u32>(21337u, 31946u, 16889u), vec3<u32>(0u, 14987u, 0u), vec3<u32>(1u, 28046u, 15169u), vec3<u32>(4807u, 4294967295u, 0u), vec3<u32>(1u, 63146u, 27849u), vec3<u32>(44858u, 31048u, 21441u), vec3<u32>(14088u, 4294967295u, 0u), vec3<u32>(1u, 1u, 30657u), vec3<u32>(74841u, 58564u, 4294967295u), vec3<u32>(0u, 15800u, 9029u), vec3<u32>(11467u, 1u, 28107u), vec3<u32>(4294967295u, 7828u, 39879u), vec3<u32>(4294967295u, 19015u, 1342u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(80573u, 0u, 19826u), vec3<u32>(0u, 1u, 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec2<bool> {
    var var_0 = -377f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(738f, global0.a, global0.d)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(-global0.b))), global0.b.yx, !select(global0.d, global0.d, true));
    global1 = array<vec2<i32>, 27>();
    var var_2 = global0.d;
    let var_3 = _wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.a.x, ~u_input.a.x, ~4294967295u, 13362u), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(1567u, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))), _wgslsmith_sub_vec4_u32(abs(~(~vec4<u32>(853u, 0u, 1u, u_input.a.x))), ~(~(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u) | vec4<u32>(u_input.a.x, 1u, 0u, 22033u)))));
    return global2[_wgslsmith_index_u32(17262u, 5u)];
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = Struct_1(2291f, global0.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.yx - vec2<f32>(global0.c.x, -943f)) - global0.c) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.b.xy)), _wgslsmith_f_op_vec2_f32(global0.c * vec2<f32>(global0.b.x, 1000f)))))), any(select(global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(u_input.a.x, 16044u)), 5u)], vec2<bool>(arg_0, global0.d), func_2())));
    var var_1 = !(!var_0.d);
    global0 = var_0;
    var var_2 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(vec3<f32>(928f, 1011f, var_0.a) * _wgslsmith_f_op_vec3_f32(var_0.b * var_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, _wgslsmith_f_op_f32(-var_0.a))) - var_0.b.xz), var_0.d);
    global0 = var_0;
    return -239f;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    global1 = array<vec2<i32>, 27>();
    var var_0 = arg_0.b.x;
    var var_1 = Struct_1(1160f, vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.a)))))), arg_0.b.zx, any(select(select(select(vec3<bool>(arg_0.d, arg_0.d, global0.d), vec3<bool>(global0.d, true, true), global0.d), vec3<bool>(false, true, arg_0.d), u_input.a.x != u_input.a.x), !select(vec3<bool>(arg_0.d, arg_0.d, global0.d), vec3<bool>(true, global0.d, arg_0.d), vec3<bool>(arg_0.d, arg_0.d, true)), arg_0.d)));
    var var_2 = vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(floor(1614f)));
    var var_3 = -339f;
    return _wgslsmith_f_op_f32(-396f * var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(global0.a != _wgslsmith_f_op_f32(-298f - _wgslsmith_f_op_f32(-560f + -400f)), global0.d, any(!vec3<bool>(global0.d, global0.d, global0.d)));
    let var_1 = _wgslsmith_f_op_f32(func_1(global0.d & (_wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.x, 633f), global0.b.x) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1578f + 406f))))));
    var var_2 = Struct_1(var_1, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a, global0.a, 633f))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_0.x)) - _wgslsmith_f_op_f32(func_3(Struct_1(global0.a, vec3<f32>(var_1, global0.c.x, -427f), global0.b.zz, false), u_input.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1494f * var_1)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c * vec2<f32>(-1000f, 1000f))))), global0.d);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.b.x)), -1163f, -886f, _wgslsmith_f_op_f32(trunc(-150f))), vec4<f32>(var_1, _wgslsmith_f_op_f32(ceil(global0.b.x)), -1269f, _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1014f, 552f, -537f, -331f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -236f, global0.c.x, 966f) * vec4<f32>(var_1, -119f, var_1, -107f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a, -1000f, 937f, -1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -115f, var_2.a, -1000f))))));
    var var_4 = 818f;
    var var_5 = min(~(~vec3<u32>(36639u, 53076u, 27005u) & (global4[_wgslsmith_index_u32(13890u, 17u)] | abs(vec3<u32>(1u, 1u, 1u)))), select(~abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(32673u, 5859u, 1u))), ~firstTrailingBit(vec3<u32>(u_input.a.x, 0u, 9195u) << (global4[_wgslsmith_index_u32(22623u, 17u)] % vec3<u32>(32u))), select(select(!vec3<bool>(true, true, var_0.x), vec3<bool>(true, true, true), all(vec3<bool>(var_2.d, false, global0.d))), vec3<bool>(true, true, true), false)));
    var var_6 = ~reverseBits(~firstLeadingBit(_wgslsmith_clamp_u32(u_input.a.x, 32086u, 25583u)));
    let var_7 = ~u_input.a.x;
    global4 = array<vec3<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(~var_7, 1u), vec2<u32>(var_7 ^ ~var_5.x, 1u)), abs(u_input.b.x), reverseBits(u_input.a.x), var_2.a, global1[_wgslsmith_index_u32(1u, 27u)]);
}

