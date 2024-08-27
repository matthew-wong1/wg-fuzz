struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<i32>, 15>;

var<private> global2: Struct_2 = Struct_2(vec2<f32>(2122f, 1567f));

var<private> global3: array<vec2<u32>, 26>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_3 {
    global3 = array<vec2<u32>, 26>();
    var var_0 = u_input.a;
    var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.a.x, global2.a.x), global2.a)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global2.a)))))));
    let var_2 = true;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-199f)), -761f), _wgslsmith_f_op_f32(1f * -1211f)))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = vec4<f32>(global2.a.x, -1400f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(global2.a.x + -456f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1869f)))));
    let var_1 = -2147483647i;
    global2 = Struct_2(var_0.yw);
    return u_input.a.x;
}

fn func_1() -> u32 {
    global1 = array<vec3<i32>, 15>();
    var var_0 = func_2();
    let var_1 = Struct_2(global2.a);
    let var_2 = vec4<u32>(countOneBits(u_input.a.x), firstTrailingBit(_wgslsmith_add_u32(~u_input.a.x, 1u)), u_input.a.x, 21282u) >> (vec4<u32>(~(4294967295u >> (u_input.a.x % 32u)) << ((abs(u_input.a.x) & u_input.a.x) % 32u), _wgslsmith_clamp_u32(4294967295u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 14005u, 1u, u_input.a.x), vec4<u32>(55566u, 17135u, u_input.a.x, u_input.a.x)) ^ _wgslsmith_mult_u32(57797u, u_input.a.x)), func_3(Struct_1(countOneBits(global3[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec4<bool>(true, true, true, true), u_input.b ^ 0i, -26601i >> (u_input.a.x % 32u)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), ~27670u) % vec4<u32>(32u));
    var var_3 = select(select(vec3<bool>(!all(vec2<bool>(true, false)), true, true), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, u_input.a.x != u_input.a.x, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, false))), !any(vec4<bool>(true, false, false, false)) | (false | any(vec4<bool>(false, false, true, false)))), !vec3<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, false)), true), vec3<bool>(!(0i > u_input.b), !(!all(vec4<bool>(false, true, false, false))), var_1.a.x > var_1.a.x));
    return _wgslsmith_clamp_u32(var_2.x, var_2.x, 1u);
}

fn func_4(arg_0: u32) -> f32 {
    let var_0 = func_2();
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.x, var_0.a), global2.a, true)) + vec2<f32>(var_0.a, -349f)) * vec2<f32>(var_0.a, _wgslsmith_f_op_f32(max(global2.a.x, -619f)))) + vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(step(var_0.a, 1619f)))));
    var var_1 = global2.a;
    global3 = array<vec2<u32>, 26>();
    let var_2 = vec2<bool>(all(vec3<bool>(true, true, true)), all(!select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), any(vec3<bool>(false, true, false)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1653f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(~abs(~u_input.a.x), 1u), !(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)))), u_input.b, _wgslsmith_mod_i32(u_input.b, abs(~(~2847i))));
    let var_1 = var_0.b.x;
    global2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(func_4(func_1())), -612f));
    let var_2 = func_2();
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(global2.a - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global2.a, global2.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, -12512i)) & -10448i, abs(6100i)), var_0.a);
}

