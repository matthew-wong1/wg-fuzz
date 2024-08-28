struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    var var_0 = 721f;
    let var_1 = arg_0.b;
    var var_2 = arg_0.a;
    let var_3 = arg_1;
    let var_4 = true;
    return abs(select(~(~vec4<u32>(62208u, var_2.a, 4294967295u, 1u)), ~firstLeadingBit(~vec4<u32>(arg_2, var_2.a, var_3.c.x, 50832u)), !select(select(vec4<bool>(false, var_4, arg_1.e.x, arg_1.e.x), vec4<bool>(var_3.e.x, true, arg_1.e.x, var_4), arg_1.e.x), select(vec4<bool>(var_3.e.x, var_4, false, false), vec4<bool>(false, var_4, false, true), vec4<bool>(false, var_4, true, true)), 32319i <= arg_1.d.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    global0 = array<vec2<u32>, 3>();
    global0 = array<vec2<u32>, 3>();
    var var_0 = Struct_1(~u_input.c);
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(max(reverseBits(vec4<u32>(22838u, 50756u, 0u, var_0.a) & vec4<u32>(var_0.a, 4294967295u, 60180u, 0u)), func_3(arg_1, Struct_2(Struct_1(arg_1.c.x), vec3<i32>(15976i, u_input.b, 17772i), arg_1.c, vec2<i32>(u_input.d, -35616i), arg_1.e), u_input.c)), vec4<u32>(1u, var_0.a & min(1u, 0u), ~1u, _wgslsmith_add_u32(u_input.c, u_input.c) | _wgslsmith_dot_vec3_u32(arg_1.c, vec3<u32>(1u, 0u, var_0.a)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f + -278f))) * _wgslsmith_f_op_f32(trunc(-1558f)))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = 1u;
    let var_1 = 46992u;
    let var_2 = arg_3;
    var var_3 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.a.a, 4294967295u, 0u) & ~vec4<u32>(1u, 1u, arg_2.a.a, 1u), reverseBits(vec4<u32>(u_input.c, 0u, 54667u, var_1))));
    var_3 = 35784u;
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    global0 = array<vec2<u32>, 3>();
    global0 = array<vec2<u32>, 3>();
    let var_0 = arg_0.e.x;
    var var_1 = arg_0.b;
    global0 = array<vec2<u32>, 3>();
    return func_4(any(vec3<bool>(arg_0.e.x, !var_0, true)), !((firstLeadingBit(u_input.c) <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, arg_0.c.x), vec3<u32>(724u, 56570u, u_input.c))) && any(vec2<bool>(arg_1.x, true))), arg_0, select(!select(vec4<bool>(arg_1.x, true, arg_0.e.x, true), select(vec4<bool>(var_0, false, false, true), vec4<bool>(arg_1.x, true, var_0, var_0), false), any(vec4<bool>(true, var_0, true, true))), select(vec4<bool>(all(arg_1.xy), select(arg_1.x, arg_0.e.x, true), true, arg_0.e.x), select(select(vec4<bool>(true, var_0, arg_0.e.x, var_0), vec4<bool>(true, true, false, arg_0.e.x), false), vec4<bool>(var_0, false, var_0, true), false != var_0), vec4<bool>(true, true, var_0, true)), !(!(!vec4<bool>(true, false, true, arg_1.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(4118u);
    let var_1 = -300f;
    var var_2 = func_5(func_4(_wgslsmith_div_f32(187f, _wgslsmith_f_op_f32(func_2(vec2<u32>(var_0.a, 14303u), Struct_2(Struct_1(0u), u_input.e, vec3<u32>(1u, 5876u, 0u), u_input.e.zx, vec3<bool>(false, false, false))))) != _wgslsmith_div_f32(var_1, _wgslsmith_div_f32(388f, 965f)), !((i32(-1i) * -35055i) <= u_input.a), Struct_2(Struct_1(4294967295u), vec3<i32>(u_input.d, -17231i, u_input.a), ~abs(vec3<u32>(var_0.a, u_input.c, u_input.c)), _wgslsmith_div_vec2_i32(u_input.e.zz, vec2<i32>(-1i, 2147483647i)), vec3<bool>(true, true, true)), vec4<bool>(true, _wgslsmith_f_op_f32(step(1389f, 245f)) != var_1, false, !select(true, true, false))), select(!func_4(true, select(false, false, false), Struct_2(Struct_1(0u), u_input.e, vec3<u32>(u_input.c, var_0.a, 1u), vec2<i32>(u_input.e.x, u_input.a), vec3<bool>(true, true, true)), vec4<bool>(true, true, true, false)).e, !vec3<bool>(false, func_4(false, false, Struct_2(Struct_1(74482u), u_input.e, vec3<u32>(var_0.a, 6076u, 43072u), u_input.e.xz, vec3<bool>(false, true, false)), vec4<bool>(true, true, true, true)).e.x, true), true));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-658f, var_1)))))));
    var var_4 = var_2.b;
    return Struct_1(_wgslsmith_add_u32(countOneBits(var_2.a.a | 1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.c, 3u)] >> (vec2<u32>(0u, var_0.a) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(62410u, 3u)] & vec2<u32>(var_0.a, 88776u)), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 3>();
    global0 = array<vec2<u32>, 3>();
    let var_0 = func_1();
    var var_1 = ~(-1i);
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -389f)))) + 1f));
}

