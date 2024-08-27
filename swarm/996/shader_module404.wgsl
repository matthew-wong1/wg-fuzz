struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: array<vec3<f32>, 19>;

var<private> global2: Struct_4 = Struct_4(4294967295u, Struct_1(vec2<i32>(1i, -1i)), Struct_1(vec2<i32>(-26583i, 0i)), vec2<u32>(4294967295u, 6993u), vec3<u32>(18110u, 90180u, 31022u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1058f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * -463f) - _wgslsmith_f_op_f32(-2463f * -227f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -362f)))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(select(var_0, var_0, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))))));
    var var_2 = Struct_4(u_input.b, global2.b, Struct_1(global2.c.a), vec2<u32>(select(max(u_input.b, global2.e.x) ^ global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global2.a), 32u)], u_input.b, true), ~10390u), global2.e ^ min(~min(global2.e, vec3<u32>(1u, u_input.b, global0[_wgslsmith_index_u32(1u, 32u)])), global2.e));
    var var_3 = Struct_2(select(~16492u, 4294967295u, !(!any(vec4<bool>(false, false, false, true)))), u_input.b);
    var_1 = _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 + 1915f));
    return var_2.b.a.x;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = 53004u;
    let var_1 = Struct_2(_wgslsmith_sub_u32(u_input.b, 98663u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), global2.d), ~global2.d.x), 32u)], 32u)] << (~u_input.b % 32u), ~_wgslsmith_div_u32(~1u, firstLeadingBit(1u)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(u_input.b, global0[_wgslsmith_index_u32(~0u, 32u)])), 32u)]), 32u)]);
    let var_2 = _wgslsmith_add_vec2_i32(-global2.b.a, select(-(~(~vec2<i32>(18513i, 0i))), vec2<i32>(func_3(), -1i), all(vec4<bool>(true, true, true, true))));
    global1 = array<vec3<f32>, 19>();
    var_0 = global2.d.x;
    return !vec4<bool>(true, true, _wgslsmith_f_op_f32(min(-1108f, _wgslsmith_f_op_f32(-167f + -561f))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1302f, 269f))), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-939f, -1411f), -688f)), 1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1478f))))));
    var var_1 = vec2<u32>(global0[_wgslsmith_index_u32(~u_input.b, 32u)], 4294967295u);
    var var_2 = vec4<bool>(!all(select(func_2(-2147483647i), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), true)), any(vec2<bool>(true, _wgslsmith_f_op_f32(min(-840f, -811f)) <= var_0.x)), false, select(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.a.x, u_input.a, -2147483647i), -vec3<i32>(u_input.a, -18967i, -37541i)), -2147483647i, any(vec4<bool>(true, true, true, true))) > -1i);
    global1 = array<vec3<f32>, 19>();
    var var_3 = Struct_1(~global2.b.a);
    return 0u;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_4(max(global2.e.x, (arg_2 >> ((arg_2 << (30967u % 32u)) % 32u)) << (func_1() % 32u)), global2.b, global2.c, abs(global2.d), global2.e);
    global1 = array<vec3<f32>, 19>();
    var var_1 = -_wgslsmith_clamp_vec4_i32(min(-vec4<i32>(-19055i, var_0.c.a.x, global2.b.a.x, var_0.b.a.x), (vec4<i32>(global2.c.a.x, 3096i, global2.c.a.x, u_input.a) << (vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0.a, 32u)], u_input.b, 51189u) % vec4<u32>(32u))) & ~vec4<i32>(var_0.b.a.x, -2458i, 2147483647i, global2.c.a.x)), abs(abs(firstTrailingBit(vec4<i32>(2147483647i, global2.b.a.x, -45324i, -1648i)))), vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(var_0.c.a.x), ~2802i), u_input.a, _wgslsmith_div_i32(select(-1i, 1i, false), global2.b.a.x), ~(i32(-1i) * -15203i)));
    let var_2 = u_input.a ^ var_0.b.a.x;
    let var_3 = Struct_2(_wgslsmith_add_u32(arg_2, u_input.b), ~1u);
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32) -> StorageBuffer {
    var var_0 = Struct_3(Struct_1((arg_1.b.a << (~vec2<u32>(global2.e.x, arg_1.a) % vec2<u32>(32u))) | vec2<i32>(2147483647i << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.a.x, arg_1.c.a.x, global2.b.a.x, u_input.a), vec4<i32>(-1371i, u_input.a, -2147483647i, -1i)))), arg_0, func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1341f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 405f))), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(global2.a, arg_0.a)), ~select(arg_1.e.yy, vec2<u32>(18973u, 0u), vec2<bool>(false, false))), ~44170u), global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(global2.a, 14309u) & arg_0.a), 32u)], arg_0);
    var var_1 = !(!vec2<bool>(all(vec3<bool>(false, false, true)), func_2(var_0.a.a.x).x || (1u < arg_1.a)));
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    var var_2 = !(31758i >= _wgslsmith_sub_i32(_wgslsmith_mod_i32(global2.b.a.x << (32224u % 32u), _wgslsmith_add_i32(2147483647i, global2.b.a.x)), _wgslsmith_add_i32(arg_2, -1i)));
    return StorageBuffer(select(~(-abs(vec4<i32>(var_0.a.a.x, -14977i, arg_1.b.a.x, global2.c.a.x))), _wgslsmith_div_vec4_i32(vec4<i32>(23471i, global2.b.a.x, 2147483647i, 2147483647i) | select(vec4<i32>(global2.c.a.x, 2147483647i, arg_2, 2147483647i), vec4<i32>(-35112i, global2.c.a.x, u_input.a, var_0.a.a.x), var_1.x), max(-vec4<i32>(arg_1.b.a.x, u_input.a, arg_1.c.a.x, 22353i), abs(vec4<i32>(11112i, 5679i, u_input.a, arg_1.b.a.x)))), func_2(-31895i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 32>();
    let var_0 = any(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))) || false;
    let x = u_input.a;
    s_output = func_5(func_4(-1779f, global2.e.zx, _wgslsmith_add_u32(func_1(), global2.e.x)), Struct_4(~global2.a, Struct_1(-_wgslsmith_div_vec2_i32(global2.c.a, vec2<i32>(u_input.a, u_input.a))), global2.c, ~(~_wgslsmith_sub_vec2_u32(global2.e.xz, vec2<u32>(0u, global2.d.x))), vec3<u32>(abs(60295u), global0[_wgslsmith_index_u32(48531u, 32u)] | 41521u, 0u)), firstLeadingBit(min(-18827i, abs(-2147483647i))));
}

