struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    global0 = reverseBits(18077u);
    var var_0 = _wgslsmith_f_op_f32(trunc(-387f));
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-922f, 2291f, 1000f, 101f), vec4<f32>(-2284f, -190f, -686f, -275f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, -1071f, 821f, -1000f) * vec4<f32>(500f, -1000f, -331f, -1245f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(389f, -1000f, -1891f, -846f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2133f, 507f, -1759f, -190f))))))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(35342u, arg_2.b, ~arg_2.b, arg_0.b), abs(vec4<u32>(~4294967295u, abs(var_1.b), reverseBits(u_input.c.x), var_1.b) >> (~(~vec4<u32>(4294967295u, 69314u, 1u, arg_0.b)) % vec4<u32>(32u))));
}

fn func_2() -> vec2<u32> {
    global0 = ~func_3(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), 106376u), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.d.x, -2147483647i) >> (vec3<u32>(53670u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), select(u_input.d, u_input.d, vec3<bool>(true, true, false))), ~firstLeadingBit(u_input.b)), Struct_1(vec3<bool>(true, any(vec3<bool>(false, true, false)), 72319u < u_input.c.x), u_input.c.x << (~u_input.c.x % 32u)));
    var var_0 = u_input.c.x;
    var var_1 = Struct_1(vec3<bool>(true, true, true), abs(47562u));
    var_0 = u_input.c.x;
    var_0 = var_1.b;
    return u_input.c.zz;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u)), 4294967295u)), u_input.c.x);
    global0 = u_input.c.x;
    let var_0 = func_2();
    let var_1 = Struct_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true), vec3<bool>(true, false, true)), 0u);
    var var_2 = ~reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(u_input.c), vec3<u32>(0u, 32570u, 1u)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, var_0.x), vec3<u32>(28636u, 4294967295u, var_0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, u_input.c.x, 4294967295u), vec3<u32>(78929u, var_1.b, u_input.c.x)))));
    return Struct_1(!var_1.a, 1u);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_3.b;
    let var_0 = func_1();
    global0 = arg_2.b;
    global0 = arg_0;
    var var_1 = _wgslsmith_dot_vec3_i32(min(vec3<i32>(_wgslsmith_clamp_i32(-1i, ~(-10548i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(4214i, 2231i, 25824i))), ~(-62273i), _wgslsmith_dot_vec3_i32(select(u_input.d, vec3<i32>(u_input.a, u_input.a, 1i), vec3<bool>(arg_3.a.x, arg_3.a.x, arg_2.a.x)), -u_input.d)), u_input.d), u_input.d);
    return Struct_1(!(!var_0.a), _wgslsmith_dot_vec4_u32(~((vec4<u32>(arg_2.b, arg_0, 8760u, arg_3.b) ^ vec4<u32>(arg_2.b, 0u, arg_2.b, arg_0)) & (vec4<u32>(arg_0, arg_2.b, 4294967295u, 9968u) | vec4<u32>(18500u, 7074u, arg_2.b, arg_3.b))), vec4<u32>(52510u, u_input.c.x | ~arg_3.b, firstTrailingBit(arg_0 >> (arg_3.b % 32u)), ~abs(arg_3.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(false, 324f == _wgslsmith_f_op_f32(sign(114f)), true));
    let var_1 = func_4(~(u_input.c.x << (4294967295u % 32u)), _wgslsmith_f_op_f32(max(1f, -782f)), func_1(), func_1());
    var var_2 = ~select((u_input.b | select(u_input.a, -2147483647i, true)) << (~(~var_1.b) % 32u), 2147483647i, var_1.a.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-815f)) + -1835f) * _wgslsmith_f_op_f32(f32(-1f) * -394f)), 1260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_4 = ~vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(abs(var_1.b), func_4(4294967295u, var_3.x, var_1, var_1).b), (u_input.c.x << (13743u % 32u)) << ((u_input.c.x & 0u) % 32u)), 21305u);
    global0 = ~var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -444f), -2147483647i, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_dot_vec2_u32(u_input.c.zx, max(var_4.xz >> (u_input.c.yy % vec2<u32>(32u)), u_input.c.xx) & var_4.xz));
}

