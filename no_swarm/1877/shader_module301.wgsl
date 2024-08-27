struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, false, false, false, false, true, false, false, true, false, true, false, false, false, false, false, true, true, true, false, true, false, false, true, true, true, true, false, false);

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(-1i, Struct_1(4294967295u, 1u), -1i), Struct_2(12357i, Struct_1(0u, 1u), -1i), Struct_2(2147483647i, Struct_1(34139u, 22822u), 2746i), Struct_2(-18560i, Struct_1(1u, 1u), 1762i), Struct_2(i32(-2147483648), Struct_1(50332u, 0u), 0i), Struct_2(-32139i, Struct_1(27037u, 0u), 0i), Struct_2(1i, Struct_1(1u, 42657u), -1i), Struct_2(2147483647i, Struct_1(16001u, 1u), -3406i), Struct_2(2147483647i, Struct_1(87424u, 6770u), 32080i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(781f - _wgslsmith_f_op_f32(f32(-1f) * -1360f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(779f * 652f), -478f)) * 2355f)));
    let var_1 = !vec2<bool>(select(false, true, !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1, 10300u), 30u)]), select(true, false, true));
    var var_2 = !(!(_wgslsmith_sub_i32(u_input.a.x, -33115i) > select(-4279i, u_input.a.x << (30244u % 32u), -10544i > u_input.a.x)));
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    return 92535u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: i32) -> Struct_3 {
    var var_0 = Struct_2(arg_2, Struct_1(904u, 4294967295u), -(-2147483647i & -u_input.a.x));
    global1 = array<Struct_2, 9>();
    var var_1 = vec2<i32>(u_input.a.x, -arg_2);
    global0 = array<bool, 30>();
    var var_2 = -2147483647i;
    return Struct_3(abs(func_3(Struct_3(var_0.b.a), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 58610u, var_0.b.b, 1u), ~arg_0), reverseBits(abs(arg_0.wz)), _wgslsmith_mult_vec3_u32(arg_1, vec3<u32>(123894u, arg_0.x, arg_0.x)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(arg_2.a, 30u)] == any(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], true, global0[_wgslsmith_index_u32(arg_2.a, 30u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_2.a, 30u)]), global0[_wgslsmith_index_u32(arg_2.a, 30u)]), !vec3<bool>(global0[_wgslsmith_index_u32(arg_2.a, 30u)], false, global0[_wgslsmith_index_u32(25292u, 30u)]), true), select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_2.a, 30u)], true, false), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 30u)], false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], false, global0[_wgslsmith_index_u32(arg_2.a, 30u)]), vec3<bool>(global0[_wgslsmith_index_u32(19401u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], true)), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(9464u, 30u)], false)), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.a, 30u)], global0[_wgslsmith_index_u32(35546u, 30u)], false), all(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a, 30u)], global0[_wgslsmith_index_u32(arg_2.a, 30u)])))));
    global1 = array<Struct_2, 9>();
    let var_1 = select((vec3<i32>(u_input.a.x, -u_input.a.x, select(u_input.a.x, u_input.a.x, false)) | vec3<i32>(abs(7048i), 2147483647i, u_input.a.x)) >> (firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(6798u, arg_2.a, 1u), vec3<u32>(4294967295u, 1u, 0u))) % vec3<u32>(32u)), ~vec3<i32>(u_input.a.x, u_input.a.x, (i32(-1i) * -23265i) << (~arg_2.a % 32u)), true);
    var var_2 = select(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(50748u, 30u)], false)), select(vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(13330u, 30u)], false, true)), true), select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 30u)], false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 30u)], false), false), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 30u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2.a, 30u)])), 1u < arg_2.a), vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.a, 30u)], global0[_wgslsmith_index_u32(10652u, 30u)], global0[_wgslsmith_index_u32(18457u, 30u)], true)) && true, any(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(134742u, 30u)])))), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(41474u, arg_2.a), 30u)])), global0[_wgslsmith_index_u32(~firstTrailingBit(9005u), 30u)]);
    return func_2(abs(~(select(vec4<u32>(28993u, arg_2.a, arg_2.a, 0u), vec4<u32>(arg_2.a, 4294967295u, arg_2.a, 4294967295u), true) ^ ~vec4<u32>(7719u, arg_2.a, 4294967295u, 1u))), ~(~countOneBits(vec3<u32>(87124u, arg_2.a, arg_2.a))), select(var_1.x | (i32(-1i) * -2147483647i), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(var_1.x, var_1.x))), true));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = vec3<f32>(-740f, 630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-438f + -1534f), _wgslsmith_f_op_f32(round(-841f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(653f)))))));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(select(var_0.yx, var_0.zx, !select(select(vec2<bool>(global0[_wgslsmith_index_u32(34923u, 30u)], false), vec2<bool>(global0[_wgslsmith_index_u32(26079u, 30u)], global0[_wgslsmith_index_u32(4203u, 30u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 30u)])), vec2<bool>(global0[_wgslsmith_index_u32(1u, 30u)], false), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1948f, _wgslsmith_f_op_f32(-var_0.x), 1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(655f, -429f, 509f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 717f) - vec3<f32>(939f, 1164f, -1294f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-557f, 274f, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1630f, -762f, var_0.x)), vec3<f32>(var_0.x, 1468f, var_0.x)))), func_2(select(vec4<u32>(17268u, 10513u, 71962u, 0u), vec4<u32>(1u, 1u, 1u, 1u), !(!vec4<bool>(arg_0, arg_0, false, false))), ~select(firstTrailingBit(vec3<u32>(28268u, 47564u, 26128u)), vec3<u32>(21109u, 1u, 0u), any(vec2<bool>(true, arg_0))), u_input.a.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.xx + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(202f, 1102f), var_0.xy, false))), var_0.zz)))));
    global1 = array<Struct_2, 9>();
    global0 = array<bool, 30>();
    var var_2 = select(select(vec3<bool>(true, !(12423u != var_1.a), !(!arg_0)), !select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_1.a, 30u)]), vec3<bool>(false, arg_0, true), true), select(select(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.a, 30u)], global0[_wgslsmith_index_u32(var_1.a, 30u)], global0[_wgslsmith_index_u32(var_1.a, 30u)]), vec3<bool>(true, arg_0, false), !vec3<bool>(true, arg_0, global0[_wgslsmith_index_u32(17901u, 30u)])), vec3<bool>(all(vec4<bool>(false, arg_0, true, true)), false, false), _wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(-var_0.x))), !vec3<bool>(false, all(vec3<bool>(global0[_wgslsmith_index_u32(var_1.a, 30u)], true, arg_0)) && all(vec3<bool>(false, arg_0, arg_0)), true), (!(!arg_0) & arg_0) == !(!all(vec2<bool>(false, true))));
    return 80221u;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: f32) -> StorageBuffer {
    var var_0 = !any(!(!select(vec2<bool>(false, false), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.b.b, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], true))));
    var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-arg_1))), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f) * -834f))));
    var var_2 = (firstLeadingBit(-2147483647i) >> (_wgslsmith_sub_u32(arg_0.b.b, 44961u) % 32u)) | arg_2;
    global1 = array<Struct_2, 9>();
    return StorageBuffer(arg_0.b.a, vec3<i32>(_wgslsmith_dot_vec4_i32((vec4<i32>(-1i, u_input.a.x, arg_0.a, u_input.a.x) << (vec4<u32>(arg_0.b.a, 8720u, 4294967295u, 1u) % vec4<u32>(32u))) << (vec4<u32>(8785u, 3922u, 19668u, arg_0.b.a) % vec4<u32>(32u)), abs(-vec4<i32>(-2147483647i, -18153i, -2147483647i, arg_2))), u_input.a.x, _wgslsmith_mod_i32(arg_2, 1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(floor(-354f)))) - _wgslsmith_f_op_f32(var_1.x - -452f))), 0i, arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    var var_0 = Struct_3(69276u);
    global1 = array<Struct_2, 9>();
    let var_1 = false;
    global0 = array<bool, 30>();
    let x = u_input.a;
    s_output = func_5(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a & 56276u, var_0.a & 0u), vec2<u32>(func_1(var_1), abs(1u))), 9u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-721f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(315f, -609f)) - _wgslsmith_f_op_f32(abs(-1603f)))))), abs(u_input.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -863f))), 1f))));
}

