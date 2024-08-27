struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(1u, 0u, 0u, 4294967295u, 17513u, 98308u, 4294967295u, 0u, 6620u, 4294967295u, 70841u, 4294967295u, 4294967295u, 0u, 0u, 18444u, 66943u, 22409u, 15728u, 0u, 0u, 4294967295u, 0u, 4294967295u, 0u, 1u);

var<private> global1: array<bool, 14> = array<bool, 14>(true, true, false, true, true, false, false, true, false, false, false, false, false, true);

var<private> global2: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(47038u, 13281u, 0u, 0u), vec4<u32>(55161u, 46817u, 982u, 21115u), vec4<u32>(53799u, 4294967295u, 1u, 11548u), vec4<u32>(1u, 4294967295u, 86447u, 107263u), vec4<u32>(83329u, 37188u, 49190u, 0u), vec4<u32>(0u, 55423u, 18214u, 64342u), vec4<u32>(1u, 4294967295u, 5658u, 4294967295u), vec4<u32>(45025u, 0u, 15984u, 1u), vec4<u32>(35722u, 46706u, 4294967295u, 4294967295u), vec4<u32>(10228u, 0u, 1u, 5917u), vec4<u32>(40709u, 0u, 51780u, 4294967295u), vec4<u32>(0u, 16612u, 25003u, 1u), vec4<u32>(19091u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 31384u, 92027u, 45089u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(0u, 0u, 29331u, 4294967295u), vec4<u32>(4294967295u, 9677u, 4294967295u, 1u), vec4<u32>(24756u, 30358u, 0u, 1u), vec4<u32>(4294967295u, 58003u, 1u, 4294967295u), vec4<u32>(54375u, 4294967295u, 1186u, 21710u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-303f, 781f)) - -1075f) - _wgslsmith_f_op_f32(abs(-229f)))), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1626f, 108f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28277u, 26u)], 14u)]))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1217f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -144f, var_0.x) - vec3<f32>(-306f, var_0.x, var_0.x))) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1799f, 1160f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1390f, 205f) + vec3<f32>(481f, 1907f, var_0.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1053f, var_0.x, var_0.x), vec3<f32>(1482f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -575f, 444f))))), !(!select(vec3<bool>(global1[_wgslsmith_index_u32(16133u, 14u)], global1[_wgslsmith_index_u32(6737u, 14u)], global1[_wgslsmith_index_u32(44984u, 14u)]), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 14u)], false, false), !global1[_wgslsmith_index_u32(u_input.a, 14u)]))));
    let var_1 = var_0.x;
    global0 = array<u32, 26>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x << (u_input.a % 32u), 4294967295u, ~(u_input.b.x ^ 10134u)), ~vec3<u32>(abs(global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), 0u, _wgslsmith_sub_u32(9847u, 0u))), 26u)] > reverseBits(~_wgslsmith_clamp_u32(~u_input.b.x, countOneBits(u_input.a), ~u_input.b.x));
    return -581f;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_1) -> vec2<f32> {
    global2 = array<vec4<u32>, 20>();
    var var_0 = arg_2.a.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_2.a.a.zwy);
    let var_2 = -10679i & ~abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, -19133i, arg_0.a.x), vec4<i32>(18830i, arg_0.a.x, 1i, arg_0.a.x)));
    var var_3 = arg_2.a.a.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.a.a.zy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.a.a.xy), _wgslsmith_f_op_vec2_f32(vec2<f32>(-158f, -1400f) * vec2<f32>(var_1.x, 115f))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-313f, -376f)) - var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a.x) - _wgslsmith_f_op_f32(func_3())))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(reverseBits(vec2<i32>(-3815i, 2415i))), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)] || false), Struct_3(Struct_1(vec4<f32>(568f, -669f, -576f, 1111f), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<u32>(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]))), Struct_1(vec4<f32>(687f, 1208f, 2287f, 324f), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 1u), vec4<u32>(4294967295u, 80700u, global0[_wgslsmith_index_u32(9837u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<u32>(59678u, 17758u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56988u, 26u)], 26u)]))))) * vec2<f32>(2278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-741f - 501f) - -247f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-731f, 1120f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-581f, -1039f)))))));
    var var_1 = Struct_3(Struct_1(vec4<f32>(-155f, -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * -262f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1299f))), !(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(47525u, 14u)], false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], true), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15955u, 26u)], 14u)])), u_input.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-249f)), var_0.x))))));
}

fn func_4(arg_0: f32, arg_1: f32) -> vec3<u32> {
    global0 = array<u32, 26>();
    var var_0 = Struct_2(firstTrailingBit(vec2<i32>(firstTrailingBit(-22097i) ^ firstLeadingBit(-6246i), -(~0i))));
    var var_1 = Struct_2(var_0.a);
    var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(63263i, _wgslsmith_mod_i32(2147483647i, 6468i)), ~vec2<i32>(6032i, var_0.a.x), select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 14u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 14u)]), false)), vec2<i32>(17199i | reverseBits(var_1.a.x), -var_0.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a.x, 2147483647i) | var_0.a, -vec2<i32>(var_0.a.x, -19585i)) ^ _wgslsmith_add_vec2_i32(var_0.a, vec2<i32>(20405i, var_1.a.x))));
    global0 = array<u32, 26>();
    return _wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, u_input.b.x, u_input.b.x), _wgslsmith_add_vec3_u32(firstTrailingBit(u_input.b.yxw), u_input.b.wxy), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.a, 26u)], 14u)], global1[_wgslsmith_index_u32(firstLeadingBit(1u), 14u)], any(!vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38295u, 26u)], 14u)])))), u_input.b.yzx, vec3<u32>(countOneBits(47627u), ~select(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21768u, 26u)], 26u)], 26u)], 26u)], ~global0[_wgslsmith_index_u32(1u, 26u)], false), 3289u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -582f) * _wgslsmith_f_op_f32(step(792f, _wgslsmith_f_op_f32(f32(-1f) * -537f)))));
    let var_1 = 10688i;
    var_0 = u_input.b.xyw;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-849f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-556f, -325f))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 906f, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(916f, var_2.x, 512f, var_2.x)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(u_input.b.x, 14u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 14u)]))), vec4<f32>(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(-884f, var_2.x), _wgslsmith_f_op_f32(-var_2.x)), !(!global1[_wgslsmith_index_u32(u_input.a, 14u)])))), vec3<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(8746u, var_0.x, var_0.x, var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 26u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36240u, 26u)], 26u)]), vec4<u32>(var_0.x, 33832u, var_0.x, global0[_wgslsmith_index_u32(u_input.a, 26u)]))) == 130u, all(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 14u)])))), ~_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(34927u, u_input.b.x, 0u, 77018u)), global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(var_0.x, var_0.x)), 20u)]));
    var_3 = Struct_1(var_3.a, select(var_3.b, select(var_3.b, var_3.b, true), true), global2[_wgslsmith_index_u32(11703u, 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(var_3.c.x, 26u)], var_3.c.x)), firstLeadingBit(~vec3<u32>(26992u, u_input.a, 0u))));
}

