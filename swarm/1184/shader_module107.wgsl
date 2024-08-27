struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: i32) -> bool {
    global0 = !all(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)));
    global0 = false;
    var var_0 = Struct_1(!vec2<bool>(false, any(vec4<bool>(true, true, true, true))));
    var_0 = Struct_1(!(!select(select(var_0.a, var_0.a, var_0.a), vec2<bool>(true, false), false)));
    let var_1 = 1f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1246f, 1181f))) - _wgslsmith_f_op_f32(517f + _wgslsmith_f_op_f32(f32(-1f) * -497f))));
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = select(abs(~firstLeadingBit(select(vec2<u32>(u_input.c, 44640u), u_input.b, arg_2.x))), vec2<u32>(u_input.c, abs(~4294967295u)) >> (~abs(max(u_input.d.yy, u_input.d.xw)) % vec2<u32>(32u)), arg_2.ww);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))))), -1185f)), arg_0.b, Struct_2(Struct_1(arg_0.b.b.a), arg_0.c.c, Struct_1(vec2<bool>(arg_0.c.c.a.x, true))));
    let var_2 = arg_0;
    global0 = true;
    let var_3 = !(!vec2<bool>(!arg_2.x, any(select(var_2.c.b.a, vec2<bool>(arg_0.c.b.a.x, arg_0.c.c.a.x), var_2.b.b.a))));
    return select(select(!vec2<bool>(arg_2.x, false), select(vec2<bool>(var_3.x, false), select(vec2<bool>(true, false), !arg_0.b.a.a, true), arg_2.x), var_1.c.c.a), vec2<bool>(true & var_3.x, any(select(!vec3<bool>(arg_2.x, false, false), !arg_2.xzz, true))), var_2.c.b.a.x);
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_sub_u32(17521u, ~u_input.d.x >> (_wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(4294967295u, 30453u, u_input.d.x, 33617u))), arg_0.x) % 32u));
    global0 = true;
    global0 = all(select(vec2<bool>(true, true), func_4(Struct_3(_wgslsmith_f_op_f32(831f - 523f), Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)))), ~(-u_input.a), vec4<bool>(false, true, all(vec2<bool>(true, true)), func_3(vec3<i32>(-18599i, u_input.a.x, u_input.a.x), vec2<i32>(73180i, u_input.a.x), u_input.d.ywy, -1i))), vec2<bool>(true, all(vec2<bool>(true, true)))));
    let var_1 = Struct_3(-560f, Struct_2(Struct_1(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), Struct_1(vec2<bool>(true, -1i == u_input.a.x)), Struct_1(vec2<bool>(any(vec2<bool>(false, false)), func_4(Struct_3(-208f, Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)))), vec4<i32>(1963i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, true)).x))), Struct_2(Struct_1(!func_4(Struct_3(-1198f, Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)))), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, false, false, true))), Struct_1(vec2<bool>(true, true)), Struct_1(!func_4(Struct_3(-1029f, Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)))), vec4<i32>(17603i, -1i, u_input.a.x, 0i), vec4<bool>(true, true, true, true)))));
    var var_2 = u_input.a.zy;
    return true;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = false;
    global0 = true;
    let var_0 = vec3<bool>(false, select(false, true, false) || func_2(vec2<u32>(~4294967295u, u_input.d.x)), !func_3(vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(2147483647i, u_input.a.x), arg_0.x), -(~vec2<i32>(0i, 29624i)), ~firstLeadingBit(u_input.d.ywy), -1i));
    global0 = !any(select(vec3<bool>(!var_0.x, true, true), !select(vec3<bool>(var_0.x, var_0.x, true), var_0, var_0), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_0.x))));
    var var_1 = _wgslsmith_f_op_f32(trunc(-1358f));
    return Struct_1(vec2<bool>(true, arg_0.x < _wgslsmith_clamp_i32(_wgslsmith_div_i32(-41798i, u_input.a.x), i32(-1i) * -2147483647i, -854i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec4<bool>(any(vec4<bool>(true, true, false, false)) && select(true, false, true), select(false, true, false), true != any(vec2<bool>(false, true)), !all(vec4<bool>(false, true, true, false)))) & all(select(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), vec3<bool>(false, true, any(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true)));
    var var_0 = func_1(vec3<i32>(u_input.a.x, u_input.a.x, -12226i));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-515f, -835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1826f) + _wgslsmith_f_op_f32(step(-690f, -1794f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2146f) * 1f)) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1915f, -1915f))) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2101f, -830f), _wgslsmith_f_op_f32(f32(-1f) * -498f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -397f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -274f)));
    var_0 = Struct_1(vec2<bool>(var_0.a.x, _wgslsmith_f_op_f32(sign(-318f)) > _wgslsmith_f_op_f32(-var_1.x)));
    let var_2 = var_1.zw;
    var var_3 = firstTrailingBit(u_input.a);
    var_0 = Struct_1(vec2<bool>(func_4(Struct_3(_wgslsmith_f_op_f32(-169f + 1016f), Struct_2(Struct_1(vec2<bool>(var_0.a.x, var_0.a.x)), Struct_1(vec2<bool>(var_0.a.x, false)), Struct_1(var_0.a)), Struct_2(Struct_1(var_0.a), Struct_1(var_0.a), Struct_1(vec2<bool>(false, var_0.a.x)))), u_input.a << ((u_input.d << (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u)), select(vec4<bool>(var_0.a.x, true, true, true), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), var_2.x < -302f)).x, func_4(Struct_3(_wgslsmith_f_op_f32(round(var_2.x)), Struct_2(Struct_1(var_0.a), Struct_1(vec2<bool>(var_0.a.x, true)), Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(var_0.a.x, true)), Struct_1(vec2<bool>(var_0.a.x, var_0.a.x)), Struct_1(vec2<bool>(var_0.a.x, var_0.a.x)))), abs(vec4<i32>(21266i, var_3.x, var_3.x, u_input.a.x)) >> (vec4<u32>(6249u, 1u, 43771u, u_input.c) % vec4<u32>(32u)), vec4<bool>(true, false, var_0.a.x, func_1(var_3.xyz).a.x)).x));
    let x = u_input.a;
    s_output = StorageBuffer(-212f, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b.x | 1716u, ~43318u, 0u ^ u_input.d.x), ~u_input.d.x), ~_wgslsmith_sub_u32(u_input.b.x, 0u)));
}

