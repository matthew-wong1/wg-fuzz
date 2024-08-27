struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: vec4<f32> = vec4<f32>(441f, -1000f, 1000f, -2431f);

var<private> global2: vec2<f32> = vec2<f32>(-386f, 1982f);

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<bool>(true, true), vec2<i32>(1i, 37613i), vec3<f32>(-1000f, -1000f, 867f)), Struct_1(vec2<bool>(true, false), vec2<i32>(1i, 74270i), vec3<f32>(-1621f, 1000f, 947f)), Struct_1(vec2<bool>(false, false), vec2<i32>(-36098i, 1i), vec3<f32>(414f, -1275f, 1403f)), Struct_1(vec2<bool>(true, true), vec2<i32>(8006i, 31104i), vec3<f32>(807f, 335f, 1000f)), Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, 1i), vec3<f32>(156f, 1278f, 1000f)), Struct_1(vec2<bool>(true, false), vec2<i32>(-24005i, -587i), vec3<f32>(-220f, -1951f, 928f)), Struct_1(vec2<bool>(false, true), vec2<i32>(29659i, 10267i), vec3<f32>(-1692f, -1187f, -1163f)), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, -15614i), vec3<f32>(-1172f, 1889f, 1051f)), Struct_1(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 2147483647i), vec3<f32>(466f, -243f, 1659f)), Struct_1(vec2<bool>(true, false), vec2<i32>(-36962i, 23919i), vec3<f32>(1112f, 662f, 1124f)), Struct_1(vec2<bool>(true, false), vec2<i32>(26294i, -22659i), vec3<f32>(-1053f, 706f, -567f)), Struct_1(vec2<bool>(false, true), vec2<i32>(-17314i, 0i), vec3<f32>(-126f, 469f, -595f)), Struct_1(vec2<bool>(false, true), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<f32>(1226f, 1087f, 145f)), Struct_1(vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 24770i), vec3<f32>(-700f, -3380f, -155f)), Struct_1(vec2<bool>(true, true), vec2<i32>(-28918i, 2147483647i), vec3<f32>(897f, 1004f, -428f)), Struct_1(vec2<bool>(false, true), vec2<i32>(0i, -9829i), vec3<f32>(-714f, 1069f, 184f)), Struct_1(vec2<bool>(false, true), vec2<i32>(0i, -22985i), vec3<f32>(1502f, -2178f, 813f)), Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, 48027i), vec3<f32>(546f, 1000f, -437f)), Struct_1(vec2<bool>(false, true), vec2<i32>(-1i, 0i), vec3<f32>(-480f, -392f, 1616f)), Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), -57836i), vec3<f32>(-756f, 1000f, 523f)), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, 42764i), vec3<f32>(507f, -330f, -298f)), Struct_1(vec2<bool>(false, true), vec2<i32>(-23160i, -4806i), vec3<f32>(842f, 650f, 1027f)), Struct_1(vec2<bool>(true, true), vec2<i32>(1i, 2147483647i), vec3<f32>(-371f, 1000f, 390f)), Struct_1(vec2<bool>(false, false), vec2<i32>(29713i, 5361i), vec3<f32>(-489f, 317f, -823f)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    let var_0 = Struct_1(arg_1.a, u_input.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(246f, -1000f)), 563f)))), _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(arg_1.c.x * global2.x)));
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 65647u, arg_2.x, ~(~42418u)), vec4<u32>(4294967295u, 0u, arg_2.x, ~(~arg_2.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * arg_0.c.x));
    let var_3 = arg_1.a.x;
    var var_4 = any(!(!select(!vec4<bool>(false, var_3, true, arg_0.a.x), !vec4<bool>(true, var_3, true, arg_0.a.x), select(vec4<bool>(arg_1.a.x, var_0.a.x, false, false), vec4<bool>(false, arg_0.a.x, true, var_0.a.x), arg_1.a.x))));
    return ~(~var_1.x) ^ firstTrailingBit(6609u);
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_1, 24>();
    var var_0 = 1486f >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), 1000f));
    global2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.zy), vec2<f32>(global1.x, _wgslsmith_div_f32(-647f, global1.x))));
    var var_1 = true;
    let var_2 = countOneBits(_wgslsmith_sub_i32(min(countOneBits(-1i | u_input.a.x), -2147483647i), i32(-1i) * -u_input.a.x));
    return global0[_wgslsmith_index_u32(~(~func_3(Struct_1(vec2<bool>(true, true), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2, var_2), u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-156f, global2.x, 2203f) * vec3<f32>(-585f, global1.x, 1198f))), global3[_wgslsmith_index_u32(1u, 24u)], firstTrailingBit(vec4<u32>(1u, 27250u, 79232u, 0u)) | vec4<u32>(0u, 32688u, 0u, 1u))), 12u)];
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(min(select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(39316u, 0u, 13201u, 117096u), vec4<u32>(17574u, 4294967295u, 4294967295u, 4294967295u)), ~4294967295u, 1u, ~204u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4391u, 4294967295u, 1u, 4294967295u), vec4<u32>(54723u, 43799u, 4294967295u, 63127u), vec4<u32>(20115u, 57624u, 1u, 31341u)), vec4<bool>(true, true, true, true)), firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(18096u, 0u, 4294967295u, 0u), vec4<u32>(1u, 38512u, 1u, 1u)), select(vec4<u32>(47256u, 27939u, 0u, 4294967295u), vec4<u32>(24976u, 48879u, 17504u, 4294967295u), false)))), vec4<u32>(1u, 1u, 1u, 1u));
    var var_1 = vec2<i32>(~reverseBits(_wgslsmith_sub_i32(~u_input.a.x, 0i)), i32(-1i) * -49523i);
    let var_2 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), false), false)));
    let var_3 = Struct_1(select(!(!var_2), !var_2, select(var_2, select(select(vec2<bool>(var_2.x, false), vec2<bool>(false, false), var_2), select(var_2, vec2<bool>(var_2.x, var_2.x), true), vec2<bool>(false, var_2.x)), var_2.x & var_2.x)), ~_wgslsmith_div_vec2_i32(-u_input.a, vec2<i32>(~6604i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -8180i, 12091i, -2147483647i), vec4<i32>(u_input.a.x, var_1.x, u_input.a.x, u_input.a.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.xyx), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(867f, 1145f, global2.x)), vec3<f32>(584f, -1713f, global2.x)))));
    var var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(~(~80308u), ~var_0.x, ~(~var_0.x)), abs(~vec3<u32>(40244u, _wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x), _wgslsmith_sub_u32(12529u, var_0.x))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    var var_0 = func_1();
    global3 = array<Struct_1, 24>();
    var var_1 = Struct_1(select(vec2<bool>(true, any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true))), select(select(var_0.a, vec2<bool>(true, var_0.a.x), !var_0.a), vec2<bool>(true, true & var_0.a.x), true), var_0.a.x), max(u_input.a, var_0.b), vec3<f32>(_wgslsmith_f_op_f32(max(1f, global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_div_f32(global1.x, -834f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(851f * -755f) * global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-826f - var_0.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.b.x), _wgslsmith_sub_u32(func_3(func_1(), Struct_1(var_0.a, select(u_input.a, u_input.a, vec2<bool>(true, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 784f, 384f))), firstTrailingBit(vec4<u32>(1u, 4294967295u, 0u, 28141u))), 1u), 49398u);
}

