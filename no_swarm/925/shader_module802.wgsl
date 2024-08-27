struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = u_input.b.yw;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(431f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-987f)), 1126f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1439f * 822f))))));
    let var_2 = ~var_0 & max(vec2<u32>(~(~u_input.d), ~49977u), var_0);
    var_1 = -1017f;
    let var_3 = ~var_2.x;
    return -1i;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.b | u_input.b;
    var var_1 = ~_wgslsmith_mult_i32(~func_3(reverseBits(vec4<i32>(-11480i, global0[_wgslsmith_index_u32(14440u, 5u)], 19261i, global0[_wgslsmith_index_u32(7258u, 5u)])), Struct_1(vec4<bool>(false, true, false, false), global0[_wgslsmith_index_u32(u_input.b.x, 5u)])), -4719i);
    global0 = array<i32, 5>();
    var var_2 = vec2<bool>(false && (_wgslsmith_f_op_f32(step(-372f, _wgslsmith_f_op_f32(-1000f * 800f))) == _wgslsmith_f_op_f32(abs(-808f))), false);
    let var_3 = vec3<bool>(false, false, any(!(!select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x), var_2.x))));
    return Struct_1(!vec4<bool>(all(var_3.zy) | !var_3.x, !(true & var_2.x), any(vec3<bool>(true, true, var_3.x)), false), global0[_wgslsmith_index_u32(~1u, 5u)] & _wgslsmith_sub_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.d, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)]) & ~(-19678i), global0[_wgslsmith_index_u32(~countOneBits(u_input.c), 5u)]));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    var var_0 = func_2();
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1173f)), -680f, _wgslsmith_f_op_f32(533f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1681f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1076f * 349f))))));
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    return -var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(select(-(~vec3<i32>(28227i, -8639i, global0[_wgslsmith_index_u32(0u, 5u)])), firstTrailingBit(max(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], -2848i, global0[_wgslsmith_index_u32(100872u, 5u)]), vec3<i32>(-23372i, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], -15078i))), false), vec3<i32>(-30119i, ~func_1(vec4<i32>(21119i, global0[_wgslsmith_index_u32(u_input.d, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)], 3646i)), 19252i)));
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(834f, _wgslsmith_f_op_f32(trunc(285f))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(112f)) - _wgslsmith_f_op_f32(-1015f * -184f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1912f, _wgslsmith_f_op_f32(round(-949f)), false))), true)));
    global0 = array<i32, 5>();
    var var_2 = u_input.b.xx;
    global0 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.d, ~4294967295u));
}

