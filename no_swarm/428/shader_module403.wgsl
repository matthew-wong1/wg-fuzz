struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, true, true, false, false, false, false, false, true, true, true, true, false, true, false, false);

var<private> global1: array<i32, 31>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2054f, -332f) * _wgslsmith_f_op_f32(-1000f * 908f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -697f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-350f)) * _wgslsmith_div_f32(308f, -1000f)), -134f)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))));
    var var_1 = Struct_1(select(vec3<bool>(any(select(arg_0.a, arg_1.a, vec3<bool>(true, arg_1.a.x, false))), !arg_1.a.x, true), vec3<bool>(false, true, u_input.d.x <= countOneBits(0i)), vec3<bool>(any(vec3<bool>(arg_1.a.x, true, false)), global3.a.x, any(select(vec2<bool>(false, true), global2.a.xz, arg_2.a.yy)))));
    global1 = array<i32, 31>();
    var_1 = Struct_1(select(var_1.a, select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], false, true), global3.a, vec3<bool>(global3.a.x, true, arg_1.a.x)), global2.a, true), vec3<bool>(1i >= u_input.d.x, true, true), true), global2.a.x));
    return vec3<u32>(30352u, u_input.c.x, _wgslsmith_add_u32((23563u >> (u_input.e.x % 32u)) | 45743u, 1u & _wgslsmith_dot_vec4_u32(u_input.e, u_input.e)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> f32 {
    var var_0 = abs(max(vec3<u32>(~(~u_input.c.x), arg_2.x, 95056u), min(arg_2, func_3(Struct_1(arg_0.a), arg_0, Struct_1(global2.a), ~1u))));
    let var_1 = 33760u;
    var var_2 = arg_2.x;
    global0 = array<bool, 16>();
    let var_3 = arg_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1151f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-120f))))))));
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    global2 = Struct_1(vec3<bool>(true, select(true, any(select(vec3<bool>(false, global2.a.x, global0[_wgslsmith_index_u32(u_input.e.x, 16u)]), global2.a, true)), all(vec4<bool>(true, false, true, true))), any(select(!global3.a, !global3.a, global3.a))));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1127f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -2230f))), _wgslsmith_f_op_f32(step(-562f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(global2.a), arg_0, vec3<u32>(u_input.e.x, u_input.c.x, u_input.e.x), vec2<bool>(false, global3.a.x))) - _wgslsmith_f_op_f32(step(-173f, 678f))))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-207f)) + -221f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-251f, -2166f, true))) + _wgslsmith_f_op_f32(floor(946f))), false)));
    var var_1 = u_input.c;
    var var_2 = Struct_1(select(global3.a, select(!select(global3.a, global2.a, global2.a.x), select(vec3<bool>(global3.a.x, false, global3.a.x), vec3<bool>(false, global2.a.x, false), select(vec3<bool>(true, global3.a.x, true), vec3<bool>(global3.a.x, global0[_wgslsmith_index_u32(var_1.x, 16u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(95862u, 16u)], global3.a.x))), vec3<bool>(false, var_1.x > 4294967295u, all(global3.a.yz))), vec3<bool>(all(global2.a), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.e.x, _wgslsmith_add_u32(var_1.x, 40603u), var_1.x), 16u)], true)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.x)))) * _wgslsmith_div_f32(-641f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1276f))));
    return select(global3.a, select(global2.a, vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_1.x, 16u)]), vec3<bool>(true, true, !(global1[_wgslsmith_index_u32(var_1.x, 31u)] > global1[_wgslsmith_index_u32(69382u, 31u)]))), select(vec3<bool>(!global3.a.x, all(select(vec2<bool>(global3.a.x, true), vec2<bool>(global2.a.x, var_2.a.x), vec2<bool>(global2.a.x, true))), 1i >= -u_input.d.x), !select(!vec3<bool>(false, false, global3.a.x), global3.a, select(vec3<bool>(false, false, global3.a.x), var_2.a, false)), vec3<bool>(global0[_wgslsmith_index_u32(~reverseBits(var_1.x), 16u)], false, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 31>();
    global0 = array<bool, 16>();
    let var_0 = Struct_1(select(select(func_1(min(vec2<i32>(global1[_wgslsmith_index_u32(51935u, 31u)], 1i), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.e.x, 31u)]))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global2.a.x, global0[_wgslsmith_index_u32(u_input.e.x, 16u)]), global2.a, false), !vec3<bool>(global2.a.x, global2.a.x, global2.a.x), select(vec3<bool>(global3.a.x, false, global0[_wgslsmith_index_u32(0u, 16u)]), vec3<bool>(global2.a.x, global3.a.x, global3.a.x), false)), true), !(!global2.a), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], !global0[_wgslsmith_index_u32(u_input.e.x, 16u)])));
    global1 = array<i32, 31>();
    global1 = array<i32, 31>();
    global2 = var_0;
    let var_1 = Struct_1(global3.a);
    global1 = array<i32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(~2147483647i, 0i, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 17725u), 31u)]) ^ 0i, u_input.d.x), _wgslsmith_div_f32(1545f, _wgslsmith_f_op_f32(-1161f + _wgslsmith_f_op_f32(f32(-1f) * -334f))), u_input.a.x ^ u_input.e.x);
}

