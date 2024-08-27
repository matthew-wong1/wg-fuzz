struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, 0i);

var<private> global1: array<f32, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: u32) -> Struct_4 {
    global1 = array<f32, 23>();
    global1 = array<f32, 23>();
    global0 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a.x, -50549i, global0.x), ~(firstLeadingBit(u_input.a) | -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), -u_input.a);
    global1 = array<f32, 23>();
    global1 = array<f32, 23>();
    return Struct_4(_wgslsmith_clamp_u32(0u, reverseBits(_wgslsmith_mult_u32(~4294967295u, arg_0)), 19037u), global0.x, -1963f);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f)));
    var var_1 = func_2(56349u);
    var var_2 = vec4<u32>(u_input.b.x, var_1.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b), select(vec2<u32>(1u, u_input.b.x), u_input.b | u_input.b, vec2<bool>(false, arg_2.x))), var_1.a), ~var_1.a);
    var var_3 = Struct_3(~select(vec3<u32>(14356u, var_1.a, var_2.x), ~var_2.xyw, vec3<bool>(arg_2.x, true, arg_2.x)) ^ vec3<u32>(1u, _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, var_1.a)), 4294967295u), firstTrailingBit(u_input.b.x), Struct_2(arg_2, abs(_wgslsmith_mult_u32(~var_1.a, ~4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(449f, var_1.c, var_1.c) + vec3<f32>(var_0, 175f, -1254f))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(var_1.a, 23u)])), var_1.c, -505f)), _wgslsmith_div_vec3_u32(vec3<u32>(60906u, var_2.x, 69975u), _wgslsmith_add_vec3_u32(var_2.yyy, var_2.ywz)) << (~(vec3<u32>(u_input.b.x, 60694u, var_1.a) >> (vec3<u32>(4294967295u, 0u, var_2.x) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_2(vec4<bool>(true, true, !(true || arg_2.x), any(vec3<bool>(arg_0.x, false, true))), var_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_1.a, 23u)], var_1.c, global1[_wgslsmith_index_u32(var_1.a, 23u)]) + vec3<f32>(887f, var_1.c, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, 1578f, var_1.c))))), vec3<u32>(~(~var_1.a), func_2(~var_1.a).a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 0u, var_2.x), vec4<u32>(var_2.x, 1u, 24764u, 0u)))), Struct_1(var_1.a, select(vec4<bool>(!arg_2.x, false, false, false), !select(arg_2, arg_2, arg_2), vec4<bool>(arg_0.x, true, global0.x >= arg_1.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) + _wgslsmith_f_op_f32(var_1.c - 301f)), arg_2.zzy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 763f, var_0, global1[_wgslsmith_index_u32(18730u, 23u)])) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 293f, 620f, 2608f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, -1747f, 363f, -808f) - vec4<f32>(global1[_wgslsmith_index_u32(14138u, 23u)], var_1.c, 1896f, -899f))))));
    var var_4 = var_3.c.c.yx;
    return Struct_3(vec3<u32>(~(~var_3.d.d.x), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b.x, var_1.a), 4294967295u), ~u_input.b.x), firstTrailingBit(_wgslsmith_div_u32(firstLeadingBit(32026u) >> (~u_input.b.x % 32u), var_3.d.b)), Struct_2(arg_2, _wgslsmith_mult_u32(var_3.d.d.x, firstLeadingBit(_wgslsmith_clamp_u32(var_3.d.d.x, 0u, 34722u))), _wgslsmith_f_op_vec3_f32(step(var_3.c.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -1795f, 2185f) * var_3.e.e.yyx))))), var_3.d.d), var_3.d, Struct_1(_wgslsmith_sub_u32(31714u, 2753u), var_3.d.a, -330f, arg_2.yzw, _wgslsmith_f_op_vec4_f32(abs(var_3.e.e))));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 23u)]) + -210f) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(-825f, global1[_wgslsmith_index_u32(1u, 23u)]) * -270f), true, !(!any(vec2<bool>(true, false))), !(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 0u), 23u)] != global1[_wgslsmith_index_u32(56116u >> (u_input.b.x % 32u), 23u)])), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(~u_input.b.x, ~u_input.b.x & 42629u)), vec3<f32>(global1[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_f_op_f32(ceil(1000f)), global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(1u, u_input.b.x), abs(u_input.b.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 13162u), ~u_input.b.x)), ~vec3<u32>(u_input.b.x, max(0u, 13162u), ~42176u)));
    global0 = -max(u_input.a, u_input.a);
    var var_1 = var_0.a.x;
    let var_2 = Struct_4(~(~1u), ~(~95355i), var_0.c.x);
    let var_3 = func_1(!vec2<bool>(true, all(!var_0.a.wwz)), u_input.a, !select(select(select(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, false, true), var_0.a.x), var_0.a, !var_0.a), vec4<bool>(var_0.a.x, !var_0.a.x, var_0.a.x || var_0.a.x, all(vec3<bool>(true, false, var_0.a.x))), !var_0.a));
    return select(vec4<bool>(func_1(vec2<bool>(var_2.c > var_0.c.x, false), ~_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), vec4<bool>(!var_0.a.x, global0.x > u_input.a.x, true, all(vec2<bool>(var_0.a.x, var_3.c.a.x)))).e.d.x, !(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, 0i, global0.x), u_input.a) != countOneBits(global0.x)), all(var_3.c.a), any(var_0.a.zy)), var_0.a, select(!var_0.a, select(select(select(var_3.e.b, vec4<bool>(false, false, false, true), var_3.c.a), vec4<bool>(var_0.a.x, false, true, var_0.a.x), var_3.c.a), var_0.a, var_3.c.a), !(!vec4<bool>(false, var_3.e.b.x, var_3.d.a.x, true))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> StorageBuffer {
    var var_0 = arg_0.e.d;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0.c.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-240f, arg_1))))), (~arg_2.e.a << (max(67524u, 64261u) % 32u)) > (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, u_input.b.x, 0u, 1u), vec4<u32>(arg_2.b, 65198u, 113133u, arg_2.c.b)) | func_2(arg_0.c.d.x).a)))));
    var var_2 = arg_2.a;
    var_0 = vec3<bool>(!((arg_2.c.c.x <= _wgslsmith_f_op_f32(f32(-1f) * -992f)) || any(arg_2.c.a.zx)), true, any(var_0.yz));
    var var_3 = -global0.zx;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(213f, 332f))), arg_0.e.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -510f), arg_2.e.e.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.e.e.yzw), _wgslsmith_f_op_vec3_f32(round(arg_0.e.e.zyx)), false && arg_2.e.d.x)))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(_wgslsmith_mult_vec3_i32(max(u_input.a, u_input.a), u_input.a << (vec3<u32>(u_input.b.x, 52757u, 4294967295u) % vec3<u32>(32u))), vec3<i32>(global0.x << (u_input.b.x % 32u), u_input.a.x >> (u_input.b.x % 32u), -1i), _wgslsmith_f_op_f32(f32(-1f) * -1100f) > _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(80553u, 23u)] - -390f)), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)] >= -757f, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), !(global1[_wgslsmith_index_u32(4294967295u, 23u)] > -1277f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.b.x, 23u)]), Struct_3(~(~vec3<u32>(u_input.b.x, 57089u, 0u) & min(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(5070u, u_input.b.x, 31736u))), u_input.b.x, func_1(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), any(vec4<bool>(false, false, false, true))), _wgslsmith_mult_vec3_i32(u_input.a ^ u_input.a, vec3<i32>(1i, global0.x, global0.x)), vec4<bool>(true, true, true, true)).d, func_1(vec2<bool>(true, true), min(select(u_input.a, vec3<i32>(-1i, -2147483647i, -3562i), true), u_input.a), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)).c, Struct_1(~41485u, select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), func_3(), true), -661f, vec3<bool>(select(false, true, true), true, func_1(vec2<bool>(true, true), vec3<i32>(u_input.a.x, 8215i, global0.x), vec4<bool>(true, true, false, true)).e.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, global1[_wgslsmith_index_u32(u_input.b.x, 23u)], -262f, global1[_wgslsmith_index_u32(u_input.b.x, 23u)])))));
}

