struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec3<i32>(0i, -47009i, 2147483647i), Struct_2(2418i), Struct_2(-629i)), Struct_3(vec3<i32>(-26029i, 25035i, 56780i), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648))), Struct_3(vec3<i32>(-40303i, 1i, -1i), Struct_2(3188i), Struct_2(6967i)), Struct_3(vec3<i32>(i32(-2147483648), 25000i, -1i), Struct_2(-37408i), Struct_2(-1i)));

var<private> global1: Struct_4;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> u32 {
    return (~27899u & u_input.b.x) ^ arg_1;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_3, 4>();
    return abs(~func_3(global0[_wgslsmith_index_u32(29792u, 4u)], global1.a.x)) >> (~(~4294967295u ^ _wgslsmith_sub_u32(~arg_0.d.x, ~0u)) % 32u);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    var var_0 = firstTrailingBit(vec2<i32>(~(~(i32(-1i) * -31296i)), abs(u_input.c)));
    let var_1 = ~u_input.e.yy;
    global0 = array<Struct_3, 4>();
    global1 = Struct_4(_wgslsmith_clamp_vec2_u32(select(u_input.b.zz, var_1, select(arg_1, vec2<bool>(true, true), global1.b)), abs(var_1), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(17105u, 1u), var_1.x), select(global1.d.d.wx, ~vec2<u32>(arg_0, arg_2), arg_1))), !(!arg_1), ~u_input.d, global1.d);
    var_0 = select(~(~abs(global1.c.xx)), firstTrailingBit(u_input.d.yy), vec2<bool>(true, arg_1.x));
    return 1301f;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-271f, arg_0, arg_0, arg_0))))) - vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(2092f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0, arg_0)))))));
    global1 = Struct_4(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(global1.d.d.x, 78427u), ~global1.a), vec2<u32>(abs(4294967295u), _wgslsmith_add_u32(0u, 36211u))), _wgslsmith_add_vec2_u32(~u_input.e.yx, max(vec2<u32>(4294967295u, global1.d.d.x), min(vec2<u32>(global1.a.x, global1.a.x), u_input.e.zy)))), vec2<bool>(true, any(select(global1.b, !global1.b, vec2<bool>(global1.d.c, true)))), -vec3<i32>(min(u_input.c & -78410i, _wgslsmith_sub_i32(1498i, -47190i)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.d.a, -2147483647i, global1.d.a), vec3<i32>(global1.d.b.x, 2147483647i, 42472i)), u_input.d), _wgslsmith_sub_i32(global1.d.a, _wgslsmith_sub_i32(22852i, u_input.c))), Struct_1(-3460i, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(603i, arg_1.b.a, 0i), ~(~u_input.d)), global1.b.x, vec4<u32>(60962u, _wgslsmith_clamp_u32(u_input.b.x, u_input.e.x, 78522u), global1.d.d.x, _wgslsmith_sub_u32(global1.a.x, 20146u)) >> (countOneBits(vec4<u32>(global1.a.x, 38123u, 20335u, 3416u) ^ vec4<u32>(global1.d.d.x, u_input.e.x, global1.a.x, u_input.b.x)) % vec4<u32>(32u))));
    global1 = Struct_4(u_input.b.xy, global1.b, (_wgslsmith_mod_vec3_i32(~global1.d.b, vec3<i32>(arg_1.a.x, 0i, -1i)) >> (global1.d.d.yyx % vec3<u32>(32u))) >> (select(~vec3<u32>(u_input.a, 0u, global1.d.d.x), ~(~global1.d.d.xzy), _wgslsmith_f_op_f32(var_0.x + var_0.x) >= -1120f) % vec3<u32>(32u)), Struct_1(_wgslsmith_mult_i32(firstLeadingBit(min(global1.d.a, u_input.c)), _wgslsmith_add_i32(~(-6972i), -global1.c.x)), _wgslsmith_mult_vec3_i32(u_input.d, _wgslsmith_sub_vec3_i32(arg_1.a, firstLeadingBit(global1.d.b))), all(vec4<bool>(global1.d.c, true, global1.d.c, true)) | (all(vec4<bool>(false, true, global1.d.c, global1.d.c)) || !global1.b.x), ~vec4<u32>(global1.a.x, ~21404u, ~44767u, u_input.e.x)));
    var var_1 = vec3<i32>(~arg_1.b.a, i32(-1i) * -9053i, ~global1.c.x);
    var var_2 = arg_1;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~60154u, 4294967295u, 65718u >> (_wgslsmith_mod_u32(1u, firstTrailingBit(4294967295u)) % 32u), _wgslsmith_mult_u32(u_input.a, firstLeadingBit(u_input.a))), firstTrailingBit(countOneBits(vec4<u32>(_wgslsmith_div_u32(41755u, 65717u), global1.a.x, min(75607u, u_input.a), 74277u))));
}

fn func_1() -> f32 {
    var var_0 = ~func_5(_wgslsmith_f_op_f32(func_4(_wgslsmith_mod_u32(u_input.b.x, func_2(global1.d)), select(select(global1.b, vec2<bool>(false, false), true), !global1.b, vec2<bool>(true, global1.d.c)), _wgslsmith_div_u32(countOneBits(u_input.a), 0u))), global0[_wgslsmith_index_u32(global1.d.d.x, 4u)]);
    var var_1 = Struct_3(select(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, global1.c.x), vec3<i32>(-17881i, global1.c.x, u_input.d.x)) >> (global1.d.d.zxz % vec3<u32>(32u)), -vec3<i32>(u_input.d.x, u_input.c, -1i), !select(vec3<bool>(global1.b.x, true, true), vec3<bool>(true, global1.b.x, global1.b.x), true)) >> (_wgslsmith_add_vec3_u32(global1.d.d.wxw, vec3<u32>(global1.d.d.x ^ u_input.a, abs(61381u), 3285u)) % vec3<u32>(32u)), Struct_2(i32(-1i) * -2147483647i), Struct_2(14199i));
    let var_2 = select(!(!(!(!vec4<bool>(true, global1.d.c, false, global1.b.x)))), select(!(!select(vec4<bool>(global1.b.x, true, true, global1.b.x), vec4<bool>(true, global1.b.x, false, global1.d.c), false)), vec4<bool>(select(0i > global1.d.b.x, global1.b.x, global1.b.x), !(!global1.d.c), true, true), !select(select(vec4<bool>(global1.d.c, true, true, global1.d.c), vec4<bool>(true, global1.b.x, false, false), vec4<bool>(global1.d.c, global1.b.x, true, true)), select(vec4<bool>(global1.d.c, global1.d.c, false, true), vec4<bool>(false, global1.d.c, false, true), global1.b.x), !global1.d.c)), vec4<bool>(all(vec3<bool>(global1.b.x | global1.d.c, u_input.e.x > global1.a.x, true)), any(select(select(vec4<bool>(false, true, true, global1.b.x), vec4<bool>(true, global1.d.c, false, global1.b.x), global1.b.x), vec4<bool>(false, true, false, global1.b.x), vec4<bool>(global1.b.x, global1.d.c, true, false))), 0i < -_wgslsmith_mult_i32(0i, u_input.d.x), !global1.b.x));
    var var_3 = var_1.c;
    let var_4 = vec2<bool>(all(select(vec2<bool>(true, true), var_2.yx, !(global1.d.c && false))), all(vec2<bool>(false, all(vec3<bool>(false, true, false)))));
    return -1070f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xx;
    var var_1 = 479f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-947f, -1416f)), _wgslsmith_div_f32(1000f, -286f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1306f, -1467f, 260f), vec3<f32>(-1235f, -1038f, 233f))))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-432f * 437f), _wgslsmith_f_op_f32(max(-195f, 795f)), _wgslsmith_f_op_f32(abs(-1381f)))))))));
    global1 = Struct_4(~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_0.x, 11261u), u_input.b.xz, global1.d.c) | ~u_input.e.xx, ~var_0, vec2<u32>(55619u, 4294967295u) | u_input.e.yx), global1.b, firstTrailingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.c, u_input.c), -u_input.d)), Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(min(u_input.d.yx, vec2<i32>(global1.d.b.x, 0i)), abs(u_input.d.yx)), _wgslsmith_mult_i32(u_input.d.x << (u_input.e.x % 32u), ~(-30713i))), u_input.d, u_input.d.x == -24508i, vec4<u32>(~10940u, ~(~global1.d.d.x), _wgslsmith_dot_vec2_u32(min(u_input.b.yz, vec2<u32>(var_0.x, u_input.a)), reverseBits(var_0)), firstLeadingBit(22762u) >> (u_input.e.x % 32u))));
    var var_4 = var_3.x;
    let var_5 = vec3<f32>(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))), var_3.x)))), _wgslsmith_f_op_f32(sign(-864f)));
    let x = u_input.a;
    s_output = StorageBuffer(33690i);
}

