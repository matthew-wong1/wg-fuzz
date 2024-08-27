struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = 2140f;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(449f, -1000f, 1i), Struct_2(-1647f, -306f, 2147483647i), Struct_2(256f, 514f, 607i), Struct_2(813f, 1108f, 50877i), Struct_2(1249f, -1236f, 1i), Struct_2(1203f, -1000f, -1i), Struct_2(-318f, -613f, 2147483647i), Struct_2(-129f, 861f, 0i), Struct_2(-1136f, -594f, i32(-2147483648)), Struct_2(651f, 283f, 1i), Struct_2(739f, -368f, -1i), Struct_2(753f, 1169f, -16843i), Struct_2(929f, -1481f, 379i), Struct_2(-408f, 645f, 23654i), Struct_2(-739f, -743f, 0i), Struct_2(1341f, 803f, 0i));

var<private> global3: array<vec2<u32>, 28>;

var<private> global4: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(6323u, true), Struct_1(0u, true), Struct_1(63915u, true), Struct_1(63023u, true), Struct_1(4294967295u, false), Struct_1(1u, false), Struct_1(4294967295u, false), Struct_1(24243u, true), Struct_1(0u, false), Struct_1(21382u, false), Struct_1(4712u, true), Struct_1(1u, false), Struct_1(4294967295u, false), Struct_1(0u, true), Struct_1(54894u, false), Struct_1(4294967295u, true), Struct_1(14927u, true), Struct_1(4294967295u, false), Struct_1(4294967295u, false), Struct_1(4294967295u, false), Struct_1(4294967295u, false), Struct_1(0u, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> vec3<bool> {
    let var_0 = global2[_wgslsmith_index_u32(~(~1u), 16u)];
    let var_1 = vec4<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))) * _wgslsmith_f_op_f32(f32(-1f) * -828f)) - var_0.a), -2015f, var_0.b);
    let var_2 = Struct_1(arg_0.x, false);
    var var_3 = Struct_2(-1854f, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(266f + -267f), _wgslsmith_f_op_f32(round(var_1.x))))))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.c, -u_input.a.x), firstTrailingBit(u_input.a)), u_input.a));
    global4 = array<Struct_1, 22>();
    return !(!select(!vec3<bool>(true, true, var_2.b), vec3<bool>(arg_1, true, true), true));
}

fn func_2() -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(step(-278f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-306f * -929f))))))));
    let var_0 = !(!any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), func_3(global3[_wgslsmith_index_u32(0u, 28u)], true))));
    var var_1 = !select(vec2<bool>(any(vec4<bool>(var_0, var_0, var_0, var_0)), true), vec2<bool>(true, all(!vec4<bool>(true, var_0, false, var_0))), !(!vec2<bool>(false, var_0)));
    var var_2 = vec2<bool>(false, var_1.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-215f, -653f, 767f))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-189f, _wgslsmith_f_op_f32(floor(-568f)), _wgslsmith_f_op_f32(651f - -513f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1066f, -116f))))));
    return vec3<u32>(0u, 1u, ~(~(~45994u)));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    var var_0 = func_2();
    global2 = array<Struct_2, 16>();
    var_0 = abs(vec3<u32>(60038u, 66504u, var_0.x));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.a);
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-50644i, 0i)), countOneBits(u_input.a.x)), ~11438i), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-u_input.a.x, 0i)), ~min(select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, false), vec2<i32>(arg_1.c, -2147483647i) & vec2<i32>(arg_1.c, -21453i))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-207f, Struct_2(427f, -771f, 1i), vec2<u32>(33016u, 5530u))) + _wgslsmith_f_op_f32(542f * 1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1389f)), _wgslsmith_f_op_f32(max(261f, 291f)))), _wgslsmith_f_op_f32(max(1025f, _wgslsmith_f_op_f32(f32(-1f) * -1723f))), -1392f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(850f + -574f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1033f), _wgslsmith_f_op_f32(f32(-1f) * -844f)) + vec4<f32>(948f, -176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(124f + 1427f)), _wgslsmith_f_op_f32(-354f + _wgslsmith_f_op_f32(func_1(1020f, global2[_wgslsmith_index_u32(72185u, 16u)], vec2<u32>(2191u, 1926u)))))));
    global2 = array<Struct_2, 16>();
    var var_2 = global4[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(~(~_wgslsmith_clamp_u32(7689u, 4294967295u, 1u)))), 22u)];
    let var_3 = vec2<bool>(!var_0, select(true, true, !(!(true || var_2.b))));
    global2 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~(vec4<u32>(1u, 4294967295u, var_2.a, 46970u) & vec4<u32>(var_2.a, var_2.a, 4294967295u, 1u)) ^ ~countOneBits(vec4<u32>(54961u, var_2.a, var_2.a, 1105u)), vec4<u32>(_wgslsmith_mult_u32(var_2.a, var_2.a), ~(~31992u), reverseBits(_wgslsmith_mod_u32(53919u, 71896u)), select(~var_2.a, var_2.a | var_2.a, true)), vec4<bool>(var_3.x, !all(vec4<bool>(var_0, var_0, var_0, true)), any(vec3<bool>(true, true, var_3.x)), var_3.x)), _wgslsmith_f_op_f32(1402f * _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -921f)))));
}

