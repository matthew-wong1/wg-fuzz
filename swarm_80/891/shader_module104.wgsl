struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<f32>(-582f, -459f, 1303f)), Struct_2(Struct_1(vec3<f32>(102f, -101f, 306f)), vec4<i32>(-11764i, 30997i, 1i, 55803i), Struct_1(vec3<f32>(-1000f, 687f, 1000f)), -399f, vec4<i32>(-1i, i32(-2147483648), -17180i, 1i)), false, Struct_2(Struct_1(vec3<f32>(615f, 104f, 784f)), vec4<i32>(0i, -1i, 40676i, -1i), Struct_1(vec3<f32>(-535f, 2285f, -643f)), -831f, vec4<i32>(57237i, -36639i, -1i, -5656i)), Struct_2(Struct_1(vec3<f32>(567f, -1649f, -894f)), vec4<i32>(2147483647i, 3392i, i32(-2147483648), -27476i), Struct_1(vec3<f32>(622f, -999f, 825f)), 704f, vec4<i32>(28781i, 0i, 27767i, 0i)));

var<private> global2: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true));

var<private> global3: array<vec3<f32>, 16>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = global1.e.c.a;
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(u_input.a, 16u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(u_input.a, 16u)] * global3[_wgslsmith_index_u32(u_input.a, 16u)]) - vec3<f32>(-782f, -1011f, var_0.x))) + _wgslsmith_f_op_vec3_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(82704u, select(31949u, u_input.a, false)), 16u)])))));
    var var_1 = select(vec4<bool>(global1.a.a.x >= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(845f, -1238f))), !(global1.e.a.a.x == var_0.x), false, all(!(!vec3<bool>(global1.c, global1.c, false)))), !(!(!(!global2[_wgslsmith_index_u32(u_input.a, 26u)]))), vec4<bool>(!(_wgslsmith_f_op_f32(select(-464f, 692f, true)) >= _wgslsmith_f_op_f32(f32(-1f) * -274f)), all(global2[_wgslsmith_index_u32(u_input.a, 26u)]), any(global2[_wgslsmith_index_u32(0u, 26u)]), false));
    global2 = array<vec4<bool>, 26>();
    var_1 = vec4<bool>(all(vec3<bool>(true, !var_1.x, !var_1.x)) || true, -1152f > var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1040f) * _wgslsmith_f_op_f32(-382f * var_0.x))) >= _wgslsmith_f_op_f32(f32(-1f) * -2033f), !any(var_1.ywy) | (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 124894u, 4294967295u, u_input.a)), ~vec4<u32>(u_input.a, 4489u, 20613u, 1121u)) <= ~(1u | u_input.a)));
    return ~4294967295u;
}

fn func_2() -> vec2<f32> {
    global2 = array<vec4<bool>, 26>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.d.a.a.xy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.c.a.x, global1.a.a.x) + vec2<f32>(-144f, 439f))))));
    let var_1 = func_3();
    let var_2 = false;
    global1 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(182f, 1112f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1051f))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(u_input.a, 16u)] * global1.d.c.a))), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.b.x, u_input.b.x ^ u_input.b.x, 1015i, global1.e.b.x), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global1.b.e.x, -4066i, global0.x, u_input.b.x)), reverseBits(global1.d.e), ~vec4<i32>(u_input.b.x, -45134i, -2147483647i, global1.d.b.x)), vec4<i32>(28861i, min(u_input.b.x, u_input.b.x), -74822i, _wgslsmith_add_i32(-2147483647i, u_input.b.x))), global1.b.c, var_0.x, u_input.b), var_2, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(global1.d.c.a - _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(39346u, 16u)]))), -(firstTrailingBit(vec4<i32>(global1.e.e.x, -2147483647i, global1.b.b.x, -24070i)) << (~vec4<u32>(74426u, 63559u, var_1, u_input.a) % vec4<u32>(32u))), global1.a, 803f, u_input.b), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(545f, var_0.x, 1558f) + global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, var_1), 16u)])), -vec4<i32>(_wgslsmith_mult_i32(26223i, u_input.b.x), u_input.b.x ^ 28813i, 0i, i32(-1i) * -2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.c.a.x, var_0.x, -343f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(846f, -1000f, var_0.x)))), 808f, (vec4<i32>(global0.x, global1.b.e.x, global1.b.b.x, global0.x) | min(vec4<i32>(global1.e.e.x, -6463i, -65972i, 739i), vec4<i32>(1i, global0.x, global1.d.b.x, global0.x))) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, 0u), vec4<u32>(10930u, var_1, 4294967295u, u_input.a)) % vec4<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(global1.a.a.xx - global1.d.c.a.zy);
}

fn func_1(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.e.a.a.x, 623f), _wgslsmith_f_op_vec2_f32(func_2()), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, arg_2.c.x), false), vec2<bool>(arg_2.c.x, false), !global1.c), vec2<bool>(any(arg_0.b.yzz), any(arg_2.c.wx)), (arg_2.e >> (13157u % 32u)) != reverseBits(arg_2.e)), arg_0.b.xy, select(select(!arg_2.c.zy, arg_0.c.zy, vec2<bool>(false, arg_2.c.x)), vec2<bool>(arg_0.c.x, false), !(arg_2.e <= arg_2.e)))));
    var var_1 = 58262u;
    global3 = array<vec3<f32>, 16>();
    var var_2 = arg_2.a;
    let var_3 = _wgslsmith_f_op_f32(-var_2.a.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 26>();
    var var_0 = Struct_5(1204f, global2[_wgslsmith_index_u32(u_input.a, 26u)], select(vec4<bool>(select(!global1.c, true, true), global1.c, !func_1(Struct_5(global1.a.a.x, vec4<bool>(true, global1.c, global1.c, true), global2[_wgslsmith_index_u32(26436u, 26u)]), global1.a.a, Struct_4(Struct_1(vec3<f32>(-1502f, global1.e.d, global1.e.d)), u_input.a, vec4<bool>(global1.c, false, true, global1.c), vec3<u32>(u_input.a, 61856u, u_input.a), global1.d.b.x)), global1.c), vec4<bool>(true, false, true, select(true, true, true)), true));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-global1.e.a.a.x), select(select(select(var_0.c, vec4<bool>(true, global1.c, global1.c, global1.c), global1.c && false), select(select(var_0.c, vec4<bool>(var_0.c.x, true, var_0.c.x, global1.c), global1.c), select(global2[_wgslsmith_index_u32(u_input.a, 26u)], var_0.c, vec4<bool>(var_0.c.x, global1.c, var_0.b.x, false)), !global1.c), all(select(vec3<bool>(true, var_0.c.x, true), var_0.b.xxz, false))), vec4<bool>(global1.e.e.x <= select(0i, 25221i, false), global1.c, func_1(Struct_5(global1.e.d, vec4<bool>(global1.c, global1.c, false, false), var_0.b), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1676f, 728f, 1484f), vec3<f32>(global1.b.d, var_0.a, global1.d.c.a.x))), Struct_4(Struct_1(global3[_wgslsmith_index_u32(81672u, 16u)]), u_input.a, vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), vec3<u32>(4294967295u, u_input.a, 0u), 38704i)), all(vec3<bool>(true, false, global1.c)) | (true || global1.c)), reverseBits(u_input.a | u_input.a) == u_input.a), select(!select(select(vec4<bool>(true, false, var_0.b.x, var_0.c.x), global2[_wgslsmith_index_u32(43302u, 26u)], vec4<bool>(true, true, true, global1.c)), select(vec4<bool>(global1.c, global1.c, false, false), vec4<bool>(true, var_0.b.x, true, true), var_0.c), select(vec4<bool>(global1.c, true, global1.c, global1.c), vec4<bool>(var_0.c.x, true, var_0.b.x, global1.c), global2[_wgslsmith_index_u32(4294967295u, 26u)])), global2[_wgslsmith_index_u32(u_input.a, 26u)], select(var_0.c, var_0.c, var_0.b.x)));
    var_0 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c.a.x)), -370f)), var_0.c, select(select(!select(var_1.b, vec4<bool>(global1.c, false, true, false), var_1.b.x), vec4<bool>(true, global1.d.d > 1000f, false, -15799i > u_input.b.x), select(!vec4<bool>(var_1.b.x, false, var_1.b.x, true), vec4<bool>(global1.c, true, true, var_1.c.x), false)), vec4<bool>(true, true, true, true), false && var_1.c.x));
    let var_2 = _wgslsmith_mult_u32(~_wgslsmith_mod_u32(4294967295u, ~(~u_input.a)), u_input.a);
    var var_3 = Struct_3(Struct_1(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), global1.b.c.a.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-767f, -1302f, 517f), vec3<f32>(var_0.a, -1534f, -830f)))), reverseBits(global1.e.b), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(342f)), global1.a.a.x, global1.a.a.x)), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(f32(-1f) * -1210f)), global1.b.e), _wgslsmith_f_op_f32(-var_1.a) >= var_0.a, Struct_2(global1.d.a, firstTrailingBit(_wgslsmith_mod_vec4_i32(firstLeadingBit(global1.e.e), reverseBits(u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 1426f))), var_1.a, vec4<i32>(_wgslsmith_clamp_i32(global0.x, -1i, u_input.b.x ^ -1i), -14415i, u_input.b.x, global1.d.e.x)), global1.e);
    var var_4 = abs((_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 6732u, 5370u), ~vec3<u32>(u_input.a, var_2, var_2)) >> (~(vec3<u32>(0u, var_2, 3071u) >> (vec3<u32>(var_2, var_2, var_2) % vec3<u32>(32u))) % vec3<u32>(32u))) | ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_2, 2927u, 0u) | vec3<u32>(4294967295u, var_2, 39523u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, var_2), vec3<u32>(41373u, u_input.a, 1u), vec3<u32>(53454u, var_2, var_2))));
    let var_5 = countOneBits(var_4.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e.a.a.x, var_0.a, 2014f, var_1.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) - _wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_3.d.c.a.x) * _wgslsmith_f_op_f32(-var_0.a))))));
}

