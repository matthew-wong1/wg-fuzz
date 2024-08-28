struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: Struct_1;

var<private> global2: f32 = 1056f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    global2 = 933f;
    global0 = !(!vec4<bool>(global1.a.x, any(!vec3<bool>(global1.a.x, false, global0.x)), true, any(!vec4<bool>(global0.x, true, global0.x, true))));
    global1 = Struct_1(!(!select(select(global0.wxy, global1.a, global0.zyz), global1.a, global1.a.x)), 6841u);
    var var_0 = Struct_1(!select(!(!global1.a), select(select(global0.zww, global0.ywz, global0.ywy), global1.a, global1.a.x), any(vec2<bool>(global1.a.x, global0.x))), 67251u);
    var var_1 = _wgslsmith_mult_i32(-(~countOneBits(5702i) & _wgslsmith_clamp_i32(u_input.b >> (4294967295u % 32u), 5389i | u_input.c.x, u_input.c.x)), abs(~min(2147483647i, ~u_input.c.x)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -244f)), vec2<f32>(-1647f, 712f)) - vec2<f32>(-433f, 503f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1173f)), 1271f, var_0.a.x)), 1500f) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(686f, -116f) - vec2<f32>(131f, -889f)) - vec2<f32>(-315f, 1000f)), vec2<f32>(1f, _wgslsmith_f_op_f32(-1529f + -821f))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = global0.wxx;
    global2 = _wgslsmith_f_op_f32(-arg_2.x);
    var var_1 = vec3<i32>(u_input.b, ~(-20830i), -14584i);
    var var_2 = Struct_1(!(!select(select(global1.a, global1.a, global0.x), global0.xxz, select(global0.x, false, false))), arg_0.x ^ arg_1.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(295f, arg_2.x)))))) - _wgslsmith_f_op_vec2_f32(func_3())) * _wgslsmith_f_op_vec2_f32(-arg_3));
    return ~firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x >> (0u % 32u), var_2.b, _wgslsmith_mult_u32(84642u, 32319u), 4294967295u), firstTrailingBit(~vec4<u32>(0u, arg_1.x, 64115u, var_2.b))));
}

fn func_1() -> f32 {
    var var_0 = vec3<u32>(22295u, global1.b, u_input.a.x);
    var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 60499u, 1u, u_input.e | 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, ~var_0.x, 0u, ~52983u), min(abs(vec4<u32>(u_input.e, 4294967295u, u_input.a.x, 62000u)), func_2(vec2<u32>(var_0.x, global1.b), var_0.yz, vec2<f32>(-967f, -314f), vec2<f32>(958f, 709f))))), 0u, var_0.x);
    global1 = Struct_1(select(!(!vec3<bool>(true, global0.x, true)), vec3<bool>(global0.x, global0.x != (global0.x || global0.x), any(global1.a)), u_input.b < reverseBits(u_input.b)), 0u);
    let var_1 = Struct_1(!(!global0.xzy), ~_wgslsmith_add_u32(~(~var_0.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.b, 98849u, 0u, var_0.x)), ~vec4<u32>(0u, global1.b, 43928u, u_input.d))));
    var var_2 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(822f, -911f))))) + 1643f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-1691f + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(766f, 351f))), -651f)));
    global0 = !(!vec4<bool>(!(u_input.e < 39360u), !(!global1.a.x), global0.x, any(!vec4<bool>(global0.x, global0.x, global0.x, global1.a.x))));
    global2 = _wgslsmith_f_op_f32(abs(301f));
    let var_1 = _wgslsmith_div_vec2_f32(var_0.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1870f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1047f)))))));
    global0 = !(!select(vec4<bool>(true, global0.x, global1.a.x, true), select(vec4<bool>(global1.a.x, false, false, true), select(vec4<bool>(global0.x, true, false, global1.a.x), vec4<bool>(global1.a.x, global0.x, false, true), false), global0.x), vec4<bool>(true, global0.x, true, false)));
    global2 = _wgslsmith_f_op_f32(-var_0.x);
    global2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(-583f, -1000f)))), select(abs(u_input.c.x), u_input.b, global1.a.x) ^ -_wgslsmith_clamp_i32(u_input.b, -6039i, _wgslsmith_clamp_i32(-107i, 2147483647i, u_input.c.x)), 4294967295u, (vec4<i32>(~0i, u_input.c.x, firstTrailingBit(u_input.b), firstLeadingBit(-1i)) & vec4<i32>(firstLeadingBit(4885i), 0i, min(-2147483647i, 1i), select(7568i, 1i, global1.a.x))) << (vec4<u32>(u_input.a.x, ~(u_input.e >> (u_input.e % 32u)), abs(~2987u), abs(38386u)) % vec4<u32>(32u)), global1.b);
}

