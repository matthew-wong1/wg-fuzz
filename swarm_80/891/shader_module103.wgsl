struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(1u, -267f), Struct_2(0u, 998f), Struct_2(0u, 1022f), Struct_2(0u, 596f), Struct_2(1u, 2427f), Struct_2(56840u, 430f), Struct_2(5160u, 1047f), Struct_2(59384u, -592f), Struct_2(61267u, -1423f), Struct_2(1u, 2289f));

var<private> global1: f32 = -687f;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<bool> {
    global1 = _wgslsmith_f_op_f32(sign(arg_1));
    global2 = !(!select(vec4<bool>(arg_0, arg_1 != arg_1, arg_0, 1233f <= arg_1), vec4<bool>(all(vec3<bool>(false, true, false)), true, !global2.x, all(vec4<bool>(true, global2.x, global2.x, arg_0))), arg_0));
    var var_0 = _wgslsmith_f_op_f32(round(925f));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) + _wgslsmith_f_op_f32(sign(arg_1))), 1f))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-450f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-arg_1)))));
    return vec4<bool>(false, !arg_0, global2.x, true);
}

fn func_2() -> i32 {
    global2 = select(vec4<bool>(!any(func_3(global2.x, -287f)), true, true, !func_3(global2.x | false, -1000f).x), select(!vec4<bool>(global2.x & global2.x, all(global2.zx), global2.x, true), func_3(firstLeadingBit(871i) < min(u_input.d.x, u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1524f - 831f))), global2.x | true), func_3(true | (global2.x & (global2.x || global2.x)), 1f));
    var var_0 = Struct_1(vec4<bool>(all(select(!global2.xx, func_3(false, -990f).yy, !global2.x)), !(!(!global2.x)), true, true), u_input.a.x);
    global1 = -173f;
    var var_1 = Struct_2(reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(22451u, 0u))), _wgslsmith_f_op_f32(sign(-1000f)));
    var var_2 = var_1.b;
    return _wgslsmith_mod_i32(reverseBits(2147483647i), -u_input.b.x);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> vec2<i32> {
    var var_0 = -func_2();
    let var_1 = Struct_1(vec4<bool>(arg_0, true && !any(global2.yww), arg_1.x, global2.x), -u_input.c.x);
    let var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_2) & vec2<u32>(0u, arg_2), ~vec2<u32>(arg_2, 28764u), firstLeadingBit(vec2<u32>(1u, 85756u))), _wgslsmith_mult_vec2_u32(vec2<u32>(11553u, firstLeadingBit(49600u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(21086u, arg_2), min(vec2<u32>(arg_2, arg_2), vec2<u32>(arg_2, 17223u))))), abs(4294967295u), ~arg_2 << (arg_2 % 32u));
    var_0 = 51248i;
    global2 = arg_1;
    return u_input.c.ww;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec4<bool>(!global2.x, all(!vec4<bool>(global2.x, false, true, false)) | true, true, true);
    var var_0 = _wgslsmith_f_op_f32(847f - -1755f);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-219f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-272f)), _wgslsmith_f_op_f32(min(-602f, _wgslsmith_f_op_f32(max(-785f, -1442f)))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-719f + -105f));
    var var_1 = ~max(func_1(any(global2.zx), !vec4<bool>(false, false, false, global2.x), 30576u), ~firstTrailingBit(~vec2<i32>(u_input.c.x, u_input.b.x)));
    let var_2 = _wgslsmith_div_u32(~1u, 98826u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 60986u, 26517u, 78071u), true))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2, 1u), vec2<u32>(45235u, 69606u)), vec2<u32>(var_2, var_2) & vec2<u32>(4294967295u, 36434u))));
}

