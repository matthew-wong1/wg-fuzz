struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-492f, -639f, -1000f, -157f), vec4<f32>(1000f, -753f, -398f, 507f), vec4<f32>(-111f, 780f, 1582f, -1189f), vec4<f32>(290f, -629f, 517f, -1457f), vec4<f32>(-502f, -418f, -1000f, 1000f), vec4<f32>(2162f, 1000f, 1693f, -1000f), vec4<f32>(-137f, -684f, -522f, -387f), vec4<f32>(-1156f, 349f, -313f, 1028f), vec4<f32>(-1000f, -508f, -650f, -1194f), vec4<f32>(2000f, 1173f, 749f, 1000f), vec4<f32>(1138f, 2120f, 190f, -1000f), vec4<f32>(276f, 186f, -1267f, -346f), vec4<f32>(1036f, 268f, 1009f, 1974f), vec4<f32>(-715f, 901f, 596f, -889f), vec4<f32>(2183f, -1700f, 170f, -846f), vec4<f32>(1733f, 379f, 371f, 358f), vec4<f32>(236f, -619f, 1242f, -1054f));

var<private> global1: array<vec4<bool>, 7>;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<f32>(1660f, -770f)), Struct_2(vec2<f32>(-1260f, -523f)), Struct_2(vec2<f32>(-181f, -377f)), Struct_2(vec2<f32>(-671f, 1057f)), Struct_2(vec2<f32>(-522f, -1639f)));

var<private> global4: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(1i, -19064i, 2147483647i), vec3<i32>(1i, 0i, -1i), vec3<i32>(13983i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, -26172i), vec3<i32>(i32(-2147483648), -1i, -12983i), vec3<i32>(i32(-2147483648), 1i, -4100i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(-22696i, 0i, -1i), vec3<i32>(-1i, -18425i, 21964i), vec3<i32>(i32(-2147483648), -1i, 22992i), vec3<i32>(2147483647i, -23825i, 2147483647i), vec3<i32>(-19611i, -1i, -1i), vec3<i32>(i32(-2147483648), -43500i, i32(-2147483648)), vec3<i32>(-1i, 51216i, 32476i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    let var_0 = u_input.b;
    let var_1 = arg_2.a;
    let var_2 = vec2<i32>(~0i, u_input.a.x);
    global4 = array<vec3<i32>, 14>();
    global1 = array<vec4<bool>, 7>();
    return var_0 & 0u;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> u32 {
    global3 = array<Struct_2, 5>();
    let var_0 = -1i;
    let var_1 = _wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-36711i, 28369i, -4307i, var_0), vec4<i32>(-28888i, u_input.a.x, 41629i, u_input.a.x))), abs(vec4<i32>(u_input.a.x, -1i, 1i, -2147483647i) | vec4<i32>(14039i, -36008i, -1393i, 18136i))), -vec4<i32>(var_0, 24830i, u_input.a.x >> (888u % 32u), ~var_0) ^ ~vec4<i32>(_wgslsmith_div_i32(2147483647i, -11326i), _wgslsmith_dot_vec2_i32(vec2<i32>(8827i, -12879i), u_input.a.xz), -1i & u_input.a.x, var_0));
    let var_2 = Struct_1(_wgslsmith_add_u32(59063u, _wgslsmith_add_u32(global2.x, min(_wgslsmith_mod_u32(46922u, u_input.b), _wgslsmith_div_u32(global2.x, global2.x)))));
    let var_3 = Struct_1(global2.x);
    return _wgslsmith_dot_vec3_u32(~(~min(vec3<u32>(0u, 96091u, 52020u), vec3<u32>(global2.x, global2.x, 1u)) >> (~(~vec3<u32>(59862u, 27002u, 4294967295u)) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 22056u, var_3.a), vec3<u32>(83715u, ~global2.x, 4294967295u)));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global4 = array<vec3<i32>, 14>();
    var var_0 = firstTrailingBit(i32(-1i) * -u_input.a.x);
    let var_1 = _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(24396u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 49524u, 14087u, u_input.b), vec4<u32>(global2.x, global2.x, arg_0.a, u_input.b)), ~arg_0.a, arg_0.a), func_2(global1[_wgslsmith_index_u32(arg_0.a | arg_0.a, 7u)], Struct_2(vec2<f32>(-721f, 608f)), global3[_wgslsmith_index_u32(~u_input.b, 5u)], vec3<f32>(1f, 1f, 1f)))), countOneBits(vec3<u32>((17688u & arg_0.a) | func_3(false, 55601u, Struct_2(vec2<f32>(-1648f, -147f))), 31474u, ~(~u_input.b))));
    global3 = array<Struct_2, 5>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 743f)))), vec2<f32>(1f, 1f))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_mod_i32(u_input.a.x, u_input.a.x & _wgslsmith_add_i32(2147483647i, u_input.a.x));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(min(arg_1.a, arg_0.a)));
    let var_2 = u_input.a.x;
    var var_3 = ~(~u_input.b);
    let var_4 = !vec2<bool>(true, arg_2 | (0u != u_input.b));
    return select(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~func_2(global1[_wgslsmith_index_u32(u_input.b, 7u)], arg_1, var_1, vec3<f32>(arg_0.a.x, arg_1.a.x, -489f))), arg_3), 14u)], vec3<i32>(-u_input.a.x, ~58817i, min(min(reverseBits(-2147483647i), u_input.a.x), u_input.a.x)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(global2.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(26354u, u_input.b, 0u) & vec3<u32>(global2.x, 72304u, global2.x), vec3<u32>(global2.x, global2.x, global2.x)), u_input.b);
    let var_1 = true;
    var var_2 = ~(vec4<u32>(~global2.x & 55308u, 34644u, var_0.x, 4294967295u) << (abs(_wgslsmith_sub_vec4_u32(min(vec4<u32>(97833u, 1u, 1u, 2942u), vec4<u32>(1u, 28634u, var_0.x, var_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(40664u, 4294967295u, 4294967295u, 53308u), vec4<u32>(0u, global2.x, global2.x, var_0.x)))) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_clamp_i32(0i, -(~u_input.a.x) | _wgslsmith_add_i32(-(u_input.a.x | 1i), -(i32(-1i) * -1i)), 2147483647i);
    global0 = array<vec4<f32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_1(Struct_1(4294967295u)), func_1(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1701u, 69541u), vec3<u32>(1u, 0u, var_2.x)))), var_1, var_0.x), vec3<i32>((var_3 & u_input.a.x) >> (func_3(false, _wgslsmith_add_u32(u_input.b, 14390u), global3[_wgslsmith_index_u32(~global2.x, 5u)]) % 32u), -(countOneBits(u_input.a.x) | var_3), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1117f - 248f) + -1000f))));
}

