struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> bool {
    let var_0 = Struct_1(vec4<bool>(global0.a.b, (-u_input.b & ~2147483647i) > -1i, all(select(vec2<bool>(false, arg_1.b.a.x), arg_1.a.a.yy, u_input.b == u_input.b)), arg_1.b.b), true, global0.a.c);
    global0 = arg_1;
    let var_1 = u_input.a.x;
    let var_2 = vec4<u32>(u_input.a.x | countOneBits(abs(u_input.a.x) >> (_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) % 32u)), 1u >> (~u_input.a.x % 32u), var_1, _wgslsmith_div_u32(var_1, _wgslsmith_mod_u32(~countOneBits(u_input.a.x), ~var_1)));
    var var_3 = Struct_1(vec4<bool>(true, !(var_0.a.x && (-1i == u_input.b)), true, 67412i > (-1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, 2147483647i), vec4<i32>(-1i, u_input.b, u_input.b, u_input.b)))), (arg_1.b.c.x >= arg_0) & (~firstTrailingBit(u_input.b) >= ~_wgslsmith_mult_i32(-14659i, u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-392f + var_0.c.x), _wgslsmith_f_op_f32(849f + global0.b.c.x), _wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(floor(627f))) * arg_1.b.c) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1434f), _wgslsmith_f_op_f32(var_0.c.x * 288f), -641f))));
    return false;
}

fn func_2(arg_0: vec4<i32>) -> bool {
    let var_0 = select(!select(!global0.b.a.zyw, global0.b.a.xzw, true), !vec3<bool>(!(u_input.b >= -47485i), global0.a.b, global0.a.a.x), vec3<bool>(!func_3(_wgslsmith_f_op_f32(378f * -2102f), Struct_3(Struct_1(global0.a.a, global0.b.b, global0.a.c), Struct_1(vec4<bool>(global0.a.a.x, global0.b.b, global0.a.b, true), false, global0.b.c))), true, !global0.b.a.x));
    var var_1 = 1547f;
    global0 = Struct_3(Struct_1(global0.a.a, any(!global0.b.a.zz), global0.a.c), global0.b);
    global0 = Struct_3(Struct_1(!global0.a.a, false, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.c.x), global0.a.c.x, 174f, _wgslsmith_f_op_f32(sign(global0.b.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a.c * global0.a.c)), vec4<bool>(true, global0.a.a.x | false, u_input.b >= u_input.b, true)))), Struct_1(global0.b.a, true, vec4<f32>(-324f, _wgslsmith_f_op_f32(round(-1858f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b.c.x)) + global0.a.c.x), global0.b.c.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.c.zz) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(global0.b.c.zy))))))));
    return any(select(global0.a.a.xx, global0.a.a.zx, select(var_0.x, any(global0.b.a.wxy), 4294967295u == u_input.a.x))) | (firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x << (0u % 32u), u_input.a.x | 2508u)) == u_input.a.x);
}

fn func_4(arg_0: bool) -> Struct_3 {
    global0 = Struct_3(Struct_1(select(vec4<bool>(func_3(global0.b.c.x, Struct_3(global0.a, global0.a)), !arg_0, true, false), select(select(vec4<bool>(false, arg_0, false, global0.b.b), global0.a.a, vec4<bool>(arg_0, false, true, global0.a.a.x)), select(vec4<bool>(true, global0.a.b, global0.a.b, false), global0.a.a, arg_0), true), global0.b.a), any(!global0.a.a.zyw) & ((global0.b.c.x != global0.a.c.x) == all(global0.b.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -486f), -1088f, -1246f, global0.a.c.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.c)))), Struct_1(select(global0.a.a, select(vec4<bool>(false, false, false, false), global0.b.a, global0.b.a), countOneBits(-1i) >= _wgslsmith_mod_i32(u_input.b, u_input.b)), !arg_0, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0.b.c.x, global0.b.c.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.c.x + 895f))), -2008f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -940f)))));
    global0 = Struct_3(Struct_1(!select(global0.b.a, vec4<bool>(false, global0.b.a.x, true, global0.b.a.x), vec4<bool>(arg_0, false, global0.a.b, global0.a.a.x)), !global0.b.a.x, global0.a.c), global0.b);
    let var_0 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_div_vec3_i32(~select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 32065i), true), vec3<i32>(0i, _wgslsmith_mod_i32(-22615i, 1i), u_input.b)), vec3<i32>(1i, ~(-23689i), ~u_input.b), ~abs(-vec3<i32>(11718i, u_input.b, -1i) ^ ~vec3<i32>(16914i, u_input.b, u_input.b)));
    let var_1 = ~max((~vec4<u32>(4294967295u, 86006u, u_input.a.x, u_input.a.x) ^ abs(vec4<u32>(0u, 13336u, 0u, u_input.a.x))) ^ (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(53044u, 48332u, 74969u, u_input.a.x)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(17131u, u_input.a.x)), ~27207u, _wgslsmith_mod_u32(0u, u_input.a.x)) & max(~vec4<u32>(10u, 4294967295u, 132951u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(40086u, u_input.a.x, 50465u, 0u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 6070u))));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, 1u << (~u_input.a.x % 32u)) << (u_input.a.x % 32u), _wgslsmith_div_u32(select(firstTrailingBit(countOneBits(8669u)), ~select(66656u, 76168u, false), any(!vec2<bool>(global0.b.b, global0.b.a.x))), u_input.a.x));
    return Struct_3(Struct_1(global0.a.a, true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.c)), vec4<f32>(-1311f, _wgslsmith_f_op_f32(f32(-1f) * -2034f), -715f, _wgslsmith_f_op_f32(abs(507f))), all(!global0.a.a.wzw)))), Struct_1(!vec4<bool>(arg_0, global0.a.a.x || true, true, select(true, false, global0.a.b)), global0.b.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a.c.x, 1114f, global0.b.c.x, -370f), vec4<f32>(global0.b.c.x, global0.a.c.x, global0.a.c.x, -364f))), global0.a.c))))));
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(!(!vec4<bool>(false, arg_1.b.a.x, arg_1.b.a.x, false)), arg_1.a.a.x, global0.a.c), func_4(arg_1.a.a.x).b, vec3<f32>(arg_1.a.c.x, _wgslsmith_f_op_f32(exp2(arg_1.b.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.a.c.x, _wgslsmith_div_f32(global0.a.c.x, -1081f))), global0.b.c.x))));
    global0 = func_4(all(vec2<bool>(var_0.a.b, false)));
    let var_1 = _wgslsmith_f_op_f32(floor(arg_1.a.c.x));
    let var_2 = func_4(any(arg_1.a.a.xzz)).b;
    let var_3 = -20615i;
    return Struct_1(var_2.a, var_0.b.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.c)));
}

fn func_1() -> vec4<bool> {
    let var_0 = ~u_input.a.x;
    let var_1 = Struct_2(global0.a, func_5(var_0, func_4(func_2(~vec4<i32>(-1i, 29524i, 21418i, -7989i)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(global0.b.c.www)))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.b.c.x)), _wgslsmith_f_op_f32(-global0.a.c.x), _wgslsmith_f_op_f32(abs(-226f)))))));
    global0 = func_4(var_1.a.a.x);
    var var_2 = -414f;
    let var_3 = var_1.a.a.wxy;
    return select(vec4<bool>(func_2(vec4<i32>(i32(-1i) * -1i, max(u_input.b, u_input.b), -u_input.b, ~u_input.b)), !var_1.b.a.x && (var_1.c.x != _wgslsmith_f_op_f32(f32(-1f) * -1360f)), var_3.x, global0.b.b), select(global0.a.a, var_1.a.a, var_3.x), true);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    let var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b, u_input.b & u_input.b, u_input.b >> (u_input.a.x % 32u), 0i), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(16022i, u_input.b, -53319i, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), vec4<i32>(1i, 8231i, u_input.b, u_input.b)))), _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_clamp_i32(u_input.b, -29069i, u_input.b)), 16489i), _wgslsmith_div_i32(u_input.b, 16869i) ^ ~(~15616i), -1i));
    global0 = func_4(global0.a.a.x);
    var var_1 = arg_2.a;
    let var_2 = arg_0;
    let var_3 = global0.b;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.b, global0.b);
    let var_0 = vec4<bool>(global0.a.a.x, global0.a.a.x, global0.b.a.x, !(any(global0.a.a.zxy) | true));
    global0 = Struct_3(global0.a, Struct_1(global0.b.a, false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b.c), global0.b.c, true))));
    let var_1 = _wgslsmith_f_op_f32(sign(-1000f));
    let var_2 = func_6(Struct_2(Struct_1(func_1(), ~130510u <= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(0u, 0u, u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -1585f), _wgslsmith_f_op_f32(trunc(531f)), _wgslsmith_f_op_f32(f32(-1f) * -380f))), func_4(var_0.x).a, global0.a.c.xxy), global0.b, Struct_3(func_5(u_input.a.x, func_4(true)), func_4(var_0.x || true).b));
    global0 = func_6(Struct_2(func_5(reverseBits(u_input.a.x), var_2), func_5(0u, var_2), vec3<f32>(_wgslsmith_f_op_f32(1580f + _wgslsmith_f_op_f32(534f - -486f)), _wgslsmith_f_op_f32(min(func_4(false).b.c.x, func_5(0u, Struct_3(var_2.b, var_2.b)).c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.c.x)) + _wgslsmith_f_op_f32(-var_1)))), var_2.b, Struct_3(Struct_1(!var_0, true, vec4<f32>(var_1, global0.b.c.x, _wgslsmith_f_op_f32(round(436f)), _wgslsmith_f_op_f32(295f - -1464f))), func_6(Struct_2(func_5(u_input.a.x, var_2), Struct_1(var_2.a.a, var_0.x, vec4<f32>(644f, -446f, global0.b.c.x, -774f)), global0.a.c.zxw), global0.a, var_2).a));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32(~u_input.a, u_input.a));
}

