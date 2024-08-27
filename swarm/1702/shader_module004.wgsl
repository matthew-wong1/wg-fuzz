struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn func_3() -> i32 {
    var var_0 = select(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_mod_u32(36956u, u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), 0u, 12684u << (u_input.b.x % 32u))), _wgslsmith_mod_vec4_u32(~u_input.b, u_input.b), vec4<u32>(firstTrailingBit(u_input.b.x), ~10021u, u_input.b.x, 0u) << (~_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(24789u, 4294967295u, 4294967295u, 28567u), u_input.b) % vec4<u32>(32u))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(0u, u_input.b.x, 2836u, 119465u))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), _wgslsmith_div_f32(831f, 361f) != _wgslsmith_f_op_f32(floor(-1000f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(879f * 134f))))), 1170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(745f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-151f, -186f)) * _wgslsmith_f_op_f32(ceil(-1077f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2022f))))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1281f, -848f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1994f + 663f) + 1241f), -501f, -169f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1668f) + _wgslsmith_f_op_f32(-1213f - 585f)), 486f, -1044f, 1189f))));
    var_0 = _wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, u_input.b.x, u_input.b.x, u_input.b.x) ^ u_input.b), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), u_input.b)) | abs(u_input.b));
    var_0 = countOneBits(u_input.b);
    let var_2 = _wgslsmith_f_op_f32(-115f + var_1.x);
    return 2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = !(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) || true) | (~_wgslsmith_dot_vec4_u32(u_input.b, countOneBits(u_input.b)) < ~24780u);
    var_0 = true;
    var_0 = true;
    var_0 = all(vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), -2087f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-406f)) * -579f)));
    var var_1 = vec4<bool>(true, all(select(vec4<bool>(all(vec4<bool>(false, true, false, false)), false, select(false, false, false), true), vec4<bool>(true, true, true, true), select(true, false, any(vec3<bool>(true, true, false))))), !(_wgslsmith_mult_u32(arg_1.a.x, 27039u | arg_1.a.x) <= u_input.b.x), true);
    return max(arg_1.a.x, arg_0.a.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = func_4(Struct_1(u_input.b.zy, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-56159i, u_input.a.x), 0i, -u_input.a.x) << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0, u_input.b.x), u_input.b.x) % 32u)), Struct_1(~u_input.b.wx, -1i), Struct_1(~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(34468u, 61199u)), ~vec2<u32>(33736u, u_input.b.x)), -20484i), func_3());
    var var_1 = !(!(!vec2<bool>(true, u_input.b.x >= 52366u)));
    var_1 = !(!(!(!(!vec2<bool>(false, var_1.x)))));
    var var_2 = select(select(!(!select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, var_1.x, true, var_1.x))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), var_1.x), var_1.x), !var_1.x), select(!select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, false, true)), vec4<bool>(var_1.x, var_1.x, true, false), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, true), var_1.x)), vec4<bool>(!any(vec3<bool>(true, false, false)), false, max(u_input.a.x, u_input.a.x) > 11643i, !var_1.x), vec4<bool>(!all(vec3<bool>(true, true, var_1.x)), all(!vec4<bool>(false, var_1.x, false, false)), all(!vec4<bool>(var_1.x, true, var_1.x, var_1.x)), all(select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, false, true), false)))), vec4<bool>(true, true, false, var_1.x));
    var_1 = !(!select(vec2<bool>(true, var_2.x), select(select(vec2<bool>(true, true), var_2.zy, false), var_2.zy, select(vec2<bool>(var_2.x, true), var_2.ww, var_2.xz)), !any(var_2.wy)));
    return Struct_1(vec2<u32>(24239u, _wgslsmith_add_u32(1u, ~u_input.b.x)), countOneBits(0i));
}

fn func_1() -> bool {
    var var_0 = func_2(0u);
    var_0 = Struct_1(firstLeadingBit(vec2<u32>(~_wgslsmith_mod_u32(5865u, var_0.a.x), ~1u)), min(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, u_input.a.x)), u_input.a.xx), reverseBits(-u_input.a.x)), ~firstTrailingBit(var_0.b)));
    let var_1 = func_2(~var_0.a.x);
    var var_2 = Struct_1(var_0.a | vec2<u32>(u_input.b.x, _wgslsmith_clamp_u32(select(u_input.b.x, 25328u, false), _wgslsmith_mult_u32(var_1.a.x, 0u), ~var_0.a.x)), firstLeadingBit(var_1.b));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(1f, 870f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(208f))) - _wgslsmith_f_op_f32(f32(-1f) * -145f))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1011f)), _wgslsmith_f_op_f32(-1031f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), false)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.wz;
    var_0 = u_input.a.xz;
    var var_1 = Struct_1(vec2<u32>(77357u, _wgslsmith_mod_u32(u_input.b.x, firstLeadingBit(11117u))), -8277i);
    let var_2 = !vec4<bool>(!func_1(), !all(vec3<bool>(true, false, true)) & (-1398f <= _wgslsmith_f_op_f32(trunc(316f))), false, false);
    var var_3 = u_input.a;
    let var_4 = !var_2.x;
    var_3 = reverseBits(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1332f)), _wgslsmith_f_op_f32(-121f * -2054f), -1023f, _wgslsmith_f_op_f32(551f - 864f)) + vec4<f32>(_wgslsmith_f_op_f32(select(-355f, -1189f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1747f, -1775f)))), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(864f + -991f))))));
}

