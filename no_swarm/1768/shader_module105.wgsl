struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<bool, 21>();
    var var_0 = vec3<bool>(global0[_wgslsmith_index_u32(abs(min(73300u, u_input.c.x)), 21u)], true, any(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(41997u, 21u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 21u)], true, true, global0[_wgslsmith_index_u32(u_input.b, 21u)]), false), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true), all(vec2<bool>(global0[_wgslsmith_index_u32(29384u, 21u)], true)))) || all(vec4<bool>(true || global0[_wgslsmith_index_u32(u_input.b, 21u)], true, global0[_wgslsmith_index_u32(u_input.b >> (u_input.b % 32u), 21u)], !global0[_wgslsmith_index_u32(u_input.d.x, 21u)])));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-168f, -911f), vec2<f32>(1000f, 361f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(729f, 1864f), vec2<f32>(-1423f, 602f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-737f, -322f), vec2<f32>(1000f, 507f))), !all(vec3<bool>(true, false, var_0.x))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-388f, 291f))))));
    let var_2 = select(vec2<bool>(any(select(!var_0.yy, select(var_0.xy, vec2<bool>(false, var_0.x), var_0.yx), var_0.x)), _wgslsmith_dot_vec3_i32(u_input.a.wyx, vec3<i32>(u_input.a.x, -2147483647i, -20924i)) < -47338i), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(60501u, 21u)], var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-501f)), _wgslsmith_div_f32(176f, var_1.x)), -1070f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2008f, var_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2670f) * 993f)));
    var var_3 = _wgslsmith_mult_i32(u_input.a.x, 1i);
    return -958f;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(25951u, 4294967295u), 1u);
    global0 = array<bool, 21>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-250f * _wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_f32(355f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -1650f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-758f - -554f), -229f)))))));
    let var_2 = _wgslsmith_sub_u32(~(~(~(~14795u))), 3101u);
    let var_3 = ~(~var_2);
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-713f, -2063f))), vec3<bool>(global0[_wgslsmith_index_u32(var_2, 21u)], !global0[_wgslsmith_index_u32(u_input.b & var_3, 21u)], _wgslsmith_dot_vec3_i32(~u_input.a.zwx, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) > (reverseBits(13284i) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(0i, u_input.a.x, u_input.a.x)))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1887f, -891f)), -827f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1794f, var_0.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(523f, var_0.a, var_0.a)))))), vec4<i32>(u_input.a.x, 1i, u_input.a.x, (firstLeadingBit(24557i) << (u_input.b % 32u)) | u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a, var_0.a, var_0.a), vec3<f32>(var_0.a, -1108f, var_0.a))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.a, -1179f) * vec3<f32>(361f, 1599f, var_0.a)))) + vec3<f32>(_wgslsmith_f_op_f32(min(var_0.a, -620f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1488f + -474f), 1936f))), u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * var_0.a))), var_0.a, var_0.a, -133f));
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i | _wgslsmith_clamp_i32(u_input.a.x, var_1.b.x, 2147483647i));
}

