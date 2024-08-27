struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<f32, 26>;

var<private> global2: u32;

var<private> global3: array<Struct_3, 28>;

var<private> global4: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<bool> {
    global2 = 4294967295u;
    global1 = array<f32, 26>();
    let var_0 = Struct_2(abs(~vec2<i32>(~(-2147483647i), _wgslsmith_mod_i32(46571i, 2147483647i))), global4.a);
    var var_1 = var_0;
    let var_2 = 16099u;
    return !select(select(select(!vec2<bool>(true, global0.x), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(global0.x, global0.x)), vec2<bool>(var_0.b.a, false)), vec2<bool>(!var_0.b.a, global0.x || var_1.b.a), vec2<bool>(true, global0.x)), vec2<bool>(false, global0.x), var_1.b.a);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -922f)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 26u)])));
    let var_1 = !select(vec2<bool>(!(global4.a.a && true), false), !select(select(vec2<bool>(global0.x, false), vec2<bool>(arg_0.a.a, false), global0.x), !vec2<bool>(global4.a.a, global4.a.a), vec2<bool>(global4.a.a, false)), global4.a.a | true);
    global1 = array<f32, 26>();
    var var_2 = func_3();
    global0 = vec2<bool>(any(select(!select(vec4<bool>(false, arg_0.a.a, global0.x, true), vec4<bool>(true, global4.a.a, var_1.x, true), vec4<bool>(global4.a.a, true, true, true)), !select(vec4<bool>(true, true, var_1.x, global0.x), vec4<bool>(global0.x, var_1.x, false, false), vec4<bool>(var_1.x, true, var_1.x, global4.a.a)), !vec4<bool>(var_2.x, true, false, global0.x))), global4.a.a);
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(var_0))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_1(true);
    let var_1 = 44164u;
    global1 = array<f32, 26>();
    var var_2 = _wgslsmith_div_f32(237f, arg_1.x);
    let var_3 = arg_0;
    return !select(select(select(!vec4<bool>(true, global0.x, true, true), vec4<bool>(false, global0.x, false, false), select(vec4<bool>(false, false, global4.a.a, arg_2), vec4<bool>(var_3.a, var_0.a, arg_2, true), false)), vec4<bool>(var_0.a & var_3.a, select(true, false, arg_2), false, global4.a.a), vec4<bool>(true, !var_3.a, false, !arg_0.a)), select(vec4<bool>(arg_1.x == -984f, true, arg_0.a, arg_2), !(!vec4<bool>(global0.x, false, var_3.a, global0.x)), false), global0.x);
}

fn func_1(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = func_4(Struct_1(global4.a.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(arg_0, vec3<i32>(71863i, 2147483647i, -35435i))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)]))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(54540u, 26u)], global1[_wgslsmith_index_u32(69391u, 26u)]))))), true);
    global1 = array<f32, 26>();
    global3 = array<Struct_3, 28>();
    var var_1 = Struct_2(firstTrailingBit(vec2<i32>(firstTrailingBit(1i) ^ 1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 30377i), reverseBits(vec2<i32>(31074i, 41434i))))), Struct_1(global4.a.a));
    var var_2 = u_input.a;
    return reverseBits(select(~vec4<u32>(u_input.a, u_input.a, 44832u, u_input.a), select(vec4<u32>(1u, 17237u, 21408u, 80556u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 170316u)), all(var_0.xz)), vec4<bool>(all(vec3<bool>(true, arg_0.a.a, global0.x)), global1[_wgslsmith_index_u32(1u, 26u)] < -1000f, var_0.x && false, false))) << (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a, 44689u, 1u, 72617u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 0u, 51801u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) ^ vec4<u32>(u_input.a, 19065u, 1u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, 32271u, u_input.a), vec4<u32>(0u, 4294967295u, u_input.a, 0u))), vec4<u32>(u_input.a, 1u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 66999u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~_wgslsmith_sub_u32(4294967295u, u_input.a), u_input.a)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(~39711i, reverseBits(_wgslsmith_div_i32(-1i, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(func_1(Struct_3(Struct_1(false))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(48065u, u_input.a), u_input.a, 1u << (u_input.a % 32u), countOneBits(u_input.a)), ~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 1275u)))), u_input.a, countOneBits(var_0.x));
}

