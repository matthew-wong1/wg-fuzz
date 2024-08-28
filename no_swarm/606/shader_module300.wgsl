struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: vec2<f32> = vec2<f32>(835f, 2271f);

var<private> global4: vec4<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = 71003u;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -580f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-151f, -2156f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.x, 680f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(954f, global3.x, 499f, global3.x), vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x, -706f, _wgslsmith_f_op_f32(-1412f * -246f)), true)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) - _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(666f, -1475f, true)), _wgslsmith_f_op_f32(global3.x * global3.x))), 665f, _wgslsmith_f_op_f32(global0.x * global3.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1224f, global3.x, global0.x, -563f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, _wgslsmith_div_f32(global3.x, global0.x), 1382f))));
    global2 = !(!select(!select(vec4<bool>(true, global4.x, true, global4.x), vec4<bool>(true, false, true, global4.x), false), select(!vec4<bool>(global2.x, true, true, global4.x), vec4<bool>(false, false, true, true), vec4<bool>(true, global4.x, true, false)), any(vec2<bool>(global4.x, false))));
    let var_3 = false;
    return all(select(vec2<bool>(true | !global2.x, global1.x), vec2<bool>(true, true), vec2<bool>(true, !any(global4.xz))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(650f + global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - 478f) * global3.x)))));
    return select(!select(vec4<bool>(global2.x, arg_1.x > u_input.a, select(global4.x, global2.x, global4.x), global1.x), vec4<bool>(global4.x, func_3(), true, global4.x & false), any(!vec4<bool>(false, global4.x, global2.x, global4.x))), !(!select(select(vec4<bool>(true, global4.x, true, false), vec4<bool>(false, global2.x, true, false), false), select(vec4<bool>(true, global1.x, global4.x, false), vec4<bool>(global2.x, true, true, false), vec4<bool>(true, global1.x, false, global1.x)), vec4<bool>(true, global4.x, global1.x, global1.x))), select(!(!(!vec4<bool>(global2.x, false, false, global2.x))), !vec4<bool>(all(vec4<bool>(false, global4.x, false, global1.x)), false || global4.x, global3.x > global0.x, global4.x), true));
}

fn func_1() -> f32 {
    global2 = !(!vec4<bool>(global4.x, true, u_input.a <= u_input.a, global2.x));
    var var_0 = u_input.c.xy & _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(~u_input.c.x, u_input.d.x));
    let var_1 = _wgslsmith_f_op_f32(abs(194f));
    global2 = !select(vec4<bool>(!any(vec3<bool>(global2.x, global4.x, global1.x)), (u_input.a == u_input.a) & select(global2.x, global2.x, true), false, global1.x), vec4<bool>(u_input.a == -8321i, !all(global2.zwx), global1.x, !global4.x), select(!(!vec4<bool>(false, false, false, global4.x)), select(select(vec4<bool>(global4.x, true, false, global1.x), vec4<bool>(false, global4.x, true, global2.x), vec4<bool>(false, global1.x, true, global2.x)), func_2(u_input.b, vec3<i32>(17473i, u_input.a, u_input.a)), func_2(u_input.d, vec3<i32>(u_input.a, 11970i, u_input.a)).x), vec4<bool>(global4.x, true, u_input.d.x != var_0.x, global4.x)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1314f, global0.x), _wgslsmith_f_op_f32(global3.x + 623f), _wgslsmith_f_op_f32(-1163f * 485f), _wgslsmith_div_f32(var_1, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(-914f * -1002f), 1000f, global0.x, _wgslsmith_f_op_f32(-global3.x)))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(-1846f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(632f, 1000f, true)))), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(714f)))))));
    return _wgslsmith_f_op_f32(1739f - _wgslsmith_f_op_f32(trunc(global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1008f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global3.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, global0.x), global0.yw), vec2<f32>(-378f, -561f)))))));
    global2 = vec4<bool>(global4.x, global2.x, 1i >= u_input.a, global2.x);
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 1000f, global1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -401f))))));
    var var_0 = 66661i;
    let var_1 = 37225i;
    let var_2 = -vec2<i32>(~_wgslsmith_div_i32(~14546i, _wgslsmith_sub_i32(var_1, u_input.a)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, var_1)), -vec2<i32>(u_input.a, u_input.a)), u_input.a, max(22343i, max(16916i, -26468i))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~abs(5759u), u_input.e.x, _wgslsmith_add_u32(~15136u, u_input.d.x)), ~(~(~_wgslsmith_add_vec3_u32(u_input.d.yyw, u_input.b.yzz))));
}

