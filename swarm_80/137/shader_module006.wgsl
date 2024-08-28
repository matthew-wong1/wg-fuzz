struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(i32(-2147483648), 21400i, -39774i, -18007i, i32(-2147483648), 41447i, 1i, 0i, -1i, i32(-2147483648), 2147483647i, -3946i, 8546i, 0i, 7008i, -1i, 1i, 0i);

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<i32>, 15>;

var<private> global3: array<bool, 5> = array<bool, 5>(true, false, false, true, true);

var<private> global4: f32 = -2197f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> Struct_2 {
    return Struct_2(Struct_1(true, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.a, u_input.a), ~(~38066u)), 5u)]));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>) -> vec3<i32> {
    let var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -866f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1022f)))));
    let var_3 = Struct_3(Struct_2(var_0.a.a));
    var var_4 = -938f;
    return global2[_wgslsmith_index_u32(~(~1u), 15u)];
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> vec2<f32> {
    global2 = array<vec3<i32>, 15>();
    let var_0 = abs(~func_3(Struct_4(Struct_3(arg_2), -2147483647i, -1i, func_1().a), -vec3<i32>(44644i, global0[_wgslsmith_index_u32(arg_0, 18u)], global0[_wgslsmith_index_u32(11240u, 18u)])));
    global1 = !vec4<bool>(false, false, !global3[_wgslsmith_index_u32(select(abs(u_input.a), arg_0, all(global1.yw)), 5u)], all(select(!global1.yzz, vec3<bool>(arg_1.x, false, global3[_wgslsmith_index_u32(0u, 5u)]), arg_1.x)));
    var var_1 = select(!arg_1.yx, select(arg_1.zy, vec2<bool>(false, true), select(arg_1.zy, !select(arg_1.zz, vec2<bool>(false, false), false), !(global3[_wgslsmith_index_u32(arg_0, 5u)] | false))), any(vec3<bool>(true, false, arg_1.x)));
    global2 = array<vec3<i32>, 15>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1109f, 138f))))), _wgslsmith_f_op_f32(step(-342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-110f, -1004f))) + _wgslsmith_div_f32(_wgslsmith_div_f32(955f, -114f), _wgslsmith_f_op_f32(trunc(1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(618f, -1164f)), _wgslsmith_f_op_f32(round(-1025f)), true))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1882f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(674f + 159f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(1u, global1.wzy, func_1()))));
    global1 = vec4<bool>(var_0 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 1539f))), true, !(!(!all(vec3<bool>(true, global1.x, global3[_wgslsmith_index_u32(4294967295u, 5u)])))), !((min(23431u, u_input.a) >> (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)) < _wgslsmith_mult_u32(26013u ^ u_input.a, ~155u)));
    global4 = -653f;
    global1 = select(select(vec4<bool>(all(!vec2<bool>(global1.x, true)), all(vec2<bool>(true, true)), all(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 5u)], true)), !(!global1.x)), !vec4<bool>(true, true, global3[_wgslsmith_index_u32(reverseBits(8391u), 5u)], any(vec3<bool>(global3[_wgslsmith_index_u32(42670u, 5u)], global3[_wgslsmith_index_u32(u_input.a, 5u)], false))), select(!select(vec4<bool>(true, false, global1.x, true), vec4<bool>(global3[_wgslsmith_index_u32(0u, 5u)], global1.x, false, global1.x), vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(1u, 5u)])), !(!vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 5u)], global1.x, true)), vec4<bool>(!global3[_wgslsmith_index_u32(u_input.a, 5u)], global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a), 5u)], !global3[_wgslsmith_index_u32(u_input.a, 5u)], false))), !vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, ~4294967295u, min(3699u, u_input.a)), 5u)]), true);
    var var_2 = !(!((global1.x == true) & global1.x) && global3[_wgslsmith_index_u32(u_input.a, 5u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0 * 1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_1.x, var_0, -806f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -148f, -924f, var_0))) + vec4<f32>(576f, -258f, _wgslsmith_f_op_f32(step(var_1.x, var_1.x)), var_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-459f, var_0, var_0, var_1.x) + vec4<f32>(-1000f, -439f, 485f, var_1.x))))));
}

