struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = any(select(vec2<bool>(false, _wgslsmith_div_i32(global0.x, u_input.b.x) >= u_input.b.x), !vec2<bool>(arg_0 != global1.a.a, true), vec2<bool>(true, !any(vec3<bool>(true, global1.b.a, false)))));
    global0 = u_input.b.xz;
    global0 = -u_input.b.yy;
    var var_1 = arg_1.x;
    let var_2 = -1i;
    return vec2<bool>(true, arg_0);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_5(Struct_2(Struct_1(false, global1.b.b), Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global1.b.b)))), Struct_1(all(!vec2<bool>(global1.c.a, false)), _wgslsmith_f_op_vec4_f32(global1.c.b - _wgslsmith_f_op_vec4_f32(-global1.a.b)))), Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, global0.x), u_input.b.yz), ~vec2<i32>(u_input.b.x, 0i)), ~firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-2306f, -915f)), global1.c.b.x, global1.a.b.x, _wgslsmith_f_op_f32(sign(global1.c.b.x))) - vec4<f32>(global1.a.b.x, _wgslsmith_f_op_f32(max(global1.c.b.x, global1.c.b.x)), _wgslsmith_f_op_f32(round(global1.b.b.x)), _wgslsmith_f_op_f32(-global1.c.b.x))), select(vec2<bool>(global1.a.a, false), !select(vec2<bool>(true, global1.a.a), vec2<bool>(false, global1.c.a), vec2<bool>(global1.a.a, true)), !(u_input.c.x != 1u)), -6136i), Struct_2(Struct_1(any(vec4<bool>(global1.b.a, false, true, global1.b.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(503f, global1.c.b.x, global1.a.b.x, -1239f), global1.c.b))))), global1.a, global1.c), func_3(true, ~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.c.x, u_input.a.x), vec4<u32>(u_input.a.x, 35604u, 4294967295u, u_input.c.x)) | reverseBits(vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, 46602u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-var_0.b.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1057f, -1010f, 410f));
    let var_3 = var_0.b;
    global0 = vec2<i32>(_wgslsmith_sub_i32(-33750i & (~var_3.e & u_input.b.x), var_3.b.x), (var_3.e >> (~(~36675u) % 32u)) | 0i);
    return Struct_1(false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-2320f)), var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-166f - -1225f))), global1.b.b));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_5) -> Struct_1 {
    global1 = Struct_2(Struct_1(!(firstLeadingBit(u_input.a.x) > (u_input.c.x ^ u_input.a.x)), vec4<f32>(1551f, _wgslsmith_f_op_f32(global1.c.b.x - func_2().b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f)), _wgslsmith_f_op_f32(sign(1f)))), arg_2.b, func_2());
    let var_0 = vec4<i32>(arg_1.x | 2147483647i, i32(-1i) * -18108i, -global0.x, _wgslsmith_dot_vec3_i32(abs(arg_1.zwz) << ((abs(vec3<u32>(37931u, u_input.a.x, u_input.c.x)) | vec3<u32>(u_input.c.x, u_input.a.x, 1u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(u_input.b, u_input.b)));
    var var_1 = -vec2<i32>(-_wgslsmith_add_i32(var_0.x, firstTrailingBit(var_0.x)), arg_1.x);
    let var_2 = ~u_input.c;
    let var_3 = arg_1.x;
    return arg_2.a;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_2 {
    return arg_3;
}

fn func_1() -> vec4<f32> {
    global1 = func_5(global1.a.b.x, func_4(vec2<i32>(-1i) * -u_input.b.yy, ~vec4<i32>(1i, global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 42361i, global0.x), vec4<i32>(u_input.b.x, global0.x, global0.x, 48089i)), firstTrailingBit(global0.x)), Struct_2(global1.b, Struct_1(all(vec2<bool>(global1.a.a, global1.a.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(663f, global1.a.b.x, 1749f, global1.c.b.x) * global1.c.b)), func_2()), Struct_5(Struct_2(global1.a, Struct_1(true, vec4<f32>(global1.a.b.x, global1.c.b.x, 232f, 300f)), func_2()), Struct_3(-1i, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -14747i), u_input.b.zx), _wgslsmith_f_op_vec4_f32(trunc(global1.c.b)), !vec2<bool>(global1.b.a, false), _wgslsmith_mult_i32(-57712i, -29228i)), Struct_2(global1.c, global1.b, global1.b), vec2<bool>(all(vec4<bool>(true, false, global1.b.a, global1.b.a)), global1.a.a & false))), vec3<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(129051u, u_input.a.x)), vec2<u32>(~39650u, ~u_input.c.x))), Struct_2(global1.c, Struct_1(global1.a.a, global1.b.b), Struct_1(false, _wgslsmith_f_op_vec4_f32(exp2(global1.c.b)))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-301f, global1.a.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-250f - global1.c.b.x), _wgslsmith_f_op_f32(-global1.c.b.x))) * global1.a.b.x)), 839f, -167f, global1.a.b.x);
    var var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-123f))), Struct_1(global1.a.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b.b - global1.b.b) * func_4(u_input.b.yx, vec4<i32>(0i, global0.x, 1i, global0.x), Struct_2(Struct_1(global1.c.a, global1.c.b), Struct_1(false, global1.b.b), Struct_1(global1.c.a, global1.c.b)), Struct_5(Struct_2(Struct_1(true, vec4<f32>(global1.c.b.x, 529f, var_0.x, -274f)), global1.a, global1.b), Struct_3(global0.x, u_input.b.yx, global1.c.b, vec2<bool>(false, true), 0i), Struct_2(Struct_1(global1.a.a, vec4<f32>(var_0.x, -1141f, var_0.x, var_0.x)), Struct_1(false, vec4<f32>(var_0.x, 1559f, global1.c.b.x, var_0.x)), global1.c), vec2<bool>(false, global1.a.a))).b)))), _wgslsmith_mod_vec3_u32(((u_input.c.xwx << (u_input.a % vec3<u32>(32u))) | (u_input.c.wwz ^ vec3<u32>(0u, 28182u, 515u))) & u_input.a, abs(min(min(vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x), u_input.a), abs(vec3<u32>(0u, 52608u, 1u))))), Struct_2(Struct_1(select(global1.c.a, 1u <= u_input.a.x, global1.b.b.x >= global1.a.b.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1695f), _wgslsmith_f_op_f32(max(-1000f, -224f)), -610f, _wgslsmith_f_op_f32(-global1.c.b.x))), func_4(vec2<i32>(23803i, -global0.x), -(~vec4<i32>(-2147483647i, global0.x, u_input.b.x, u_input.b.x)), func_5(_wgslsmith_f_op_f32(-430f * -864f), func_5(var_0.x, global1.b, u_input.a, Struct_2(Struct_1(false, global1.c.b), global1.b, global1.b)).b, u_input.a, Struct_2(Struct_1(global1.a.a, global1.a.b), Struct_1(true, vec4<f32>(350f, 270f, -1747f, 461f)), Struct_1(global1.a.a, vec4<f32>(var_0.x, 889f, -373f, -831f)))), Struct_5(func_5(990f, global1.b, vec3<u32>(20155u, 17798u, 72364u), Struct_2(global1.b, global1.a, Struct_1(true, vec4<f32>(global1.a.b.x, 1000f, global1.b.b.x, var_0.x)))), Struct_3(u_input.b.x, vec2<i32>(1i, -45428i), vec4<f32>(var_0.x, global1.c.b.x, global1.c.b.x, global1.b.b.x), vec2<bool>(global1.a.a, false), 25320i), Struct_2(Struct_1(true, vec4<f32>(-537f, -1853f, var_0.x, var_0.x)), Struct_1(false, vec4<f32>(503f, var_0.x, 349f, global1.b.b.x)), global1.a), func_3(true, vec4<u32>(u_input.a.x, 25529u, 35883u, 1u)))), global1.c));
    global0 = vec2<i32>(u_input.b.x, global0.x);
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(trunc(var_0.x))) < -649f, _wgslsmith_f_op_vec4_f32(round(global1.c.b))), var_1.b, var_1.b);
    return var_1.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global1.b, Struct_1(select(true & select(true, global1.a.a, global1.b.a), !any(vec4<bool>(false, global1.b.a, global1.c.a, global1.a.a)), any(vec2<bool>(true, global1.b.a))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b.x, global1.a.b.x, -1000f, -199f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1())))))), func_5(_wgslsmith_f_op_f32(f32(-1f) * -416f), Struct_1(any(select(vec4<bool>(false, global1.a.a, false, global1.b.a), vec4<bool>(global1.a.a, global1.b.a, global1.a.a, true), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a.b * vec4<f32>(global1.a.b.x, global1.a.b.x, -370f, global1.c.b.x)) - global1.a.b)), u_input.c.xxy, Struct_2(func_5(_wgslsmith_div_f32(global1.c.b.x, global1.b.b.x), global1.a, u_input.a, func_5(global1.b.b.x, Struct_1(false, global1.c.b), u_input.a, Struct_2(Struct_1(false, vec4<f32>(global1.b.b.x, global1.a.b.x, 628f, -1226f)), global1.a, Struct_1(global1.c.a, global1.a.b)))).c, Struct_1(true, _wgslsmith_f_op_vec4_f32(global1.a.b * vec4<f32>(-503f, global1.c.b.x, global1.b.b.x, -1000f))), func_5(global1.b.b.x, func_2(), u_input.c.zwx, Struct_2(global1.c, global1.a, global1.b)).c)).b);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.c.b.xzy, global1.a.b.zxz));
    var var_1 = -countOneBits(_wgslsmith_mod_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.b.x, 8274i), vec4<i32>(-2147483647i, -1i, -2147483647i, -46894i)), -vec4<i32>(61562i, u_input.b.x, -2147483647i, 39464i), !vec4<bool>(global1.a.a, global1.b.a, global1.c.a, global1.a.a)), -(~vec4<i32>(global0.x, u_input.b.x, global0.x, 20335i))));
    var_1 = countOneBits(countOneBits(abs(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(1i, global0.x, 100594i, u_input.b.x)), ~vec4<i32>(u_input.b.x, -28845i, 1i, var_1.x)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1209f + -401f));
    let var_3 = vec2<i32>(~(_wgslsmith_clamp_i32(u_input.b.x, 6187i, -var_1.x) << (u_input.c.x % 32u)), 7772i);
    var var_4 = -global0.x;
    var var_5 = Struct_5(Struct_2(func_2(), Struct_1(global1.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b.x, -413f, global1.a.b.x, -399f)))), global1.b), Struct_3(abs(~(-48047i)), u_input.b.yy, global1.a.b, !select(select(vec2<bool>(false, global1.b.a), vec2<bool>(global1.c.a, true), global1.c.a), func_3(true, vec4<u32>(u_input.a.x, u_input.a.x, 76085u, u_input.c.x)), vec2<bool>(global1.a.a, true)), var_1.x), func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(418f - -1155f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2083f))))), Struct_1(!global1.a.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(global1.c.b))))), u_input.c.xzx, func_5(_wgslsmith_f_op_f32(-var_0.x), Struct_1(global1.c.a, vec4<f32>(-318f, var_0.x, -1000f, 111f)), ~(vec3<u32>(u_input.c.x, 6141u, 23716u) >> (vec3<u32>(u_input.a.x, 26428u, 0u) % vec3<u32>(32u))), Struct_2(global1.b, func_2(), func_2()))), vec2<bool>(func_3(func_2().a, _wgslsmith_div_vec4_u32(vec4<u32>(0u, 7653u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u)) & u_input.c).x, global1.a.a));
    var var_6 = Struct_5(var_5.c, var_5.b, func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-121f, var_5.a.a.b.x) + var_0.x), Struct_1(true, var_5.b.c), ~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, 66116u), vec3<u32>(4294967295u, 12406u, u_input.c.x)), func_5(-1000f, var_5.c.a, u_input.a, var_5.c)), !select(!var_5.b.d, vec2<bool>(global1.a.b.x >= 126f, global1.b.a), vec2<bool>(global1.b.a | var_5.c.c.a, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_6.a.a.b.x, -862f))), vec2<u32>(20134u | select(~u_input.c.x, abs(u_input.c.x), true), 29095u), _wgslsmith_dot_vec3_u32(~(~(~u_input.a)), select(select(u_input.a, u_input.c.xyw, vec3<bool>(var_6.a.b.a, var_5.c.a.a, true)), ~vec3<u32>(u_input.c.x, 4294967295u, u_input.a.x), true) & vec3<u32>(_wgslsmith_mult_u32(1u, 0u), 1u, u_input.a.x)));
}

