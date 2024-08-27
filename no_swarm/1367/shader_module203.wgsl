struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    global0 = select(vec4<bool>(false, true, global0.x, true), select(select(vec4<bool>(true, !global0.x, true & global0.x, global0.x), vec4<bool>(global0.x, false, true, true), select(!global0.x, false, global0.x)), !select(!vec4<bool>(global0.x, true, false, true), vec4<bool>(false, global0.x, true, global0.x), all(global0.yzz)), vec4<bool>(true, false, all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true)), select(global0.x, true, any(global0.wzz) && global0.x));
    var var_0 = Struct_3(vec4<u32>(max(firstLeadingBit(arg_1), u_input.b.x), arg_1, u_input.b.x, ~(~29447u)) >> (vec4<u32>(_wgslsmith_mult_u32(0u, 1u) ^ u_input.b.x, min(arg_0.a.x, 0u) >> (min(1u, arg_0.a.x) % 32u), firstLeadingBit(u_input.a), arg_1) % vec4<u32>(32u)));
    var var_1 = ~max(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(~(-8282i), countOneBits(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 10434i, -32264i), vec4<i32>(29543i, -77318i, -70176i, -50834i)), 0i << (arg_0.a.x % 32u))));
    let var_2 = vec2<i32>(1i, 1i);
    var var_3 = vec2<u32>(~(~_wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(33907u, arg_1))), abs(192169u));
    return select(global0.x, global0.x, global0.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -745f);
    var var_1 = Struct_3(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(arg_0, arg_0), min(arg_0, _wgslsmith_div_vec4_u32(arg_0, vec4<u32>(0u, arg_0.x, u_input.c, 0u)))), arg_0));
    global0 = vec4<bool>(false, any(!arg_1), false, !func_3(Struct_3(arg_0), abs(arg_0.x)));
    var var_2 = true;
    return ~1u;
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_3(countOneBits(select(vec4<u32>(u_input.c, 17900u, 26843u, u_input.a), firstTrailingBit(vec4<u32>(23295u, u_input.a, 62248u, u_input.b.x)), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, false, false, global0.x), vec4<bool>(global0.x, true, global0.x, false)))) << (vec4<u32>(func_2(max(vec4<u32>(4294967295u, 1u, 0u, u_input.c), vec4<u32>(1u, u_input.a, u_input.a, u_input.c)), vec4<bool>(true, global0.x, global0.x, true)), u_input.a, ~4294967295u, u_input.b.x) % vec4<u32>(32u)));
    let var_1 = select(~0i, -(min(~0i, i32(-1i) * -1i) >> (abs(_wgslsmith_sub_u32(u_input.b.x, 0u)) % 32u)), true);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-245f))))) + _wgslsmith_f_op_f32(1251f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1642f, -383f)))))));
    global0 = select(!(!select(vec4<bool>(true, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), vec4<bool>(global0.x, true, false, global0.x), select(vec4<bool>(true, !(31411u < u_input.a), false, _wgslsmith_dot_vec3_u32(var_0.a.xzw, vec3<u32>(1u, 36836u, u_input.c)) != 9787u), vec4<bool>(true, select(!global0.x, global0.x, any(vec4<bool>(global0.x, global0.x, false, true))), false, true), vec4<bool>(true, global0.x, !global0.x, false)));
    var var_3 = select(!select(!vec4<bool>(global0.x, global0.x, false, false), select(vec4<bool>(false, true, global0.x, true), select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), global0.x | false), vec4<bool>(true, true, -3092f >= var_2, func_3(Struct_3(var_0.a), var_0.a.x))), !select(vec4<bool>(all(vec4<bool>(false, true, global0.x, global0.x)), global0.x, true, global0.x), !vec4<bool>(global0.x, false, true, global0.x), any(global0.yyw)), true);
    return !vec4<bool>(!((var_0.a.x == u_input.c) || true), all(select(vec4<bool>(true, false, false, true), !vec4<bool>(global0.x, false, true, true), !var_3.x)), global0.x, (~var_0.a.x <= 4294967295u) && select(global0.x, any(global0.xzw), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = select(vec4<bool>(true, !(!(global0.x | global0.x)), all(global0.yww), func_1().x), select(vec4<bool>(global0.x, ~0u >= u_input.c, global0.x, global0.x), select(func_1(), select(!vec4<bool>(false, false, false, global0.x), !vec4<bool>(true, true, global0.x, global0.x), false), true), !vec4<bool>(all(global0.ywx), !global0.x, false, !global0.x)), func_1().x);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(338f * _wgslsmith_f_op_f32(ceil(-708f))))));
    global0 = select(!(!(!(!vec4<bool>(global0.x, true, global0.x, true)))), !vec4<bool>(!global0.x && (49441u != u_input.c), global0.x, -706f != _wgslsmith_f_op_f32(var_0.a - var_0.a), false), !func_1());
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a))))));
    global0 = !(!vec4<bool>(all(!vec4<bool>(false, global0.x, false, false)), global0.x & all(global0.zxy), global0.x, all(select(global0.xw, global0.wz, global0.x))));
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(countOneBits(1u), ~u_input.b.x), _wgslsmith_clamp_u32(min(9077u, 4294967295u), ~4294967295u, 1u)), 5009u, ~abs(4294967295u)), !global0.x);
    global0 = !select(func_1(), !select(!vec4<bool>(false, var_1.b, global0.x, var_1.b), vec4<bool>(var_1.b, global0.x, global0.x, false), !vec4<bool>(var_1.b, true, var_1.b, false)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-303f, -390f) - -1831f)))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, 0u), _wgslsmith_mult_u32(var_1.a.x, u_input.c)) | u_input.c, 26082u), var_1.a.x | 1u);
}

