struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 10>;

var<private> global2: f32;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    global1 = array<vec4<u32>, 10>();
    var var_0 = !select(global3.wz, arg_0.e, !vec2<bool>(any(vec3<bool>(global3.x, arg_0.e.x, true)), false));
    var_0 = !select(arg_0.e, !arg_0.e, true);
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(375f - arg_0.a.x))), vec2<f32>(arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1507f * arg_0.a.x) * arg_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, arg_0.a.x)), _wgslsmith_div_f32(-239f, arg_0.a.x))))));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_3 {
    let var_0 = !(!vec4<bool>(global3.x, true, global3.x, false));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -710f))) * 458f);
    let var_1 = Struct_1(u_input.b);
    global0 = arg_0 >= 0i;
    global1 = array<vec4<u32>, 10>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec3<f32>(arg_1, arg_1, arg_1), Struct_1(u_input.b), var_1, 1i, vec2<bool>(true, false)))))), (global1[_wgslsmith_index_u32(15786u, 10u)] << (~(vec4<u32>(u_input.b, 1u, u_input.b, 0u) & vec4<u32>(u_input.b, var_1.a, var_1.a, 1u)) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(1u, u_input.b, var_1.a, var_1.a)) | abs(global1[_wgslsmith_index_u32(u_input.b, 10u)]), _wgslsmith_div_vec4_u32(max(global1[_wgslsmith_index_u32(var_1.a, 10u)], vec4<u32>(var_1.a, 0u, 0u, 11870u)), global1[_wgslsmith_index_u32(~var_1.a, 10u)])) % vec4<u32>(32u)));
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2682f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(673f + -467f) + _wgslsmith_f_op_f32(floor(-2902f))), 947f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1328f))) - vec4<f32>(_wgslsmith_f_op_f32(min(1476f, 302f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(391f)) - _wgslsmith_div_f32(-354f, 140f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1391f * 1757f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, 415f, global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -198f)))), _wgslsmith_f_op_f32(max(-1170f, -389f))));
    global1 = array<vec4<u32>, 10>();
    let var_1 = func_2(u_input.a.x, var_0.x);
    let var_2 = abs(20548u | _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b, func_2(u_input.a.x, 1322f).b.x, _wgslsmith_sub_u32(40451u, var_1.b.x), countOneBits(var_1.b.x)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(u_input.b), 70951u), 10u)]));
    global1 = array<vec4<u32>, 10>();
    return ~(max(vec3<i32>(-6893i ^ u_input.a.x, u_input.a.x, 0i), abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))) | reverseBits(-reverseBits(vec3<i32>(1i, 1i, -22906i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.x;
    var var_0 = global3.x;
    var var_1 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(16968i, -450i, 2147483647i, 5928i)), -vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x)), u_input.a.x), _wgslsmith_mod_i32(-u_input.a.x, u_input.a.x));
    global1 = array<vec4<u32>, 10>();
    var var_2 = -1274f;
    let var_3 = !(!all(vec3<bool>(false, false, true)));
    var var_4 = Struct_1(0u);
    var var_5 = select(global3.wy, !global3.xy, !select(select(!vec2<bool>(var_3, var_3), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x)), vec2<bool>(true, false), !(!global3.xx)));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, var_1.x), vec3<i32>(0i, var_1.x, 2147483647i)), vec3<i32>(var_1.x, 11477i, 1i), func_1()) ^ -vec3<i32>(2147483647i, 6623i, var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(-930f + -607f), !var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1138f, 687f, var_3))))), func_2(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -203f)).a.x), 943f, firstLeadingBit(~u_input.b), abs(_wgslsmith_mod_vec3_i32(select(firstTrailingBit(vec3<i32>(1i, -2147483647i, u_input.a.x)), max(vec3<i32>(50198i, var_1.x, u_input.a.x), vec3<i32>(var_1.x, var_1.x, var_1.x)), select(global3.x, var_3, global3.x)), vec3<i32>(-1i, -2147483647i, u_input.a.x) & (vec3<i32>(var_1.x, var_1.x, var_1.x) & vec3<i32>(-1i, u_input.a.x, u_input.a.x)))));
}

