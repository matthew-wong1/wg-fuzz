struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, false, false, true, true, true, false, false, false, false, false, false, false, true);

var<private> global1: bool = true;

var<private> global2: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(-50199i, vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 15u)], false, true, !all(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 15u)], true, true), arg_2.b.xyz))), !arg_2.b.x);
    var var_1 = 1u;
    global0 = array<bool, 15>();
    global1 = arg_2.c && all(var_0.b.xx);
    var var_2 = ~(-u_input.a.xx);
    return i32(-1i) * -67232i;
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    global2 = min(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(abs(vec2<u32>(4703u, 29780u))), abs(vec2<u32>(global2.x, global2.x))), ~vec2<u32>(abs(7251u), abs(1u)), vec2<u32>(~_wgslsmith_mod_u32(19402u, 4902u), global2.x)), ~_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(98845u, global2.x), vec2<u32>(global2.x, 1u)), reverseBits(vec2<u32>(58173u, global2.x)) & vec2<u32>(67353u, 40074u)));
    let var_0 = u_input.a.x;
    let var_1 = Struct_3(Struct_1(-7556i, select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(56377u, 15u)], false, false, global0[_wgslsmith_index_u32(global2.x, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 15u)], false, global0[_wgslsmith_index_u32(2629u, 15u)], global0[_wgslsmith_index_u32(30604u, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 15u)], global0[_wgslsmith_index_u32(7367u, 15u)], global0[_wgslsmith_index_u32(22524u, 15u)], global0[_wgslsmith_index_u32(global2.x, 15u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(29834u, 15u)], global0[_wgslsmith_index_u32(22606u, 15u)], false, global0[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(global2.x, 15u)], global0[_wgslsmith_index_u32(global2.x, 15u)], global0[_wgslsmith_index_u32(global2.x, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 15u)], global0[_wgslsmith_index_u32(9984u, 15u)], false, true)), vec4<bool>(global0[_wgslsmith_index_u32(76748u, 15u)], false, true, global0[_wgslsmith_index_u32(global2.x, 15u)])), vec4<bool>(true, global0[_wgslsmith_index_u32(22794u, 15u)] & global0[_wgslsmith_index_u32(global2.x, 15u)], !global0[_wgslsmith_index_u32(global2.x, 15u)], any(vec2<bool>(false, true))), true), false), Struct_1(1i, select(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(global2.x, 15u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 15u)], false, global0[_wgslsmith_index_u32(5733u, 15u)], global0[_wgslsmith_index_u32(102799u, 15u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(global2.x, 15u)], global0[_wgslsmith_index_u32(23111u, 15u)], false), global0[_wgslsmith_index_u32(~global2.x, 15u)]), !select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(global2.x, 15u)], global0[_wgslsmith_index_u32(global2.x, 15u)]), vec4<bool>(false, true, true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(global2.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], true))), global0[_wgslsmith_index_u32(~18863u, 15u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1054f, 426f, global0[_wgslsmith_index_u32(global2.x, 15u)]))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(3044f)) * -388f))), 0u, global2.x);
    var var_2 = 245f;
    let var_3 = 25752u;
    return var_3;
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = vec2<u32>(76339u, func_3(func_2(vec2<bool>(true, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(546f, -172f, -1173f, 180f)), Struct_1(~0i, vec4<bool>(true, false, false, false), all(vec4<bool>(true, arg_0.x, false, false)))), u_input.a.x));
    var var_1 = select(~(_wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(19307i, -2147483647i)) ^ (-1179i | u_input.a.x)) <= ~(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -105052i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) & 2147483647i), true, global0[_wgslsmith_index_u32(abs(1u), 15u)]);
    let var_2 = Struct_3(Struct_1(u_input.a.x, select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], false, arg_0.x, global0[_wgslsmith_index_u32(var_0.x, 15u)]), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(global2.x, 15u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(44997u, 15u)], arg_0.x, arg_0.x)), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(global2.x, 15u)], arg_0.x, true), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 15u)], false, false, global0[_wgslsmith_index_u32(0u, 15u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 15u)], arg_0.x, arg_0.x)), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(global2.x, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)]), vec4<bool>(arg_0.x, false, false, global0[_wgslsmith_index_u32(global2.x, 15u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 15u)], arg_0.x)), true)), false), Struct_1(u_input.a.x, !vec4<bool>(arg_0.x | false, all(arg_0), arg_0.x, false), true), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-864f, -334f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(371f)))))), ~(~(~0u)) & global2.x, var_0.x);
    let var_3 = var_2.a;
    let var_4 = _wgslsmith_f_op_f32(var_2.c * var_2.c);
    return select(vec2<bool>(!select(!arg_0.x, true, !var_3.b.x), true && any(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], false, global0[_wgslsmith_index_u32(var_0.x, 15u)], var_2.a.c))), select(vec2<bool>(false, any(var_2.a.b.xzx)), select(!select(vec2<bool>(var_3.c, false), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], false), arg_0), vec2<bool>(0i != var_2.a.a, any(var_2.a.b)), var_3.b.zz), vec2<bool>(all(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_0.x, 15u)])), all(vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 15u)], false, true, var_3.c)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    var var_0 = vec3<bool>(any(select(!func_1(vec2<bool>(global0[_wgslsmith_index_u32(41863u, 15u)], global0[_wgslsmith_index_u32(77498u, 15u)])), vec2<bool>(false || global0[_wgslsmith_index_u32(global2.x, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), u_input.a.x < (19803i & u_input.a.x))), !any(!vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 15u)], false)), any(vec4<bool>(!(!global0[_wgslsmith_index_u32(0u, 15u)]), all(!vec3<bool>(global0[_wgslsmith_index_u32(45445u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), any(vec2<bool>(true, true)), any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)], true, true)))));
    let var_1 = vec3<bool>(false, func_1(!func_1(!vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 15u)]))).x, !var_0.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-830f)) - 1435f), false)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -958f) - 612f)), -1000f, all(var_0.zx))));
    var var_3 = vec4<i32>(abs(~(~(-u_input.a.x))), -29007i, 2147483647i, u_input.a.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(311f + 1155f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-276f, -1095f) - _wgslsmith_f_op_f32(f32(-1f) * -1123f))), -348f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1690f)))), -849f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(-918f, -1932f, true)), _wgslsmith_f_op_f32(step(1407f, 1000f)), _wgslsmith_f_op_f32(-213f - -1139f), -188f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -184f), 579f, -760f, -1009f) + vec4<f32>(-1146f, -350f, _wgslsmith_f_op_f32(146f * 135f), -1462f))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(595f, var_4.x, 587f, var_4.x))))))), u_input.a);
}

