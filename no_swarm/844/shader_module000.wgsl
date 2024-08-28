struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(72679u, 1u, vec2<u32>(1u, 63631u));

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(0u, 77533u, vec2<u32>(472u, 0u)), Struct_1(70775u, 0u, vec2<u32>(55406u, 1u)), Struct_1(12749u, 1u, vec2<u32>(0u, 4294967295u)), Struct_1(42952u, 46541u, vec2<u32>(1u, 698u)), Struct_1(0u, 29063u, vec2<u32>(0u, 77228u)), Struct_1(4294967295u, 4294967295u, vec2<u32>(4294967295u, 46567u)), Struct_1(20506u, 2283u, vec2<u32>(4294967295u, 13391u)), Struct_1(0u, 36027u, vec2<u32>(17911u, 48907u)), Struct_1(0u, 27401u, vec2<u32>(73277u, 1u)), Struct_1(25085u, 4294967295u, vec2<u32>(15004u, 0u)), Struct_1(21299u, 0u, vec2<u32>(4294967295u, 81392u)), Struct_1(1u, 2419u, vec2<u32>(19157u, 0u)), Struct_1(11421u, 1u, vec2<u32>(37939u, 29209u)), Struct_1(26910u, 1u, vec2<u32>(23784u, 21026u)), Struct_1(15252u, 38754u, vec2<u32>(28897u, 0u)), Struct_1(23394u, 41876u, vec2<u32>(3128u, 112738u)), Struct_1(36385u, 33800u, vec2<u32>(4294967295u, 4294967295u)), Struct_1(4294967295u, 609u, vec2<u32>(1u, 4294967295u)), Struct_1(0u, 73430u, vec2<u32>(14552u, 1u)), Struct_1(0u, 42292u, vec2<u32>(41891u, 1u)), Struct_1(44819u, 4294967295u, vec2<u32>(23715u, 23735u)), Struct_1(4433u, 4294967295u, vec2<u32>(1u, 8978u)));

var<private> global3: i32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> f32 {
    global2 = array<Struct_1, 22>();
    let var_0 = Struct_1(463u, 84230u, global1.c);
    global3 = i32(-1i) * -(~select(abs(2147483647i), -2147483647i, false));
    var var_1 = true;
    let var_2 = Struct_3(-2147483647i, ~4294967295u, _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(max(u_input.b.ww, global1.c), global1.c), u_input.a, 1u, ~countOneBits(u_input.b.x)), ~(vec4<u32>(4294967295u, 4294967295u, 1u, 82168u) & u_input.b) & _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(4294967295u, 4294967295u, 16247u, 1u)), vec4<u32>(4294967295u, 4294967295u, 40957u, global1.b))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(920f * 1939f))), -189f, true)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(~select(arg_1.a.b, 4294967295u, !(!(arg_0.x || arg_0.x))), 22u)];
    let var_1 = ~2104i;
    var var_2 = Struct_3(var_1, max(countOneBits(10512u), ~arg_3.x ^ _wgslsmith_sub_u32(~u_input.a, u_input.a)), select(~countOneBits(~u_input.b), firstTrailingBit(vec4<u32>(4294967295u, 1u, 4294967295u, global1.a)) ^ (firstTrailingBit(vec4<u32>(5601u, var_0.b, 4294967295u, arg_3.x)) | ~u_input.b), vec4<bool>(arg_0.x, true, false, true)));
    let var_3 = ~var_2.a;
    global1 = Struct_1(var_2.b, ~(~(~_wgslsmith_mult_u32(1u, u_input.b.x))), ~(~vec2<u32>(min(0u, var_0.a), 4294967295u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1142f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x - arg_2.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(4294967295u, 22u)]);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1526f, -1313f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 892f)))) - 2124f)));
    global2 = array<Struct_1, 22>();
    global0 = arg_0.x;
    global1 = Struct_1(30767u, ~4294967295u, countOneBits(vec2<u32>(var_0.a.a | 4294967295u, global1.c.x)) << (vec2<u32>(28038u, u_input.a) % vec2<u32>(32u)));
    return var_0.a;
}

fn func_1() -> Struct_1 {
    global1 = func_4(vec2<f32>(229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(177f * _wgslsmith_f_op_f32(abs(-492f))))), select(_wgslsmith_f_op_f32(func_2()) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), Struct_2(Struct_1(13926u, 19952u, u_input.b.zz)), vec4<f32>(686f, -492f, -426f, 1069f), vec2<u32>(24323u, 20883u))) * _wgslsmith_f_op_f32(1225f * 685f)), true, 1u < (~u_input.b.x >> (min(global1.b, 1u) % 32u))), global1.a);
    var var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1803f), -763f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1042f - 225f) + 931f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), all(vec2<bool>(true, true)), 0u);
    var var_1 = Struct_1(~(~(~_wgslsmith_sub_u32(u_input.a, 61907u))), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(select(438f, -330f, true)))), select(any(vec4<bool>(true, true, true, true)), false, false), global1.a).b, ~vec2<u32>(_wgslsmith_mult_u32(1u >> (u_input.a % 32u), 18952u), 100123u));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2337f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(538f + _wgslsmith_f_op_f32(f32(-1f) * -665f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1542f - _wgslsmith_div_f32(256f, -310f)))), true));
    var_0 = Struct_1((global1.a & (~39092u & global1.b)) << (max(reverseBits(var_0.a), var_0.c.x) % 32u), 1u, ~(~(~vec2<u32>(56815u, var_0.c.x))));
    return func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(536f, 530f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(114f, 964f) + vec2<f32>(431f, -2206f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1088f, var_2) * vec2<f32>(-491f, 869f))))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), all(vec2<bool>(true, true)))), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-233f, -509f), vec2<f32>(-817f, 492f))), true, _wgslsmith_mult_u32(global1.a, u_input.b.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-375f, -581f, 979f, -579f), vec4<f32>(-332f, 1000f, -107f, -604f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(611f, 1192f, 1097f, -1297f))), vec4<bool>(true, true, true, true))))), vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.yy, u_input.b.ww), ~_wgslsmith_mod_u32(var_0.c.x, var_0.b)))) - 2191f);
    let var_1 = ~vec4<u32>(~(~_wgslsmith_clamp_u32(var_0.c.x, global1.b, u_input.b.x)), _wgslsmith_dot_vec3_u32(u_input.b.zwx ^ (u_input.b.wyz << (vec3<u32>(0u, global1.c.x, 1u) % vec3<u32>(32u))), ~(u_input.b.wzz >> (vec3<u32>(u_input.a, u_input.a, var_0.b) % vec3<u32>(32u)))), _wgslsmith_mod_u32(103306u, 4294967295u), global1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -398f), reverseBits(~vec4<i32>(_wgslsmith_mod_i32(-1i, 2147483647i), -2147483647i << (u_input.a % 32u), 1i, i32(-1i) * -1i)));
}

