struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

var<private> global0: u32;

var<private> global1: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec3<u32> {
    global1 = !((true && all(vec2<bool>(true, true))) | false);
    global0 = u_input.a;
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, u_input.b.x)), -abs(firstTrailingBit(u_input.b.x) & abs(u_input.b.x)), 95261i);
    var_0 = u_input.b.x;
    global1 = false;
    return ~(select(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(u_input.a, 0u, 1u), true) ^ vec3<u32>(max(~u_input.a, _wgslsmith_mod_u32(1u, u_input.a)), 1u, reverseBits(u_input.a) >> (37339u % 32u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32) -> i32 {
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), (vec4<u32>(51123u, 4294967295u, u_input.a, 50720u) ^ vec4<u32>(u_input.a, u_input.a, 0u, 38145u)) << (vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a) % vec4<u32>(32u))), _wgslsmith_mod_u32(select(u_input.a, ~4294967295u, any(vec3<bool>(false, true, false))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 24690u), reverseBits(vec2<u32>(u_input.a, 48494u)))), 30902u);
    global1 = true;
    var var_1 = ~(~var_0.x) ^ (reverseBits(select(~u_input.a, u_input.a, true)) << (u_input.a % 32u));
    global1 = true;
    var_0 = firstTrailingBit(~max(~vec3<u32>(4294967295u, 10574u, 0u), reverseBits(vec3<u32>(u_input.a, 1u, 16137u)))) ^ ~func_3();
    return i32(-1i) * -_wgslsmith_add_i32(u_input.b.x, ~u_input.b.x);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1916f), 1142f)), 194f));
    let var_1 = ~abs(max(15976i, 0i));
    var var_2 = all(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), true)));
    let var_3 = vec4<bool>(true, !select(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), true), true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, false))) | true);
    var var_4 = vec3<i32>(-1i, -1i, -_wgslsmith_mult_i32(var_1, -1i));
    return arg_1.c;
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(4412i, _wgslsmith_mult_i32(2147483647i, u_input.b.x), 14322i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x), vec4<i32>(14061i, -2147483647i, 1i, 15259i))), vec4<i32>(u_input.b.x, 57793i, func_2(vec2<f32>(978f, -133f), vec4<f32>(-369f, 266f, -1386f, 1401f), -1194f), -11614i)), ~(abs(u_input.b.x) << (u_input.a % 32u))), Struct_2(Struct_1(func_2(vec2<f32>(1f, 1f), vec4<f32>(487f, -1295f, 446f, 657f), _wgslsmith_f_op_f32(-1000f - 1192f)), vec4<u32>(min(20177u, u_input.a), u_input.a, u_input.a, _wgslsmith_add_u32(42892u, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-547f, 1146f)))), Struct_1(~u_input.b.x, ~vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(212f, 296f))))), Struct_1(abs(u_input.b.x << (0u % 32u)), select(max(vec4<u32>(16503u, 0u, u_input.a, u_input.a), vec4<u32>(1u, 63292u, 16606u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 10044u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 21729u, u_input.a)), vec4<bool>(false, false, false, false)), -1065f)));
    let var_1 = _wgslsmith_sub_u32(var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a | 32070u, min(u_input.a, 49311u), u_input.a, ~var_0.b.x), _wgslsmith_div_vec4_u32(~var_0.b, var_0.b | vec4<u32>(27683u, 23045u, 0u, u_input.a))) & 4294967295u);
    return Struct_3(select(!vec4<bool>(false, any(vec3<bool>(true, true, true)), false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(true, false)), var_0.c >= var_0.c)), false, ~var_0.b, ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_4(_wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32(max(u_input.b, u_input.b), u_input.b), u_input.b, vec2<bool>(true, true)), reverseBits(u_input.b)), Struct_2(Struct_1(_wgslsmith_div_i32(~u_input.b.x, abs(-2147483647i)), ~var_0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-869f))))), Struct_1(min(u_input.b.x, 2147483647i), var_0.c, _wgslsmith_f_op_f32(round(871f))), func_4(-1i, Struct_2(Struct_1(-5634i, var_0.c, -1000f), Struct_1(u_input.b.x, vec4<u32>(var_0.d, var_0.c.x, 46832u, 45168u), 459f), func_4(-18859i, Struct_2(Struct_1(u_input.b.x, var_0.c, 504f), Struct_1(1i, var_0.c, -184f), Struct_1(0i, var_0.c, -540f)))))));
    let var_2 = reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 20300i, _wgslsmith_add_i32(-9529i, -58384i), 1i), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.a, 38104i, -2147483647i, u_input.b.x) >> (var_1.b % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.b.x, 1i, -2147483647i) >> (vec4<u32>(var_0.d, u_input.a, var_0.d, 1u) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(15858i, u_input.b.x, -2147483647i, -13807i), vec4<i32>(var_1.a, var_1.a, -29999i, -2147483647i))), ~(vec4<i32>(-2380i, u_input.b.x, -45076i, -2147483647i) ^ abs(vec4<i32>(8071i, -42605i, u_input.b.x, 2147483647i)))));
    var var_3 = 1u;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(-29480i, Struct_2(Struct_1(var_1.a, vec4<u32>(var_0.d, 4294967295u, var_1.b.x, var_0.c.x), var_1.c), Struct_1(1i, var_0.c, var_1.c), Struct_1(27955i, vec4<u32>(6326u, 1u, 0u, var_1.b.x), -2018f))).c * 1032f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -798f) + var_1.c)), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c + var_1.c)))) * var_1.c), func_4(2147483647i, Struct_2(Struct_1(19494i, select(vec4<u32>(u_input.a, var_1.b.x, 0u, var_1.b.x), vec4<u32>(var_0.c.x, var_1.b.x, 1u, 0u), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.b)), var_1.c), Struct_1(min(u_input.b.x, 38939i), _wgslsmith_sub_vec4_u32(var_1.b, var_1.b), -1000f), Struct_1(-var_1.a, var_1.b, _wgslsmith_f_op_f32(175f - var_1.c)))).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-664f)) + _wgslsmith_f_op_f32(select(var_4.x, -1411f, var_0.b))))));
}

