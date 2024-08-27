struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 7>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32) -> f32 {
    global1 = array<bool, 7>();
    var var_0 = Struct_1(arg_0);
    let var_1 = Struct_1(arg_0);
    var_0 = Struct_1(~_wgslsmith_add_i32(_wgslsmith_add_i32(countOneBits(-2147483647i), -21063i), -8971i));
    global0 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-341f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1214f)) - _wgslsmith_f_op_f32(-658f - 814f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1046f - -394f))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    global1 = array<bool, 7>();
    global1 = array<bool, 7>();
    let var_1 = vec3<i32>(-1i) * -arg_1;
    let var_2 = -1769f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_0.a, arg_0.x)), _wgslsmith_f_op_f32(-237f * 1279f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(-2793i, 69758u))))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -328f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1807f) * _wgslsmith_f_op_f32(531f - 432f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a, vec3<i32>(26073i, arg_2.a, -14229i), Struct_1(0i)))))));
    global1 = array<bool, 7>();
    global1 = array<bool, 7>();
    var var_1 = arg_0;
    let var_2 = -37368i;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * 0i;
    let var_1 = vec4<u32>(~(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x & u_input.a.x)), ~u_input.a.x, 36846u, ~u_input.a.x);
    global1 = array<bool, 7>();
    global0 = 47074u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(1045f + -952f), true)));
    let var_3 = select(vec2<bool>(false, global1[_wgslsmith_index_u32(29530u, 7u)]), !vec2<bool>(select(global1[_wgslsmith_index_u32(~var_1.x, 7u)], true, !global1[_wgslsmith_index_u32(1u, 7u)]), !global1[_wgslsmith_index_u32(var_1.x, 7u)]), !vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 7u)], any(!vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(73672u, 7u)]))));
    global1 = array<bool, 7>();
    let var_4 = !global1[_wgslsmith_index_u32(func_1(Struct_1(-1i), false, Struct_1(i32(-1i) * -40214i)) & 15335u, 7u)];
    var var_5 = Struct_1(_wgslsmith_clamp_i32((1i >> (_wgslsmith_add_u32(0u, 0u) % 32u)) << (u_input.a.x % 32u), 0i, _wgslsmith_add_i32(11979i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, vec4<i32>(24496i, 3630i << (var_1.x % 32u), -select(-2147483647i, _wgslsmith_mult_i32(var_5.a, 40258i), any(vec2<bool>(var_3.x, false))), (1i ^ (var_5.a & -2147483647i)) >> ((var_1.x << (var_1.x % 32u)) % 32u)), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_5.a, -1i, -2147483647i, 40462i), vec4<i32>(var_5.a, var_5.a, 0i, 28244i)), reverseBits(var_5.a | var_5.a)) ^ vec2<i32>(firstTrailingBit(-1i | var_5.a), -var_5.a));
}

