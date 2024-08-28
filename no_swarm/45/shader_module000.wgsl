struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = firstLeadingBit(3196u);
    let var_1 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~12500u, ~0u, ~628u, 0u), countOneBits(reverseBits(arg_0.c.c))), 15319u, ~_wgslsmith_dot_vec3_u32(arg_0.c.c.zxy, select(vec3<u32>(arg_0.d.x, var_0, 0u), arg_0.c.c.xwy, vec3<bool>(false, arg_0.c.a.x, arg_0.c.a.x)))), ~_wgslsmith_add_vec3_i32(-arg_0.b, ~(-vec3<i32>(u_input.d, 1i, u_input.c))), arg_0.c, min(~vec2<u32>(max(u_input.a, 4294967295u), abs(24106u)), max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, u_input.a), vec2<u32>(4294967295u, 39203u), arg_0.d), arg_0.c.c.wy)));
    var var_2 = var_1.c.c.zxz;
    let var_3 = _wgslsmith_sub_i32(1i, ~_wgslsmith_mod_i32(u_input.c, 1i) ^ firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c, var_1.c.b, var_1.b.x), reverseBits(4206i))));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c.d, 153f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.d, 118f) + vec2<f32>(var_1.c.d, 420f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2075f, var_1.c.d))))))), false));
    return 12841u;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<f32>) -> i32 {
    return (_wgslsmith_sub_i32(i32(-1i) * -u_input.b.x, u_input.e) << (max(arg_0, func_3(Struct_2(4294967295u, vec3<i32>(u_input.e, u_input.e, u_input.e), Struct_1(vec2<bool>(false, true), u_input.c, vec4<u32>(arg_0, arg_0, 34119u, 4294967295u), -318f, vec2<u32>(u_input.a, 0u)), vec2<u32>(u_input.a, arg_0))) << (u_input.a % 32u)) % 32u)) >> (max(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(80884u, u_input.a), ~0u, ~4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, u_input.a, arg_0), vec3<u32>(71257u, arg_0, 4294967295u)), vec3<u32>(u_input.a, 4294967295u, 594u)), vec3<u32>(func_3(Struct_2(0u, vec3<i32>(-1i, u_input.c, u_input.c), Struct_1(arg_1, u_input.e, vec4<u32>(arg_0, 38867u, arg_0, u_input.a), arg_2.x, vec2<u32>(4294967295u, 44196u)), vec2<u32>(4294967295u, arg_0))), arg_0, 15158u))) % 32u);
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> vec2<u32> {
    var var_0 = vec3<bool>(true, !((i32(-1i) * -25518i) <= (i32(-1i) * -u_input.c)), ~4294967295u != u_input.a);
    var var_1 = countOneBits(_wgslsmith_mult_vec2_i32(u_input.b.yy, firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, arg_1), ~vec2<i32>(u_input.c, -163i)))));
    let var_2 = Struct_1(!(!(!arg_0)), _wgslsmith_div_i32(abs(0i), u_input.c) | 1i, abs(vec4<u32>(16639u, 27476u, ~(~4893u), 74588u ^ func_3(Struct_2(9698u, u_input.b, Struct_1(vec2<bool>(true, arg_0.x), 2147483647i, vec4<u32>(17911u, 1u, 0u, 0u), 949f, vec2<u32>(40966u, 1u)), vec2<u32>(u_input.a, 24341u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2710f), _wgslsmith_f_op_f32(round(-410f)), false))), ~(~(abs(vec2<u32>(4294967295u, 46225u)) | vec2<u32>(41068u, u_input.a))));
    var var_3 = var_2.a.x;
    var var_4 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(40104i, arg_1 >> (u_input.a % 32u)) ^ ~_wgslsmith_mod_i32(47686i, var_2.b), select(-2013i, -15437i, !arg_0.x)), 16278i, u_input.b.x);
    return var_2.e;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(vec2<bool>(true, !any(vec3<bool>(true, true, true))), ~(-func_2(1u, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-965f, 1155f, 1000f, 302f))))));
    let var_1 = vec2<u32>(0u, ~2545u);
    var var_2 = !(!(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false))));
    var var_3 = vec4<bool>(1u != (u_input.a << (4294967295u % 32u)), !all(vec2<bool>(true, true)), var_2.x, false);
    var var_4 = Struct_2(4968u, vec3<i32>(_wgslsmith_clamp_i32(countOneBits(u_input.d), _wgslsmith_add_i32(reverseBits(-22066i), reverseBits(2147483647i)), u_input.d), 20542i, 2147483647i), Struct_1(var_3.zx, u_input.c, select(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 63484u, var_1.x, 59643u), vec4<u32>(39966u, u_input.a, var_1.x, var_1.x)), vec4<u32>(var_1.x, ~u_input.a, 1u, 1u), var_3.x), _wgslsmith_f_op_f32(194f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1177f))), ~vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.a, 1u), vec3<u32>(3851u, 1u, var_1.x)))), select(vec2<u32>(u_input.a, 55775u), firstLeadingBit(vec2<u32>(4294967295u >> (var_0.x % 32u), 6179u)), var_2.x));
    return Struct_1(!select(select(!vec2<bool>(var_2.x, var_4.c.a.x), !var_3.yx, var_3.ww), var_4.c.a, (62576u & var_4.c.e.x) <= 29896u), abs(abs(_wgslsmith_mult_i32(-4856i, -12926i))), countOneBits(_wgslsmith_add_vec4_u32(select(vec4<u32>(var_1.x, var_0.x, u_input.a, var_0.x), vec4<u32>(var_4.c.e.x, 4294967295u, 76403u, var_4.d.x), select(vec4<bool>(var_2.x, var_3.x, true, false), vec4<bool>(var_2.x, var_2.x, true, var_4.c.a.x), true)), vec4<u32>(~var_4.c.c.x, 0u, _wgslsmith_sub_u32(4294967295u, var_0.x), 1u))), var_4.c.d, var_4.d);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_0.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0.x, 1i), arg_2.b << (44917u % 32u))), u_input.c), vec2<i32>(u_input.c, -15015i));
    global0 = 4294967295u;
    let var_1 = arg_2;
    let var_2 = true;
    var var_3 = ~(vec4<i32>(var_0.x, 14773i, countOneBits(~53075i), var_0.x) >> (arg_1.c % vec4<u32>(32u)));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(func_5(u_input.b.yy, func_1(), Struct_1(vec2<bool>(true, false), 2147483647i, vec4<u32>(29361u, u_input.a, 51683u, 1u), -643f, vec2<u32>(13350u, 37799u))), select(func_1().a, select(vec2<bool>(true, true), vec2<bool>(true, false), true), any(vec2<bool>(true, false))), vec2<bool>(true, true)));
    global0 = u_input.a;
    var var_1 = _wgslsmith_add_i32(~_wgslsmith_clamp_i32(~1i, 0i, -5299i), u_input.b.x) >> (5603u % 32u);
    var_1 = u_input.d;
    global0 = 2539u;
    var_1 = -1i;
    var var_2 = Struct_1(!vec2<bool>(var_0.x, all(vec3<bool>(false, var_0.x, var_0.x))), ~u_input.b.x, vec4<u32>(u_input.a, _wgslsmith_sub_u32(func_4(!vec2<bool>(var_0.x, true), u_input.b.x).x, countOneBits(~41683u)), ~max(countOneBits(u_input.a), u_input.a), _wgslsmith_clamp_u32(~(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)), u_input.a)), 1032f, _wgslsmith_mult_vec2_u32(countOneBits(firstTrailingBit(vec2<u32>(4294967295u, u_input.a))) | _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(24653u, u_input.a)), vec2<u32>(43399u, 26692u)), firstLeadingBit(vec2<u32>(127753u, _wgslsmith_sub_u32(u_input.a, u_input.a)))));
    var var_3 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(var_2.c.x, 0u), 57849u), abs(vec2<u32>(u_input.a, 0u)) << ((var_2.e | var_2.e) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-728f - _wgslsmith_f_op_f32(abs(var_2.d))), var_2.d, _wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(~49616u), ~var_2.e.x), ~var_2.c.yw), 407f);
}

