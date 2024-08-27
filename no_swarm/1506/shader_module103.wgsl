struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(arg_2.a, arg_2.b, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0.zz * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xy + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 969f) + arg_0.zy)) * _wgslsmith_f_op_vec2_f32(step(arg_0.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))))));
    let var_2 = !arg_2.c;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, arg_0.x) - _wgslsmith_f_op_f32(select(arg_1, arg_0.x, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-1136f - 229f))) - _wgslsmith_f_op_f32(arg_0.x * arg_0.x))) != _wgslsmith_div_f32(497f, -224f);
    var_3 = arg_3.c;
    return arg_3.c;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> vec4<bool> {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(true, false, !func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(801f, 681f, -597f), vec3<f32>(-251f, -592f, -1202f), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(round(473f)), Struct_1(110073u, u_input.b, true), Struct_1(47661u, u_input.b, false))), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !all(vec4<bool>(true, true, true, true))));
    let var_1 = func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1085f) + -638f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(348f))), _wgslsmith_f_op_f32(-496f - _wgslsmith_f_op_f32(f32(-1f) * -1061f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(628f + -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -310f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(783f)), _wgslsmith_f_op_f32(round(-408f)))), _wgslsmith_f_op_f32(f32(-1f) * -655f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(397f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(863f, -300f))))))), Struct_1(_wgslsmith_mult_u32(~1u, abs(arg_0.a.x)), -2147483647i, (var_0.x != select(false, var_0.x, false)) | (u_input.b == (24202i & u_input.b))), Struct_1(u_input.c, firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 37879i), vec4<i32>(u_input.b, 27394i, -2147483647i, 1i)), countOneBits(69182i))), false));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(~1u << (abs(arg_1) % 32u), countOneBits(arg_0.a.x >> (u_input.a % 32u))), _wgslsmith_mod_u32(abs(arg_0.b), ~_wgslsmith_sub_u32(firstTrailingBit(8227u), 4294967295u)));
    return !(!vec4<bool>(all(!vec4<bool>(var_1, var_1, var_1, var_0.x)), !var_1 | select(true, var_1, false), !all(vec3<bool>(var_0.x, true, var_1)), false));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = select(select(select(select(func_2(Struct_2(vec2<u32>(0u, 97352u), 4294967295u), u_input.c), func_2(Struct_2(vec2<u32>(4294967295u, u_input.c), 4294967295u), u_input.a), true), select(select(vec4<bool>(false, false, arg_0, false), vec4<bool>(arg_0, false, false, arg_0), arg_0), !vec4<bool>(arg_0, false, true, arg_0), arg_0), !arg_0), select(vec4<bool>(!arg_0, true, false, all(vec4<bool>(false, arg_0, arg_0, arg_0))), vec4<bool>(arg_0, arg_0, arg_0, true), !arg_0), true), !vec4<bool>(true, any(vec2<bool>(arg_0, arg_0)) & true, arg_0, arg_0), false);
    var var_1 = ~vec4<u32>(u_input.c, ~u_input.c, u_input.a, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstLeadingBit(1u), select(15944u, u_input.a, var_0.x), u_input.a), u_input.a));
    let var_2 = Struct_1(max(var_1.x, 4294967295u), 1i | min(reverseBits(u_input.b), _wgslsmith_clamp_i32(2147483647i, 2147483647i, 6399i)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(982f - 605f)), _wgslsmith_f_op_f32(-1f)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2167f), _wgslsmith_f_op_f32(floor(-214f)))), 103f));
    var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(38436u, var_2.a, u_input.c, 2952u)), vec4<u32>(u_input.a, var_1.x, u_input.a, 61421u)), countOneBits(vec4<u32>(4294967295u, 0u, u_input.c, u_input.a) | vec4<u32>(33658u, 4294967295u, var_1.x, var_2.a))), ~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 1u, var_1.x, var_2.a)), ~vec4<u32>(var_1.x, u_input.c, var_1.x, 1u))), vec4<u32>(0u, _wgslsmith_sub_u32(~var_1.x, 1u), select(~u_input.c, ~var_2.a, var_0.x), var_1.x));
    var_0 = vec4<bool>(false, !all(vec4<bool>(select(false, var_0.x, true), any(vec4<bool>(var_0.x, arg_0, false, var_0.x)), arg_0, !var_2.c)), !func_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-120f, -709f, -449f))))), 637f, var_2, var_2), !any(func_2(Struct_2(var_1.yz, 33023u), _wgslsmith_clamp_u32(var_1.x, 34400u, u_input.c)).yw));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, u_input.b, ~(~u_input.b));
    var_0 = Struct_1(80718u, 2531i, true);
    var_0 = func_1(_wgslsmith_mod_i32(u_input.b, -7269i) != (u_input.b >> (~abs(0u) % 32u)), u_input.b, u_input.b);
    var var_1 = ~56613u;
    let var_2 = -(~(~14223i));
    let var_3 = vec4<i32>(var_2, _wgslsmith_div_i32(u_input.b, _wgslsmith_div_i32(-47778i, 1i)) ^ var_0.b, abs(1i), 1i);
    var_1 = 48253u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yz, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(939f, 521f), vec2<f32>(841f, 2203f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(960f, 131f), vec2<f32>(1685f, -1761f))))))))), countOneBits(u_input.c ^ ~abs(1u)), firstTrailingBit(~firstLeadingBit(firstLeadingBit(vec3<u32>(1u, 0u, var_0.a)))));
}

