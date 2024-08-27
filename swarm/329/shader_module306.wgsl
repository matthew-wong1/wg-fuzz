struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<bool>,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11>;

var<private> global1: array<f32, 29>;

var<private> global2: vec2<f32> = vec2<f32>(-533f, 830f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: i32, arg_3: vec2<i32>) -> f32 {
    var var_0 = vec4<bool>(true, false | all(vec4<bool>(any(vec3<bool>(false, false, arg_0.x)), true, !arg_0.x, true)), false, select(all(select(vec3<bool>(true, arg_0.x, true), !vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(true, true, false))), true, any(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)) | arg_0.x));
    var var_1 = 2147483647i;
    var var_2 = select(vec4<bool>(true, all(!select(vec4<bool>(false, var_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, true, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x))), true, arg_0.x), select(select(!(!vec4<bool>(false, arg_0.x, arg_0.x, false)), !(!vec4<bool>(arg_0.x, var_0.x, var_0.x, arg_0.x)), false), select(vec4<bool>(var_0.x, arg_1 <= u_input.c.x, !arg_0.x, false), !select(vec4<bool>(true, arg_0.x, var_0.x, arg_0.x), vec4<bool>(false, true, arg_0.x, true), vec4<bool>(var_0.x, false, var_0.x, false)), select(vec4<bool>(var_0.x, arg_0.x, false, true), !vec4<bool>(arg_0.x, false, false, true), !vec4<bool>(arg_0.x, false, var_0.x, arg_0.x))), (_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, 106381i), vec2<i32>(arg_3.x, 1i)) != -2147483647i) && arg_0.x), vec4<bool>(!any(!arg_0), true, true, true));
    var_0 = select(!select(vec4<bool>(var_2.x, !var_2.x, true, 1u != arg_1), select(!vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(true, false, false, false), var_2.x), select(select(vec4<bool>(var_2.x, arg_0.x, true, var_2.x), vec4<bool>(var_2.x, true, false, arg_0.x), false), !vec4<bool>(true, arg_0.x, var_2.x, false), !var_0.x)), vec4<bool>(!(!(-1177f < global2.x)), false, var_0.x, !(global1[_wgslsmith_index_u32(reverseBits(u_input.c.x), 29u)] == -2223f)), false);
    var var_3 = countOneBits(u_input.c.yyy << (firstLeadingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, arg_1), u_input.c.xwy, u_input.c.xwy)) % vec3<u32>(32u)));
    return global1[_wgslsmith_index_u32(~arg_1, 29u)];
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_4) -> f32 {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 29u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!arg_3.c, ~1u, arg_0, u_input.a)))));
    let var_0 = u_input.c;
    global2 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(arg_3.c.x, arg_3.b.a.a), var_0.x, arg_3.b.b.x, arg_3.a.zz))) - 1000f)));
    var var_1 = arg_3.b;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_3.c, arg_2.x, 36044i, vec2<i32>(arg_3.a.x, arg_3.a.x)))), var_1.d.x)), _wgslsmith_f_op_f32(min(global2.x, 803f)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> vec2<f32> {
    var var_0 = u_input.b & 0i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1044f, _wgslsmith_f_op_f32(func_2(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 29u)], u_input.c, Struct_4(vec3<i32>(47165i, arg_2.x, arg_2.x), Struct_2(Struct_1(true), arg_2, Struct_1(arg_0.x), arg_1.zz), arg_0, global2.x))), true)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-205f)))));
    var var_2 = false;
    var var_3 = Struct_1((false != select(arg_0.x, any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x)) || true);
    var var_4 = arg_2.xww;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(22326u, 29u)], global1[_wgslsmith_index_u32(22252u, 29u)]), vec2<f32>(184f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)])))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(-801f - global1[_wgslsmith_index_u32(4294967295u, 29u)]), global1[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_f32(1000f + -841f)), ~max(vec4<i32>(u_input.a.x, 59830i, u_input.b, u_input.b), vec4<i32>(-31392i, -8030i, u_input.a.x, -101417i)), u_input.c.wz ^ ~vec2<u32>(u_input.c.x, u_input.c.x))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, -142f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(77919u, 29u)], -592f))))) * vec2<f32>(-161f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)]));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1288f, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], var_0.x) * vec4<f32>(global1[_wgslsmith_index_u32(4817u, 29u)], -256f, var_0.x, -151f)), vec4<f32>(1000f, var_0.x, 527f, global1[_wgslsmith_index_u32(17466u, 29u)]))))));
    var var_2 = Struct_3(Struct_1(!(all(vec2<bool>(true, true)) && any(vec2<bool>(true, true)))));
    var_2 = Struct_3(var_2.a);
    global1 = array<f32, 29>();
    var_2 = Struct_3(Struct_1(true));
    var_2 = Struct_3(Struct_1(true));
    let x = u_input.a;
    s_output = StorageBuffer(~(-countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.a.x), vec2<i32>(u_input.b, 32008i), global0[_wgslsmith_index_u32(u_input.c.x, 11u)]))));
}

