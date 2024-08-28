struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<i32>, 25>;

var<private> global2: Struct_2 = Struct_2(-2222i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(min(arg_1.a | ~_wgslsmith_add_u32(26880u, arg_1.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_1.b.x, 1u), abs(arg_1.a)), min(arg_1.b, ~arg_1.b))), arg_1.b, true);
    var var_1 = countOneBits(~(~countOneBits(vec4<u32>(1u, 37838u, 0u, var_0.a)) << ((~vec4<u32>(4294967295u, 57739u, 4294967295u, 0u) << ((vec4<u32>(4294967295u, 18623u, 39554u, arg_1.a) << (vec4<u32>(arg_1.b.x, 0u, var_0.b.x, var_0.a) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global2 = arg_0;
    let var_2 = 2716u;
    var var_3 = -1285f;
    return abs(abs(var_1.x) ^ arg_1.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    global2 = arg_0;
    let var_0 = Struct_2(_wgslsmith_dot_vec2_i32(~(~u_input.a | ~u_input.a), _wgslsmith_mod_vec2_i32(select(min(vec2<i32>(20161i, 0i), vec2<i32>(0i, u_input.a.x)), select(u_input.a, u_input.a, true), select(vec2<bool>(arg_1.c, true), vec2<bool>(true, arg_1.c), false)), select(firstTrailingBit(vec2<i32>(u_input.a.x, 2147483647i)), ~vec2<i32>(0i, 49884i), select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, false), vec2<bool>(arg_1.c, arg_1.c))))));
    var var_1 = all(vec4<bool>(all(vec4<bool>(true, true, true, true)), u_input.a.x == (i32(-1i) * -18904i), all(vec2<bool>(arg_1.c, arg_1.c)), all(vec3<bool>(false, arg_1.c, arg_1.c)))) && false;
    let var_2 = false;
    global2 = Struct_2(2147483647i);
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec4<i32>, 25>();
    let var_0 = vec3<bool>(arg_2.c, all(vec3<bool>(arg_2.c, true, all(vec2<bool>(arg_2.c, arg_2.c)))), func_4(arg_0, Struct_1(reverseBits(~94456u), vec2<u32>(func_3(arg_0, Struct_1(arg_2.b.x, arg_2.b, false)), 15208u), !(!arg_2.c))));
    global1 = array<vec4<i32>, 25>();
    global1 = array<vec4<i32>, 25>();
    let var_1 = -vec3<i32>(firstTrailingBit(arg_0.a) << (_wgslsmith_mod_u32(arg_2.a, arg_2.b.x) % 32u), 1i, -reverseBits(global2.a)) & min(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a, 0i, 1i), vec3<i32>(29371i, 46972i, global0.x)), vec3<i32>(global0.x, arg_0.a, global2.a) | vec3<i32>(global2.a, -2147483647i, global2.a)) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.a, arg_2.b.x, 30811u), vec3<u32>(0u, arg_2.a, arg_2.a)) % vec3<u32>(32u)), vec3<i32>(~u_input.a.x, -81353i, min(-20158i, global0.x)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.b.x, arg_2.a, 1u), vec3<u32>(13807u, 8620u, arg_2.a)) % vec3<u32>(32u)));
    return Struct_1(arg_2.a, vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(arg_2.a << (arg_2.b.x % 32u)), 1u), 32931u), false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(648f, 115f)))))));
    var var_2 = Struct_2(abs(min(-abs(global2.a), ~global2.a)));
    global2 = Struct_2(~firstLeadingBit(~(-63400i)));
    global1 = array<vec4<i32>, 25>();
    return firstTrailingBit(arg_2);
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    let var_0 = ~(~min(vec3<i32>(_wgslsmith_sub_i32(-1i, 2147483647i), max(2147483647i, global0.x), -global2.a), vec3<i32>(2147483647i, -21661i, 2147483647i) >> (vec3<u32>(13591u, arg_1.x, arg_1.x) % vec3<u32>(32u))));
    global1 = array<vec4<i32>, 25>();
    var var_1 = var_0;
    global0 = var_0.yy;
    var_1 = -(-_wgslsmith_div_vec3_i32(var_0, vec3<i32>(2147483647i, arg_0.a, -2147483647i)) ^ ~(~vec3<i32>(arg_0.a, var_1.x, u_input.a.x))) >> (~arg_1.xwx % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(select(173f, _wgslsmith_div_f32(-990f, _wgslsmith_f_op_f32(floor(arg_2))), false | !(arg_1.x > 20237u)));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_6(Struct_2(~func_5(func_2(Struct_2(global0.x), u_input.a.x, Struct_1(4294967295u, vec2<u32>(87154u, 4294967295u), true)), Struct_1(18966u, vec2<u32>(0u, 1599u), true), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, u_input.a.x, global0.x), vec3<i32>(0i, u_input.a.x, -1i)), true)), ~select(vec4<u32>(_wgslsmith_sub_u32(69133u, 1u), 1u, 4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 1u), func_2(Struct_2(global2.a), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 23599i, global2.a, 7212i), global1[_wgslsmith_index_u32(0u, 25u)]), Struct_1(1u, vec2<u32>(0u, 4294967295u), false)).c), 2773f));
    var var_1 = select(!vec3<bool>(all(vec2<bool>(false, true)), true, all(vec4<bool>(true, true, true, true))), vec3<bool>(false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), func_4(Struct_2(-43859i), Struct_1(4294967295u, vec2<u32>(0u, 89147u), true)))), true), true);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(240f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 1768f) * _wgslsmith_div_f32(-2548f, 1586f)), -172f))) + var_0);
    let var_2 = vec2<i32>(-_wgslsmith_clamp_i32(~(-2147483647i), u_input.a.x, global2.a), global2.a);
    let var_3 = func_2(Struct_2(u_input.a.x), 2147483647i, func_2(Struct_2(var_2.x), -global2.a, Struct_1(~3552u, ~vec2<u32>(119075u, 4294967295u), false)));
    var var_4 = var_0;
    global1 = array<vec4<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~(vec3<u32>(38680u, 0u, var_3.b.x) >> (vec3<u32>(97861u, var_3.b.x, 18971u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(123f * -328f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), -307f, _wgslsmith_f_op_f32(f32(-1f) * -1787f)))));
}

