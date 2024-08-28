struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = 30775u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1199f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(707f)) + _wgslsmith_f_op_f32(973f + -702f)) * _wgslsmith_f_op_f32(abs(-1098f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), -1838f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1951f, var_1.x), vec2<f32>(var_1.x, 824f), true)))))));
    let var_3 = vec3<i32>(u_input.b, -(~(~firstLeadingBit(u_input.b))), 26636i);
    return global0.c;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> u32 {
    return u_input.a.x;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    global0 = Struct_1(~vec3<u32>(~u_input.a.x, firstLeadingBit(global0.b.x), 0u), vec2<u32>(global0.c, select(select(~4294967295u, func_3(arg_0.x, Struct_2(0u, -373f), 1000f), true), global0.c, (u_input.b ^ -2147483647i) <= u_input.b)), u_input.a.x);
    var var_0 = u_input.b;
    let var_1 = u_input.b;
    let var_2 = arg_0.x && select(any(!(!vec4<bool>(false, false, arg_0.x, arg_0.x))), !all(select(vec3<bool>(arg_0.x, true, arg_0.x), arg_0.yxz, vec3<bool>(arg_0.x, arg_0.x, false))), !all(select(vec3<bool>(false, arg_0.x, arg_0.x), arg_0.yzz, arg_0.zyy)));
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, abs(-30525i)), vec2<i32>(-2147483647i, u_input.b));
    return Struct_1(firstTrailingBit(min(select(global0.a << (vec3<u32>(60923u, 0u, u_input.a.x) % vec3<u32>(32u)), global0.a, vec3<bool>(var_2, arg_0.x, true)), ~global0.a)), u_input.a, ~(~_wgslsmith_clamp_u32(~u_input.a.x, ~global0.b.x, 0u & global0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~global0.b.x << (_wgslsmith_clamp_u32(26263u, ~min(u_input.a.x, 17607u), u_input.a.x) % 32u), u_input.a.x, ~func_1(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true))), ~reverseBits(u_input.a.x));
    global0 = func_2(vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true))), !all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), select(!all(vec4<bool>(true, false, false, true)), ~644i == _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), true)));
    var var_1 = all(!(!vec4<bool>(all(vec4<bool>(true, true, true, false)), any(vec2<bool>(false, true)), true, true)));
    var var_2 = Struct_1(_wgslsmith_div_vec3_u32(global0.a, global0.a), ~vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~4294967295u), abs(u_input.a.x) ^ 1u), u_input.a.x);
    var var_3 = vec3<bool>(any(select(vec3<bool>(all(vec3<bool>(true, false, true)), true, 64242u <= var_0.x), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))), true, ~(var_2.a.x << (_wgslsmith_mod_u32(global0.a.x, var_0.x) % 32u)) > _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.c, 82028u, var_0.x, global0.c), vec4<u32>(108495u, 0u, 1u, 4294967295u)), ~vec4<u32>(36997u, 52561u, global0.b.x, 4294967295u)));
    let var_4 = _wgslsmith_sub_vec2_i32(~(-(~vec2<i32>(u_input.b, 49556i) ^ ~vec2<i32>(u_input.b, -1i))), vec2<i32>(u_input.b, ~(~11803i)) ^ reverseBits(min(vec2<i32>(1i, 0i), abs(vec2<i32>(u_input.b, 1i)))));
    var_0 = vec4<u32>(1u, func_1(vec4<bool>(false, true & var_3.x, var_3.x, !var_3.x)), ~(0u & firstTrailingBit(func_2(vec4<bool>(false, false, false, false)).a.x)), _wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(4242u, ~1u), max(_wgslsmith_sub_u32(~53893u, u_input.a.x), countOneBits(~21588u))));
    var var_5 = all(select(vec2<bool>(select(true, !var_3.x, var_2.c < global0.a.x), any(select(vec3<bool>(false, var_3.x, false), vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(var_3.x, false, false)))), vec2<bool>(true, true), select(select(var_3.x, true, false), any(vec4<bool>(true, var_3.x, var_3.x, var_3.x)), true) & (var_4.x == _wgslsmith_clamp_i32(u_input.b, var_4.x, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(~(~u_input.a.x)), 4294967295u, var_0.x, max(4294967295u, ~(22540u & global0.c))), _wgslsmith_f_op_f32(f32(-1f) * -1422f));
}

