struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32> = vec2<f32>(-818f, -638f);

var<private> global2: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(4294967295u, 51696u, 1u, 52053u), vec4<u32>(28116u, 9335u, 78099u, 1875u), vec4<u32>(101784u, 1u, 0u, 10202u), vec4<u32>(18193u, 1u, 76871u, 4294967295u), vec4<u32>(51727u, 31074u, 0u, 1u), vec4<u32>(0u, 4294967295u, 12307u, 4294967295u), vec4<u32>(0u, 11134u, 1u, 1u), vec4<u32>(4294967295u, 1u, 40062u, 7016u), vec4<u32>(84965u, 1u, 1u, 15155u), vec4<u32>(37994u, 77140u, 4294967295u, 68492u), vec4<u32>(1u, 40233u, 0u, 0u), vec4<u32>(1u, 37175u, 1u, 27651u), vec4<u32>(1u, 49338u, 5213u, 123052u), vec4<u32>(0u, 61986u, 0u, 67651u), vec4<u32>(11844u, 1u, 4294967295u, 1u), vec4<u32>(3616u, 14509u, 1u, 1u), vec4<u32>(16198u, 1u, 0u, 47246u), vec4<u32>(9686u, 0u, 102652u, 0u), vec4<u32>(96790u, 0u, 4294967295u, 13364u), vec4<u32>(26170u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 19655u, 1u), vec4<u32>(32414u, 4294967295u, 0u, 36286u), vec4<u32>(0u, 11263u, 0u, 37650u), vec4<u32>(24253u, 41212u, 1u, 28479u), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 79297u, 0u), vec4<u32>(38330u, 1u, 0u, 100167u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = Struct_1(vec2<bool>(any(vec2<bool>(true, true)), true));
    let var_1 = min(select(~14375u << (0u % 32u), 1u & ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(67734u, 0u)), var_0.a.x), countOneBits(4294967295u));
    var var_2 = Struct_1(!select(!var_0.a, select(vec2<bool>(true, true), !var_0.a, true), select(!var_0.a, var_0.a, arg_0 >= 812f)));
    var var_3 = _wgslsmith_f_op_f32(-global1.x);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(arg_0 + global1.x), _wgslsmith_f_op_f32(sign(-840f)));
    return firstLeadingBit(~abs(firstTrailingBit(global2[_wgslsmith_index_u32(var_1, 27u)] >> (vec4<u32>(var_1, 41413u, var_1, 73165u) % vec4<u32>(32u)))));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<u32>) -> bool {
    global0 = arg_1.x;
    var var_0 = false;
    var var_1 = false;
    let var_2 = ~u_input.b.x;
    var_1 = arg_3.x == abs(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(arg_3.x, 18478u), 60340u));
    return true;
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(431f + _wgslsmith_div_f32(global1.x, global1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1295f, global1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1106f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -881f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x));
    var var_1 = Struct_1(vec2<bool>(all(vec3<bool>(any(vec3<bool>(false, true, true)), true, false)), func_3(!any(vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(635f, 543f, global1.x, global1.x), vec4<f32>(183f, global1.x, global1.x, -1639f))), any(vec2<bool>(false, false)), firstLeadingBit(func_2(-165f)))));
    var var_2 = abs(~vec2<u32>(1u, 1u));
    return ~vec2<u32>(func_2(-319f).x, ~var_2.x >> (min(_wgslsmith_sub_u32(59048u, var_2.x), ~120370u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(any(vec3<bool>(true, true, true)) && all(vec4<bool>(true, true, true, true)), (any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))) && true) | false, true, global1.x <= global1.x);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(837f, -1334f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-782f, global1.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1000f)) - vec2<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_div_f32(global1.x, global1.x)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x)))));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(global1.x))) - _wgslsmith_f_op_f32(select(-594f, -1141f, true))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))))), global1.x, -1648f);
    let var_2 = -u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(719f, 1f)) - global1.x)), _wgslsmith_div_u32(~(~_wgslsmith_mult_u32(4294967295u, 0u)), 4294967295u), min(~vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(41376u, 1u)), ~vec2<u32>(26266u, 0u)), func_1())), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-483f, var_1.x) + vec2<f32>(global1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, var_1.x), var_1.zy)))), vec2<f32>(_wgslsmith_div_f32(-788f, 579f), 906f))) + vec2<f32>(var_1.x, _wgslsmith_div_f32(global1.x, -2132f))), firstLeadingBit(vec2<u32>(abs(0u), 1u)));
}

