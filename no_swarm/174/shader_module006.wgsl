struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_sub_u32(~(~reverseBits(~108940u)), abs(u_input.c.x >> (~(~u_input.a.x) % 32u)));
    var var_1 = Struct_2(false, Struct_1(vec2<u32>(abs(32091u), ~(u_input.a.x ^ u_input.a.x)), -557f, -749f));
    let var_2 = Struct_2(all(select(select(vec2<bool>(false, true), select(vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, var_1.a), true), !var_1.a), select(vec2<bool>(true, false), vec2<bool>(var_1.a, var_1.a), true), vec2<bool>(var_1.a, true))), var_1.b);
    var var_3 = Struct_1(firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(-var_2.b.b), var_2.b.c);
    var_1 = Struct_2(var_1.a, Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(min(0u, 39820u), 9107u | var_3.a.x), ~vec2<u32>(var_2.b.a.x, var_1.b.a.x), countOneBits(var_1.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.b * _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -577f) - var_2.b.c)));
    return _wgslsmith_mod_vec2_i32(-vec2<i32>(1i, 0i), firstLeadingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(35399i, -1i), vec2<i32>(0i, -64687i)), vec2<i32>(1i, -2147483647i))) << (var_1.b.a % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec2_i32(func_3(), _wgslsmith_add_vec2_i32(~vec2<i32>(arg_2, 0i), -max(vec2<i32>(-30664i, arg_2), vec2<i32>(arg_2, arg_2)))));
    return vec4<u32>(~abs(arg_0.b.a.x) | firstLeadingBit(arg_0.b.a.x), u_input.c.x, u_input.c.x, arg_0.b.a.x);
}

fn func_1() -> i32 {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_mod_vec4_u32(~(~(~func_2(Struct_2(false, Struct_1(vec2<u32>(u_input.c.x, u_input.a.x), -574f, 2126f)), vec4<f32>(-233f, -247f, 392f, 1000f), 1i, vec3<bool>(false, true, true)))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.c.x, u_input.a.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c.x, 82738u, u_input.a.x, 1u), true), vec4<u32>(1u, 30257u, 4294967295u, 25391u) ^ vec4<u32>(u_input.a.x, 23989u, 80211u, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(90387u, u_input.c.x, 18608u, u_input.c.x), vec4<u32>(36198u, u_input.c.x, 60502u, 4294967295u))));
    let var_2 = Struct_2(!(!(any(vec2<bool>(true, true)) || true)), Struct_1(vec2<u32>(40395u, 0u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-561f * 2015f))), 356f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1106f - 1054f) - -344f))));
    let var_3 = !(!any(vec3<bool>(var_2.a, true, true)));
    var var_4 = _wgslsmith_div_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(-1i) * -vec2<i32>(~(-25654i), _wgslsmith_mod_i32(-2977i, 2147483647i)));
    return var_4.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: i32, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = false;
    let var_1 = Struct_1(abs(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 36065u, 0u), vec3<u32>(u_input.c.x, u_input.b.x, 33810u)), 26926u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x), 1025f);
    let var_2 = min(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(arg_2, -arg_2, arg_2)), firstLeadingBit(-vec3<i32>(arg_2, arg_1, 2147483647i))), firstTrailingBit(vec3<i32>(-1i) * -reverseBits(vec3<i32>(-12089i, arg_2, 1i))));
    let var_3 = ~(reverseBits(~vec2<u32>(45891u, var_1.a.x) << (~vec2<u32>(var_1.a.x, u_input.c.x) % vec2<u32>(32u))) << (u_input.b % vec2<u32>(32u)));
    var var_4 = !arg_3.x;
    return Struct_2(false, Struct_1(~(var_3 | vec2<u32>(0u, 5047u)), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2425f), -1000f)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~28392u, 59241u, min(_wgslsmith_sub_u32(arg_0.b.a.x, u_input.b.x), arg_0.b.a.x)), _wgslsmith_div_vec3_u32(max(vec3<u32>(arg_0.b.a.x, 1u, arg_1.b.a.x) << (vec3<u32>(1u, arg_1.b.a.x, arg_1.b.a.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.a.x, arg_0.b.a.x, 23814u), vec3<u32>(u_input.b.x, arg_1.b.a.x, u_input.b.x))), vec3<u32>(~0u, _wgslsmith_clamp_u32(u_input.b.x, arg_0.b.a.x, arg_1.b.a.x), ~4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 6960u), u_input.c.x, arg_1.b.a.x), vec3<u32>(1u, arg_1.b.a.x, arg_0.b.a.x) & _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.a.x, 65334u, 39850u), vec3<u32>(13066u, 1u, u_input.a.x))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true, any(vec2<bool>(all(vec4<bool>(true, false, true, true)), true)), func_5(func_4(vec3<f32>(-434f, 1581f, -348f), func_1(), 0i, vec2<bool>(true, true)), func_4(vec3<f32>(-201f, -1026f, 335f), 1i, 0i, vec2<bool>(true, true)), _wgslsmith_div_f32(-565f, _wgslsmith_f_op_f32(min(-1446f, 189f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(573f * -732f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1039f)), -935f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2205f * 737f))), -1662f), all(vec2<bool>(!any(vec3<bool>(false, var_0.x, false)), any(vec2<bool>(true, true))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))));
    let var_3 = vec4<u32>(13461u, 0u, _wgslsmith_mult_u32(~select(26224u, 15189u, false), ~u_input.b.x >> (u_input.b.x % 32u)), ~abs(1u)) >> (~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(27182u, 21210u, 15759u, u_input.b.x), vec4<u32>(11178u, 6954u, u_input.c.x, u_input.b.x)))) % vec4<u32>(32u));
    var_2 = _wgslsmith_f_op_f32(var_1.x + var_1.x);
    var var_4 = ~_wgslsmith_mult_u32(4294967295u, ~4294967295u);
    var_4 = ~(~(~var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1185f, 519i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 1739f) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-var_1.x))), vec2<u32>(var_3.x, 1u));
}

