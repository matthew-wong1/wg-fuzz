struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 19>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-231f + -1070f)), -536f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.b.x), 268f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.d, var_0.x, global1.d), arg_2.b.wyw))) - arg_2.b.ywz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b.yxz) + vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.a)), 152f, _wgslsmith_f_op_f32(525f * -255f))))));
    var var_2 = 68492u;
    let var_3 = Struct_2(arg_2.c.d, -2147483647i, Struct_1(!any(!vec3<bool>(true, arg_2.a.d, global1.c.x)), arg_0.b, vec2<bool>(arg_1 == -17400i, arg_3), arg_0.c.x, ~(~21867i)), vec3<u32>(~u_input.a.x, 4294967295u, u_input.a.x), arg_2.c.e);
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1732f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.x, 325f)), _wgslsmith_f_op_f32(trunc(-127f)))))));
    return !any(!(!(!vec4<bool>(true, arg_3, var_3.e.c.x, global1.c.x))));
}

fn func_2(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_2(vec3<u32>(u_input.a.x, reverseBits(38385u), ~37049u), _wgslsmith_add_i32(abs(8277i), -1i), Struct_1(global1.c.x, vec4<i32>(2807i, global0[_wgslsmith_index_u32(~abs(u_input.a.x), 16u)], (global0[_wgslsmith_index_u32(u_input.a.x, 16u)] | arg_0.b.x) ^ 0i, arg_0.b.x), vec2<bool>(func_3(Struct_1(false, vec4<i32>(0i, global1.b.x, arg_0.b.x, arg_0.b.x), arg_0.c, false, -1i), i32(-1i) * -15311i, Struct_4(Struct_1(global1.c.x, vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 61537i, -3136i, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec2<bool>(arg_0.c.x, true), global1.c.x, -43081i), vec4<f32>(arg_0.d, global1.a, -350f, 186f), Struct_2(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), 0i, Struct_1(false, vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], -1i, 2147483647i, 2147483647i), vec2<bool>(global1.c.x, true), true, global1.b.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(true, vec4<i32>(-32164i, 22578i, arg_0.b.x, global1.b.x), global1.c, false, global1.b.x)), arg_0.a, Struct_3(1601f, arg_0.b, arg_0.c, arg_0.d)), any(vec3<bool>(false, true, true))), true), arg_0.c.x, -30988i), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(18926u, u_input.a.x), ~u_input.a), u_input.a.x, 0u) >> (~vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~u_input.a.x) % vec3<u32>(32u)), Struct_1(!arg_0.c.x, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(2296u, 16u)], 0i, 4652i, global1.b.x), -vec4<i32>(2147483647i, 11982i, arg_0.b.x, global1.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(43909u, 16u)], 24996i, arg_0.b.x), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global1.b.x, global0[_wgslsmith_index_u32(4294967295u, 16u)], 30099i)) | (vec4<i32>(2147483647i, -1i, arg_0.b.x, arg_0.b.x) ^ vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], arg_0.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]))), !vec2<bool>(true, 996f >= global1.d), arg_0.c.x, global1.b.x ^ global1.b.x));
    let var_1 = _wgslsmith_mod_vec3_i32(var_0.c.b.zzz, vec3<i32>(_wgslsmith_mult_i32(abs(global1.b.x), firstLeadingBit(-1i)), 1i, select(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)], true) << ((118232u >> (u_input.a.x % 32u)) % 32u)) & abs(vec3<i32>(~37765i, i32(-1i) * -5025i, var_0.e.e)));
    var var_2 = Struct_1((!all(vec4<bool>(var_0.e.d, arg_0.c.x, global1.c.x, false)) && select(!arg_0.c.x, false, global1.c.x && false)) & (arg_0.d > _wgslsmith_f_op_f32(-arg_0.a)), ~(~vec4<i32>(var_0.c.b.x, -3222i, -var_0.b, global0[_wgslsmith_index_u32(0u, 16u)])), vec2<bool>(global1.c.x, true), false && (all(select(vec3<bool>(true, false, var_0.e.d), vec3<bool>(var_0.e.c.x, false, true), global1.c.x)) || !var_0.c.c.x), var_1.x);
    let var_3 = !func_3(Struct_1(any(vec2<bool>(true, var_2.d)), -var_0.e.b, select(vec2<bool>(true, false), var_2.c, vec2<bool>(true, true)), false, firstTrailingBit(global0[_wgslsmith_index_u32(var_0.d.x, 16u)]) & 0i), var_1.x, Struct_4(Struct_1(false, var_2.b, select(vec2<bool>(false, arg_0.c.x), var_0.e.c, arg_0.c.x), true, ~2147483647i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1321f, 482f, global1.d, global1.d), vec4<f32>(arg_0.a, 323f, arg_0.a, 443f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-199f, -1243f, global1.a, -1122f) - vec4<f32>(728f, 1072f, 1034f, arg_0.a)))), Struct_2(~vec3<u32>(var_0.d.x, 0u, 22405u), var_1.x, Struct_1(false, var_2.b, vec2<bool>(arg_0.c.x, var_0.e.d), true, 19941i), var_0.d, Struct_1(true, var_0.c.b, global1.c, false, var_0.e.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a, -1163f, global1.c.x))), arg_0), func_3(var_0.c, ~arg_0.b.x, Struct_4(var_0.c, vec4<f32>(171f, 1000f, global1.d, 1330f), Struct_2(var_0.a, 25693i, var_0.e, var_0.a, Struct_1(true, vec4<i32>(global1.b.x, var_1.x, 2147483647i, var_2.b.x), vec2<bool>(false, true), false, arg_0.b.x)), 1f, Struct_3(-291f, var_0.e.b.xy, vec2<bool>(arg_0.c.x, true), -301f)), select(true, all(vec4<bool>(global1.c.x, true, var_0.c.c.x, var_2.c.x)), any(vec4<bool>(false, false, arg_0.c.x, false)))));
    let var_4 = Struct_1((max(u_input.a.x >> (30255u % 32u), countOneBits(4294967295u)) <= ~44444u) == !((arg_0.d <= arg_0.d) & true), vec4<i32>(52478i, -arg_0.b.x, var_2.b.x, abs(-1i)), select(!var_0.e.c, select(var_0.c.c, select(vec2<bool>(false, var_3), select(var_2.c, arg_0.c, true), all(vec3<bool>(true, var_3, false))), vec2<bool>(true, func_3(Struct_1(false, var_2.b, var_0.c.c, global1.c.x, var_0.b), -2147483647i, Struct_4(Struct_1(arg_0.c.x, var_0.c.b, vec2<bool>(arg_0.c.x, false), true, 72i), vec4<f32>(803f, 1799f, 1000f, arg_0.d), Struct_2(vec3<u32>(var_0.a.x, u_input.a.x, var_0.a.x), arg_0.b.x, var_0.e, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), Struct_1(false, var_0.e.b, vec2<bool>(true, var_0.e.d), arg_0.c.x, arg_0.b.x)), -439f, global2[_wgslsmith_index_u32(u_input.a.x, 19u)]), false))), vec2<bool>(var_2.a, true)), (var_0.c.a && !(!var_3)) & !all(vec2<bool>(var_2.c.x, false)), 3143i);
    return ~((var_1.x | 2147483647i) | -32420i);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(36671u, 1u);
    var var_1 = _wgslsmith_sub_i32(func_2(global2[_wgslsmith_index_u32(~(~u_input.a.x) & abs(u_input.a.x), 19u)]), 1i);
    global0 = array<i32, 16>();
    let var_2 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(~1u, _wgslsmith_mult_u32(0u, 0u), 0u, ~u_input.a.x)), countOneBits(~min(abs(vec4<u32>(847u, u_input.a.x, 44259u, 14401u)), vec4<u32>(u_input.a.x, u_input.a.x, 9875u, u_input.a.x))));
    let var_3 = 1420f;
    return Struct_2(_wgslsmith_div_vec3_u32(abs(~var_2.wxz), ~(~(~var_2.xxz))), 31139i, Struct_1(all(!global1.c), vec4<i32>((i32(-1i) * -1i) >> (u_input.a.x % 32u), _wgslsmith_mod_i32(15038i, global1.b.x), 1i, global1.b.x), vec2<bool>(true == all(global1.c), global1.c.x), false, max(~(~global1.b.x), -global0[_wgslsmith_index_u32(var_2.x, 16u)])), ~var_2.zxy, Struct_1((any(vec2<bool>(false, global1.c.x)) & false) && select(!global1.c.x, var_2.x > 5646u, any(vec3<bool>(true, global1.c.x, global1.c.x))), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(global1.b.x, global1.b.x, 2147483647i, 34322i)), -vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global1.b.x)), !global1.c, global1.c.x, global1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = !vec4<bool>(select(global1.c.x, !(!global1.c.x), any(vec4<bool>(global1.c.x, global1.c.x, var_0.c.d, var_0.e.d)) & var_0.c.d), all(!var_0.e.c), false, var_0.e.c.x);
    global2 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, vec3<i32>(0i, i32(-1i) * -2147483647i, -_wgslsmith_dot_vec4_i32(var_0.e.b, var_0.c.b) << (1u % 32u)), var_0.a, -218f);
}

