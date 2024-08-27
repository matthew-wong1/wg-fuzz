struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28>;

var<private> global1: f32;

var<private> global2: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>) -> bool {
    global0 = array<vec3<i32>, 28>();
    return arg_1.x;
}

fn func_3() -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 558f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1094f, 898f))))))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), global2.x)));
    var var_0 = ~(~(~(vec2<u32>(u_input.b, 3174u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) << (~(~vec2<u32>(0u, u_input.b)) % vec2<u32>(32u))));
    global0 = array<vec3<i32>, 28>();
    global2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, global2.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, -285f))), select(vec2<bool>(true, false), vec2<bool>(false, true), true))), vec2<f32>(-355f, _wgslsmith_f_op_f32(trunc(global2.x))))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1624f)), global2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1987f, global2.x)))))));
    return global2.x;
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3()), select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), u_input.a <= u_input.a), vec3<bool>(any(vec3<bool>(false, false, true)), false, true), all(vec3<bool>(true, true, true))), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)) & any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true)), vec4<bool>(!(-2147483647i >= reverseBits(u_input.a)), true, !all(vec4<bool>(false, false, true, true)), true));
    let var_1 = select(vec4<bool>(true, var_0.d.x, func_1(vec2<f32>(_wgslsmith_f_op_f32(max(global2.x, var_0.a)), 185f), !select(var_0.d.zyx, var_0.b, var_0.c)), true), select(select(vec4<bool>(true, any(var_0.d), true, !var_0.c), select(!vec4<bool>(false, true, false, var_0.b.x), !var_0.d, !var_0.d), vec4<bool>(true, !var_0.b.x, all(vec4<bool>(false, true, var_0.b.x, true)), all(var_0.d))), vec4<bool>(var_0.c, (i32(-1i) * -12649i) == u_input.a, var_0.c, var_0.b.x), !(!func_1(vec2<f32>(global2.x, 1390f), vec3<bool>(false, var_0.b.x, var_0.b.x)))), vec4<bool>(true, false, var_0.b.x & !all(vec3<bool>(false, var_0.c, var_0.b.x)), false));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(103f + _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(153f, var_0.a)) + _wgslsmith_f_op_f32(var_0.a - var_0.a)))), vec3<bool>(var_0.d.x, !var_0.d.x, var_1.x), any(!select(select(vec2<bool>(var_1.x, var_1.x), var_0.b.xx, var_1.zy), vec2<bool>(false, var_0.d.x), !var_1.x)), vec4<bool>(true, (var_0.d.x || (var_0.d.x != var_1.x)) && any(vec2<bool>(var_1.x, var_0.b.x)), true, true & !any(vec2<bool>(false, true))));
    var var_3 = _wgslsmith_f_op_f32(sign(383f));
    var var_4 = Struct_1(-650f, select(!var_0.b, select(!var_0.b, !var_0.b, (u_input.b | 11569u) >= select(1u, u_input.b, var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 447f)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -871f)))), (~u_input.b >= _wgslsmith_sub_u32(~48234u, u_input.b)) | (select(_wgslsmith_dot_vec3_i32(vec3<i32>(-27033i, u_input.a, -2147483647i), vec3<i32>(u_input.a, -668i, u_input.a)), 1i, true) < (~u_input.a ^ u_input.a)), !var_2.d);
    return !func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-583f + var_2.a), _wgslsmith_f_op_f32(sign(var_0.a)))), vec3<bool>(false, false, !any(vec4<bool>(true, var_0.b.x, true, var_2.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!vec4<bool>(true, all(vec2<bool>(true, false)), true, func_1(vec2<f32>(global2.x, global2.x), vec3<bool>(false, true, true))), !vec4<bool>(all(vec4<bool>(false, true, false, false)), true, true, true), 1i > u_input.a);
    var_0 = !(!(!select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, true, true, false)), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, false, true, var_0.x)))));
    var var_1 = Struct_1(1f, !select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, true, true), var_0.xxw, false || var_0.x), select(select(var_0.xzw, vec3<bool>(false, true, false), true), var_0.xxy, true)), var_0.x, !select(vec4<bool>(true, func_2(), any(var_0.yw), var_0.x), select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, false), true), vec4<bool>(var_0.x, var_0.x, true, false), var_0.x), !vec4<bool>(true, var_0.x, true, var_0.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f + var_1.a)), vec3<bool>(true, !any(var_1.b), (var_0.x & true) || false), var_0.x, var_1.d);
    global0 = array<vec3<i32>, 28>();
    let var_3 = vec2<bool>(false, var_1.d.x);
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-378f, -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a, 128f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_1.a) + vec2<f32>(var_2.a, var_2.a)))))), vec4<i32>(-1i) * -(vec4<i32>(u_input.a, -6799i, u_input.a, 1i) ^ -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)));
}

