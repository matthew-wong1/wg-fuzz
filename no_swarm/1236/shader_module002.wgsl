struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = max(abs(vec3<i32>(12646i, u_input.a, min(_wgslsmith_div_i32(55211i, 57342i), u_input.a))), (max(select(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, 33374i, u_input.a), vec3<bool>(false, false, false)), ~vec3<i32>(0i, u_input.a, -22404i)) << (vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 18682u), min(0u, 6262u), ~u_input.c.x) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(28507u, 4294967295u, u_input.b), vec3<u32>(u_input.c.x, u_input.b, 25496u) ^ vec3<u32>(0u, 14697u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(0u, u_input.c.x, 22321u)) | abs(vec3<u32>(8801u, 11500u, 82839u))) % vec3<u32>(32u)));
    var var_1 = ~0u;
    let var_2 = Struct_1(509f, true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-633f, arg_0.x, 504f), _wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, vec3<bool>(false, true, true))))))), u_input.c.x > (u_input.c.x & ~(0u << (0u % 32u))), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_mod_u32(0u, u_input.c.x)), select(u_input.c, u_input.c, false) & u_input.c)));
    var_1 = ~firstTrailingBit(countOneBits(~firstTrailingBit(4294967295u)));
    var var_3 = u_input.b;
    return 685f;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    global1 = abs(max(3318i, u_input.a));
    global1 = u_input.a;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1203f, 718f, arg_1.c.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a, -1298f, arg_2.a), vec3<f32>(arg_2.a, arg_1.a, arg_1.c.x))), select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_1.b), vec3<bool>(arg_2.b, arg_2.d, false))))))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_2.e << (u_input.c.x % 32u), _wgslsmith_div_u32(arg_2.e, 0u)), arg_0.x & 116u, firstTrailingBit(60776u)) >= arg_1.e, vec3<f32>(-364f, 1f, -1030f), ~arg_2.e < 4294967295u, ~_wgslsmith_dot_vec4_u32(~arg_0, min(arg_0, vec4<u32>(0u, arg_1.e, u_input.c.x, 1u))));
    let var_1 = -1000f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -630f), any(select(select(select(vec4<bool>(true, false, arg_1.b, arg_1.b), vec4<bool>(var_0.b, arg_2.d, true, false), false), select(vec4<bool>(true, arg_1.b, var_0.d, true), vec4<bool>(false, true, arg_1.b, false), vec4<bool>(true, arg_1.b, true, arg_1.d)), vec4<bool>(false, true, arg_1.d, true)), select(select(vec4<bool>(arg_2.d, false, true, false), vec4<bool>(arg_1.d, true, arg_2.d, false), vec4<bool>(arg_2.b, false, arg_1.b, false)), vec4<bool>(arg_2.b, var_0.d, arg_1.d, var_0.b), !vec4<bool>(true, false, arg_1.b, arg_2.b)), arg_2.d)), arg_2.c, true, _wgslsmith_dot_vec4_u32(arg_0, firstTrailingBit(vec4<u32>(u_input.c.x, select(4294967295u, u_input.c.x, var_0.d), u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(34787u, arg_2.e, var_0.e, arg_2.e), vec4<u32>(7661u, 1u, arg_1.e, 4294967295u))))));
    return ~vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(23615i, -27971i, -14175i, u_input.a)), -max(vec4<i32>(0i, u_input.a, -21400i, 73525i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(_wgslsmith_div_i32(u_input.a, u_input.a)), _wgslsmith_dot_vec2_i32(func_2(vec4<u32>(arg_1.e, 107615u, arg_1.e, arg_1.e), Struct_1(-1122f, false, vec3<f32>(499f, -543f, arg_2), arg_3.x, arg_1.e), arg_1), reverseBits(vec2<i32>(-2147483647i, u_input.a)))), _wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, u_input.a), min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, 2147483647i))), vec2<i32>(1i, 1i))), vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(2147483647i), u_input.a | 21436i), u_input.a));
    var var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = arg_0;
    global0 = false;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = !arg_0.d;
    var var_0 = !((-u_input.a << (_wgslsmith_add_u32(~33914u, countOneBits(1u)) % 32u)) >= u_input.a);
    let var_1 = !select(!vec4<bool>(true, arg_1.a == -590f, all(vec3<bool>(true, arg_1.d, true)), arg_0.b), select(select(!vec4<bool>(false, arg_1.b, arg_1.b, false), !vec4<bool>(true, arg_0.d, true, true), arg_0.d), vec4<bool>(true, true, arg_0.e < u_input.b, arg_0.b), !select(vec4<bool>(true, arg_1.d, arg_1.d, arg_1.d), vec4<bool>(arg_1.b, true, arg_0.d, false), true)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_1.e, 4294967295u), 35852u >> (arg_0.e % 32u), 1u) >= ~arg_1.e);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(-396f * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1199f))), -873f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1503f, _wgslsmith_f_op_f32(-arg_0.a), var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.c.x))))))), arg_1.a);
    var var_3 = func_1(func_1(func_1(arg_1, arg_0, 418f, var_1), Struct_1(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false, vec3<f32>(_wgslsmith_div_f32(arg_1.c.x, var_2.x), -1200f, arg_1.c.x), !(!var_1.x), abs(4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-936f, _wgslsmith_f_op_f32(select(-616f, -1000f, arg_1.d)), -469f != arg_1.c.x))), select(!(!vec4<bool>(true, false, arg_1.b, arg_0.d)), select(!var_1, vec4<bool>(var_1.x, arg_0.b, arg_1.b, var_1.x), select(var_1, vec4<bool>(false, false, arg_0.b, var_1.x), vec4<bool>(arg_1.b, arg_0.b, var_1.x, arg_1.d))), all(select(vec3<bool>(true, false, false), vec3<bool>(var_1.x, true, var_1.x), var_1.x)))), Struct_1(var_2.x, var_1.x, _wgslsmith_f_op_vec3_f32(-arg_1.c), arg_1.a <= var_2.x, 1u), arg_0.a, select(select(select(select(vec4<bool>(arg_0.d, true, false, arg_1.d), var_1, var_1), var_1, !vec4<bool>(true, false, arg_0.d, arg_0.b)), select(select(vec4<bool>(true, true, true, arg_0.d), var_1, false), select(vec4<bool>(var_1.x, arg_0.d, arg_1.b, var_1.x), var_1, arg_0.d), all(vec2<bool>(true, true))), any(select(vec3<bool>(false, true, true), vec3<bool>(arg_1.d, var_1.x, arg_0.b), vec3<bool>(arg_1.d, true, false)))), var_1, true || select(true, any(vec4<bool>(var_1.x, true, var_1.x, arg_1.d)), true)));
    return _wgslsmith_f_op_f32(var_2.x + -219f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(0i, 2147483647i, true);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(Struct_1(1557f, true, vec3<f32>(-1529f, -686f, 1241f), true, u_input.b), Struct_1(218f, true, vec3<f32>(1094f, -1268f, -209f), true, 1u), -126f, vec4<bool>(false, false, false, false)), Struct_1(314f, true, vec3<f32>(-250f, 993f, 1602f), false, 10277u))) * -556f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-590f + _wgslsmith_f_op_f32(1729f - 1000f))))), true, vec3<f32>(429f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1024f)))), _wgslsmith_f_op_f32(-1f)), true, ~firstLeadingBit(abs(u_input.c.x)));
    global1 = 0i;
    var var_1 = _wgslsmith_mult_u32(select(~(~4294967295u) >> (max(4294967295u, var_0.e) % 32u), select(min(~45335u, ~u_input.b), 53372u, var_0.b), true), 1u);
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c.x, ~(~u_input.c.x | ~var_0.e)), ~select(u_input.c, vec2<u32>(u_input.b, 1u), !(!vec2<bool>(var_0.b, true))));
    let var_2 = -989f;
    var_1 = 72185u;
    var var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), var_2, _wgslsmith_f_op_f32(f32(-1f) * -534f)) * _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(var_0.c + var_0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2));
}

