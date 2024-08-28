struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(1200f, 191f, -472f, -1000f, 824f, 279f, -1325f, -1303f, 754f, 679f, 879f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> u32 {
    global0 = array<f32, 11>();
    var var_0 = max(~min(abs(arg_2.b), ~12063u), u_input.b) ^ countOneBits(min(u_input.b, u_input.c.x));
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    let var_1 = 4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u ^ (arg_2.b | 0u), u_input.b, 4294967295u, ~(0u << (u_input.b % 32u))), ~vec4<u32>(26365u, u_input.c.x, arg_2.b, u_input.b) & vec4<u32>(arg_2.b, u_input.c.x, ~arg_2.b, ~u_input.b)) % 32u);
    return _wgslsmith_add_u32(min(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_1), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_1), vec2<u32>(arg_2.b, var_1), vec2<u32>(42273u, 1u))) << ((_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(55397u, var_1)) & _wgslsmith_mod_u32(arg_2.b, arg_2.b)) % 32u), 4294967295u), ~1u);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-934f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + _wgslsmith_div_f32(arg_0.x, global0[_wgslsmith_index_u32(77479u, 11u)]))), _wgslsmith_f_op_f32(676f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0[_wgslsmith_index_u32(u_input.c.x, 11u)]));
    var var_1 = abs(_wgslsmith_sub_u32(~(~(u_input.c.x << (u_input.c.x % 32u))), _wgslsmith_add_u32(~firstLeadingBit(14266u), u_input.c.x)));
    let var_2 = ~(~(~firstLeadingBit(u_input.b)));
    var var_3 = u_input.d.x;
    let var_4 = Struct_5(~(~(func_3(arg_1, arg_1.a, Struct_3(vec3<bool>(true, true, true), 4294967295u, true)) & u_input.c.x)), vec4<bool>(select(true, any(vec3<bool>(false, false, true)), select(arg_0.x != global0[_wgslsmith_index_u32(u_input.b, 11u)], true, true)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true))), any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true)), true), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(-vec4<i32>(77315i, u_input.d.x, -10677i, u_input.a)), select(vec4<i32>(arg_1.a, 38382i, arg_1.a, 7097i) ^ vec4<i32>(-1i, 25331i, 1i, 2147483647i), -vec4<i32>(u_input.d.x, arg_2, arg_2, arg_2), false)), vec4<i32>(_wgslsmith_mod_i32(arg_2, -50442i), _wgslsmith_mod_i32(-1i, -2147483647i), 32326i, -33812i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-131f))));
}

fn func_1() -> f32 {
    global0 = array<f32, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1590f, 1215f)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1020f, global0[_wgslsmith_index_u32(4294967295u, 11u)])))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1057f, -1470f)))) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], _wgslsmith_f_op_f32(max(-779f, -106f)))), true)));
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    return _wgslsmith_f_op_f32(func_2(vec2<f32>(-313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(-536f * _wgslsmith_f_op_f32(min(1639f, -1570f))))), Struct_2(-u_input.a), -65965i));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: i32) -> vec3<u32> {
    var var_0 = Struct_5(12007u, vec4<bool>(all(!vec3<bool>(arg_1.x, false, true)), arg_1.x, any(!arg_1.wy), all(select(arg_1, select(vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(true, arg_1.x, false, false), arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, true)))), max(-(~u_input.a), 19959i));
    var_0 = Struct_5(4294967295u, !var_0.b, 8507i >> (0u % 32u));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-318f + -407f))) - _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 11u)], arg_0.x))))), _wgslsmith_f_op_f32(-arg_0.x), -858f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], _wgslsmith_f_op_f32(353f * arg_0.x)));
    var var_2 = ~(~max(select(vec4<u32>(u_input.c.x, var_0.a, 57499u, var_0.a), vec4<u32>(u_input.c.x, 11175u, u_input.b, var_0.a), vec4<bool>(var_0.b.x, true, false, arg_1.x)), ~vec4<u32>(u_input.b, 81460u, 4294967295u, 7048u)) << ((firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(13481u, u_input.b, 43418u, u_input.b), vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a))) & (abs(vec4<u32>(1u, 4294967295u, u_input.b, var_0.a)) & firstTrailingBit(vec4<u32>(u_input.c.x, var_0.a, 4294967295u, 2987u)))) % vec4<u32>(32u)));
    var_0 = Struct_5(_wgslsmith_sub_u32(firstTrailingBit(~countOneBits(43756u)), ~(_wgslsmith_clamp_u32(var_0.a, var_0.a, var_2.x) | var_2.x)), vec4<bool>(false, true, arg_1.x, (var_2.x & ~62669u) <= ~(~var_0.a)), _wgslsmith_mult_i32(-var_0.c, (1i | (u_input.a >> (1381u % 32u))) >> (abs(func_3(Struct_2(u_input.d.x), 2147483647i, Struct_3(var_0.b.wzw, 4294967295u, true))) % 32u)));
    return ~(~var_2.zxw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1169f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-755f + global0[_wgslsmith_index_u32(6305u, 11u)]) + global0[_wgslsmith_index_u32(4294967295u ^ u_input.b, 11u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 11u)])), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b)), 11u)])), vec4<bool>(true, true, select(select(true, true, select(true, true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), true), false), -1i);
    let var_1 = select(true, ((96515u | ~u_input.c.x) < 1u) || false, any(vec2<bool>(true, true)) || !(true | all(vec2<bool>(true, false))));
    let var_2 = Struct_3(!(!select(vec3<bool>(true, true, false), !vec3<bool>(false, var_1, true), select(vec3<bool>(false, true, true), vec3<bool>(var_1, true, var_1), false))), u_input.b, true);
    var var_3 = Struct_2(max(u_input.d.x, ~5948i));
    var var_4 = all(select(var_2.a, !var_2.a, !any(vec3<bool>(var_1, false, false))));
    var_0 = firstTrailingBit(max(reverseBits((vec3<u32>(u_input.c.x, u_input.c.x, 84748u) << (vec3<u32>(u_input.c.x, var_0.x, var_0.x) % vec3<u32>(32u))) | select(vec3<u32>(var_0.x, 13107u, 4294967295u), vec3<u32>(0u, var_0.x, var_0.x), var_2.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b | 103430u, u_input.c.x << (0u % 32u), min(37053u, var_0.x)), func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1153f, global0[_wgslsmith_index_u32(61958u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], 228f), vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 11u)], -1991f, 849f, -1718f))), !vec4<bool>(var_1, var_1, var_2.c, var_2.c), ~0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 11u)] * global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~min(var_0.x, var_0.x), _wgslsmith_clamp_u32(func_3(Struct_2(u_input.a), u_input.a, var_2), 38059u, _wgslsmith_mult_u32(0u, 17505u))), 11u)]));
}

