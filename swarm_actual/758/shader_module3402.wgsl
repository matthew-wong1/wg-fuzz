struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1186f, -118f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec3<f32>) -> u32 {
    var var_0 = vec3<bool>(true, arg_1.x, all(!(!select(arg_1.xz, vec2<bool>(arg_1.x, arg_0), arg_1.yx))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.x, arg_2.x)), 458f)), -430f, arg_1.x));
    var var_2 = Struct_3(Struct_2(Struct_1(select(vec4<bool>(arg_1.x, arg_1.x, true, false), !vec4<bool>(arg_0, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(arg_0, var_0.x, true, var_0.x), arg_1.x)), vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 64682i, u_input.b), vec3<i32>(1i, 10753i, 0i)))), arg_0);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2));
    var var_4 = vec4<bool>(!(var_2.a.a.c <= var_2.a.a.c), all(select(vec2<bool>(var_0.x && arg_1.x, true), var_2.a.a.a.yz, vec2<bool>(var_0.x, true))), any(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, arg_0, false), true), var_2.a.a.a, false)), arg_1.x);
    return _wgslsmith_div_u32(28847u, select(35272u, reverseBits(0u), !var_4.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_2 {
    global0 = vec2<f32>(arg_0.x, arg_0.x);
    global0 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -130f));
    let var_0 = func_3(false, !select(select(!arg_1.a.a.zyz, arg_1.a.a.xwy, vec3<bool>(true, arg_1.a.b.x, arg_1.a.b.x)), !vec3<bool>(true, true, arg_1.a.a.x), !select(vec3<bool>(arg_1.a.b.x, false, arg_1.a.b.x), vec3<bool>(arg_1.a.b.x, arg_1.a.b.x, false), arg_1.a.a.xww)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.zwx)))))));
    var var_1 = u_input.e;
    let var_2 = arg_1;
    return var_2;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3) -> bool {
    global0 = vec2<f32>(634f, global0.x);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(196f * global0.x) - 1376f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(1506f, global0.x))))))));
    let var_0 = Struct_2(arg_2.a.a);
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(275f)), -760f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f)), -616f, -1364f)), arg_2.a);
    var var_2 = vec2<i32>(reverseBits(var_0.a.c) | countOneBits(-37337i), -24618i);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(647f, global0.x) + vec2<f32>(127f, -779f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-141f, global0.x))))));
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, !(!(u_input.e.x >= 1u))), vec2<bool>(select(!(42924i >= u_input.b), true, !(u_input.a == u_input.c.x)), func_1(vec2<u32>(abs(4294967295u), ~1u), !all(vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(false, false), u_input.b)), all(vec4<bool>(false, false, false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(-min(~u_input.c.x, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-169f, global0.x, 680f, -471f)), func_2(vec4<f32>(437f, -1139f, global0.x, 1737f), Struct_2(Struct_1(vec4<bool>(true, false, var_0.x, var_0.x), vec2<bool>(true, var_0.x), -2147483647i)))).a.c), -2276f, 0u, ~(~vec4<u32>(1u, 1u, 4294967295u, 101401u)) >> ((max(vec4<u32>(u_input.e.x, 853u, 14331u, u_input.e.x), select(vec4<u32>(u_input.e.x, 0u, u_input.d, 1u), vec4<u32>(u_input.e.x, u_input.d, u_input.e.x, 28583u), var_0.x)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 34758u, u_input.d) << (vec4<u32>(70337u, u_input.e.x, 0u, u_input.d) % vec4<u32>(32u)), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.d))) % vec4<u32>(32u)));
}

