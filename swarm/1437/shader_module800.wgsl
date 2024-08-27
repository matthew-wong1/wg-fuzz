struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> vec3<bool> {
    let var_0 = reverseBits(4294967295u);
    let var_1 = !vec4<bool>(true, !arg_1.b.b.x, any(select(!vec4<bool>(arg_2.a, arg_2.a, true, false), vec4<bool>(false, false, arg_0.e, arg_0.b.x), vec4<bool>(true, false, arg_1.c.b.x, true))), arg_1.c.b.x);
    var var_2 = Struct_2(18861u, arg_1.b, arg_1.b, vec4<u32>(~(~(~4294967295u)), 34644u, arg_1.a, arg_1.b.a), u_input.b.x);
    let var_3 = ~firstLeadingBit(max(_wgslsmith_div_vec4_i32(u_input.b, u_input.b << (vec4<u32>(1u, arg_1.a, 4294967295u, arg_0.a) % vec4<u32>(32u))), u_input.b));
    let var_4 = firstLeadingBit(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.a, var_2.b.a, 4294967295u), ~vec3<u32>(16312u, 0u, u_input.a)), _wgslsmith_div_u32(arg_0.a, var_2.c.a)));
    return var_1.xwy;
}

fn func_2(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = ~vec2<i32>(max(~u_input.b.x, 17347i), -4906i);
    let var_1 = false;
    var var_2 = arg_0.a;
    return !(!select(var_2.c.b, select(func_3(Struct_1(arg_0.a.d.x, vec3<bool>(var_1, var_2.c.e, arg_0.a.b.b.x), var_2.c.c, arg_0.a.b.c.x, var_1), arg_0.a, Struct_4(var_2.c.b.x, vec3<i32>(2147483647i, var_2.e, arg_0.a.e))), func_3(Struct_1(13980u, arg_0.a.c.b, var_2.b.c, var_2.b.d, true), arg_0.a, Struct_4(false, u_input.b.xyw)), var_2.a == 1u), arg_0.a.b.b));
}

fn func_1() -> Struct_1 {
    let var_0 = 7460u;
    var var_1 = Struct_1(var_0, select(vec3<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)), true, true), select(vec3<bool>(true, false, true), select(func_2(Struct_3(Struct_2(4294967295u, Struct_1(u_input.a, vec3<bool>(false, true, true), vec2<f32>(1376f, 2112f), -666f, true), Struct_1(3106u, vec3<bool>(false, false, false), vec2<f32>(-1288f, -493f), -308f, false), vec4<u32>(1u, 1u, 4294967295u, 1u), u_input.b.x))), vec3<bool>(true, false, false), all(vec2<bool>(true, true))), true), (_wgslsmith_add_i32(u_input.c, 43942i) & (u_input.c | u_input.c)) >= u_input.b.x), vec2<f32>(1f, 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-527f * 1076f) + _wgslsmith_f_op_f32(ceil(-1099f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-745f * _wgslsmith_f_op_f32(-496f + -518f)), -1695f))), _wgslsmith_sub_u32(reverseBits(var_0) & 1u, 9506u) > ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 74765u, 1u), vec4<u32>(var_0, 4294967295u, var_0, var_0)));
    var var_2 = Struct_1(min(select(2251u, ~(~27723u), !var_1.e), 1u), vec3<bool>(!(!all(vec4<bool>(var_1.b.x, true, false, var_1.e))), var_1.e, !var_1.b.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c * vec2<f32>(var_1.d, 1017f)))), _wgslsmith_f_op_vec2_f32(-var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)) * _wgslsmith_f_op_f32(step(-1528f, _wgslsmith_f_op_f32(trunc(-1936f))))), !(func_2(Struct_3(Struct_2(4294967295u, Struct_1(var_1.a, vec3<bool>(false, var_1.e, var_1.e), var_1.c, var_1.d, false), Struct_1(var_1.a, vec3<bool>(false, var_1.e, var_1.e), vec2<f32>(var_1.d, -1325f), -1347f, var_1.e), vec4<u32>(var_1.a, 4294967295u, 37140u, u_input.a), u_input.c))).x & (any(var_1.b.yz) && all(var_1.b))));
    let var_3 = u_input.a;
    var_1 = Struct_1(_wgslsmith_clamp_u32(29943u, ~(~(~37813u)), _wgslsmith_div_u32(~(103951u | var_2.a), 4294967295u)), var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2196f, var_2.d), vec2<f32>(var_2.c.x, var_1.c.x), true)), var_2.c))))), -1000f, all(var_1.b));
    return Struct_1(587u, vec3<bool>((false || var_2.b.x) | (var_2.b.x | !var_2.b.x), false, true), vec2<f32>(var_2.d, _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_div_f32(-1732f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-817f))))), _wgslsmith_f_op_f32(var_2.d - -1014f) == _wgslsmith_f_op_f32(590f + -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(24636u);
    let var_1 = func_1();
    let var_2 = vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-483f + var_1.c.x))))), var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-906f + _wgslsmith_f_op_f32(-544f + var_1.d)) * var_1.d));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-282f, 817f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(383f))))))));
    let var_5 = Struct_2(var_1.a, Struct_1(24508u, vec3<bool>(var_1.b.x, true, true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, -940f) * var_2.wy)))), _wgslsmith_f_op_f32(-888f * var_2.x), all(select(!vec4<bool>(var_1.b.x, var_1.e, var_1.b.x, false), !vec4<bool>(var_1.e, false, var_1.e, true), var_3 || var_1.b.x))), Struct_1(var_0, vec3<bool>(!(u_input.a >= var_0), true, var_1.e), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_2.x, var_4.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.d, var_2.x)) * -495f)), var_4.x, !(-1i < ~u_input.b.x)), abs(reverseBits(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_0, u_input.a, var_1.a), vec4<u32>(7462u, 0u, 4294967295u, var_0)))), u_input.b.x);
    let var_6 = _wgslsmith_dot_vec3_i32(~(-u_input.b.xyy), abs(max(_wgslsmith_div_vec3_i32(abs(u_input.b.wyw), vec3<i32>(u_input.b.x, 0i, 20115i)), vec3<i32>(u_input.b.x >> (u_input.a % 32u), _wgslsmith_mult_i32(-21093i, -1i), 32645i))));
    let var_7 = Struct_3(var_5);
    var var_8 = _wgslsmith_div_vec3_u32(~select(vec3<u32>(4294967295u, ~u_input.a, 1607u), select(~vec3<u32>(38431u, 0u, u_input.a), ~vec3<u32>(4725u, 0u, var_7.a.d.x), vec3<bool>(false, true, var_1.b.x)), true), _wgslsmith_div_vec3_u32(min(~var_5.d.wyy, abs(var_7.a.d.zzy)) << (vec3<u32>(17163u, 89687u, _wgslsmith_sub_u32(var_5.d.x, var_7.a.b.a)) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(~var_1.a), u_input.a | abs(u_input.a), _wgslsmith_sub_u32(select(var_7.a.d.x, var_5.d.x, var_3), 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_7.a.c.c.x)), u_input.b.zxw << (~(~var_5.d.ywx) % vec3<u32>(32u)));
}

