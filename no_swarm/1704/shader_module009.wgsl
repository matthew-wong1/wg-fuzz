struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_4) -> vec4<i32> {
    global0 = _wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(~4294967295u, u_input.b)), 4383u);
    global0 = u_input.b;
    global0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(~arg_3.b.b.x, u_input.b), _wgslsmith_mult_u32(u_input.b, ~_wgslsmith_mod_u32(arg_3.b.b.x, 61037u)) ^ 0u);
    global0 = arg_3.b.b.x;
    global0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~firstLeadingBit(31325u), 59255u, ~reverseBits(arg_3.b.b.x), u_input.b), _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 9476u, 33023u, u_input.b), vec4<u32>(u_input.b, u_input.b, arg_3.b.b.x, 0u) >> (vec4<u32>(58730u, 10314u, 0u, 4294967295u) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(arg_3.b.b.x, min(1u, arg_3.b.b.x), ~1u, ~1u))));
    return ~select(~(-arg_3.a | (vec4<i32>(u_input.a, 1i, 39486i, u_input.a) | vec4<i32>(-2147483647i, -26357i, -2147483647i, u_input.a))), firstTrailingBit(_wgslsmith_div_vec4_i32(arg_3.a, arg_3.a) | ~vec4<i32>(2147483647i, 0i, 0i, u_input.a)), !arg_2);
}

fn func_2() -> i32 {
    let var_0 = true;
    let var_1 = Struct_4(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-352f, 1370f)))), Struct_3(_wgslsmith_f_op_f32(-650f + -1252f)), var_0, Struct_4(firstTrailingBit(-vec4<i32>(u_input.a, -5773i, u_input.a, u_input.a)), Struct_1(_wgslsmith_f_op_f32(step(-364f, 939f)), countOneBits(vec2<u32>(6514u, u_input.b)), select(vec3<bool>(false, var_0, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, false))))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-325f, -432f)))))), vec2<u32>(~(84893u & u_input.b), u_input.b), vec3<bool>(false, any(!vec4<bool>(false, var_0, var_0, false)), select(var_0, true, var_0) & var_0)));
    let var_2 = _wgslsmith_mod_i32(-1i, u_input.a);
    global0 = ~(~(~0u));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-746f, _wgslsmith_f_op_f32(sign(-148f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(1945f)), _wgslsmith_f_op_f32(floor(433f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b.a, var_1.b.a), vec2<f32>(1019f, var_1.b.a)))))));
    return u_input.a;
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> vec4<u32> {
    var var_0 = arg_0.a;
    let var_1 = max(vec4<i32>(1786i, u_input.a, u_input.a, _wgslsmith_div_i32(0i, -u_input.a)) & vec4<i32>(~max(u_input.a, u_input.a), abs(max(20805i, u_input.a)), ~countOneBits(u_input.a), func_2()), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(22726i, 1i, u_input.a, u_input.a) ^ (vec4<i32>(53831i, 0i, u_input.a, u_input.a) >> (vec4<u32>(u_input.b, 3016u, 4294967295u, arg_1) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(u_input.a, 1i, -5298i, -1i)))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -481f)))));
    var var_3 = _wgslsmith_f_op_f32(min(-190f, _wgslsmith_f_op_f32(-1f)));
    var var_4 = Struct_4(vec4<i32>(24984i, -reverseBits(_wgslsmith_dot_vec4_i32(var_1, var_1)), ~_wgslsmith_mult_i32(u_input.a, u_input.a) << (arg_1 % 32u), u_input.a), Struct_1(_wgslsmith_f_op_f32(sign(-179f)), vec2<u32>(arg_1 | 95985u, 0u), vec3<bool>(true, !select(true, true, false), all(vec4<bool>(false, true, false, true)))));
    return countOneBits(reverseBits(countOneBits(vec4<u32>(1u, var_4.b.b.x, 4294967295u, 3721u)) ^ vec4<u32>(arg_1, 4955u, 10526u, 16537u << (u_input.b % 32u))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = false;
    var_0 = true;
    let var_1 = min(~(_wgslsmith_add_vec2_i32(~vec2<i32>(arg_1.d, arg_1.d), vec2<i32>(u_input.a, 4927i)) & (abs(vec2<i32>(arg_1.b, 1i)) ^ vec2<i32>(u_input.a, 0i))), vec2<i32>(abs(arg_1.d) | ~_wgslsmith_div_i32(52407i, arg_1.b), -83185i));
    let var_2 = Struct_4(vec4<i32>((_wgslsmith_mult_i32(0i, u_input.a) ^ ~var_1.x) ^ 26528i, ~_wgslsmith_sub_i32(~u_input.a, var_1.x ^ 2705i), _wgslsmith_mult_i32(u_input.a, arg_1.d), u_input.a), arg_1.c);
    var var_3 = ~_wgslsmith_mult_u32(abs(4294967295u), u_input.b);
    return !vec2<bool>(true, true | (arg_3.x & false));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = select(!(!vec3<bool>(any(arg_0), true, var_0.c.c.x)), vec3<bool>(any(var_0.c.c.zx), 1i != -(u_input.a >> (u_input.b % 32u)), false), vec3<bool>(false, all(arg_2.c.c) & true, !arg_0.x));
    var var_2 = !(!(!arg_2.c.c));
    let var_3 = !(!select(select(select(vec4<bool>(arg_0.x, var_0.c.c.x, arg_2.c.c.x, false), vec4<bool>(var_0.c.c.x, var_2.x, true, var_2.x), vec4<bool>(arg_0.x, true, false, var_1.x)), vec4<bool>(var_2.x, arg_2.c.c.x, false, var_2.x), true), vec4<bool>(u_input.b > 36784u, any(vec3<bool>(true, var_2.x, var_2.x)), true, all(arg_2.c.c)), select(select(vec4<bool>(var_0.c.c.x, true, arg_0.x, arg_0.x), vec4<bool>(true, true, var_1.x, arg_2.c.c.x), vec4<bool>(false, var_2.x, var_0.c.c.x, true)), select(vec4<bool>(var_1.x, arg_0.x, true, arg_0.x), vec4<bool>(false, true, false, var_0.c.c.x), false), !var_0.c.c.x)));
    var var_4 = ~vec3<i32>(~(_wgslsmith_mult_i32(-2147483647i, arg_2.b) >> (~81678u % 32u)), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_0.b) >> (arg_2.c.b % vec2<u32>(32u)), ~vec2<i32>(2147483647i, 1i))), u_input.a);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(~(~(~u_input.b)), 46929u, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, 29657u), u_input.b));
    var var_1 = 0u;
    let var_2 = func_5(!(!func_4(~u_input.b, Struct_2(vec4<f32>(-1193f, 1519f, 2353f, 479f), -1i, Struct_1(-474f, vec2<u32>(u_input.b, u_input.b), vec3<bool>(true, false, true)), -2147483647i, vec2<f32>(1000f, -516f)), func_1(Struct_3(1218f), 1u), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -767f)), Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, 1671f, 2287f) - vec4<f32>(-765f, -202f, 876f, 876f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(403f, -1358f, -125f, -1393f) + vec4<f32>(-2538f, -1619f, -965f, -802f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(454f)), -933f, _wgslsmith_f_op_f32(select(-551f, 1559f, false)), _wgslsmith_f_op_f32(600f * 125f)))), u_input.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1121f)), vec2<u32>(19764u & u_input.b, 48034u), vec3<bool>(true, u_input.a > u_input.a, false)), u_input.a, _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(step(-298f, 721f))), vec2<f32>(-374f, -310f))));
    var var_3 = _wgslsmith_div_i32(~(i32(-1i) * -45184i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-abs(vec3<i32>(-1i, var_2.b, u_input.a)), vec3<i32>(var_2.d, 19267i | u_input.a, func_3(-315f, Struct_3(var_2.a.x), var_2.c.c.x, Struct_4(vec4<i32>(var_2.b, 2147483647i, -6126i, -62701i), var_2.c)).x)), -(~vec3<i32>(2147483647i, u_input.a, u_input.a) >> (vec3<u32>(1u, var_2.c.b.x, u_input.b) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(1023f, _wgslsmith_f_op_f32(var_2.c.a * var_2.a.x))), min(-_wgslsmith_div_vec4_i32(vec4<i32>(1i, 7235i, -44200i, var_2.d), min(vec4<i32>(var_2.d, u_input.a, 39082i, -1054i), vec4<i32>(-44753i, 58499i, var_2.d, u_input.a))), vec4<i32>(i32(-1i) * -u_input.a, u_input.a | 1i, _wgslsmith_add_i32(func_5(var_2.c.c.zy, Struct_3(1446f), var_2).b, 0i), 0i)), vec4<u32>(4032u << (max(var_2.c.b.x, 54164u) % 32u), 0u, func_1(Struct_3(430f), u_input.b).x, firstLeadingBit(min(firstLeadingBit(36075u), _wgslsmith_mult_u32(var_2.c.b.x, 4294967295u)))), max(~(~var_0), 1u));
}

