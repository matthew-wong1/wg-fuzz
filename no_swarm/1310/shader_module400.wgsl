struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(1027f, 4294967295u), Struct_1(-1000f, 24651u), Struct_1(472f, 40267u), Struct_1(142f, 60816u), Struct_1(-1671f, 35123u), Struct_1(-1040f, 4294967295u), Struct_1(337f, 51894u));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    global0 = array<Struct_1, 7>();
    let var_0 = global0[_wgslsmith_index_u32(~arg_1.b | _wgslsmith_dot_vec2_u32(u_input.b.xy, ~firstLeadingBit(vec2<u32>(arg_1.b, arg_1.b))), 7u)];
    global0 = array<Struct_1, 7>();
    var var_1 = abs(-select(u_input.c.x, -(i32(-1i) * -46206i), any(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, true, global1.x, false), true))));
    let var_2 = u_input.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1046f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x * 245f)))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = true;
    global1 = !vec3<bool>(select(false, any(select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(global1.x, var_0, global1.x, var_0), true)), false | !var_0), var_0, !(1u >= arg_0.b));
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global1 = !vec3<bool>(var_0, true, true);
    return vec3<bool>(_wgslsmith_sub_u32(~select(0u, arg_1.b, false), 4294967295u) > (_wgslsmith_sub_u32(~30961u, reverseBits(2866u)) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, arg_1.b, u_input.b.x), vec4<u32>(u_input.d, arg_0.b, arg_0.b, arg_0.b)) ^ 1u) % 32u)), global1.x, global1.x);
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~0u, 7u)];
    global1 = !select(select(vec3<bool>(global1.x, true, true), vec3<bool>(any(vec3<bool>(arg_1, global1.x, false)), 1628u <= u_input.a, u_input.c.x < u_input.c.x), select(vec3<bool>(global1.x, false, false), func_3(Struct_1(535f, arg_0), Struct_1(337f, arg_0)), true)), vec3<bool>(func_3(Struct_1(var_0.a, arg_0), Struct_1(-874f, var_0.b)).x, global1.x, global1.x), false);
    var_0 = global0[_wgslsmith_index_u32(1u, 7u)];
    global0 = array<Struct_1, 7>();
    var var_1 = reverseBits(~(max(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -44545i, u_input.c.x, u_input.c.x)) | vec4<i32>(~u_input.c.x, -39537i, min(u_input.c.x, 2147483647i), u_input.c.x | 2147483647i)));
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(71320u), _wgslsmith_add_u32(4294967295u, ~arg_0)), 7u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = u_input.c;
    global0 = array<Struct_1, 7>();
    let var_1 = -(~(i32(-1i) * -47612i));
    var var_2 = vec2<u32>(~(arg_1.b ^ arg_3.b) << (~arg_3.b % 32u), reverseBits(~(~(~arg_0.b))));
    global0 = array<Struct_1, 7>();
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1355f, arg_2.a, 469f, arg_3.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_1.a, -1638f, arg_2.a) + vec4<f32>(-855f, arg_2.a, 398f, -2508f)))))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(21125u), 27566u), vec2<u32>(13145u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 17995u, arg_1.b, 5579u), vec4<u32>(arg_3, arg_1.b, arg_1.b, arg_1.b)))), abs(~(~arg_1.b))));
    var var_1 = i32(-1i) * -1i;
    var_0 = arg_1;
    global0 = array<Struct_1, 7>();
    var_1 = u_input.c.x ^ ~_wgslsmith_add_i32(-2147483647i, u_input.c.x);
    return Struct_1(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + 1084f)))), _wgslsmith_mod_u32(~(firstTrailingBit(u_input.b.x) >> (var_0.b % 32u)), ~(~_wgslsmith_sub_u32(u_input.b.x, 42040u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-626f, -410f, -181f, 951f) + vec4<f32>(-1000f, 763f, 274f, 103f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_f_op_f32(func_1(vec4<f32>(-913f, 1982f, 1848f, 436f), Struct_1(319f, 1u))), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1039f))))));
    var var_1 = u_input.a & 80899u;
    var var_2 = u_input.b.yy;
    let var_3 = func_5(abs(1i), Struct_1(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -137f, var_0.x, var_0.x), vec4<f32>(-1000f, 415f, var_0.x, var_0.x), false)), vec4<f32>(var_0.x, var_0.x, -736f, var_0.x))), Struct_1(_wgslsmith_f_op_f32(var_0.x * -970f), firstTrailingBit(u_input.b.x)))), ~var_2.x), _wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f) + var_0.x), _wgslsmith_mod_u32(firstLeadingBit(3229u), 30888u)), Struct_1(-845f, var_2.x), global0[_wgslsmith_index_u32(u_input.a, 7u)], func_2(var_2.x, true))), 1u);
    var var_4 = func_2(1u, any(select(!vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(1329i != u_input.c.x, global1.x, !global1.x, global1.x | false), true)));
    var var_5 = 555f;
    let var_6 = func_2(var_4.b | var_4.b, select(global1.x, !(true || all(vec4<bool>(global1.x, true, global1.x, global1.x))), global1.x));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(931f, 1000f, -1091f, 357f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_6.a, -610f))))) - vec4<f32>(var_4.a, _wgslsmith_f_op_f32(-var_3.a), var_0.x, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(604f, var_6.a, 764f, var_4.a) - vec4<f32>(152f, 399f, 1000f, var_0.x)), Struct_1(2126f, var_2.x))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-401f, var_4.a, 1155f, var_4.a))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1858f, var_3.a, var_4.a, -1000f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, var_6.a, 734f, 1406f) * vec4<f32>(var_4.a, 656f, var_4.a, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-u_input.c), var_6.b, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, u_input.b), vec3<u32>(1u, 57770u, 77297u)) >> (~(~var_6.b) % 32u), var_3.b, var_4.b), -_wgslsmith_clamp_vec2_i32(min(u_input.c.zx ^ u_input.c.xx, ~u_input.c.xx), vec2<i32>(~u_input.c.x, abs(-9504i)), reverseBits(abs(u_input.c.xz))), -1313f);
}

