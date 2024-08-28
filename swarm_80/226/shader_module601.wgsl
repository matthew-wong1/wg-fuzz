struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: bool,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_4 {
    let var_0 = ~u_input.b.zz;
    global1 = Struct_4(1f);
    let var_1 = var_0.x;
    return Struct_4(-123f);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>) -> vec3<f32> {
    global1 = Struct_4(261f);
    let var_0 = Struct_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(min(35715u, arg_1.x), 61537u, _wgslsmith_div_u32(u_input.e.x, arg_1.x)), select(vec3<u32>(firstLeadingBit(arg_1.x), ~0u, arg_1.x), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, 1u, u_input.a), vec3<u32>(u_input.c, 0u, 10678u)), ~vec3<u32>(arg_1.x, 0u, 14825u)), !vec3<bool>(arg_0.x, true, true)), vec3<u32>(_wgslsmith_div_u32(~u_input.c, abs(0u)), u_input.a, select(4294967295u, u_input.a, !arg_0.x))), func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a, 353f, 168f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(381f, global1.a, global1.a), vec3<f32>(global1.a, global1.a, 1000f))) + vec3<f32>(global1.a, global1.a, global1.a)))), firstTrailingBit(min(vec4<u32>(17411u, 1u, arg_1.x, arg_1.x), ~vec4<u32>(24558u, u_input.c, arg_1.x, 49807u)))), false, all(vec2<bool>(false, arg_0.x)), Struct_2(vec2<u32>(u_input.e.x, ~1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1167f)), -758f, _wgslsmith_f_op_f32(f32(-1f) * -616f), 538f)), 1i));
    var var_1 = all(!select(select(vec2<bool>(var_0.d, var_0.d), !vec2<bool>(var_0.c, arg_0.x), var_0.d | true), vec2<bool>(true, arg_0.x), select(623f != var_0.e.b.x, all(vec3<bool>(var_0.c, var_0.d, var_0.d)), 9168u == var_0.e.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.a, 815f, global1.a), _wgslsmith_div_vec3_f32(var_0.e.b.xzz, vec3<f32>(var_0.e.b.x, 358f, var_0.b.a)), !arg_0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.b.x, _wgslsmith_f_op_f32(round(var_0.b.a)), _wgslsmith_f_op_f32(-global1.a)) - _wgslsmith_f_op_vec3_f32(-var_0.e.b.zyx)), false)));
    global1 = var_0.b;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e.b.yzw)));
}

fn func_1() -> vec2<bool> {
    let var_0 = all(!vec2<bool>(true, select(all(vec4<bool>(false, false, true, false)), true, global1.a != global1.a)));
    var var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2204f, global1.a, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) - global1.a), 502f), ~firstTrailingBit(~(vec4<u32>(u_input.e.x, u_input.c, u_input.e.x, u_input.e.x) | vec4<u32>(111880u, u_input.a, 0u, 0u))));
    global1 = func_2(_wgslsmith_f_op_vec3_f32(func_3(!vec4<bool>(!var_0, var_0, all(vec4<bool>(false, true, var_0, false)), true), min(~vec2<u32>(u_input.c, u_input.c), abs(_wgslsmith_sub_vec2_u32(u_input.e, u_input.e))))), reverseBits(vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, 86316u, 0u), firstTrailingBit(1u), u_input.c, u_input.e.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a, global1.a), vec2<f32>(-685f, var_1.a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(165f, global1.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(global1.a, global1.a), vec2<f32>(-164f, global1.a)))))));
    var var_3 = all(!(!(!select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, false, var_0), false))));
    return vec2<bool>(any(select(vec3<bool>(1901f > var_1.a, true, select(false, var_0, var_0)), vec3<bool>(true, var_0 | false, true), true)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), 1440f);
    global0 = array<vec2<i32>, 9>();
    var var_2 = vec3<u32>(select(~var_0, var_0 & (var_0 ^ reverseBits(2420u)), false), 0u, u_input.e.x);
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1057f, global1.a, var_1.x, -542f) * vec4<f32>(var_1.x, global1.a, global1.a, -1167f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(855f, global1.a))), _wgslsmith_add_vec3_u32(~vec3<u32>(var_0, 4294967295u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 0u, 56409u), vec3<u32>(24777u, var_0, var_0)) & firstLeadingBit(vec3<u32>(var_2.x, 4294967295u, 37556u)))), -1i, 1i, select(select(vec2<bool>(any(vec3<bool>(false, true, true)), true), func_1(), false), select(vec2<bool>(true, any(vec4<bool>(false, false, true, false))), select(func_1(), vec2<bool>(false, false), any(vec2<bool>(false, true))), false), all(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))))), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.e), var_2.zz));
    var var_4 = Struct_2(~var_2.xy, _wgslsmith_f_op_vec4_f32(var_3.a.a - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.a, global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1737f)), 1183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a.a.x))))), ~8997i);
    let var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~0u, max(_wgslsmith_mod_u32(firstLeadingBit(0u), ~0u) ^ _wgslsmith_sub_u32(~var_3.e, ~var_3.e), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3.e), vec2<u32>(81194u, 4294967295u)))));
}

