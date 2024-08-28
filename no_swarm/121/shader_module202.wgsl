struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: vec3<f32> = vec3<f32>(-682f, -1292f, -1000f);

var<private> global2: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4) -> vec2<u32> {
    let var_0 = Struct_5(~(~(~arg_0.a.d.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(863f, 495f, -221f, global1.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.a.e, -518f, global1.x, -484f), vec4<f32>(arg_0.a.a.b, -915f, global1.x, -887f)))))))), 1u, ~(arg_0.a.a.a.xy & arg_0.a.a.a.xy), Struct_4(Struct_2(arg_0.a.a, arg_0.b.x, -1i, Struct_1(vec3<u32>(0u, 1u, arg_0.a.d.a.x), _wgslsmith_f_op_f32(min(global1.x, global1.x)), vec3<bool>(arg_0.a.a.c.x, arg_0.a.d.c.x, arg_0.a.d.c.x), _wgslsmith_dot_vec2_u32(arg_0.a.a.a.zx, arg_0.a.a.a.zy), _wgslsmith_f_op_f32(f32(-1f) * -313f))), vec3<bool>(!(4294967295u != arg_0.c), -617f != _wgslsmith_f_op_f32(global1.x + arg_0.a.d.b), arg_0.b.x), 53768u));
    let var_1 = abs(-24647i);
    let var_2 = var_0.e.a.a.c.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f * -737f) - -742f)));
    global2 = ~(~(~var_0.c));
    return ~arg_0.a.a.a.zy;
}

fn func_2() -> Struct_1 {
    var var_0 = ~vec2<u32>(~1u, max(4294967295u, firstLeadingBit(1u)));
    let var_1 = Struct_5(reverseBits(~(countOneBits(vec3<u32>(0u, var_0.x, var_0.x)) | vec3<u32>(1u, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -2233f, global1.x) - vec4<f32>(global1.x, 953f, -3141f, global1.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, 571f, -348f), vec4<f32>(global1.x, 334f, 461f, 199f)))), ~var_0.x, abs(_wgslsmith_clamp_vec2_u32(select(~vec2<u32>(var_0.x, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(75239u, var_0.x), vec2<u32>(var_0.x, 0u)), select(true, false, false)), firstTrailingBit(vec2<u32>(var_0.x, var_0.x)) ^ vec2<u32>(var_0.x, var_0.x), reverseBits(func_3(Struct_4(Struct_2(Struct_1(vec3<u32>(4294967295u, var_0.x, 11129u), global1.x, vec3<bool>(false, false, true), 1u, -463f), true, global0[_wgslsmith_index_u32(25867u, 7u)], Struct_1(vec3<u32>(var_0.x, var_0.x, 1u), 1000f, vec3<bool>(false, true, false), 22825u, -130f)), vec3<bool>(true, false, false), var_0.x))))), Struct_4(Struct_2(Struct_1(~vec3<u32>(var_0.x, var_0.x, 1u), _wgslsmith_f_op_f32(floor(global1.x)), vec3<bool>(true, false, true), var_0.x << (0u % 32u), _wgslsmith_f_op_f32(max(global1.x, -1696f))), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), -7218i, Struct_1(select(vec3<u32>(var_0.x, 35072u, 0u), vec3<u32>(var_0.x, var_0.x, 22265u), true), -1110f, select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), ~10081u, 902f)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), any(vec2<bool>(false, false))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), u_input.a != u_input.a), vec3<bool>(true, true, true)), _wgslsmith_dot_vec4_u32(~vec4<u32>(49252u, var_0.x, 4294967295u, var_0.x), ~vec4<u32>(0u, 1u, 4294967295u, var_0.x)) >> (54771u % 32u)));
    global0 = array<i32, 7>();
    var var_2 = firstTrailingBit(abs(-firstLeadingBit(~vec3<i32>(global0[_wgslsmith_index_u32(83997u, 7u)], u_input.a, global0[_wgslsmith_index_u32(20901u, 7u)]))));
    var var_3 = Struct_1(~(min(_wgslsmith_add_vec3_u32(var_1.e.a.a.a, var_1.e.a.a.a), var_1.a) >> (reverseBits(max(var_1.e.a.a.a, vec3<u32>(0u, var_1.c, 43989u))) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.x)) * _wgslsmith_f_op_f32(var_1.e.a.d.e * -623f)), 701f), vec3<bool>(!var_1.e.b.x, !var_1.e.b.x, var_1.e.b.x), _wgslsmith_add_u32(1u, ~var_0.x), -586f);
    return var_1.e.a.d;
}

fn func_1() -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-247f * global1.x), -132f, global1.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(-global1.x)))));
    let var_0 = global1.xz;
    global0 = array<i32, 7>();
    let var_1 = func_2();
    global0 = array<i32, 7>();
    return !vec2<bool>(all(!select(var_1.c, var_1.c, var_1.c)), -32658i < -global0[_wgslsmith_index_u32(21436u, 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = vec2<bool>(true, true);
    let var_1 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(35577u, 1u)), vec2<u32>(_wgslsmith_div_u32(76431u, 4294967295u), select(2542u, 27788u, false))), 7u)], _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-115f, 1396f, var_1) + _wgslsmith_div_vec3_f32(vec3<f32>(-137f, global1.x, var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, global1.x, -1803f)))))));
}

