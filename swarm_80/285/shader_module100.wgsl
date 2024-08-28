struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 55037u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    global0 = ~(~u_input.d.x);
    global0 = 4294967295u;
    global0 = ~u_input.d.x;
    global0 = min(~(~u_input.d.x), ~u_input.b);
    global0 = 0u;
    return !vec4<bool>(all(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true))), -27093i >= ((i32(-1i) * -17984i) >> (firstTrailingBit(7477u) % 32u)), select(true, true, true) != (u_input.c.x >= _wgslsmith_mod_i32(2147483647i, 9097i)), any(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), any(vec4<bool>(true, false, false, false)))));
}

fn func_2(arg_0: Struct_5, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_4(vec4<f32>(206f, _wgslsmith_f_op_f32(arg_0.c * arg_0.b.a.x), arg_0.c, _wgslsmith_f_op_f32(trunc(1313f))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, arg_0.b.b), countOneBits(u_input.a)));
    global0 = 21786u;
    global0 = select(~1u | ~u_input.d.x, 28657u, !arg_1);
    var var_1 = !select(select(!(!vec4<bool>(arg_1, false, true, arg_1)), select(vec4<bool>(true, true, arg_1, arg_1), select(vec4<bool>(false, false, false, true), vec4<bool>(arg_1, true, true, true), vec4<bool>(true, arg_1, arg_1, arg_1)), arg_1 && true), vec4<bool>(arg_1, all(vec2<bool>(false, arg_1)), false, arg_1)), !vec4<bool>(true, true, !arg_1, false), func_3(_wgslsmith_clamp_i32(~1i, firstLeadingBit(arg_0.b.b.x), -2147483647i)));
    var_1 = select(select(select(select(select(vec4<bool>(true, true, true, arg_1), vec4<bool>(arg_1, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, arg_1, false, false), true), select(!vec4<bool>(var_1.x, true, true, true), func_3(arg_0.b.b.x), vec4<bool>(arg_1, false, var_1.x, arg_1)), var_1.x), !select(vec4<bool>(arg_1, false, arg_1, var_1.x), vec4<bool>(arg_1, true, false, arg_1), !arg_1), vec4<bool>(any(!var_1.wz), !(!arg_1), arg_1 | (arg_1 == arg_1), func_3(_wgslsmith_sub_i32(arg_0.b.b.x, arg_0.b.b.x)).x)), !select(func_3(_wgslsmith_div_i32(arg_0.b.b.x, -1i)), !select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(var_1.x, var_1.x, var_1.x, true), false), 1i >= firstTrailingBit(-53216i)), func_3(_wgslsmith_div_i32(u_input.c.x, abs(var_0.b.x))));
    return Struct_1(vec2<bool>(true, func_3(firstLeadingBit(~(-1i))).x), (_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 0u, 66717u, arg_0.a.x), vec4<u32>(4294967295u, u_input.d.x, u_input.b, 33663u), vec4<bool>(arg_1, false, false, arg_1)), select(vec4<u32>(u_input.b, 4294967295u, 32291u, arg_0.a.x), vec4<u32>(95836u, 4294967295u, 0u, 1u), true)) & arg_0.a.x) ^ (16639u << (0u % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(1643f * -1198f);
    global0 = ~abs(_wgslsmith_clamp_u32(37570u, arg_0.c.b, 74637u));
    let var_1 = arg_0.c;
    var var_2 = ~(-abs(select(~2147483647i, -arg_0.b.x, var_1.a.x)));
    var_0 = _wgslsmith_f_op_f32(736f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-244f * _wgslsmith_div_f32(320f, 839f)), _wgslsmith_f_op_f32(-145f + _wgslsmith_f_op_f32(min(1381f, 121f)))))));
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(-593f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(224f + -163f), -150f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(f32(-1f) * -1261f), !arg_0.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -1752f), _wgslsmith_f_op_f32(step(-1155f, 1000f)))), 269f), max(u_input.c.www, vec3<i32>(-2147483647i << (arg_0.d.x % 32u), reverseBits(0i), 2147483647i << (u_input.b % 32u))) >> (max(~abs(vec3<u32>(0u, 0u, 31611u)), reverseBits(vec3<u32>(var_1.b, 2127u, 80988u)) & firstLeadingBit(vec3<u32>(4294967295u, arg_1, 4294967295u))) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    global0 = u_input.b;
    global0 = u_input.d.x;
    let var_0 = Struct_5(abs(u_input.d), func_4(Struct_2(Struct_1(arg_0.zz, _wgslsmith_clamp_u32(u_input.d.x, u_input.b, u_input.d.x)), vec2<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 38314i, u_input.c.x), u_input.c.yyy)), func_2(Struct_5(u_input.d, Struct_4(vec4<f32>(181f, 332f, -2665f, 1325f), u_input.a), -193f), true), ~(vec2<u32>(u_input.d.x, 49195u) >> (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u)))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.b), _wgslsmith_mod_u32(4294967295u, u_input.b)), _wgslsmith_div_u32(u_input.d.x, ~u_input.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))) - 573f));
    var var_1 = var_0.b.a;
    let var_2 = func_2(Struct_5(~vec2<u32>(0u, u_input.d.x) & var_0.a, func_4(Struct_2(Struct_1(vec2<bool>(false, false), var_0.a.x), -vec2<i32>(var_0.b.b.x, u_input.a.x), Struct_1(vec2<bool>(true, arg_0.x), 4294967295u), countOneBits(vec2<u32>(var_0.a.x, u_input.d.x))), 1u), var_0.c), arg_0.x);
    return func_4(Struct_2(var_2, -var_0.b.b.yz, func_2(Struct_5(var_0.a, Struct_4(vec4<f32>(var_0.c, var_0.c, var_1.x, var_1.x), u_input.c.wzz), 1384f), select(var_2.a.x, false, false)), ~min(~vec2<u32>(4294967295u, 4294967295u), firstTrailingBit(u_input.d))), 44188u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_add_i32(u_input.a.x, u_input.c.x) <= (reverseBits(-14588i) << (~(~(u_input.d.x >> (1u % 32u))) % 32u));
    var var_2 = var_0.a.x;
    var_2 = 520f;
    var_0 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.x, -347f)) + _wgslsmith_f_op_f32(-990f + var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1090f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * 282f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -667f, var_0.a.x, var_0.a.x) * vec4<f32>(-529f, var_0.a.x, -1000f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(max(var_0.a, var_0.a)), vec4<bool>(var_1, false, false, var_1))))), vec3<i32>(0i, -1i, var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, -1i), vec3<i32>(u_input.c.x, var_0.b.x, u_input.a.x)))) | _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(-1i, u_input.a.x, -1i, u_input.c.x))), u_input.c), _wgslsmith_f_op_vec3_f32(-var_0.a.zyx), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + 907f) + var_0.a.x)))), 0u);
}

