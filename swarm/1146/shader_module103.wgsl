struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 15>;

var<private> global2: array<bool, 19>;

var<private> global3: Struct_1;

var<private> global4: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(false, true, false)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> vec3<bool> {
    global1 = array<i32, 15>();
    let var_0 = vec2<bool>(all(arg_1.c.b.xx), !(!(_wgslsmith_f_op_f32(231f + -1457f) > arg_1.a)));
    global1 = array<i32, 15>();
    let var_1 = arg_1.b;
    let var_2 = vec2<i32>(~(~0i) & _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], u_input.d.x), vec2<i32>(u_input.a, var_1.x)), vec2<i32>(0i << (arg_2.x % 32u), -var_1.x)), i32(-1i) * -40152i);
    return vec3<bool>(all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, min(u_input.e.x, arg_0.d.x)), 19u)])), true, any(select(arg_1.e.b.zy, vec2<bool>(false, true), !vec2<bool>(global2[_wgslsmith_index_u32(arg_2.x, 19u)], false))) | any(vec4<bool>(false, global3.a, true, true)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = global3.d.x & global0.x;
    var var_1 = global0.x;
    var_1 = 34147u;
    let var_2 = false & all(!func_2(Struct_1(global2[_wgslsmith_index_u32(1u, 19u)], global3.b, arg_1.b.x, u_input.b), Struct_2(arg_0, vec3<i32>(-1i, -67830i, u_input.a), arg_1, global3.c, arg_1), vec4<u32>(13119u, 1u, 1u, 0u)));
    global1 = array<i32, 15>();
    return select(16819u, 19579u, false);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = ~0u;
    var var_1 = vec4<u32>(select(_wgslsmith_sub_u32(select(1u, 8868u, arg_2.x) ^ 37335u, 19388u), 65441u, !all(vec4<bool>(true, true, true, false))), _wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(1u, var_0, u_input.e.x, global3.d.x))), ~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(var_0, 88395u, global0.x, global0.x)), select(vec4<u32>(10412u, global0.x, 4294967295u, u_input.e.x), vec4<u32>(62704u, 0u, u_input.e.x, var_0), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 19u)], false, false)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global0.x, 4294967295u), 48740u, var_0, _wgslsmith_div_u32(18087u, global0.x)), abs(vec4<u32>(0u, 84031u, 0u, u_input.e.x))), var_0);
    global3 = Struct_1(true, select(!vec3<bool>(global2[_wgslsmith_index_u32(~u_input.b.x, 19u)], false, false), vec3<bool>(global3.c, false, (-32731i ^ u_input.d.x) <= countOneBits(u_input.d.x)), arg_1.xwx), false, countOneBits(global3.d));
    global0 = ~(~var_1.zy | u_input.e);
    global2 = array<bool, 19>();
    return Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_3.x)))), -select(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(var_1.x, 15u)], -27065i), vec3<i32>(7293i, 2147483647i, global1[_wgslsmith_index_u32(global0.x, 15u)])), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2177i, u_input.c), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 0i, u_input.c))), vec3<i32>(-1i) * -vec3<i32>(u_input.c, -50619i, -2147483647i), true), Struct_1(func_2(Struct_1(true, select(vec3<bool>(global2[_wgslsmith_index_u32(global3.d.x, 19u)], global3.a, true), arg_1.xzy, true), true, ~vec2<u32>(0u, global0.x)), Struct_2(arg_0, -vec3<i32>(-1i, global1[_wgslsmith_index_u32(var_1.x, 15u)], -42906i), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 19u)], global3.b, true, u_input.b), true, Struct_1(false, global3.b, true, u_input.b)), ~(~vec4<u32>(33721u, 55954u, var_0, 1u))).x, func_2(Struct_1(true, select(arg_1.ywx, arg_1.xyw, arg_1.zwy), !arg_2.x, select(vec2<u32>(var_0, 24962u), u_input.b, false)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_0, 15u)], 26756i, 26988i), vec3<i32>(2147483647i, 52153i, global1[_wgslsmith_index_u32(0u, 15u)]), vec3<i32>(u_input.d.x, global1[_wgslsmith_index_u32(var_1.x, 15u)], u_input.a)), Struct_1(global3.b.x, vec3<bool>(true, global3.b.x, true), false, vec2<u32>(var_0, 27087u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, global3.d), 19u)], Struct_1(global2[_wgslsmith_index_u32(0u, 19u)], vec3<bool>(false, false, arg_2.x), arg_2.x, vec2<u32>(global3.d.x, 4294967295u))), _wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.b.x, 62081u, 0u, global3.d.x), vec4<u32>(var_0, var_1.x, 4294967295u, 13116u)), vec4<u32>(1u, 1u, 0u, 4294967295u) << (vec4<u32>(21085u, 0u, var_0, 1u) % vec4<u32>(32u)))), any(!(!arg_1.zw)), _wgslsmith_div_vec2_u32(var_1.wz, vec2<u32>(var_1.x, global0.x) ^ u_input.e)), !(!(~0u <= (45146u & var_1.x))), Struct_1(global3.b.x, global3.b, select(!any(vec2<bool>(global3.c, arg_1.x)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, 0u), 15u)] == 1i, (60003i != u_input.d.x) & any(global3.b.yx)), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, var_0), var_1.xw), vec2<u32>(global0.x, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global3.d.x, 48106u), u_input.e, vec2<u32>(0u, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec3<i32>(u_input.a, countOneBits(~1i), ~(-1i)));
    var var_1 = Struct_1(true, select(!(!vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 19u)], global2[_wgslsmith_index_u32(19468u, 19u)], false)), !(!select(global3.b, vec3<bool>(global3.c, global3.b.x, global2[_wgslsmith_index_u32(global3.d.x, 19u)]), global2[_wgslsmith_index_u32(global3.d.x, 19u)])), select(vec3<bool>(all(vec4<bool>(true, true, false, false)), select(false, global3.a, true), false), vec3<bool>(!global3.c, false, global2[_wgslsmith_index_u32(1u, 19u)] || global2[_wgslsmith_index_u32(75433u, 19u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 19u)], true))), false, select(~u_input.b, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), countOneBits(global3.d)), all(global3.b)));
    var var_2 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-101f)) + -950f)))), select(!vec4<bool>(false, true, false || global2[_wgslsmith_index_u32(global0.x, 19u)], false), select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(73778u, 19u)], true), !(!vec4<bool>(global3.c, true, true, global2[_wgslsmith_index_u32(u_input.b.x, 19u)])), var_1.d.x < 0u), !global2[_wgslsmith_index_u32(u_input.e.x, 19u)]), select(!vec2<bool>(false, var_1.c), vec2<bool>(!(u_input.a >= global1[_wgslsmith_index_u32(11151u, 15u)]), !any(vec4<bool>(true, true, global3.c, global3.a))), global2[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2264f - 948f)), Struct_1(var_1.b.x, global3.b, global3.b.x, vec2<u32>(u_input.b.x, 44178u))), 19u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1049f, -947f, -939f, -1000f)), vec4<f32>(-1033f, -240f, -1885f, 1484f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-481f, -736f, -714f, -1310f) + vec4<f32>(2166f, -1203f, -403f, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(327f, 1212f, -157f, 2152f) - vec4<f32>(-287f, -738f, 219f, 1142f)))))));
    global0 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, ~_wgslsmith_mod_u32(abs(var_1.d.x), global3.d.x ^ 1u)), global3.d);
    let var_3 = func_2(var_2.c, Struct_2(var_2.a, vec3<i32>(-1i) * -select(var_2.b, vec3<i32>(32669i, var_2.b.x, var_2.b.x), var_2.d), Struct_1(all(vec4<bool>(false, false, global3.b.x, var_2.c.a)), func_3(-1635f, vec4<bool>(var_1.c, false, false, true), global3.b.xy, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(623f, 372f, 1000f, 327f)))).c.b, global3.c, ~(~vec2<u32>(var_2.e.d.x, 1u))), true, Struct_1(global3.a, select(!var_2.e.b, select(vec3<bool>(false, false, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 19u)], var_1.b.x, true), vec3<bool>(true, true, true)), false), all(func_3(var_2.a, vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(var_2.c.d.x, 19u)], var_2.e.a, var_1.a), vec2<bool>(var_2.d, false), vec4<f32>(var_2.a, var_2.a, -988f, var_2.a)).c.b), u_input.b)), ~vec4<u32>(4294967295u, global3.d.x, ~(var_2.c.d.x << (global3.d.x % 32u)), _wgslsmith_div_u32(44485u, 10680u))).x;
    var var_4 = ~global0.x;
    let var_5 = Struct_2(1476f, var_2.b, Struct_1(var_2.a < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, var_2.a, var_2.d))), !(!select(var_1.b, var_2.c.b, var_1.b)), !all(func_3(-1533f, vec4<bool>(false, true, var_2.d, false), global3.b.xx, vec4<f32>(1115f, 1443f, var_2.a, var_2.a)).e.b.zx), vec2<u32>(~(~global3.d.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.d.x), var_2.e.d))), false, func_3(-442f, vec4<bool>(global3.a, any(vec2<bool>(global3.b.x, global3.b.x)), true, var_2.e.c), vec2<bool>(false, (global3.b.x || var_3) || true), vec4<f32>(-344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-368f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(464f + 404f), _wgslsmith_f_op_f32(-var_2.a)))).e);
    global2 = array<bool, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.xz, (2841i | _wgslsmith_mod_i32(var_2.b.x, _wgslsmith_add_i32(u_input.a, -8227i))) << (_wgslsmith_mult_u32(1u, 23260u) % 32u), 604f, global1[_wgslsmith_index_u32(~func_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(var_2.a, var_2.a))), Struct_1(var_1.c, vec3<bool>(var_1.a, false, var_3), true, _wgslsmith_sub_vec2_u32(var_2.e.d, vec2<u32>(var_5.e.d.x, 1u)))), 15u)], var_2.b.x);
}

