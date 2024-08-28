struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, false, true, false, true, false, true, true, false, false, true, false, true, true, true, false, true, false, false, false, false, true, false, false, true, true, false, true, false, true);

var<private> global1: vec3<i32> = vec3<i32>(-1i, 0i, -1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: f32) -> bool {
    return !(((arg_2 || true) & (false | global0[_wgslsmith_index_u32(37242u, 30u)])) || true) & arg_2;
}

fn func_2() -> f32 {
    let var_0 = select(vec3<bool>(global0[_wgslsmith_index_u32(min(u_input.b.x, u_input.a.x), 30u)], true, func_3(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c, global1.x, 29976i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, 17138i, global1.x, u_input.c))), 22975u, !all(vec3<bool>(global0[_wgslsmith_index_u32(44340u, 30u)], true, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(994f, -495f)))))), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], true)), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(53064u, u_input.a.x), 30u)]), vec3<bool>(all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(1205u, 30u)])), !all(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(~u_input.a.x, 30u)] != global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.b.x), 30u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 9014u >> (_wgslsmith_mod_u32(u_input.a.x, u_input.b.x) % 32u)), 30u)]), vec3<bool>(true, any(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(69911u, 30u)]), true)), global0[_wgslsmith_index_u32(4294967295u, 30u)]));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(-2281f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-506f - 282f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(713f * 163f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -684f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-340f - -1495f)))), 249f));
    global1 = select(_wgslsmith_add_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, -1i, global1.x), vec3<i32>(global1.x, u_input.c, u_input.c), vec3<i32>(11369i, u_input.c, 34788i))), firstTrailingBit(vec3<i32>(reverseBits(9015i), ~global1.x, u_input.c))), select(-firstLeadingBit(~vec3<i32>(u_input.c, global1.x, u_input.c)), -(countOneBits(vec3<i32>(u_input.c, global1.x, -23258i)) >> ((u_input.b << (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), !select(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], all(var_0), true)), var_0.x || true);
    global1 = ~firstTrailingBit(max(select(firstTrailingBit(vec3<i32>(global1.x, u_input.c, u_input.c)), vec3<i32>(global1.x, 1i, 0i), vec3<bool>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 30u)])), ~(-vec3<i32>(u_input.c, u_input.c, 2147483647i))));
    var var_2 = _wgslsmith_div_i32(~(~(~select(u_input.c, u_input.c, false))), i32(-1i) * -(~max(2147483647i, 0i)));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    global0 = array<bool, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(ceil(-848f)), _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 117f, arg_1, arg_1)))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -306f, arg_1)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1199f, arg_1, arg_1, arg_1) - vec4<f32>(arg_1, arg_1, -1605f, 120f)))))))));
    return Struct_1(firstLeadingBit(arg_0 & 117315u), _wgslsmith_dot_vec2_u32((firstTrailingBit(u_input.b.zy) ^ _wgslsmith_div_vec2_u32(u_input.b.xz, vec2<u32>(1u, 4294967295u))) | vec2<u32>(u_input.b.x, ~u_input.a.x), firstTrailingBit(u_input.a.xz & _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, u_input.a.x), vec2<u32>(arg_0, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.a, firstTrailingBit(u_input.a | u_input.b)), ~1u);
    let var_1 = func_1(~u_input.a.x, 956f);
    let var_2 = vec2<u32>(countOneBits(~_wgslsmith_div_u32(u_input.a.x, var_1.b & 37095u)), var_0.b);
    let var_3 = u_input.b.x & _wgslsmith_add_u32(u_input.b.x, 2158u);
    var var_4 = all(select(select(!select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(var_0.a, 30u)], global0[_wgslsmith_index_u32(var_3, 30u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], false, false), !vec3<bool>(true, global0[_wgslsmith_index_u32(23875u, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), true), all(vec3<bool>(global0[_wgslsmith_index_u32(88367u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], false))), !vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 30u)], true, global0[_wgslsmith_index_u32(var_2.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)])), true, true), select(select(vec3<bool>(global0[_wgslsmith_index_u32(50111u, 30u)], global0[_wgslsmith_index_u32(25037u, 30u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(4182u, 30u)], global0[_wgslsmith_index_u32(var_2.x, 30u)], false), vec3<bool>(global0[_wgslsmith_index_u32(56868u, 30u)], true, true), global0[_wgslsmith_index_u32(var_1.a, 30u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.a, 30u)], false, false), vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_1.a, 30u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], true, global0[_wgslsmith_index_u32(var_2.x, 30u)]))), vec3<bool>(true, global0[_wgslsmith_index_u32(~u_input.a.x, 30u)], true), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.a, 30u)], true)))));
    var var_5 = global1.xx;
    global1 = ~_wgslsmith_mult_vec3_i32(~(~reverseBits(vec3<i32>(26569i, 21223i, 25658i))), ~vec3<i32>(-5730i, global1.x, var_5.x & 1i));
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, -19278i) ^ vec3<i32>(u_input.c, var_5.x, global1.x), -vec3<i32>(u_input.c, global1.x, 41601i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - -1199f), _wgslsmith_f_op_f32(493f * 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1292f), _wgslsmith_f_op_f32(round(1105f))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(-2291f * -1443f))), 234f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(507f)), -1130f))), vec4<i32>(~(-abs(global1.x)), 21746i, countOneBits(2147483647i), _wgslsmith_sub_i32(u_input.c, _wgslsmith_dot_vec4_i32(max(vec4<i32>(42755i, -38182i, 19999i, var_5.x), vec4<i32>(-2147483647i, -2147483647i, global1.x, 2147483647i)), vec4<i32>(-71956i, 2147483647i, var_5.x, u_input.c)))));
}

