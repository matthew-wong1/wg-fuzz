struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(-38334i, 12702i, i32(-2147483648), 2147483647i, -2856i, 1i, 27550i, 14006i, 2147483647i, 0i, 2147483647i, -11944i, 10858i, 30596i, -17424i, 2147483647i, -8768i, 0i, 2147483647i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = -1262f;
    var var_1 = 30931u;
    var_0 = 1f;
    var var_2 = 41760u;
    var var_3 = any(select(!vec3<bool>(true, select(true, false, arg_0.x), true), !vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(all(arg_0), false, false)));
    return select(arg_0.wxw, vec3<bool>(!(-global0[_wgslsmith_index_u32(0u, 19u)] > min(global0[_wgslsmith_index_u32(0u, 19u)], 18721i)), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 542f), _wgslsmith_f_op_f32(f32(-1f) * -1944f)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-249f)), -759f))), select(arg_0.yyw, !arg_0.zyy, false));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec4<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), all(func_2(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), true))), _wgslsmith_div_u32(u_input.b.x, ~(~u_input.b.x)) == 10841u, u_input.b.x > (_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(16681u, 1u)) >> (~u_input.b.x % 32u)));
    global0 = array<i32, 19>();
    let var_1 = var_0;
    global0 = array<i32, 19>();
    let var_2 = _wgslsmith_clamp_vec3_i32(abs((vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], -2147483647i, 2147483647i) >> (_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 1u, 67004u)) % vec3<u32>(32u))) & firstTrailingBit(vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 58891i))), select(vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), 19u)], global0[_wgslsmith_index_u32(min(56675u, u_input.b.x & 4294967295u), 19u)], global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, u_input.b.x), 19u)]), firstTrailingBit(_wgslsmith_sub_vec3_i32(min(vec3<i32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], -7827i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -57342i, 52266i)), vec3<i32>(-1i, -648i, global0[_wgslsmith_index_u32(0u, 19u)]))), var_1.yww), -(~(_wgslsmith_add_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 5166i), vec3<i32>(global0[_wgslsmith_index_u32(47940u, 19u)], -55571i, global0[_wgslsmith_index_u32(u_input.b.x, 19u)])) << (~u_input.a % vec3<u32>(32u)))));
    return var_0.yw;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>) -> vec2<bool> {
    global0 = array<i32, 19>();
    let var_0 = !select(vec2<bool>(true, !any(vec3<bool>(false, false, true))), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), arg_0.x == 65149u), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)));
    let var_1 = Struct_1(max(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(37706u, u_input.b.x, 4294967295u)), ~vec3<u32>(29562u, 4294967295u, arg_0.x)), ~(~arg_0), vec3<u32>(_wgslsmith_div_u32(arg_0.x, 0u), 13244u, 0u)), reverseBits(~u_input.a) | (vec3<u32>(42792u, arg_0.x, 4294967295u) & ~vec3<u32>(4294967295u, 4559u, 1u))), select(~arg_0, ~(u_input.a >> (u_input.b.zwz % vec3<u32>(32u))), select(select(!vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(true, var_0.x, true)), select(func_2(vec4<bool>(var_0.x, false, true, var_0.x)), !vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false)), !(!vec3<bool>(false, var_0.x, var_0.x)))), _wgslsmith_add_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(arg_0.x, 19u)], 1i), select(~max(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(arg_0.x, 19u)]), global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(~u_input.b.x, 19u)] >= -global0[_wgslsmith_index_u32(u_input.a.x, 19u)])));
    var var_2 = (1214f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))) - arg_1.x)) | all(func_3());
    var var_3 = all(!vec3<bool>(var_1.c >= -77330i, false, var_0.x | true)) && false;
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = select(!select(!func_1(vec3<u32>(u_input.a.x, 16868u, 91916u), vec4<f32>(1188f, -573f, 1707f, -1360f)), vec2<bool>(true, any(vec3<bool>(false, true, false))), true), select(func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 0u == u_input.a.x)).zy, func_2(vec4<bool>(func_2(vec4<bool>(true, false, true, false)).x, func_2(vec4<bool>(true, false, false, false)).x, global0[_wgslsmith_index_u32(0u, 19u)] <= global0[_wgslsmith_index_u32(41468u, 19u)], true)).xy, true), true);
    global0 = array<i32, 19>();
    var var_2 = abs(1u) & _wgslsmith_dot_vec4_u32(u_input.b, firstLeadingBit(~vec4<u32>(5478u, u_input.b.x, 0u, 4294967295u)) ^ (u_input.b & abs(vec4<u32>(0u, u_input.b.x, u_input.b.x, 0u))));
    var_0 = true;
    let var_3 = Struct_1(~u_input.b.wwx, reverseBits(~u_input.a), 1i);
    var var_4 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-596f, 1689f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1733f, _wgslsmith_f_op_f32(min(-163f, 898f))))), _wgslsmith_f_op_f32(round(-1732f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-var_3.c ^ ~_wgslsmith_sub_i32(var_3.c, -2147483647i), ~var_3.c ^ firstLeadingBit(-global0[_wgslsmith_index_u32(u_input.a.x, 19u)])), _wgslsmith_f_op_f32(var_4.x * 642f));
}

