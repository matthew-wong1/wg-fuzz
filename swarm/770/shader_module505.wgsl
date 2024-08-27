struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1896f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1056f - -607f) + -2913f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2888f - -143f), 3343f), -1817f, -1000f), vec3<f32>(_wgslsmith_f_op_f32(-1336f - -2027f), -254f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), ~u_input.a.zz, ~vec4<u32>(1u, 1u, 1u, 1u), all(vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(572f, -584f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1001f, 1000f))) * vec2<f32>(_wgslsmith_f_op_f32(min(1198f, 730f)), _wgslsmith_f_op_f32(sign(352f))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -496f))), var_1.a.x, 1552f);
    let var_3 = 1u;
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-610f)) + _wgslsmith_f_op_f32(var_2.x * 1257f)))), -981f, _wgslsmith_f_op_f32(-var_2.x)), vec2<i32>(i32(-1i) * -34605i, -var_1.b.x), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, 13496u, var_1.c.x, var_3) & vec4<u32>(var_1.c.x, 8773u, var_3, 3006u), _wgslsmith_mod_vec4_u32(var_1.c, ~vec4<u32>(81682u, var_3, 4294967295u, 30256u)), vec4<bool>(any(vec3<bool>(var_1.d, false, true)), true, select(false, false, var_1.d), var_1.d)), vec4<u32>(var_3, var_3, 23982u, ~var_3 | ~0u), vec4<u32>(var_1.c.x, max(_wgslsmith_mult_u32(var_1.c.x, 4294967295u), var_1.c.x), firstTrailingBit(90493u), 73211u)), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1465f, var_1.a.x))), _wgslsmith_f_op_f32(-var_1.a.x))));
    return var_1.e.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(102f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    var var_1 = 79823u;
    let var_2 = vec4<bool>(true, select(true, true, true), true, !all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, false, true), true)));
    var_1 = max(_wgslsmith_mod_u32(~(~(~0u)), _wgslsmith_div_u32(4294967295u, 1u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u >> (1u % 32u), countOneBits(1u)), 1u));
    var_1 = 65483u << (~4294967295u % 32u);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(702f, -135f)), arg_0.x, _wgslsmith_f_op_f32(var_0.x + -791f))), u_input.a.yw, vec4<u32>(1u, 1u, 1u, 1u), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yx - var_0.xy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.zy)) + vec2<f32>(136f, -221f)), true)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1, arg_0.yy)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    let var_0 = arg_1.d;
    let var_1 = u_input.a.zwy | max(select(select(vec3<i32>(-2584i, u_input.a.x, -3757i), u_input.a.ywz, false), -u_input.a.xxz, select(vec3<bool>(true, var_0, arg_0.x), vec3<bool>(true, true, arg_1.d), true)) << (abs(firstLeadingBit(arg_1.c.www)) % vec3<u32>(32u)), u_input.a.yyx);
    var var_2 = arg_1;
    var var_3 = var_2.c.x;
    var var_4 = -u_input.a;
    return all(!vec2<bool>(true, arg_0.x));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a - vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), 225f, _wgslsmith_f_op_f32(arg_0.a.x - -1147f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(arg_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a, vec3<f32>(-240f, arg_0.e.x, arg_0.a.x)))))), vec2<i32>(_wgslsmith_add_i32(-14506i, u_input.a.x) >> (arg_0.c.x % 32u), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(4178i, abs(-1i), arg_0.b.x ^ u_input.a.x), reverseBits(-2629i))), countOneBits(~_wgslsmith_mult_vec4_u32(arg_0.c & vec4<u32>(arg_0.c.x, arg_0.c.x, 24505u, arg_0.c.x), arg_0.c ^ vec4<u32>(2657u, arg_0.c.x, 1422u, arg_0.c.x))), arg_0.d, vec2<f32>(arg_0.a.x, -2634f));
    let var_2 = Struct_1(arg_0.a, arg_0.b, _wgslsmith_mult_vec4_u32(arg_0.c, arg_0.c), func_4(vec2<bool>(true, true), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(141f, 286f, arg_0.e.x, arg_0.e.x)), vec2<f32>(-1972f, -1038f))) & any(vec2<bool>(var_1.c.x <= arg_0.c.x, !arg_0.d)), _wgslsmith_div_vec2_f32(arg_0.a.zy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, arg_0.a.x) + _wgslsmith_f_op_vec2_f32(max(var_1.e, var_1.e))), var_1.a.yx))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), (arg_0.b >> (~var_2.c.zw % vec2<u32>(32u))) ^ abs(~vec2<i32>(-43351i, var_2.b.x) ^ reverseBits(vec2<i32>(-21884i, -27395i))), ~vec4<u32>(arg_0.c.x, ~1u | ~arg_0.c.x, ~_wgslsmith_add_u32(4294967295u, arg_0.c.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(29984u, 22760u))), var_2.d, _wgslsmith_f_op_vec2_f32(-var_1.e));
    var var_4 = arg_0;
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, var_3.a.x, -153f)))))) * vec3<f32>(345f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x + var_2.a.x), -982f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.e.x * var_3.e.x), _wgslsmith_f_op_f32(max(var_2.e.x, arg_0.e.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1246f, -233f, 1106f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1393f, 1526f))), vec3<f32>(-570f, _wgslsmith_f_op_f32(488f * 1590f), _wgslsmith_f_op_f32(sign(-1000f))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1725f, 240f, _wgslsmith_f_op_f32(-253f - -239f)), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<f32>(-1072f, 919f, 3020f), vec2<i32>(-2147483647i, u_input.a.x), vec4<u32>(4294967295u, 4013u, 10562u, 1u), true, vec2<f32>(668f, -623f)))), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))))), firstLeadingBit(select(vec2<i32>(0i, abs(1i)), _wgslsmith_clamp_vec2_i32(u_input.a.xz, u_input.a.yz, countOneBits(vec2<i32>(-6197i, 52890i))), false)), vec4<u32>(1u, 28336u, _wgslsmith_dot_vec3_u32(vec3<u32>(18264u, 4294967295u, 1u), vec3<u32>(0u, 1u, 9498u)), ~35557u) | ~abs(firstLeadingBit(vec4<u32>(25530u, 1u, 0u, 45366u))), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), 1026f)));
    var var_1 = vec2<bool>(!all(!select(vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), vec4<bool>(false, var_0.d, true, var_0.d), var_0.d)), 0u != _wgslsmith_sub_u32(var_0.c.x, 4294967295u));
    var_1 = !vec2<bool>(var_0.d, true);
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(var_2.a * _wgslsmith_f_op_vec3_f32(var_2.a + var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 27379i, -47803i), _wgslsmith_div_vec3_i32(u_input.a.xxw, ~u_input.a.zyz)), vec4<u32>(~var_2.c.x, _wgslsmith_dot_vec2_u32(~var_2.c.xy >> (min(vec2<u32>(43134u, var_0.c.x), vec2<u32>(var_0.c.x, var_2.c.x)) % vec2<u32>(32u)), vec2<u32>(countOneBits(4294967295u), ~1u)), var_0.c.x, ~_wgslsmith_dot_vec4_u32(var_2.c, var_0.c) & 1u), abs(var_0.b.x), vec2<i32>(var_0.b.x, u_input.a.x));
}

