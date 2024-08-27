struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<bool>(false, false), 79739i, vec4<u32>(4294967295u, 0u, 0u, 112735u), vec4<bool>(false, false, false, false), Struct_3(vec2<f32>(1605f, -708f), Struct_2(vec3<f32>(1501f, 762f, -1636f)), 751f, 4294967295u, Struct_2(vec3<f32>(740f, 1298f, -340f))));

var<private> global1: array<Struct_4, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: vec4<u32>) -> f32 {
    global1 = array<Struct_4, 14>();
    let var_0 = global0.a;
    global0 = global1[_wgslsmith_index_u32(countOneBits(0u), 14u)];
    var var_1 = global0.e;
    global1 = array<Struct_4, 14>();
    return -725f;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec2<f32>) -> u32 {
    global0 = Struct_4(arg_2.xy, _wgslsmith_mod_i32(u_input.a, i32(-1i) * -7843i), global0.c, select(select(!(!vec4<bool>(global0.a.x, arg_2.x, global0.a.x, arg_2.x)), global0.d, any(vec2<bool>(arg_2.x, global0.d.x))), vec4<bool>(any(select(vec3<bool>(global0.d.x, arg_2.x, false), vec3<bool>(true, false, false), global0.d.xwy)), !any(vec3<bool>(false, true, arg_2.x)), all(global0.d), true), global0.a.x), Struct_3(vec2<f32>(global0.e.a.x, arg_1.a.x), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.e.b.a - arg_0.a))), -914f, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, 0u, 36839u), ~global0.c.xxy) ^ 1u, arg_0));
    let var_0 = Struct_2(arg_1.a);
    global0 = global1[_wgslsmith_index_u32(u_input.d, 14u)];
    var var_1 = Struct_3(arg_3, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.e.a.x), 754f, _wgslsmith_f_op_f32(-var_0.a.x)))), arg_3.x, ~_wgslsmith_sub_u32(1u, select(~4294967295u, _wgslsmith_div_u32(global0.c.x, 1u), arg_2.x)), arg_0);
    var var_2 = vec2<bool>((59305u & ~global0.c.x) < countOneBits(~_wgslsmith_div_u32(u_input.d, global0.c.x)), false);
    return (reverseBits(4294967295u) | select(1u, ~_wgslsmith_clamp_u32(u_input.d, var_1.d, u_input.d), all(select(arg_2.xy, global0.d.wx, true)))) & ~u_input.d;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-arg_1.a), global0.e.b, 1260f, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d | u_input.d, _wgslsmith_div_u32(0u, 4294967295u), global0.e.d | arg_1.d.x, ~1u), global0.c, select(vec4<bool>(arg_0.x, true, arg_2, arg_0.x), select(vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(true, arg_2, false, true), vec4<bool>(true, true, true, arg_0.x)), select(vec4<bool>(arg_2, arg_0.x, arg_2, false), vec4<bool>(global0.d.x, false, global0.a.x, arg_0.x), vec4<bool>(global0.a.x, true, arg_2, true)))), vec4<u32>(~_wgslsmith_dot_vec4_u32(global0.c, global0.c), abs(1u), func_3(Struct_2(vec3<f32>(106f, 1181f, 1127f)), Struct_2(vec3<f32>(1199f, 948f, arg_1.a.x)), !global0.d.xyx, vec2<f32>(-765f, -898f)), 4294967295u)), global0.e.b);
    var var_1 = vec3<bool>(global0.a.x, arg_0.x, true);
    var var_2 = arg_1.c;
    var_2 = vec2<u32>(global0.e.d, firstTrailingBit(~min(var_0.d, ~4294967295u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    return all(select(global0.d.xw, arg_0.zy, !global0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 14>();
    let var_0 = global0.e.b.a.yz;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(147f, -910f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1928f, global0.e.b.a.x)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.e.e.a.zz + global0.e.b.a.xy))), vec2<bool>(!(var_0.x <= _wgslsmith_f_op_f32(func_1(global0.e.b, 1u, false, global0.c))), true)));
    var_1 = vec2<f32>(-868f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1254f)) + _wgslsmith_f_op_f32(min(var_1.x, var_1.x))))));
    let var_2 = vec4<bool>(all(select(vec3<bool>(true, all(vec4<bool>(global0.a.x, global0.d.x, true, false)), global0.a.x && global0.d.x), global0.d.zyw, all(!vec3<bool>(global0.d.x, true, true)))), func_2(!vec3<bool>(global0.a.x || global0.a.x, global0.a.x, true), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.e.e.a.yz), _wgslsmith_add_u32(~92270u, 1u), abs(firstLeadingBit(global0.c.zw)), vec2<u32>(global0.c.x << (global0.c.x % 32u), 1u)), !global0.a.x != (global0.b <= (i32(-1i) * -1i))), true, true);
    var var_3 = Struct_4(global0.a, _wgslsmith_dot_vec2_i32(~(min(u_input.c.yw, u_input.c.wz) | ~u_input.e), u_input.e), ~(~(~global0.c)), !vec4<bool>(true, var_2.x, !global0.a.x, 1000f < _wgslsmith_f_op_f32(trunc(-443f))), Struct_3(global0.e.a, Struct_2(_wgslsmith_f_op_vec3_f32(exp2(global0.e.e.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-744f * global0.e.a.x))), select(17437u, _wgslsmith_mult_u32(~0u, u_input.d), var_2.x), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, global0.e.e.a.x, global0.e.c), global0.e.e.a, vec3<bool>(false, global0.a.x, var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))));
}

