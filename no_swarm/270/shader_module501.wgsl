struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -3056f)) - _wgslsmith_f_op_f32(abs(1882f))));
    var var_1 = 995f;
    let var_2 = Struct_2(Struct_1(any(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, !arg_1.a.x)), _wgslsmith_div_i32(-4315i, arg_1.b)), Struct_1(all(select(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), !vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), select(vec4<bool>(false, false, arg_1.a.x, false), vec4<bool>(false, false, true, arg_1.a.x), vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x)))), ~1i));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-419f, 1121f, 737f, -262f) * vec4<f32>(-1042f, -127f, -898f, 1748f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(427f, 619f, -406f, -955f))))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1169f, -302f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-827f, 726f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1837f)))))));
    var var_4 = Struct_5(u_input.d.x, u_input.d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(563f + var_3.x), -445f))), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.x, var_3.x)))))));
    return !(!vec4<bool>(false, !(false == arg_1.a.x), arg_1.a.x, !select(arg_1.a.x, var_2.b.a, var_2.b.a)));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<bool>) -> Struct_5 {
    var var_0 = vec4<bool>(-24499i == _wgslsmith_sub_i32(_wgslsmith_mod_i32(i32(-1i) * -1i, 679i), arg_1.x), arg_2.x == arg_2.x, any(!(!arg_2)), all(vec3<bool>(!(!arg_2.x), arg_2.x, true)));
    var_0 = !(!(!(!(!vec4<bool>(false, false, false, var_0.x)))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1756f), _wgslsmith_f_op_f32(floor(-1644f)), 347f) * vec3<f32>(2033f, _wgslsmith_div_f32(-1727f, 299f), -914f))), abs(u_input.d.x));
    var_0 = !select(select(!func_3(0u, Struct_4(vec2<bool>(var_0.x, var_0.x), u_input.b.x)), func_3(~1u, Struct_4(var_0.xx, 0i)), !arg_0), !vec4<bool>(0i > u_input.a.x, !arg_2.x, true, !var_0.x), !func_3(7900u, Struct_4(var_0.yy, u_input.c.x)));
    var_0 = !select(select(!(!vec4<bool>(var_0.x, false, arg_0, false)), vec4<bool>(arg_2.x, true && arg_2.x, true, !arg_0), select(vec4<bool>(arg_0, true, false, true), select(vec4<bool>(true, arg_2.x, true, false), vec4<bool>(true, true, arg_2.x, true), arg_2.x), true)), select(vec4<bool>(var_0.x, select(false, var_0.x, arg_0), arg_0, true), !select(vec4<bool>(var_0.x, true, arg_2.x, true), vec4<bool>(true, false, true, true), false), !select(true, var_0.x, false)), false);
    return Struct_5(u_input.d.x, _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b, var_1.b), u_input.d), countOneBits(u_input.d)), var_1.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: i32, arg_3: u32) -> u32 {
    let var_0 = func_2(true, vec3<i32>(_wgslsmith_div_i32(1i, -2147483647i), select(-3332i, -49284i, true), min(1i, -1i)), vec3<bool>(true, true, true));
    let var_1 = true;
    var var_2 = (30327i & arg_2) ^ u_input.c.x;
    var_2 = firstLeadingBit(u_input.c.x);
    let var_3 = func_2(true, (u_input.c >> ((~vec3<u32>(28812u, 1u, arg_0.x) | min(vec3<u32>(arg_0.x, 1u, arg_0.x), arg_0.wzw)) % vec3<u32>(32u))) << (~arg_0.yzx % vec3<u32>(32u)), !(!vec3<bool>(var_1 | var_1, all(vec3<bool>(var_1, true, false)), select(var_1, var_1, true))));
    return _wgslsmith_dot_vec4_u32(arg_0, _wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_0.x, arg_0.x, 18873u, 1u)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, ~u_input.d.x != (_wgslsmith_add_u32(func_1(vec4<u32>(u_input.d.x, u_input.d.x, 271u, u_input.d.x), vec2<f32>(833f, -212f), 2147483647i, u_input.d.x), 1u) & u_input.d.x));
    let var_1 = !var_0.x;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1316f, 1000f, 657f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1625f, 1370f, -1179f) + vec3<f32>(357f, -267f, -958f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-970f + 488f), 693f, -636f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1420f, -178f, -1522f))))), _wgslsmith_clamp_u32(5562u, func_1(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, 50233u, u_input.d.x), abs(vec4<u32>(4294967295u, 1u, u_input.d.x, 64890u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(696f, -667f), vec2<f32>(-1042f, 1000f), var_1))), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 73543i), u_input.b.zz), func_1(~vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2233f, 1041f), vec2<f32>(534f, 154f), vec2<bool>(var_0.x, var_0.x))), u_input.c.x, ~u_input.d.x)), abs(0u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_f32(-var_2.a.x));
}

