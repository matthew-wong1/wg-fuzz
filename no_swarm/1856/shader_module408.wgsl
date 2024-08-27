struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c + global0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(837f, -1000f, global0.a.b, -411f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.b, -1000f, global0.c.x, global0.a.b))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global0.c, vec4<f32>(global0.a.b, -315f, global0.a.b, 227f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b)), _wgslsmith_f_op_f32(max(881f, _wgslsmith_f_op_f32(select(1009f, _wgslsmith_div_f32(-165f, global0.a.b), true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.x)))))), _wgslsmith_f_op_f32(416f * global0.a.b))));
    let var_1 = global0.a;
    global0 = Struct_5(global0.a, _wgslsmith_add_i32(-var_1.a.x, global0.d) ^ var_1.c.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.c))), _wgslsmith_div_vec4_f32(global0.c, global0.c)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.c, global0.c, vec4<bool>(false, true, global0.e.x, false)))), _wgslsmith_f_op_vec4_f32(min(global0.c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, 701f, 1000f, var_0.x), global0.c, arg_0.x)))))), global0.e)), ~global0.d, vec4<bool>(false, !select(true, global0.e.x, global0.e.x) == !select(true, arg_0.x, global0.e.x), true, false));
    var var_2 = global0.e.yw;
    return !all(global0.e.wwx);
}

fn func_2() -> Struct_5 {
    global0 = Struct_5(Struct_1(countOneBits(vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1438i, global0.d, 2147483647i, global0.a.a.x)), 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c.x)) + 1996f)), ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.d, 0i, 1i), vec3<i32>(2147483647i, -2147483647i, global0.b), vec3<i32>(-49553i, u_input.d.x, 7122i)) & _wgslsmith_sub_vec3_i32(u_input.d.wyz, global0.a.c))), select(countOneBits(-_wgslsmith_add_i32(global0.b, 1i)), 0i, true), global0.c, -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.d.x, 49798i), global0.b, ~u_input.a.x), -vec3<i32>(2147483647i, 2147483647i, 2147483647i)), global0.e);
    var var_0 = Struct_4(select(vec3<bool>(any(vec3<bool>(global0.e.x, false, global0.e.x)) != !global0.e.x, -905f == global0.a.b, !any(vec4<bool>(global0.e.x, global0.e.x, global0.e.x, true))), select(vec3<bool>(false, any(global0.e.zw), global0.e.x), vec3<bool>(false, global0.e.x, true), !func_3(global0.e.wx)), !global0.e.yzw));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0.a.b)), _wgslsmith_f_op_f32(1000f + -2431f), false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.c.x)) - global0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1124f + 1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(923f)) + global0.c.x)), global0.a.b));
    var_0 = Struct_4(select(!(!(!var_0.a)), global0.e.xzz, 647f < var_2.x));
    return Struct_5(Struct_1(reverseBits(vec3<i32>(-11538i, u_input.a.x, -2196i) & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, -1i), var_1.yzx, vec3<i32>(global0.b, 13i, u_input.d.x))), global0.c.x, select(-vec3<i32>(-22978i, -2147483647i, -1i) | u_input.a.zzz, vec3<i32>(~global0.b, select(-31314i, -1i, true), abs(1i)), _wgslsmith_f_op_f32(-var_2.x) == _wgslsmith_div_f32(-584f, var_2.x))), -(0i ^ -global0.a.c.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(807f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(2119f + -1815f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1091f) + -1139f), _wgslsmith_f_op_f32(-global0.a.b)))), 13639i, !(!(!select(vec4<bool>(global0.e.x, global0.e.x, var_0.a.x, var_0.a.x), global0.e, global0.e.x))));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2();
    let var_1 = !(!all(!vec4<bool>(true, var_0.e.x, global0.e.x, true)));
    global0 = Struct_5(global0.a, u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_div_f32(var_0.c.x, var_0.c.x)))), _wgslsmith_f_op_f32(floor(var_0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -685f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -823f) - -242f), -1000f)), -(~select(global0.d, reverseBits(var_0.a.c.x), all(vec4<bool>(true, global0.e.x, var_1, true)))), vec4<bool>(any(global0.e), _wgslsmith_f_op_f32(var_0.a.b + 1000f) == var_0.c.x, var_0.a.b <= 1035f, true));
    let var_2 = Struct_4(global0.e.wxx);
    global0 = var_0;
    return Struct_4(global0.e.wyx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-40570i, global0.d, global0.b);
    var var_1 = func_1();
    var var_2 = vec4<u32>(u_input.b, 0u, firstLeadingBit(u_input.e.x), ~(~86053u)) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~select(vec4<u32>(66576u, u_input.e.x, u_input.e.x, 11832u), vec4<u32>(0u, 103179u, 44627u, u_input.e.x), false), ~abs(vec4<u32>(91117u, 4294967295u, 26719u, 17481u))), ~(~u_input.e) >> (min(u_input.e, _wgslsmith_mod_vec4_u32(u_input.e, u_input.e)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = true;
    var_2 = ~_wgslsmith_clamp_vec4_u32(~u_input.e, ~u_input.e, ~reverseBits(~vec4<u32>(47077u, 4294967295u, 19857u, 28656u)));
    var_2 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(_wgslsmith_add_i32(global0.b, func_2().a.a.x), 60725i, -9033i), firstTrailingBit(select(vec3<i32>(0i, global0.d, u_input.a.x) | vec3<i32>(global0.d, -21644i, 1i), -vec3<i32>(85855i, global0.d, var_0.x), !global0.e.x))), u_input.e, ~abs(_wgslsmith_div_u32(var_2.x, u_input.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * global0.a.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -510f))))))), vec4<u32>(~4294967295u, var_2.x, var_2.x, var_2.x));
}

