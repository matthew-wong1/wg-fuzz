struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), i32(-2147483648), 1494i);

var<private> global1: array<vec2<i32>, 21>;

var<private> global2: array<bool, 16>;

var<private> global3: vec4<f32> = vec4<f32>(128f, 137f, 1117f, -278f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_div_u32(12520u, ~countOneBits(_wgslsmith_mod_u32(43406u, 4294967295u))) << (arg_0 % 32u);
    let var_1 = abs(_wgslsmith_sub_vec3_u32(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 21323u, arg_0), vec3<u32>(2024u, 1u, arg_0))), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(arg_0, 4294967295u, arg_0)), ~select(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(4294967295u, 2820u, arg_0), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 16u)], arg_1)))));
    let var_2 = Struct_1(vec3<bool>(((global0.x >> (var_1.x % 32u)) >> ((9712u & arg_0) % 32u)) == ~(~1i), ~_wgslsmith_mod_u32(var_1.x, 1u) > 4294967295u, global2[_wgslsmith_index_u32(firstLeadingBit(var_1.x), 16u)]));
    var var_3 = abs(_wgslsmith_clamp_vec4_u32(countOneBits(max(vec4<u32>(arg_0, arg_0, 4294967295u, var_1.x), vec4<u32>(arg_0, var_1.x, arg_0, arg_0)) ^ ~vec4<u32>(var_1.x, arg_0, var_1.x, 0u)), ~(~vec4<u32>(79651u, 49130u, 18590u, 1u)), vec4<u32>(46404u, ~_wgslsmith_add_u32(var_1.x, arg_0), var_1.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.yx, var_1.yx)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(global3.wyx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3.wxy)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.x - global3.x), global3.x, _wgslsmith_f_op_f32(trunc(global3.x))))), !any(var_2.a)));
    return 26649u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    global2 = array<bool, 16>();
    var var_0 = true;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-217f, global3.x))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, global3.x))));
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~abs(0u), _wgslsmith_add_u32(func_3(12447u, false), ~1u), max(abs(0u), max(24195u, 54514u)), ~4294967295u), ~vec4<u32>(_wgslsmith_add_u32(20700u, 20441u), func_3(4294967295u, true), 8182u, 37848u)), reverseBits(_wgslsmith_clamp_u32(1u, countOneBits(abs(1u)), ~1u))), 16u)];
    var var_2 = reverseBits(vec2<u32>(1u, 1u));
    return !select(arg_0.a.xx, arg_0.a.xz, !any(vec3<bool>(true, false, arg_1.a.x)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> bool {
    let var_0 = all(vec4<bool>(global2[_wgslsmith_index_u32(~(~75204u), 16u)], true, !all(func_2(Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(138822u, 16u)], global2[_wgslsmith_index_u32(801u, 16u)], global2[_wgslsmith_index_u32(723u, 16u)])), u_input.a.x)), any(func_2(Struct_1(vec3<bool>(arg_0, false, false)), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(1u, 16u)], true, global2[_wgslsmith_index_u32(80101u, 16u)])), _wgslsmith_sub_i32(global0.x, u_input.b.x)))));
    global0 = vec3<i32>(firstTrailingBit(global0.x), firstTrailingBit(global0.x) | -31728i, 1i);
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + 1f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1723f * global3.x), 1385f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1247f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1366f, -167f)), arg_1.x), _wgslsmith_f_op_f32(-global3.x)) - vec4<f32>(-690f, -802f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-303f, arg_1.x)), _wgslsmith_f_op_f32(arg_1.x + global3.x)), 206f, all(vec2<bool>(true, true)))), global3.x));
    global3 = vec4<f32>(1341f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1191f, _wgslsmith_f_op_f32(global3.x - 252f)) * _wgslsmith_div_f32(189f, _wgslsmith_f_op_f32(step(arg_1.x, 979f)))) + arg_1.x), -1590f, global3.x);
    var var_1 = Struct_1(select(select(select(!vec3<bool>(global2[_wgslsmith_index_u32(20873u, 16u)], false, global2[_wgslsmith_index_u32(8398u, 16u)]), vec3<bool>(var_0, true, true), !vec3<bool>(arg_0, true, false)), select(!vec3<bool>(false, var_0, true), select(vec3<bool>(false, var_0, false), vec3<bool>(arg_0, var_0, arg_0), arg_0), vec3<bool>(global2[_wgslsmith_index_u32(17560u, 16u)], false, var_0)), !(!vec3<bool>(arg_0, true, global2[_wgslsmith_index_u32(11809u, 16u)]))), !(!(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], false, true))), true));
    return !var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 10419u), countOneBits(vec2<u32>(0u, 1u)))));
    var var_1 = vec4<bool>(true, func_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, firstTrailingBit(~var_0.x)), 16u)], vec2<f32>(-1636f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -841f)))), !(!(!global2[_wgslsmith_index_u32(1u, 16u)])), global2[_wgslsmith_index_u32(var_0.x, 16u)] & (_wgslsmith_f_op_f32(f32(-1f) * -302f) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1365f))))));
    global2 = array<bool, 16>();
    let var_2 = Struct_1(var_1.zxy);
    let var_3 = global3.x;
    global1 = array<vec2<i32>, 21>();
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -570f, global3.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, global3.x, global3.x), vec4<f32>(global3.x, -998f, global3.x, global3.x), var_2.a.x)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, global3.x, global3.x, 1148f)))) + vec4<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), global3.x, -794f))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~41281u);
}

