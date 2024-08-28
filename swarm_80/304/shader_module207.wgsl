struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool>;

var<private> global2: f32 = 2158f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    global1 = !select(vec4<bool>(true, any(vec2<bool>(global0.c.x, global1.x)), true, any(!global1.zyy)), vec4<bool>(global0.d.x, (global0.a.x > u_input.a.x) && all(vec3<bool>(global0.c.x, global1.x, global1.x)), true, false), !global1.x);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-981f + _wgslsmith_f_op_f32(round(-1064f)))));
    global1 = vec4<bool>(global0.a.x > (~global0.a.x | u_input.a.x), !any(vec3<bool>(true, true, true)), global0.c.x, select(all(!select(vec3<bool>(true, global1.x, false), global1.xyw, global1.xxy)), select(!(true | global1.x), !all(global0.c), false), false));
    let var_0 = global0.c.zx;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))));
    return all(!select(vec4<bool>(global0.d.x, global0.b < 1i, 44226u != global0.a.x, false), !vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false), global0.b <= -1166i));
}

fn func_2() -> vec2<u32> {
    global0 = Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, ~global0.a.x), _wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.a.yx), select(_wgslsmith_add_vec2_u32(firstLeadingBit(global0.a), vec2<u32>(0u, global0.a.x)), vec2<u32>(_wgslsmith_sub_u32(global0.a.x, 0u), u_input.a.x), select(vec2<bool>(global1.x, global1.x), select(global0.d.xy, global1.xz, global0.c.x), select(vec2<bool>(true, false), vec2<bool>(false, global1.x), false)))), abs(global0.b), select(!(!vec3<bool>(true, global0.c.x, global1.x)), vec3<bool>(all(global1.yzx), true, true), false), vec3<bool>(!(!(!global0.c.x)), func_3() && any(!vec3<bool>(true, global1.x, global1.x)), (all(vec2<bool>(global1.x, false)) | true) || all(global1.wx)));
    var var_0 = ~u_input.a ^ (vec3<u32>(u_input.a.x, ~abs(27213u), u_input.a.x ^ u_input.a.x) >> (~countOneBits(~u_input.a) % vec3<u32>(32u)));
    let var_1 = vec3<f32>(-988f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-307f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 553f)))));
    global1 = vec4<bool>((!(!global0.c.x) | !global1.x) == !(!(!global1.x)), !(!all(vec2<bool>(global1.x, global1.x))), any(select(global1.xz, global1.xz, vec2<bool>(all(global1.zzw), func_3()))), global0.d.x);
    global1 = !(!(!vec4<bool>(global1.x, any(global1.zy), true, select(true, true, false))));
    return global0.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_2(min(~func_2(), ~(~vec2<u32>(1u, arg_2.a.x))) << (firstLeadingBit(vec2<u32>(arg_2.a.x, 55626u) << (vec2<u32>(4294967295u, 29335u) % vec2<u32>(32u))) % vec2<u32>(32u)), 2147483647i, arg_2.c, vec3<bool>((global0.c.x & false) & (_wgslsmith_f_op_f32(floor(650f)) >= _wgslsmith_f_op_f32(floor(1139f))), global0.c.x, false));
    var var_1 = global1.wy;
    let var_2 = 0i;
    var var_3 = vec3<i32>(select(arg_3.a, arg_0.x, false), _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -arg_2.b, arg_2.b), vec3<i32>(reverseBits(global0.b), arg_0.x, arg_2.b)), global0.b);
    var var_4 = Struct_3(var_0.a.x, countOneBits(-select(-arg_0.wy, reverseBits(vec2<i32>(arg_3.a, 1822i)), vec2<bool>(false, global0.c.x))), vec4<u32>(max(u_input.a.x ^ global0.a.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1.x, 1u), ~u_input.a.x)), ~(~global0.a.x), arg_1.x, 57069u));
    return select(select(vec3<bool>(true, true, true), vec3<bool>(!var_0.d.x, select(arg_0.x, -75167i, false) != _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, 2147483647i, 0i, -1i), vec4<i32>(global0.b, var_2, var_2, var_2)), all(select(global0.d.xx, arg_2.d.yz, arg_2.d.x))), var_0.c), var_0.d, all(select(vec4<bool>(select(true, global1.x, global1.x), false, false, var_0.c.x), select(select(vec4<bool>(var_0.c.x, var_0.d.x, true, var_0.d.x), vec4<bool>(true, true, var_1.x, global0.c.x), vec4<bool>(true, global0.d.x, var_0.d.x, global1.x)), select(vec4<bool>(false, var_0.d.x, true, global1.x), vec4<bool>(true, false, global1.x, arg_2.c.x), false), vec4<bool>(global1.x, false, true, true)), select(select(vec4<bool>(global0.d.x, true, global0.c.x, true), vec4<bool>(true, arg_2.d.x, false, global1.x), vec4<bool>(arg_2.c.x, var_1.x, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(global0.d.x, global0.c.x, var_0.d.x, true), vec4<bool>(false, var_1.x, true, var_1.x), var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(all(select(func_1(abs(vec4<i32>(-2147483647i, global0.b, 3498i, global0.b)), vec3<u32>(0u, global0.a.x, 10486u), Struct_2(vec2<u32>(global0.a.x, 52733u), 19i, vec3<bool>(true, global0.c.x, true), vec3<bool>(true, global0.c.x, global0.d.x)), Struct_1(global0.b)), vec3<bool>(global1.x, global1.x, false), global1.x)), false, !(!global0.d.x), global1.x);
    global1 = vec4<bool>(17570u >= _wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, u_input.a.x), -16932i > global0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, global0.b, -global0.b, global0.b), vec4<i32>(firstTrailingBit(-9976i), global0.b, global0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(54849i, 1i, 2147483647i), vec3<i32>(-32564i, global0.b, global0.b)))) >= ~(-(~12489i)), true);
    global1 = select(select(!(!vec4<bool>(global1.x, global1.x, true, global0.c.x)), vec4<bool>(!global0.d.x, true, !global0.d.x, !any(vec3<bool>(global1.x, global1.x, false))), true), !select(!select(vec4<bool>(false, global0.c.x, false, true), vec4<bool>(global0.d.x, global1.x, true, global0.d.x), global1.x), vec4<bool>(!global0.c.x, true, !global0.d.x, select(global1.x, global1.x, false)), select(!vec4<bool>(false, true, global1.x, global0.d.x), !vec4<bool>(false, true, global1.x, false), !global0.d.x)), _wgslsmith_f_op_f32(select(-155f, 1000f, (global0.b | global0.b) != _wgslsmith_dot_vec4_i32(vec4<i32>(-13986i, global0.b, global0.b, global0.b), vec4<i32>(global0.b, 45211i, -19893i, global0.b)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-541f * -1370f) + 1000f));
    global0 = Struct_2(_wgslsmith_mod_vec2_u32(~vec2<u32>(global0.a.x, global0.a.x) << (_wgslsmith_div_vec2_u32(~vec2<u32>(global0.a.x, 1u), vec2<u32>(global0.a.x, u_input.a.x)) % vec2<u32>(32u)), ~(~u_input.a.xz ^ ~vec2<u32>(21188u, u_input.a.x))), countOneBits(max(~min(0i, -21821i), global0.b)), !global0.d, select(global0.d, vec3<bool>(!func_1(vec4<i32>(-31286i, -2147483647i, global0.b, global0.b), u_input.a, Struct_2(u_input.a.yz, global0.b, vec3<bool>(global0.c.x, true, global0.c.x), vec3<bool>(global0.c.x, global0.d.x, global0.d.x)), Struct_1(global0.b)).x, !global1.x && true, true), global1.x));
    var var_0 = global0.d.x;
    var var_1 = global0.c;
    var var_2 = vec4<bool>(global1.x, all(select(select(select(vec4<bool>(var_1.x, true, true, true), vec4<bool>(false, true, var_1.x, true), true), vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(false, false, false, false)), !select(vec4<bool>(global1.x, true, global0.c.x, false), vec4<bool>(true, global0.c.x, global0.c.x, true), vec4<bool>(global0.d.x, var_1.x, global0.d.x, var_1.x)), vec4<bool>(all(var_1.xx), !global1.x, true, true))), global1.x, true);
    let var_3 = vec4<bool>(false, func_3(), true, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(59633u);
}

