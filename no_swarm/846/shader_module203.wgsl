struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> bool {
    return !any(!vec2<bool>(select(false, true, true), true));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_0)))))));
    let var_1 = Struct_2(vec2<bool>(true, true), _wgslsmith_div_vec2_i32(u_input.b.zz, ~vec2<i32>(u_input.b.x, -2147483647i)) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(7848u, 49800u) | vec2<u32>(u_input.a, 80852u), vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), select(vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), true), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), select(vec2<bool>(any(vec4<bool>(false, false, false, false)), select(false, false, false)), vec2<bool>(func_2(), true), any(vec2<bool>(true, true)))), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false)) | true, Struct_1(u_input.b.x, !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    global1 = 1092f;
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1986f);
    var var_2 = -2147483647i | var_1.e.a;
    return true;
}

fn func_1() -> Struct_2 {
    var var_0 = -986f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 726f) - vec2<f32>(1828f, global0.x))))));
    var var_2 = select(vec2<bool>(all(vec2<bool>(true, true)), func_2()), vec2<bool>(all(vec4<bool>(func_3(vec4<f32>(global0.x, 697f, -1000f, 231f)), true, true, false)), any(vec3<bool>(false, true, false))), vec2<bool>(true, func_2()));
    var_1 = _wgslsmith_f_op_vec2_f32(-global0.zy);
    var var_3 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -324f))));
    return Struct_2(!select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(var_2.x, var_2.x)), select(vec2<bool>(true, true), !vec2<bool>(var_2.x, var_2.x), var_2.x || var_2.x), !(!var_2.x)), -vec2<i32>(-7733i, 0i), select(select(vec2<bool>(false, false), vec2<bool>(var_2.x, false), !select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, var_2.x), true)), vec2<bool>(true, all(!vec2<bool>(false, var_2.x))), !any(!vec4<bool>(var_2.x, false, var_2.x, false))), true, Struct_1(33418i, vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(false, false)), all(select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, false, true, true), vec4<bool>(false, var_2.x, false, var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), ~u_input.a);
    let var_1 = var_0.a.b.x;
    let var_2 = vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.b.zz), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b.x, var_1), ~(u_input.b.x ^ u_input.b.x)), -var_1), ~var_1);
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_f_op_f32(f32(-1f) * -546f))) - global0.x), 496f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 932f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(465f, global0.x, 459f) - vec3<f32>(global0.x, -1401f, -559f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -804f) + global0.x), global0.x, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x)))))), select(vec3<bool>(var_0.a.e.b.x, !var_0.a.e.b.x, all(vec2<bool>(var_0.a.c.x, false))), !(!(!var_0.a.e.b)), var_0.a.a.x)));
    var var_3 = var_2.x;
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), abs(~vec4<u32>(_wgslsmith_div_u32(1103u, 4294967295u), firstLeadingBit(var_0.b), 1u & u_input.a, u_input.a & 0u)), vec4<i32>(-_wgslsmith_dot_vec3_i32(~u_input.b, vec3<i32>(-37386i, -18820i, var_1)), 2147483647i, -1i, select(var_2.x, var_4.e.a, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -180f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)), 756f)))));
}

