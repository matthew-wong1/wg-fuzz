struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(min(-1863f, arg_1)) >= 968f;
    var var_2 = Struct_1(-23540i);
    let var_3 = !select(select(!select(vec4<bool>(var_1, true, arg_0.a.x, true), vec4<bool>(false, true, arg_2.a.x, var_1), false), vec4<bool>(arg_0.a.x, select(false, arg_2.a.x, arg_2.a.x), var_2.a != -3987i, arg_0.a.x), !all(arg_0.a)), !select(!vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_2.a.x, var_1, false, true), vec4<bool>(false, arg_0.a.x, true, false)), arg_0.a.x & !(!arg_0.a.x));
    let var_4 = 0u;
    return u_input.c.yy;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_1(1i);
    let var_1 = !(!(!arg_0));
    global0 = var_1.x || true;
    global0 = var_1.x;
    var var_2 = select(!select(select(select(vec3<bool>(false, arg_0.x, false), vec3<bool>(false, var_1.x, false), vec3<bool>(false, var_1.x, var_1.x)), vec3<bool>(false, var_1.x, true), arg_0.x), vec3<bool>(arg_0.x, false, var_1.x), select(vec3<bool>(false, false, arg_0.x), select(vec3<bool>(false, var_1.x, false), vec3<bool>(false, var_1.x, var_1.x), var_1.x), true)), !select(select(vec3<bool>(false, true, var_1.x), !vec3<bool>(true, var_1.x, var_1.x), select(vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, false, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), !(!vec3<bool>(true, var_1.x, false)), any(vec3<bool>(var_1.x, false, true))), true);
    return false;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> bool {
    var var_0 = !vec4<bool>(true, false, func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), func_3(Struct_2(vec3<bool>(true, false, true), vec4<u32>(u_input.a, u_input.b.x, 40305u, u_input.b.x)), _wgslsmith_f_op_f32(-452f + 2455f), Struct_2(vec3<bool>(true, false, false), vec4<u32>(5738u, u_input.b.x, 62048u, 0u))), vec3<i32>(arg_0, ~36650i, -u_input.c.x)), abs(arg_0) > (-66984i | arg_0));
    return true;
}

fn func_5(arg_0: bool, arg_1: bool) -> vec2<bool> {
    var var_0 = 1i;
    var_0 = 25008i;
    let var_1 = -_wgslsmith_mult_i32(select(_wgslsmith_mod_i32(u_input.c.x, 0i), 1i, !all(vec2<bool>(false, false))), reverseBits(abs(abs(u_input.c.x))));
    let var_2 = countOneBits(~29274i);
    var var_3 = vec2<bool>(any(!select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_1, false), vec2<bool>(false, true)), !vec2<bool>(true, arg_1), select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_1), vec2<bool>(arg_0, arg_0)))), arg_0 & !(var_2 == max(-1i, var_1)));
    return !select(!(!vec2<bool>(false, arg_0)), !vec2<bool>(arg_1, any(vec3<bool>(false, false, var_3.x))), func_2(max(var_1, -18715i), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-810f, -1000f, -1000f)))))));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_5(!any(vec4<bool>(true, true, false, all(vec4<bool>(false, true, true, false)))), !func_2(u_input.c.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1259f, 1048f, -1052f), vec3<f32>(-1000f, -767f, 1250f)))))));
    global0 = true;
    var var_1 = select(select(select(vec4<bool>(var_0.x, true, all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true), vec4<bool>(true, u_input.c.x < u_input.c.x, true, true), false), select(vec4<bool>(false, u_input.c.x == u_input.c.x, true, var_0.x), select(!vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, true, false), vec4<bool>(var_0.x, true, var_0.x, false)), !vec4<bool>(false, var_0.x, false, true)), vec4<bool>(var_0.x, true, var_0.x, false)), true), !(!(!(!vec4<bool>(var_0.x, true, true, var_0.x)))), select(vec4<bool>(true, true, true && (68846u > u_input.d), false), select(select(vec4<bool>(var_0.x, true, false, true), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, false, true), false), vec4<bool>(true, false, var_0.x, var_0.x)), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, true, var_0.x), false), true), var_0.x));
    var_0 = vec2<bool>(false, var_0.x);
    let var_2 = Struct_2(vec3<bool>(true, true, true), ~(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 0u, 0u, u_input.b.x), vec4<u32>(u_input.d, u_input.a, 78317u, u_input.a), vec4<u32>(0u, u_input.a, u_input.b.x, u_input.d)))));
    return select(vec3<bool>(func_4(vec2<bool>(u_input.c.x >= u_input.c.x, true), u_input.c.zy, u_input.c), !select(true, true, var_1.x && true), true), select(var_1.xzw, var_2.a, all(var_1.wzz)), !var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = Struct_2(func_1(), vec4<u32>(4294967295u ^ ~abs(u_input.d), reverseBits(max(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(0u, 4294967295u)), _wgslsmith_clamp_u32(4294967295u, 0u, u_input.a))), ~18150u, ~128847u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -573f) * -382f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-184f + 305f))))));
    global0 = true;
    var var_2 = u_input.c.x;
    var var_3 = Struct_1(-((-u_input.c.x >> (firstLeadingBit(var_0.b.x) % 32u)) >> (~_wgslsmith_add_u32(u_input.b.x, var_0.b.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-325f, _wgslsmith_f_op_f32(696f + var_1)) + -1130f)), _wgslsmith_div_vec2_u32(select((var_0.b.ww & var_0.b.xx) ^ vec2<u32>(u_input.d, var_0.b.x), var_0.b.yy, select(var_0.a.zy, func_1().zz, select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(false, true), var_0.a.x))), ~min(~vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(u_input.b.yx, vec2<u32>(u_input.b.x, 48469u)))), max(vec3<u32>(_wgslsmith_mod_u32(var_0.b.x, ~0u), _wgslsmith_add_u32(abs(0u), ~u_input.a), ~(~4294967295u)), vec3<u32>(0u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 1u, var_0.b.x, u_input.a), var_0.b) << (4294967295u % 32u))));
}

