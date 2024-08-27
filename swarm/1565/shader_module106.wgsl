struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 12>;

var<private> global2: array<f32, 30> = array<f32, 30>(1102f, 586f, 599f, 898f, -1287f, -706f, -877f, -216f, 1405f, -1000f, -1173f, -900f, 1826f, 478f, 1274f, 245f, -1569f, 1247f, -787f, 233f, -1987f, -622f, 1199f, 1078f, 401f, 433f, 136f, -836f, -1098f, -1000f);

var<private> global3: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<u32>) -> i32 {
    var var_0 = all(!(!(!global0.b.e.wwx)));
    let var_1 = vec4<u32>(~firstTrailingBit(~(~31686u)), abs(~1u), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(15225u, 55718u, 1u, global0.b.d.x), reverseBits(vec4<u32>(global0.b.b, u_input.d.x, global0.b.b, 4294967295u))), _wgslsmith_dot_vec2_u32(arg_3.zz, _wgslsmith_add_vec2_u32(global0.b.d.xx, vec2<u32>(4294967295u, 1u))))), ~16714u);
    var var_2 = vec3<u32>(_wgslsmith_clamp_u32(~1u, select(_wgslsmith_add_u32(var_1.x, u_input.d.x ^ 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(33627u, 1u, global0.b.b), vec3<u32>(u_input.d.x, arg_1.a.d.x, arg_2.e.b.d.x) & vec3<u32>(u_input.d.x, var_1.x, 47307u)), arg_1.a.e.x), ~countOneBits(_wgslsmith_add_u32(var_1.x, 6959u))), _wgslsmith_dot_vec3_u32(~((var_1.xyy << (vec3<u32>(var_1.x, 4294967295u, arg_1.a.b) % vec3<u32>(32u))) << ((vec3<u32>(arg_3.x, 2115u, 0u) >> (vec3<u32>(0u, arg_1.e.b.d.x, u_input.d.x) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(firstTrailingBit(~var_1.zxw), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(arg_2.a.d.xx, vec2<u32>(141807u, 0u)), 4294967295u | arg_1.a.b), firstTrailingBit(select(global0.b.d, vec3<u32>(u_input.d.x, 46660u, 1u), global0.b.e.x)))), arg_3.x);
    var var_3 = _wgslsmith_div_f32(-401f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.x) * arg_1.a.a.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_2.a.d.x, 30u)] + 824f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-584f + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 30u)] + arg_1.b.b.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(17089u, 30u)], 165f, true)) - _wgslsmith_f_op_f32(905f + -899f)))));
    global0 = arg_1.e;
    return _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(~(i32(-1i) * -5115i), arg_1.d.x, 1i), -arg_2.d.x);
}

fn func_2() -> Struct_2 {
    global2 = array<f32, 30>();
    let var_0 = select(-select(u_input.c.yzz, vec3<i32>(func_3(1i, Struct_3(global0.b, Struct_2(global0.b.e.x, Struct_1(vec2<f32>(global0.b.a.x, -317f), 1u, 77959u, global0.b.d, global0.b.e)), 0u, vec4<i32>(u_input.a, -36960i, u_input.b, u_input.a), Struct_2(false, Struct_1(global0.b.a, 48225u, u_input.d.x, global0.b.d, global0.b.e))), global1[_wgslsmith_index_u32(global0.b.b, 12u)], vec3<u32>(44470u, 4294967295u, u_input.d.x)), -2147483647i, abs(2147483647i)), 9650u == u_input.d.x), -((_wgslsmith_div_vec3_i32(u_input.c.xxw, u_input.c.wyx) | u_input.c.yxy) << (countOneBits(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) >> (global0.b.d % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<bool>(all(select(!vec4<bool>(false, false, false, global0.b.e.x), vec4<bool>(false, true, true, true), vec4<bool>(false, global0.a, global0.a, global0.b.e.x))), (firstLeadingBit(u_input.b) < -47569i) && all(select(vec3<bool>(global0.b.e.x, global0.b.e.x, global0.a), global0.b.e.wxw, global0.a)), true));
    let var_1 = -1261f;
    let var_2 = func_3(-_wgslsmith_add_i32(reverseBits(var_0.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, u_input.a, var_0.x, -31845i)), select(u_input.c, u_input.c, true))), global1[_wgslsmith_index_u32(global0.b.d.x, 12u)], global1[_wgslsmith_index_u32(firstTrailingBit(abs(global0.b.c)), 12u)], _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 1u), global0.b.d << (vec3<u32>(12364u, _wgslsmith_mult_u32(3085u, global0.b.d.x), countOneBits(u_input.d.x)) % vec3<u32>(32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.a))))));
    return Struct_2(global0.b.e.x, Struct_1(vec2<f32>(-600f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), -130f)), _wgslsmith_add_u32(~u_input.d.x, max(53715u, 41864u)) << (4294967295u % 32u), ~global0.b.c, firstTrailingBit(vec3<u32>(u_input.d.x, 4294967295u, select(u_input.d.x, u_input.d.x, false))), select(!select(vec4<bool>(false, global0.a, true, true), global0.b.e, global0.b.e), select(select(global0.b.e, vec4<bool>(false, global0.b.e.x, false, global0.b.e.x), global0.a), select(global0.b.e, vec4<bool>(false, global0.b.e.x, global0.a, false), false), !global0.b.e), !(!vec4<bool>(false, global0.a, global0.b.e.x, false)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<f32> {
    var var_0 = firstLeadingBit(select(~u_input.a, 5891i, arg_0.e.x));
    global1 = array<Struct_3, 12>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(arg_0.a)), u_input.d.x, _wgslsmith_add_u32(1u | ~(~arg_1.x), select(_wgslsmith_mod_u32(u_input.d.x, 0u), ~global0.b.d.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 30u)]) <= -798f)), abs(arg_0.d), !vec4<bool>(false, (false & arg_0.e.x) || !global0.a, true, true));
    let var_2 = func_2();
    let var_3 = ~(~1u);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(countOneBits(0u), 30u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 30u)])))), -1693f, _wgslsmith_f_op_f32(sign(var_1.a.x)), -889f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1(global0.b, ~(abs(vec4<u32>(u_input.d.x, global0.b.c, u_input.d.x, u_input.d.x) << (vec4<u32>(global0.b.b, 4294967295u, 1u, 1u) % vec4<u32>(32u))) | ~vec4<u32>(55987u, 37024u, 1590u, global0.b.d.x))));
    global2 = array<f32, 30>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a.x, -1625f)))))), u_input.d.x, 52996u, (global0.b.d & vec3<u32>(8311u >> (global0.b.c % 32u), 0u, _wgslsmith_mod_u32(4294967295u, 26822u))) & select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.c, u_input.d.x, 47960u), global0.b.d), 18049u, 50497u ^ global0.b.d.x), ~(~global0.b.d), global0.a), vec4<bool>(!(global0.b.e.x | true), false, !(!any(global0.b.e)), !(!(global0.b.e.x && global0.a))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), ~44496u, global0.b.c, func_2().b.d, global0.b.e);
    let var_2 = Struct_4(_wgslsmith_add_vec3_i32(select(u_input.c.zzz, countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(18874i, u_input.a, u_input.c.x), vec3<i32>(24421i, 63618i, 0i), vec3<i32>(2147483647i, u_input.c.x, u_input.b))), !vec3<bool>(var_1.e.x, global0.b.e.x, false)), _wgslsmith_mult_vec3_i32(u_input.c.wwx, _wgslsmith_mod_vec3_i32(-u_input.c.yyz, vec3<i32>(11799i, 2147483647i, -27716i)))), u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.b.a, func_2().b.a))));
    global2 = array<f32, 30>();
    let var_3 = vec3<u32>(4294967295u ^ ~(1u ^ _wgslsmith_mult_u32(1u, global0.b.c)), ((~var_1.c & var_1.b) ^ _wgslsmith_div_u32(3653u, var_1.c)) >> (~41261u % 32u), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(2041f, -1177f, 2938f, var_0.x)), var_1.e)), _wgslsmith_f_op_vec4_f32(-var_0))))), var_2.b);
}

