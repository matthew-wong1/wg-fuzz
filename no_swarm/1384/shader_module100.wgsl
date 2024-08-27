struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(-1i, -59330i, 69516i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(i32(-2147483648), 40830i, 8253i), vec3<i32>(1i, -22575i, i32(-2147483648)), vec3<i32>(-1i, -3761i, -21108i), vec3<i32>(i32(-2147483648), 2147483647i, 31230i), vec3<i32>(1i, 1i, 0i), vec3<i32>(28297i, 0i, 22021i), vec3<i32>(3289i, -56497i, 1i), vec3<i32>(25283i, -1i, 53i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(-1077i, 84260i, i32(-2147483648)), vec3<i32>(39548i, 1i, 2147483647i), vec3<i32>(-1i, -13169i, 22300i), vec3<i32>(1i, -1i, -1i), vec3<i32>(-51683i, -1i, -9588i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(i32(-2147483648), 72365i, 1i), vec3<i32>(24458i, -1i, 65526i), vec3<i32>(0i, 12316i, 2147483647i), vec3<i32>(1i, 1i, 14536i));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(195f, 1000f, 606f), vec3<bool>(true, true, false), -42365i);

var<private> global3: vec4<i32> = vec4<i32>(10270i, 1i, -36687i, 2147483647i);

var<private> global4: array<i32, 9> = array<i32, 9>(2147483647i, -1i, -53993i, -39395i, -10920i, 754i, 2147483647i, -1i, i32(-2147483648));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<i32> {
    global3 = vec4<i32>(_wgslsmith_mult_i32(arg_0, _wgslsmith_clamp_i32(min(global2.c, 0i) ^ ~1i, u_input.a, min(_wgslsmith_sub_i32(global1.c, global4[_wgslsmith_index_u32(u_input.b, 9u)]), _wgslsmith_dot_vec3_i32(global3.yxw, global0[_wgslsmith_index_u32(0u, 21u)])))), _wgslsmith_sub_i32(~_wgslsmith_mod_i32(global3.x, _wgslsmith_add_i32(-1i, -1i)), ~(global1.c << (0u % 32u)) | _wgslsmith_mod_i32(-u_input.e, global1.c ^ global1.c)), arg_1.c, ~u_input.a | max(select(1i, 5112i, !global2.b.x), ~(-1i)));
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-171f, 247f, 615f, 859f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, arg_1.a.x, 1000f, 1627f)))))));
    var var_1 = !vec4<bool>(arg_1.b.x, arg_1.b.x, global1.b.x, all(!vec4<bool>(false, global1.b.x, false, global2.b.x)) && true);
    let var_2 = countOneBits(u_input.c);
    global3 = vec4<i32>(u_input.a, -1i, ~(~(-3622i)), arg_1.c);
    return firstTrailingBit(vec4<i32>(-(i32(-1i) * -39665i), select(arg_1.c, var_2.x, true) >> (u_input.b % 32u), _wgslsmith_mult_i32(global3.x & arg_1.c, 23775i), i32(-1i) * -2147483647i)) >> (~u_input.d % vec4<u32>(32u));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: i32) -> i32 {
    global3 = max(min(max(select(vec4<i32>(arg_2, global3.x, global1.c, global4[_wgslsmith_index_u32(6483u, 9u)]), arg_1, true), ~u_input.c), _wgslsmith_mod_vec4_i32(~vec4<i32>(23635i, 0i, arg_2, arg_2), reverseBits(u_input.c))), _wgslsmith_clamp_vec4_i32(u_input.c, ~vec4<i32>(global1.c, u_input.c.x, arg_1.x, global2.c) ^ (vec4<i32>(arg_0.x, 0i, 2147483647i, u_input.c.x) | vec4<i32>(-31142i, global4[_wgslsmith_index_u32(4294967295u, 9u)], global3.x, global4[_wgslsmith_index_u32(4294967295u, 9u)])), countOneBits(vec4<i32>(global4[_wgslsmith_index_u32(31681u, 9u)], u_input.a, global4[_wgslsmith_index_u32(u_input.d.x, 9u)], -2147483647i)) & func_3(-41878i, Struct_1(global2.a, vec3<bool>(global1.b.x, global1.b.x, global1.b.x), 23026i)))) & arg_1;
    global2 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(ceil(-1456f)), _wgslsmith_f_op_f32(f32(-1f) * -1782f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(global2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -535f, global1.a.x)), !global1.b))))), global1.b, -25015i);
    global4 = array<i32, 9>();
    let var_0 = Struct_1(global2.a, global1.b, func_3(-44282i, Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1885f, -1000f, 1184f))), !select(vec3<bool>(global1.b.x, global2.b.x, false), vec3<bool>(false, true, global2.b.x), global1.b), ~(-global4[_wgslsmith_index_u32(u_input.d.x, 9u)]))).x);
    global4 = array<i32, 9>();
    return global2.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1149f, 1035f)), _wgslsmith_div_f32(1343f, arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.x), arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1854f * -183f))), true)), vec3<bool>(false, global2.b.x, any(global2.b)), countOneBits(-18341i >> (u_input.b % 32u)));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, -230f, 1182f) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1457f, -1000f, 1186f) + vec3<f32>(353f, arg_1.a.x, -144f)))))), !arg_2.b, ~(-abs(min(global2.c, arg_2.c))));
    let var_1 = arg_3.b.x;
    global3 = abs(func_3(~func_3(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.b), 9u)], arg_1).x, Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a.x, -646f, global2.a.x))), _wgslsmith_f_op_vec3_f32(arg_2.a * arg_1.a))), !select(vec3<bool>(false, true, true), vec3<bool>(global1.b.x, false, true), arg_1.b.x), _wgslsmith_dot_vec3_i32(global3.wyz, vec3<i32>(var_0.c, 1i, -1i)) ^ 2147483647i)));
    let var_2 = ~vec4<i32>(i32(-1i) * -36518i, 1i, countOneBits(firstLeadingBit(44668i)), ~(-1i));
    return vec3<bool>(!(!(!arg_2.b.x)), !(true | any(vec2<bool>(false, true))), global1.b.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global2 = Struct_1(global2.a, func_4(vec3<i32>(global1.c, _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, global2.c), global3.yz), max(-2147483647i, ~global1.c)), Struct_1(vec3<f32>(_wgslsmith_div_f32(2394f, global2.a.x), _wgslsmith_f_op_f32(round(-1000f)), -913f), !vec3<bool>(arg_1.b.x, arg_1.b.x, global2.b.x), ~func_2(vec3<i32>(u_input.c.x, 13417i, -1i), u_input.c, global4[_wgslsmith_index_u32(u_input.b, 9u)])), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.a, vec3<f32>(arg_0.x, global1.a.x, arg_2), arg_1.b.x))), !global2.b, global1.c), arg_1), -(~_wgslsmith_mod_i32(~(-1i), _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(u_input.b, 9u)], global2.c))));
    global0 = array<vec3<i32>, 21>();
    var var_0 = func_4(-abs(firstTrailingBit(func_3(1i, arg_1).wyy)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 389f, global2.a.x)) * vec3<f32>(arg_1.a.x, -1002f, -377f)))), !vec3<bool>(all(vec2<bool>(arg_1.b.x, arg_1.b.x)), arg_0.x == global2.a.x, true), i32(-1i) * -global4[_wgslsmith_index_u32(~0u, 9u)]), arg_1, arg_1).x;
    let var_1 = ~select(select(u_input.d.x, u_input.b, true), max(countOneBits(0u), 103492u), !(_wgslsmith_f_op_f32(ceil(global2.a.x)) > arg_1.a.x));
    var var_2 = _wgslsmith_sub_vec4_i32(u_input.c, abs(vec4<i32>(21670i, global1.c << ((4294967295u << (u_input.d.x % 32u)) % 32u), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) << (~0u % 32u), 9u)], countOneBits(-global4[_wgslsmith_index_u32(49551u, 9u)]))));
    return Struct_1(vec3<f32>(arg_1.a.x, arg_2, arg_0.x), !(!arg_1.b), 30157i);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = arg_0;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a) - var_0.a));
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global4 = array<i32, 9>();
    global1 = arg_0;
    global0 = array<vec3<i32>, 21>();
    global3 = -(vec4<i32>(-1i) * -select(vec4<i32>(global3.x, -7525i, global2.c, -34084i), reverseBits(vec4<i32>(17411i, global3.x, 0i, 2147483647i)), arg_0.b.x));
    var var_0 = arg_0;
    return Struct_1(arg_0.a, vec3<bool>(true, global2.b.x, true), -12785i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(_wgslsmith_f_op_vec3_f32(min(global2.a, _wgslsmith_f_op_vec3_f32(func_5(func_1(global1.a.yz, Struct_1(global1.a, vec3<bool>(false, global1.b.x, global1.b.x), global4[_wgslsmith_index_u32(94281u, 9u)]), 715f), !global2.b.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(165f, global2.a.x, global2.a.x, -599f))), func_1(vec2<f32>(605f, global2.a.x), Struct_1(global2.a, global2.b, global3.x), 240f))))), vec3<bool>(global1.b.x, !(global2.b.x || global1.b.x), true), _wgslsmith_mult_i32(_wgslsmith_sub_i32(~59347i, ~(-57683i)), -9474i)), 59694u);
    var var_1 = global1.b.x && ((func_3(0i, Struct_1(var_0.a, vec3<bool>(global2.b.x, var_0.b.x, global1.b.x), 9959i)).x <= abs(1i)) && global2.b.x);
    var var_2 = vec4<bool>(all(vec2<bool>(true, global1.b.x)), global1.b.x, !(global1.a.x < 2480f), (8964u > _wgslsmith_dot_vec3_u32(u_input.d.yyy, u_input.d.wwy)) && var_0.b.x);
    global4 = array<i32, 9>();
    var var_3 = func_6(Struct_1(global1.a, func_4(u_input.c.xwx >> (vec3<u32>(47133u, 9353u, u_input.b) % vec3<u32>(32u)), func_6(func_1(vec2<f32>(global1.a.x, -521f), Struct_1(global1.a, var_2.wzx, global2.c), global2.a.x), 4294967295u), func_1(vec2<f32>(global2.a.x, global2.a.x), func_1(global2.a.zx, Struct_1(vec3<f32>(var_0.a.x, global1.a.x, -1042f), global1.b, 7574i), var_0.a.x), var_0.a.x), func_6(func_1(vec2<f32>(global2.a.x, global1.a.x), Struct_1(var_0.a, vec3<bool>(global2.b.x, global2.b.x, true), -2147483647i), global1.a.x), u_input.d.x | u_input.b)), global1.c), u_input.b);
    var var_4 = func_6(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(global2.a.x - global2.a.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.a.x, var_3.a.x))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-813f, global1.a.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a + var_3.a) + _wgslsmith_f_op_vec3_f32(global2.a * vec3<f32>(var_3.a.x, global1.a.x, var_0.a.x))), func_4(~vec3<i32>(-43805i, u_input.a, u_input.a), func_6(Struct_1(vec3<f32>(-1685f, var_3.a.x, 1000f), vec3<bool>(true, var_0.b.x, global2.b.x), global3.x), u_input.d.x), Struct_1(var_0.a, var_2.wwx, 5794i), func_1(vec2<f32>(-1222f, var_3.a.x), Struct_1(var_3.a, var_3.b, 2327i), 663f)), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global4[_wgslsmith_index_u32(u_input.d.x, 9u)], var_0.c, -44952i)), ~vec3<i32>(1i, var_3.c, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f)))), ~0u);
    var var_5 = ~(-1i);
    var var_6 = ~_wgslsmith_dot_vec3_u32(u_input.d.zzz, u_input.d.ywx);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~u_input.d.x), vec2<u32>(min(~u_input.d.x, firstTrailingBit(u_input.d.x)), u_input.b) & _wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(4294967295u, 0u)), u_input.d.xy & u_input.d.ww), u_input.d.x, _wgslsmith_add_vec2_i32(u_input.c.wx, func_3(var_3.c << (u_input.d.x % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.x, -1000f, 129f)), !var_3.b, _wgslsmith_mod_i32(0i, var_0.c))).zy));
}

