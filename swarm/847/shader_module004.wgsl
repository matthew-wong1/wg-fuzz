struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, true, true, false, false, true, false, true, true, true, false, false, true, false, false, false, false, true, false, false, true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    global0 = array<bool, 23>();
    return 0u >> (u_input.c.x % 32u);
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    global0 = array<bool, 23>();
    let var_0 = Struct_2(vec3<u32>(_wgslsmith_clamp_u32((u_input.b << (4294967295u % 32u)) ^ (u_input.b ^ u_input.b), func_3(), ~10182u), ~func_3(), ~1u), Struct_1(~(~89750u), arg_0, _wgslsmith_f_op_f32(-arg_0)), u_input.c.x, _wgslsmith_mult_vec2_u32(~(~vec2<u32>(56178u, u_input.b)), ~(~vec2<u32>(20070u, u_input.c.x))));
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_1 = _wgslsmith_mod_i32(abs(firstTrailingBit(u_input.a.x)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(33494i, countOneBits(countOneBits(20893i))), u_input.a.x, -_wgslsmith_div_i32(u_input.a.x, -29263i) | -(u_input.a.x | u_input.a.x)));
    return var_0.b;
}

fn func_1(arg_0: vec4<i32>) -> vec3<u32> {
    let var_0 = Struct_2(u_input.c, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(182f, 950f))), true), _wgslsmith_mod_u32(min(~_wgslsmith_div_u32(u_input.c.x, 0u), u_input.b), _wgslsmith_sub_u32(u_input.b, ~(~4294967295u))), u_input.c.xy);
    var var_1 = var_0.b.c;
    let var_2 = 0u;
    global0 = array<bool, 23>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1087f, var_0.b.c) * vec2<f32>(var_0.b.c, 495f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(752f, var_0.b.b) + vec2<f32>(789f, var_0.b.c)))))));
    return select(select(vec3<u32>(firstTrailingBit(28381u), 1u, 4294967295u) & var_0.a, vec3<u32>(18896u, _wgslsmith_mod_u32(u_input.c.x, 1u), _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, var_0.c), ~u_input.c.x)), vec3<bool>(true | global0[_wgslsmith_index_u32(0u, 23u)], true, global0[_wgslsmith_index_u32(1u, 23u)])), select(var_0.a, firstLeadingBit(~vec3<u32>(u_input.c.x, 21955u, 4294967295u)), vec3<bool>(true, any(!vec2<bool>(global0[_wgslsmith_index_u32(23066u, 23u)], false)), all(vec3<bool>(global0[_wgslsmith_index_u32(61782u, 23u)], global0[_wgslsmith_index_u32(58960u, 23u)], true)) == !global0[_wgslsmith_index_u32(92570u, 23u)])), vec3<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(35995u, var_2, var_2, var_2)), vec4<u32>(var_2, 1u, 53221u, 13867u)), ~select(4294967295u, u_input.c.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2, 1u), _wgslsmith_mult_vec3_u32(var_0.a, vec3<u32>(var_0.a.x, var_2, 0u)))), 23u)], global0[_wgslsmith_index_u32(~u_input.c.x, 23u)]));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(arg_2.zx, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.b.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) + _wgslsmith_f_op_f32(-arg_3.b.c))), _wgslsmith_f_op_f32(-func_2(794f, global0[_wgslsmith_index_u32(arg_0.d.b.a | 1u, 23u)]).b))));
    global0 = array<bool, 23>();
    let var_1 = Struct_2(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, max(0u, arg_0.d.c), _wgslsmith_sub_u32(4294967295u, 39120u)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, 1024u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(2350u, arg_3.a.x, arg_3.c), arg_3.a))), ~33527u, arg_3.b.a), arg_3.b, arg_3.b.a, ~(~arg_0.d.d));
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    return vec2<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(~abs(arg_0.e.a)), 23u)] & (_wgslsmith_f_op_f32(trunc(-378f)) < _wgslsmith_f_op_f32(f32(-1f) * -2240f)), global0[_wgslsmith_index_u32(var_1.b.a, 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~_wgslsmith_sub_i32(reverseBits(_wgslsmith_mult_i32(-5821i, u_input.a.x)), u_input.a.x), -_wgslsmith_mult_i32(firstTrailingBit(u_input.a.x | u_input.a.x), 1i));
    let var_1 = _wgslsmith_mult_vec3_u32(u_input.c, u_input.c);
    let var_2 = func_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1689f, 1807f, -138f, -1197f) - vec4<f32>(-215f, 1663f, 1131f, 641f))) * vec4<f32>(192f, _wgslsmith_f_op_f32(step(-343f, 140f)), _wgslsmith_f_op_f32(abs(-553f)), 657f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-880f, -1000f))))), u_input.a.xy, Struct_2(func_1(vec4<i32>(var_0.x, u_input.a.x, var_0.x, 2147483647i)), func_2(-395f, !global0[_wgslsmith_index_u32(var_1.x, 23u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 44033u, 30787u), vec4<u32>(var_1.x, u_input.c.x, 1u, u_input.c.x)) & max(var_1.x, 1u), ~firstLeadingBit(vec2<u32>(100412u, u_input.c.x))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1304f)) + _wgslsmith_f_op_f32(-527f - -1303f)), !global0[_wgslsmith_index_u32(0u, 23u)])), u_input.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(703f, 1136f, -1000f, 1199f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1022f, 576f, 1371f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(-2172f + 518f), -715f, _wgslsmith_f_op_f32(max(326f, -1319f)), _wgslsmith_f_op_f32(-1722f + 1608f)), vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], true, false)), global0[_wgslsmith_index_u32(u_input.b, 23u)], true, !global0[_wgslsmith_index_u32(22987u, 23u)])))), Struct_2(abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(var_1, vec3<u32>(0u, 3075u, 74239u)), ~vec3<u32>(57156u, var_1.x, u_input.c.x), ~u_input.c)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1130f + -922f) - -1571f), all(select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 23u)], global0[_wgslsmith_index_u32(28541u, 23u)], global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(25542u, 23u)]), global0[_wgslsmith_index_u32(1u, 23u)]))), 1u, _wgslsmith_clamp_vec2_u32(u_input.c.yx, vec2<u32>(var_1.x, 4294967295u) << (vec2<u32>(0u, 37802u) % vec2<u32>(32u)), ~vec2<u32>(u_input.c.x, 38190u)) | ~(vec2<u32>(53485u, 72732u) << (vec2<u32>(var_1.x, 47335u) % vec2<u32>(32u)))));
    var_0 = -select(vec2<i32>(0i, var_0.x), _wgslsmith_mult_vec2_i32(~(u_input.a.wy & u_input.a.xy), select(u_input.a.wy | u_input.a.xx, _wgslsmith_add_vec2_i32(u_input.a.wz, u_input.a.xx), true)), global0[_wgslsmith_index_u32(abs(var_1.x) ^ _wgslsmith_dot_vec2_u32(~var_1.yx, vec2<u32>(23948u, var_1.x)), 23u)]);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_0.x));
}

