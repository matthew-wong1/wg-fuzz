struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 6>;

var<private> global2: array<bool, 15>;

var<private> global3: array<vec2<f32>, 23>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(-928f, ~u_input.b);
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 15u)];
    var var_2 = global1[_wgslsmith_index_u32(global0.x, 6u)];
    global4 = Struct_1(arg_3.x, i32(-1i) * -31844i);
    global4 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + _wgslsmith_f_op_f32(global4.a - var_0.a)), _wgslsmith_f_op_f32(702f * -1377f)) - -1000f), abs(_wgslsmith_add_i32(16199i, countOneBits(var_0.b))) >> (1u % 32u));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    global1 = array<i32, 6>();
    global3 = array<vec2<f32>, 23>();
    let var_0 = reverseBits(~u_input.a.x);
    global4 = arg_1;
    global3 = array<vec2<f32>, 23>();
    return !all(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 15u)], global2[_wgslsmith_index_u32(global0.x, 15u)], true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, global2[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 15u)], arg_0, false))));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) * -364f)), abs(-2147483647i));
    let var_1 = vec4<bool>(func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(21864u, u_input.a.x, 4294967295u), vec3<u32>(global0.x, 0u, global0.x)), vec3<u32>(68750u, 1u, 0u)), min(~vec3<u32>(global0.x, 4294967295u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(36271u, 39342u, 0u), vec3<u32>(4294967295u, 0u, 31486u), vec3<u32>(0u, 4294967295u, u_input.c)))), 15u)], func_2(u_input.a, global0.x, arg_0, vec2<f32>(global4.a, _wgslsmith_div_f32(global4.a, 689f)))), all(select(vec3<bool>(u_input.c >= u_input.c, true, global2[_wgslsmith_index_u32(global0.x << (u_input.c % 32u), 15u)]), !(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 15u)], true, global2[_wgslsmith_index_u32(0u, 15u)])), global0.x != max(global0.x, u_input.a.x))), global2[_wgslsmith_index_u32(global0.x, 15u)], (max(~(-8125i), -43038i) > abs(~global1[_wgslsmith_index_u32(32275u, 6u)])) | !(!select(false, global2[_wgslsmith_index_u32(15158u, 15u)], global2[_wgslsmith_index_u32(32343u, 15u)])));
    global0 = vec2<u32>(1u, 5940u);
    let var_2 = abs(reverseBits(~(~_wgslsmith_add_u32(42872u, 16647u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.a, _wgslsmith_div_f32(-721f, 689f), arg_0.a, var_0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, arg_0.a, var_0.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(181f, 634f, -323f, 1020f), vec4<f32>(var_0.a, -1000f, var_0.a, -1000f), true))))))));
    return ~abs(~(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global3 = array<vec2<f32>, 23>();
    let var_1 = vec2<f32>(_wgslsmith_div_f32(global4.a, global4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a + global4.a))))));
    let var_2 = select(vec3<bool>(true, var_0 > _wgslsmith_mod_u32(0u, global0.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~func_1(Struct_1(var_1.x, global4.b)), u_input.a ^ firstLeadingBit(u_input.a)), 15u)]), select(vec3<bool>(true, false & (4294967295u > var_0), !global2[_wgslsmith_index_u32(var_0, 15u)]), !vec3<bool>(all(vec4<bool>(false, true, global2[_wgslsmith_index_u32(global0.x, 15u)], global2[_wgslsmith_index_u32(0u, 15u)])), true, all(vec3<bool>(global2[_wgslsmith_index_u32(var_0, 15u)], true, global2[_wgslsmith_index_u32(var_0, 15u)]))), vec3<bool>(true, all(select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 15u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(16017u, 15u)]))), true)), global2[_wgslsmith_index_u32(0u ^ _wgslsmith_mult_u32(global0.x, func_1(func_2(u_input.a, u_input.a.x, Struct_1(-173f, global1[_wgslsmith_index_u32(var_0, 6u)]), var_1)).x), 15u)]);
    global4 = func_2(u_input.a & u_input.a, reverseBits(u_input.c), func_2(u_input.a, global0.x, func_2(u_input.a, ~_wgslsmith_mod_u32(24938u, u_input.c), func_2(~u_input.a, reverseBits(global0.x), Struct_1(-1000f, 18891i), _wgslsmith_f_op_vec2_f32(floor(global3[_wgslsmith_index_u32(31281u, 23u)]))), var_1), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(select(1140f, -583f, false))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, global4.a), _wgslsmith_f_op_vec2_f32(abs(var_1)), vec2<bool>(true, global2[_wgslsmith_index_u32(var_0, 15u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)))));
    global0 = u_input.a;
    var var_3 = ~var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(~39179u, 23u)] * global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(28289u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 0u, 0u, global0.x), vec4<u32>(70478u, 4294967295u, 53494u, var_0))), 23u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f - _wgslsmith_f_op_f32(select(func_2(u_input.a, 4294967295u, Struct_1(global4.a, -34296i), global3[_wgslsmith_index_u32(13988u, 23u)]).a, _wgslsmith_f_op_f32(-648f + -505f), all(vec2<bool>(global2[_wgslsmith_index_u32(var_0, 15u)], false)))))), u_input.d.yz);
}

