struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

var<private> global2: Struct_2 = Struct_2(-205f, Struct_1(0u, 164f, vec2<i32>(-17401i, 58391i), vec3<f32>(-327f, -416f, -562f), vec3<f32>(-1026f, 1000f, -2474f)), Struct_1(1u, -2314f, vec2<i32>(-29548i, 2147483647i), vec3<f32>(-1058f, -868f, 1000f), vec3<f32>(1672f, -270f, -779f)), Struct_1(63036u, 1362f, vec2<i32>(23574i, 5543i), vec3<f32>(-370f, -416f, 276f), vec3<f32>(-149f, -720f, 1000f)), -1371f);

var<private> global3: vec3<f32> = vec3<f32>(990f, 465f, 623f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> vec3<f32> {
    global2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.d, global2.d, Struct_1(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-670f, global3.x))), select(~global2.b.c, reverseBits(_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(global2.d.c.x, u_input.e.x))), true), vec3<f32>(_wgslsmith_div_f32(831f, -1664f), global2.c.b, -1017f), global2.c.d), 506f);
    var var_0 = max(global2.d.c.x, global2.b.c.x) >> (select(~reverseBits(~48373u), ~(~u_input.a), true) % 32u);
    global1 = vec3<u32>(u_input.a, 0u, _wgslsmith_mult_u32(firstLeadingBit(global2.d.a) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, arg_0)), ~arg_0) >> (~_wgslsmith_sub_u32(u_input.b, ~55709u) % 32u));
    var_0 = 1i ^ _wgslsmith_mult_i32(global2.c.c.x, 10395i | min(-26799i << (u_input.d % 32u), u_input.e.x));
    let var_1 = select(vec2<bool>((i32(-1i) * -u_input.e.x) >= _wgslsmith_dot_vec2_i32(u_input.e.zx, vec2<i32>(global2.d.c.x, 51562i)), true), vec2<bool>(false, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(false, false))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), !all(vec4<bool>(true, true, false, true)))));
    return global2.d.d;
}

fn func_2() -> bool {
    global2 = Struct_2(_wgslsmith_f_op_f32(select(global2.d.b, _wgslsmith_f_op_f32(f32(-1f) * -245f), true)), global2.c, Struct_1(~24681u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-419f, global3.x)))), vec2<i32>(_wgslsmith_div_i32(u_input.c.x, 0i) & u_input.e.x, -1i), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), global2.a, _wgslsmith_f_op_f32(-global3.x)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global3.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(866f, global2.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - 938f), _wgslsmith_f_op_f32(global3.x + 954f)))), Struct_1(~u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global2.a, 1000f))))), ~(-vec2<i32>(1i, global2.b.c.x) & ~global2.c.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(4294967295u))))), _wgslsmith_f_op_vec3_f32(select(global2.b.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.d.x, 1000f, global2.d.b)) - _wgslsmith_f_op_vec3_f32(floor(global2.d.e))), abs(global1.x) < _wgslsmith_dot_vec2_u32(global1.yy, global1.yx)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2.b.e.x)), _wgslsmith_f_op_vec3_f32(func_3(global2.b.a)).x)), _wgslsmith_f_op_f32(222f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(432f)), _wgslsmith_div_f32(global2.a, 1390f))))));
    global1 = vec3<u32>(~1u, u_input.a ^ (_wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.b.a, 64039u), global2.d.a << (0u % 32u)) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, 4294967295u), ~global2.b.a) % 32u)), _wgslsmith_sub_u32(64387u, u_input.d));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(global3.x)), Struct_1(14720u, _wgslsmith_f_op_f32(trunc(1000f)), vec2<i32>(max(-2147483647i, global2.c.c.x) | abs(-10744i), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(u_input.e, u_input.e), -7500i)), vec3<f32>(global2.e, 296f, _wgslsmith_f_op_vec3_f32(func_3(u_input.a)).x), global2.d.d), global2.d, global2.b, _wgslsmith_f_op_f32(-global2.a));
    let var_1 = select(~abs(vec4<u32>(~1u, u_input.d, var_0.b.a, var_0.b.a)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, var_0.b.a, u_input.b) | vec4<u32>(1u, 16590u, 0u, var_0.b.a), vec4<u32>(global1.x, 4294967295u, 22981u, 21929u)), _wgslsmith_div_vec4_u32(~vec4<u32>(8189u, var_0.d.a, u_input.d, 16053u), _wgslsmith_mod_vec4_u32(vec4<u32>(90497u, global2.c.a, 0u, 0u), vec4<u32>(0u, 15471u, 63840u, 37357u)))), select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true))), vec4<bool>(true, 25427i < global2.c.c.x, true, any(vec2<bool>(true, false))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, false)))), var_0.c.c.x < _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, global2.b.c.x), var_0.d.c), global2.d.c)));
    var var_2 = global2.c;
    return false;
}

fn func_1() -> vec2<i32> {
    var var_0 = 4294967295u;
    var var_1 = ~31693u;
    global0 = func_2();
    var_1 = ~_wgslsmith_mod_u32(~(~u_input.b) << (global1.x % 32u), global2.b.a);
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * global3.x)), 905f), Struct_1(global1.x, global3.x, vec2<i32>(~(i32(-1i) * -1i), ~reverseBits(global2.c.c.x)), vec3<f32>(373f, global2.d.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(global2.d.a)).x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.c.e) - vec3<f32>(1167f, _wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(1000f - global2.b.b)))), Struct_1(31176u << (u_input.d % 32u), global3.x, u_input.e.zx, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global2.c.d))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(u_input.a)).x, _wgslsmith_f_op_f32(select(-1000f, 677f, false)), -1735f) - global2.c.e)), Struct_1(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.a, global1.x, u_input.d, 1u), vec4<u32>(1u, u_input.d, global2.b.a, 0u), vec4<bool>(false, false, false, true)), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 0u, 28454u, 66651u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 40435u, global1.x, global1.x), vec4<u32>(u_input.d, global2.b.a, 1u, 1u)))), global2.c.d.x, countOneBits(vec2<i32>(global2.b.c.x, -22891i) >> (vec2<u32>(global2.c.a, 22764u) % vec2<u32>(32u))) << (~abs(vec2<u32>(61337u, 46802u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.d.d + vec3<f32>(global2.a, -331f, global3.x)) * _wgslsmith_f_op_vec3_f32(-global2.c.d)), vec3<f32>(1f, -1000f, global2.d.e.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)))), global2.d.e), -467f);
    return _wgslsmith_sub_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(-global2.b.c.x, u_input.e.x), vec2<i32>(32251i, select(global2.d.c.x, var_2.d.c.x, true))), _wgslsmith_sub_vec2_i32(vec2<i32>(-(~(-1i)), reverseBits(firstTrailingBit(var_2.d.c.x))), -(vec2<i32>(u_input.c.x, var_2.d.c.x) & global2.b.c) | select(_wgslsmith_div_vec2_i32(var_2.d.c, vec2<i32>(global2.d.c.x, 11539i)), global2.c.c, global2.b.a <= 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1363f;
    var_0 = global3.x;
    global2 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1266f + global2.b.e.x))))), global2.d, global2.b, Struct_1(~(~_wgslsmith_mult_u32(1u, 128147u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(-global2.e))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(363f))))), select(func_1(), global2.d.c, !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(max(873f, 135f)))), 1658f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, _wgslsmith_f_op_f32(max(729f, global2.b.b)), _wgslsmith_f_op_f32(ceil(-783f))) + _wgslsmith_f_op_vec3_f32(ceil(global2.c.d)))), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1547f + _wgslsmith_f_op_f32(-global3.x)) - -1000f)));
    var_0 = 526f;
    let var_1 = !any(vec2<bool>(_wgslsmith_f_op_f32(-global2.d.e.x) < 410f, true));
    let var_2 = select(vec2<bool>(var_1, false), select(!select(vec2<bool>(var_1, true), !vec2<bool>(true, var_1), !vec2<bool>(false, var_1)), select(vec2<bool>(false, global3.x >= -355f), select(!vec2<bool>(var_1, var_1), vec2<bool>(true, true), !var_1), (var_1 && var_1) && true), select(vec2<bool>(any(vec2<bool>(false, var_1)), var_1), select(select(vec2<bool>(true, true), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1)), select(vec2<bool>(true, false), vec2<bool>(var_1, var_1), vec2<bool>(var_1, false)), select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), var_1)), select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), false), vec2<bool>(true, var_1), vec2<bool>(var_1, var_1)))), !(!select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), var_1 != var_1)));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, -2020f, global2.b.e.x), global2.c.d)))))))));
    let var_4 = ~global1.x < _wgslsmith_mod_u32(global2.d.a, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(global1.yz, global1.xy), ~vec2<u32>(abs(global1.x), _wgslsmith_mult_u32(global1.x, 4294967295u))), abs((global2.b.c.x & func_1().x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.d.a, 59283u), _wgslsmith_clamp_vec3_u32(vec3<u32>(31276u, 46856u, u_input.b), vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.b, 43004u, 7576u))) % 32u)));
}

