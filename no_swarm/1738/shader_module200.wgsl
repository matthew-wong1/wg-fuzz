struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_4 = Struct_4(Struct_2(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec4<f32>(-1077f, -493f, -963f, 1000f), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), vec2<f32>(-206f, 450f)), Struct_2(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec4<f32>(-1232f, -443f, -979f, -305f), Struct_1(vec4<u32>(4294967295u, 24737u, 62216u, 9435u)), vec2<f32>(913f, 315f)), vec2<u32>(31467u, 38165u), 196f, Struct_3(916f, Struct_1(vec4<u32>(0u, 4294967295u, 3490u, 4294967295u))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    global1 = Struct_4(Struct_2(vec3<bool>(!(!global1.b.a.x), global1.b.b.x, global1.a.a.x), !vec3<bool>(any(global1.a.a), any(global1.b.a), global1.a.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1.b.c))) + vec4<f32>(-1394f, _wgslsmith_f_op_f32(f32(-1f) * -837f), global1.d, _wgslsmith_f_op_f32(-global1.d))), Struct_1(max(abs(vec4<u32>(u_input.c, global1.a.d.a.x, 31245u, 1u)), ~vec4<u32>(global1.a.d.a.x, 37174u, global1.b.d.a.x, 34943u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.b.c.zy, global1.a.e))))), global1.b, u_input.a.zz | (u_input.a.xx | ~global1.b.d.a.wx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f - 2124f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(706f - 578f) - global1.b.c.x))), global1.e);
    var var_0 = true;
    global0 = _wgslsmith_f_op_f32(-global1.b.e.x);
    let var_1 = global1.b;
    let var_2 = Struct_2(select(select(var_1.b, select(!vec3<bool>(false, true, global1.b.a.x), var_1.a, select(var_1.b, var_1.a, vec3<bool>(false, var_1.a.x, var_1.b.x))), global1.b.a), var_1.a, all(select(global1.a.a.yx, vec2<bool>(true, var_1.b.x), select(global1.a.a.yy, vec2<bool>(false, true), global1.b.a.yy)))), vec3<bool>(global1.b.a.x, any(!vec3<bool>(var_1.a.x, true, false)) && !all(var_1.b), 11335u > (27848u << ((global1.c.x & var_1.d.a.x) % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(1313f)), var_1.e.x, global1.e.a, _wgslsmith_f_op_f32(var_1.e.x * -1318f))))), global1.b.d, var_1.c.wy);
    return global1.b.a.x;
}

fn func_2(arg_0: vec3<bool>) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.e.x * 327f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.e.a))))));
    global1 = Struct_4(global1.b, Struct_2(vec3<bool>(false, !func_3(), all(!vec2<bool>(false, arg_0.x))), select(vec3<bool>(any(vec3<bool>(true, false, false)), false, !global1.a.b.x), arg_0, func_3()), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.e.a, 597f, global1.e.a, global1.a.c.x)))), global1.b.c), global1.b.d, vec2<f32>(_wgslsmith_f_op_f32(432f - 1830f), 266f)), vec2<u32>(min(~global1.c.x, ~global1.e.b.a.x), 1u), global1.e.a, Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.c.x), -1832f), Struct_1(reverseBits(vec4<u32>(global1.b.d.a.x, 0u, global1.b.d.a.x, 17177u)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.c.x, global1.d) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1195f, global1.e.a))))))));
    global1 = Struct_4(global1.a, global1.b, _wgslsmith_add_vec2_u32(min(vec2<u32>(~global1.b.d.a.x, firstTrailingBit(global1.a.d.a.x)), global1.a.d.a.yw), max(firstTrailingBit(~vec2<u32>(25332u, global1.c.x)), ~(~vec2<u32>(global1.a.d.a.x, 4294967295u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.c.x))), global1.e);
    global1 = Struct_4(Struct_2(select(select(vec3<bool>(arg_0.x, global1.b.b.x, false), !arg_0, true), select(select(vec3<bool>(false, false, false), global1.b.b, vec3<bool>(global1.a.b.x, arg_0.x, arg_0.x)), global1.a.b, vec3<bool>(arg_0.x, true, arg_0.x)), vec3<bool>(any(global1.b.a.xx), global1.b.b.x, 352f >= global1.d)), !global1.a.a, global1.a.c, global1.a.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global1.b.e - vec2<f32>(973f, global1.a.e.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1157f, global1.e.a))))), _wgslsmith_f_op_vec2_f32(floor(global1.a.e)))), global1.b, abs(((vec2<u32>(1u, 11812u) ^ u_input.a.zy) << (global1.b.d.a.wy % vec2<u32>(32u))) >> (~select(u_input.a.xy, global1.c, arg_0.yz) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.e.x * global1.a.c.x)), global1.e);
    return Struct_4(Struct_2(select(global1.b.a, select(select(global1.a.b, vec3<bool>(false, arg_0.x, true), true), select(arg_0, vec3<bool>(true, global1.b.a.x, global1.a.b.x), arg_0.x), global1.b.c.x > global1.d), vec3<bool>(true, all(vec4<bool>(global1.b.b.x, global1.b.b.x, false, arg_0.x)), true)), select(select(select(arg_0, vec3<bool>(global1.b.b.x, global1.a.b.x, true), vec3<bool>(global1.b.a.x, false, true)), global1.a.a, select(vec3<bool>(false, global1.b.a.x, true), global1.b.a, true)), !vec3<bool>(false, arg_0.x, true), vec3<bool>(true, false, false)), vec4<f32>(global1.e.a, global1.e.a, -1234f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.e.a)))), Struct_1(global1.e.b.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -782f)), global1.b.c.yy) - vec2<f32>(_wgslsmith_f_op_f32(220f - -561f), global1.b.e.x))), Struct_2(vec3<bool>(!global1.b.a.x, !global1.b.b.x & (global1.b.a.x && arg_0.x), false), global1.b.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_f_op_f32(global1.e.a * global1.d), 1000f, 1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b.c))), global1.b.d, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.a.c.xw * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.b.c.x, global1.e.a)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1903f, global1.a.c.x)))))))), vec2<u32>(1u, ~_wgslsmith_mult_u32(~u_input.c, u_input.c)), -147f, global1.e);
}

fn func_1() -> Struct_2 {
    global1 = func_2(vec3<bool>(!(!global1.a.a.x), !any(select(global1.a.a, vec3<bool>(true, false, true), false)), global1.b.b.x));
    let var_0 = global1.a;
    global0 = global1.e.a;
    var var_1 = _wgslsmith_add_i32(_wgslsmith_mod_i32(~(-1i), 1i), -2147483647i);
    var_1 = _wgslsmith_add_i32(abs(2147483647i), abs(_wgslsmith_clamp_i32(u_input.b, i32(-1i) * -2147483647i, u_input.b)));
    return func_2(!func_2(var_0.a).b.a).b;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-arg_0.c.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.e.x - global1.e.a), _wgslsmith_f_op_f32(f32(-1f) * -314f), -309f, _wgslsmith_f_op_f32(-global1.b.e.x)) * global1.b.c)), global1.b.c));
    global1 = func_2(!arg_0.b);
    global1 = func_2(vec3<bool>(true, !all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, arg_0.a.x, true, arg_0.b.x), vec4<bool>(arg_0.b.x, global1.b.b.x, global1.a.a.x, arg_0.a.x))), !((1i << (global1.b.d.a.x % 32u)) >= 7508i)));
    var var_1 = Struct_4(func_2(vec3<bool>(false, global1.b.a.x, global1.b.a.x)).a, arg_0, ~(~vec2<u32>(global1.e.b.a.x, 43699u)) & (((global1.a.d.a.zx | vec2<u32>(5787u, u_input.a.x)) & vec2<u32>(4294967295u, global1.a.d.a.x)) << (~(~vec2<u32>(0u, arg_1.x)) % vec2<u32>(32u))), global1.d, Struct_3(arg_0.c.x, global1.e.b));
    return Struct_2(vec3<bool>(true, var_1.b.a.x | !(global1.d <= 2282f), func_3()), arg_0.b, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -226f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)), _wgslsmith_f_op_f32(func_1().c.x * _wgslsmith_f_op_f32(max(1594f, _wgslsmith_f_op_f32(f32(-1f) * -152f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1232f)))), arg_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.c.wz) * var_1.a.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(func_4(func_1(), select(vec4<u32>(_wgslsmith_sub_u32(u_input.c, 33000u), 1u, global1.b.d.a.x, ~global1.e.b.a.x), global1.b.d.a, !select(vec4<bool>(global1.b.a.x, global1.a.a.x, global1.b.b.x, global1.b.b.x), vec4<bool>(global1.b.a.x, true, global1.b.a.x, true), vec4<bool>(false, global1.a.b.x, false, true)))), global1.b, ~vec2<u32>(global1.b.d.a.x, func_2(!global1.b.b).c.x), global1.e.a, global1.e);
    global0 = global1.a.c.x;
    let var_0 = -vec4<i32>(2147483647i, 15347i, _wgslsmith_mult_i32(u_input.b, select(u_input.b, u_input.b, true)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, u_input.b), -4521i) & u_input.b);
    var var_1 = func_2(!select(vec3<bool>(!global1.b.b.x, global1.a.b.x, global1.a.b.x), !(!vec3<bool>(global1.a.b.x, global1.a.b.x, true)), global1.a.a)).e;
    let var_2 = abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, var_1.b.a.x) | ~_wgslsmith_add_u32(u_input.c, global1.c.x), select(_wgslsmith_clamp_u32(54296u, global1.e.b.a.x, 1u), 0u, any(vec4<bool>(global1.b.a.x, true, true, true))) & global1.b.d.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global1.b.c.yx, global1.a.e, !vec2<bool>(global1.a.b.x, true))))));
}

