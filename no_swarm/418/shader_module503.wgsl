struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(280f, 1702f, 2532f, -309f);

var<private> global2: bool = true;

var<private> global3: array<f32, 4>;

var<private> global4: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-58069i, -1i), vec2<i32>(2147483647i, -13227i), vec2<i32>(-11320i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 15159i), vec2<i32>(-24216i, 32928i), vec2<i32>(72727i, 7220i), vec2<i32>(30322i, -1i), vec2<i32>(-14995i, -33433i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> u32 {
    global3 = array<f32, 4>();
    var var_0 = _wgslsmith_mod_i32(0i, i32(-1i) * -67231i);
    global1 = vec4<f32>(_wgslsmith_div_f32(global0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 4u)] - -941f)), -1491f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.d, 4u)]))) + _wgslsmith_f_op_f32(max(global0.d, _wgslsmith_f_op_f32(401f + global0.d))))), -1000f, _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(reverseBits(~(~global0.e)), 4u)])));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global1.yw + vec2<f32>(-240f, _wgslsmith_div_f32(global1.x, -805f))))), global1.zx, false));
    var var_2 = Struct_1(1u, global0.b, any(select(select(vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(global0.c, global0.c, global0.c), true), select(!vec3<bool>(global0.c, true, true), select(vec3<bool>(global0.c, true, true), vec3<bool>(global0.c, global0.c, true), global0.c), vec3<bool>(true, true, global0.c)), any(select(vec2<bool>(global0.c, false), vec2<bool>(global0.c, false), vec2<bool>(global0.c, global0.c))))), -917f, u_input.d << (~(~(arg_0 & global0.b)) % 32u));
    return u_input.a & countOneBits(global0.a);
}

fn func_2() -> Struct_1 {
    let var_0 = 0u;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, 690f, global1.x, 389f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(282f, 941f, -198f, -1446f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(484f, -631f, global1.x, -444f) * vec4<f32>(-361f, global1.x, -1090f, global3[_wgslsmith_index_u32(var_0, 4u)])))))));
    let var_1 = true;
    let var_2 = -872f;
    var var_3 = select(vec3<bool>(true, global0.c, !any(!vec3<bool>(var_1, var_1, false))), vec3<bool>(true, true, true), vec3<bool>(any(select(!vec3<bool>(global0.c, true, global0.c), select(vec3<bool>(true, true, false), vec3<bool>(global0.c, true, false), vec3<bool>(true, global0.c, false)), !vec3<bool>(false, true, global0.c))), global0.c, !var_1));
    return Struct_1(~func_3(max(1u, ~var_0)), 38551u, global0.c, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_dot_vec4_u32(~(_wgslsmith_add_vec4_u32(vec4<u32>(global0.e, var_0, global0.b, 1u), vec4<u32>(0u, 23373u, 0u, var_0)) | ~vec4<u32>(16918u, global0.b, global0.b, global0.e)), ~min(vec4<u32>(36807u, 0u, global0.e, 50592u), vec4<u32>(u_input.a, 0u, global0.a, 119544u))));
}

fn func_1() -> Struct_1 {
    let var_0 = 1u;
    let var_1 = u_input.c;
    let var_2 = abs(1u);
    let var_3 = global1.zxy;
    global4 = array<vec2<i32>, 10>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.x, global0.d, global1.x) - vec4<f32>(global1.x, -244f, 1000f, -208f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, 1999f, global0.d, 1000f))))));
    var var_0 = Struct_1(18361u, 1u, global0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -312f))), _wgslsmith_f_op_f32(floor(166f)), false)), countOneBits(abs(10038u)));
    var var_1 = select(!vec4<bool>(select(true, true, var_0.c), !(global0.c & var_0.c), true, any(select(vec4<bool>(false, var_0.c, var_0.c, true), vec4<bool>(global0.c, true, var_0.c, global0.c), true))), !(!vec4<bool>(any(vec3<bool>(var_0.c, true, true)), true, var_0.c, true)), vec4<bool>(false, (1i < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b, u_input.c), vec3<i32>(u_input.b, u_input.c, 0i))) != global0.c, false, true));
    var_0 = func_1();
    global0 = func_2();
    var var_2 = select(~u_input.b, u_input.b, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(1000f)));
}

