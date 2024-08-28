struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1354f, -602f, -196f);

var<private> global1: Struct_4 = Struct_4(1433f, Struct_2(true, true, Struct_1(7718i), Struct_1(2147483647i), 1u), Struct_2(true, false, Struct_1(0i), Struct_1(-35676i), 4294967295u), vec4<i32>(2147483647i, -5968i, -1i, -39514i), vec2<f32>(-771f, -1659f));

var<private> global2: array<Struct_3, 28>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> vec2<f32> {
    let var_0 = global1.b.a;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -643f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-274f * global0.x), _wgslsmith_f_op_f32(round(-310f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-786f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-246f)))))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.e.x)), global1.a), global1.b, global1.b, _wgslsmith_add_vec4_i32(vec4<i32>(~firstTrailingBit(42161i), -1i, global1.c.c.a, 0i), _wgslsmith_clamp_vec4_i32(global1.d, vec4<i32>(global1.b.d.a & u_input.e.x, -arg_0, _wgslsmith_mult_i32(-16346i, arg_0), -global1.c.c.a), global1.d >> (~vec4<u32>(4294967295u, 21648u, u_input.d.x, 84514u) % vec4<u32>(32u)))), global1.e);
    let var_1 = vec2<i32>(var_0.b.c.a, min(~27198i, ~(-arg_0)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(~vec4<i32>(var_1.x, var_0.d.x, arg_0, -10766i)))))), _wgslsmith_div_u32(22384u, ~(~4294967295u)), var_0.c, var_0.b.d, var_0.c.c);
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_2 {
    let var_0 = vec2<bool>(all(!(!select(vec4<bool>(arg_0, global1.c.b, true, global1.c.b), vec4<bool>(global1.b.a, arg_0, global1.b.a, arg_0), true))), false);
    var var_1 = global0.yz;
    global0 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(1582f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-156f, _wgslsmith_f_op_f32(-var_1.x))))));
    var var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, ~0u, u_input.d.x, _wgslsmith_sub_u32(~arg_1.b, u_input.b)), vec4<u32>(~(~countOneBits(39741u)), 23870u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, arg_1.c.e, 4294967295u), 1u), ~21193u));
    var_1 = _wgslsmith_f_op_vec2_f32(func_3(firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-2147483647i, arg_1.c.d.a), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d.a, -28407i, 12335i, 0i), global1.d), 46598i), 1i, 7853i, u_input.c))));
    return func_2(~_wgslsmith_mult_i32(arg_1.e.a, -_wgslsmith_mod_i32(-2147483647i, arg_1.e.a))).c;
}

fn func_1() -> Struct_4 {
    global1 = Struct_4(1187f, func_4(true, func_2(~_wgslsmith_div_i32(u_input.e.x, global1.c.c.a))), func_2(_wgslsmith_mod_i32(u_input.c, -1i)).c, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, 1i, _wgslsmith_sub_i32(-33528i, -60493i), -u_input.c) ^ global1.d, global1.d), vec2<f32>(766f, global0.x));
    return Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1000f)))), func_2(select(~u_input.c, ~global1.b.d.a, !(global1.b.e <= 0u))).c, Struct_2(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), global1.c.b, Struct_1(~_wgslsmith_mult_i32(u_input.c, global1.d.x)), global1.b.c, global1.b.e), global1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1312f, -1146f) * global0.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global2 = array<Struct_3, 28>();
    let var_0 = _wgslsmith_clamp_i32(func_2(global1.d.x).d.a << (_wgslsmith_div_u32(1u, u_input.a) % 32u), _wgslsmith_add_i32(-func_4(global1.c.a, Struct_3(global1.e, 73024u, Struct_2(false, true, global1.c.d, global1.b.d, 77305u), global1.c.c, Struct_1(-12879i))).d.a, -23479i), u_input.c);
    var var_1 = -18996i;
    var var_2 = ~(_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.e.x, -46342i, u_input.c, u_input.c) << (vec4<u32>(u_input.a, u_input.a, u_input.b, 71060u) % vec4<u32>(32u)), global1.d), min(vec4<i32>(global1.b.c.a, -20873i, u_input.e.x, -23139i) << (vec4<u32>(global1.b.e, global1.c.e, 75754u, 18737u) % vec4<u32>(32u)), global1.d)) >> (global1.c.e % 32u));
    global2 = array<Struct_3, 28>();
    let var_3 = vec3<bool>(any(!vec2<bool>(false, any(vec4<bool>(global1.c.b, global1.c.a, global1.b.a, global1.b.a)))), false, all(!select(select(vec4<bool>(global1.b.b, global1.b.a, false, global1.b.a), vec4<bool>(false, false, global1.c.b, false), vec4<bool>(true, false, false, false)), vec4<bool>(global1.c.a, false, false, global1.b.b), true)));
    global1 = Struct_4(-392f, Struct_2(func_1().c.e <= u_input.d.x, !global1.c.a, func_2(u_input.e.x).e, func_2(-10397i).d, _wgslsmith_mod_u32(u_input.d.x, reverseBits(u_input.a))), func_2(_wgslsmith_add_i32(u_input.c, -15724i)).c, global1.d, global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32((vec4<u32>(1u, 2949u, u_input.d.x, 10205u) | vec4<u32>(4294967295u, u_input.a, 47386u, 1u)) & ~vec4<u32>(global1.c.e, 1u, 95975u, 40800u), max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, global1.c.e, 10457u), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, global1.b.e)), vec4<u32>(4294967295u, 4294967295u, u_input.d.x, 1u) ^ vec4<u32>(35034u, global1.c.e, 2696u, 63240u))) & (~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 59254u, u_input.b, 1u), vec4<u32>(4294967295u, global1.b.e, 0u, 1u)) & _wgslsmith_div_vec4_u32(vec4<u32>(47421u, 49536u, u_input.a, 0u), vec4<u32>(u_input.a, global1.b.e, 11560u, global1.c.e) & vec4<u32>(global1.b.e, 1u, u_input.d.x, global1.b.e))));
}

