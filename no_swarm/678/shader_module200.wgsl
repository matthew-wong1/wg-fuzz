struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = Struct_5(_wgslsmith_mult_i32(firstTrailingBit(i32(-1i) * -1i), reverseBits(_wgslsmith_sub_i32(13458i, u_input.b) >> (_wgslsmith_mod_u32(arg_0.a.x, 8963u) % 32u))), Struct_2(firstLeadingBit(_wgslsmith_mod_i32(u_input.b, -38192i)), _wgslsmith_div_i32(u_input.b ^ abs(u_input.b), reverseBits(_wgslsmith_sub_i32(u_input.b, 2147483647i)))));
    var_0 = Struct_5(-2147483647i, var_0.b);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-150f + -1000f)))))), arg_1));
    let var_2 = select(58567u, ~arg_0.a.x, false);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(656f + 1356f));
    return _wgslsmith_add_i32(var_0.a, _wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(u_input.b, ~2147483647i, -35688i)));
}

fn func_3() -> vec4<u32> {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(select(~countOneBits(vec2<i32>(u_input.b, u_input.b)), -countOneBits(vec2<i32>(u_input.b, -10812i)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, 2147483647i), vec4<i32>(-24273i, u_input.b, u_input.b, -1i)), 37759i) & _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(21149i, 2147483647i)), firstLeadingBit(vec2<i32>(u_input.b, 0i))), -abs(vec2<i32>(283i, u_input.b)) & -(~vec2<i32>(-2147483647i, -5372i)), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true))), select(vec2<i32>(max(u_input.b, -1i ^ u_input.b), _wgslsmith_add_i32(countOneBits(1i), u_input.b)), firstLeadingBit(_wgslsmith_sub_vec2_i32(~vec2<i32>(-12602i, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(-21190i, -48344i), vec2<i32>(22342i, u_input.b)))), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false))));
    let var_2 = ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.a.x, 39627u, 8490u) ^ countOneBits(vec3<u32>(0u, 0u, 23426u))), select(vec3<u32>(~0u, u_input.a.x, _wgslsmith_mult_u32(62405u, 1u)), vec3<u32>(1856u, u_input.a.x, u_input.a.x) << ((vec3<u32>(1u, 2422u, u_input.a.x) & vec3<u32>(u_input.a.x, 27948u, 17724u)) % vec3<u32>(32u)), true));
    var var_3 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(8487u, 1u, 0u, 26812u) << (firstLeadingBit(vec4<u32>(var_2.x, u_input.a.x, 2801u, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 10518u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, var_2.x, u_input.a.x)) << (min(vec4<u32>(1u, 0u, u_input.a.x, 6445u), vec4<u32>(u_input.a.x, 0u, 3521u, 40458u)) % vec4<u32>(32u))), ~vec4<u32>(u_input.a.x, u_input.a.x, var_2.x | 9612u, ~u_input.a.x)));
    let var_4 = -max(-(abs(vec3<i32>(-2147483647i, 2147483647i, var_1.x)) >> (~vec3<u32>(4294967295u, u_input.a.x, var_2.x) % vec3<u32>(32u))), ~(vec3<i32>(u_input.b, u_input.b, var_1.x) << (vec3<u32>(var_2.x, 4294967295u, 45445u) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(var_3.a.yzz ^ vec3<u32>(23707u, var_2.x, u_input.a.x), var_2) % vec3<u32>(32u)));
    return abs((var_3.a >> (var_3.a % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(4294967295u, var_2.x, 0u, 1u), vec4<u32>(4294967295u, 53104u, 22537u, 4294967295u)), countOneBits(vec4<u32>(0u, u_input.a.x, var_3.a.x, u_input.a.x))), var_3.a));
}

fn func_1() -> vec4<u32> {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, func_2(Struct_1(vec4<u32>(101181u, 1u, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(357f + -257f)), u_input.b), -vec3<i32>(countOneBits(u_input.b) >> (5234u % 32u), _wgslsmith_sub_i32(1i, -11124i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -54309i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 41070i, u_input.b)))));
    var var_1 = ~vec4<u32>(0u, abs(~(~15323u)), _wgslsmith_mod_u32(countOneBits(u_input.a.x) >> (1u % 32u), u_input.a.x), _wgslsmith_add_u32(u_input.a.x, ~(~0u)));
    var_1 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(~func_3(), _wgslsmith_mod_vec4_u32(vec4<u32>(879u, 0u, var_1.x, 55281u), vec4<u32>(var_1.x, var_1.x, var_1.x, 0u)) >> (abs(vec4<u32>(37768u, 1u, 84348u, var_1.x)) % vec4<u32>(32u))), abs(~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, var_1.x) >> (vec4<u32>(770u, u_input.a.x, var_1.x, 1u) % vec4<u32>(32u)))), _wgslsmith_div_vec4_u32(vec4<u32>(~firstLeadingBit(u_input.a.x), ~reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(~u_input.a, _wgslsmith_div_vec2_u32(var_1.wz, u_input.a)), u_input.a.x), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, var_1.x), vec3<u32>(1u, u_input.a.x, var_1.x))), select(1u, 43572u, false) << (~var_1.x % 32u), u_input.a.x, 0u)));
    return _wgslsmith_add_vec4_u32(select(firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.a.x, 0u, var_1.x, 48256u))), vec4<u32>(1u, u_input.a.x, u_input.a.x, countOneBits(u_input.a.x) >> (~4294967295u % 32u)), !vec4<bool>(true, true, true, u_input.b == var_0.x)), firstLeadingBit(firstTrailingBit(vec4<u32>(select(u_input.a.x, 0u, false), abs(u_input.a.x), 1u, 16520u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    let var_1 = Struct_1(firstLeadingBit(_wgslsmith_div_vec4_u32(func_1(), vec4<u32>(938u, u_input.a.x, 21898u, u_input.a.x))));
    var var_2 = Struct_2(_wgslsmith_add_i32(_wgslsmith_div_i32(39667i, u_input.b), ~firstLeadingBit(_wgslsmith_sub_i32(0i, -12438i))), _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(u_input.b, -1i))) << (vec2<u32>(func_3().x, 0u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(max(-vec2<i32>(u_input.b, 2147483647i), ~vec2<i32>(1i, u_input.b)), ~(-vec2<i32>(7897i, -2147483647i)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-156f, _wgslsmith_f_op_f32(-150f - var_0))));
    let var_4 = var_1.a.xxz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(388f, -967f, true)))), -977f, -vec2<i32>(-var_2.a & -u_input.b, _wgslsmith_sub_i32(0i, ~var_2.b)));
}

