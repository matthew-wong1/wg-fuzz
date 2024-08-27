struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> bool {
    var var_0 = Struct_1(global0.a, global0.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1298f, arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-506f - -1700f)), arg_0.x), global0.c.x, _wgslsmith_f_op_f32(-arg_0.x)));
    global0 = Struct_1(!(!(!select(var_0.a, global0.a, true))), var_0.a.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.c * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.c)))))));
    let var_1 = select(_wgslsmith_f_op_f32(-var_0.c.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.c.x)), 197f))), global0.b, true);
    return arg_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-920f)), global0.c.x);
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(abs(1u), ~u_input.a.x, _wgslsmith_add_u32(4294967295u, u_input.b.x)), abs((vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x) >> (vec3<u32>(55301u, 0u, u_input.a.x) % vec3<u32>(32u))) ^ ~vec3<u32>(u_input.b.x, u_input.a.x, 35457u))) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, ~_wgslsmith_sub_u32(14418u, u_input.a.x)), _wgslsmith_mod_vec3_u32(~(~u_input.a.zzw), u_input.b));
    var_0 = _wgslsmith_f_op_f32(-425f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, 932f) - _wgslsmith_f_op_f32(global0.c.x + global0.c.x))) * -1069f));
    let var_2 = !select(vec3<bool>(select(true, global0.b, false), global0.a.x, true), global0.a.ywy, !func_2(vec3<f32>(-810f, -630f, global0.c.x), any(global0.a.xy)));
    var_0 = 1000f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: u32) -> f32 {
    global0 = Struct_1(select(!(!(!vec4<bool>(false, false, false, global0.a.x))), !select(global0.a, global0.a, !global0.b), global0.b), global0.b & false, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, arg_0.x, arg_0.x, -894f))), vec4<f32>(-565f, -2557f, global0.c.x, -673f)))));
    global0 = Struct_1(vec4<bool>(all(vec3<bool>(true, true, !global0.b)), true, global0.a.x, global0.a.x), global0.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c - global0.c) + global0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -309f, arg_0.x, global0.c.x), vec4<f32>(arg_0.x, arg_0.x, 580f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1120f, arg_0.x, -322f, 1650f)))))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(263f, arg_0.x, -1299f), _wgslsmith_f_op_vec3_f32(arg_0 + global0.c.xzz), 30974i > arg_1)))))));
    global0 = Struct_1(select(vec4<bool>(!(!global0.a.x), any(!vec4<bool>(global0.b, global0.b, true, global0.b)), (arg_1 >> (4294967295u % 32u)) >= _wgslsmith_div_i32(2147483647i, u_input.c.x), global0.a.x), select(select(global0.a, !global0.a, !global0.a.x), global0.a, !(u_input.c.x != -2147483647i)), select(select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), select(vec4<bool>(global0.b, false, global0.b, global0.a.x), vec4<bool>(true, false, true, global0.b), global0.a), true), global0.a, !vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x))), false, global0.c);
    var var_1 = vec4<f32>(1f, global0.c.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(821f + -510f)));
    return -1538f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c.x))), !global0.b));
    let var_1 = Struct_2(Struct_1(global0.a, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(445f, _wgslsmith_f_op_f32(var_0 + -544f), -1276f, 101f) * vec4<f32>(-642f, _wgslsmith_f_op_f32(max(global0.c.x, global0.c.x)), _wgslsmith_f_op_f32(func_1(u_input.c.zwx, u_input.c)), 1668f))), Struct_1(!(!(!vec4<bool>(false, global0.a.x, global0.a.x, false))), true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -144f, -799f, 738f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c.x, var_0, -158f, global0.c.x))))))), Struct_1(vec4<bool>(true, u_input.b.x != u_input.a.x, all(!global0.a.yx), !(-1764i < u_input.c.x)), global0.a.x, _wgslsmith_f_op_vec4_f32(min(global0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global0.c, global0.c)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, global0.c.x, var_0, global0.c.x), vec4<f32>(175f, var_0, var_0, global0.c.x)))))), u_input.b.x);
    var var_2 = min(vec2<i32>(0i, u_input.c.x), ~(~vec2<i32>(u_input.c.x, firstLeadingBit(-37631i))));
    let var_3 = -27716i;
    var_2 = _wgslsmith_clamp_vec2_i32(max(~(-(u_input.c.zy ^ u_input.c.ww)), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(2147483647i, var_2.x, 2147483647i, var_3)), select(-5531i, var_2.x, true)) | ~reverseBits(vec2<i32>(var_2.x, 9094i))), u_input.c.zy, max(select(select(vec2<i32>(var_2.x, 36663i), vec2<i32>(5065i, 2147483647i), var_1.b.a.yz), select(vec2<i32>(11175i, 0i), u_input.c.yw, var_1.b.b), true), -u_input.c.zz) & select(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, u_input.c.x), -vec2<i32>(u_input.c.x, 54011i), true));
    let var_4 = ~(~u_input.b.zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0) - _wgslsmith_f_op_f32(trunc(var_0))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1093f, 1000f, 1000f), vec3<f32>(var_0, global0.c.x, var_1.b.c.x))), ~var_2.x, _wgslsmith_add_u32(var_1.d, var_1.d))), _wgslsmith_f_op_f32(round(294f))), var_0), global0.c);
}

