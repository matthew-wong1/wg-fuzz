struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
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

var<private> global0: vec3<i32> = vec3<i32>(-1i, -20602i, 35020i);

var<private> global1: vec2<u32>;

var<private> global2: i32 = 13081i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    let var_0 = select(!(!vec4<bool>(arg_0.x, arg_0.x | false, all(vec3<bool>(arg_0.x, false, false)), true)), arg_0, arg_0.x);
    global0 = vec3<i32>(global0.x, 1i, abs(-select(u_input.c.x, 3794i, false)) ^ 0i);
    global1 = max(~(~(~vec2<u32>(2845u, 0u))), vec2<u32>(select(1u, global1.x, false), 59175u)) << (~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, global1.x, u_input.a), vec4<u32>(global1.x, 32486u, 4294967295u, 21692u)), global1.x), global1.x) % vec2<u32>(32u));
    var var_1 = Struct_3(Struct_1(vec3<u32>(~9u, 32466u, _wgslsmith_dot_vec4_u32(~vec4<u32>(2155u, 3001u, 64441u, global1.x), abs(vec4<u32>(u_input.b, 62770u, 4294967295u, 1u)))), 361f), Struct_1(_wgslsmith_mod_vec3_u32(~select(vec3<u32>(u_input.b, 2252u, u_input.b), vec3<u32>(666u, 0u, 1u), var_0.x), ~vec3<u32>(u_input.b, 1u, global1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1098f, -1270f)), _wgslsmith_f_op_f32(375f - 941f)) + -177f)), Struct_1(vec3<u32>(20936u, ~u_input.a, global1.x), 1f));
    global2 = u_input.c.x;
    return ~u_input.c;
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(17766u, 84062u, 1985u), reverseBits(vec3<u32>(u_input.a, 1u, global1.x) & vec3<u32>(7348u, 0u, 0u))), arg_0), Struct_1(~(~vec3<u32>(1u, u_input.b, 24103u) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 0u, global1.x), vec3<u32>(global1.x, 0u, u_input.b))), _wgslsmith_f_op_f32(-arg_0)), Struct_1(~vec3<u32>(~14259u, _wgslsmith_clamp_u32(1u, 47168u, 0u), ~u_input.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1167f) - 259f)))));
    global0 = _wgslsmith_div_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(func_3(vec4<bool>(true, false, arg_1, arg_1)), -vec3<i32>(u_input.e, global0.x, 30351i), vec3<i32>(27172i, 1i, -53740i)), u_input.c)) >> (firstTrailingBit(select(~max(var_0.b.a, vec3<u32>(17596u, 1u, global1.x)), vec3<u32>(global1.x, _wgslsmith_mod_u32(u_input.b, 1u), global1.x), true)) % vec3<u32>(32u));
    global1 = ~var_0.b.a.zz;
    let var_1 = reverseBits(~countOneBits(vec4<i32>(-u_input.e, min(0i, 55723i), _wgslsmith_clamp_i32(-22743i, global0.x, u_input.d), u_input.d)));
    let var_2 = vec4<f32>(var_0.a.b, 1787f, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b * _wgslsmith_div_f32(1000f, 1300f)) - arg_0), 582f));
    return _wgslsmith_mod_u32(var_0.a.a.x, _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, 0u, 4294967295u), vec4<u32>(u_input.a, var_0.c.a.x, u_input.a, 4294967295u))), _wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(global1.x, 88300u, global1.x, u_input.a), vec4<u32>(11613u, var_0.b.a.x, u_input.b, var_0.c.a.x), true)), firstTrailingBit(min(vec4<u32>(u_input.b, 4294967295u, u_input.a, u_input.b), vec4<u32>(var_0.b.a.x, 4294967295u, 50246u, var_0.c.a.x))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, _wgslsmith_f_op_f32(max(-269f, -1595f)), _wgslsmith_f_op_f32(-432f * 1581f), -375f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1001f, 954f, 491f, 1582f)))))))));
    let var_1 = 14673u >> (_wgslsmith_dot_vec3_u32(countOneBits(~(~vec3<u32>(global1.x, 0u, global1.x))), vec3<u32>(~global1.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, u_input.a), vec4<u32>(global1.x, 0u, global1.x, global1.x))), ~firstTrailingBit(global1.x))) % 32u);
    let var_2 = vec4<bool>(false, !(24587u != func_2(var_0.x, true)) & !any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), true, false);
    let var_3 = Struct_4(vec4<f32>(1084f, -1629f, _wgslsmith_f_op_f32(-var_0.x), -1879f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * -2487f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_2.x)) - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -160f), -1994f)), _wgslsmith_div_i32(min(~_wgslsmith_mod_i32(-2147483647i, 9487i), _wgslsmith_sub_i32(-1i, -global0.x)), ~u_input.d));
    let var_4 = global1.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(846f)), var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) * 1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(~(-u_input.c));
    let var_0 = Struct_1(vec3<u32>(~77110u, ~abs(global1.x), 4294967295u), -1149f);
    var var_1 = Struct_4(vec4<f32>(-493f, -179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1497f, -1321f) + _wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, -1760f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2093f, 725f)), _wgslsmith_f_op_f32(sign(1549f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b, 1276f, -847f, var_0.b))) + vec4<f32>(var_0.b, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(func_1())), var_0.b, -1214f)), u_input.e);
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(min(1836f, var_1.b.x)), _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_div_f32(var_1.b.x, _wgslsmith_div_f32(var_1.a.x, 564f)))), _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_1.a.x) + var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -512f)), _wgslsmith_f_op_vec4_f32(trunc(var_1.a)), var_1.c);
    var var_3 = ~(~var_0.a.zz) | ~_wgslsmith_div_vec2_u32(~var_0.a.xz, reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, 4294967295u), var_0.a.yx)));
    let var_4 = Struct_3(var_0, var_0, var_0);
    var var_5 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a.yyz) + _wgslsmith_f_op_vec3_f32(-var_1.b.zzy))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1205f, -2101f, _wgslsmith_f_op_f32(var_0.b * -456f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-880f, var_1.b.x, 1875f)), vec3<f32>(-1725f, -1463f, -1000f))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x + 1348f), _wgslsmith_f_op_f32(func_1())))), vec2<f32>(-413f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b.x), var_4.c.b))), !vec2<bool>(any(vec3<bool>(true, false, true)), true))), 92067u, _wgslsmith_div_vec3_u32(var_4.c.a, ~vec3<u32>(u_input.b & 0u, reverseBits(var_5.a.x), ~11800u)));
}

