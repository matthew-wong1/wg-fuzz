struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -494f), _wgslsmith_f_op_f32(-892f * arg_1.x)))));
    var var_1 = reverseBits(arg_2.b.xy);
    var var_2 = arg_2;
    var_0 = arg_1.x;
    global0 = arg_2.a.x;
    return var_2.a.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = ~(~(arg_0.b.x | abs(_wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(66974u, arg_0.b.x, 4294967295u)))));
    global1 = Struct_3(any(vec2<bool>(false, true)));
    let var_1 = Struct_2(-abs(arg_0.a), vec3<u32>(~1u, 1u, arg_0.b.x << (~1u % 32u)), !arg_0.c);
    global0 = abs(countOneBits(~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, arg_0.a.x), arg_0.a)));
    global1 = Struct_3(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 790f))) > 648f);
    return 4294967295u;
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = -(~(~u_input.a));
    var var_1 = _wgslsmith_clamp_u32(~(~(~func_3(arg_3, arg_0.a, vec4<bool>(false, false, global1.a, true)))), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b.x, arg_3.b.x), select(arg_3.b.yx, vec2<u32>(arg_3.b.x, 10257u), arg_3.c.yy)) ^ _wgslsmith_div_u32(func_3(Struct_2(vec2<i32>(arg_0.b.b.x, arg_2.x), arg_3.b, arg_3.c), vec2<f32>(arg_0.c.x, -994f), vec4<bool>(false, global1.a, global1.a, false)), arg_3.b.x)), arg_3.b.x);
    var var_2 = true;
    var_1 = arg_3.b.x;
    var var_3 = arg_3;
    return var_3.c.ywy;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<i32>) -> vec4<f32> {
    global1 = Struct_3(true);
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(805f + arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1673f)), _wgslsmith_f_op_f32(step(1750f, -1240f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)) + _wgslsmith_f_op_f32(step(arg_1, 744f))) - _wgslsmith_f_op_f32(-376f * _wgslsmith_f_op_f32(select(2121f, arg_1, false)))), arg_1), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)), arg_1), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 264f, arg_1, 513f) * vec4<f32>(arg_1, 1676f, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-586f, arg_1, arg_1, arg_1))))))));
    var var_1 = Struct_4(var_0.zw, Struct_1(arg_3.x, (vec4<i32>(arg_0.x, 1i, 0i, 2147483647i) & reverseBits(vec4<i32>(-47426i, -3870i, u_input.b, arg_0.x))) & -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 59728i, arg_0.x, arg_3.x), vec4<i32>(arg_3.x, 0i, -19985i, -2147483647i), vec4<i32>(6979i, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-var_0));
    var var_2 = ~abs(arg_0.x);
    var_2 = ~arg_3.x;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) + 373f), _wgslsmith_div_f32(var_1.a.x, arg_1))), 1113f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-592f, arg_1) - _wgslsmith_f_op_f32(select(-271f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(726f - arg_1))), global1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(478f, -1000f)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-881f)), _wgslsmith_div_f32(1035f, 934f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1920f, -469f), vec2<f32>(-371f, 2368f), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1223f, 947f))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1783f - 1245f), _wgslsmith_f_op_f32(f32(-1f) * -1122f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, -1376f)))));
    let var_1 = Struct_4(var_0, Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(firstLeadingBit(vec2<i32>(-38566i, 1i))), vec2<i32>(-1i, 1i)), vec4<i32>(33293i, func_1(select(vec2<bool>(global1.a, false), vec2<bool>(true, global1.a), true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, 587f))), Struct_2(vec2<i32>(-1i, 1i), vec3<u32>(1u, 0u, 4294967295u), vec4<bool>(global1.a, true, true, global1.a))), u_input.b, -u_input.a << (~42905u % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -33817i, 2147483647i), vec3<i32>(u_input.b, 1i, u_input.b)), firstLeadingBit(vec3<i32>(-10439i, 49906i, -1i))), _wgslsmith_f_op_f32(floor(-143f)), select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(88678u, 4294967295u, 4294967295u), func_2(Struct_4(var_0, Struct_1(u_input.b, vec4<i32>(u_input.b, 2147483647i, u_input.b, -40278i)), vec4<f32>(-1990f, -177f, -2055f, 1000f)), u_input.a, vec3<i32>(-23026i, u_input.a, 0i), Struct_2(vec2<i32>(u_input.b, -76534i), vec3<u32>(15749u, 0u, 33080u), vec4<bool>(global1.a, true, global1.a, false)))), vec3<i32>(-1i) * -vec3<i32>(u_input.b, 1547i, u_input.b)))));
    global1 = Struct_3(func_2(var_1, reverseBits(1i), firstLeadingBit(var_1.b.b.wwz), Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), abs(var_1.b.b.yx)), vec3<u32>(1u, _wgslsmith_mod_u32(4294967295u, 4294967295u), 0u), vec4<bool>(global1.a, any(vec3<bool>(false, false, false)), true, global1.a))).x);
    var var_2 = 1i;
    var_2 = firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_div_i32(~u_input.b, (-2147483647i & var_1.b.b.x) & abs(var_1.b.a)), (u_input.a & -1i) | 1i));
    var var_3 = vec4<u32>(~(~(abs(18721u) << (0u % 32u))), 70349u, 0u, firstLeadingBit(1u));
    global0 = -22293i;
    let var_4 = abs(vec3<u32>(countOneBits(~(58577u >> (var_3.x % 32u))), ~var_3.x, _wgslsmith_sub_u32(var_3.x, 48760u)));
    let var_5 = Struct_2(~var_1.b.b.yw, ~(~vec3<u32>(abs(var_3.x), ~4294967295u, max(91200u, var_4.x))), select(!vec4<bool>(!global1.a, false, global1.a || global1.a, false), select(select(vec4<bool>(false, true, false, global1.a), vec4<bool>(true, global1.a, global1.a, global1.a), func_2(Struct_4(vec2<f32>(-741f, -904f), Struct_1(-2147483647i, vec4<i32>(var_1.b.b.x, var_1.b.b.x, var_1.b.b.x, -1i)), vec4<f32>(885f, var_0.x, -1000f, var_1.c.x)), -36818i, var_1.b.b.wxy, Struct_2(var_1.b.b.ww, vec3<u32>(42939u, var_3.x, 4294967295u), vec4<bool>(false, global1.a, global1.a, global1.a))).x), vec4<bool>(false, any(vec3<bool>(true, global1.a, global1.a)), any(vec2<bool>(global1.a, global1.a)), true), -59683i <= u_input.b), !select(select(vec4<bool>(global1.a, true, global1.a, true), vec4<bool>(true, false, global1.a, global1.a), false), select(vec4<bool>(false, false, false, global1.a), vec4<bool>(global1.a, global1.a, global1.a, global1.a), vec4<bool>(global1.a, global1.a, false, false)), select(vec4<bool>(true, global1.a, true, false), vec4<bool>(true, global1.a, global1.a, global1.a), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_3.x, 39270u), _wgslsmith_mult_u32(var_3.x, var_3.x), abs(var_3.x)), _wgslsmith_div_vec3_u32(abs(var_4), vec3<u32>(var_4.x, var_5.b.x, 45141u) ^ vec3<u32>(var_3.x, 32475u, 1u))) & var_4);
}

