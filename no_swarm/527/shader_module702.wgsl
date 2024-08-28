struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 6>;

var<private> global2: array<Struct_1, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = ~u_input.a.x;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x, ~1u) >> (abs(~vec4<u32>(70798u, 1u, var_0, 32294u)) % vec4<u32>(32u)), vec4<u32>(select(63788u, abs(u_input.a.x), _wgslsmith_f_op_f32(-1685f + -1476f) == global0.a), 35494u, u_input.a.x, abs(firstLeadingBit(var_0)) & select(_wgslsmith_clamp_u32(5378u, 0u, 40935u), 4489u, true))), 7u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a, -253f, -264f)))), _wgslsmith_div_vec3_f32(vec3<f32>(-449f, global0.a, 857f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a, -239f, -1016f)))))))));
    return -1426f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), global0.a) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global0.a))))));
    var var_1 = select(select(!vec3<bool>(true, all(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, true, false))), vec3<bool>(true, true, true), false), vec3<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)))), (u_input.a.x == u_input.a.x) || (all(vec2<bool>(false, true)) || false), true), false);
    global1 = array<vec4<i32>, 6>();
    global2 = array<Struct_1, 7>();
    let var_2 = firstTrailingBit(~select(_wgslsmith_mod_vec2_u32(~u_input.a, ~u_input.a), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, u_input.a), reverseBits(u_input.a)), var_1.x));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -988f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = Struct_1(-1000f);
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(232f)));
    var var_0 = !vec2<bool>((~arg_0 != 1u) | false, !(min(arg_0, arg_0) <= ~4061u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a));
    return false;
}

fn func_1(arg_0: f32) -> f32 {
    global2 = array<Struct_1, 7>();
    global1 = array<vec4<i32>, 6>();
    let var_0 = select(func_4(u_input.a.x | 23084u, func_2(), global2[_wgslsmith_index_u32(u_input.a.x, 7u)]) != !(_wgslsmith_f_op_f32(-arg_0) != _wgslsmith_f_op_f32(abs(128f))), false, true);
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 7u)];
    global1 = array<vec4<i32>, 6>();
    return -468f;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> u32 {
    global2 = array<Struct_1, 7>();
    global1 = array<vec4<i32>, 6>();
    var var_0 = firstTrailingBit(~vec3<u32>(u_input.a.x, ~u_input.a.x ^ _wgslsmith_sub_u32(u_input.a.x, 4294967295u), u_input.a.x));
    global2 = array<Struct_1, 7>();
    let var_1 = func_2();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a ^ vec2<u32>(reverseBits(30177u), func_5(_wgslsmith_f_op_f32(func_1(global0.a)), global2[_wgslsmith_index_u32(u_input.a.x, 7u)]) & 3674u);
    let var_1 = reverseBits(~vec3<i32>(2147483647i ^ select(-2147483647i, -8150i, true), 1i << (0u % 32u), ~(i32(-1i) * -210i)));
    var var_2 = vec4<bool>(select(true, true, !func_4(0u & var_0.x, Struct_1(-1000f), Struct_1(global0.a))), func_4(25949u, Struct_1(_wgslsmith_f_op_f32(func_3())), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 17703u, 0u, u_input.a.x) ^ (vec4<u32>(var_0.x, var_0.x, 1u, u_input.a.x) | vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x)), reverseBits(~vec4<u32>(4154u, var_0.x, var_0.x, var_0.x))), 7u)]), true, true);
    let var_3 = false;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(252f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    var var_5 = -1036f;
    let var_6 = global2[_wgslsmith_index_u32(~32427u, 7u)];
    let var_7 = global2[_wgslsmith_index_u32(u_input.a.x, 7u)];
    var var_8 = Struct_1(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2713f), _wgslsmith_f_op_f32(var_7.a - 307f), global0.a, 505f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, var_7.a, var_4.a, var_7.a))))), 7068i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.a))), _wgslsmith_div_vec2_f32(vec2<f32>(213f, var_4.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_7.a, var_7.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-203f, var_6.a) + vec2<f32>(-1621f, var_6.a)), var_2.wy)))), 0u >> (u_input.a.x % 32u));
}

