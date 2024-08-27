struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(107f, -1i, 1i, 0u), vec2<bool>(true, true));

var<private> global1: array<u32, 15>;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(1453f, 1i, -38189i, 0u), vec2<bool>(false, true)), Struct_2(Struct_1(-172f, 7714i, 20138i, 1u), vec2<bool>(true, false)), Struct_2(Struct_1(149f, 5364i, 47519i, 4294967295u), vec2<bool>(true, true)), Struct_2(Struct_1(-270f, 1i, -12924i, 4294967295u), vec2<bool>(true, true)), Struct_2(Struct_1(1539f, 30437i, 2147483647i, 65777u), vec2<bool>(true, true)), Struct_2(Struct_1(533f, 5470i, -74316i, 19855u), vec2<bool>(false, false)), Struct_2(Struct_1(-1613f, 2283i, -19316i, 31773u), vec2<bool>(true, true)), Struct_2(Struct_1(1525f, -76979i, i32(-2147483648), 64482u), vec2<bool>(false, false)), Struct_2(Struct_1(-306f, 1i, i32(-2147483648), 48124u), vec2<bool>(false, false)), Struct_2(Struct_1(1000f, 1i, 33872i, 1u), vec2<bool>(false, true)), Struct_2(Struct_1(-1381f, -9964i, i32(-2147483648), 81150u), vec2<bool>(false, true)), Struct_2(Struct_1(-384f, 40135i, 1i, 934u), vec2<bool>(false, false)), Struct_2(Struct_1(-342f, 20747i, 1i, 0u), vec2<bool>(true, false)), Struct_2(Struct_1(-1703f, -69684i, -73486i, 45004u), vec2<bool>(true, true)), Struct_2(Struct_1(817f, 1i, -23367i, 54954u), vec2<bool>(true, true)), Struct_2(Struct_1(-839f, -6042i, 0i, 4294967295u), vec2<bool>(false, true)), Struct_2(Struct_1(-892f, -13069i, 2147483647i, 0u), vec2<bool>(false, false)), Struct_2(Struct_1(-1909f, 0i, 11877i, 0u), vec2<bool>(true, false)), Struct_2(Struct_1(1984f, 30187i, i32(-2147483648), 8645u), vec2<bool>(true, true)), Struct_2(Struct_1(1099f, 22290i, -17162i, 1u), vec2<bool>(true, false)), Struct_2(Struct_1(982f, -23949i, i32(-2147483648), 0u), vec2<bool>(true, true)), Struct_2(Struct_1(-643f, 36497i, 1i, 4294967295u), vec2<bool>(false, false)));

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-285f, 14435i, 7843i, 27121u), Struct_1(-703f, -36508i, -16259i, 64220u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -136f)), -_wgslsmith_mod_i32(global0.a.b, global0.a.b), countOneBits(global0.a.b), u_input.a), arg_0.ww);
    var var_1 = !arg_0;
    var var_2 = global3[_wgslsmith_index_u32(global0.a.d, 2u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_0.a.a) * 645f);
    var_2 = Struct_1(var_3, var_0.a.b, abs(global0.a.b), u_input.a);
    return !(!var_1.yw);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32) -> vec2<bool> {
    let var_0 = arg_1.a;
    global1 = array<u32, 15>();
    var var_1 = global0.b;
    global0 = Struct_2(Struct_1(1010f, ~_wgslsmith_div_i32(1i, arg_1.a.c), 1i, ~min(u_input.a, abs(0u))), func_3(select(!vec4<bool>(true, true, arg_1.b.x, false), select(select(vec4<bool>(global0.b.x, true, var_1.x, false), vec4<bool>(arg_1.b.x, false, arg_1.b.x, global0.b.x), false), vec4<bool>(false, var_1.x, var_1.x, global0.b.x), select(vec4<bool>(true, false, false, arg_1.b.x), vec4<bool>(global0.b.x, false, true, global0.b.x), global0.b.x)), !select(false, true, arg_1.b.x))));
    global1 = array<u32, 15>();
    return select(vec2<bool>(u_input.a <= _wgslsmith_mult_u32(6856u, 23545u), (-482f < _wgslsmith_f_op_f32(min(var_0.a, -828f))) & var_1.x), !select(arg_1.b, !arg_1.b, global0.b), global0.b);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: i32, arg_3: f32) -> vec3<u32> {
    let var_0 = select(vec2<bool>(global0.b.x, arg_1 == arg_2), !select(select(func_2(vec4<i32>(-36688i, global0.a.b, arg_1, arg_2), Struct_2(global3[_wgslsmith_index_u32(u_input.a, 2u)], global0.b), arg_2), !global0.b, global0.b.x), select(vec2<bool>(global0.b.x, global0.b.x), global0.b, global0.b.x && global0.b.x), vec2<bool>(true, true)), vec2<bool>(!(!(global0.b.x && global0.b.x)), (firstTrailingBit(arg_1) ^ _wgslsmith_mod_i32(14565i, arg_1)) < -26605i));
    global3 = array<Struct_1, 2>();
    let var_1 = global0.b;
    global3 = array<Struct_1, 2>();
    global1 = array<u32, 15>();
    return vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xx, max(vec2<u32>(abs(global0.a.d), 48810u), ~(vec2<u32>(arg_0.x, global1[_wgslsmith_index_u32(u_input.a, 15u)]) ^ u_input.b.yy))), 13476u, global1[_wgslsmith_index_u32(countOneBits(1u) >> (_wgslsmith_dot_vec3_u32(u_input.b.zyw, vec3<u32>(arg_0.x, 4294967295u, u_input.b.x) ^ vec3<u32>(arg_0.x, global1[_wgslsmith_index_u32(arg_0.x, 15u)], 0u)) % 32u), 15u)] | ~15937u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(~2147483647i, global0.a.b, select(12320i, 56623i, global0.b.x) & 12366i, global0.a.c), vec4<i32>(global0.a.c | _wgslsmith_div_i32(18054i, -87863i), var_0.b | global0.a.b, ~18318i, _wgslsmith_add_i32(var_0.c, global0.a.b) ^ _wgslsmith_mod_i32(-1i, var_0.b)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, global0.a.a, global0.a.a, global0.a.a), vec4<f32>(1494f, 1077f, -1433f, 1000f), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.a, global0.a.a, -227f, var_0.a))) - vec4<f32>(556f, global0.a.a, -432f, -602f)) * vec4<f32>(-669f, _wgslsmith_f_op_f32(global0.a.a * 644f), 539f, var_0.a))));
    var var_3 = -50811i;
    global3 = array<Struct_1, 2>();
    let var_4 = select(abs(u_input.b.wyy) ^ firstLeadingBit(~firstTrailingBit(u_input.b.yzw)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(func_1(vec3<u32>(global0.a.d, global0.a.d, 60641u), global0.a.b, 24646i, global0.a.a), u_input.b.yxz), _wgslsmith_mod_vec3_u32(select(vec3<u32>(29131u, u_input.b.x, 12527u), vec3<u32>(45979u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4034u, 15u)], 15u)], u_input.a), global0.b.x), select(vec3<u32>(var_0.d, 1u, 4294967295u), vec3<u32>(87201u, 1u, 4294967295u), vec3<bool>(true, global0.b.x, global0.b.x)))), ~u_input.b.wxy), true);
    let var_5 = global2[_wgslsmith_index_u32(29426u, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-777f, var_2.x), 1788f)) + vec2<f32>(var_2.x, _wgslsmith_div_f32(-1592f, 1055f))));
}

