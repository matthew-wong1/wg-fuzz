struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true));

var<private> global1: array<Struct_4, 11>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(178f, 470f, -867f, 934f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -420f), -1159f, _wgslsmith_f_op_f32(-1682f * _wgslsmith_div_f32(-1365f, -1103f)), 1440f)))));
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(2147483647i & -_wgslsmith_dot_vec2_i32(vec2<i32>(-55999i, 50275i), vec2<i32>(2147483647i, 2147483647i)), -(i32(-1i) * -13352i)), max(~(abs(2147483647i) >> (_wgslsmith_dot_vec3_u32(u_input.b.yyx, vec3<u32>(1u, 9618u, u_input.a)) % 32u)), 1i), -abs(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(75301i, -50195i)), _wgslsmith_mod_i32(1i, -1i))));
    return countOneBits(_wgslsmith_mod_i32(9637i, var_1.x));
}

fn func_2() -> Struct_3 {
    let var_0 = reverseBits(func_3());
    var var_1 = global1[_wgslsmith_index_u32(min(u_input.c, u_input.b.x & ~_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.c), 4294967295u)), 11u)];
    var var_2 = !(_wgslsmith_div_u32(~16124u, _wgslsmith_mod_u32(select(11788u, u_input.b.x, true), 29600u)) <= 31208u);
    var var_3 = select(u_input.a, 28893u, true);
    global1 = array<Struct_4, 11>();
    return Struct_3(vec4<bool>(true & !any(global0[_wgslsmith_index_u32(u_input.a, 6u)]), true, true, true));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: u32) -> u32 {
    global1 = array<Struct_4, 11>();
    let var_0 = -587f;
    let var_1 = func_2();
    var var_2 = Struct_1(0u, var_1.a.wzw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1693f, arg_0.c.d)))))), arg_0.c.c, all(arg_0.c.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(463f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0.c.d, -161f))))))), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.a.x, var_1.a.x), true)), true));
    var var_3 = ~37255u;
    return max(abs(abs(max(arg_3 & 16130u, ~54721u))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 11>();
    var var_0 = vec2<bool>(!all(vec3<bool>(true, select(true, false, true), true)), true);
    global1 = array<Struct_4, 11>();
    let var_1 = false;
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(7900u, u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), func_1(Struct_2(vec4<i32>(-7086i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, -19767i)), -25642i, _wgslsmith_dot_vec4_i32(vec4<i32>(-18144i, 1i, 2147483647i, -22629i), vec4<i32>(1i, -17039i, 2147483647i, 1i))), i32(-1i) * -14686i, Struct_1(countOneBits(55721u), select(vec3<bool>(var_0.x, var_1, false), vec3<bool>(var_1, var_0.x, var_0.x), var_1), vec2<f32>(-1839f, 451f), _wgslsmith_f_op_f32(1566f + -2673f), vec2<bool>(true, true))), var_1, var_0.x, min(~10007u, 13825u)), abs(1i));
}

