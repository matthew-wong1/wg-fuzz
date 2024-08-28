struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1528f, -833f, 2714f);

var<private> global1: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec4<f32> {
    global1 = 21989i;
    var var_0 = Struct_2(select(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 18142u, arg_1.x)), ~arg_1), u_input.c.x, ~_wgslsmith_mult_u32(u_input.c.x, 0u)), vec4<u32>(reverseBits(u_input.c.x), 36428u, 13643u, 14995u), select(!any(vec2<bool>(false, false)), !all(vec4<bool>(true, false, false, false)), true)));
    global1 = -45446i;
    let var_1 = Struct_2(~(~vec4<u32>(55784u, 20172u, 4294967295u, var_0.a.x) << (~(vec4<u32>(4294967295u, arg_1.x, arg_1.x, u_input.c.x) >> (vec4<u32>(18803u, 1u, 0u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -1000f) * vec4<f32>(global0.x, global0.x, 1042f, global0.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, 177f, -1242f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 853f) - vec4<f32>(global0.x, global0.x, -1000f, global0.x)))))))));
}

fn func_2() -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -477f, global0.x) + vec3<f32>(-690f, global0.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(501f, 1406f, _wgslsmith_f_op_f32(select(-549f, _wgslsmith_div_f32(600f, -538f), false)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-223f, 165f, global0.x) + vec3<f32>(global0.x, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-369f, global0.x, global0.x)))))));
    global1 = 41712i;
    global1 = 0i;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(select(-655f, global0.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, -1232f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 736f) * _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(sign(global0.x)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec2_i32(u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(43972u, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, 54784u))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 369f, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1235f, 423f, -1000f, global0.x)), all(vec2<bool>(false, true))))), _wgslsmith_f_op_vec4_f32(func_3(~(-vec2<i32>(5290i, u_input.b)), vec3<u32>(u_input.c.x >> (0u % 32u), abs(4294967295u), u_input.c.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_4) -> vec4<u32> {
    global1 = 2147483647i;
    return vec4<u32>(reverseBits(arg_2.a.x ^ 0u) << (~(arg_0.a.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, u_input.c.x), vec2<u32>(u_input.c.x, 63733u))) % 32u), u_input.c.x, ~_wgslsmith_div_u32(arg_2.a.x, 1u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.a.x, abs(u_input.c.x)), u_input.c.x) >> (abs(u_input.c.x) % 32u));
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    var var_0 = select(u_input.a.x, ~reverseBits(1i), any(vec3<bool>(false, arg_0.x, any(vec3<bool>(arg_0.x, false, arg_0.x))))) << (((~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(98421u, 65796u, 51722u, u_input.c.x)) & (max(u_input.c.x, 0u) ^ abs(u_input.c.x))) ^ u_input.c.x) % 32u);
    var var_1 = Struct_4(func_4(Struct_2(vec4<u32>(u_input.c.x, 4038u ^ u_input.c.x, 14566u, _wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(u_input.c.x, 14217u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + vec4<f32>(global0.x, 759f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -559f, -1168f, global0.x) - vec4<f32>(global0.x, global0.x, 1021f, -991f)))), Struct_4(~(vec4<u32>(0u, u_input.c.x, 2402u, u_input.c.x) << (vec4<u32>(0u, u_input.c.x, 44017u, u_input.c.x) % vec4<u32>(32u))))));
    var var_2 = 6055i;
    var_2 = _wgslsmith_mod_i32(u_input.a.x << (abs(select(0u, 1u, arg_0.x)) % 32u), u_input.b) | 2147483647i;
    let var_3 = Struct_2(vec4<u32>(var_1.a.x, reverseBits(~reverseBits(var_1.a.x)), 57464u, var_1.a.x));
    return Struct_4(var_3.a);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_3 {
    global1 = _wgslsmith_div_i32(u_input.b, -3540i);
    var var_0 = _wgslsmith_f_op_f32(floor(-1026f));
    var var_1 = ~(~select(16363u, reverseBits(4294967295u), all(vec3<bool>(false, true, arg_0.x))));
    global1 = firstLeadingBit(u_input.a.x);
    return Struct_3(Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(12807u, 0u, 15107u, arg_1.a.x) ^ ~arg_1.a, arg_1.a)), Struct_2(vec4<u32>(~arg_1.a.x & u_input.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 27970u, 4294967295u), arg_1.a.xzx), u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, ~arg_1.a.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(100525u), countOneBits(min(u_input.c.x, 3300u))), arg_1.a.yw), Struct_2(arg_1.a & select(arg_1.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.a, arg_1.a), global0.x < global0.x)), vec3<i32>(-61398i, -5318i, ~_wgslsmith_add_i32(8386i, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(131f + 692f)), -896f))));
    let var_0 = func_5(vec2<bool>(_wgslsmith_dot_vec3_u32(u_input.c, ~u_input.c) == ~(~0u), false), func_1(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), all(vec3<bool>(true, true, true)))));
    var var_1 = 0u << (reverseBits(0u) % 32u);
    let var_2 = vec4<f32>(global0.x, 483f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 1184f);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), -426f, _wgslsmith_div_f32(-1401f, -307f));
    var var_3 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-819f - _wgslsmith_f_op_f32(step(global0.x, -669f))) >= 260f, true), 109f);
    var_1 = _wgslsmith_div_u32(u_input.c.x, _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(0u, countOneBits(var_0.b.a.x)), abs(var_0.a.a.x | 0u) ^ var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1023f, 16024u & u_input.c.x, 4294967295u, -29640i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.xz * vec2<f32>(-516f, var_2.x)))) * var_2.xx))));
}

