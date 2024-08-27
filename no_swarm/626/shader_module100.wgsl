struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(84486i, -73779i, 10289i, 5620i);

var<private> global1: Struct_2;

var<private> global2: array<f32, 14> = array<f32, 14>(-805f, -1108f, 2191f, 884f, 952f, -399f, -164f, 1127f, -754f, -609f, -343f, -490f, -952f, -2392f);

var<private> global3: Struct_2;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.b, u_input.a), 14u)];
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~31925u, 14u)] + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-735f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 14u)])) + -285f))));
    let var_2 = firstTrailingBit(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 40053i), vec2<i32>(-14306i, -71863i)), min(8422i, global1.c.a))));
    global0 = (vec4<i32>(_wgslsmith_dot_vec3_i32(global0.xwx, max(global0.zxy, global0.yxy)), -var_2.x << (global1.b % 32u), i32(-1i) * -18373i, _wgslsmith_div_i32(-15283i, 18948i)) >> (~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, global3.b, 4294967295u, global3.b), vec4<u32>(7895u, global3.b, global3.b, 4294967295u))) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(30172u, global3.b, 0u), vec3<u32>(u_input.a, 1u, 110130u)), _wgslsmith_mult_vec3_u32(vec3<u32>(44201u, 38777u, global1.b), vec3<u32>(50125u, global3.b, global3.b))), ~(global1.b >> (29671u % 32u))), 1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global3.b, u_input.a, 43912u, 1u)), vec4<u32>(1u, global3.b, 1u, 56508u)) & 0u, max(global3.b | global3.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 58084u, 9442u), vec4<u32>(u_input.a, global1.b, 1u, 39845u))) ^ 0u) % vec4<u32>(32u));
    global0 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(~2147483647i, reverseBits(firstTrailingBit(28288i)), var_2.x << (~107303u % 32u), abs(global0.x))), abs(~firstLeadingBit(~vec4<i32>(arg_0.x, global3.c.a, -36247i, global1.a.a))), -vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(38970i, arg_0.x), 1i << (u_input.a % 32u)), reverseBits(-2147483647i), global3.a.a, global1.c.a));
    return select(vec3<u32>(70035u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 25166u)), ~vec2<u32>(u_input.a, u_input.a)) >> (global1.b % 32u), global1.b), countOneBits(select(~vec3<u32>(global3.b, global3.b, 43659u) | abs(vec3<u32>(global1.b, 4294967295u, global1.b)), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(12889u, 0u, u_input.a)), vec3<u32>(global1.b, u_input.a, u_input.a)), false)), !vec3<bool>(false, true, select(var_2.x > global3.c.a, all(vec4<bool>(true, true, true, true)), true)));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> bool {
    let var_0 = Struct_2(global1.c, 4294967295u, Struct_1(~arg_0.x << (firstLeadingBit(1u) % 32u)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, reverseBits(-13274i), 2147483647i), arg_0.yyx)));
    let var_1 = global3.a;
    var var_2 = Struct_1(-_wgslsmith_add_i32(-_wgslsmith_div_i32(-1i, 27697i), 2147483647i));
    return any(vec4<bool>(true || all(vec3<bool>(true, false, false)), true, !(!(137f > arg_2)), true));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    let var_0 = vec4<bool>(func_4(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(global3.d.a, -1i, -6520i, 2147483647i), vec4<i32>(arg_1.a, 1i, 0i, 2147483647i)), ~(~vec4<i32>(-1i, 9818i, global3.a.a, -2147483647i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(min(0u, 19490u), 14u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(107f, 1180f)) * -153f))), global2[_wgslsmith_index_u32(38266u, 14u)], func_3(global0.ww)), !(!any(select(arg_2, arg_2, arg_2))), all(select(vec2<bool>(global1.b >= u_input.a, true), vec2<bool>(!arg_2.x, any(arg_2.yxz)), arg_0)), arg_2.x);
    var var_1 = 279f;
    var var_2 = var_0.zxy;
    global3 = Struct_2(arg_1, global3.b, global3.d, Struct_1(_wgslsmith_add_i32(reverseBits(global0.x), _wgslsmith_clamp_i32(global3.a.a | global1.a.a, _wgslsmith_sub_i32(global3.d.a, -51617i), ~arg_1.a))));
    global0 = vec4<i32>(_wgslsmith_div_i32(global1.a.a, arg_1.a), 1i, abs(39881i) >> (global3.b % 32u), ~global0.x << (firstLeadingBit(23452u) % 32u));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 14u)])));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: Struct_3) -> i32 {
    global2 = array<f32, 14>();
    var var_0 = arg_3;
    var_0 = Struct_3(vec4<bool>(var_0.d.x, !all(!vec3<bool>(var_0.d.x, true, false)), var_0.d.x, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1187f, 620f))), arg_2.x)), Struct_1(arg_0), vec2<bool>(all(select(vec3<bool>(arg_3.d.x, true, var_0.d.x), arg_3.a.ywy, select(vec3<bool>(true, arg_3.a.x, true), var_0.a.xzx, arg_3.a.x))), true), ~_wgslsmith_div_i32(firstLeadingBit(~0i), -14229i));
    let var_1 = Struct_2(global3.c, global1.b << (4294967295u % 32u), Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(13546i, 23036i, -2147483647i), global0.www)), Struct_1(1i));
    let var_2 = Struct_1(_wgslsmith_div_i32(23339i, global0.x) >> (_wgslsmith_mod_u32(u_input.a, 65339u) % 32u));
    return _wgslsmith_clamp_i32(~(~max(arg_3.c.a, -1i)) & -2147483647i, 20556i, _wgslsmith_mod_i32(reverseBits(_wgslsmith_clamp_i32(10047i, _wgslsmith_mult_i32(-41114i, -20012i), -2147483647i)), -2147483647i));
}

fn func_1() -> f32 {
    var var_0 = vec4<i32>(-3805i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.a, global1.c.a, global0.x, -2147483647i), ~vec4<i32>(-1i, -15005i, global3.c.a, global0.x)) >> (_wgslsmith_mult_u32(26832u, 5907u) % 32u)), max(select(global3.d.a, firstTrailingBit(-15777i & global1.c.a), true), -2147483647i), func_5(-11170i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(681f, global2[_wgslsmith_index_u32(4294967295u, 14u)]), -2215f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 14u)])) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(288f, global2[_wgslsmith_index_u32(76214u, 14u)], -1049f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(191f, global2[_wgslsmith_index_u32(1u, 14u)], -524f) * vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], -1624f, 740f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(98841u, 14u)]), global2[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f), global2[_wgslsmith_index_u32(0u, 14u)]), 907f, _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), global1.c, select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false)))), Struct_3(vec4<bool>(any(vec4<bool>(false, true, true, true)), true, true, true), _wgslsmith_div_f32(-2252f, -558f), Struct_1(_wgslsmith_div_i32(global1.a.a, global1.d.a)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), -(~global3.a.a))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(921f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.b, 14u)]))))));
    var var_2 = 409f;
    let var_3 = Struct_1(11479i << (global3.b % 32u));
    global0 = -vec4<i32>(global3.d.a, global3.a.a, ~min(var_3.a, _wgslsmith_mod_i32(0i, -2147483647i)), global0.x);
    return -1233f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-1i, global3.a.a, -global3.a.a, global0.x)), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.a.a, global1.d.a, -48981i, global3.c.a), vec4<i32>(2147483647i, global0.x, 44598i, global1.d.a)), _wgslsmith_clamp_i32(global0.x ^ global3.c.a, abs(global3.a.a), global3.c.a), 0i)), vec4<i32>(-global0.x, _wgslsmith_mod_i32(global3.a.a, global1.d.a), -1121i, 2147483647i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1673f) - global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.a) << ((u_input.a ^ 1u) % 32u), 14u)]), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.b, 14u)]) * global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, global1.b), 14u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(4294967295u, 14u)], 574f)) * -1948f))), _wgslsmith_f_op_f32(func_1())));
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(var_0 >> (~vec4<u32>(global3.b, u_input.a, global3.b, 47853u) % vec4<u32>(32u)), vec4<i32>(var_0.x, abs(global0.x), -9875i, _wgslsmith_dot_vec4_i32(vec4<i32>(30424i, -28376i, global1.c.a, -2147483647i), var_0)))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b ^ u_input.a, ~u_input.a, global3.b, 29258u), ~(vec4<u32>(global3.b, global1.b, global1.b, 7385u) | vec4<u32>(global3.b, global1.b, global1.b, 1u)))), Struct_1(~var_0.x), Struct_1(0i));
    global3 = Struct_2(Struct_1(global0.x), 1u, Struct_1(global3.c.a), Struct_1(_wgslsmith_div_i32(reverseBits(2147483647i), _wgslsmith_mod_i32(-2147483647i, i32(-1i) * -50856i))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-349f, -1203f, 1000f, -847f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(221f, var_1.x, 1545f, global2[_wgslsmith_index_u32(10596u, 14u)]), vec4<f32>(var_1.x, -1076f, var_1.x, -925f))))), false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(147f, 382f, global2[_wgslsmith_index_u32(global3.b, 14u)], var_1.x), vec4<f32>(186f, global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(7828u, 14u)], -425f))))) - vec4<f32>(global2[_wgslsmith_index_u32(global1.b << (u_input.a % 32u), 14u)], _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(~1928u, 14u)], -348f, global2[_wgslsmith_index_u32(var_2.b, 14u)] > -1001f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(51156u, 14u)]) - -284f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-160f, global2[_wgslsmith_index_u32(u_input.a, 14u)], false)))))));
    global3 = Struct_2(Struct_1(_wgslsmith_mod_i32(global3.c.a, -32976i) >> (~global3.b % 32u)), countOneBits(_wgslsmith_mult_u32(4294967295u, global1.b >> (70531u % 32u))) << (0u % 32u), Struct_1(func_5(-25604i >> (countOneBits(u_input.a) % 32u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(var_2.b, 14u)], 1341f, 376f), vec3<f32>(-1033f, global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(0u, 14u)])), vec3<f32>(777f, 972f, 155f))), var_3, Struct_3(vec4<bool>(false, true, true, true), 336f, Struct_1(global3.c.a), vec2<bool>(false, false), -1i))), Struct_1(~(~(i32(-1i) * -1i))));
    global3 = var_2;
    let var_4 = ~_wgslsmith_add_u32(~(global1.b >> (0u % 32u)), global3.b) | abs(~(~(180u & u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global1.c.a, func_5(global0.x, vec3<f32>(468f, global2[_wgslsmith_index_u32(4294967295u, 14u)], 1312f), vec4<f32>(1227f, -2774f, -787f, global2[_wgslsmith_index_u32(global3.b, 14u)]), Struct_3(vec4<bool>(true, true, true, true), 1227f, Struct_1(global3.c.a), vec2<bool>(true, false), var_2.c.a)))), ~abs(-vec2<i32>(var_0.x, global3.a.a))), ~(~(~vec4<u32>(1u, global1.b, global1.b, 13281u)) & max(~vec4<u32>(global1.b, var_4, 0u, u_input.a), ~vec4<u32>(1u, var_4, 61668u, var_2.b))));
}

