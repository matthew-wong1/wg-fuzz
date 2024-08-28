struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    global0 = select(vec3<bool>((-arg_0.x ^ 1i) == arg_0.x, all(vec4<bool>(global0.x, all(vec3<bool>(true, false, global0.x)), true, all(vec3<bool>(global0.x, true, global0.x)))), true), !select(!(!vec3<bool>(global0.x, true, global0.x)), !vec3<bool>(true, global0.x, global0.x), vec3<bool>(!global0.x, !global0.x, true)), !(abs(select(arg_0.x, arg_0.x, global0.x)) <= u_input.c.x));
    global0 = !select(!(!(!vec3<bool>(global0.x, global0.x, true))), vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), !global0.x, any(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, false)))), vec3<bool>(!(arg_0.x < arg_0.x), false, all(!vec3<bool>(global0.x, true, true))));
    global0 = !vec3<bool>(false, false, u_input.b.x >= ~1u);
    let var_0 = reverseBits(u_input.c.x);
    global0 = vec3<bool>(!(arg_0.x == arg_0.x), !global0.x & !(!(global0.x != false)), true);
    return select(vec2<bool>((2147483647i < -var_0) & true, all(select(global0.zx, global0.yx, global0.zy)) | global0.x), !global0.yx, true);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: i32, arg_3: vec4<u32>) -> vec3<bool> {
    return vec3<bool>(global0.x, any(select(select(!global0.yy, vec2<bool>(true, true), func_3(vec3<i32>(-1i, u_input.c.x, 25968i))), global0.zz, !(!vec2<bool>(false, global0.x)))), any(!select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, false), global0.x)) && true);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    let var_0 = !(arg_0.a >= abs(min(9883i, 4815i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 2514u), vec4<u32>(1094u, 4294967295u, 14083u, 1u)) % 32u)));
    global0 = !(!select(func_2(vec4<u32>(1u, 107650u, 0u, 0u) >> (vec4<u32>(u_input.b.x, 19346u, u_input.a.x, u_input.b.x) % vec4<u32>(32u)), -157f, u_input.c.x, firstTrailingBit(vec4<u32>(0u, u_input.a.x, u_input.b.x, 1u))), !(!vec3<bool>(false, arg_3, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, global0.x, false), vec3<bool>(false, true, false))));
    let var_1 = ~(-67i);
    global0 = vec3<bool>(_wgslsmith_f_op_f32(trunc(arg_2.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1411f, 747f, var_0)) + _wgslsmith_f_op_f32(-176f + arg_2.x)) + arg_2.x), !(false && var_0), !all(select(vec2<bool>(true, true), global0.xz, false)));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), -592f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), var_2.x, select(global0.x, true, var_0))), _wgslsmith_f_op_f32(-arg_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(select(vec3<bool>(any(!vec3<bool>(global0.x, global0.x, false)), false, global0.x), !select(!vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, false, false), !global0.x), select(!vec3<bool>(false, global0.x, true), vec3<bool>(false, global0.x, global0.x && true), true)), select(!vec3<bool>(true, false, global0.x), !select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, true, true)), vec3<bool>(global0.x, true, true), true), !(!(!vec3<bool>(true, global0.x, global0.x)))), false);
    let var_0 = all(!vec3<bool>(!global0.x, false, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(u_input.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-441f, _wgslsmith_f_op_f32(-673f - 1452f), _wgslsmith_f_op_f32(1569f + 2745f), 254f)), vec4<f32>(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -505f), _wgslsmith_f_op_f32(1000f * -924f))), -692f, 1139f), any(vec3<bool>(true, true, true)))));
    var var_2 = ~(~select(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, 0u)), u_input.a.xx | u_input.b, vec2<u32>(0u, u_input.b.x)), ~_wgslsmith_div_vec2_u32(u_input.a.zz, u_input.b), !(!var_0)));
    global0 = vec3<bool>(global0.x, var_0, global0.x);
    var_2 = _wgslsmith_mod_vec2_u32(u_input.b, countOneBits(~vec2<u32>(u_input.b.x, 20435u)) ^ vec2<u32>(u_input.b.x, 0u));
    var_2 = ~vec2<u32>(max(u_input.a.x << (var_2.x % 32u), reverseBits(var_2.x)) << (abs(~61723u) % 32u), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(firstTrailingBit(u_input.b.x) & var_2.x, ~(u_input.b.x >> (var_2.x % 32u)), _wgslsmith_mod_u32(0u, 40188u)), vec3<u32>(u_input.a.x, ~select(u_input.a.x, var_2.x, false), ~29700u), var_2.x);
}

