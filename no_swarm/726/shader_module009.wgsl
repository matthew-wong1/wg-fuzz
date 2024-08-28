struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: Struct_4,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, vec2<bool>(false, false), false, -1000f);

var<private> global1: Struct_1;

var<private> global2: array<f32, 25>;

var<private> global3: u32 = 38513u;

var<private> global4: f32 = -226f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = ~vec3<u32>(~(~u_input.d), _wgslsmith_div_u32(~0u, u_input.b), ~u_input.b);
    var var_1 = Struct_4(-(~(~(~u_input.c.x))), ~vec2<i32>(-max(14485i, -2147483647i), _wgslsmith_mod_i32(1i, arg_0.b.a)), global0.d, arg_0, (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 25u)] - 407f))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_0.b.d) - _wgslsmith_f_op_f32(1077f + -328f))) && (-31757i > _wgslsmith_mod_i32(max(arg_0.b.a, global0.a), _wgslsmith_sub_i32(-26622i, global0.a))));
    global1 = Struct_1(arg_0.a.a, !vec2<bool>(all(!vec4<bool>(true, arg_0.b.c, true, global1.b.x)), global0.b.x), !arg_0.b.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d - -400f))), _wgslsmith_f_op_f32(arg_0.b.d * 1000f))));
    var var_2 = global0.b.x;
    let var_3 = Struct_3(Struct_1(var_1.b.x, global0.b, var_1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) - 1418f)), _wgslsmith_f_op_vec3_f32(select(var_1.d.c.yww, _wgslsmith_f_op_vec3_f32(abs(arg_1)), false)), arg_0.b, Struct_2(Struct_1(arg_0.a.a, global0.b, true, 1000f), Struct_1(min(-var_1.b.x, -1i), select(vec2<bool>(false, false), vec2<bool>(true, false), arg_0.a.c), any(vec3<bool>(false, true, true)), -1039f), _wgslsmith_f_op_vec4_f32(var_1.d.c * _wgslsmith_f_op_vec4_f32(ceil(var_1.d.c)))));
    return vec3<bool>(all(vec2<bool>(!(!global1.c), true & !var_1.d.b.b.x)), select(all(!vec3<bool>(true, var_3.d.b.b.x, false)) || true, any(!(!vec3<bool>(false, false, var_3.d.b.c))), var_1.d.a.b.x), var_3.a.b.x);
}

fn func_2() -> bool {
    var var_0 = !(!vec3<bool>(all(func_3(Struct_2(Struct_1(global1.a, vec2<bool>(false, false), false, global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), Struct_1(global1.a, global0.b, global0.b.x, -917f), vec4<f32>(-1376f, global0.d, -419f, 545f)), vec3<f32>(-1332f, global2[_wgslsmith_index_u32(u_input.b, 25u)], global0.d))), global0.b.x, true));
    let var_1 = _wgslsmith_div_i32(i32(-1i) * -_wgslsmith_div_i32(u_input.c.x, u_input.c.x), -2147483647i);
    var var_2 = false;
    var var_3 = Struct_3(Struct_1(var_1, !select(select(vec2<bool>(false, global1.b.x), vec2<bool>(global1.c, false), var_0.yz), func_3(Struct_2(Struct_1(-2942i, vec2<bool>(false, true), false, global0.d), Struct_1(42705i, vec2<bool>(var_0.x, var_0.x), global0.b.x, global0.d), vec4<f32>(1417f, global1.d, 819f, -1833f)), vec3<f32>(global0.d, 820f, 465f)).yx, global0.b), true, -518f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.d, global1.d, global2[_wgslsmith_index_u32(u_input.b, 25u)]), vec3<f32>(-275f, global2[_wgslsmith_index_u32(1u, 25u)], -1425f))), vec3<f32>(global0.d, -3069f, -1308f))), vec3<f32>(942f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 25u)] - global2[_wgslsmith_index_u32(u_input.d, 25u)]), 473f)))), Struct_1(countOneBits(~_wgslsmith_div_i32(global1.a, global1.a)), vec2<bool>(true, !any(vec2<bool>(global1.c, true))), true, global2[_wgslsmith_index_u32(reverseBits(30108u), 25u)]), Struct_2(Struct_1(global1.a, !global1.b, select(true, true, true), 920f), Struct_1(~40698i, vec2<bool>(true, !global1.c), select(func_3(Struct_2(Struct_1(global1.a, global1.b, var_0.x, global1.d), Struct_1(1i, vec2<bool>(true, global0.c), global1.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec4<f32>(-1000f, global1.d, global1.d, -690f)), vec3<f32>(-1466f, global1.d, global2[_wgslsmith_index_u32(1u, 25u)])).x, all(vec2<bool>(true, global1.c)), true), 1004f), vec4<f32>(global0.d, global2[_wgslsmith_index_u32(firstLeadingBit(max(u_input.a.x, 4294967295u)), 25u)], _wgslsmith_f_op_f32(-1374f - _wgslsmith_div_f32(global1.d, global1.d)), 910f)));
    var var_4 = !(!func_3(Struct_2(var_3.c, var_3.c, _wgslsmith_div_vec4_f32(var_3.d.c, vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 25u)], -1011f, global0.d, global2[_wgslsmith_index_u32(u_input.b, 25u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b))).zz);
    return any(global0.b);
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>) -> i32 {
    var var_0 = arg_0.d.d.b;
    var var_1 = Struct_1(60087i, vec2<bool>(true, (func_2() | true) & !(1365f != global2[_wgslsmith_index_u32(1u, 25u)])), all(!(!vec3<bool>(false, global0.b.x, arg_0.d.d.a.c))), global1.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(308f))), -156f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d)))))) + vec3<f32>(1663f, 654f, global1.d));
    var var_3 = Struct_3(arg_0.d.d.a, var_2, Struct_1(-u_input.c.x, !vec2<bool>(true, all(vec3<bool>(false, true, var_1.b.x))), arg_0.e.x <= ~(~1881u), var_1.d), arg_0.d.d);
    global1 = var_3.c;
    return min(~(i32(-1i) * -30947i), _wgslsmith_mult_i32(global0.a, ~(_wgslsmith_mult_i32(0i, -2147483647i) ^ _wgslsmith_mod_i32(arg_0.d.d.a.a, -31241i))));
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_5(vec2<bool>(true, global0.b.x & global1.c), _wgslsmith_clamp_u32(select(_wgslsmith_add_u32(u_input.b, u_input.d >> (u_input.d % 32u)), u_input.d, !all(vec3<bool>(false, true, global0.b.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x << (u_input.b % 32u), 1u), ~vec3<u32>(u_input.d, u_input.a.x, u_input.b) | abs(vec3<u32>(u_input.b, 75644u, 4294967295u))), 36177u), !(_wgslsmith_f_op_f32(-525f - _wgslsmith_f_op_f32(sign(822f))) == _wgslsmith_f_op_f32(f32(-1f) * -1080f)), Struct_4(arg_0.x, firstTrailingBit(~u_input.c.xx), _wgslsmith_f_op_f32(1f + global2[_wgslsmith_index_u32(u_input.b, 25u)]), Struct_2(Struct_1(abs(arg_0.x), !vec2<bool>(global1.b.x, global1.c), true, _wgslsmith_f_op_f32(-130f + -1000f)), Struct_1(-1i, global1.b, 4294967295u < u_input.d, _wgslsmith_f_op_f32(trunc(global1.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-817f, global0.d, global1.d, 1000f), vec4<f32>(-1288f, 305f, 168f, global1.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, -1930f, global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(60717u, 25u)])))), any(!select(vec3<bool>(global1.b.x, false, true), vec3<bool>(global0.b.x, true, global1.b.x), vec3<bool>(global1.b.x, false, false)))), _wgslsmith_sub_vec2_u32(reverseBits(~firstLeadingBit(u_input.a)), u_input.a << (_wgslsmith_sub_vec2_u32(u_input.a ^ u_input.a, u_input.a) % vec2<u32>(32u))));
    let var_1 = !var_0.a.x;
    var var_2 = 9107i;
    let var_3 = 47197i;
    let var_4 = var_0.d.d;
    return Struct_1(arg_0.x, vec2<bool>(false, !var_0.c), _wgslsmith_div_i32(global0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 59700i), vec2<i32>(-2147483647i, var_0.d.a) << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)))) >= ~var_4.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -983f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(58710i, -58729i, -46773i), u_input.c.yxw), _wgslsmith_mod_i32(~global1.a, func_1(Struct_5(global0.b, u_input.d, false, Struct_4(u_input.c.x, u_input.c.xz, global2[_wgslsmith_index_u32(0u, 25u)], Struct_2(Struct_1(-49514i, global0.b, false, global2[_wgslsmith_index_u32(u_input.b, 25u)]), Struct_1(-2147483647i, global0.b, global1.c, -864f), vec4<f32>(global0.d, 1660f, global1.d, 471f)), global1.b.x), vec2<u32>(1u, u_input.d)), u_input.a)))), Struct_1(u_input.c.x, func_3(Struct_2(Struct_1(-45591i, global1.b, false, global2[_wgslsmith_index_u32(1u, 25u)]), func_4(vec2<i32>(global1.a, 19548i)), vec4<f32>(-480f, -620f, global1.d, global2[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-600f, -599f, global0.d) * vec3<f32>(global1.d, 650f, 827f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, 367f, -1000f) * vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], global1.d, global2[_wgslsmith_index_u32(u_input.b, 25u)])), false))).xx, all(vec3<bool>(true, true, true)), 471f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, global1.d, -1767f, global0.d) - vec4<f32>(global1.d, global2[_wgslsmith_index_u32(4294967295u, 25u)], global1.d, 147f)), vec4<f32>(global1.d, global0.d, global0.d, global0.d)) + vec4<f32>(global0.d, global1.d, _wgslsmith_f_op_f32(1479f - global2[_wgslsmith_index_u32(u_input.b, 25u)]), global1.d)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.d, _wgslsmith_f_op_f32(f32(-1f) * -1718f), -909f, global2[_wgslsmith_index_u32(69872u, 25u)]), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.d, global0.d, 204f, global1.d)))), !select(select(vec4<bool>(global1.b.x, false, false, global0.b.x), vec4<bool>(false, global1.b.x, global0.b.x, true), global0.c), vec4<bool>(true, true, global1.b.x, global0.b.x), !global1.c))));
    var var_1 = Struct_2(func_4(-u_input.c.wx), func_4(vec2<i32>(~var_0.b.a ^ max(-2147483647i, global1.a), abs(abs(-33410i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, _wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(399f)) - -763f), -730f) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-558f)) * _wgslsmith_f_op_f32(f32(-1f) * -1640f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, global2[_wgslsmith_index_u32(u_input.b, 25u)])), _wgslsmith_f_op_f32(sign(-1133f)))));
    var var_2 = Struct_5(!(!select(select(global1.b, global1.b, vec2<bool>(false, true)), global0.b, select(vec2<bool>(global0.c, var_1.b.c), vec2<bool>(true, global0.c), true))), u_input.b, any(!select(vec3<bool>(global0.b.x, true, true), !vec3<bool>(true, true, global0.c), true)), Struct_4(_wgslsmith_mod_i32(-53778i, func_1(Struct_5(global0.b, u_input.a.x, global1.c, Struct_4(2147483647i, vec2<i32>(-19074i, 26004i), 140f, Struct_2(Struct_1(35735i, vec2<bool>(global1.b.x, true), global0.b.x, -1920f), var_0.b, var_0.c), true), vec2<u32>(38697u, 4294967295u)), vec2<u32>(4294967295u, u_input.d))) << (0u % 32u), _wgslsmith_div_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.c.yy, vec2<i32>(53416i, 2147483647i)), select(u_input.c.zy & vec2<i32>(-2147483647i, var_0.a.a), u_input.c.xx, true)), _wgslsmith_f_op_f32(exp2(var_0.b.d)), var_0, true), ~vec2<u32>(65847u, 1u));
    let var_3 = Struct_5(global1.b, _wgslsmith_mod_u32(select(1u, u_input.d, false), ~u_input.a.x), select(true, firstTrailingBit(-2309i) < u_input.c.x, any(!var_0.b.b) & true), var_2.d, vec2<u32>(abs(var_2.e.x), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, var_2.b), select(var_2.e, var_2.e, true)))));
    var_2 = Struct_5(select(!func_3(Struct_2(Struct_1(16915i, var_1.b.b, global0.b.x, 386f), Struct_1(48839i, global1.b, global1.c, -1788f), var_3.d.d.c), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-776f, 1822f, var_1.c.x)))).zy, select(global0.b, !select(vec2<bool>(var_2.d.e, true), vec2<bool>(global0.b.x, false), vec2<bool>(var_1.b.c, false)), func_3(Struct_2(Struct_1(-2147483647i, vec2<bool>(var_3.a.x, false), false, global1.d), Struct_1(-1i, vec2<bool>(false, true), var_0.b.b.x, 711f), var_2.d.d.c), _wgslsmith_f_op_vec3_f32(var_2.d.d.c.yxx - vec3<f32>(var_1.c.x, global2[_wgslsmith_index_u32(78255u, 25u)], var_1.a.d))).x), vec2<bool>(all(func_4(var_2.d.b).b), all(select(vec3<bool>(var_3.c, var_2.a.x, false), vec3<bool>(true, false, false), var_3.d.e)))), ~(~1u), var_0.b.b.x, Struct_4(~global0.a, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~var_2.d.b, _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.b.a, var_1.b.a), var_2.d.b), vec2<i32>(-2147483647i, 1i)), var_2.d.b), _wgslsmith_f_op_f32(-958f * _wgslsmith_f_op_f32(global0.d * var_1.a.d)), var_3.d.d, var_3.d.e), ~u_input.a << (vec2<u32>(var_3.e.x, 0u | _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.e.x, var_2.e.x, 1u), vec3<u32>(var_2.b, var_2.b, 7748u))) % vec2<u32>(32u)));
    var_2 = var_3;
    let var_4 = func_4(vec2<i32>(2147483647i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a ^ (abs(vec2<u32>(43941u, var_2.e.x)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(var_3.b, var_3.e.x), var_3.e))), 106f, abs(reverseBits(~_wgslsmith_clamp_i32(var_3.d.b.x, var_3.d.d.a.a, var_4.a))), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(69958u, _wgslsmith_dot_vec3_u32(vec3<u32>(15570u, 0u, 1u), vec3<u32>(0u, u_input.a.x, u_input.d))), u_input.b, abs(_wgslsmith_mult_u32(var_3.b, var_2.e.x) << ((var_2.e.x & 17836u) % 32u))));
}

