struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = -1000f;

var<private> global2: vec3<i32> = vec3<i32>(-49967i, 1i, 46959i);

var<private> global3: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    return arg_1.a.x;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = true & any(select(vec3<bool>(true, true, true), !vec3<bool>(arg_2.x, true, true), vec3<bool>(true, true, select(true, arg_2.x, true))));
    var var_1 = vec3<bool>(arg_2.x != arg_2.x, arg_2.x, select(true, any(!vec3<bool>(false, arg_0, arg_0)), arg_0) || any(select(select(vec2<bool>(false, false), vec2<bool>(false, arg_0), true), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), arg_0), select(vec2<bool>(arg_0, true), arg_2, arg_0))));
    var_1 = select(!(!(!vec3<bool>(false, arg_2.x, false))), vec3<bool>(false, arg_2.x, arg_1.x != -1144f), !any(var_1.yz));
    var var_2 = min(vec3<u32>(abs(min(63428u, _wgslsmith_mod_u32(0u, 30919u))), ~(~2930u) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(59353u, 36077u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)) % 32u), 4294967295u), ~vec3<u32>(1u, ~(~1u), 81269u));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x * arg_1.x)))) * 462f)));
    return ~select(var_2.zx, min(var_2.xx, vec2<u32>(~var_2.x, ~2844u)), !all(vec2<bool>(true, true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_2(!vec4<bool>(!arg_3.x, all(arg_3), true, true), ~func_3(!(arg_0.x < 4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_1))), arg_3), arg_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1744f, arg_1, arg_2) * vec3<f32>(-514f, arg_2, arg_2)))));
    var var_1 = !(-u_input.a < global2.x);
    let var_2 = -1000f;
    global0 = 43635i;
    var_0 = Struct_2(select(vec4<bool>(!any(var_0.a.zy), !var_0.a.x, true, false), vec4<bool>(all(var_0.a.yxx), !var_0.c.x, true, arg_3.x), !vec4<bool>(false, arg_3.x, true, false)), var_0.b, select(!arg_3, arg_3, false), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.d))));
    return _wgslsmith_f_op_f32(round(var_0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0i;
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(0u, 24941u, 0u, 23728u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, _wgslsmith_sub_u32(37830u, 9216u), 1u, ~77299u)) >> (vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), abs(vec2<u32>(55289u, 4294967295u))), _wgslsmith_add_u32(1u, func_1(Struct_1(vec4<u32>(1818u, 4294967295u, 34889u, 1u), true, vec3<f32>(442f, 719f, -198f), vec3<bool>(false, true, false), vec4<u32>(33593u, 1u, 18360u, 4294967295u)), Struct_3(vec4<u32>(0u, 4294967295u, 0u, 4294967295u)))), 76792u) % vec4<u32>(32u)), !any(vec3<bool>(any(vec2<bool>(false, false)), true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-739f, -1000f, 632f)))))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), -1543f, 557f, vec2<bool>(false, true))), _wgslsmith_f_op_f32(floor(-410f)), _wgslsmith_f_op_f32(f32(-1f) * -2623f))))), vec3<bool>(true, true, true), vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = reverseBits(~abs(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, global2.x, -29264i), vec3<i32>(-56443i, u_input.a, u_input.a)), max(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(-31304i, -89046i, global2.x)))));
    global0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, -7177i, u_input.a), 44014i);
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.zy + vec2<f32>(-341f, 1000f)) - _wgslsmith_f_op_vec2_f32(-var_2.c.yz)));
    var var_4 = var_2.d;
    var_4 = !select(select(!select(var_0.d, var_2.d, var_4.x), !(!vec3<bool>(var_0.b, var_0.d.x, true)), select(var_0.d, vec3<bool>(var_4.x, true, false), select(vec3<bool>(var_0.b, var_4.x, false), var_2.d, false))), var_0.d, var_2.d);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(778f, _wgslsmith_f_op_f32(-1192f + 324f), true))))), 586f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-868f, 682f, var_2.c.x, var_2.c.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(462f, 567f, 1151f, 1403f) - vec4<f32>(-928f, 1798f, var_2.c.x, var_3.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_0.c.x, -232f, var_3.x) + vec4<f32>(398f, var_3.x, -225f, var_2.c.x))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, var_2.c.x)) + var_0.c.x), -666f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), var_3.x)));
}

