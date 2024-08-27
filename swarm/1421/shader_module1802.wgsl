struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<f32> = vec3<f32>(644f, -1180f, -639f);

var<private> global2: i32 = 10133i;

var<private> global3: array<i32, 19>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<i32>(-35231i, 2147483647i), true), Struct_1(vec2<i32>(0i, 28554i), true), 10204u, Struct_1(vec2<i32>(-66296i, 40873i), false), false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> vec3<i32> {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(738f, 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.x, 1097f))), _wgslsmith_f_op_f32(1000f - global1.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(295f, global1.x, arg_1))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-707f, -791f, global1.x))))), any(select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(global0.x, false, global4.e, false), vec4<bool>(global0.x, global4.b.b, arg_0.x, false)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -947f, 399f) + vec3<f32>(-977f, global1.x, 719f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, arg_1, 545f))))))));
    var var_0 = _wgslsmith_f_op_f32(-global1.x);
    global4 = Struct_2(global4.d, global4.b, min(4294967295u, ~(0u & u_input.a.x) & firstTrailingBit(reverseBits(global4.c))), global4.b, false);
    global2 = 0i & ~(_wgslsmith_mod_i32(abs(global3[_wgslsmith_index_u32(0u, 19u)]), -2147483647i) << (global4.c % 32u));
    global0 = arg_0;
    return vec3<i32>(global4.b.a.x, ~abs(-1i), ~abs(_wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(-1i, u_input.b)) << (~60926u % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    global4 = arg_2;
    global3 = array<i32, 19>();
    let var_0 = reverseBits(func_3(select(!vec3<bool>(arg_0.b, false, arg_2.e), select(vec3<bool>(global4.e, false, true), vec3<bool>(arg_2.e, global0.x, arg_0.b), global0.x), !vec3<bool>(global4.d.b, true, arg_0.b)), _wgslsmith_f_op_f32(min(-1000f, 1265f)), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-454f * 714f))) & firstTrailingBit(abs(u_input.c)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1356f, -526f, _wgslsmith_f_op_f32(global1.x - global1.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 303f, _wgslsmith_f_op_f32(trunc(1029f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, -928f, global1.x))))), false)));
    global0 = vec3<bool>(true, any(!vec2<bool>(true, any(vec3<bool>(global0.x, true, false)))), false);
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = !func_2(global4.b, arg_0, Struct_2(func_2(global4.d, arg_0, Struct_2(Struct_1(arg_0.xx, false), global4.a, arg_1.c, Struct_1(arg_0.wy, true), true)), Struct_1(arg_1.d.a, true), 1u, func_2(Struct_1(u_input.c.zz, true), vec4<i32>(37090i, global3[_wgslsmith_index_u32(4294967295u, 19u)], arg_1.a.a.x, -22935i), arg_1), any(vec3<bool>(true, global4.b.b, global0.x)))).b & false;
    let var_1 = arg_1;
    var_0 = all(select(select(!select(vec4<bool>(true, arg_1.b.b, arg_1.d.b, true), vec4<bool>(var_1.d.b, false, var_1.a.b, arg_1.e), false), vec4<bool>(all(global0.xx), !var_1.a.b, var_1.b.b, true), !(!vec4<bool>(true, false, arg_1.a.b, false))), !vec4<bool>(global4.e, false, all(vec4<bool>(true, arg_1.a.b, var_1.b.b, global4.a.b)), var_1.a.b == true), vec4<bool>(any(!vec4<bool>(true, var_1.e, true, global0.x)), 50447u == _wgslsmith_sub_u32(u_input.a.x, global4.c), select(all(vec3<bool>(global4.b.b, false, false)), arg_1.e, global4.a.b & arg_1.e), any(!vec4<bool>(true, global0.x, true, false)))));
    let var_2 = _wgslsmith_f_op_f32(-global1.x);
    var var_3 = false;
    return ~0u ^ ~_wgslsmith_dot_vec2_u32(~u_input.a.yw, vec2<u32>(~var_1.c, _wgslsmith_sub_u32(28657u, 0u)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(global4.a.a, arg_0.a, select(u_input.c.zz, arg_0.a, false)), firstTrailingBit(_wgslsmith_clamp_vec2_i32(arg_0.a, global4.d.a, vec2<i32>(7956i, -115613i)))), all(select(!vec4<bool>(global0.x, false, global4.b.b, false), !vec4<bool>(global0.x, global0.x, global0.x, arg_0.b), true)) && arg_0.b);
    global2 = firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec3_i32(reverseBits(max(vec3<i32>(global4.b.a.x, 2147483647i, var_0.a.x), u_input.c)), vec3<i32>(-11258i, _wgslsmith_clamp_i32(29120i, u_input.c.x, -10440i), -2147483647i))));
    var var_1 = _wgslsmith_add_u32(func_4(~vec4<i32>(var_0.a.x >> (u_input.a.x % 32u), u_input.c.x, ~0i, global4.d.a.x), Struct_2(Struct_1(-vec2<i32>(-24797i, u_input.c.x), true), arg_0, ~global4.c, func_2(Struct_1(vec2<i32>(u_input.c.x, 14131i), false), countOneBits(vec4<i32>(-2147483647i, 2622i, -1i, global4.d.a.x)), Struct_2(Struct_1(u_input.c.yx, true), Struct_1(arg_0.a, false), 50716u, var_0, true)), true)), _wgslsmith_dot_vec3_u32(select(select(u_input.a.yxz, vec3<u32>(global4.c, u_input.a.x, 31524u), vec3<bool>(global0.x, var_0.b, var_0.b)), vec3<u32>(~global4.c, u_input.a.x << (6963u % 32u), 2378u), all(vec3<bool>(arg_0.b, global4.b.b, arg_0.b))), _wgslsmith_mult_vec3_u32(u_input.a.zxz, vec3<u32>(global4.c, global4.c, 27194u))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), global1.x, global1.x);
    var var_3 = func_3(vec3<bool>(false, global4.d.b, false), var_2.x, var_2.x).x;
    return Struct_1(_wgslsmith_mult_vec2_i32(countOneBits(arg_0.a), global4.b.a), all(!vec4<bool>(global0.x, all(vec3<bool>(true, false, global0.x)), !arg_0.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 19>();
    var var_0 = Struct_3(Struct_2(func_1(Struct_1(vec2<i32>(-5115i, -24941i), global0.x)), Struct_1(_wgslsmith_div_vec2_i32(countOneBits(u_input.c.zz), -u_input.c.xx), all(vec2<bool>(global0.x, false))), _wgslsmith_mult_u32(_wgslsmith_div_u32(global4.c & 1u, 68619u >> (global4.c % 32u)), ~4294967295u), func_2(Struct_1(u_input.c.zy >> (vec2<u32>(0u, 55858u) % vec2<u32>(32u)), false), _wgslsmith_div_vec4_i32(-vec4<i32>(global4.b.a.x, u_input.c.x, 30582i, u_input.c.x), vec4<i32>(-2147483647i, 0i, u_input.c.x, -2147483647i)), Struct_2(Struct_1(vec2<i32>(u_input.c.x, -398i), true), func_2(Struct_1(vec2<i32>(u_input.b, -553i), true), vec4<i32>(7213i, global3[_wgslsmith_index_u32(u_input.a.x, 19u)], 0i, -4250i), Struct_2(Struct_1(vec2<i32>(u_input.c.x, global4.a.a.x), true), Struct_1(vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(global4.c, 19u)]), true), 1u, Struct_1(vec2<i32>(global4.d.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), global4.b.b), true)), ~global4.c, global4.d, true)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xz, u_input.a.yz), u_input.a.wy) >= abs(~u_input.a.x)), !global0.yz, Struct_2(Struct_1(vec2<i32>(firstTrailingBit(u_input.c.x), ~global3[_wgslsmith_index_u32(global4.c, 19u)]), !(true & global4.b.b)), func_1(Struct_1(func_3(vec3<bool>(true, global4.e, global0.x), 648f, -1527f).xy, !global4.d.b)), reverseBits(~global4.c ^ select(u_input.a.x, u_input.a.x, global4.d.b)), Struct_1(firstTrailingBit(-vec2<i32>(7039i, 1i)), all(global0.xx)), false), global4.a, !(_wgslsmith_f_op_f32(-593f + global1.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1537f)))));
    let var_1 = vec3<bool>(true, true, (func_2(var_0.a.b, vec4<i32>(-1i, global4.d.a.x, -5610i, 8925i), Struct_2(Struct_1(u_input.c.zz, false), var_0.a.d, 4294967295u, var_0.c.b, global4.e)).b | global4.b.b) & func_2(var_0.c.b, min(vec4<i32>(var_0.d.a.x, -5402i, -20958i, var_0.d.a.x) & vec4<i32>(global4.a.a.x, 0i, 2147483647i, global3[_wgslsmith_index_u32(4294967295u, 19u)]), -vec4<i32>(-12455i, global4.b.a.x, 8872i, -17964i)), var_0.a).b);
    let var_2 = global4.d.b;
    global0 = vec3<bool>(!(!(_wgslsmith_f_op_f32(1463f - global1.x) < _wgslsmith_f_op_f32(f32(-1f) * -703f))), global0.x, var_1.x);
    let var_3 = vec2<u32>(~var_0.a.c, var_0.a.c);
    global0 = vec3<bool>(false, true || (_wgslsmith_f_op_f32(347f * -249f) != global1.x), !func_1(Struct_1(vec2<i32>(0i, u_input.b) << (var_3 % vec2<u32>(32u)), any(vec2<bool>(true, var_0.d.b)))).b);
    let var_4 = false;
    let var_5 = vec4<bool>(false, true, min(~_wgslsmith_clamp_i32(var_0.a.b.a.x, global4.b.a.x, u_input.b), global3[_wgslsmith_index_u32(9817u, 19u)]) != 38465i, any(vec2<bool>(var_1.x, _wgslsmith_f_op_f32(-global1.x) <= _wgslsmith_f_op_f32(abs(115f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(select(10416u, u_input.a.x, any(vec3<bool>(var_5.x, var_0.e, global4.b.b))) ^ _wgslsmith_clamp_u32(global4.c << (0u % 32u), ~var_0.a.c, u_input.a.x)), max(~select(var_3, u_input.a.wz, global0.yz) & var_3, _wgslsmith_div_vec2_u32(~(u_input.a.yz << (vec2<u32>(var_0.c.c, 0u) % vec2<u32>(32u))), ~(~vec2<u32>(global4.c, 98089u)))), 36349i, ~(~u_input.a.x));
}

