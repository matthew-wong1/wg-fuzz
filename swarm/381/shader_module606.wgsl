struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    global1 = Struct_2(global1.a, global1.a.c, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(arg_0.c))), select(~_wgslsmith_clamp_vec3_u32(global1.a.e, ~vec3<u32>(global1.a.e.x, global1.d.x, arg_0.a), ~vec3<u32>(1u, u_input.c, arg_0.e.x)), global1.d, u_input.b.x < _wgslsmith_clamp_u32(~global1.d.x, firstTrailingBit(1u), 1u)));
    let var_0 = global1.a.b;
    let var_1 = -687f;
    global0 = array<vec4<bool>, 29>();
    var var_2 = (u_input.b.x < 63116u) != !(_wgslsmith_f_op_f32(-1447f * _wgslsmith_f_op_f32(abs(var_1))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c * global1.b), _wgslsmith_f_op_f32(var_1 + global1.b)));
    return -global1.a.b.x;
}

fn func_3() -> vec3<u32> {
    global1 = Struct_2(global1.a, 918f, _wgslsmith_f_op_f32(global1.a.c * _wgslsmith_div_f32(-201f, -483f)), vec3<u32>(10341u, u_input.b.x, 49581u));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-824f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.c, 889f, global1.a.d)) - 1f)), -750f));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(456f, -1243f) - vec2<f32>(var_0.x, -612f)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -823f), vec2<f32>(1214f, -173f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1066f) - vec2<f32>(1000f, global1.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c, 460f))))));
    var var_1 = !vec3<bool>(global1.a.d, any(!vec4<bool>(false, global1.a.d, false, global1.a.d)), global1.a.d);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1069f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.c)) * _wgslsmith_div_f32(2480f, global1.b))))))));
    return _wgslsmith_add_vec3_u32(~abs(~u_input.a), ~vec3<u32>(global1.a.a, ~u_input.a.x, 48145u | global1.d.x)) ^ (u_input.a & vec3<u32>(min(~0u, _wgslsmith_mod_u32(16229u, global1.a.e.x)), 1u, u_input.c));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(arg_0 * -694f))))), _wgslsmith_f_op_f32(sign(-404f)), min(vec3<u32>(~_wgslsmith_mult_u32(arg_1.a, 27472u), ~arg_3.a, 5004u), vec3<u32>(min(arg_1.e.x, arg_3.a), ~1u, 1u)));
    let var_0 = !(!select(!global0[_wgslsmith_index_u32(u_input.c, 29u)], select(select(global0[_wgslsmith_index_u32(global1.a.e.x, 29u)], vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(arg_1.a, 29u)]), !global0[_wgslsmith_index_u32(global1.a.a, 29u)], true), global0[_wgslsmith_index_u32(1u, 29u)]));
    global1 = Struct_2(arg_3, arg_2.x, arg_3.c, func_3());
    var var_1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(select(_wgslsmith_mult_u32(global1.d.x, 12601u), 4294967295u, global1.a.d), firstTrailingBit(arg_3.a), ~_wgslsmith_dot_vec3_u32(arg_1.e, vec3<u32>(6002u, arg_3.e.x, 58793u)), 0u), reverseBits(countOneBits(vec4<u32>(u_input.b.x, 36474u, arg_3.a, 13019u))) >> (~(~vec4<u32>(97806u, 0u, 74177u, 9809u)) % vec4<u32>(32u))));
    var var_2 = Struct_1(~1u, _wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.b.x, 1i, -(arg_3.b.x ^ 33063i), 1i), ~((arg_3.b & arg_3.b) ^ arg_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))), var_0.x, firstLeadingBit(select(firstLeadingBit(vec3<u32>(var_1.x, u_input.d, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.d, arg_3.a), vec3<u32>(4294967295u, arg_3.e.x, arg_1.a)) << (arg_3.e % vec3<u32>(32u)), !any(var_0.wyz))));
    return _wgslsmith_f_op_f32(exp2(arg_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(0u, vec4<i32>(func_1(global1.a, vec2<bool>(false, global1.a.d)), global1.a.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.b.x, 80158i), global1.a.b.ww >> (vec2<u32>(global1.a.a, 1u) % vec2<u32>(32u))), _wgslsmith_clamp_i32(-26445i, _wgslsmith_sub_i32(global1.a.b.x, -38066i), ~(-1i))), _wgslsmith_f_op_f32(-1284f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1000f, Struct_1(16214u, global1.a.b, -386f, false, global1.d), vec3<f32>(global1.a.c, 1252f, -267f), global1.a)))), true, vec3<u32>(reverseBits(4294967295u), 1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c - global1.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(f32(-1f) * -1158f))) * global1.a.c), _wgslsmith_f_op_f32(-global1.a.c), max(vec3<u32>(global1.a.a, 4294967295u ^ u_input.c, ~u_input.c), firstTrailingBit(u_input.a) & ~u_input.a) << (vec3<u32>(1u, ~45876u & reverseBits(global1.d.x), global1.a.e.x | ~global1.a.a) % vec3<u32>(32u)));
    global0 = array<vec4<bool>, 29>();
    var var_1 = ~(~(((global1.a.e | u_input.a) >> (_wgslsmith_div_vec3_u32(global1.a.e, u_input.a) % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), _wgslsmith_clamp_u32(u_input.d, 1u, 12103u), 31386u)));
    global0 = array<vec4<bool>, 29>();
    let var_2 = Struct_2(Struct_1(global1.a.e.x, abs(select(vec4<i32>(global1.a.b.x, var_0.a.b.x, 55718i, -1i), global1.a.b << (vec4<u32>(u_input.c, var_1.x, 1u, var_1.x) % vec4<u32>(32u)), !global0[_wgslsmith_index_u32(1u, 29u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(556f, Struct_1(var_0.a.a, vec4<i32>(global1.a.b.x, var_0.a.b.x, -69899i, var_0.a.b.x), 319f, global1.a.d, vec3<u32>(var_0.d.x, 59800u, u_input.b.x)), vec3<f32>(504f, 266f, -561f), global1.a)) + global1.c), true, var_0.d), -1000f, -538f, global1.a.e);
    let var_3 = Struct_1(_wgslsmith_mod_u32(~(~38429u), _wgslsmith_add_u32(_wgslsmith_add_u32(var_1.x, 73381u), ~var_1.x)) >> ((var_0.d.x | var_0.d.x) % 32u), vec4<i32>(firstLeadingBit(var_2.a.b.x) & (i32(-1i) * -1i), -55946i, var_2.a.b.x, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1483f), var_0.a.d, var_2.d);
    var var_4 = Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(min(vec4<u32>(var_2.d.x, global1.d.x, var_3.a, 33983u), vec4<u32>(var_3.e.x, 0u, global1.a.a, 105832u)), ~vec4<u32>(12495u, 4294967295u, var_1.x, var_1.x)), firstTrailingBit(~vec4<u32>(var_0.d.x, 0u, global1.a.a, 4294967295u))), -(vec4<i32>(~11662i, _wgslsmith_sub_i32(var_0.a.b.x, 0i), -2757i, var_2.a.b.x) >> (~vec4<u32>(1u, 4294967295u, 62204u, 70589u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.c))), global1.a.d, global1.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~(-31164i) >> ((select(4294967295u, var_2.d.x, false) | ~var_0.d.x) % 32u), -44583i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_3.c) - vec2<f32>(886f, var_2.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, -302f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b, var_0.a.c))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c, var_4.c)))))));
}

