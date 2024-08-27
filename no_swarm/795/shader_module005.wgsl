struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_5) -> i32 {
    return ~_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), u_input.b & vec4<i32>(17586i, -4674i, -26626i, 17610i))), -7852i);
}

fn func_3() -> u32 {
    let var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(-1562f - -187f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-263f, _wgslsmith_f_op_f32(f32(-1f) * -431f)) * -1140f)))));
    return firstLeadingBit(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(70102u, 0u, 59742u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), 0u) | 1u);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> i32 {
    let var_0 = (min(~(~vec3<u32>(6058u, arg_3.e.c, arg_0.c.c)), ~vec3<u32>(1u, arg_3.b.a.x, arg_3.e.a.x) << (vec3<u32>(arg_3.b.a.x, arg_3.c.c, arg_3.e.a.x) % vec3<u32>(32u))) << (~vec3<u32>(arg_3.c.a.x, arg_0.e.a.x >> (arg_0.c.a.x % 32u), arg_0.e.c) % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.e.c, func_3()), arg_3.c.a.x), arg_0.e.a.x, max(_wgslsmith_mult_u32(52668u, func_3()), ~arg_3.e.a.x));
    var var_1 = Struct_3(arg_3.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_3.e.a.x, 0u, countOneBits(arg_0.c.a.x), _wgslsmith_clamp_u32(arg_0.b.a.x, 0u, var_0.x)), vec4<u32>(~var_0.x, arg_3.c.a.x, 4294967295u, arg_3.c.c)), arg_0.c.c, arg_3.b.a, max(22211u, arg_0.c.c) << (105422u % 32u));
    var_1 = Struct_3(var_1.a, _wgslsmith_mult_u32(~4294967295u, var_1.a.c), 1u, max(arg_0.e.a, vec2<u32>(68552u, var_1.e << (var_1.e % 32u))), var_1.a.a.x);
    let var_2 = true;
    var var_3 = Struct_4(1u, arg_3, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, arg_0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, arg_3.d), vec2<f32>(-344f, arg_0.d), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1011f, arg_3.d)), all(vec3<bool>(var_1.a.b.x, arg_3.b.b.x, true)))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -367f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 419f) * vec2<f32>(2360f, arg_0.a)))))));
    return select(u_input.b.x << ((40483u << (((arg_3.b.a.x | var_1.e) | _wgslsmith_sub_u32(38274u, var_3.b.b.a.x)) % 32u)) % 32u), 3592i, true);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec3<bool> {
    return vec3<bool>(!arg_1.b.x != !(arg_1.b.x && true), true, true && any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, arg_1.b.x, arg_1.b.x), true), !vec3<bool>(arg_1.b.x, true, true), select(vec3<bool>(arg_1.b.x, false, arg_1.b.x), vec3<bool>(arg_1.b.x, false, arg_1.b.x), vec3<bool>(arg_1.b.x, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 12679u;
    let var_1 = false;
    var var_2 = select(!(!(!select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, var_1, var_1), vec3<bool>(false, true, var_1)))), !func_4(vec4<i32>(u_input.a.x, _wgslsmith_add_i32(-1i, -1i), func_1(vec4<u32>(var_0, var_0, 1u, 1u), Struct_5(-174f, vec2<bool>(true, false), vec3<u32>(1u, 60723u, var_0))), func_2(Struct_2(-399f, Struct_1(vec2<u32>(var_0, 0u), vec2<bool>(var_1, var_1), var_0), Struct_1(vec2<u32>(4294967295u, var_0), vec2<bool>(var_1, false), var_0), -1321f, Struct_1(vec2<u32>(var_0, 0u), vec2<bool>(var_1, false), 5941u)), -187f, u_input.a.x, Struct_2(-1238f, Struct_1(vec2<u32>(0u, 23142u), vec2<bool>(var_1, var_1), var_0), Struct_1(vec2<u32>(var_0, var_0), vec2<bool>(false, var_1), 0u), 469f, Struct_1(vec2<u32>(var_0, var_0), vec2<bool>(true, false), 0u)))), Struct_5(2265f, vec2<bool>(var_1, var_1), vec3<u32>(77206u, 1u, 5131u)), vec3<f32>(-1018f, -878f, _wgslsmith_f_op_f32(round(-346f))), _wgslsmith_div_vec2_u32(vec2<u32>(var_0, var_0), ~vec2<u32>(var_0, 71143u))), func_4(vec4<i32>(1i, u_input.b.x, _wgslsmith_mod_i32(0i, -19899i), ~0i) & u_input.b, Struct_5(_wgslsmith_div_f32(-1537f, _wgslsmith_f_op_f32(-172f + 1276f)), select(!vec2<bool>(var_1, var_1), !vec2<bool>(false, var_1), !vec2<bool>(var_1, var_1)), ~(vec3<u32>(21923u, var_0, 5168u) & vec3<u32>(4294967295u, var_0, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-274f, 995f, 403f))), vec3<f32>(1f, 1f, 1f)))), vec2<u32>(func_3(), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, 26556u), vec2<u32>(var_0, 29109u)))).x);
    let var_3 = vec4<u32>(~71056u << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, var_0)), vec2<u32>(35764u, 4294967295u)), var_0) % 32u), var_0, 1u, 4294967295u);
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-703f * -107f))), Struct_1(~var_3.xw, var_2.xz, var_0), Struct_1(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, 0u)), ~vec2<u32>(21085u, var_0)), func_4(-u_input.b, Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -825f), var_2.yx, select(var_3.wxw, var_3.zwy, vec3<bool>(false, true, false))), vec3<f32>(-630f, 1f, _wgslsmith_f_op_f32(abs(844f))), select(vec2<u32>(0u, var_3.x), ~var_3.zx, !vec2<bool>(var_1, var_1))).xz, 3448u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-192f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(250f, 304f))))))), Struct_1(var_3.zy, var_2.zy, var_0));
    var_2 = vec3<bool>(false, !(!(_wgslsmith_f_op_f32(-563f - var_4.a) < -478f)), var_1);
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, firstTrailingBit(u_input.a.x));
}

