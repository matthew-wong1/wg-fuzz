struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(41858i, vec3<f32>(-955f, -417f, -1000f), vec3<u32>(1u, 4294967295u, 16627u)), vec2<u32>(35038u, 4294967295u), vec4<u32>(0u, 20292u, 223u, 1u), -242f), Struct_2(Struct_1(-1i, vec3<f32>(-837f, 176f, -2912f), vec3<u32>(68680u, 0u, 4294967295u)), vec2<u32>(1u, 4294967295u), vec4<u32>(0u, 0u, 8002u, 230u), -655f), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(-1200f, -2737f, -1348f), vec3<u32>(73903u, 43014u, 4294967295u)), vec2<u32>(1u, 0u), vec4<u32>(1u, 82109u, 0u, 0u), -1979f), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(164f, 1179f, -2425f), vec3<u32>(9256u, 41542u, 0u)), vec2<u32>(50357u, 9321u), vec4<u32>(49539u, 128190u, 0u, 46135u), -108f));

var<private> global1: array<u32, 13>;

var<private> global2: Struct_3 = Struct_3(vec4<i32>(-19010i, -45055i, i32(-2147483648), 2147483647i), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(-716f, 450f, 1642f), vec3<u32>(40586u, 1u, 45186u)), vec2<u32>(1u, 4294967295u), vec4<u32>(1u, 13692u, 1u, 1631u), -1140f));

var<private> global3: array<bool, 10> = array<bool, 10>(false, true, false, true, true, false, true, true, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_add_i32(2147483647i >> (~_wgslsmith_dot_vec2_u32(~global2.b.c.xx, arg_1.c.yx) % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, ~(-6743i)), vec3<i32>(-42280i, arg_0.x, arg_1.a)));
    let var_1 = select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(global2.b.a.c.x, 10u)] || global3[_wgslsmith_index_u32(1u, 10u)], true, !global3[_wgslsmith_index_u32(1u, 10u)], 0u > global1[_wgslsmith_index_u32(3895u, 13u)]), vec4<bool>(global3[_wgslsmith_index_u32(16594u & arg_1.c.x, 10u)], true, global3[_wgslsmith_index_u32(arg_1.c.x, 10u)] && global3[_wgslsmith_index_u32(arg_1.c.x, 10u)], select(global3[_wgslsmith_index_u32(arg_1.c.x, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)], true)), false), select(!(!vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(arg_1.c.x, 10u)])), !(!vec4<bool>(global3[_wgslsmith_index_u32(arg_1.c.x, 10u)], global3[_wgslsmith_index_u32(arg_1.c.x, 10u)], global3[_wgslsmith_index_u32(0u, 10u)], false)), false), global3[_wgslsmith_index_u32(~4294967295u, 10u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(arg_1.c.x, 10u)], false, false), global3[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 10u)]);
    var var_2 = global3[_wgslsmith_index_u32(reverseBits(~25534u), 10u)];
    global1 = array<u32, 13>();
    var var_3 = arg_3;
    return -2147483647i;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = vec2<i32>(-func_3(abs(vec4<i32>(global2.a.x, global2.b.a.a, global2.b.a.a, 206i)), Struct_1(2147483647i, vec3<f32>(arg_1.b.d, -1564f, 578f), vec3<u32>(global1[_wgslsmith_index_u32(0u, 13u)], 66523u, 4521u)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.b.a.b.x, global2.b.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.a.b.x, arg_3, -470f, arg_3))), u_input.a.x) & arg_1.a.xy;
    var var_1 = arg_1.b.a;
    let var_2 = arg_1;
    let var_3 = abs(var_0.x);
    var_0 = global2.a.zw;
    return global2.b.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(_wgslsmith_div_u32(19719u, 1u), ~46701u), firstTrailingBit(4294967295u)) >> (_wgslsmith_clamp_u32(~abs(global1[_wgslsmith_index_u32(arg_2.b.a.c.x, 13u)] >> (4294967295u % 32u)), ~global2.b.c.x, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.c.x, arg_2.b.b.x, 1u), vec3<u32>(0u, 50921u, global1[_wgslsmith_index_u32(46572u, 13u)])) | global2.b.b.x)) % 32u), 4u)];
    var var_1 = ~countOneBits(firstTrailingBit(~arg_1.c.zx | ~vec2<u32>(22792u, 0u)));
    var var_2 = -1000f;
    var var_3 = arg_0.b;
    var var_4 = global3[_wgslsmith_index_u32(abs(~(var_3.a.c.x ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, 0u, var_1.x, arg_2.b.a.c.x), vec4<u32>(27892u, global2.b.b.x, var_1.x, 3787u)))), 10u)];
    return _wgslsmith_f_op_f32(min(arg_2.b.a.b.x, _wgslsmith_div_f32(arg_0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-432f))))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = 1u;
    var var_1 = global2.b.a;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_3(-vec4<i32>(-1i, global2.a.x, 23263i, var_1.a), global2.b), func_2(u_input.a.x & ~u_input.a.x, Struct_3(countOneBits(global2.a), Struct_2(global2.b.a, var_1.c.zx, global2.b.c, var_1.b.x)), global2.a, global2.b.d), Struct_3(vec4<i32>(min(var_1.a, u_input.a.x), 1i, var_1.a, u_input.a.x), global2.b))), var_1.b.x);
    var_0 = max(global1[_wgslsmith_index_u32(26559u, 13u)], 13092u);
    var var_3 = global2.b.a;
    return Struct_3(firstLeadingBit(vec4<i32>(var_3.a, 18489i, abs(u_input.a.x), ~_wgslsmith_div_i32(11698i, global2.a.x))), Struct_2(func_2(-2147483647i, Struct_3(~vec4<i32>(global2.a.x, u_input.a.x, u_input.a.x, -12648i), global2.b), firstTrailingBit(-vec4<i32>(global2.a.x, 13518i, 0i, u_input.a.x)), -1196f), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(max(vec2<u32>(var_3.c.x, 0u), vec2<u32>(global2.b.a.c.x, 89959u)), var_3.c.xx), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(global2.b.b, var_3.c.xx), var_3.c.zz)), countOneBits(vec4<u32>(10840u, ~19426u, 1u, global2.b.c.x)), 334f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~4294967295u);
    global3 = array<bool, 10>();
    let var_1 = countOneBits(select(vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(6375i, 1i)), ~(-global2.b.a.a), 0i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, 1i), _wgslsmith_div_i32(var_0.a.x, -1i))), global2.a, all(vec3<bool>(global3[_wgslsmith_index_u32(~1u, 10u)], true, all(vec4<bool>(false, global3[_wgslsmith_index_u32(global2.b.a.c.x, 10u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.b.x, 13u)], 13u)], 10u)], false))))));
    let var_2 = _wgslsmith_f_op_f32(785f + var_0.b.a.b.x);
    let var_3 = !select(select(vec4<bool>(global3[_wgslsmith_index_u32(67380u, 10u)], true, false, true), !vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.a.c.x, 13u)], 13u)], 10u)]), !all(vec4<bool>(global3[_wgslsmith_index_u32(17067u, 10u)], true, global3[_wgslsmith_index_u32(80770u, 10u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 10u)]))), select(vec4<bool>(true, var_0.b.a.c.x == 1u, global3[_wgslsmith_index_u32(46926u, 10u)], true), select(select(vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.b.c.x, 13u)], 13u)], 13u)], 10u)], global3[_wgslsmith_index_u32(global2.b.b.x, 10u)], global3[_wgslsmith_index_u32(global2.b.a.c.x, 10u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 10u)], true, global3[_wgslsmith_index_u32(global2.b.b.x, 10u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 10u)], true, true)), !vec4<bool>(global3[_wgslsmith_index_u32(var_0.b.b.x, 10u)], global3[_wgslsmith_index_u32(48074u, 10u)], true, true), true), true | (u_input.a.x == global2.b.a.a)), !global3[_wgslsmith_index_u32(reverseBits(12475u >> (global2.b.b.x % 32u)), 10u)]);
    global1 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(min(reverseBits(42332u), firstLeadingBit(20090u)), _wgslsmith_sub_u32(global2.b.c.x, global1[_wgslsmith_index_u32(1u, 13u)]) | 4294967295u), ~abs(var_0.b.b.x)), var_0.b.a.b, _wgslsmith_div_vec2_f32(var_0.b.a.b.zz, global2.b.a.b.zy));
}

