struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(42955u, 0u, 4294967295u, 0u, 1u, 4294967295u, 18019u, 0u, 4294967295u, 34262u, 3639u, 51277u, 42943u, 8436u, 31648u, 71999u, 1u, 707u, 4294967295u, 18560u, 4294967295u, 4294967295u);

var<private> global1: array<u32, 5>;

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(0u, vec2<f32>(-590f, 1000f), vec2<f32>(732f, 749f), 0u, vec3<f32>(871f, -1634f, 692f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global3 = Struct_1(max(abs(select(~0u, arg_2.a.d, true)), 1u), vec2<f32>(_wgslsmith_f_op_f32(806f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2253f, -952f)) - _wgslsmith_f_op_f32(-1831f - arg_1.e.x))), -917f), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.e.x))))), select(global1[_wgslsmith_index_u32(0u, 5u)], global3.a, any(vec4<bool>(true, true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -1879f)))), arg_2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, -719f) - -2001f))));
    var var_0 = Struct_3(0u, vec3<bool>(false, true, true), arg_0.a.x);
    global0 = array<u32, 22>();
    let var_1 = true;
    global0 = array<u32, 22>();
    return arg_0.a.x;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_4 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(418f)), _wgslsmith_f_op_f32(-1086f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - global3.b.x))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec2<f32>(428f, global3.c.x)), Struct_1(arg_1, vec2<f32>(global3.b.x, 661f), vec2<f32>(arg_0, 1639f), 4294967295u, vec3<f32>(arg_0, 761f, arg_0)), Struct_2(Struct_1(1u, global3.e.xx, global3.e.xx, 34818u, global3.e), u_input.c))))));
    var var_1 = Struct_1(~50710u, _wgslsmith_div_vec2_f32(var_0.wy, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.wz, global3.e.zx) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.e.xy), _wgslsmith_div_vec2_f32(var_0.xw, var_0.zx)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -693f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -277f), vec2<f32>(-115f, var_0.x)) + _wgslsmith_f_op_vec2_f32(sign(var_0.zz)))), ~(~abs(global1[_wgslsmith_index_u32(global3.d, 5u)])), var_0.xzy);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2116f, 443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1450f + _wgslsmith_f_op_f32(-1000f - arg_0)) + _wgslsmith_f_op_f32(f32(-1f) * -909f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, global3.c.x, true)) - arg_0)))));
    var var_3 = Struct_1(0u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1625f - _wgslsmith_f_op_f32(step(1194f, 564f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-729f, _wgslsmith_f_op_f32(arg_0 + var_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.e.x))), global3.b.x), _wgslsmith_div_u32(global3.d, 23794u) << (4294967295u % 32u), var_0.zzy);
    var var_4 = vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~firstTrailingBit(vec4<u32>(global3.a, 16428u, arg_1, 19293u))), vec4<u32>(var_3.a, arg_1, min(~global3.a, ~global1[_wgslsmith_index_u32(4294967295u, 5u)]), ~min(var_1.a, global1[_wgslsmith_index_u32(0u, 5u)]))), 22u)], max(var_3.d, var_3.d), firstTrailingBit(global3.d), 1u);
    return Struct_4(var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32) -> Struct_4 {
    let var_0 = Struct_1(arg_0.d, arg_0.b, arg_0.b, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_2, 4294967295u, global0[_wgslsmith_index_u32(global3.a, 22u)], arg_0.a)) | (max(vec4<u32>(25931u, 1u, 41357u, 66047u), vec4<u32>(global0[_wgslsmith_index_u32(2931u, 22u)], 76397u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27206u, 5u)], 22u)], 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)])) | ~vec4<u32>(arg_0.a, 12325u, arg_2, arg_2)), vec4<u32>(_wgslsmith_div_u32(0u, 120628u & arg_2), ~(~arg_2), arg_2, reverseBits(~20398u))), vec3<f32>(313f, _wgslsmith_f_op_f32(ceil(arg_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -199f)));
    global3 = arg_0;
    let var_1 = -(~vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-12557i, -1i, u_input.c), vec3<i32>(0i, u_input.c, 0i)), u_input.a.x), -_wgslsmith_sub_i32(u_input.a.x, 2147483647i)));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b * arg_0.e.zz)))))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1022f);
    return Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, var_0.e.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a)), vec2<bool>(true, arg_1.a.x >= 633f))))));
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> vec4<f32> {
    global2 = ~global3.a;
    var var_0 = Struct_3(firstTrailingBit(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24619u, 5u)], 5u)], u_input.b.x, global3.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9545u, 5u)], 5u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 22u)], 0u, 15534u) | vec4<u32>(0u, 7746u, global1[_wgslsmith_index_u32(4294967295u, 5u)], 117294u)))), vec3<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), true)), any(vec2<bool>(false, true)), -413f == _wgslsmith_f_op_f32(func_4(Struct_1(4294967295u, vec2<f32>(-309f, global3.c.x), vec2<f32>(arg_0.a.x, arg_1), global3.d, global3.e), Struct_4(vec2<f32>(arg_1, global3.b.x)), 16571u).a.x * _wgslsmith_f_op_f32(f32(-1f) * -1437f))), 2030f);
    var var_1 = select(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(global1[_wgslsmith_index_u32(0u, 5u)], 67018u, 1u, 1u), firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(27311u, 5u)], var_0.a, global3.a, global1[_wgslsmith_index_u32(u_input.b.x, 5u)])), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), ~(~vec4<u32>(27188u, 1u, var_0.a, 8373u))), _wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(0u, 6130u, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 4294967295u)), vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.a, 114527u, 0u), 5u)], _wgslsmith_mod_u32(77472u, 4294967295u), max(global0[_wgslsmith_index_u32(global3.d, 22u)], u_input.b.x), global3.d & global3.d))), ~(select(vec4<u32>(var_0.a, u_input.b.x, 0u, global0[_wgslsmith_index_u32(22956u, 22u)]), ~vec4<u32>(4294967295u, 42374u, global3.d, 47523u), var_0.b.x) ^ max(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(997u, 5u)], 5u)], 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 92795u, 1u, 73043u), vec4<u32>(u_input.b.x, 61474u, 0u, u_input.b.x)))), true);
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -495f), global3.e.x, -758f, global3.e.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(912f, -1000f, -1000f, arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, -355f, arg_0.b.x, arg_1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f - global3.e.x)), _wgslsmith_div_f32(-401f, 1000f), 1149f, _wgslsmith_f_op_f32(-1272f - _wgslsmith_f_op_f32(-1000f + arg_0.e.x)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_1(4294967295u, vec2<f32>(arg_0.e.x, arg_1.x), vec2<f32>(global3.b.x, 300f), 45342u, vec3<f32>(arg_1.x, -1000f, -2072f)), func_2(global3.b.x, arg_0.d), abs(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1638u, 5u)], 22u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.c.x))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global3.e, vec3<f32>(_wgslsmith_f_op_f32(select(1257f, global3.e.x, u_input.c != u_input.c)), _wgslsmith_f_op_f32(sign(arg_1.x)), func_4(Struct_1(0u, arg_0.e.zy, arg_0.e.yy, 104084u, vec3<f32>(-733f, 393f, var_0.x)), Struct_4(vec2<f32>(-1000f, arg_0.e.x)), ~arg_0.d).a.x), ~(u_input.b.x | 4294967295u) >= (_wgslsmith_mod_u32(62887u, global0[_wgslsmith_index_u32(u_input.b.x, 22u)]) ^ arg_0.a)))));
    global1 = array<u32, 5>();
    var var_2 = u_input.b;
    var var_3 = Struct_2(arg_0, _wgslsmith_mod_i32(u_input.a.x, -firstTrailingBit(2147483647i) & -(24709i | u_input.c)));
    return ~var_3.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(min(u_input.b.x | 1u, 59723u ^ global0[_wgslsmith_index_u32(0u, 22u)]) ^ global0[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 5u)]);
    var var_1 = u_input.a;
    let var_2 = Struct_5(select(_wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global3.a, 5u)], 77612u, global0[_wgslsmith_index_u32(1u, 22u)], var_0.a), vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 5u)], var_0.a, var_0.b)), ~vec4<u32>(23935u, 104244u, 0u, 17332u), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false)), vec4<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 5u)], global3.a), global0[_wgslsmith_index_u32(func_1(Struct_1(global3.a, global3.b, vec2<f32>(1119f, 2109f), 4294967295u, vec3<f32>(2199f, -1000f, -2471f)), vec3<f32>(347f, 466f, global3.b.x)), 22u)], ~4294967295u, ~4294967295u)), 1u, any(vec3<bool>(all(vec4<bool>(true, false, false, false)), true, false))), ~(~4294967295u));
    let var_3 = -(~0i);
    var var_4 = Struct_2(Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(14497u, 1u, var_2.b), vec3<u32>(var_0.b, var_0.a, 4817u)) ^ reverseBits(~var_2.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.c.x, global3.e.x), vec2<f32>(-687f, global3.c.x)))) + global3.b), global3.b, _wgslsmith_dot_vec2_u32(abs(countOneBits(vec2<u32>(var_0.a, var_0.b))), ~u_input.b ^ vec2<u32>(global1[_wgslsmith_index_u32(36459u, 5u)], 1u)), global3.e), -var_3);
    var var_5 = false;
    let var_6 = -10395i;
    var_1 = _wgslsmith_add_vec2_i32(u_input.a, abs(_wgslsmith_sub_vec2_i32(u_input.a, firstLeadingBit(vec2<i32>(var_1.x, -53805i)))));
    let x = u_input.a;
    s_output = StorageBuffer(-42342i, reverseBits(-vec4<i32>(30252i, var_1.x, -14448i, abs(var_4.b))));
}

