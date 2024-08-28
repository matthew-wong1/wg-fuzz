struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(1u, 56512u), vec2<u32>(80945u, 4294967295u), vec2<u32>(4294967295u, 17524u), vec2<u32>(19188u, 23811u), vec2<u32>(0u, 14981u), vec2<u32>(59412u, 27931u), vec2<u32>(0u, 4294967295u), vec2<u32>(66057u, 38632u), vec2<u32>(0u, 99632u), vec2<u32>(0u, 1u), vec2<u32>(47331u, 0u), vec2<u32>(0u, 61615u), vec2<u32>(0u, 0u), vec2<u32>(4008u, 25297u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(4420u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(48228u, 1u), vec2<u32>(86419u, 28449u));

var<private> global1: array<u32, 5> = array<u32, 5>(0u, 37652u, 1u, 33562u, 1u);

var<private> global2: array<vec3<bool>, 25>;

var<private> global3: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(2147483647i, -1i, 0i, i32(-2147483648)), vec4<i32>(0i, -23749i, 18127i, 2147483647i), vec4<i32>(2147483647i, 1i, i32(-2147483648), -1i), vec4<i32>(13771i, 35302i, -1i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(1i, -16915i, 0i, -1i), vec4<i32>(i32(-2147483648), 1i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, 0i, 12902i), vec4<i32>(i32(-2147483648), 25876i, 1i, -57246i), vec4<i32>(63983i, 0i, 19060i, 15687i), vec4<i32>(0i, i32(-2147483648), -10487i, 2147483647i), vec4<i32>(47086i, 13957i, 0i, 0i), vec4<i32>(42551i, -1i, -18537i, 0i), vec4<i32>(34664i, -1i, 0i, -57198i), vec4<i32>(i32(-2147483648), -44064i, 2147483647i, -23938i), vec4<i32>(1i, 4839i, -30301i, 0i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 1i), vec4<i32>(27529i, 2147483647i, -1i, -11487i), vec4<i32>(6389i, i32(-2147483648), -31378i, -1i), vec4<i32>(-21479i, -1i, 1i, 0i), vec4<i32>(0i, -43456i, 65151i, -1i), vec4<i32>(i32(-2147483648), -30036i, 2899i, -11482i), vec4<i32>(-71001i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(2147483647i, 29417i, 5967i, 0i), vec4<i32>(-1i, 2147483647i, 0i, 14247i), vec4<i32>(-12225i, 1i, -3166i, -65337i), vec4<i32>(38254i, -21844i, 2147483647i, 0i), vec4<i32>(1i, 2147483647i, -1i, -31476i), vec4<i32>(i32(-2147483648), 10549i, -13847i, -3397i));

var<private> global4: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec3<i32> {
    let var_0 = vec2<u32>(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(select(31659u, u_input.b.x, arg_0), global1[_wgslsmith_index_u32(~1u, 5u)])), 5u)], _wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 5u)], 6398u)) >> (global0[_wgslsmith_index_u32(74336u, 20u)] % vec2<u32>(32u));
    let var_1 = -394f;
    var var_2 = Struct_4(arg_1.a, -1808f);
    global0 = array<vec2<u32>, 20>();
    let var_3 = vec3<u32>(71359u, u_input.b.x, var_0.x);
    return -(~firstTrailingBit(firstTrailingBit(reverseBits(vec3<i32>(u_input.c.x, 1i, -2147483647i)))));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -869f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-366f + 392f), -136f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1149f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1025f), 689f))), Struct_1(192f), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(func_3(true, Struct_4(Struct_1(-328f), 183f)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(17i, 54973i, -1i), vec3<i32>(-106486i, u_input.a, -15591i)))), min(abs(u_input.d & u_input.d), -3184i)), true);
    global3 = array<vec4<i32>, 29>();
    let var_1 = var_0.a;
    var var_2 = vec2<f32>(var_0.b.a, 1524f);
    global2 = array<vec3<bool>, 25>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -808f)));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_2(u_input.b.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(653f, 652f, var_0.a) - vec3<f32>(var_0.a, -379f, arg_0)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-856f, -759f, var_0.a), vec3<f32>(var_0.a, 1710f, arg_0)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-560f, 921f, 969f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(709f, 593f, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_0.a, 451f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-459f, arg_0, -864f)))) - vec3<f32>(_wgslsmith_div_f32(-720f, var_0.a), _wgslsmith_f_op_f32(arg_0 + 1702f), -927f))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_0.a) * var_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(127f)) - _wgslsmith_f_op_f32(var_0.a + 379f))) + 580f), Struct_1(1607f), -_wgslsmith_mod_i32(~(-7055i), select(-69927i, u_input.a, false)) & u_input.d, all(vec2<bool>(any(vec2<bool>(false, true)), true)));
    global4 = false;
    global2 = array<vec3<bool>, 25>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-240f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(2147f)))))), _wgslsmith_div_f32(977f, 1f)));
    let var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(7124u, u_input.b.x), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1292f)))), global1[_wgslsmith_index_u32(~abs(var_1 | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], 27281u, 1u, 793u))), 5u)]);
}

