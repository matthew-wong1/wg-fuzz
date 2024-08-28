struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, true), 2395f, 4294967295u);

var<private> global1: i32;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, false), -127f, 4294967295u), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true), 1006f, 30024u), Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, true), -114f, 1628u), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true), -582f, 1u), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false), 1387f, 56884u));

var<private> global3: array<vec3<f32>, 14>;

var<private> global4: vec2<f32> = vec2<f32>(-1318f, -164f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 5u)];
    var var_1 = -1240f;
    global3 = array<vec3<f32>, 14>();
    var var_2 = global0.a;
    var var_3 = _wgslsmith_mult_i32(u_input.b, -17041i);
    return global2[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(~(~4294967295u), max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, arg_0.d, arg_0.d, 69898u), u_input.a), global0.d), global0.d) | ~4294967295u), 5u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = select(_wgslsmith_add_u32(global0.d, 1u), arg_0.d, all(vec2<bool>(arg_0.a.x, false)));
    var var_1 = global2[_wgslsmith_index_u32(abs(1u), 5u)];
    global1 = u_input.b;
    global0 = func_2(func_2(func_2(Struct_1(vec2<bool>(true, var_1.b.x), func_2(Struct_1(var_1.a, var_1.b, -195f, u_input.a.x), vec3<f32>(248f, 904f, -597f)).b, _wgslsmith_f_op_f32(max(1382f, global0.c)), _wgslsmith_mult_u32(global0.d, global0.d)), _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(4294967295u, 14u)] * global3[_wgslsmith_index_u32(arg_0.d ^ var_1.d, 14u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(var_0, 14u)] + global3[_wgslsmith_index_u32(6528u, 14u)]) * global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), 14u)]) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, 1836f, 150f)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(32418u, 11201u, 0u), 14u)])))), global3[_wgslsmith_index_u32(~((u_input.a.x ^ (57188u >> (u_input.a.x % 32u))) << (_wgslsmith_div_u32(arg_0.d >> (arg_0.d % 32u), var_0) % 32u)), 14u)]);
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c));
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = !(!(!vec3<bool>(true, true, global0.b.x | global0.a.x)));
    let var_1 = Struct_1(!select(vec2<bool>(true, true), global0.a, select(vec2<bool>(true, false), func_2(global2[_wgslsmith_index_u32(global0.d, 5u)], vec3<f32>(2183f, global4.x, global4.x)).b.xx, all(vec4<bool>(var_0.x, var_0.x, global0.a.x, true)))), vec3<bool>(false, func_2(global2[_wgslsmith_index_u32(arg_0, 5u)], global3[_wgslsmith_index_u32(~(~global0.d), 14u)]).a.x, global0.b.x), 430f, 8589u);
    let var_2 = reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, -2147483647i, 0i, -1i), countOneBits(vec4<i32>(u_input.b, u_input.b, -9750i, u_input.b))), _wgslsmith_add_vec4_i32(-vec4<i32>(-15413i, u_input.b, u_input.b, u_input.b), reverseBits(vec4<i32>(-2709i, 0i, u_input.b, -46855i)))), 2147483647i, select(u_input.b, u_input.b, (arg_1 == 732f) && var_0.x)));
    global4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -182f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -313f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, global4.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, 1185f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1165f, -203f)))))))));
    var var_3 = vec3<u32>(global0.d, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.d, arg_0), var_1.d), _wgslsmith_dot_vec3_u32(vec3<u32>(~57059u, global0.d, u_input.a.x & min(83324u, arg_0)), min(select(u_input.a.xww ^ vec3<u32>(var_1.d, u_input.a.x, 4294967295u), ~u_input.a.wzx, any(vec3<bool>(var_1.b.x, true, var_0.x))), reverseBits(u_input.a.zzy) << (~u_input.a.wzx % vec3<u32>(32u)))));
    return func_2(func_2(func_2(Struct_1(!vec2<bool>(var_0.x, var_0.x), vec3<bool>(true, false, false), _wgslsmith_div_f32(-774f, 1546f), select(arg_0, var_1.d, global0.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-916f, global0.c, 546f), global3[_wgslsmith_index_u32(arg_0, 14u)])))), _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(~32701u, 14u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f), _wgslsmith_f_op_f32(trunc(-1411f))), _wgslsmith_f_op_f32(f32(-1f) * -948f)) * vec3<f32>(1287f, -633f, -919f)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = u_input.a.wy;
    global3 = array<vec3<f32>, 14>();
    var var_1 = vec2<i32>(~(-24801i), arg_1);
    var var_2 = func_4(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(func_2(Struct_1(global0.a, vec3<bool>(false, true, global0.a.x), 163f, global0.d), vec3<f32>(-155f, global4.x, 917f)), firstTrailingBit(vec4<i32>(var_1.x, 1i, arg_0, arg_1)))), _wgslsmith_f_op_f32(-global4.x)))));
    var var_3 = !arg_2;
    return Struct_1(!func_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(1u), ~global0.d), 5u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c, -758f, -743f))) - global3[_wgslsmith_index_u32(var_2.d, 14u)])).b.zy, vec3<bool>(any(select(!vec4<bool>(true, var_2.a.x, arg_2, false), select(vec4<bool>(global0.b.x, true, var_2.b.x, true), vec4<bool>(var_2.b.x, true, global0.b.x, arg_2), false), select(vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(true, arg_2, arg_2, var_2.b.x), vec4<bool>(var_2.a.x, global0.a.x, global0.b.x, false)))), all(!func_2(global2[_wgslsmith_index_u32(global0.d, 5u)], vec3<f32>(var_2.c, global0.c, -982f)).b.xz), arg_2 & true), 1269f, ~0u);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: vec3<f32>) -> vec4<bool> {
    global4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-481f)) - -1768f), _wgslsmith_f_op_f32(-func_4(0u, -828f).c)), _wgslsmith_f_op_f32(-740f + _wgslsmith_f_op_f32(534f * global4.x))), vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), global4.x));
    let var_0 = u_input.a.wz;
    global0 = Struct_1(global0.a, select(func_2(func_4(~1u, 975f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-762f, global4.x, global4.x)))).b, arg_0.b, vec3<bool>(global0.b.x, !select(true, false, true), false)), arg_0.c, 0u);
    global4 = vec2<f32>(138f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1722f, -2193f) * _wgslsmith_f_op_f32(func_3(Struct_1(global0.a, vec3<bool>(arg_0.a.x, true, false), 711f, arg_2), vec4<i32>(arg_1.x, 1i, -1i, -1i))))), -1228f)));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, func_1(countOneBits(arg_1.x) | ~(arg_1.x & 2147483647i), arg_1.x, !all(arg_0.b.zy)).d), 5u)];
    return vec4<bool>(false || !(arg_0.a.x & var_1.b.x), func_1(~u_input.b, _wgslsmith_dot_vec2_i32(~vec2<i32>(-92453i, 3835i), vec2<i32>(-27233i, u_input.b)), global0.a.x).a.x | arg_0.a.x, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!(!(!vec4<bool>(true, false, false, global0.a.x))), func_5(func_1(u_input.b, -30309i, true), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b, 27378i, u_input.b), vec3<i32>(2147483647i, -2147483647i, u_input.b) & vec3<i32>(33916i, u_input.b, 46999i)), max(4294967295u, firstTrailingBit(78341u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(global0.d, 14u)])), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.x, global4.x, global4.x))))), !(!func_5(global2[_wgslsmith_index_u32(0u, 5u)], vec3<i32>(u_input.b, -41578i, u_input.b), global0.d, global3[_wgslsmith_index_u32(4294967295u, 14u)]))), vec4<bool>(!func_5(Struct_1(vec2<bool>(global0.a.x, global0.b.x), global0.b, 251f, global0.d), -vec3<i32>(-1i, u_input.b, u_input.b), ~4294967295u, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.d, u_input.a.x), 14u)]).x, false, func_4(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -747f) + _wgslsmith_f_op_f32(global0.c * global4.x))).a.x, func_1(-90748i, ~(~7684i), true).a.x), ~(-(1i ^ u_input.b)) >= 0i);
    let var_1 = u_input.a;
    var var_2 = func_2(global2[_wgslsmith_index_u32(30659u, 5u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(44025u ^ ~var_1.x, 14u)] * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, -134f, 1292f) + global3[_wgslsmith_index_u32(var_1.x, 14u)]), vec3<f32>(-223f, 1123f, 338f))))));
    let var_3 = Struct_1(vec2<bool>(true, 1i > u_input.b), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + func_1(u_input.b, -2147483647i, global0.a.x).c))), 114184u);
    global2 = array<Struct_1, 5>();
    var var_4 = select(var_1.yzz >> (abs(var_1.zwy | var_1.wwz) % vec3<u32>(32u)), u_input.a.yzw, _wgslsmith_mod_u32(35783u, ~11076u) <= ~(~global0.d)) << (u_input.a.xzz % vec3<u32>(32u));
    global4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -123f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(var_2.c + global0.c))))));
    var var_5 = func_4(func_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(57375u, firstLeadingBit(~u_input.a.x)), 5u)], global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(countOneBits(u_input.a.zxw), max(vec3<u32>(1u, 0u, var_4.x), vec3<u32>(1u, 1u, var_2.d))), ~u_input.a.x | 17541u), 14u)]).d, func_2(func_4(var_2.d, global4.x), vec3<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1199f))), _wgslsmith_f_op_f32(-var_3.c))).c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.b, -2147483647i)), firstTrailingBit(vec2<i32>(u_input.b, 2147483647i))), vec2<i32>(min(u_input.b, u_input.b), 24033i), true)), var_5.d, reverseBits(select(var_1.yw, var_1.zw, vec2<bool>(true, false)) << (firstLeadingBit(max(vec2<u32>(82521u, 25090u), vec2<u32>(18374u, var_2.d))) % vec2<u32>(32u))), 4294967295u, vec4<f32>(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_5.c, 165f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), global4.x), _wgslsmith_f_op_f32(ceil(global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3.c, global0.c), _wgslsmith_f_op_f32(abs(-583f)))))));
}

