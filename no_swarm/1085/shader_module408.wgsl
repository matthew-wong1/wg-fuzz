struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(147f, Struct_1(-1163f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(1864f, Struct_1(100f)), Struct_2(906f, Struct_1(930f)), Struct_2(-1196f, Struct_1(-1000f)), Struct_2(452f, Struct_1(978f)), Struct_2(1699f, Struct_1(-1021f)), Struct_2(1004f, Struct_1(518f)), Struct_2(-259f, Struct_1(1282f)), Struct_2(-244f, Struct_1(-231f)), Struct_2(266f, Struct_1(838f)), Struct_2(-171f, Struct_1(-613f)), Struct_2(1000f, Struct_1(2192f)), Struct_2(-219f, Struct_1(2214f)), Struct_2(1000f, Struct_1(1388f)), Struct_2(125f, Struct_1(922f)), Struct_2(-749f, Struct_1(-613f)), Struct_2(801f, Struct_1(950f)), Struct_2(1000f, Struct_1(769f)), Struct_2(805f, Struct_1(354f)), Struct_2(230f, Struct_1(-371f)), Struct_2(480f, Struct_1(1139f)), Struct_2(-1000f, Struct_1(-750f)), Struct_2(913f, Struct_1(821f)), Struct_2(-1486f, Struct_1(-657f)), Struct_2(767f, Struct_1(-740f)), Struct_2(-274f, Struct_1(494f)), Struct_2(-577f, Struct_1(816f)));

var<private> global3: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<f32>) -> vec4<bool> {
    global2 = array<Struct_2, 26>();
    let var_0 = ~(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(66376u, u_input.b.x, 6217u, u_input.b.x)), ~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 52116u) | min(vec4<u32>(u_input.b.x, 15359u, 63716u, u_input.b.x), vec4<u32>(1u, 51229u, u_input.b.x, u_input.b.x))));
    global2 = array<Struct_2, 26>();
    global1 = arg_0.b;
    let var_1 = ~(~35513u);
    return !select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), vec4<bool>(true, !all(vec2<bool>(false, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(1000f - global1.a) < 1022f), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)) || true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = vec4<bool>(arg_2.a >= 1547f, select(any(arg_0), arg_0.x, arg_0.x), ((u_input.a.x | _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(1i, 22230i))) | firstTrailingBit(u_input.a.x ^ 1i)) != 6738i, true);
    var var_1 = Struct_1(arg_2.a);
    var var_2 = vec2<i32>(-90100i, abs(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), countOneBits(vec3<i32>(u_input.a.x, 1i, -24491i)))));
    let var_3 = arg_3;
    var var_4 = !(9655i == _wgslsmith_div_i32(19822i, (var_2.x ^ 1i) & min(-5674i, u_input.a.x)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_div_f32(global0.b.a, 2088f)));
}

fn func_2() -> Struct_2 {
    let var_0 = -355f;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 46991u, 1u, abs(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) & 88130u)), firstLeadingBit(_wgslsmith_div_vec4_u32(reverseBits(~vec4<u32>(12185u, u_input.b.x, u_input.b.x, u_input.b.x)), ~(vec4<u32>(7108u, 0u, 1u, 4294967295u) >> (vec4<u32>(u_input.b.x, u_input.b.x, 16727u, 50764u) % vec4<u32>(32u)))))), 26u)];
    let var_2 = _wgslsmith_f_op_f32(func_4(func_3(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, global0.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 981f, -1000f, global0.a) - vec4<f32>(global0.a, var_1.b.a, global1.a, 1649f)), _wgslsmith_div_vec4_f32(vec4<f32>(740f, var_0, -1000f, global0.a), vec4<f32>(830f, 721f, -1056f, global1.a)), vec4<bool>(false, true, false, true))))), Struct_1(var_1.b.a), var_1.b, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(55660u, ~u_input.b.x), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 43012u, 21762u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u)), u_input.b.x), u_input.b.x), 26u)]));
    let var_3 = Struct_1(1259f);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1747f, -1845f)) * _wgslsmith_f_op_f32(-global1.a))))), Struct_1(_wgslsmith_f_op_f32(abs(1773f))));
    return Struct_2(-2190f, Struct_1(621f));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global3 = all(!func_3(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, global0.b.a) + vec2<f32>(global1.a, global1.a)) - vec2<f32>(global0.a, arg_0.b.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(467f, -1000f, 494f, 264f)), vec4<f32>(-441f, 330f, 779f, arg_0.b.a), vec4<bool>(true, true, true, true)))).zy);
    var var_0 = Struct_2(-969f, Struct_1(1361f));
    var var_1 = vec2<u32>(select(reverseBits(~1u), ~(~0u >> (u_input.b.x % 32u)), true), 0u);
    let var_2 = -abs(max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 44666i), vec4<i32>(u_input.a.x, u_input.a.x, 51842i, 27189i)), min(vec4<i32>(56118i, 0i, 2147483647i, -1i), ~vec4<i32>(-2147483647i, 0i, 0i, u_input.a.x))));
    var_1 = vec2<u32>(_wgslsmith_add_u32(var_1.x, 41086u), 58087u);
    return global0.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    global0 = global2[_wgslsmith_index_u32(~u_input.b.x, 26u)];
    global1 = Struct_1(arg_1.x);
    var var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 26u)];
    global1 = func_5(func_2(), global0.b);
    var var_1 = -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-7702i, u_input.a.x, u_input.a.x), u_input.a ^ vec3<i32>(u_input.a.x, 27155i, u_input.a.x), func_3(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], vec2<f32>(arg_1.x, 148f), vec4<f32>(-1000f, 990f, 1065f, arg_1.x)).wzw), u_input.a), u_input.a.x);
    return 1413f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-36213i);
    let var_1 = ~abs(-u_input.a.zz);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0.b.a, -824f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, 127f), vec2<f32>(-1288f, 128f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(603f, 230f)))))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(806f + var_2.a))), func_5(func_2(), func_5(global2[_wgslsmith_index_u32(~4294967295u, 26u)], Struct_1(_wgslsmith_f_op_f32(915f * global1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b << (_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b.x), reverseBits(u_input.b)), select(vec2<u32>(4294967295u, 0u), ~u_input.b, false)) % vec2<u32>(32u)), vec3<i32>(abs(_wgslsmith_div_i32(~(-17849i), ~var_1.x)), min((i32(-1i) * -2147483647i) >> (~u_input.b.x % 32u), ~var_0 ^ ~31597i), _wgslsmith_mod_i32(var_0, 0i)));
}

