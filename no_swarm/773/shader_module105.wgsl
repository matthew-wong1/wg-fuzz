struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(1u, 54231u, 41403u, 0u), Struct_1(1851f, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    global0 = Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x >> (4294967295u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(38547u, 1u, u_input.a.x), global0.a.wwz | arg_0), ~global0.a.x, ~4294967295u), ~countOneBits(vec4<u32>(arg_0.x, global0.a.x, 4294967295u, global0.a.x) | global0.a)), global0.b);
    var var_0 = Struct_2(_wgslsmith_div_vec2_u32(~reverseBits(arg_0.xz), firstLeadingBit(_wgslsmith_sub_vec2_u32(~arg_0.zz, _wgslsmith_clamp_vec2_u32(global0.a.zz, vec2<u32>(31874u, 13434u), u_input.a)))), Struct_1(-100f, !any(vec4<bool>(true, false, true, global0.b.b))), arg_1.x);
    var var_1 = select(vec2<bool>(true, true), select(vec2<bool>(true, global0.b.b), vec2<bool>(var_0.b.b, select(all(vec4<bool>(false, false, true, true)), all(vec3<bool>(var_0.b.b, global0.b.b, false)), true && global0.b.b)), global0.b.b), false);
    let var_2 = _wgslsmith_f_op_f32(abs(1595f));
    var var_3 = firstLeadingBit(_wgslsmith_sub_vec3_i32(arg_1, arg_1));
    return ~arg_0.x;
}

fn func_2() -> vec3<bool> {
    global0 = Struct_3(vec4<u32>(47984u, _wgslsmith_mod_u32(~func_3(vec3<u32>(0u, global0.a.x, u_input.a.x), vec3<i32>(-1i, -91016i, 11473i), -495f), ~_wgslsmith_sub_u32(global0.a.x, u_input.a.x)), global0.a.x >> ((min(u_input.a.x, 5911u) ^ _wgslsmith_add_u32(u_input.a.x, global0.a.x)) % 32u), 4294967295u), Struct_1(1273f, global0.b.b));
    let var_0 = Struct_5(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~global0.a.x, global0.a.x, ~u_input.a.x), _wgslsmith_dot_vec2_u32(global0.a.xz, global0.a.xx) << (0u % 32u), global0.a.x << (~1u % 32u)), vec3<u32>(global0.a.x, 63131u, _wgslsmith_div_u32(4294967295u, 1u))), _wgslsmith_add_u32(_wgslsmith_div_u32(func_3(firstLeadingBit(vec3<u32>(u_input.a.x, global0.a.x, u_input.a.x)), -vec3<i32>(2147483647i, -1i, -2147483647i), _wgslsmith_f_op_f32(sign(-1000f))), global0.a.x), abs(~u_input.a.x)), Struct_3(global0.a, global0.b));
    global0 = var_0.c;
    global0 = Struct_3(countOneBits(vec4<u32>(reverseBits(63680u), u_input.a.x, ~var_0.a.x, 25969u) << (select(vec4<u32>(4294967295u, 1u, 1u, 21623u), global0.a, select(vec4<bool>(global0.b.b, false, var_0.c.b.b, global0.b.b), vec4<bool>(global0.b.b, true, false, false), vec4<bool>(var_0.c.b.b, global0.b.b, true, global0.b.b))) % vec4<u32>(32u))), Struct_1(-735f, global0.a.x != 1u));
    global0 = var_0.c;
    return select(vec3<bool>(((global0.b.b && var_0.c.b.b) | true) != global0.b.b, var_0.c.b.b, false), vec3<bool>(false, false, (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 4294967295u), var_0.c.a.yz) | _wgslsmith_mod_u32(global0.a.x, global0.a.x)) == _wgslsmith_clamp_u32(global0.a.x, ~44601u, _wgslsmith_sub_u32(9559u, global0.a.x))), var_0.c.a.x == var_0.c.a.x);
}

fn func_1() -> Struct_3 {
    let var_0 = !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global0.b.a)))) < global0.b.a);
    let var_1 = vec4<bool>(global0.b.b, all(select(!vec3<bool>(var_0, global0.b.b, var_0), func_2(), !(global0.b.b & global0.b.b))), global0.b.b, any(vec4<bool>(_wgslsmith_f_op_f32(-global0.b.a) > 1453f, any(!vec3<bool>(global0.b.b, true, true)), any(!vec2<bool>(var_0, false)), true)));
    var var_2 = 4294967295u < _wgslsmith_dot_vec4_u32(global0.a, global0.a);
    let var_3 = _wgslsmith_f_op_f32(201f * -995f);
    var var_4 = var_1.zzw;
    return Struct_3(~_wgslsmith_sub_vec4_u32(~global0.a, _wgslsmith_div_vec4_u32(global0.a, global0.a)) >> (global0.a % vec4<u32>(32u)), global0.b);
}

fn func_4(arg_0: Struct_3) -> Struct_5 {
    global0 = func_1();
    global0 = Struct_3(_wgslsmith_div_vec4_u32(global0.a, min(arg_0.a, abs(global0.a) << (global0.a % vec4<u32>(32u)))), func_1().b);
    global0 = Struct_3(~select(vec4<u32>(39238u, u_input.a.x, global0.a.x, 51004u) << ((vec4<u32>(u_input.a.x, 4294967295u, 22846u, global0.a.x) | vec4<u32>(global0.a.x, 51587u, global0.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<u32>(59381u, global0.a.x, ~u_input.a.x, 0u), vec4<bool>(false, false, true, true)), arg_0.b);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -706f);
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1().b.a), _wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1016f, -1073f))))));
    return Struct_5(vec3<u32>(u_input.a.x, arg_0.a.x, 1u), global0.a.x, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    var_0 = func_4(Struct_3(firstTrailingBit(func_1().a), Struct_1(global0.b.a, global0.b.b)));
    var var_1 = vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-1i), ~(-1i), i32(-1i) * -8915i, -6473i), abs(vec4<i32>(1i, 1i, 1i, 1i))) >= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(2147483647i, 1i, 27548i, 1i) | (vec4<i32>(-2147483647i, 43281i, -10466i, 1i) << (global0.a % vec4<u32>(32u)))), true, !(!global0.b.b));
    let var_2 = !select(vec4<bool>(global0.b.a > 863f, !all(vec3<bool>(var_0.c.b.b, global0.b.b, true)), var_0.c.b.b, all(vec3<bool>(global0.b.b, var_1.x, true)) == func_2().x), !select(vec4<bool>(var_0.c.b.b, global0.b.b, global0.b.b, true), vec4<bool>(false, true, true, global0.b.b), select(vec4<bool>(global0.b.b, global0.b.b, false, global0.b.b), vec4<bool>(var_0.c.b.b, true, var_0.c.b.b, true), var_1.x)), any(!select(vec3<bool>(global0.b.b, global0.b.b, var_1.x), vec3<bool>(false, true, true), global0.b.b)));
    var_0 = Struct_5(firstLeadingBit(_wgslsmith_clamp_vec3_u32(firstLeadingBit(var_0.a), ~vec3<u32>(47839u, var_0.b, 79724u) & global0.a.wyx, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x), vec4<u32>(global0.a.x, 4294967295u, var_0.c.a.x, 1u)), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(2942u, global0.a.x, u_input.a.x, 12996u), vec4<u32>(33518u, 58591u, u_input.a.x, u_input.a.x))))), _wgslsmith_sub_u32(~77880u, ~(~var_0.c.a.x)), func_4(var_0.c).c);
    var var_3 = 12375i;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(reverseBits(1i), 14129i, ~_wgslsmith_sub_i32(1i, 2147483647i)), _wgslsmith_mod_vec3_i32(select(_wgslsmith_mod_vec3_i32(-vec3<i32>(-29585i, -2147483647i, 3697i), ~vec3<i32>(933i, -15739i, -21860i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, -1i), firstTrailingBit(vec3<i32>(-49505i, 0i, -11948i))), false), _wgslsmith_sub_vec3_i32(~vec3<i32>(-10787i, -1i, 10375i) << (var_0.a % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(0i, 2147483647i, -12232i)))));
}

