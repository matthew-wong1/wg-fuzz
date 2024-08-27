struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(27625i, 43556i);

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3, arg_3: u32) -> vec4<u32> {
    var var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-295f, _wgslsmith_f_op_f32(f32(-1f) * -294f))) - 595f))) + 1f);
    global1 = Struct_1(~arg_2.b.b.x, vec4<u32>(~arg_1.a.x, arg_2.c, abs(~_wgslsmith_dot_vec2_u32(arg_0.b.b.wz, arg_0.b.b.yz)), 4294967295u), abs(min(0i, arg_0.b.c)));
    let var_1 = !arg_1.b.xz;
    let var_2 = _wgslsmith_mult_vec4_u32(abs(vec4<u32>(~global1.a, ~0u, 19994u, 1u) | ~(vec4<u32>(22567u, 8595u, 6340u, 1u) << (global1.b % vec4<u32>(32u)))), ~(~(~_wgslsmith_clamp_vec4_u32(arg_2.b.b, vec4<u32>(arg_0.b.a, 0u, arg_1.a.x, 11241u), vec4<u32>(arg_2.c, u_input.e, 4294967295u, 4294967295u)))));
    return min(vec4<u32>(arg_3 ^ arg_0.e.b.x, 13476u, 78495u, 35742u << (~arg_1.a.x % 32u)), global1.b) | var_2;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: i32, arg_3: i32) -> Struct_2 {
    let var_0 = select(!vec4<bool>(false, (arg_1.b.x && arg_1.b.x) || arg_1.b.x, arg_1.b.x, true), arg_1.b, arg_1.b.x);
    var var_1 = Struct_2(select(!(!arg_1.b.xyy), vec3<bool>(!any(var_0.xyy), true, arg_1.b.x), !(!vec3<bool>(false, true, arg_1.b.x))), Struct_1(global1.a, func_3(Struct_2(!var_0.wyx, Struct_1(4294967295u, global1.b, -17586i), max(u_input.c, vec4<i32>(-1i, arg_0, u_input.c.x, arg_3)), countOneBits(u_input.c), Struct_1(u_input.a, vec4<u32>(global1.b.x, arg_1.a.x, u_input.a, 29569u), -25145i)), arg_1, Struct_3(u_input.c, Struct_1(u_input.a, global1.b, -40389i), 56747u), _wgslsmith_div_u32(9415u, u_input.a) ^ 0u), arg_3), abs(u_input.c), _wgslsmith_clamp_vec4_i32(u_input.c, -u_input.c, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_2, -24615i, -4458i), arg_0, -u_input.d, arg_3 & -1i), u_input.c)), Struct_1(~0u, vec4<u32>(~firstTrailingBit(arg_1.a.x), arg_1.a.x, min(_wgslsmith_mod_u32(arg_1.a.x, 4294967295u), ~0u), _wgslsmith_sub_u32(min(4294967295u, 52257u), func_3(Struct_2(arg_1.b.xzz, Struct_1(arg_1.a.x, global1.b, arg_3), vec4<i32>(-1i, arg_0, -16659i, 2147483647i), u_input.c, Struct_1(u_input.a, global1.b, 2147483647i)), Struct_4(vec3<u32>(arg_1.a.x, u_input.a, global1.a), vec4<bool>(false, true, var_0.x, var_0.x)), Struct_3(u_input.c, Struct_1(27127u, vec4<u32>(arg_1.a.x, 11182u, u_input.e, 27960u), 1i), global1.b.x), 1u).x)), min(arg_2, firstLeadingBit(_wgslsmith_div_i32(global0.x, arg_3)))));
    global2 = !(!var_0.x);
    let var_2 = ~(-3093i);
    global2 = all(select(arg_1.b.zyy, arg_1.b.zxy, false));
    return Struct_2(!vec3<bool>(true & (false && var_1.a.x), all(vec4<bool>(var_0.x, false, var_0.x, arg_1.b.x)), false), var_1.b, ~(vec4<i32>(-1i) * -vec4<i32>(-23088i, var_2, u_input.b.x, 1i)), -(~(~vec4<i32>(-2147483647i, 21049i, 20941i, 8118i))), var_1.b);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> Struct_1 {
    global0 = _wgslsmith_mod_vec2_i32(max(vec2<i32>(1i, _wgslsmith_clamp_i32(2147483647i, firstTrailingBit(u_input.b.x), -19581i >> (global1.b.x % 32u))), vec2<i32>(u_input.b.x, _wgslsmith_div_i32(77i << (global1.b.x % 32u), global1.c))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-18245i, _wgslsmith_mult_i32(arg_0.d.x, global1.c)), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.c.yy, arg_0.d.xy), ~vec2<i32>(1i, 41926i))));
    var var_0 = Struct_1(global1.a, vec4<u32>(23516u, 31221u << ((5235u | u_input.e) % 32u), abs(~u_input.a), ~4294967295u), _wgslsmith_div_i32(global1.c, select(arg_0.c.x, func_2(0i, Struct_4(arg_0.b.b.xwy, vec4<bool>(arg_0.a.x, false, true, true)), i32(-1i) * -2147483647i, _wgslsmith_mod_i32(global1.c, global1.c)).c.x, any(arg_0.a.zx))));
    var var_1 = Struct_1(firstTrailingBit(35111u), global1.b, -28760i);
    var_1 = Struct_1(countOneBits(countOneBits(1u)), vec4<u32>(max(abs(4294967295u), select(~arg_0.b.b.x, max(29526u, arg_0.e.a), true)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(firstLeadingBit(global1.b.x), 24900u), ~(~u_input.a)), var_1.a << (var_1.b.x % 32u), ~u_input.e), var_0.c);
    var_1 = Struct_1(global1.a ^ u_input.e, ~vec4<u32>(u_input.a, global1.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_0.a), vec2<u32>(var_0.a, 35219u)), _wgslsmith_sub_u32(~30729u, _wgslsmith_dot_vec3_u32(global1.b.yzz, vec3<u32>(4294967295u, arg_0.b.b.x, 59269u)))), _wgslsmith_add_i32(global0.x, _wgslsmith_add_i32(0i, -2147483647i)));
    return arg_0.b;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> vec4<i32> {
    global2 = !arg_2;
    global1 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), min(global1.a, 70602u), u_input.e, ~arg_0), arg_1.b), arg_1.b, _wgslsmith_add_i32(arg_1.c & global0.x, abs(2147483647i)));
    var var_0 = select(!vec4<bool>(!arg_2, arg_2, true, -global1.c != reverseBits(21678i)), select(select(!select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, arg_2)), select(!vec4<bool>(arg_2, arg_2, arg_2, false), !vec4<bool>(false, false, false, arg_2), arg_2), any(select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_2, true), arg_2))), vec4<bool>(true, arg_2, true, _wgslsmith_f_op_f32(sign(-1216f)) >= arg_3.x), any(select(!vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(arg_2, arg_2, false, arg_2), arg_3.x >= 1554f))), true);
    let var_1 = vec3<bool>(arg_0 == _wgslsmith_mult_u32(0u, max(func_2(1i, Struct_4(vec3<u32>(21691u, u_input.a, global1.b.x), vec4<bool>(arg_2, false, arg_2, true)), -28897i, 13096i).b.b.x, _wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(global1.a, 0u, global1.b.x, arg_1.a)))), !arg_2 && !(!any(vec4<bool>(true, var_0.x, false, false))), !(!(!all(var_0.wxx))));
    let var_2 = Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-global0.x), arg_1.c, _wgslsmith_dot_vec2_i32(max(vec2<i32>(6815i, global0.x), u_input.c.wz), u_input.c.xz ^ vec2<i32>(global0.x, u_input.c.x)), _wgslsmith_mult_i32(-22096i, global0.x)), u_input.c), arg_1, _wgslsmith_div_u32(31523u, arg_0));
    return var_2.a;
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: i32, arg_3: vec3<f32>) -> i32 {
    let var_0 = abs(_wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(u_input.e, 1u, 499u, arg_0.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, u_input.a), vec2<u32>(0u, 42601u)))) >> (~reverseBits(4294967295u) % 32u));
    global0 = u_input.b.xz << (abs(firstTrailingBit(~(~global1.b.yy))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.xz * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -460f))), 1899f)));
    let var_2 = Struct_2(arg_0.b.wwy, Struct_1(~u_input.e, abs(global1.b), _wgslsmith_sub_i32(reverseBits(2147483647i), -57248i) | _wgslsmith_sub_i32(~global0.x, ~u_input.c.x)), ~(u_input.c >> (countOneBits(global1.b) % vec4<u32>(32u))), func_5(u_input.a, func_4(func_2(global0.x, Struct_4(vec3<u32>(global1.b.x, global1.b.x, 86751u), arg_0.b), global1.c, global1.c), -619f, _wgslsmith_div_f32(-1594f, var_1.x)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 146f, var_1.x, -677f)))) & -(~max(vec4<i32>(-28960i, global0.x, -23365i, 21859i), u_input.c)), Struct_1(_wgslsmith_mod_u32(~var_0 ^ ~63157u, ~_wgslsmith_add_u32(global1.a, 1u)), func_2(_wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, -2147483647i, 21363i), reverseBits(-2147483647i)), arg_0, firstLeadingBit(u_input.d << (global1.a % 32u)), ~reverseBits(0i)).b.b, abs(i32(-1i) * -1i)));
    global0 = var_2.d.xy;
    return func_5(4294967295u, func_2(u_input.b.x, Struct_4(vec3<u32>(4294967295u, global1.b.x, var_2.b.b.x), arg_0.b), -1i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_2.c, u_input.c), u_input.b.x)).e, arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.x, -683f, -241f, -2199f)))))).x << (~29560u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_i32(10442i, func_1(Struct_4(global1.b.xyy | global1.b.xxx, select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false))), true, 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-184f, -1025f, -1000f), vec3<f32>(-401f, 323f, 391f), vec3<bool>(false, false, false))))));
    global2 = false;
    var var_1 = func_2(((global0.x << (func_2(56688i, Struct_4(vec3<u32>(84359u, 18736u, global1.a), vec4<bool>(false, true, false, true)), 23700i, 2147483647i).e.a % 32u)) >> (_wgslsmith_mod_u32(reverseBits(global1.a), 73273u) % 32u)) ^ global0.x, Struct_4(vec3<u32>(u_input.e, func_3(func_2(global1.c, Struct_4(global1.b.xzx, vec4<bool>(false, true, true, true)), 20423i, -62788i), Struct_4(global1.b.wwy, vec4<bool>(true, false, true, false)), Struct_3(u_input.c, Struct_1(u_input.e, global1.b, var_0), u_input.a), ~15249u).x, func_2(var_0 | var_0, Struct_4(vec3<u32>(global1.b.x, 0u, 48001u), vec4<bool>(true, false, false, false)), global1.c, func_1(Struct_4(global1.b.xzw, vec4<bool>(true, true, true, false)), false, 0i, vec3<f32>(-1549f, -1000f, 106f))).e.b.x), select(vec4<bool>(true, false, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), true)), max(~_wgslsmith_mult_i32(-var_0, _wgslsmith_div_i32(global1.c, global1.c)), ~var_0), func_1(Struct_4(global1.b.wyw, vec4<bool>(true, true, true, false)), select(func_2(global1.c, Struct_4(vec3<u32>(u_input.a, global1.b.x, u_input.a), vec4<bool>(false, false, false, true)), 1i, 1i).a.x, true, true), _wgslsmith_sub_i32(_wgslsmith_div_i32(~global1.c, ~(-1i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(13801i, global0.x), vec2<i32>(-10850i, u_input.b.x)), ~u_input.c.xz)), vec3<f32>(_wgslsmith_f_op_f32(sign(201f)), _wgslsmith_f_op_f32(round(1947f)), 1113f)));
    var var_2 = Struct_3(min(reverseBits(func_2(-2960i, Struct_4(global1.b.xwz, vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x)), -63269i, -2147483647i).d) >> (~firstTrailingBit(global1.b) % vec4<u32>(32u)), u_input.c), func_4(Struct_2(var_1.a, Struct_1(firstLeadingBit(0u), global1.b, -global0.x), max(~u_input.c, -var_1.c), u_input.c, var_1.b), _wgslsmith_f_op_f32(floor(-883f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1862f * 209f), _wgslsmith_f_op_f32(1003f + -411f)))))), ~(~_wgslsmith_add_u32(68528u & var_1.b.a, _wgslsmith_clamp_u32(u_input.a, 0u, u_input.a))));
    var var_3 = _wgslsmith_sub_vec4_i32(u_input.c, var_2.a);
    global2 = var_1.a.x;
    global0 = -max(_wgslsmith_sub_vec2_i32(select(var_3.zx, vec2<i32>(var_2.b.c, var_1.b.c), var_1.a.x) | -var_2.a.wx, -vec2<i32>(global0.x, var_1.c.x) << (var_2.b.b.ww % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(u_input.c.wz, vec2<i32>(global0.x, var_2.a.x)));
    let var_4 = func_2(_wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(firstTrailingBit(13923i), -31124i)), Struct_4(vec3<u32>(4294967295u, abs(firstTrailingBit(1u)), func_3(Struct_2(var_1.a, Struct_1(var_1.b.a, global1.b, var_2.b.c), u_input.c, vec4<i32>(7217i, -18858i, var_1.c.x, 34952i), var_2.b), Struct_4(vec3<u32>(var_2.c, 118871u, 4294967295u), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x)), Struct_3(vec4<i32>(9286i, 14062i, -2147483647i, var_2.b.c), Struct_1(0u, vec4<u32>(global1.a, u_input.e, var_2.c, global1.a), -9784i), 1u), _wgslsmith_mult_u32(10204u, 1u)).x), select(!(!vec4<bool>(var_1.a.x, false, false, true)), vec4<bool>(true, false, true, true), min(global1.a, 1661u) == ~u_input.a)), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(max(var_2.b.c, var_2.a.x), -2147483647i, var_2.b.c, u_input.d) | abs(~vec4<i32>(15285i, 13970i, u_input.b.x, 1i))), var_2.a.x);
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(var_4, Struct_4(_wgslsmith_mod_vec3_u32(var_1.e.b.yyz, var_1.b.b.wyz), select(vec4<bool>(false, true, false, false), vec4<bool>(var_1.a.x, var_4.a.x, var_1.a.x, true), vec4<bool>(true, false, var_1.a.x, true))), Struct_3(var_1.c, Struct_1(var_2.b.b.x, vec4<u32>(u_input.e, 84973u, 4294967295u, 64609u), u_input.b.x), global1.a), abs(_wgslsmith_mod_u32(global1.a, 4294967295u))), 38654u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(909f + 580f) - _wgslsmith_f_op_f32(-1577f * -1880f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(854f, 177f))))));
}

