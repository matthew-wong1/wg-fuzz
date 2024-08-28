struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<i32, 26> = array<i32, 26>(i32(-2147483648), -7449i, -1i, 69150i, 0i, 1i, 21174i, 1i, i32(-2147483648), -35123i, -12110i, -2575i, 2147483647i, -7190i, -118422i, -21323i, -19771i, -7442i, -465i, i32(-2147483648), 19001i, -23556i, -3056i, i32(-2147483648), 8638i, -35875i);

var<private> global2: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(1i, 0i, 62515i, 0i), vec4<i32>(2101i, 11321i, 0i, 2564i), vec4<i32>(2147483647i, 36726i, -35108i, i32(-2147483648)), vec4<i32>(6420i, -20032i, -1i, 4461i), vec4<i32>(1i, -6362i, 0i, 16521i), vec4<i32>(0i, i32(-2147483648), -1i, -24848i), vec4<i32>(12281i, 2147483647i, 0i, -69547i), vec4<i32>(0i, 1i, -25681i, i32(-2147483648)), vec4<i32>(2147483647i, 17212i, 36034i, 1i), vec4<i32>(-1i, -24277i, i32(-2147483648), -15812i), vec4<i32>(1i, i32(-2147483648), 0i, 1i), vec4<i32>(i32(-2147483648), -1i, -30073i, -20549i), vec4<i32>(2147483647i, 65866i, -1i, 2147483647i), vec4<i32>(-13272i, 0i, 11187i, 2147483647i), vec4<i32>(1i, -26988i, -1i, 5844i), vec4<i32>(-1i, 4349i, 1i, 43136i), vec4<i32>(0i, -29148i, 0i, 19088i), vec4<i32>(-1i, -33089i, 2147483647i, 2147483647i), vec4<i32>(-64517i, -10762i, 3147i, -1i), vec4<i32>(-49932i, -1i, i32(-2147483648), -1i), vec4<i32>(-1819i, i32(-2147483648), 0i, -1i), vec4<i32>(1i, 3703i, 47319i, i32(-2147483648)), vec4<i32>(29587i, -18988i, -25207i, 1i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 15370i), vec4<i32>(-8130i, 10000i, -62874i, -47818i));

var<private> global3: vec4<u32> = vec4<u32>(1u, 0u, 75989u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1363f, -3389f, global0.x, global0.x)))), -11606i, vec3<f32>(_wgslsmith_f_op_f32(trunc(608f)), global0.x, arg_2.b), !vec3<bool>(any(vec2<bool>(false, arg_0)), arg_0, true)));
    var var_1 = arg_2;
    global3 = vec4<u32>(global3.x >> (0u % 32u), ~1u, ~25103u, u_input.c);
    global3 = vec4<u32>(85732u, var_1.a, 4294967295u, u_input.c);
    let var_2 = Struct_1(var_0.a.a, var_0.a.b, var_0.a.a.yzz, select(!var_0.a.d, !select(!var_0.a.d, vec3<bool>(var_0.a.d.x, arg_0, var_0.a.d.x), !var_0.a.d), var_0.a.d));
    return firstTrailingBit(~(~_wgslsmith_mod_u32(var_1.a, 22247u) & var_1.a));
}

fn func_2() -> Struct_1 {
    let var_0 = -603f;
    var var_1 = ~(vec2<u32>(1u, func_3(true, _wgslsmith_div_i32(u_input.b, -1i), Struct_3(u_input.c, -2382f, u_input.a.wzx, 12059i))) << (countOneBits(vec2<u32>(u_input.e, ~u_input.c)) % vec2<u32>(32u)));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 1298f))), 353f, -1473f, 825f), global1[_wgslsmith_index_u32(1u, 26u)], global0.yzw, vec3<bool>(true, true, true));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global3 = ~min(~select(select(vec4<u32>(66764u, 1u, 1u, 4294967295u), vec4<u32>(u_input.c, u_input.e, u_input.c, 41292u), arg_0.d.x), vec4<u32>(global3.x, 0u, u_input.e, 84524u), true), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, 51600u, global3.x, 2972u), reverseBits(vec4<u32>(55532u, 56981u, 44983u, global3.x))), min(~vec4<u32>(global3.x, u_input.c, u_input.c, u_input.c), vec4<u32>(global3.x, 1u, 0u, 4294967295u))));
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.x, 325f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.x, 285f)))) * _wgslsmith_f_op_f32(1f * global0.x)), Struct_2(arg_0), ~vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.e, 26u)], u_input.b, u_input.b, 12373i), vec4<i32>(arg_0.b, arg_0.b, global1[_wgslsmith_index_u32(22366u, 26u)], 63688i)), global2[_wgslsmith_index_u32(26310u, 25u)] << (vec4<u32>(u_input.e, 4294967295u, 1u, u_input.e) % vec4<u32>(32u))), arg_0.b, min(u_input.a.x | u_input.a.x, 32354i)), u_input.c <= _wgslsmith_dot_vec3_u32(global3.zxz, _wgslsmith_add_vec3_u32(abs(global3.yww), abs(global3.yzx))));
    global0 = arg_0.a;
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(1246f, -790f, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(global0.x + -1484f)))), _wgslsmith_div_i32(0i, 1i), vec3<f32>(_wgslsmith_div_f32(515f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1183f + -569f) * _wgslsmith_div_f32(global0.x, 363f))), -1988f, global0.x), !vec3<bool>(any(func_2().d.xx), select(select(arg_0.d.x, arg_0.d.x, true), any(vec4<bool>(var_0.d, arg_0.d.x, false, var_0.b.a.d.x)), any(vec4<bool>(false, var_0.d, var_0.b.a.d.x, var_0.d))), func_2().d.x));
    var var_2 = Struct_3(1u, _wgslsmith_f_op_f32(-var_1.c.x), select(~abs(u_input.a.xxy) << (global3.yzy % vec3<u32>(32u)), ~(-vec3<i32>(44094i, arg_0.b, global1[_wgslsmith_index_u32(4294967295u, 26u)])), select(vec3<bool>(79996u != global3.x, 0i > arg_0.b, !arg_0.d.x), !var_0.b.a.d, (u_input.c <= global3.x) & any(vec3<bool>(false, var_0.d, arg_0.d.x)))), global1[_wgslsmith_index_u32(global3.x, 26u)]);
    return var_0.b.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.yxz)), arg_0.c);
    global2 = array<vec4<i32>, 25>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + -178f))), Struct_2(func_4(Struct_1(arg_0.a, 1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_1.x, 816f)), select(vec3<bool>(arg_0.d.x, true, false), arg_0.d, true)))), u_input.a.yxz, countOneBits(1i) == firstLeadingBit(u_input.d));
    let var_2 = abs(max(countOneBits(countOneBits(vec4<u32>(0u, global3.x, global3.x, 0u))), vec4<u32>(min(26715u, global3.x), reverseBits(u_input.c), firstTrailingBit(global3.x), 1u)) << (reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c, global3.x, 4294967295u), vec4<u32>(u_input.c, u_input.c, u_input.e, 44451u))) % vec4<u32>(32u)));
    global1 = array<i32, 26>();
    return -689f;
}

fn func_1(arg_0: Struct_2) -> u32 {
    global2 = array<vec4<i32>, 25>();
    var var_0 = arg_0.a;
    var var_1 = var_0.d.x && true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(275f + _wgslsmith_f_op_f32(func_5(func_4(func_2()), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), arg_0.a.c.x)))) - _wgslsmith_f_op_f32(-var_0.a.x));
    global3 = _wgslsmith_div_vec4_u32((max(vec4<u32>(u_input.e, 54025u, u_input.c, 4294967295u), vec4<u32>(global3.x, 1u, u_input.e, global3.x) & vec4<u32>(global3.x, 1u, global3.x, u_input.c)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 2372u, u_input.c, global3.x), vec4<u32>(1u, global3.x, 38088u, 4294967295u)), ~vec4<u32>(global3.x, 61456u, 62447u, 1u)) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 0u, 30926u), min(vec4<u32>(1u, u_input.e, 20789u, 40779u), vec4<u32>(u_input.e, global3.x, u_input.e, 4294967295u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 87945u, 1u, 0u), vec4<u32>(u_input.c, 2411u, global3.x, u_input.c))) % vec4<u32>(32u)), select(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c, u_input.e, 42000u) & ~vec4<u32>(global3.x, u_input.e, 40994u, global3.x), ~(~vec4<u32>(0u, 1u, global3.x, global3.x))), vec4<u32>((4294967295u & u_input.c) ^ ~u_input.c, 29332u, global3.x, ~4294967295u), !select(vec4<bool>(arg_0.a.d.x, var_0.d.x, false, var_0.d.x), select(vec4<bool>(arg_0.a.d.x, false, true, true), vec4<bool>(arg_0.a.d.x, false, false, var_0.d.x), vec4<bool>(true, false, true, false)), vec4<bool>(false, var_0.d.x, false, arg_0.a.d.x))));
    return global3.x;
}

fn func_6(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> f32 {
    global2 = array<vec4<i32>, 25>();
    let var_0 = Struct_3(func_3(select(true, true, true) && func_2().d.x, global1[_wgslsmith_index_u32(4294967295u, 26u)], Struct_3(0u, _wgslsmith_f_op_f32(sign(-730f)), countOneBits(vec3<i32>(1i, -1i, global1[_wgslsmith_index_u32(arg_2.x, 26u)])), u_input.a.x)), 1148f, u_input.a.xxz, 10123i);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(770f, global0.x, arg_1.x, -1663f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1521f, arg_1.x, arg_1.x, arg_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1156f, global0.x, var_0.b, 1389f))))));
    var var_1 = func_4(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 669f, 742f, -1000f)), _wgslsmith_mult_i32(abs(var_0.c.x), u_input.a.x), func_4(Struct_1(vec4<f32>(arg_1.x, arg_1.x, -740f, 406f), 2147483647i, vec3<f32>(-350f, 296f, arg_1.x), vec3<bool>(true, false, false))).c, func_2().d))).c.x;
    global3 = _wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, var_0.a, 64932u, 57530u), vec4<u32>(arg_0.x, 1u, arg_0.x, global3.x))), abs(vec4<u32>(4294967295u, 10019u, 4294967295u, 19309u))), ~(~(~vec4<u32>(arg_2.x, u_input.e, arg_0.x, 62106u))), select(vec4<bool>(var_0.c.x >= global1[_wgslsmith_index_u32(u_input.c, 26u)], true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true))))), ~countOneBits(vec4<u32>(arg_0.x, 26048u, 0u, arg_0.x)) >> ((~vec4<u32>(u_input.e, arg_2.x, global3.x, 24833u) ^ select(abs(vec4<u32>(global3.x, 4294967295u, arg_0.x, global3.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, var_0.a, 12675u, 4294967295u), vec4<u32>(0u, arg_2.x, u_input.e, arg_2.x)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)))) % vec4<u32>(32u)));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_6(_wgslsmith_sub_vec2_u32(global3.xy, vec2<u32>(min(~u_input.e, func_1(Struct_2(Struct_1(vec4<f32>(-956f, -443f, -1489f, global0.x), global1[_wgslsmith_index_u32(1u, 26u)], global0.xwx, vec3<bool>(true, false, true))))), 71625u)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(809f - _wgslsmith_div_f32(-660f, 977f)))), global0.x), ~global3.xz));
    global2 = array<vec4<i32>, 25>();
    let var_1 = -1490f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_1, _wgslsmith_f_op_f32(global0.x + var_1))))));
    global2 = array<vec4<i32>, 25>();
    var var_3 = min(4294967295u ^ ~global3.x, u_input.e) & global3.x;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(556f, var_1), -741f, -730f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1150f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-_wgslsmith_mult_i32(0i, u_input.d), _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.d, global1[_wgslsmith_index_u32(33706u, 26u)])), -min(-8678i, global1[_wgslsmith_index_u32(u_input.e, 26u)])));
}

