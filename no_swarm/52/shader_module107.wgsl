struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 60397u, 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> i32 {
    global0 = (~(~firstLeadingBit(vec3<u32>(global0.x, global0.x, 4294967295u))) >> (~vec3<u32>(~global0.x, 0u, 46722u | global0.x) % vec3<u32>(32u))) << (~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(126185u, global0.x, global0.x), vec3<u32>(global0.x, 4294967295u, global0.x) | vec3<u32>(4294967295u, global0.x, global0.x))) % vec3<u32>(32u));
    var var_0 = _wgslsmith_f_op_f32(1008f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_2, -455f)), 492f)))));
    let var_1 = abs(vec3<u32>(~reverseBits(~1u), 9586u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 20319u, global0.x, 4294967295u), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(global0.x, global0.x, global0.x, 1u)), vec4<u32>(1u, 4294967295u, global0.x, global0.x)))));
    var var_2 = select(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)) <= _wgslsmith_f_op_f32(arg_2 * arg_2), true, any(select(vec2<bool>(false, false), select(arg_1.yx, arg_0.b.b.xz, true), arg_0.b.b.x))), arg_0.b.b, !(true & all(!vec3<bool>(false, arg_0.a, arg_0.a))));
    global0 = vec3<u32>(~4294967295u, 71769u, _wgslsmith_mod_u32(4294967295u, 54294u));
    return u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_4(0u, vec3<i32>(-select(u_input.a.x, -23152i, true), reverseBits(-u_input.a.x), func_3(Struct_2(select(false, true, true), Struct_1(3784i, vec3<bool>(false, true, false), u_input.a, 71761i), _wgslsmith_sub_i32(arg_0, 1i)), vec3<bool>(all(vec4<bool>(false, false, true, false)), true, all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(-492f - _wgslsmith_div_f32(-1271f, -491f)))));
    global0 = vec3<u32>(~firstTrailingBit(arg_1.x), 1u, arg_1.x);
    let var_1 = _wgslsmith_mod_vec4_i32(((_wgslsmith_sub_vec4_i32(vec4<i32>(16338i, 69385i, -2147483647i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, -4329i, arg_0)) & ~vec4<i32>(arg_0, -14996i, arg_0, arg_0)) ^ -_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, -1613i, arg_0, -1i), vec4<i32>(2147483647i, 31694i, -2147483647i, 51312i))) & ~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.x, arg_0, var_0.b.x, var_0.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.b.x, 2147483647i), vec4<i32>(23281i, -2147483647i, arg_0, var_0.b.x))), firstTrailingBit(_wgslsmith_add_vec4_i32(select(vec4<i32>(-38434i, 3849i, u_input.a.x, arg_0), vec4<i32>(-2147483647i, u_input.a.x, var_0.b.x, u_input.a.x), false), min(vec4<i32>(-35812i, arg_0, -1i, -35499i), vec4<i32>(u_input.a.x, arg_0, -18860i, var_0.b.x)))) >> ((vec4<u32>(~1u, ~var_0.a, ~global0.x, ~1u) | ~(vec4<u32>(arg_2.x, 0u, arg_1.x, 4294967295u) | vec4<u32>(1u, var_0.a, 10752u, arg_2.x))) % vec4<u32>(32u)));
    global0 = reverseBits(~arg_2 >> (~arg_2 % vec3<u32>(32u)));
    var var_2 = select(vec4<i32>(_wgslsmith_sub_i32(var_0.b.x, var_1.x & var_1.x), var_1.x, var_0.b.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-78944i, 0i, -1i), var_0.b.x)), abs(firstTrailingBit(select(vec4<i32>(-21645i, u_input.a.x, 1i, u_input.a.x), var_1, vec4<bool>(true, true, false, true))) >> (max(vec4<u32>(4294967295u, 27765u, var_0.a, var_0.a), vec4<u32>(global0.x, 0u, 0u, 33823u) & vec4<u32>(1u, global0.x, 4294967295u, 1u)) % vec4<u32>(32u))), select(vec4<bool>(true, true, true, true), vec4<bool>(firstLeadingBit(29989i) != ~arg_0, true, !all(vec4<bool>(true, true, false, false)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true))), true));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2 ^ vec3<u32>(~global0.x, 54521u, ~1u), ~vec3<u32>(arg_2.x >> (3961u % 32u), _wgslsmith_mult_u32(arg_1.x, var_0.a), ~46554u)), countOneBits(~max(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, 122569u, arg_2.x), arg_2), reverseBits(arg_2))));
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    global0 = firstTrailingBit(vec3<u32>(func_2(max(-12637i, -1i ^ arg_0.x), ~vec2<u32>(global0.x, global0.x), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(0u, 33135u, 8967u)), vec3<u32>(global0.x, 103812u, global0.x))), ~(~88308u), global0.x));
    global0 = firstLeadingBit(_wgslsmith_div_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 75628u, 20219u) & vec3<u32>(global0.x, global0.x, global0.x), ~vec3<u32>(global0.x, global0.x, 4294967295u)), ~(~vec3<u32>(4294967295u, global0.x, 1u)), true), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, global0.x, global0.x)), ~vec3<u32>(global0.x, global0.x, 4294967295u)), vec3<u32>(~global0.x, global0.x, global0.x))));
    let var_0 = Struct_1(~(~(_wgslsmith_mod_i32(u_input.a.x, arg_0.x) | abs(arg_0.x))), vec3<bool>(!(!(26628i < arg_0.x)), true | any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(860f, -784f)) + -3045f) < _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(298f, 269f)))), arg_0.zy, 0i);
    let var_1 = ~(select(~vec3<u32>(1u, global0.x, 1u), abs(vec3<u32>(global0.x, 40325u, global0.x)) >> (~vec3<u32>(global0.x, 1u, 51295u) % vec3<u32>(32u)), true) | abs(abs(~vec3<u32>(12376u, global0.x, global0.x))));
    return reverseBits(vec3<u32>(func_2(2147483647i, ~vec2<u32>(global0.x, global0.x), ~select(var_1, var_1, vec3<bool>(var_0.b.x, true, true))), 37935u, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, func_2(var_0.a, vec2<u32>(74387u, 4294967295u), var_1)), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec3_u32(func_1(~(~vec3<i32>(u_input.a.x, 99816i, u_input.a.x)) ^ countOneBits(~vec3<i32>(u_input.a.x, -43818i, -52964i))), abs(vec3<u32>(0u, 4422u, global0.x)));
    let var_0 = Struct_2(any(vec4<bool>(select(true, false, false), true, 1545f != _wgslsmith_f_op_f32(ceil(-189f)), any(vec4<bool>(false, false, false, false)))), Struct_1(abs(u_input.a.x), vec3<bool>(true, true, true), vec2<i32>(-2147483647i, firstTrailingBit(-6280i)), 45781i), abs(u_input.a.x));
    let var_1 = vec4<bool>(select(var_0.b.b.x, var_0.b.b.x, _wgslsmith_sub_u32(~global0.x, min(global0.x, 111283u)) != global0.x), !all(var_0.b.b) || select(true, true, all(vec4<bool>(var_0.a, false, true, var_0.a)) & true), all(var_0.b.b) || (u_input.a.x < select(-1070i, 0i, var_0.a & false)), !((11881u < ~global0.x) == (var_0.b.b.x | false)));
    global0 = min(vec3<u32>(_wgslsmith_div_u32(global0.x >> (global0.x % 32u), 1994u), global0.x, ~global0.x), ~_wgslsmith_sub_vec3_u32(func_1(vec3<i32>(10562i, u_input.a.x, 0i)), vec3<u32>(0u, global0.x, _wgslsmith_clamp_u32(23750u, 0u, global0.x))));
    let var_2 = all(vec2<bool>(!var_1.x, any(vec4<bool>(false, global0.x <= 4294967295u, true, true))));
    global0 = abs(vec3<u32>(1u, ~(~(~global0.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.x) | global0.xy, global0.xz ^ vec2<u32>(global0.x, 9204u)), global0.x | abs(66008u))));
    global0 = vec3<u32>(~min(103744u, 662u), global0.x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(-18804i), global0.x);
}

