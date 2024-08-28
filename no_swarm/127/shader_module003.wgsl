struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(13569i, 1i);

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 8>;

var<private> global3: vec4<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> vec3<f32> {
    let var_0 = false;
    let var_1 = _wgslsmith_sub_u32(4294967295u, u_input.c);
    global1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(844f, global3.x)) - _wgslsmith_div_f32(1462f, global1.a.x))), _wgslsmith_f_op_f32(exp2(global1.a.x))));
    var var_2 = u_input.c;
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global3.zxw))));
    return global1.a;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(global3.xxw);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(global3.wzx - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(196f, var_0.a.x, 863f) + global1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2079f, -253f, 111f)))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1463f, var_1.a.x, var_0.a.x) * _wgslsmith_f_op_vec3_f32(min(var_1.a, var_0.a))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(224f, -677f))))), all(vec2<bool>(false, true)) && true)))));
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-163f - 530f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -798f) - _wgslsmith_f_op_f32(var_0.a.x + var_1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_vec2_f32(global3.xx, global3.ww))).x, var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x + -2801f), global1.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1587f + var_1.a.x)))));
    let var_2 = u_input.b.x ^ _wgslsmith_clamp_i32(global0.x, 2147483647i, global0.x);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(886f * _wgslsmith_div_f32(-764f, _wgslsmith_f_op_f32(f32(-1f) * -1153f))), global3.x, _wgslsmith_f_op_f32(global3.x * var_1.a.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<bool>, arg_3: f32) -> bool {
    var var_0 = arg_2.xy;
    var var_1 = func_2(-(~(~1i)));
    global0 = reverseBits(vec2<i32>(-1i) * -u_input.b);
    var var_2 = func_2(1i);
    var var_3 = Struct_1(var_1.a);
    return all(vec2<bool>(false, arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(select(true, all(vec3<bool>(true, true, false)), global0.x >= 39586i), !(52720u < u_input.c)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), !(-1970f <= _wgslsmith_f_op_f32(global3.x + 118f))), !select(vec2<bool>(true, true), vec2<bool>(true, func_1(u_input.d, true, vec3<bool>(true, false, false), -1954f)), !select(vec2<bool>(true, true), vec2<bool>(true, false), false)), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), !vec2<bool>(any(vec2<bool>(false, true)), true), all(vec2<bool>(true, true))));
    var var_1 = func_2(global0.x);
    var var_2 = any(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.c, 0u), ~1u, u_input.a.x), vec3<u32>(11742u, 0u, 0u)) << (max(min(~u_input.a.x, 25707u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.a) << (~u_input.c % 32u)) % 32u), 8u)]);
    var var_3 = !select(vec2<bool>(true, false), var_0, vec2<bool>(true, all(select(global2[_wgslsmith_index_u32(4294967295u, 8u)], vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x))));
    var_2 = -2147483647i > (-global0.x ^ _wgslsmith_mod_i32(global0.x, -9176i));
    var_2 = var_3.x;
    let var_4 = Struct_1(var_1.a);
    let var_5 = func_2(global0.x);
    let var_6 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.a.zx) * global3.zz));
}

