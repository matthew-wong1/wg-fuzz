struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: f32 = 589f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(-1486f + 572f))) - _wgslsmith_f_op_f32(exp2(global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2070f - global1.a) * global1.a))));
    let var_1 = _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-557f + var_0.a)))));
    global1 = Struct_1(591f);
    global2 = select(select(vec3<bool>(select(false, 1459f == var_0.a, any(global2.xy)), !any(vec4<bool>(global2.x, true, global2.x, false)), false), select(select(select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(false, false, false), vec3<bool>(true, global2.x, true)), vec3<bool>(global2.x, true, global2.x), !vec3<bool>(false, false, global2.x)), select(!vec3<bool>(true, true, global2.x), vec3<bool>(true, true, global2.x), !vec3<bool>(false, global2.x, false)), true), global2.x), select(select(select(!vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, global2.x, false), true), vec3<bool>(true, global2.x, true), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(false, true, global2.x), true)), vec3<bool>(global2.x, all(!global2.xy), u_input.d.x >= (arg_0 | arg_0)), !select(global2.x && true, true, select(global2.x, global2.x, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, global2.x, global2.x), !(!vec3<bool>(global2.x, global2.x, global2.x)), true), vec3<bool>(global2.x, (global2.x || global2.x) || true, false)));
    var var_2 = var_0;
    return u_input.d.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool) -> f32 {
    global3 = global1.a;
    let var_0 = ~vec4<u32>(0u, min(countOneBits(_wgslsmith_div_u32(0u, 23911u)), _wgslsmith_mod_u32(u_input.c.x, u_input.b.x) | func_3(130602u)), _wgslsmith_dot_vec3_u32(select(~u_input.d.wyx, vec3<u32>(0u, u_input.c.x, u_input.d.x), vec3<bool>(arg_1, false, true)), vec3<u32>(u_input.a.x ^ 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(60531u, 41844u)), firstTrailingBit(37096u))), ~(~(~0u)));
    var var_1 = max(abs((var_0.yy | u_input.b.wx) << (vec2<u32>(u_input.a.x, ~0u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.x), vec2<u32>(51857u, 12290u)), ~var_0.yy));
    let var_2 = 39451i;
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1049f, -3066f, -1264f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, -1053f)), vec3<bool>(true, any(vec4<bool>(false, false, true, arg_2)), !arg_1))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1014f);
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(776f * 1000f), global1.a), 1115f, _wgslsmith_f_op_f32(select(-1112f, 576f, true)), global1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global1.a * 1000f), _wgslsmith_f_op_f32(-global1.a), global1.a, _wgslsmith_f_op_f32(-988f * global1.a))))));
    let var_1 = select(select(vec4<bool>(global2.x, u_input.e.x != _wgslsmith_add_i32(u_input.e.x, u_input.e.x), true, true), vec4<bool>(!any(vec4<bool>(arg_0, false, arg_0, global2.x)), true, false, _wgslsmith_f_op_f32(-global1.a) > global1.a), global2.x), select(vec4<bool>(!(!arg_0), all(global2.zx) | true, arg_0, true), select(!select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, false, true, arg_0)), vec4<bool>(u_input.e.x > 2147483647i, u_input.e.x > u_input.e.x, global2.x, arg_0), !vec4<bool>(true, false, false, arg_0)), select(!select(vec4<bool>(false, global2.x, true, arg_0), vec4<bool>(arg_0, false, false, arg_0), false), !(!vec4<bool>(global2.x, global2.x, true, global2.x)), select(select(vec4<bool>(true, global2.x, true, false), vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(arg_0, arg_0, true, global2.x)), !vec4<bool>(arg_0, global2.x, arg_0, false), global1.a > var_0.x))), true);
    global3 = 1330f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(749f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(func_2(-u_input.e.x, global2.x, any(vec2<bool>(global2.x, true)))))));
    let var_3 = var_1.ywx;
    return 343f;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = u_input.e.ywx;
    var var_1 = arg_1.a;
    var var_2 = select(global2.zz, vec2<bool>((global2.x || global2.x) != !(global2.x & global2.x), !(4294967295u == u_input.a.x)), !select(!vec2<bool>(global2.x, true), global2.yy, all(vec4<bool>(false, global2.x, false, global2.x)) | any(vec3<bool>(false, false, global2.x))));
    global1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1.a)), arg_0)));
    var var_3 = u_input.d.x;
    return vec3<bool>(false, !global2.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !func_4(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(func_1(global2.x)))), Struct_3(Struct_1(908f)), Struct_2(4294967295u));
    var var_0 = Struct_3(Struct_1(global1.a));
    global0 = u_input.e.x;
    var var_1 = u_input.a.x;
    var_1 = u_input.a.x & _wgslsmith_mod_u32(~16413u, firstTrailingBit(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.e.x), u_input.c.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(33384u, 10910u) | ~u_input.c.x, u_input.d.x), countOneBits(4294967295u), 26326u));
}

