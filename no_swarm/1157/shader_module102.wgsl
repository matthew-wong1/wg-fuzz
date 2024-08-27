struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 66567u;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, select(~2156u, ~84635u, any(vec2<bool>(arg_2, arg_3.x))), 1u), arg_0), abs(~vec3<u32>(min(arg_0.x, arg_0.x), select(arg_0.x, 26167u, true), _wgslsmith_mod_u32(62124u, 38618u))));
    global0 = ~(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(arg_0.zz, vec2<u32>(arg_0.x, arg_0.x)), countOneBits(select(arg_0.yx, arg_0.zx, arg_3.xy))) << (~1u % 32u));
    global0 = firstLeadingBit(~14623u ^ arg_0.x);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(arg_1.x - 1959f)))) - -581f) * _wgslsmith_f_op_f32(max(-687f, _wgslsmith_f_op_f32(trunc(-1830f)))));
    let var_1 = !arg_3.yy;
    return 181f;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(-u_input.a, Struct_1(true || select(false, false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(0u, 6043u, 25520u), vec4<f32>(-388f, 818f, 1507f, 1000f), true, vec3<bool>(false, false, false))) + _wgslsmith_f_op_f32(ceil(733f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1942f, -1000f, 1000f, 1083f)) + vec4<f32>(1f, 1f, 1f, 1f))))), Struct_1(false, _wgslsmith_f_op_f32(func_3(reverseBits(vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(802f, -854f, -928f, -1140f)))), false, vec3<bool>(true, true, false))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(255f, -741f, -530f, 784f) * vec4<f32>(-2142f, -102f, 1000f, 1035f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1717f, -259f, -261f, 721f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(315f, 304f, -1280f, -264f))))))), vec3<u32>(~(~abs(26859u)), 1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, ~55442u), 59215u)), ~47062u);
    let var_1 = vec2<u32>(var_0.e, ~var_0.e);
    var_0 = Struct_2(max(abs(max(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), ~var_0.a)), u_input.a), Struct_1(!any(!vec3<bool>(var_0.b.a, false, false)), 742f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-168f, var_0.b.c.x, var_0.c.c.x, var_0.c.b))))), Struct_1(var_0.c.a, 443f, vec4<f32>(408f, var_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.x)), var_0.b.b)), ~_wgslsmith_sub_vec3_u32(var_0.d, var_0.d), 4294967295u);
    var var_2 = var_0.b;
    var var_3 = true;
    return _wgslsmith_f_op_f32(select(-1925f, 855f, var_2.a));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1586f, 414f))) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-1126f, -116f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(arg_0, arg_0, 114184u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(576f, 599f, -600f, -185f))), true, vec3<bool>(false, true, true))) * _wgslsmith_div_f32(107f, _wgslsmith_f_op_f32(931f + -1890f)))), vec4<f32>(-222f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(868f, _wgslsmith_f_op_f32(step(2683f, 845f))))), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-243f * _wgslsmith_f_op_f32(2129f + -977f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec3<u32>(arg_0, 4294967295u, arg_0), vec4<f32>(-578f, 1000f, -859f, 232f), true, vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(min(-514f, -1000f)), true))))));
    global0 = _wgslsmith_div_u32(reverseBits(arg_0), 4520u) << (arg_0 % 32u);
    let var_1 = var_0;
    global0 = arg_0;
    var var_2 = u_input.a.x;
    return Struct_1(var_0.a, -2452f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1014f, var_0.b, 620f, -119f) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, -834f, var_1.b, var_0.c.x), vec4<f32>(101f, 1340f, var_0.b, 2243f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_0.b, 1409f, 156f))), vec4<bool>(!var_0.a, any(vec4<bool>(true, var_1.a, true, var_0.a)), true, var_1.a && var_1.a))) * vec4<f32>(1000f, -1980f, -495f, var_0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<bool>(false, true), func_1(~1u), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a.x <= u_input.a.x), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false)));
    var var_1 = Struct_3(vec2<bool>(any(vec3<bool>(false, !var_0.b.a, 812f <= var_0.b.c.x)), true), var_0.b, !(!(!select(vec2<bool>(false, var_0.a.x), vec2<bool>(false, var_0.a.x), var_0.a))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.b.c.xww))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_0.b.c.yzz, _wgslsmith_f_op_vec3_f32(var_0.b.c.yyz - vec3<f32>(var_0.b.b, 105f, var_1.b.b)), var_1.b.a || false)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(var_0.b.c.xwz, var_1.b.c.zyy, vec3<bool>(false, true, var_1.a.x))), var_1.b.c.xyx)), false))));
    var var_3 = Struct_1(all(!vec3<bool>(any(vec3<bool>(true, false, var_1.c.x)), false, var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -485f), _wgslsmith_f_op_f32(sign(251f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.c.x, -397f)))) * -831f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1000f, 1044f, 2700f)))))));
    global0 = ~74177u;
    let var_4 = 21057i;
    var var_5 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(firstTrailingBit(2147483647i), ~(u_input.a.x | u_input.a.x), firstTrailingBit(-u_input.a.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), abs(vec2<i32>(var_4, 33827i)))), _wgslsmith_div_i32(~0i, ~u_input.a.x));
    var var_6 = ~_wgslsmith_sub_u32(countOneBits(1u), _wgslsmith_div_u32(40733u, ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), var_0.b.c.zx, ~1u | _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 51505u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)));
}

