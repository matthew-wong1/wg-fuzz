struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = select(arg_0.e.b.x && true, !arg_0.e.b.x, true);
    var var_1 = arg_0.e.c;
    let var_2 = arg_0.d.a;
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d.a, 0i), vec2<i32>(u_input.b, u_input.b))), ~var_2, abs(abs(arg_0.e.a))), vec3<i32>(~(-1i), _wgslsmith_div_i32(~_wgslsmith_div_i32(0i, -1i), max(~23161i, i32(-1i) * -1i)), firstTrailingBit(-_wgslsmith_sub_i32(arg_0.d.c, 2147483647i))));
    let var_3 = 0i;
    return 0u;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f))), 732f, true)));
    let var_0 = Struct_2(vec4<u32>(_wgslsmith_sub_u32(func_3(Struct_2(u_input.c, vec3<bool>(arg_0.x, false, true), 13037u, Struct_1(u_input.b, vec4<bool>(arg_0.x, false, true, arg_0.x), u_input.b), Struct_1(1i, vec4<bool>(arg_0.x, true, arg_0.x, true), 0i))), _wgslsmith_mult_u32(1u, 4294967295u)), min(4294967295u, 46871u) ^ u_input.a, ~u_input.c.x << (1u % 32u), ~0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, u_input.c.x), u_input.c)) | ~vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(u_input.c.zyx, vec3<u32>(0u, u_input.a, 4294967295u)), u_input.d ^ 14769u, 1u), select(select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), true), !(!vec3<bool>(arg_0.x, arg_0.x, true)), any(vec3<bool>(true, true, true))), select(!vec3<bool>(arg_0.x, arg_0.x, true), select(select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, false)), vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), false)), vec3<bool>(true, !arg_0.x, all(vec2<bool>(false, arg_0.x)))), select(true, true, true)), 27225u, Struct_1(u_input.b, !vec4<bool>(true, arg_0.x, all(vec4<bool>(true, arg_0.x, true, false)), true == arg_0.x), 8347i), Struct_1(_wgslsmith_div_i32(1i, u_input.b), select(!(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), !select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, true, false, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), any(vec3<bool>(true, true, true))), -1i));
    return _wgslsmith_f_op_f32(590f * 1058f);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -114f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec2<bool>(true, false && arg_0.b.x), !arg_0.b.xx, select(vec2<bool>(true, true), arg_0.b.zx, select(false, arg_0.b.x, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b, vec4<bool>(false, false, false, false), u_input.b), _wgslsmith_sub_vec2_u32(u_input.c.zx, u_input.c.xx), vec4<i32>(u_input.b, 5935i, 15070i, u_input.b), vec2<u32>(u_input.d, 18632u))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(283f + -102f))), _wgslsmith_f_op_f32(567f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-812f * 1771f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1642f - -2296f) + _wgslsmith_f_op_f32(f32(-1f) * -1094f)))));
    global0 = _wgslsmith_f_op_f32(104f * -775f);
    let var_0 = select(!any(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(all(vec3<bool>(false, true, true)), true, true | any(vec3<bool>(false, true, true)))));
    let var_1 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~u_input.c.xzy, _wgslsmith_sub_vec3_u32(u_input.c.xzy, u_input.c.xyy)), ~u_input.c.x), u_input.c.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 0u, 1u), u_input.c)), ~firstLeadingBit(0u)), !(!vec3<bool>(var_0, false, true)), 31948u, Struct_1(0i, select(select(!vec4<bool>(true, var_0, true, true), vec4<bool>(false, false, var_0, false), !vec4<bool>(false, var_0, var_0, var_0)), select(!vec4<bool>(false, var_0, var_0, var_0), !vec4<bool>(true, var_0, var_0, true), !vec4<bool>(false, var_0, true, var_0)), !vec4<bool>(false, var_0, var_0, var_0)), firstTrailingBit(firstLeadingBit(-61273i) >> (u_input.a % 32u))), Struct_1(~u_input.b, select(vec4<bool>(var_0, var_0, all(vec2<bool>(true, var_0)), var_0), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(var_0, var_0)), !var_0, all(vec4<bool>(false, var_0, true, var_0)), select(false, var_0, false))), max(u_input.b, 1i)));
    let var_2 = u_input.b;
    var var_3 = -1175f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(~vec2<i32>(var_1.d.a, -var_2), vec2<i32>(_wgslsmith_clamp_i32(min(var_2, var_1.d.a), abs(21949i), u_input.b | var_2), max(u_input.b, u_input.b | -1i))), _wgslsmith_clamp_vec2_u32(~u_input.c.yz, u_input.c.xw, u_input.c.yy), _wgslsmith_div_f32(621f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1017f, -314f))), _wgslsmith_f_op_f32(func_2(var_1.b.xz)))), var_1.a.wwx);
}

