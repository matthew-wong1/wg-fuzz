struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-910f, -2346f, 1641f, 1582f), vec4<f32>(-800f, -1102f, -165f, -177f), vec4<f32>(-980f, 168f, 730f, -1802f), vec4<f32>(1162f, 827f, 208f, 101f), vec4<f32>(368f, -453f, -129f, -1000f), vec4<f32>(485f, 273f, -278f, 1000f), vec4<f32>(-198f, 1027f, 1000f, -448f), vec4<f32>(-362f, 608f, -424f, -1039f), vec4<f32>(1000f, -583f, -1269f, -549f), vec4<f32>(-683f, 761f, -1000f, -1084f), vec4<f32>(1359f, -1403f, -1686f, 1437f), vec4<f32>(476f, 1747f, -1027f, -1377f), vec4<f32>(-731f, 1181f, 1061f, 469f), vec4<f32>(-101f, 1000f, -1866f, 1398f), vec4<f32>(-479f, 1106f, -1839f, 616f), vec4<f32>(-357f, -1000f, -1278f, 417f), vec4<f32>(174f, -903f, 2356f, -618f), vec4<f32>(896f, 1000f, -602f, 1553f), vec4<f32>(135f, 1913f, 437f, 626f), vec4<f32>(126f, 533f, -739f, -1110f), vec4<f32>(-2150f, -2514f, 278f, 1175f), vec4<f32>(-732f, -177f, -726f, -808f), vec4<f32>(-197f, 651f, 268f, -1000f));

var<private> global1: Struct_2 = Struct_2(Struct_1(-372f, -609f, -1i, 4294967295u), -9309i, true, Struct_1(-264f, -1118f, 18421i, 1u), vec3<f32>(443f, 247f, 227f));

var<private> global2: bool;

var<private> global3: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global4: array<Struct_3, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = global4[_wgslsmith_index_u32(~(~(~(~reverseBits(16200u)))), 24u)];
    global2 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(444f)), -461f)));
    let var_2 = Struct_2(global1.d, max(~(-(i32(-1i) * -2147483647i)), 37351i), global1.c, global1.d, global1.e);
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, global1.a.d, ~var_2.d.d) | reverseBits(firstTrailingBit(~vec3<u32>(global1.a.d, 69475u, u_input.c.x))), abs(vec3<u32>(0u, var_2.a.d, _wgslsmith_mod_u32(4294967295u, ~var_2.a.d))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1063f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -807f) - _wgslsmith_f_op_f32(329f - var_1.x))))), _wgslsmith_f_op_f32(step(476f, var_1.x))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(-294f));
    global3 = array<vec2<bool>, 6>();
    let var_1 = global4[_wgslsmith_index_u32(abs(reverseBits(1u)), 24u)];
    var var_2 = global1.a.c;
    global4 = array<Struct_3, 24>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(583f)))) + _wgslsmith_f_op_f32(func_3(any(vec4<bool>(false, var_1.b.x, true, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(921f, _wgslsmith_f_op_f32(var_1.a.x * -1556f))) + -584f), u_input.b.x, 22246u);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.e * vec3<f32>(-720f, -505f, -258f))))) - _wgslsmith_f_op_vec3_f32(exp2(arg_0.e)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1142f), -1052f, u_input.b.x, ~u_input.c.x), arg_3, arg_0.c, func_2(), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global1.e * var_0))))))));
    let var_2 = arg_0;
    let var_3 = ~_wgslsmith_mod_vec3_u32(select(~vec3<u32>(10155u, 1886u, 1u), max(~vec3<u32>(4294967295u, var_2.a.d, 1u), ~vec3<u32>(0u, var_1.d.d, var_1.d.d)), select(vec3<bool>(false, true, false), !vec3<bool>(true, false, arg_0.c), vec3<bool>(true, true, true))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.a.d, global1.a.d, var_1.d.d), vec4<u32>(12620u, 29918u, 0u, global1.d.d)), ~var_2.d.d, ~58835u) << (~abs(vec3<u32>(global1.a.d, 44703u, 33151u)) % vec3<u32>(32u)));
    var var_4 = Struct_5(Struct_4(Struct_1(_wgslsmith_f_op_f32(max(856f, _wgslsmith_f_op_f32(265f * arg_0.d.b))), _wgslsmith_f_op_f32(f32(-1f) * -1066f), global1.a.c, 1u), Struct_3(vec2<f32>(1000f, _wgslsmith_f_op_f32(select(1707f, -3099f, arg_0.c))), select(vec2<bool>(global1.c, true), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a.d, var_1.a.d), 6u)], true)), vec3<u32>(~58803u | (global1.d.d | var_1.d.d), select(var_2.d.d & global1.a.d, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.d, 5u), var_3.xy), global1.c | true), ~8068u)), arg_3, vec4<i32>(-1i, 0i, -min(abs(var_1.b), countOneBits(u_input.b.x)), ~_wgslsmith_dot_vec3_i32(u_input.b | u_input.b, min(u_input.b, vec3<i32>(arg_0.d.c, 0i, arg_2)))));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a - global1.e.x))), _wgslsmith_f_op_f32(min(global1.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.b), _wgslsmith_f_op_f32(-172f + global1.a.b)))), 0i, u_input.a), -(~_wgslsmith_mod_i32(global1.b, u_input.b.x)) >> (19654u % 32u), 1u <= ~global1.d.d, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1236f), -563f, i32(-1i) * -7250i, _wgslsmith_mult_u32(~(~4294967295u), func_1(Struct_2(Struct_1(-264f, -726f, -37702i, global1.d.d), -2147483647i, false, Struct_1(664f, 1000f, global1.d.c, global1.a.d), global1.e), _wgslsmith_f_op_f32(532f + global1.e.x), ~global1.a.c, -global1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(420f, _wgslsmith_f_op_f32(-363f * global1.e.x), _wgslsmith_f_op_f32(exp2(global1.e.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e * vec3<f32>(global1.a.b, 1000f, global1.a.b)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global1.d.b, 2231f, global1.c)), -756f, global1.e.x) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.e.x, global1.a.a, -456f))))));
    let var_1 = select(!vec4<bool>(global1.c, global1.e.x != -635f, true, 4294967295u == func_1(Struct_2(Struct_1(global1.d.b, global1.d.b, var_0.b, var_0.a.d), u_input.b.x, true, global1.d, var_0.e), var_0.a.b, -1119i, global1.a.c)), select(vec4<bool>(global1.c, var_0.c, var_0.c, !(!global1.c)), vec4<bool>(true, !global1.c, any(vec2<bool>(true, true)), false), var_0.c), vec4<bool>(!(all(global3[_wgslsmith_index_u32(1624u, 6u)]) && (var_0.c | global1.c)), all(vec2<bool>(var_0.c, false)) != any(!vec3<bool>(true, global1.c, true)), global1.c, !all(select(vec3<bool>(false, true, var_0.c), vec3<bool>(true, true, global1.c), true))));
    let var_2 = Struct_5(Struct_4(var_0.a, global4[_wgslsmith_index_u32(~14823u, 24u)], select(vec3<u32>(firstTrailingBit(4294967295u), u_input.a >> (u_input.c.x % 32u), 28030u), countOneBits(vec3<u32>(var_0.d.d, 12852u, u_input.c.x)), var_1.x & true)), -2147483647i, -(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b.x, u_input.b.x, 1i), vec4<i32>(18917i, global1.a.c, -2147483647i, 11613i))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(18840i, u_input.b.x), -31603i, max(18727i, 2147483647i), ~(-1i)), vec4<i32>(_wgslsmith_mod_i32(-33930i, var_0.a.c), 1i, reverseBits(u_input.b.x), select(global1.a.c, global1.a.c, var_0.c))));
    let var_3 = !global3[_wgslsmith_index_u32(global1.d.d, 6u)];
    let var_4 = var_2.a.a;
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(reverseBits(var_5.d), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.d, var_0.a.d, var_2.a.a.d, var_0.d.d), vec4<u32>(6129u, global1.d.d, 0u, 1u))), ~(~var_5.d)), var_2.a.c.yy >> (reverseBits(~var_2.a.c.xy) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-global1.e.yz), min(countOneBits(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(25353u, global1.d.d, 13813u, 1u), vec4<u32>(var_4.d, var_4.d, u_input.a, 73897u)), vec4<u32>(global1.d.d, var_0.d.d, 6203u, var_4.d) ^ vec4<u32>(var_0.d.d, global1.d.d, var_5.d, 65488u), ~vec4<u32>(1u, var_0.d.d, 26311u, var_5.d))), vec4<u32>(9702u, 4294967295u, _wgslsmith_dot_vec3_u32(var_2.a.c, vec3<u32>(0u, 1u, 1u)), ~u_input.a) >> (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global1.d.d, var_2.a.c.x, u_input.c.x), vec4<u32>(var_5.d, 100280u, var_4.d, 4294967295u)), firstTrailingBit(vec4<u32>(4294967295u, 0u, 4294967295u, var_4.d))) % vec4<u32>(32u))), 2147483647i);
}

