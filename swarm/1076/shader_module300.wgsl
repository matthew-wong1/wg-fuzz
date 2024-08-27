struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: vec4<i32>;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global2 = Struct_2(global2.a, global2.c.x, vec3<bool>(global2.c.x, global2.a.x, global2.b));
    var var_0 = ~max(~select(u_input.a.x ^ 17457u, _wgslsmith_div_u32(1u, 40057u), false), abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.d.wy, vec2<u32>(u_input.d.x, 43219u)), ~u_input.d.x)));
    global0 = array<Struct_1, 32>();
    global2 = Struct_2(!global2.a, false, vec3<bool>(true, true, true));
    let var_1 = 1f;
    return global2.a.x;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(select(!global2.c.zx, select(vec2<bool>(global2.c.x, !arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(true, false), all(global2.c.xz)), vec2<bool>(true || arg_0, any(vec4<bool>(false, global2.a.x, arg_0, false)))), arg_0), all(!vec3<bool>(false, true, select(global2.c.x, arg_0, global2.b))), !vec3<bool>(arg_0, false, true));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.a)), _wgslsmith_f_op_f32(ceil(767f)), arg_2.a)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1319f, arg_2.a, arg_2.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -1129f, arg_2.a) - vec3<f32>(arg_2.a, arg_2.a, -1218f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1824f, arg_2.a, arg_2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_2.a, -941f)))))))));
    var var_2 = !vec4<bool>(false, global2.c.x, global2.c.x, true);
    var var_3 = ~_wgslsmith_dot_vec4_u32(u_input.d, ~(~(u_input.d >> (vec4<u32>(u_input.e, 63449u, u_input.d.x, 1u) % vec4<u32>(32u)))));
    var var_4 = Struct_2(var_2.zx, global2.b, vec3<bool>(func_3(), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(380f * -1725f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) + _wgslsmith_div_f32(var_1.x, 294f))));
    return u_input.a.x;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1381f, _wgslsmith_f_op_f32(f32(-1f) * -266f), 1324f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-642f, -254f, 2330f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, -1000f, 1293f)))))));
    var var_1 = 4294967295u;
    global0 = array<Struct_1, 32>();
    var var_2 = func_4(all(vec2<bool>(!global2.a.x, func_3())), 34421i, Struct_1(1704f));
    let var_3 = Struct_2(global2.a, !(u_input.b.x > 48595i), vec3<bool>(all(!select(vec4<bool>(global2.b, global2.a.x, false, false), vec4<bool>(false, true, global2.a.x, false), global2.a.x)), !any(select(vec3<bool>(true, true, global2.b), vec3<bool>(global2.b, global2.c.x, false), global2.c)), all(global2.c)));
    return select(!(!(!(!vec4<bool>(global2.b, false, true, var_3.b)))), !select(!vec4<bool>(true, false, global2.c.x, global2.a.x), select(vec4<bool>(global2.c.x, var_3.c.x, var_3.a.x, true), !vec4<bool>(false, var_3.c.x, var_3.c.x, global2.a.x), true), true), global2.b);
}

fn func_1() -> f32 {
    global2 = Struct_2(vec2<bool>(any(select(vec2<bool>(true, global2.a.x), global2.a, !vec2<bool>(global2.b, global2.c.x))), any(select(vec4<bool>(global2.a.x, global2.b, true, global2.c.x), func_2(39845u), select(vec4<bool>(true, global2.a.x, global2.b, true), vec4<bool>(global2.b, global2.a.x, true, global2.c.x), vec4<bool>(global2.c.x, false, false, global2.c.x))))), !global2.b, global2.c);
    var var_0 = Struct_2(vec2<bool>(all(vec2<bool>(true, true)), -2147483647i > _wgslsmith_mod_i32(1i, ~u_input.b.x)), true, global2.c);
    var var_1 = Struct_2(select(!select(var_0.c.zz, !var_0.c.zy, select(var_0.a, var_0.a, var_0.c.yz)), var_0.a, global2.c.zy), all(!(!(!global2.c))), vec3<bool>(!var_0.a.x, true, 2623f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-101f, 324f, global2.c.x))))));
    var var_2 = 574f;
    var var_3 = global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.c.yx | u_input.a))), 32u)];
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(!(_wgslsmith_clamp_u32(4294967295u, u_input.d.x, 1725u) == u_input.a.x), !(!global2.c.x), global2.a.x);
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -1264f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-372f, -893f)) - -1000f))));
    var_0 = !vec3<bool>(any(!global2.c), var_0.x, all(global2.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(625f, _wgslsmith_f_op_f32(step(var_1.a, var_1.a)), -388f) * vec3<f32>(_wgslsmith_f_op_f32(var_1.a - var_1.a), var_1.a, _wgslsmith_f_op_f32(var_1.a + 1350f))), vec3<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1697f + -1306f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), 249f))), 879f);
}

