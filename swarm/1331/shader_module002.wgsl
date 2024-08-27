struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec4<bool>, 1>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> Struct_5 {
    global0 = array<i32, 13>();
    return Struct_5(true);
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -681f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -149f)))), Struct_1(vec4<bool>(true, !arg_0.a, arg_0.a, all(arg_1)), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x, global1.x), -2147483647i), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(118f, 1043f) * vec2<f32>(473f, 298f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2899f, -677f))))), Struct_1(!(!global2[_wgslsmith_index_u32(0u, 1u)]), -_wgslsmith_sub_i32(u_input.a.x, -2147483647i), !arg_1.x & arg_0.a), firstTrailingBit(vec4<i32>(-33166i, u_input.a.x, 1i, u_input.a.x)) << (~arg_2 % vec4<u32>(32u))), !vec4<bool>(!arg_0.a && (arg_1.x != arg_0.a), true, -u_input.a.x > select(global1.x, global0[_wgslsmith_index_u32(1u, 13u)], true), select(select(arg_1.x, arg_0.a, false), select(arg_0.a, true, false), any(vec4<bool>(false, arg_1.x, arg_1.x, arg_0.a)))), vec2<i32>(select(max(20290i, 2147483647i | global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), 32503i, !arg_1.x), abs(-2147483647i)), (reverseBits(u_input.a << (arg_2.wz % vec2<u32>(32u))) ^ ~(u_input.a & vec2<i32>(-5298i, global1.x))) >> (~(~_wgslsmith_mod_vec2_u32(arg_2.zz, vec2<u32>(arg_2.x, arg_2.x))) % vec2<u32>(32u)));
    var var_1 = select(vec2<bool>(!all(select(vec4<bool>(var_0.b.x, true, arg_1.x, false), global2[_wgslsmith_index_u32(62350u, 1u)], false)), any(var_0.b.wzw)), arg_1, arg_0.a);
    let var_2 = _wgslsmith_add_vec2_i32(select(u_input.a, _wgslsmith_sub_vec2_i32(-global1.zx, ~global1.yx), arg_1), ~u_input.a);
    var var_3 = vec4<bool>(true, true, reverseBits(reverseBits(global0[_wgslsmith_index_u32(323u, 13u)])) < var_2.x, (1i < abs(var_2.x)) && false);
    global2 = array<vec4<bool>, 1>();
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(var_0.a.c.x + var_0.a.a), Struct_1(global2[_wgslsmith_index_u32(max(arg_2.x, abs(56390u)), 1u)], var_0.a.d.b, !var_0.a.d.a.x | (var_3.x != var_1.x)), var_0.a.c, var_0.a.d, var_0.a.e), vec4<bool>(false, false, all(select(vec3<bool>(true, true, var_0.a.d.a.x), select(vec3<bool>(var_3.x, false, arg_0.a), vec3<bool>(arg_1.x, false, var_0.b.x), var_0.b.yzw), var_3.x)), any(vec2<bool>(!arg_1.x, true))), ~vec2<i32>(_wgslsmith_mult_i32(global1.x, u_input.a.x) & -2147483647i, ~(-1i)), firstLeadingBit(-(~var_2)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = func_3(func_2(), !(!arg_0.ww), firstLeadingBit(vec4<u32>(0u, u_input.b.x, _wgslsmith_dot_vec2_u32(~u_input.b.xz, ~u_input.b.xy), u_input.b.x)));
    global2 = array<vec4<bool>, 1>();
    var var_1 = _wgslsmith_mult_vec4_i32((vec4<i32>(max(43714i, -25652i), func_3(Struct_5(true), arg_0.zw, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 86938u)).a.b.b, var_0.c.x, ~0i) << (firstTrailingBit(~vec4<u32>(0u, 53983u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))) ^ func_3(Struct_5(true), !select(var_0.b.wx, vec2<bool>(false, var_0.a.b.c), vec2<bool>(false, var_0.a.d.c)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)), vec4<u32>(55756u, 0u, u_input.b.x, u_input.b.x))).a.e, var_0.a.e);
    var var_2 = Struct_3(vec3<bool>(!(max(u_input.b.x, u_input.b.x) < u_input.b.x), true, var_0.b.x), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.b.yx, u_input.b.xy), ~abs(vec2<u32>(4294967295u, 19664u)), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec2_u32(u_input.b.xz, u_input.b.zz))), u_input.b.zz));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(939f, -686f)));
    return func_3(Struct_5(arg_0.x), arg_0.zz, vec4<u32>(0u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_2.b.x, u_input.b.x)), reverseBits(vec2<u32>(var_2.b.x, u_input.b.x))), u_input.b.x, min(~var_2.b.x, ~4294967295u)) >> (~reverseBits(vec4<u32>(var_2.b.x, u_input.b.x, var_2.b.x, var_2.b.x)) % vec4<u32>(32u))).a;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    global0 = array<i32, 13>();
    global2 = array<vec4<bool>, 1>();
    var var_0 = func_1(select(func_1(!func_1(vec4<bool>(true, false, false, arg_2.b.a.x)).b.a).d.a, select(select(!vec4<bool>(arg_2.d.a.x, arg_2.b.c, arg_2.b.a.x, arg_2.d.a.x), func_3(Struct_5(arg_2.b.a.x), arg_2.b.a.yw, vec4<u32>(3885u, u_input.b.x, 7261u, u_input.b.x)).a.d.a, func_3(Struct_5(arg_2.b.c), vec2<bool>(arg_2.d.a.x, arg_2.b.a.x), vec4<u32>(u_input.b.x, 37812u, u_input.b.x, 0u)).b.x), global2[_wgslsmith_index_u32(6731u, 1u)], arg_2.d.a), !arg_2.d.a.x));
    var_0 = arg_2;
    var var_1 = 0u;
    return Struct_3(vec3<bool>(var_0.b.a.x, ((2147483647i << (u_input.b.x % 32u)) & -54718i) <= arg_0.x, !all(!arg_2.d.a)), u_input.b.xy);
}

fn func_5(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(553f - _wgslsmith_f_op_f32(360f - _wgslsmith_f_op_f32(trunc(852f))));
    let var_1 = false && any(vec2<bool>(arg_0.a.x & arg_0.a.x, any(!global2[_wgslsmith_index_u32(4294967295u, 1u)])));
    global1 = firstTrailingBit(max(~(-vec4<i32>(u_input.a.x, 1i, 26168i, 28999i)), firstTrailingBit(vec4<i32>(2005i, 22501i, -40161i, u_input.a.x)))) << (~(~vec4<u32>(arg_0.b.x & 7777u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_0.b.x), vec2<u32>(arg_0.b.x, arg_0.b.x)), arg_0.b.x, 4294967295u)) % vec4<u32>(32u));
    var var_2 = 0u;
    let var_3 = select(-global1.zy, vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, -20215i), vec2<bool>(all(func_4(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(arg_0.b.x, 13u)], -9069i, -1i), -241f, Struct_2(-607f, Struct_1(vec4<bool>(false, true, var_1, true), global1.x, var_1), vec2<f32>(-523f, 979f), Struct_1(global2[_wgslsmith_index_u32(45758u, 1u)], u_input.a.x, true), vec4<i32>(-8049i, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 55659i, global1.x))).a.xy), arg_0.a.x && (arg_0.a.x | false))) & func_3(func_2(), vec2<bool>(!(var_1 || true), var_1), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(_wgslsmith_sub_u32(4294967295u, 0u), u_input.b.x >> (arg_0.b.x % 32u), _wgslsmith_mult_u32(arg_0.b.x, u_input.b.x), _wgslsmith_add_u32(u_input.b.x, u_input.b.x)))).c;
    return global2[_wgslsmith_index_u32(~4294967295u & ~u_input.b.x, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 13>();
    var var_0 = Struct_1(func_5(func_4(max(abs(vec4<i32>(global1.x, u_input.a.x, -22314i, global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), -vec4<i32>(-1i, -5956i, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-674f * 375f) + _wgslsmith_f_op_f32(1035f - -175f)), func_1(global2[_wgslsmith_index_u32(u_input.b.x & u_input.b.x, 1u)]))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(73330u, u_input.b.x), 13u)], ~(-2147483647i)), vec2<i32>(~(-1i), global0[_wgslsmith_index_u32(~21287u, 13u)])), vec2<i32>(_wgslsmith_sub_i32(~(-54463i), 65482i), 1i)), !(u_input.a.x >= _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global1.xzx, global1.zyy), -global1.zwy)));
    global1 = abs(reverseBits(func_3(func_2(), vec2<bool>(var_0.c, false), vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u)).a.e) ^ max(-(~vec4<i32>(global1.x, global0[_wgslsmith_index_u32(24438u, 13u)], global1.x, u_input.a.x)), vec4<i32>(abs(1i), _wgslsmith_mult_i32(0i, u_input.a.x), var_0.b, abs(-2147483647i))));
    var_0 = func_1(!var_0.a).b;
    global1 = countOneBits(~vec4<i32>(-2147483647i, ~countOneBits(global1.x), 1i, _wgslsmith_sub_i32(-2147483647i, min(-16372i, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))));
    var_0 = Struct_1(select(!select(select(var_0.a, global2[_wgslsmith_index_u32(4294967295u, 1u)], vec4<bool>(var_0.c, var_0.c, true, true)), vec4<bool>(true, false, var_0.a.x, false), func_5(Struct_3(var_0.a.wxx, u_input.b.zy))), vec4<bool>(func_1(var_0.a).b.a.x, any(!vec4<bool>(var_0.a.x, false, false, false)), ~u_input.b.x < ~68126u, func_4(abs(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], -2147483647i, u_input.a.x, -48334i)), _wgslsmith_f_op_f32(791f - 866f), Struct_2(-1523f, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 1u)], global1.x, false), vec2<f32>(-180f, 713f), Struct_1(var_0.a, 34278i, var_0.a.x), vec4<i32>(-3281i, u_input.a.x, global1.x, global1.x))).a.x), !global2[_wgslsmith_index_u32(u_input.b.x, 1u)]), 37079i, u_input.b.x < func_4(vec4<i32>(firstLeadingBit(-73463i), -global1.x, -16617i, -6985i), _wgslsmith_div_f32(1622f, -1000f), func_1(!vec4<bool>(false, var_0.a.x, var_0.a.x, false))).b.x);
    global1 = ~(-_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b, 0i, -1i, -2147483647i), vec4<i32>(var_0.b, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 2147483647i, -2147483647i)), vec4<i32>(global0[_wgslsmith_index_u32(1u, 13u)], -12447i, 69586i, -76177i) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-8655i, 21854i, u_input.a.x, global1.x), vec4<i32>(2147483647i, var_0.b, u_input.a.x, var_0.b))) & firstTrailingBit(vec4<i32>(0i, 1i, -64594i, abs(2147483647i))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(1091f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-800f - -2014f), _wgslsmith_f_op_f32(329f + -1147f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(vec3<u32>(u_input.b.x, 13625u, 0u)) | _wgslsmith_clamp_vec3_u32(u_input.b, firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), min(u_input.b, u_input.b))), -117f);
}

