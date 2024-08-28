struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(1i, 16727i, -1i, i32(-2147483648)), vec4<i32>(58711i, i32(-2147483648), 0i, -1i), vec4<i32>(37399i, -8066i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, -1i, -65899i, 1i), vec4<i32>(43449i, -34746i, 0i, 22464i), vec4<i32>(i32(-2147483648), 1i, -1i, -529i), vec4<i32>(1i, 2087i, 0i, -1i));

var<private> global2: array<u32, 15>;

var<private> global3: array<u32, 4> = array<u32, 4>(12376u, 16278u, 1u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec3<bool> {
    let var_0 = !(!(!any(vec2<bool>(true, true))));
    global2 = array<u32, 15>();
    var var_1 = firstTrailingBit(reverseBits(~global0.x));
    var var_2 = vec2<bool>(any(!select(select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), vec2<bool>(var_0, true)), vec2<bool>(false, false), vec2<bool>(true, var_0))), true | var_0);
    var var_3 = Struct_1(~vec4<u32>(~22396u, 61546u, global3[_wgslsmith_index_u32(~4294967295u, 4u)], max(global3[_wgslsmith_index_u32(87173u, 4u)], 105145u) | global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(12251u, global2[_wgslsmith_index_u32(1u, 15u)], 23936u), vec3<u32>(global3[_wgslsmith_index_u32(120561u, 4u)], u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 15u)], 15u)])), 15u)]), !select(select(vec3<bool>(var_0, true, var_0), select(vec3<bool>(true, true, var_2.x), vec3<bool>(false, false, false), false), !vec3<bool>(var_0, false, true)), !(!vec3<bool>(var_2.x, false, true)), vec3<bool>(!var_2.x, !var_0, !var_0)));
    return vec3<bool>(false, var_0, !any(vec4<bool>(var_0, true, !var_0, true)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = reverseBits(vec4<i32>(select(-12405i << (0u % 32u), arg_2.x, any(vec2<bool>(false, true))), _wgslsmith_mod_i32(firstLeadingBit(arg_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-33663i, arg_2.x, global0.x), vec3<i32>(arg_0, 2147483647i, 1i))), -2147483647i, ~(-76887i) << (abs(0u) % 32u)) | -select(vec4<i32>(arg_0, 1i, arg_0, 2147483647i), arg_2, any(vec3<bool>(false, false, false))));
    var var_1 = Struct_3(abs(arg_2.xxw ^ vec3<i32>(~var_0.x, var_0.x, global0.x)), Struct_2(Struct_1(vec4<u32>(50498u << (global2[_wgslsmith_index_u32(arg_1, 15u)] % 32u), 4294967295u, reverseBits(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 4u)], 15u)]), 25137u), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true)), Struct_1((vec4<u32>(3793u, u_input.a, 18994u, 93186u) << (vec4<u32>(arg_1, arg_1, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)]) % vec4<u32>(32u))) << ((vec4<u32>(1u, 49627u, arg_1, u_input.a) | vec4<u32>(0u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 4u)], 15u)], 28475u, 4005u)) % vec4<u32>(32u)), vec3<bool>(true, true, true))), Struct_2(Struct_1(~(~vec4<u32>(1u, arg_1, global2[_wgslsmith_index_u32(14807u, 15u)], global3[_wgslsmith_index_u32(61398u, 4u)])), vec3<bool>(true, true, any(vec4<bool>(true, true, false, true)))), Struct_1(countOneBits(vec4<u32>(0u, global3[_wgslsmith_index_u32(27551u, 4u)], 1u, u_input.a)), vec3<bool>(true, select(true, true, false), true))));
    global2 = array<u32, 15>();
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1564f, 1234f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1291f, -1205f), vec2<f32>(-934f, 111f), vec2<bool>(true, false)))))))));
    var var_3 = var_1.c.a;
    return max(_wgslsmith_add_vec2_u32(var_3.a.yz, abs(var_3.a.ww)), var_3.a.ww);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: u32) -> vec4<bool> {
    var var_0 = select(select(vec4<bool>(false, select(false, true, arg_0.b.x), false, arg_0.b.x), vec4<bool>(-arg_2.x > _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(arg_3, 7u)], vec4<i32>(20391i, 41683i, arg_2.x, arg_2.x)), func_1().x, ~arg_2.x == -2147483647i, ~arg_3 > _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(arg_3, 15u)], 4294967295u)), !vec4<bool>(all(arg_0.b.yz), !arg_0.b.x, true, true)), vec4<bool>(true, any(!func_1()), true, false), vec4<bool>(!arg_0.b.x, !(!arg_0.b.x), !(!any(arg_0.b.xx)), true));
    var var_1 = Struct_3(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_2, vec3<i32>(~global0.x, -98585i, -global0.x), -arg_2), _wgslsmith_div_vec3_i32(select(firstTrailingBit(vec3<i32>(global0.x, arg_2.x, arg_2.x)), vec3<i32>(2147483647i, arg_2.x, 2147483647i) << (arg_0.a.xxx % vec3<u32>(32u)), select(var_0.zwx, vec3<bool>(false, arg_0.b.x, arg_0.b.x), false)), arg_2)), Struct_2(arg_0, arg_0), Struct_2(arg_0, arg_0));
    global2 = array<u32, 15>();
    global3 = array<u32, 4>();
    var var_2 = max(~(~vec3<u32>(98024u, 3806u, 18130u)), var_1.c.b.a.xyy & min(vec3<u32>(select(arg_0.a.x, 1u, var_1.b.b.b.x), arg_0.a.x, arg_3), vec3<u32>(~arg_0.a.x, ~global2[_wgslsmith_index_u32(u_input.a, 15u)], _wgslsmith_sub_u32(var_1.c.a.a.x, 4294967295u))));
    return vec4<bool>(func_1().x, var_1.c.a.b.x, any(!select(func_1().yz, select(vec2<bool>(arg_0.b.x, true), var_0.yy, true), !var_1.c.a.b.xx)), arg_0.b.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> bool {
    let var_0 = Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a << (u_input.a % 32u), global3[_wgslsmith_index_u32(1u, 4u)] & global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(98573u, 4u)], 4u)], 15u)], countOneBits(global2[_wgslsmith_index_u32(58354u, 15u)]), 0u), abs(vec4<u32>(global2[_wgslsmith_index_u32(19305u, 15u)], 45256u, u_input.a, 11238u))), arg_0.zzz);
    global2 = array<u32, 15>();
    var var_1 = 50733u;
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1325f, arg_1) + arg_1)), firstLeadingBit(select(reverseBits(~0i), global0.x, true)));
    let var_3 = !(!(!(select(var_0.b.x, var_0.b.x, var_0.b.x) | any(vec3<bool>(var_0.b.x, var_0.b.x, arg_0.x)))));
    return var_3 || (((false | var_3) && true) || (var_3 != !(!var_0.b.x)));
}

fn func_6(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2835f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(199f)) + _wgslsmith_f_op_f32(615f - 868f)))) * _wgslsmith_f_op_f32(sign(1139f)))));
    var var_1 = Struct_1(~vec4<u32>(1u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.a, 15u)], 18079u), ~1u, 4294967295u) | reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 15u)], 11875u, u_input.a, 44915u) >> (vec4<u32>(u_input.a, 1u, 45419u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 15u)]) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(28166u, 4294967295u, 69346u, u_input.a), vec4<u32>(global2[_wgslsmith_index_u32(1u, 15u)], u_input.a, u_input.a, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 15u)])))), arg_0);
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(23449u, 0u, var_1.a.x, 37598u), var_1.a, select(vec4<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 4u)], 51089u, 11891u, u_input.a), var_1.a, false)), ~_wgslsmith_mult_vec4_u32(var_1.a, vec4<u32>(global3[_wgslsmith_index_u32(68763u, 4u)], u_input.a, 30963u, u_input.a))), vec3<bool>(!any(var_1.b.xz), arg_0.x, false)), Struct_1(select(var_1.a, min(~var_1.a, var_1.a), select(1u, u_input.a, var_1.b.x) == func_3(global0.x, 87870u, vec4<i32>(1i, 2147483647i, 1i, 1i)).x), vec3<bool>(_wgslsmith_f_op_f32(select(var_0, var_0, false)) <= 1028f, func_5(vec4<bool>(var_1.b.x, arg_0.x, arg_0.x, false), -1048f), var_1.b.x)));
    global0 = -(~(countOneBits(~vec3<i32>(2147483647i, -36357i, 0i)) & (~vec3<i32>(global0.x, global0.x, global0.x) << (var_2.b.a.ywx % vec3<u32>(32u)))));
    var var_3 = vec2<i32>(1i, global0.x | global0.x);
    return select(!select(select(vec2<bool>(true, true), func_1().yx, arg_0.x), var_2.b.b.xy, true), vec2<bool>(false, var_2.b.b.x), var_2.a.b.x);
}

fn func_2() -> vec2<i32> {
    global2 = array<u32, 15>();
    global3 = array<u32, 4>();
    let var_0 = u_input.a < ~_wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.a, 4294967295u), 15u)]);
    let var_1 = func_1().x;
    let var_2 = func_6(vec3<bool>(!var_0, false, func_5(func_4(Struct_1(vec4<u32>(4294967295u, 0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 15u)], 4u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(var_0, var_1, var_1)), func_3(global0.x, 18627u, vec4<i32>(global0.x, global0.x, -11948i, global0.x)), -vec3<i32>(-11708i, global0.x, -2147483647i), ~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -980f) - _wgslsmith_f_op_f32(f32(-1f) * -390f)))));
    return reverseBits(-select(vec2<i32>(0i, firstLeadingBit(global0.x)), global0.xy, !var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec2<bool>(any(func_1()), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)))));
    let var_1 = select((global0.zx & ~abs(global0.zy)) ^ func_2(), _wgslsmith_add_vec2_i32(~firstLeadingBit(vec2<i32>(global0.x, global0.x)), select(vec2<i32>(~(-2147483647i), global0.x), vec2<i32>(1i, -global0.x), true)), !(!vec2<bool>(any(vec3<bool>(true, true, false)), true)));
    let var_2 = global1[_wgslsmith_index_u32(44701u, 7u)];
    let var_3 = u_input.a;
    global1 = array<vec4<i32>, 7>();
    var var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(430f, -297f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(836f, -247f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(181f, 504f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1553f), _wgslsmith_f_op_f32(-1345f + -1060f)))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, ~vec2<u32>(0u, ~var_3), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a.x, var_4.a.x, -927f, -621f), vec4<f32>(var_4.a.x, 102f, var_4.a.x, -1680f), false))))), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(~var_3, u_input.a), global2[_wgslsmith_index_u32(var_3, 15u)]) << ((u_input.a & 4294967295u) % 32u), 15u)], 4u)]);
}

