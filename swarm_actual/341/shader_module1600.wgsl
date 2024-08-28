struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(arg_3.x * arg_3.x))) - arg_3.x) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.x - arg_3.x)));
    return u_input.c.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(1319u, u_input.c.x), u_input.c.x) >> (0u % 32u), u_input.c.x, u_input.c.x);
    var var_1 = _wgslsmith_mult_u32(max(func_3(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_3.a, 1i, 22913i), vec4<i32>(-16817i, 57096i, -64804i, -33328i)), true, u_input.a.x | -2147483647i, vec2<i32>(1i, global0.x)), _wgslsmith_mult_vec3_i32(arg_0, arg_0 ^ vec3<i32>(u_input.b.x, global0.x, arg_0.x)), -vec3<i32>(global0.x, -25761i, -10623i), vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -552f))), max(~var_0.x << (4294967295u % 32u), 4294967295u)), u_input.c.x);
    let var_2 = Struct_1(vec4<i32>(-1i, -11648i, _wgslsmith_sub_i32(8411i, ~(-31615i)), ~(arg_0.x >> ((u_input.c.x ^ var_0.x) % 32u))), !(!arg_2 | true), i32(-1i) * -arg_0.x, reverseBits(max((vec2<i32>(arg_3.a, global0.x) ^ arg_0.yy) & vec2<i32>(u_input.b.x, arg_0.x), arg_0.yy)));
    global0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(var_2.d, arg_0.xz), vec2<i32>(_wgslsmith_div_i32(countOneBits(_wgslsmith_mod_i32(0i, arg_0.x)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, -34192i), 1i)), abs(-_wgslsmith_mod_i32(24074i, u_input.b.x))), -(~countOneBits(-vec2<i32>(arg_0.x, -2147483647i))));
    var_1 = var_0.x;
    return _wgslsmith_sub_vec2_i32(arg_0.xy, ~(vec2<i32>(-1i) * -u_input.b.xz) ^ select(arg_0.xy, u_input.b.yx, arg_1.xx));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> i32 {
    global0 = u_input.b.yx;
    var var_0 = Struct_1(vec4<i32>(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -2147483647i, -12686i, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(3152i, u_input.a.x, -2147483647i, -20462i), vec4<i32>(u_input.b.x, -11829i, -2147483647i, global0.x), vec4<i32>(-32191i, 8508i, u_input.b.x, global0.x))), ~(-1i)), u_input.a.x, u_input.a.x), false, -1i, _wgslsmith_add_vec2_i32(func_2(_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, -49285i, -1i), select(vec3<i32>(42889i, -38748i, global0.x), u_input.a, arg_0.x)), vec3<bool>(arg_0.x, any(arg_0.zz), !arg_0.x), arg_0.x, Struct_3(countOneBits(0i))), -reverseBits(-vec2<i32>(u_input.a.x, -29595i))));
    var var_1 = arg_1.x;
    let var_2 = var_0.a;
    var_0 = Struct_1((vec4<i32>(var_2.x >> (u_input.c.x % 32u), i32(-1i) * -2147483647i, -2147483647i, -24898i) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 10023u, u_input.c.x, 28988u), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)) << (abs(vec4<u32>(59492u, u_input.c.x, u_input.c.x, 15374u)) % vec4<u32>(32u))) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(var_2.x, var_0.d.x, var_2.x, 2147483647i)), _wgslsmith_sub_vec4_i32(var_0.a, var_0.a), vec4<i32>(var_2.x, global0.x, _wgslsmith_mult_i32(0i, u_input.a.x), min(16606i, 17400i))), arg_0.x, _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_div_i32(abs(-62876i), select(40532i, var_2.x, false) << (0u % 32u))), ~var_2.yw);
    return select(~var_2.x, func_2(abs(var_2.xxx << (vec3<u32>(87017u, 5712u, u_input.c.x) % vec3<u32>(32u))), arg_0, true, Struct_3(var_2.x << (4294967295u % 32u))).x, all(vec4<bool>(u_input.c.x > u_input.c.x, arg_0.x && true, arg_0.x, false))) >> (~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, 0u, u_input.c.x), u_input.c.x, u_input.c.x, 25708u)) % 32u);
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-350f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-915f)) + _wgslsmith_f_op_f32(f32(-1f) * -1093f)), -2762f), 1f, _wgslsmith_f_op_f32(-1f))));
    var var_1 = Struct_3(abs(2147483647i));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1446f)), 502f, all(!(!vec4<bool>(arg_0.b, true, true, arg_0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-294f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + var_0.x)), -1010f, _wgslsmith_f_op_f32(f32(-1f) * -632f));
    var var_2 = ~reverseBits(u_input.c.x | abs(~10747u));
    let var_3 = !select(vec2<bool>(abs(33362i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.a, var_1.a, global0.x), vec4<i32>(arg_0.a.x, 28558i, 2147483647i, -2147483647i)), false), vec2<bool>(_wgslsmith_f_op_f32(exp2(var_0.x)) > _wgslsmith_f_op_f32(var_0.x + -1590f), any(vec4<bool>(true, false, false, arg_0.b))), arg_0.b);
    return StorageBuffer(375f, vec3<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-408f)) - _wgslsmith_f_op_f32(-var_0.x)), var_0.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_f_op_f32(f32(-1f) * -127f)))))), 23386u, vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 631f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.b.xy;
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = _wgslsmith_add_vec3_i32(~u_input.b, _wgslsmith_div_vec3_i32(~abs(u_input.a), -(~vec3<i32>(u_input.a.x, global0.x, -12009i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1250f, var_0, -725f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(513f, 787f, 623f) + vec3<f32>(var_0, -759f, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1301f, 158f, var_0)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0, 362f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0), -162f, _wgslsmith_f_op_f32(exp2(var_0))))));
    var var_3 = u_input.a & ~(-(~u_input.b));
    let var_4 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, 32562u, u_input.c.x, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(29359u, 0u, 17779u, u_input.c.x) & vec4<u32>(40936u, 4294967295u, 93937u, u_input.c.x), firstLeadingBit(vec4<u32>(u_input.c.x, 35198u, 21361u, 0u))) >> (vec4<u32>(~u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x | 0u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = func_4(Struct_1(vec4<i32>(8078i, _wgslsmith_sub_i32(1i, var_3.x) >> (_wgslsmith_dot_vec4_u32(var_4, var_4) % 32u), func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_0, var_2.x, 561f)))), global0.x), true, func_1(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-538f, -138f, -1000f, -438f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, 1043f, var_0, var_2.x), vec4<f32>(var_0, -1668f, var_2.x, 1000f))))), u_input.a.yy));
}

