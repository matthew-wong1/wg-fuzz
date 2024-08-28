struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = ~(-6640i);
    global0 = all(!vec4<bool>(true, any(vec2<bool>(true, true)), true, false));
    global0 = all(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), vec2<bool>(false, true), true));
    var var_1 = 0i;
    var_1 = 10716i;
    return u_input.d;
}

fn func_2() -> u32 {
    var var_0 = -countOneBits(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.c, 2147483647i), vec3<i32>(-2147483647i, u_input.c, -10379i)))) << (vec3<u32>(abs(max(0u, u_input.d)) >> (func_3() % 32u), _wgslsmith_mult_u32(u_input.b.x, 0u), 1u | ~u_input.d) % vec3<u32>(32u));
    var var_1 = Struct_1(true);
    var_0 = countOneBits(_wgslsmith_add_vec3_i32(~(~max(u_input.a, vec3<i32>(u_input.c, var_0.x, var_0.x))), max(vec3<i32>(abs(0i), ~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.a.x, 1i), u_input.a)), vec3<i32>(var_0.x, 1i, max(-1i, -68315i)))));
    var var_2 = u_input.a.x;
    return 93242u;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~(u_input.b.xx ^ u_input.b.zy), vec2<u32>(u_input.b.x, func_2())) >= u_input.b.x);
    global0 = all(arg_0.wwy);
    var var_1 = _wgslsmith_div_i32(~1i, u_input.a.x);
    let var_2 = Struct_1(!(arg_2.x == -121f));
    global0 = all(arg_0);
    return var_2;
}

fn func_4(arg_0: Struct_1) -> u32 {
    global0 = arg_0.a;
    global0 = all(select(vec4<bool>(any(select(vec4<bool>(true, arg_0.a, arg_0.a, true), vec4<bool>(true, arg_0.a, false, arg_0.a), vec4<bool>(false, true, arg_0.a, true))), !arg_0.a, arg_0.a, false && !arg_0.a), vec4<bool>(!(u_input.a.x != -1i), !(u_input.a.x < -37421i), all(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true)), arg_0.a), vec4<bool>(true, arg_0.a, arg_0.a, true)));
    var var_0 = 701f;
    var_0 = _wgslsmith_f_op_f32(ceil(-390f));
    var var_1 = func_1(!(!vec4<bool>(arg_0.a & arg_0.a, arg_0.a || true, arg_0.a, true)), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2182f, 921f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(228f, 220f) + vec2<f32>(-407f, 1909f))))), vec2<f32>(_wgslsmith_f_op_f32(round(825f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f - -817f)))));
    return 14947u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2544f;
    var_0 = 1000f;
    var var_1 = reverseBits(u_input.b.x);
    let var_2 = !(any(vec3<bool>(true, true, true)) && false);
    let var_3 = _wgslsmith_sub_u32(func_4(func_1(vec4<bool>(false, true, false, all(vec3<bool>(var_2, var_2, var_2))), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(1895f, -1000f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1792f, 1000f) - vec2<f32>(-1912f, -253f))))), 4294967295u);
    let var_4 = func_1(select(!vec4<bool>(true, true, var_2, true), vec4<bool>(all(vec2<bool>(var_2, var_2)), !any(vec3<bool>(true, true, var_2)), all(select(vec4<bool>(var_2, true, true, false), vec4<bool>(true, true, var_2, var_2), var_2)), true), true), !any(!(!vec4<bool>(var_2, false, var_2, var_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-408f, -335f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-u_input.a.zx), countOneBits(_wgslsmith_div_u32(~var_3, _wgslsmith_div_u32(~u_input.d, abs(44045u)))));
}

