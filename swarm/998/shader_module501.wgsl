struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = 2147483647i;
    return false;
}

fn func_3() -> i32 {
    let var_0 = ~vec4<i32>(1i, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)), -max(vec4<i32>(-31385i, -3544i, 1217i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.c))), 1i, _wgslsmith_div_i32(1i, firstTrailingBit(_wgslsmith_div_i32(-2147483647i, u_input.c))));
    let var_1 = Struct_1(global0.a);
    let var_2 = Struct_1(vec2<bool>(!var_1.a.x && ((u_input.b.x | u_input.b.x) > ~0u), any(select(vec3<bool>(var_1.a.x, var_1.a.x, false), select(vec3<bool>(var_1.a.x, true, global0.a.x), vec3<bool>(var_1.a.x, true, global0.a.x), false), !global0.a.x))));
    let var_3 = 1u;
    global0 = Struct_1(select(vec2<bool>(_wgslsmith_f_op_f32(round(1112f)) < -1573f, true | !var_1.a.x), vec2<bool>(var_1.a.x, all(select(vec2<bool>(false, var_1.a.x), vec2<bool>(false, global0.a.x), var_1.a.x))), vec2<bool>(true, true)));
    return _wgslsmith_sub_i32(-(_wgslsmith_clamp_i32(-1i, 2147483647i, 2147483647i) ^ _wgslsmith_clamp_i32(2147483647i, 2147483647i, var_0.x)) << (0u % 32u), i32(-1i) * -19751i);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<bool> {
    global0 = arg_2;
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_1 = arg_2;
    global0 = arg_2;
    var_1 = Struct_1(arg_2.a);
    return !vec2<bool>(all(vec3<bool>(true, true | var_1.a.x, all(vec3<bool>(global0.a.x, true, false)))), _wgslsmith_mod_i32(func_3(), -u_input.c) > ~(~12421i));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = any(select(select(func_2(_wgslsmith_mod_u32(u_input.b.x, 0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(533f, 933f)), arg_2), !select(vec2<bool>(true, true), vec2<bool>(arg_2.a.x, true), vec2<bool>(true, false)), !vec2<bool>(arg_0.a.x, global0.a.x)), select(vec2<bool>(!arg_0.a.x, global0.a.x && arg_3), global0.a, ~23666u == (u_input.b.x >> (u_input.b.x % 32u))), select(select(func_2(u_input.b.x, vec2<f32>(849f, 171f), arg_0), vec2<bool>(global0.a.x, true), arg_3), vec2<bool>(true, true), global0.a)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-276f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1240f - -308f), 449f))))), -1199f);
    var var_2 = Struct_1(select(vec2<bool>(global0.a.x, false), select(vec2<bool>(true, any(vec4<bool>(global0.a.x, true, arg_3, arg_3))), global0.a, vec2<bool>(global0.a.x, arg_3)), any(select(select(vec4<bool>(true, arg_3, true, arg_2.a.x), vec4<bool>(true, arg_0.a.x, arg_2.a.x, arg_0.a.x), vec4<bool>(arg_3, global0.a.x, global0.a.x, arg_3)), select(vec4<bool>(arg_2.a.x, true, true, arg_2.a.x), vec4<bool>(global0.a.x, arg_3, global0.a.x, false), vec4<bool>(true, false, true, true)), !vec4<bool>(arg_3, false, arg_3, true)))));
    var_2 = Struct_1(!vec2<bool>(false, !all(vec4<bool>(global0.a.x, false, true, global0.a.x))));
    var_0 = global0.a.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec2<bool>(false, true));
    global0 = Struct_1(!vec2<bool>(!any(vec3<bool>(global0.a.x, false, false)), global0.a.x));
    var var_0 = Struct_1(select(select(vec2<bool>(global0.a.x, global0.a.x & false), !global0.a, global0.a.x), vec2<bool>(select(true, true, func_1(vec4<f32>(-2223f, -133f, -1000f, 224f))), !(!global0.a.x)), select(global0.a, global0.a, any(!vec3<bool>(global0.a.x, global0.a.x, false)))));
    global0 = func_4(Struct_1(!select(!vec2<bool>(true, global0.a.x), select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(true, true), false), var_0.a.x)), u_input.b.x, Struct_1(!select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(true, true), func_2(74835u, vec2<f32>(-906f, -679f), Struct_1(global0.a)))), true);
    global0 = func_4(func_4(Struct_1(vec2<bool>(global0.a.x && global0.a.x, false)), u_input.b.x, func_4(func_4(Struct_1(var_0.a), min(u_input.b.x, u_input.b.x), func_4(Struct_1(vec2<bool>(global0.a.x, false)), 0u, Struct_1(vec2<bool>(true, global0.a.x)), false), true), reverseBits(~4294967295u), Struct_1(vec2<bool>(false, true)), (var_0.a.x | true) || true), var_0.a.x), u_input.b.x, Struct_1(func_4(func_4(Struct_1(var_0.a), 1u, func_4(Struct_1(var_0.a), u_input.b.x, Struct_1(var_0.a), false), true), ~_wgslsmith_mod_u32(u_input.b.x, 4294967295u), func_4(Struct_1(vec2<bool>(var_0.a.x, true)), countOneBits(25063u), func_4(Struct_1(vec2<bool>(true, true)), 49127u, Struct_1(var_0.a), global0.a.x), var_0.a.x), false).a), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -1i), 4294967295u);
}

