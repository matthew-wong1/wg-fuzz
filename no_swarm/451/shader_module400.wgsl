struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -823f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-414f + _wgslsmith_f_op_f32(-394f - 388f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f)))));
    global0 = -1987f;
    return 0i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    global0 = arg_1.a.a.x;
    global0 = -1000f;
    var var_0 = arg_1.a.b.x;
    let var_1 = -626f;
    global0 = -1501f;
    return u_input.b.x;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = !(~arg_0.c.x == _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(22847u, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<u32>(arg_0.c.x, 30934u, arg_0.c.x, 10078u)), arg_0.c), ~_wgslsmith_sub_u32(arg_0.c.x, 1u)));
    let var_1 = vec2<i32>(func_2(vec3<i32>(u_input.a.x, ~arg_1.b.x, arg_2.b.b.x)) & ~(i32(-1i) * -2147483647i), _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1.b.x | arg_2.a.b.x, u_input.a.x), ~(~arg_0.d.a.b.x)) ^ arg_0.a.b.x);
    let var_2 = ~min(-arg_1.b.x, _wgslsmith_div_i32(func_3(arg_0.a, Struct_2(arg_2.b, arg_2.b)), -arg_2.a.b.x));
    global0 = 1000f;
    let var_3 = abs(_wgslsmith_dot_vec2_i32(u_input.a, ~vec2<i32>(0i, -12164i) << (vec2<u32>(arg_0.c.x, arg_0.c.x) % vec2<u32>(32u))) | 1i);
    return (46592u & ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, 21663u, 4294967295u), arg_0.c.xzx))) << (63791u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1218f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1067f)), _wgslsmith_div_f32(299f, 1291f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1658f)), (~6284u << (_wgslsmith_clamp_u32(select(0u, 0u, false), ~0u, func_1(Struct_3(Struct_1(vec2<f32>(-1000f, 1381f), vec2<i32>(-7130i, u_input.b.x), false, false), vec3<f32>(-574f, -841f, 460f), vec4<u32>(19195u, 32215u, 1u, 87847u), Struct_2(Struct_1(vec2<f32>(-606f, -751f), vec2<i32>(-22644i, u_input.b.x), false, true), Struct_1(vec2<f32>(-673f, 1656f), u_input.b.xz, false, true))), Struct_1(vec2<f32>(-721f, 822f), u_input.b.wy, true, false), Struct_2(Struct_1(vec2<f32>(-231f, -1935f), vec2<i32>(u_input.a.x, 32319i), false, false), Struct_1(vec2<f32>(1050f, 1017f), u_input.a, true, false)))) % 32u)) <= 56112u));
    let var_0 = !select(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(false, true, true), vec3<bool>(true, all(vec2<bool>(false, true)), true)), vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true), select(any(vec2<bool>(true, true)), false, !any(vec4<bool>(true, false, false, true))));
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(~1u), 1u), func_1(Struct_3(Struct_1(vec2<f32>(-567f, 209f), vec2<i32>(u_input.b.x, u_input.b.x), false, var_0.x), vec3<f32>(400f, -1000f, 1000f), vec4<u32>(55417u, 14071u, 0u, 1u), Struct_2(Struct_1(vec2<f32>(-771f, 909f), vec2<i32>(u_input.a.x, u_input.a.x), true, false), Struct_1(vec2<f32>(-1523f, 152f), u_input.b.xx, false, var_0.x))), Struct_1(vec2<f32>(-162f, -955f), vec2<i32>(2147483647i, u_input.a.x), true, true), Struct_2(Struct_1(vec2<f32>(-917f, 880f), vec2<i32>(-42570i, 2147483647i), var_0.x, false), Struct_1(vec2<f32>(-554f, 673f), u_input.b.yx, var_0.x, true))) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(83773u, 37204u, 34967u, 26634u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u))), vec2<u32>(max(_wgslsmith_clamp_u32(0u, 0u, 934u) | 0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(133539u, 67157u), vec2<u32>(4294967295u, 0u))), 1u));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(320f, 2021f)))))), -u_input.b.yw, var_0.x, true), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(406f, 1424f)), vec2<f32>(-1000f, 178f), var_0.x && var_0.x)))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, -45272i), firstTrailingBit(firstLeadingBit(u_input.a))), !var_0.x || !(var_0.x && var_0.x), _wgslsmith_mod_u32(var_1.x, 9973u) <= ~_wgslsmith_div_u32(var_1.x, var_1.x)));
    let var_3 = !(!vec4<bool>(all(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), all(!vec3<bool>(true, var_2.a.d, false)), any(select(vec2<bool>(var_2.b.c, true), vec2<bool>(false, var_2.a.d), vec2<bool>(true, var_0.x))), !select(var_0.x, var_2.a.d, var_2.a.d)));
    var var_4 = var_2.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_4.x, 611f, var_4.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a.x, var_2.b.a.x, 1143f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a.x, var_2.a.a.x, 813f)))))))), reverseBits(~vec4<i32>(countOneBits(1i), var_2.a.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a), -2147483647i)));
}

