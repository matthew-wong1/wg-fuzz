struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: bool, arg_3: bool) -> u32 {
    var var_0 = Struct_4(1u);
    let var_1 = Struct_3(vec3<u32>(56642u, 32432u, select(var_0.a, 1u, arg_2)));
    var var_2 = u_input.b;
    let var_3 = Struct_5(u_input.c, Struct_4(11624u));
    var var_4 = -select(0i, -2147483647i, !(true & !arg_2));
    return ~59949u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = 315f;
    var_0 = -641f;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1695f) * _wgslsmith_f_op_f32(select(-462f, 1157f, true))))))));
    let var_2 = vec4<bool>(all(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), true, true, !any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)))));
    var var_3 = _wgslsmith_add_vec2_i32(select(arg_1.xx, ~(-abs(arg_1.zz)), !select(!var_2.xw, var_2.yy, var_2.x && true)), vec2<i32>(-u_input.b, ((i32(-1i) * -76513i) ^ u_input.b) & -42072i));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, u_input.c), vec2<u32>(~u_input.c >> (1u % 32u), func_3(~(vec3<u32>(u_input.c, u_input.a, u_input.a) << (vec3<u32>(1061u, 43992u, 23724u) % vec3<u32>(32u))), Struct_5(1u, Struct_4(u_input.a)), var_2.x, any(vec4<bool>(true, var_2.x, var_2.x, false)))));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<u32>) -> u32 {
    var var_0 = true;
    var var_1 = select(vec3<u32>(4294967295u, countOneBits(1u) ^ arg_1.x, arg_0.a), vec3<u32>(_wgslsmith_sub_u32(select(arg_1.x, arg_1.x, true), arg_0.a), ~(1u >> (arg_0.b.a % 32u)), 0u) & vec3<u32>(0u << (arg_0.b.a % 32u), func_2(vec3<i32>(5342i, -2147483647i, u_input.b), ~vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), arg_0.a), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true != all(vec3<bool>(false, true, true))), !any(vec4<bool>(false, false, false, false))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1535f)), 1000f)))));
    var_0 = !(!((var_2 < -2457f) == !any(vec3<bool>(true, false, false))));
    var_0 = true;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~5533u;
    var_0 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.a, u_input.a))) ^ 1u, _wgslsmith_clamp_u32(u_input.a, func_1(Struct_5(u_input.c, Struct_4(u_input.a)), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) | vec4<u32>(0u, u_input.c, 0u, 70338u)), ~countOneBits(0u)));
    let var_1 = !(select(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false)), !select(true, false, true), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true))) && (~_wgslsmith_mod_u32(u_input.a, 4294967295u) > ~(37144u >> (u_input.a % 32u))));
    let var_2 = Struct_3(~(~(~vec3<u32>(u_input.a, u_input.a, u_input.c))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1228f), _wgslsmith_f_op_f32(abs(-684f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1138f), -1412f)) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-432f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(656f, 591f))), _wgslsmith_f_op_f32(-834f - _wgslsmith_f_op_f32(f32(-1f) * -949f))));
    let x = u_input.a;
    s_output = StorageBuffer(24992u, select(vec3<u32>(u_input.a, _wgslsmith_mult_u32(func_3(var_2.a, Struct_5(12387u, Struct_4(0u)), var_1, false), 1u), _wgslsmith_dot_vec2_u32(var_2.a.yy, ~var_2.a.yx)), var_2.a, vec3<bool>(_wgslsmith_div_u32(87007u, u_input.a) > _wgslsmith_div_u32(4294967295u, var_2.a.x), var_1, true)), countOneBits(abs(abs(~var_2.a))));
}

