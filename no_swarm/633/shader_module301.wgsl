struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(2263f, vec2<u32>(25017u, 0u), vec2<i32>(1i, 2147483647i)), Struct_1(-483f, vec2<u32>(0u, 10261u), vec2<i32>(32687i, i32(-2147483648))), Struct_1(-1212f, vec2<u32>(93897u, 28229u), vec2<i32>(2147483647i, 2147483647i)), Struct_1(-1284f, vec2<u32>(1u, 14092u), vec2<i32>(-28190i, 0i)), Struct_1(626f, vec2<u32>(12523u, 25539u), vec2<i32>(i32(-2147483648), -1i)), Struct_1(539f, vec2<u32>(1u, 39491u), vec2<i32>(-1i, 1243i)), Struct_1(638f, vec2<u32>(4294967295u, 112496u), vec2<i32>(1i, -1i)), Struct_1(-1052f, vec2<u32>(17573u, 4294967295u), vec2<i32>(20655i, -4344i)), Struct_1(147f, vec2<u32>(4294967295u, 40142u), vec2<i32>(1i, -2716i)), Struct_1(-1023f, vec2<u32>(9226u, 4294967295u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(625f, vec2<u32>(11549u, 67744u), vec2<i32>(i32(-2147483648), -48649i)), Struct_1(-790f, vec2<u32>(1u, 0u), vec2<i32>(-54051i, -49533i)), Struct_1(-2203f, vec2<u32>(49331u, 21019u), vec2<i32>(i32(-2147483648), -1i)), Struct_1(-198f, vec2<u32>(45767u, 3295u), vec2<i32>(21950i, 29722i)), Struct_1(1164f, vec2<u32>(125932u, 4294967295u), vec2<i32>(1i, 2147483647i)), Struct_1(1134f, vec2<u32>(53599u, 58046u), vec2<i32>(2147483647i, -43180i)), Struct_1(-663f, vec2<u32>(4294967295u, 1u), vec2<i32>(1i, 0i)), Struct_1(973f, vec2<u32>(4294967295u, 4294967295u), vec2<i32>(10677i, 2147483647i)), Struct_1(204f, vec2<u32>(4419u, 10650u), vec2<i32>(91950i, -24048i)), Struct_1(450f, vec2<u32>(4294967295u, 0u), vec2<i32>(i32(-2147483648), 19854i)), Struct_1(1091f, vec2<u32>(1523u, 1u), vec2<i32>(-2533i, 2147483647i)), Struct_1(2931f, vec2<u32>(32261u, 49901u), vec2<i32>(58370i, i32(-2147483648))));

var<private> global1: array<u32, 14>;

var<private> global2: i32;

var<private> global3: array<vec4<i32>, 20>;

var<private> global4: array<vec4<bool>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    global4 = array<vec4<bool>, 27>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, _wgslsmith_f_op_f32(min(989f, _wgslsmith_f_op_f32(f32(-1f) * -818f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1101f, 1217f)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(true));
    var var_1 = arg_0.b.x;
    return ~_wgslsmith_add_i32(1i, firstTrailingBit(-19239i));
}

fn func_3() -> i32 {
    global0 = array<Struct_1, 22>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(832f)) * -1918f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_2(true)).x, -1000f)))))), -1706f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f) - _wgslsmith_f_op_f32(-1f)));
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(17780u), 22u)];
    let var_2 = vec3<bool>(true, reverseBits(_wgslsmith_mod_i32(~var_1.c.x, firstLeadingBit(var_1.c.x))) >= reverseBits(-57333i), any(!select(global4[_wgslsmith_index_u32(39972u, 27u)], vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(233f, var_0.x, var_0.x, 885f), vec4<f32>(402f, var_0.x, var_1.a, 1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_1.a, var_0.x, -790f))), vec4<f32>(-457f, 684f, 1017f, var_1.a), select(global4[_wgslsmith_index_u32(3331u, 27u)], vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1912f, var_1.a, var_1.a, -1456f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.a, var_1.a, 333f)))))));
    return _wgslsmith_sub_i32(5732i, min(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2191i, 30863i), var_1.c), var_1.c), _wgslsmith_mult_i32(var_1.c.x, countOneBits(2147483647i)))) >> ((_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 42151u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(4294967295u, 14u)]), var_1.b)), var_1.b.x | ~var_1.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(15562u, u_input.a.x), vec2<u32>(0u, 1u))) | (~4294967295u ^ u_input.b)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -(~_wgslsmith_div_i32(func_1(Struct_1(-1036f, vec2<u32>(global1[_wgslsmith_index_u32(33663u, 14u)], 13638u), vec2<i32>(1i, 10519i)), false) ^ func_3(), 122055i));
    let var_0 = vec2<bool>(true, true);
    var var_1 = vec2<bool>(!var_0.x, true == any(var_0));
    global2 = abs(12047i);
    var var_2 = !any(!(!select(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 27u)], vec4<bool>(var_0.x, var_0.x, false, true), var_0.x)));
    var var_3 = var_0.x;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec4<i32>(i32(-1i) * -2147483647i, 1i, -max(2147483647i, 3662i), ~(-997i)) >> (vec4<u32>(4294967295u, ~firstLeadingBit(1u), firstTrailingBit(_wgslsmith_add_u32(74293u, u_input.a.x)), ~1u) % vec4<u32>(32u)));
}

