struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, 187f, -288f, -908f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-154f - -333f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))), -1047f, _wgslsmith_f_op_f32(284f + global0.x)), true != (global0.x <= 1000f), countOneBits(9484i << (~_wgslsmith_add_u32(u_input.d.x, u_input.c.x) % 32u)), select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, true)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), true), true), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), u_input.e < 4294967295u), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)))));
    var var_1 = var_0.d.zzy;
    let var_2 = var_0.b;
    var_1 = var_0.d.wyz;
    var var_3 = u_input.d.xzx;
    return u_input.c.x;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f) * _wgslsmith_f_op_f32(659f * arg_0.a.x)), global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1286f, _wgslsmith_f_op_f32(arg_0.a.x + 1808f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-768f, -1271f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-906f - 477f), global0.x))), arg_0.a.x, global0.x);
    global0 = arg_0.a;
    var var_0 = vec4<bool>(abs(-arg_0.c) >= arg_0.c, any(!select(arg_0.d.xxw, vec3<bool>(false, true, false), arg_0.d.zyz)), func_3() <= (abs(u_input.d.x | u_input.c.x) & _wgslsmith_mult_u32(81846u, u_input.d.x)), any(select(select(vec4<bool>(true, false, arg_0.b, false), select(arg_0.d, vec4<bool>(arg_0.b, true, true, arg_0.b), vec4<bool>(arg_0.d.x, true, false, arg_0.b)), arg_0.d), arg_0.d, arg_0.d)));
    var var_1 = arg_0.b;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, _wgslsmith_div_f32(976f, arg_0.a.x), _wgslsmith_f_op_f32(arg_0.a.x - global0.x), arg_0.a.x), _wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_f_op_vec4_f32(abs(arg_0.a))))))), true, abs(-38047i), vec4<bool>(var_0.x, true, any(select(vec3<bool>(false, arg_0.d.x, var_0.x), select(arg_0.d.zyz, vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(false, var_0.x, var_0.x)), true)), true));
    return arg_0.d;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(763f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1496f * 952f), _wgslsmith_f_op_f32(max(-1110f, arg_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-854f)), 658f), _wgslsmith_f_op_f32(sign(global0.x))), !all(!arg_0.d.xwy), _wgslsmith_mult_i32(reverseBits(_wgslsmith_div_i32(arg_0.c, -17422i) << (_wgslsmith_mod_u32(4294967295u, u_input.e) % 32u)), -1i), !arg_0.d);
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> u32 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(abs(1497f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))), global0.x), global0.x, _wgslsmith_f_op_f32(-689f - -1326f));
    let var_0 = func_4(Struct_1(vec4<f32>(255f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -394f)), _wgslsmith_f_op_f32(-1205f - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1461f, global0.x)))), true, u_input.a, !select(!vec4<bool>(arg_0, false, arg_0, true), !vec4<bool>(true, false, arg_0, false), func_2(Struct_1(vec4<f32>(global0.x, 310f, 730f, 554f), false, u_input.b, vec4<bool>(true, true, true, true))))));
    let var_1 = vec4<i32>(-(~select(countOneBits(u_input.a), -var_0.c, true)), 1i, u_input.a, _wgslsmith_dot_vec4_i32(min(-abs(vec4<i32>(2147483647i, -1i, 16433i, -64247i)), -vec4<i32>(2147483647i, u_input.a, 23940i, u_input.a) & (vec4<i32>(var_0.c, 1i, var_0.c, 22816i) ^ vec4<i32>(-32451i, var_0.c, u_input.a, u_input.b))), firstLeadingBit(firstLeadingBit(-vec4<i32>(21913i, 888i, 14051i, u_input.a)))));
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.a))))), (true | select(arg_1.x, true, arg_0)) & any(select(var_0.d, vec4<bool>(true, false, true, arg_0), var_0.d)), u_input.a, vec4<bool>(arg_0, !any(vec4<bool>(true, var_0.d.x, false, false)), all(var_0.d.yzw), false)));
    var var_3 = u_input.a & var_1.x;
    return ~_wgslsmith_mod_u32(u_input.d.x << (~max(u_input.c.x, u_input.d.x) % 32u), ~_wgslsmith_mod_u32(u_input.d.x, 7468u) & abs(~u_input.e));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(941f, 1282f)), global0.x, -1642f, _wgslsmith_f_op_f32(global0.x + global0.x)), vec4<f32>(-187f, global0.x, _wgslsmith_f_op_f32(select(-615f, 374f, arg_2.x)), _wgslsmith_f_op_f32(min(-1681f, global0.x))), vec4<bool>(!arg_2.x, true, true, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, -1599f), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-600f * global0.x)))), true, ~u_input.a, func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(513f, -1778f, global0.x, 1745f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) + vec4<f32>(global0.x, global0.x, -1000f, 1351f))), !arg_0.x, -6260i, select(!arg_2, !arg_0, false && arg_0.x))).d);
    return var_0.d.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(~4294967295u, ~_wgslsmith_add_u32(4294967295u, u_input.c.x) << (32077u % 32u)), 13646u);
    var_0 = u_input.d.x;
    let var_1 = select(vec2<bool>(~4294967295u <= ((u_input.d.x | 1936u) << (22038u % 32u)), false), select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(true, !any(vec4<bool>(true, true, true, true))), func_5(vec4<bool>(true, true, true, true), func_1(u_input.b == -23246i, select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), vec4<bool>(true, false, true, true))), func_4(Struct_1(vec4<f32>(global0.x, _wgslsmith_f_op_f32(step(1108f, global0.x)), _wgslsmith_f_op_f32(1832f * global0.x), _wgslsmith_f_op_f32(global0.x - -1000f)), true, 2147483647i, vec4<bool>(select(false, true, false), true, true, func_4(Struct_1(vec4<f32>(global0.x, global0.x, -354f, -1667f), false, u_input.a, vec4<bool>(false, true, false, true))).d.x))).d.yw);
    let var_2 = firstLeadingBit(vec4<u32>(~u_input.d.x, 7669u, _wgslsmith_add_u32(u_input.e, 1u) ^ func_3(), reverseBits(~(~1u))));
    let var_3 = vec4<i32>(_wgslsmith_add_i32(reverseBits(i32(-1i) * -2147483647i), u_input.b) << (~(~93469u) % 32u), -1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(~1i, -29372i), 2001i), _wgslsmith_sub_i32((u_input.b << (1u % 32u)) >> (var_2.x % 32u), ~firstLeadingBit(-2147483647i ^ u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.wz, select(reverseBits(~_wgslsmith_clamp_vec2_i32(var_3.wx, var_3.yz, vec2<i32>(u_input.a, u_input.b))), firstTrailingBit(_wgslsmith_add_vec2_i32(firstLeadingBit(var_3.zx), reverseBits(vec2<i32>(var_3.x, var_3.x)))), true));
}

