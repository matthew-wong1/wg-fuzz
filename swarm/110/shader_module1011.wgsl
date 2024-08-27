struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(705f, -182f, -449f), vec3<f32>(-833f, -476f, -1772f), vec3<f32>(485f, -1497f, -1147f), vec3<f32>(-1071f, 238f, 369f), vec3<f32>(516f, 659f, -101f), vec3<f32>(-973f, -281f, 1000f), vec3<f32>(-1000f, -998f, -702f), vec3<f32>(715f, -600f, -1205f), vec3<f32>(-118f, -691f, -506f), vec3<f32>(-728f, 1142f, 1000f), vec3<f32>(-1539f, 1348f, -348f), vec3<f32>(-406f, -3106f, -930f), vec3<f32>(372f, -1125f, 1397f), vec3<f32>(481f, -759f, 409f), vec3<f32>(-582f, -1000f, -1131f), vec3<f32>(-584f, 1327f, 1097f), vec3<f32>(225f, 1000f, -1433f), vec3<f32>(-332f, 642f, -912f), vec3<f32>(1103f, -902f, 687f), vec3<f32>(-1355f, -1040f, -289f), vec3<f32>(141f, -686f, -502f), vec3<f32>(-983f, -797f, 452f));

var<private> global2: array<bool, 5> = array<bool, 5>(false, true, false, false, false);

var<private> global3: Struct_3;

var<private> global4: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec3<i32>(-83159i, -19573i, 0i), Struct_1(vec2<u32>(1u, 0u)), 1666f), Struct_3(vec3<i32>(2147483647i, -1i, -21089i), Struct_1(vec2<u32>(1u, 0u)), -976f), Struct_3(vec3<i32>(2147483647i, 15480i, -1i), Struct_1(vec2<u32>(10793u, 79659u)), -395f), Struct_3(vec3<i32>(17955i, 5293i, -21528i), Struct_1(vec2<u32>(1u, 4294967295u)), -464f), Struct_3(vec3<i32>(2147483647i, 33087i, 74496i), Struct_1(vec2<u32>(17323u, 0u)), -1415f), Struct_3(vec3<i32>(41403i, 6751i, 55152i), Struct_1(vec2<u32>(46464u, 4294967295u)), -1076f), Struct_3(vec3<i32>(-1i, 9888i, -29975i), Struct_1(vec2<u32>(1u, 1u)), -1455f), Struct_3(vec3<i32>(2147483647i, -1i, i32(-2147483648)), Struct_1(vec2<u32>(1u, 0u)), 750f), Struct_3(vec3<i32>(-16420i, i32(-2147483648), 1i), Struct_1(vec2<u32>(50016u, 4294967295u)), 1410f), Struct_3(vec3<i32>(0i, 1i, 1i), Struct_1(vec2<u32>(4294967295u, 33783u)), 1331f), Struct_3(vec3<i32>(i32(-2147483648), 10179i, -16442i), Struct_1(vec2<u32>(10629u, 4294967295u)), -1443f), Struct_3(vec3<i32>(15677i, 5381i, 2147483647i), Struct_1(vec2<u32>(18303u, 22800u)), -1816f), Struct_3(vec3<i32>(17592i, 4269i, 2147483647i), Struct_1(vec2<u32>(1u, 45210u)), 1426f), Struct_3(vec3<i32>(-1i, -1i, -1i), Struct_1(vec2<u32>(4294967295u, 34030u)), -1906f), Struct_3(vec3<i32>(-8117i, 2147483647i, -49968i), Struct_1(vec2<u32>(29238u, 7342u)), 1372f), Struct_3(vec3<i32>(12574i, 1i, 2147483647i), Struct_1(vec2<u32>(77707u, 1u)), 198f), Struct_3(vec3<i32>(-4441i, -3691i, i32(-2147483648)), Struct_1(vec2<u32>(1u, 4294967295u)), 131f), Struct_3(vec3<i32>(5834i, i32(-2147483648), 50167i), Struct_1(vec2<u32>(58390u, 1u)), -1441f), Struct_3(vec3<i32>(6659i, 2147483647i, -37013i), Struct_1(vec2<u32>(31447u, 15700u)), -1831f), Struct_3(vec3<i32>(66630i, -1i, 1i), Struct_1(vec2<u32>(22276u, 1u)), 1907f), Struct_3(vec3<i32>(-1i, 39590i, -30253i), Struct_1(vec2<u32>(50749u, 1233u)), -156f), Struct_3(vec3<i32>(-61603i, -1i, -1i), Struct_1(vec2<u32>(44836u, 4294967295u)), -460f), Struct_3(vec3<i32>(-18045i, 2147483647i, -52983i), Struct_1(vec2<u32>(1u, 1367u)), 1125f), Struct_3(vec3<i32>(0i, -54668i, 62669i), Struct_1(vec2<u32>(1u, 49403u)), -926f), Struct_3(vec3<i32>(-59816i, 32570i, 2147483647i), Struct_1(vec2<u32>(0u, 8861u)), 698f), Struct_3(vec3<i32>(13878i, -26954i, -37585i), Struct_1(vec2<u32>(91u, 59786u)), 1000f), Struct_3(vec3<i32>(1i, 1i, -36344i), Struct_1(vec2<u32>(59695u, 1u)), -1867f), Struct_3(vec3<i32>(-25967i, 17474i, 32227i), Struct_1(vec2<u32>(1u, 14561u)), 1940f), Struct_3(vec3<i32>(-58793i, 0i, -10873i), Struct_1(vec2<u32>(0u, 119592u)), -266f), Struct_3(vec3<i32>(50469i, 83837i, 2147483647i), Struct_1(vec2<u32>(1u, 0u)), -1072f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    var var_0 = Struct_1(~_wgslsmith_mult_vec2_u32(u_input.c.zw, vec2<u32>(1u, ~0u)));
    var var_1 = !global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(4294967295u, 44639u, 0u), _wgslsmith_sub_u32(max(9248u, 15287u), countOneBits(29374u))) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 54157u, 1u), firstLeadingBit(arg_0)) % 32u), 5u)];
    let var_2 = global4[_wgslsmith_index_u32(12308u, 30u)];
    var var_3 = 1i;
    global4 = array<Struct_3, 30>();
    return _wgslsmith_add_u32(reverseBits(~reverseBits(arg_0.x)) >> ((~countOneBits(u_input.c.x) << (~u_input.d % 32u)) % 32u), global3.b.a.x);
}

fn func_2() -> Struct_3 {
    var var_0 = any(select(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(global3.b.a.x, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)])), vec3<bool>(global2[_wgslsmith_index_u32(global3.b.a.x, 5u)] != global2[_wgslsmith_index_u32(13445u, 5u)], all(vec2<bool>(true, global2[_wgslsmith_index_u32(72274u, 5u)])), global3.c > 1382f), vec3<bool>(!global2[_wgslsmith_index_u32(0u, 5u)], true, false)), vec3<bool>(global2[_wgslsmith_index_u32(67051u, 5u)], global2[_wgslsmith_index_u32(~func_3(u_input.c.xyy, vec3<f32>(global3.c, global3.c, global3.c), -2147483647i), 5u)], !all(vec3<bool>(false, false, false))), vec3<bool>(true, !all(vec3<bool>(global2[_wgslsmith_index_u32(45808u, 5u)], false, false)), all(!vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(0u, 5u)])))));
    global4 = array<Struct_3, 30>();
    global1 = array<vec3<f32>, 22>();
    let var_1 = global4[_wgslsmith_index_u32(~(~abs(4294967295u)), 30u)];
    global4 = array<Struct_3, 30>();
    return global4[_wgslsmith_index_u32(~(var_1.b.a.x << (4294967295u % 32u)), 30u)];
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(1f * -778f);
    global1 = array<vec3<f32>, 22>();
    var var_1 = func_2();
    global3 = Struct_3(vec3<i32>(abs(-global3.a.x), firstLeadingBit(~max(-40765i, -41113i)), ~(~_wgslsmith_sub_i32(global3.a.x, u_input.b))), global3.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) * 1483f)))));
    let var_2 = _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, _wgslsmith_clamp_vec4_u32(max(~(u_input.c | vec4<u32>(u_input.c.x, 4294967295u, 0u, 24931u)), vec4<u32>(0u, 1u & var_1.b.a.x, ~global3.b.a.x, global3.b.a.x)), vec4<u32>(global3.b.a.x, var_1.b.a.x, u_input.c.x, 4294967295u & func_3(u_input.c.ywz, vec3<f32>(var_0, 416f, var_0), u_input.b)), countOneBits(~vec4<u32>(u_input.d, 69860u, 55028u, 2238u))));
    return vec4<f32>(1f, _wgslsmith_f_op_f32(global3.c + -359f), _wgslsmith_f_op_f32(min(func_2().c, var_0)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-global3.c))))), _wgslsmith_f_op_f32(-global3.c), 504f, global3.c));
    let var_1 = vec2<bool>(true, !(!(!any(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 5u)])))));
    var var_2 = false;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(709f, var_0.x, var_0.x, -1271f)) + _wgslsmith_f_op_vec4_f32(func_1())), _wgslsmith_f_op_vec4_f32(func_1()))));
    var var_3 = firstLeadingBit(global3.b.a.x);
    let var_4 = true;
    var var_5 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(select(select(vec3<u32>(var_5.a.x, global3.b.a.x, 0u), u_input.c.xwx ^ vec3<u32>(var_5.a.x, u_input.a.x, u_input.d), true), select(u_input.c.zzz, u_input.c.ywy, any(vec3<bool>(false, false, true))), !(!vec3<bool>(true, true, var_4))), u_input.c.yyy), ~select(countOneBits(vec2<u32>(4294967295u, 0u)), var_5.a, true));
}

