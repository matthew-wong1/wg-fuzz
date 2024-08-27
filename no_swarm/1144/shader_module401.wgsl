struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 4294967295u, 2693u, 1u);

var<private> global1: array<f32, 16> = array<f32, 16>(-1177f, 453f, -1271f, 713f, -1111f, 1413f, -135f, 273f, -1000f, 899f, -1000f, -1023f, 473f, 1000f, 1287f, 892f);

var<private> global2: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> vec2<f32> {
    var var_0 = ~(~u_input.a.xzz);
    var var_1 = vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 16u)] >= global1[_wgslsmith_index_u32(arg_2.x, 16u)]), abs(9374u) == _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 26086u), vec2<u32>(global0.x, arg_2.x)))), arg_1);
    let var_2 = Struct_2(!(~_wgslsmith_mod_u32(arg_2.x, arg_2.x) <= firstTrailingBit(0u)), Struct_1(48313u, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(countOneBits(4294967295u), 16u)], -771f)))), true == arg_1, -arg_0, Struct_1(arg_2.x, vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 16u)]), global1[_wgslsmith_index_u32(arg_2.x, 16u)])));
    global0 = countOneBits(~u_input.a);
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.e.b.x, global1[_wgslsmith_index_u32(max(~global0.x, ~var_0.x), 16u)])) - var_2.b.b.x)));
    return _wgslsmith_f_op_vec2_f32(var_2.b.b * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * 1305f) + _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(4294967295u, 16u)], var_3))))), -518f));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = !(!(!(~u_input.b.x >= 12683i)));
    let var_1 = Struct_2(true, Struct_1(_wgslsmith_dot_vec4_u32(select(u_input.a, u_input.a, true), u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -445f) - vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(func_3(u_input.b.x << (4294967295u % 32u), any(vec3<bool>(true, true, true)), vec3<u32>(global0.x, u_input.a.x, global0.x))))), !(~_wgslsmith_mult_i32(1i, u_input.b.x) >= -6367i), ~1i | ~min(firstTrailingBit(u_input.b.x), u_input.b.x), Struct_1(_wgslsmith_add_u32(44618u, _wgslsmith_mod_u32(global0.x, 6658u) >> (~33024u % 32u)), arg_1));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-993f - 1069f) * -1886f), _wgslsmith_f_op_f32(step(663f, 1125f)));
    let var_3 = vec4<u32>(25952u, _wgslsmith_dot_vec2_u32(u_input.a.zz, global0.ww), ~(~global0.x), 1u);
    global1 = array<f32, 16>();
    return vec3<bool>(false, false, var_1.a && any(!global2[_wgslsmith_index_u32(0u, 19u)]));
}

fn func_1() -> bool {
    global0 = select(u_input.a, abs(_wgslsmith_div_vec4_u32((vec4<u32>(5485u, global0.x, u_input.a.x, global0.x) << (u_input.a % vec4<u32>(32u))) << (~vec4<u32>(4294967295u, global0.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(19528u, global0.x), 4294967295u, 4294967295u, u_input.a.x))), vec4<bool>(true, any(!func_2(1474f, vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 16u)], 1207f))), any(!(!global2[_wgslsmith_index_u32(u_input.a.x, 19u)])), !(u_input.b.x != -u_input.b.x)));
    let var_0 = _wgslsmith_div_u32(global0.x | 0u, global0.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(1595f - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, global0.x), vec3<u32>(18468u, var_0, 58782u)), select(u_input.a.wzy, u_input.a.zzw, vec3<bool>(true, true, true)) | abs(u_input.a.yww)), 16u)]), -626f);
    global1 = array<f32, 16>();
    return firstLeadingBit(_wgslsmith_mod_u32(var_0, 121748u)) <= ~min(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 1u, 17239u, 43750u)), ~0u);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    var var_0 = 1u;
    global1 = array<f32, 16>();
    global0 = ~vec4<u32>(_wgslsmith_add_u32(reverseBits(1u >> (1u % 32u)), reverseBits(u_input.a.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 12012u), ~firstTrailingBit(vec2<u32>(arg_0.a, u_input.a.x))), _wgslsmith_clamp_u32(~31330u, abs(arg_0.a), global0.x), _wgslsmith_mod_u32(54287u, ~arg_0.a >> ((arg_0.a | global0.x) % 32u)));
    var var_1 = Struct_1(~(~1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(744f, global1[_wgslsmith_index_u32(0u, 16u)])));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b));
    return Struct_2(arg_1, Struct_1(_wgslsmith_sub_u32(0u, global0.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_f_op_f32(-441f * 217f))), true, _wgslsmith_sub_i32(min(~(-u_input.b.x), max(41038i, -418i << (u_input.a.x % 32u))), _wgslsmith_clamp_i32(firstLeadingBit(~u_input.b.x), u_input.b.x, u_input.b.x)), Struct_1(44997u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 729f), arg_0.b)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32) -> Struct_2 {
    let var_0 = u_input.b.xz;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.b)) + _wgslsmith_f_op_vec2_f32(-arg_0.b.b));
    let var_2 = arg_0.b;
    var var_3 = arg_0.b;
    let var_4 = Struct_1(~var_3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-275f)))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~_wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(global0.x, u_input.a.x, u_input.a.x, 49358u)), vec4<u32>(u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_add_u32(u_input.a.x, global0.x), 57777u, ~3463u)), u_input.a);
    let var_1 = func_5(func_4(Struct_1(64302u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-432f, 739f) - vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 16u)], 807f)))), func_1()), vec4<i32>(abs(u_input.b.x), -2147483647i, u_input.b.x, u_input.b.x), 2147483647i);
    let var_2 = func_5(var_1, -u_input.b, -firstLeadingBit(-(u_input.b.x & var_1.d))).e;
    let var_3 = firstLeadingBit(u_input.b.ywx);
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

