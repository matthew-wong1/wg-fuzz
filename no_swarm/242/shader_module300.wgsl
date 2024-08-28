struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(step(-2151f, 1000f));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(453f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1753f + -962f) + -1005f), _wgslsmith_f_op_f32(func_3())), -1503f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -291f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2116f)))));
    global0 = arg_1.a.xzz;
    let var_1 = Struct_3(_wgslsmith_clamp_u32(u_input.b, ~(~_wgslsmith_div_u32(u_input.a, 25872u)), ~arg_1.c.x ^ _wgslsmith_add_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(arg_1.c.x, 25222u)))), !select(global0.yx, vec2<bool>(true, select(false, arg_1.a.x, arg_1.a.x)), !arg_1.a.x));
    var var_2 = arg_1;
    var var_3 = countOneBits(select(vec2<i32>(u_input.c.x, arg_0.x), vec2<i32>(u_input.c.x, 2147483647i), true));
    return !(!(!select(vec2<bool>(arg_1.a.x, true), var_1.b, !global0.x)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = u_input.c;
    global0 = select(arg_0.c.a.xzw, arg_0.b.wzw, !global0.x);
    global0 = arg_0.b.xzy;
    global0 = !arg_0.c.a.yxw;
    global0 = !(!select(arg_0.c.a.ywy, arg_0.c.a.zyw, arg_0.b.yzw));
    return Struct_3((~arg_1.x & _wgslsmith_dot_vec2_u32(u_input.d.xw, vec2<u32>(arg_1.x, u_input.a))) << (~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.c.b, u_input.a, 0u), u_input.d)) % 32u), func_2(var_0, arg_0.c));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-350f, 975f, -1000f, -318f) - vec4<f32>(923f, -570f, -1047f, -623f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-403f, -1262f, 579f, 619f) - vec4<f32>(-562f, 1746f, -610f, -232f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + -770f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-779f + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(291f, var_0.x)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x)) + -324f)));
    var var_1 = Struct_2(~0u, vec4<bool>(var_0.x <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_f_op_f32(abs(603f))), all(vec2<bool>(func_2(vec3<i32>(-42076i, 1i, u_input.c.x), Struct_1(vec4<bool>(global0.x, true, true, global0.x), arg_0.a, vec2<u32>(arg_0.a, u_input.a))).x, any(arg_0.b))), false, !func_2(~u_input.c, Struct_1(vec4<bool>(false, arg_0.b.x, false, true), 56452u, arg_1)).x), Struct_1(select(vec4<bool>(global0.x, true, all(global0.xz), true), !(!vec4<bool>(false, arg_0.b.x, global0.x, global0.x)), !vec4<bool>(true, global0.x, false, global0.x)), 4294967295u, u_input.d.zy));
    var_1 = Struct_2(firstLeadingBit(~0u), vec4<bool>(false, global0.x, true, any(!global0.xx)), var_1.c);
    let var_2 = Struct_3(0u, func_2((u_input.c >> (_wgslsmith_add_vec3_u32(vec3<u32>(3566u, arg_1.x, var_1.a), u_input.d.zwx) % vec3<u32>(32u))) << (vec3<u32>(arg_1.x >> (57285u % 32u), min(63473u, 1u), ~88938u) % vec3<u32>(32u)), var_1.c));
    return select(arg_0.b.x, var_1.b.x, all(!var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(true, global0.x, true), !vec3<bool>(select(select(false, global0.x, false), false | global0.x, global0.x), !(!global0.x), any(vec3<bool>(true, false, global0.x))), !(!func_4(func_1(Struct_2(u_input.d.x, vec4<bool>(false, true, global0.x, global0.x), Struct_1(vec4<bool>(global0.x, true, global0.x, true), 1u, u_input.d.zw)), vec2<u32>(4294967295u, u_input.d.x)), ~vec2<u32>(42622u, u_input.b))));
    global0 = select(vec3<bool>(true, true, global0.x), select(select(vec3<bool>(all(vec4<bool>(true, global0.x, global0.x, global0.x)), !global0.x, all(global0.xy)), vec3<bool>(func_2(u_input.c, Struct_1(vec4<bool>(global0.x, false, true, false), u_input.d.x, vec2<u32>(4294967295u, 1451u))).x, true, true), global0.x), vec3<bool>(u_input.c.x < (u_input.c.x ^ u_input.c.x), any(select(vec4<bool>(false, false, true, true), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, false, global0.x, global0.x))), !(!global0.x)), select(!vec3<bool>(false, global0.x, false), select(select(vec3<bool>(false, true, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x)), !vec3<bool>(global0.x, true, global0.x), !vec3<bool>(false, global0.x, true)), any(vec4<bool>(global0.x, true, false, true)))), !(!vec3<bool>(all(vec4<bool>(global0.x, true, global0.x, false)), all(vec4<bool>(global0.x, global0.x, true, false)), global0.x)));
    let var_0 = Struct_4(Struct_1(!(!vec4<bool>(global0.x, global0.x, global0.x, false)), ~(~u_input.b), countOneBits(select(u_input.d.wx, vec2<u32>(1u, u_input.a), vec2<bool>(global0.x, true))) | ~vec2<u32>(0u, 11870u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1018f + -549f), -444f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(342f * 1696f), _wgslsmith_f_op_f32(floor(295f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1382f, 523f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1458f, 2417f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(592f, 355f) + vec2<f32>(125f, -743f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(393f, -1036f)))), !global0.zz))), global0.yy));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f - 1535f)) + _wgslsmith_f_op_f32(1217f - -111f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) - -1354f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, -692f, 25455u);
}

