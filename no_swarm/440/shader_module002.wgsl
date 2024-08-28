struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global0 = array<f32, 9>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 9u)])))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 9u)]))) * _wgslsmith_f_op_f32(ceil(-1481f)))));
    global0 = array<f32, 9>();
    var var_1 = Struct_4(u_input.a, vec4<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false)), false, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false))));
    var var_2 = Struct_1(true, vec4<f32>(var_0, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(abs(47815u), ~37978u)), 9u)], -1315f, 697f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2395f - 553f), -1000f), -878f, vec2<u32>(~28311u, _wgslsmith_dot_vec4_u32(~max(vec4<u32>(0u, 24674u, 932u, 1u), vec4<u32>(63630u, 9272u, 0u, 0u)), abs(vec4<u32>(1u, 1u, 36789u, 89733u)))));
    return all(select(!(!select(vec3<bool>(var_1.b.x, false, var_1.b.x), vec3<bool>(var_2.a, false, true), var_1.b.wzz)), vec3<bool>(true, any(vec2<bool>(true, var_1.b.x)), var_2.e.x <= max(4294967295u, var_2.e.x)), true));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> Struct_4 {
    var var_0 = select(vec2<bool>(func_3(), all(select(vec4<bool>(true, arg_0.a, arg_0.a, false), vec4<bool>(false, true, arg_0.a, arg_0.a), arg_0.a))), !(!(!(!vec2<bool>(false, arg_0.a)))), vec2<bool>(true, true));
    var var_1 = -abs(arg_2.x) & _wgslsmith_mod_i32(arg_2.x, arg_2.x);
    let var_2 = _wgslsmith_div_u32(arg_0.e.x, firstLeadingBit(_wgslsmith_add_u32(select(_wgslsmith_sub_u32(arg_0.e.x, 0u), ~arg_0.e.x, var_0.x), arg_0.e.x)));
    var_1 = firstLeadingBit(~u_input.b);
    var var_3 = Struct_4(_wgslsmith_clamp_i32(1i, ~(-1i), u_input.b), select(vec4<bool>(true, true, false, false || (-1i >= u_input.a)), !select(vec4<bool>(arg_0.a, arg_0.a, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, true, true), false), select(vec4<bool>(all(vec2<bool>(false, arg_0.a)), all(vec4<bool>(false, arg_0.a, true, var_0.x)), all(vec3<bool>(true, arg_0.a, arg_0.a)), all(vec4<bool>(false, var_0.x, var_0.x, true))), !vec4<bool>(var_0.x, arg_0.a, arg_0.a, var_0.x), vec4<bool>(func_3(), any(vec2<bool>(false, false)), !arg_0.a, var_2 >= 1u))));
    return Struct_4(arg_2.x, vec4<bool>(var_3.b.x, false, select(arg_2.x >= var_3.a, true, any(select(vec2<bool>(true, false), var_3.b.wy, true))), !var_0.x));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = vec4<u32>(4294967295u, ~arg_2, 1u, arg_2) | ~(firstTrailingBit(vec4<u32>(arg_2, 47694u, arg_2, 0u) & vec4<u32>(1u, 54172u, 30446u, 16063u)) ^ vec4<u32>(arg_2, firstTrailingBit(5716u), arg_2 & arg_2, arg_2 ^ 4294967295u));
    let var_1 = 4294967295u | select(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2, 85460u, var_0.x, var_0.x), vec4<u32>(arg_2, 37790u, 13455u, arg_2)), arg_2), var_0.x, arg_0.b.x);
    var var_2 = -arg_0.a;
    var var_3 = Struct_3(_wgslsmith_clamp_u32(31441u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(123351u, firstLeadingBit(0u)), 3134u), 4294967295u), 51840i, Struct_1(all(select(arg_0.b.zzw, vec3<bool>(arg_0.b.x, false, arg_0.b.x), arg_0.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-266f, _wgslsmith_f_op_f32(floor(358f)), _wgslsmith_f_op_f32(f32(-1f) * -1034f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(6996u, 9u)] + 1638f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(29033u, 9u)], 654f, 440f, 1694f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(49849u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], 520f, global0[_wgslsmith_index_u32(arg_2, 9u)]) + vec4<f32>(global0[_wgslsmith_index_u32(1u, 9u)], -1141f, 401f, global0[_wgslsmith_index_u32(arg_2, 9u)])))), 123f, -378f, vec2<u32>(~countOneBits(var_1), ~(115779u | var_0.x))));
    var var_4 = _wgslsmith_sub_u32(abs(~var_3.a), 57834u);
    return _wgslsmith_mod_u32(~(var_0.x & (~48300u & min(var_1, 4294967295u))), 1772u);
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_2 {
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    var var_0 = ~(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(40453u, 64670u), firstTrailingBit(vec2<u32>(0u, arg_1)))) << (abs(~(vec2<u32>(1308u, 4294967295u) ^ vec2<u32>(0u, arg_1))) % vec2<u32>(32u)));
    var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~reverseBits(vec2<u32>(var_0.x, var_0.x)), ~vec2<u32>(arg_1, 0u)), vec2<u32>(select(~4294967295u, 1u, true), 41885u)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~24141u, 0u), ~vec2<u32>(arg_1, 103770u)), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_1) << (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(arg_1, 3574u))))), vec2<u32>(reverseBits(18659u), var_0.x));
    let var_1 = global0[_wgslsmith_index_u32(~func_4(func_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(8823u, 9u)], 885f, global0[_wgslsmith_index_u32(22968u, 9u)], 563f))), 562f, -1653f, reverseBits(vec2<u32>(arg_1, arg_1))), _wgslsmith_f_op_f32(abs(-1277f)), vec3<i32>(arg_0, 58113i, u_input.b) >> (~vec3<u32>(var_0.x, arg_1, arg_1) % vec3<u32>(32u))), arg_0, ~2134u), 9u)];
    return Struct_2(~(vec2<u32>(~4294967295u, _wgslsmith_sub_u32(10566u, arg_1)) << (~(~vec2<u32>(30969u, arg_1)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_dot_vec4_i32(-(~vec4<i32>(16448i, u_input.b, u_input.a, u_input.b)), -(~vec4<i32>(u_input.b, -12984i, u_input.b, 7760i))), 4294967295u);
    let var_1 = u_input.b;
    global0 = array<f32, 9>();
    var var_2 = Struct_3(var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.a | u_input.a, 1i), var_1), firstLeadingBit(-(~vec2<i32>(var_1, u_input.a)))), Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(var_0.a.x, 9u)], global0[_wgslsmith_index_u32(44699u, 9u)], global0[_wgslsmith_index_u32(var_0.a.x, 9u)])))), -1054f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(9758u, 9u)] + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 9u)], -1237f))), _wgslsmith_add_vec2_u32(select(~var_0.a, var_0.a, func_2(Struct_1(true, vec4<f32>(893f, global0[_wgslsmith_index_u32(var_0.a.x, 9u)], -401f, global0[_wgslsmith_index_u32(0u, 9u)]), global0[_wgslsmith_index_u32(var_0.a.x, 9u)], -353f, vec2<u32>(var_0.a.x, var_0.a.x)), global0[_wgslsmith_index_u32(var_0.a.x, 9u)], vec3<i32>(53703i, 0i, 3921i)).b.yy), ~vec2<u32>(var_0.a.x, var_0.a.x))));
    global0 = array<f32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.c.e.x ^ 13964u, 9u)] - _wgslsmith_f_op_f32(f32(-1f) * -820f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f * var_2.c.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.c.c, global0[_wgslsmith_index_u32(44302u, 9u)]))))), ~(abs(vec4<u32>(72080u, var_2.c.e.x, var_2.c.e.x, 0u) & vec4<u32>(var_0.a.x, 33474u, 0u, var_0.a.x)) << (~min(vec4<u32>(var_2.a, var_0.a.x, 16938u, var_2.a), vec4<u32>(41472u, 75697u, 1u, 63929u)) % vec4<u32>(32u))), min(vec2<u32>(var_2.c.e.x, _wgslsmith_add_u32(1u, _wgslsmith_div_u32(var_2.c.e.x, 4294967295u))), func_1(var_2.b, abs(countOneBits(24495u))).a), var_0.a.x, 347f);
}

