struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 202f;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.c)))))), u_input.c, global2.c);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -897f);
    global0 = arg_1.c;
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -380f))), _wgslsmith_f_op_f32(select(-1800f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1259f * global1.c), global2.a), true)), _wgslsmith_f_op_f32(step(329f, arg_1.c))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(530f, -166f, global2.a)), vec3<f32>(arg_0, 483f, arg_0))))));
    var var_1 = 1f;
    return ~0u;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = arg_2.zxz;
    global2 = Struct_1(221f, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, ~82077u), u_input.a) ^ _wgslsmith_div_u32((var_0.x & 23608u) & 1u, u_input.c), 516f);
    let var_1 = var_0.x;
    global1 = Struct_1(_wgslsmith_f_op_f32(min(-527f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.a)), _wgslsmith_f_op_f32(max(-663f, _wgslsmith_f_op_f32(225f + arg_0.x)))))), 0u, 343f);
    let var_2 = arg_0.x;
    return var_2;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = var_0;
    global0 = 860f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_4(vec2<f32>(1138f, global1.c), firstTrailingBit(vec2<u32>(firstLeadingBit(var_0.b), var_1.b)), abs(vec4<u32>(global2.b, var_1.b, 4294967295u, 79128u)) & vec4<u32>(_wgslsmith_mod_u32(var_1.b, 12412u), 1u, func_3(-323f, var_1, global1.b, u_input.a), arg_1.b & 1u))), ~abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.b, 1082u, 4294967295u), vec4<u32>(0u, 4294967295u, 26860u, var_0.b)), vec4<u32>(global1.b, var_1.b, 41902u, 15183u))), -2335f);
    let var_3 = var_0;
    return Struct_1(var_2.c, 4294967295u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(752f))))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<bool> {
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -550f), global2.a)), true)) - _wgslsmith_f_op_f32(global2.a + 1287f)), 79639u, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1160f, -1808f)), max(vec2<u32>(17169u, global1.b), firstTrailingBit(vec2<u32>(u_input.a.x, global1.b))), vec4<u32>(~_wgslsmith_clamp_u32(0u, 16691u, 20516u), _wgslsmith_mult_u32(func_2(vec4<i32>(16548i, 1i, 1i, -2147483647i), arg_0, vec3<bool>(false, false, true)).b, arg_0.b ^ 1u), ~_wgslsmith_div_u32(arg_1.x, global1.b), 1u))));
    var var_0 = arg_0;
    let var_1 = false;
    let var_2 = arg_0;
    let var_3 = !var_1;
    return !vec2<bool>(false, all(select(!vec3<bool>(var_3, false, var_1), !vec3<bool>(false, var_3, var_3), select(vec3<bool>(true, var_3, var_3), vec3<bool>(var_1, false, false), true))));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = global2.a;
    let var_0 = arg_0.a;
    global0 = global1.c;
    var var_1 = true;
    let var_2 = ~1u;
    return func_2(-vec4<i32>(1i, 1i, 1i, 1i), arg_0, select(vec3<bool>(arg_1, true, ~1u < ~global1.b), select(select(select(vec3<bool>(arg_2.x, arg_1, arg_2.x), vec3<bool>(true, true, true), arg_2.x), vec3<bool>(true, true, true), global2.b < global1.b), vec3<bool>(any(arg_2), arg_2.x, arg_1), !vec3<bool>(true, false, arg_1)), true));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = func_6(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1464f + _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1373f)))))), arg_2.b, _wgslsmith_div_f32(arg_0.x, arg_0.x)), any(select(func_5(func_2(vec4<i32>(64621i, 29135i, -2147483647i, 2147483647i), arg_1, vec3<bool>(true, true, true)), ~vec2<u32>(2640u, arg_1.b)), vec2<bool>(false, true), func_5(func_2(vec4<i32>(-2147483647i, 0i, -2147483647i, -2147483647i), arg_2, vec3<bool>(true, false, true)), min(vec2<u32>(arg_1.b, 4294967295u), u_input.a)).x)), func_5(arg_2, ~_wgslsmith_div_vec2_u32(~vec2<u32>(global2.b, 0u), ~u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.b, arg_1.b, global1.b, global2.b), ~(vec4<u32>(0u, arg_2.b, 82643u, 1u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global2.b, u_input.b.x, 4294967295u, 2349u), vec4<u32>(72076u, global1.b, 33534u, global2.b)) % vec4<u32>(32u)))));
    var var_1 = vec2<u32>(~1u, ~global1.b);
    let var_2 = _wgslsmith_f_op_f32(min(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.c, -886f)) + _wgslsmith_f_op_f32(min(arg_2.a, arg_2.c))))))));
    var var_3 = func_2(-vec4<i32>(min(-6502i, 1i), 1i, 1i, reverseBits(-23648i)), func_6(arg_2, false, func_5(arg_1, vec2<u32>(_wgslsmith_mod_u32(0u, 3767u), global1.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b, 36542u, global2.b, 0u) | vec4<u32>(var_0.b, u_input.b.x, var_0.b, arg_2.b), vec4<u32>(1u, arg_1.b, 73817u, var_1.x) | vec4<u32>(arg_2.b, 1190u, arg_1.b, 0u)) & _wgslsmith_clamp_vec4_u32(select(vec4<u32>(var_1.x, u_input.c, 1u, 41839u), vec4<u32>(arg_1.b, u_input.c, 69546u, arg_2.b), vec4<bool>(true, false, false, true)), vec4<u32>(global2.b, var_1.x, var_1.x, var_1.x), vec4<u32>(0u, global1.b, 36907u, global2.b) ^ vec4<u32>(arg_1.b, global2.b, arg_1.b, arg_1.b))), vec3<bool>(true, false, true));
    let var_4 = _wgslsmith_mod_u32(u_input.b.x, (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_2.b, 104366u)) ^ 1u) & 4294967295u);
    return any(select(vec2<bool>(true, func_5(arg_2, vec2<u32>(global2.b, global1.b)).x), select(vec2<bool>(true, arg_2.b == 424u), vec2<bool>(true, true), vec2<bool>(func_5(Struct_1(var_2, u_input.a.x, arg_2.a), u_input.a).x, true)), vec2<bool>(true, true)));
}

fn func_7(arg_0: vec2<bool>, arg_1: vec3<bool>) -> Struct_1 {
    global1 = Struct_1(global2.c, u_input.a.x | global2.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2(vec4<i32>(-21209i, 342i, 33383i, 44050i), Struct_1(global2.a, global1.b, global1.c), arg_1).a, global2.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a * -484f) * _wgslsmith_f_op_f32(trunc(global1.a)))), _wgslsmith_f_op_f32(floor(538f)))));
    let var_0 = _wgslsmith_mod_vec4_i32(select((firstTrailingBit(vec4<i32>(-2147483647i, 1i, 6580i, 25498i)) >> (vec4<u32>(global1.b, global2.b, 1u, global1.b) % vec4<u32>(32u))) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(11492u, u_input.b.x, u_input.c, u_input.c), vec4<u32>(u_input.b.x, 4294967295u, global1.b, global1.b)) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(arg_1.x, !(arg_1.x && arg_0.x), true, true)), ~(-vec4<i32>(~(-37882i), -22577i, i32(-1i) * -986i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -7081i, -1i, 2147483647i), vec4<i32>(-27432i, 2147483647i, 29182i, -129i)))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + 720f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.c, global1.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(vec2<f32>(740f, 826f), vec2<u32>(u_input.a.x, 1u), vec4<u32>(35384u, global1.b, 4294967295u, u_input.c))), 705f, true)))))));
    var_1 = 235f;
    let var_2 = global1.b;
    return func_2(~var_0, Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(547f, global1.a)), _wgslsmith_f_op_f32(exp2(global1.a))), global2.a), 40211u, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.c) - vec2<f32>(-979f, global1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, -1220f) - vec2<f32>(-1703f, global2.c)))), u_input.a, _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, u_input.c, 67418u, 1864u), _wgslsmith_mod_vec4_u32(vec4<u32>(26449u, 1u, global1.b, 11902u), vec4<u32>(global2.b, 126669u, global1.b, u_input.a.x)), ~vec4<u32>(4294967295u, 1u, 0u, global2.b))))), vec3<bool>(true, !(!arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))));
}

fn func_8(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = !select(vec3<bool>(arg_0, arg_0, true), select(!(!vec3<bool>(arg_1, false, false)), vec3<bool>(true, true, true), vec3<bool>(u_input.a.x >= 32160u, any(vec3<bool>(false, true, arg_0)), var_0.a < -936f)), !vec3<bool>(arg_0, arg_0, arg_0));
    var var_2 = -(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(select(vec2<i32>(22625i, 22961i), vec2<i32>(10172i, -12533i), var_1.zx), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-29290i, 0i))));
    var var_3 = _wgslsmith_f_op_f32(max(-570f, var_0.c));
    var var_4 = !(!select(select(!vec3<bool>(arg_1, false, true), vec3<bool>(true, true, true), true), vec3<bool>(!arg_1, 4294967295u >= global2.b, false), vec3<bool>(false, select(false, arg_0, arg_1), select(arg_0, false, var_1.x))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c;
    let var_1 = func_8(true, true, func_7(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -2227f) >= _wgslsmith_f_op_f32(ceil(-381f)), select(all(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, false, true, true)), func_1(vec2<f32>(global1.c, global2.c), Struct_1(-189f, 64184u, 812f), Struct_1(global1.c, 55112u, -305f)))), vec3<bool>(true, false, true)));
    var_0 = _wgslsmith_f_op_f32(-var_1.a);
    var var_2 = ~4294967295u;
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(0i), i32(-1i) * -1i), vec2<i32>(0i, ~1509i)), 43668i, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, 1i), 9007i)), abs(-vec3<i32>(1i, _wgslsmith_mod_i32(-1i, -17222i), 1i)));
    var var_4 = vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.b, 1u), 1u), abs(var_1.b)), firstLeadingBit(4294967295u), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(i32(-1i) * -18671i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, -662f, -1541f) * vec3<f32>(1173f, global1.a, -219f)), vec3<f32>(1227f, -695f, var_1.a), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -424f), global2.c, 1273f)), true)));
}

