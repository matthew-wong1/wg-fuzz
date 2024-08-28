struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, 0u, vec3<bool>(true, true, true)), Struct_1(false, 15971u, vec3<bool>(true, false, true)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<i32>) -> bool {
    global0 = Struct_2(Struct_1(true, 1u, !(!global0.b.c)), Struct_1(false, ~_wgslsmith_clamp_u32(max(global0.a.b, 1u), max(global0.a.b, 91141u), global0.a.b), !vec3<bool>(arg_1 | false, all(vec3<bool>(arg_1, true, arg_1)), arg_1)));
    global0 = Struct_2(global0.b, global0.b);
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(i32(-1i) * -1i, 1i >> (~(global0.b.b << (1u % 32u)) % 32u)), max(countOneBits(~2147483647i), _wgslsmith_dot_vec3_i32(-vec3<i32>(9939i, 0i, -17275i), u_input.b.zwz)), _wgslsmith_dot_vec3_i32(-firstTrailingBit(-vec3<i32>(-2147483647i, u_input.c.x, 9149i)), vec3<i32>(u_input.b.x, ~(arg_2.x << (global0.a.b % 32u)), ~(-3217i))));
    var_0 = -27992i;
    var_0 = 29145i;
    return !(!global0.b.a);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_2 {
    global0 = Struct_2(global0.a, global0.b);
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-979f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-800f * -2160f)), _wgslsmith_f_op_f32(-1f))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1647f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f) - _wgslsmith_f_op_f32(max(815f, 1014f))) * var_0.x)), var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + var_0.x)))))));
    global0 = Struct_2(Struct_1(all(select(vec2<bool>(true, true), arg_2.zx, vec2<bool>(false, false))), 4456u, arg_2), Struct_1(func_3(vec2<i32>(1i, u_input.c.x), true, u_input.b), global0.b.b, vec3<bool>(!arg_2.x, any(select(vec4<bool>(false, arg_2.x, false, global0.b.a), vec4<bool>(true, arg_2.x, true, true), vec4<bool>(true, arg_2.x, true, true))), func_3(vec2<i32>(u_input.b.x, u_input.c.x), false, u_input.b) & (global0.b.c.x == global0.a.a))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -2598f, var_0.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1300f, var_0.x, 625f))), true)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -1104f), _wgslsmith_f_op_f32(step(var_0.x, -291f)), _wgslsmith_f_op_f32(-314f - var_0.x)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-670f, var_0.x, 143f), vec3<f32>(var_0.x, var_0.x, -579f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1905f, -926f, var_0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(837f, -2410f, var_0.x)))))));
    return Struct_2(global0.b, global0.b);
}

fn func_1(arg_0: f32) -> vec3<bool> {
    global0 = Struct_2(Struct_1(true, 0u, global0.b.c), global0.b);
    global0 = func_2(vec2<u32>(global0.a.b, global0.b.b), max(~firstLeadingBit(vec3<u32>(1u, global0.b.b, 0u) ^ vec3<u32>(global0.a.b, u_input.a, 1u)), ~(~vec3<u32>(u_input.a, 45066u, 50612u))), !global0.b.c);
    global0 = Struct_2(Struct_1(false, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u >> (global0.b.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.a.b), vec2<u32>(global0.a.b, u_input.a))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(90679u, global0.a.b, global0.a.b), vec3<u32>(u_input.a, 89934u, global0.b.b), vec3<u32>(4294967295u, global0.b.b, 58261u))), !global0.b.c), global0.b);
    let var_0 = max(abs(u_input.c.zz), u_input.c.xy);
    global0 = func_2(_wgslsmith_mult_vec2_u32(select(~(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(global0.a.b, global0.b.b) & ~vec2<u32>(global0.b.b, global0.b.b), all(!vec2<bool>(false, global0.b.c.x))), abs(reverseBits(vec2<u32>(global0.b.b, 0u)))), _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(global0.b.b, global0.a.b, global0.a.b)), vec3<u32>(global0.a.b ^ u_input.a, countOneBits(1u), _wgslsmith_add_u32(global0.a.b >> (u_input.a % 32u), 40623u << (1u % 32u)))), !func_2(~vec2<u32>(16665u, global0.a.b), ~(~vec3<u32>(global0.b.b, 28325u, 53772u)), vec3<bool>(global0.b.c.x, global0.a.c.x, global0.b.c.x || true)).a.c);
    return select(global0.a.c, vec3<bool>(!all(!vec4<bool>(true, global0.a.a, true, false)), !(!(62746u <= global0.a.b)), global0.a.a), !func_2(vec2<u32>(33158u, ~global0.a.b), abs(vec3<u32>(u_input.a, 159079u, u_input.a)), !global0.a.c).b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(true, global0.b.b, func_1(_wgslsmith_f_op_f32(-1897f - -1000f))), func_2(select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, u_input.a)), (vec2<u32>(global0.b.b, 1u) & vec2<u32>(u_input.a, global0.a.b)) << ((vec2<u32>(global0.a.b, global0.b.b) ^ vec2<u32>(global0.b.b, u_input.a)) % vec2<u32>(32u)), global0.a.a), _wgslsmith_div_vec3_u32(vec3<u32>(global0.b.b, u_input.a, _wgslsmith_mod_u32(26389u, 4294967295u)), min(vec3<u32>(global0.b.b, u_input.a, 1u), vec3<u32>(u_input.a, 48428u, 0u)) & ~vec3<u32>(u_input.a, 14115u, 53968u)), global0.a.c).a);
    global0 = Struct_2(func_2(abs(vec2<u32>(u_input.a, firstLeadingBit(17724u))), vec3<u32>(abs(~global0.b.b), 4294967295u, ~_wgslsmith_add_u32(u_input.a, u_input.a)), global0.a.c).a, Struct_1(!(!any(vec2<bool>(true, false))), ~countOneBits(77373u), vec3<bool>(select(global0.b.b > global0.a.b, false, global0.a.a), true, !(global0.a.b >= 0u))));
    global0 = func_2(~vec2<u32>(4294967295u, global0.a.b), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(23815u, 1u, global0.b.b, u_input.a), vec4<u32>(1u, 0u, 4294967295u, u_input.a), vec4<bool>(false, global0.a.c.x, false, global0.a.a)), vec4<u32>(u_input.a, 74198u, global0.a.b, 76605u)), vec4<u32>(global0.b.b, ~u_input.a, global0.b.b ^ 4294967295u, ~0u)), max(12710u, ~func_2(vec2<u32>(global0.a.b, 9078u), vec3<u32>(global0.b.b, 1u, u_input.a), global0.a.c).a.b), global0.b.b), func_2(~(~vec2<u32>(global0.b.b, 16894u) ^ (vec2<u32>(27571u, 4294967295u) & vec2<u32>(global0.b.b, u_input.a))), vec3<u32>(_wgslsmith_mult_u32(18036u, global0.b.b) & global0.a.b, 1u, 31429u), global0.a.c).a.c);
    global0 = func_2(select(abs(min(vec2<u32>(18961u, global0.b.b) << (vec2<u32>(u_input.a, global0.a.b) % vec2<u32>(32u)), vec2<u32>(1u, 0u))), vec2<u32>(~u_input.a, abs(firstTrailingBit(global0.a.b))), func_3(vec2<i32>(1i, 1i), !global0.a.c.x || all(global0.a.c.yy), vec4<i32>(i32(-1i) * -1i, ~u_input.d, u_input.d, u_input.d))), _wgslsmith_div_vec3_u32(vec3<u32>(49866u, 4294967295u ^ ~global0.a.b, ~1u), vec3<u32>(u_input.a, u_input.a, 2980u) << (vec3<u32>(select(122751u, 4294967295u, true), u_input.a << (global0.b.b % 32u), global0.a.b) % vec3<u32>(32u))), global0.a.c);
    let var_0 = func_2(~(_wgslsmith_add_vec2_u32(abs(vec2<u32>(4294967295u, u_input.a)), vec2<u32>(1u, 1u) << (vec2<u32>(58133u, global0.a.b) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global0.a.b, 1u, u_input.a), vec3<u32>(global0.a.b, u_input.a, global0.a.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.b, global0.b.b, global0.a.b), vec3<u32>(global0.a.b, 1u, 22690u)), ~vec3<u32>(global0.b.b, 12790u, global0.b.b) << (~vec3<u32>(4294967295u, 96673u, global0.a.b) % vec3<u32>(32u))), ~select(firstLeadingBit(vec3<u32>(global0.a.b, u_input.a, global0.b.b)), vec3<u32>(29218u, 9440u, 12018u), !global0.b.c)), select(global0.a.c, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(829f * -1239f) - _wgslsmith_f_op_f32(-244f * -505f))), global0.a.c));
    global0 = func_2(abs(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(26128u, 1u)), vec2<u32>(u_input.a, global0.a.b))), ~vec3<u32>(global0.b.b, 0u, 12902u), global0.b.c);
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1051f), _wgslsmith_f_op_f32(ceil(-2746f)), 112f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1203f, 569f)))), _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1304f, -1042f, 166f, 1000f), vec4<f32>(-1631f, -714f, 538f, 1413f)))), false)));
}

