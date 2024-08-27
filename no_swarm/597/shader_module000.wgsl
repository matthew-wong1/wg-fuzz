struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1050f, 17441i, vec3<i32>(-1i, 2147483647i, 0i)), Struct_1(223f, -45318i, vec3<i32>(2147483647i, 1i, i32(-2147483648))), Struct_1(-1333f, 1i, vec3<i32>(-1i, 2147483647i, 1i)), Struct_1(-329f, 0i, vec3<i32>(2147483647i, 8891i, 70822i)));

var<private> global1: Struct_2 = Struct_2(false, -1i, Struct_1(-2122f, 60850i, vec3<i32>(26507i, 2147483647i, 37278i)), 39887u, true);

var<private> global2: array<vec2<u32>, 5>;

var<private> global3: vec4<i32> = vec4<i32>(i32(-2147483648), 12921i, -8583i, 0i);

var<private> global4: vec4<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.a))), arg_0.b, global3.xxz);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c.a, 446f))), -740f))), arg_0.b, reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.d, -2569i), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, global1.b, global3.x), vec3<i32>(-44494i, arg_0.b, -2147483647i), vec3<i32>(-2147483647i, arg_0.c.b, arg_0.b))), -vec3<i32>(-1i, arg_0.b, arg_0.c.b))));
    let var_2 = abs(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global2[_wgslsmith_index_u32(global4.x, 5u)], global4.xx), global4.xy) ^ ~arg_0.d);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2, ~1u), 5u)];
    global2 = array<vec2<u32>, 5>();
    return abs(~global4.yy);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    global0 = array<Struct_1, 4>();
    var var_0 = ~global4.yxz;
    var var_1 = Struct_2(true, u_input.d, Struct_1(arg_2.a, arg_2.c.x, global1.c.c), ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.d, 1362u, 1u), vec3<u32>(global1.d, 0u, global4.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global4.x, 48083u, 0u), vec3<u32>(global4.x, var_0.x, global4.x), global4.ywy))), ~arg_0 < 17679u);
    global1 = Struct_2(all(vec3<bool>(true, true, global1.a)), 27109i, Struct_1(var_1.c.a, _wgslsmith_mod_i32(0i, -_wgslsmith_sub_i32(-3827i, -25186i)), ~(-var_1.c.c)), ~(~var_0.x), false);
    var var_2 = -36170i;
    return ~(1u ^ select(0u, ~(2510u >> (var_1.d % 32u)), any(!vec3<bool>(false, var_1.e, false))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global0 = array<Struct_1, 4>();
    var var_0 = Struct_2(global1.a, -(~11364i), arg_0, global1.d << (_wgslsmith_sub_u32(53060u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 43973u), vec2<u32>(56561u, 45509u))) % 32u), false);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a, global1.e)))), -firstLeadingBit(_wgslsmith_sub_i32(min(0i, 2147483647i), 0i)), global3.xzx);
    var_0 = Struct_2(!((~u_input.a.x ^ _wgslsmith_mod_i32(var_0.c.c.x, global3.x)) <= -21311i), arg_0.c.x, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_div_f32(508f, 808f), var_0.a)))), ~global3.x | -abs(var_0.b), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.c, ~var_0.c.c), vec3<i32>(reverseBits(global1.b), i32(-1i) * -1i, -2147483647i))), ~global4.x, any(vec2<bool>(global1.a, global1.e)));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1391f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c.a))), -658f))));
    return Struct_2(!global1.e, -global3.x, global0[_wgslsmith_index_u32(104801u, 4u)], var_0.d, global4.x == 20515u);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    global1 = func_4(func_4(arg_3).c);
    global0 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_4(Struct_1(2163f, -58386i, arg_3.c)).c.a, -352f)))));
    let var_1 = ~global4.xyz;
    global4 = ~(~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, global1.d, var_1.x), vec4<u32>(4294967295u, arg_1.d, arg_0.x, global4.x)))));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    global1 = func_5(global4.yw, func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_2(Struct_2(arg_3, global1.c.b, Struct_1(-1000f, global1.c.b, u_input.b), global1.d, global1.e), vec4<bool>(true, true, global1.a, arg_1), true), vec2<u32>(50873u, global4.x)) >> (func_3(abs(4294967295u), vec4<i32>(global3.x, -20651i, -18494i, u_input.d), arg_2, ~1u) % 32u), 4u)]), ~global4.x, Struct_1(global1.c.a, 28353i, global3.zxw));
    global4 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global4.x, arg_0, 4294967295u, 39526u), vec4<u32>(111161u, global4.x, 0u, global1.d))), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(788u, global4.x, 23384u, global1.d)), reverseBits(vec4<u32>(global4.x, 1u, 4294967295u, u_input.c)) << (_wgslsmith_add_vec4_u32(vec4<u32>(global1.d, 0u, global1.d, 68439u), vec4<u32>(global1.d, 0u, 0u, 80015u)) % vec4<u32>(32u)), select(vec4<u32>(62848u, 1u, global1.d, arg_0) ^ vec4<u32>(global1.d, 9878u, 0u, global4.x), vec4<u32>(arg_0, arg_0, 55435u, u_input.c), select(vec4<bool>(true, global1.a, arg_3, true), vec4<bool>(global1.a, arg_1, false, global1.e), vec4<bool>(true, arg_3, true, global1.a))))), ~(vec4<u32>(~arg_0, func_3(global4.x, vec4<i32>(26599i, global1.c.c.x, global3.x, global3.x), arg_2, global4.x), _wgslsmith_sub_u32(1u, global4.x), abs(u_input.c)) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 0u, 43531u, 5295u), firstLeadingBit(vec4<u32>(4294967295u, global1.d, global4.x, arg_0)))));
    let var_0 = 4294967295u;
    global3 = vec4<i32>(-u_input.b.x, 1i, arg_2.c.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(global1.b, 2147483647i), reverseBits(-81257i)), u_input.b.x), ~arg_2.c.x));
    return Struct_2(global1.e, -(~(-_wgslsmith_mult_i32(2147483647i, -1i))), func_5(global2[_wgslsmith_index_u32(global1.d, 5u)], Struct_2(global1.a, _wgslsmith_sub_i32(-u_input.a.x, -arg_2.c.x), Struct_1(-623f, select(-1i, 22248i, false), vec3<i32>(-2147483647i, arg_2.b, arg_2.b)), ~57618u >> (~u_input.c % 32u), arg_3), (global4.x ^ arg_0) ^ abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d, 24681u, arg_0, 50723u), vec4<u32>(64520u, 1u, 49152u, 1u))), func_4(Struct_1(_wgslsmith_div_f32(global1.c.a, -362f), u_input.b.x, arg_2.c)).c).c, u_input.c, true);
}

fn func_6(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_1(-2593f, _wgslsmith_sub_i32(-17431i, _wgslsmith_mod_i32(~(~(-1i)), ~u_input.a.x)), u_input.b);
    let var_1 = arg_0;
    let var_2 = countOneBits(~global2[_wgslsmith_index_u32(func_2(Struct_2(all(vec2<bool>(arg_0.a, var_1.e)), var_1.b, func_1(var_1.d, true, Struct_1(1225f, 1i, var_0.c), false).c, _wgslsmith_dot_vec3_u32(global4.wzx, vec3<u32>(global1.d, global4.x, u_input.c)), any(vec2<bool>(arg_0.e, var_1.e))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(global1.a, var_1.a, var_1.a, true), arg_0.e), !vec4<bool>(arg_0.a, true, var_1.a, arg_0.a), any(vec3<bool>(global1.e, arg_0.a, true))), true).x, 5u)]);
    var var_3 = Struct_1(-283f, select(~(_wgslsmith_mod_i32(-52985i, 25073i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, 0i, global3.x), global3.wyy)), ~(var_0.c.x | 1i) | 0i, arg_0.e), ~vec3<i32>(-71791i, func_4(global0[_wgslsmith_index_u32(global1.d, 4u)]).b, u_input.d));
    let var_4 = var_1;
    return _wgslsmith_mult_i32(-2147483647i << (func_5(~global4.zz, Struct_2(u_input.a.x >= global3.x, -2147483647i ^ arg_0.c.b, func_1(global1.d, true, arg_0.c, true).c, ~31487u, arg_0.e), global4.x, func_5(~vec2<u32>(arg_0.d, 4294967295u), arg_0, func_4(global0[_wgslsmith_index_u32(global4.x, 4u)]).d, global1.c).c).d % 32u), select(_wgslsmith_mod_i32(func_1(var_2.x, arg_0.e | var_4.e, Struct_1(var_0.a, 2147483647i, u_input.b), true).c.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -1i, 9440i), vec3<i32>(55755i, -50679i, var_1.b) & var_3.c)), i32(-1i) * -1i, func_5(~abs(global4.wz), func_5(global2[_wgslsmith_index_u32(min(global4.x, u_input.c), 5u)], Struct_2(false, 26068i, var_4.c, 0u, true), 1u, Struct_1(var_4.c.a, u_input.b.x, var_3.c)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(global1.d, global4.x, var_1.d), var_4.d), global1.c).a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c.a;
    var var_1 = 2147483647i;
    var_0 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -646f));
    global2 = array<vec2<u32>, 5>();
    global4 = min(~vec4<u32>(0u, 8184u, _wgslsmith_add_u32(global4.x, u_input.c), 4294967295u), ~vec4<u32>(1u, global1.d, ~global4.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.d), global4.zy)));
    global1 = Struct_2((_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, u_input.b), vec3<i32>(-2147483647i, -10637i, u_input.d)) <= 1i) & true, global1.b, Struct_1(763f, firstTrailingBit(0i), vec3<i32>(global1.b, 1i | global1.c.c.x, func_6(func_1(u_input.c, global1.a, global1.c, false)))), func_5(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(global1.d, global4.x), 4294967295u), global4.x), Struct_2(all(!vec3<bool>(false, true, global1.e)), _wgslsmith_add_i32(24276i >> (u_input.c % 32u), _wgslsmith_clamp_i32(-75336i, -29447i, global1.c.b)), Struct_1(global1.c.a, u_input.a.x, vec3<i32>(-2147483647i, global1.b, global3.x)), ~global1.d ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, u_input.c, 4294967295u, 0u), vec4<u32>(global4.x, 0u, 0u, 33975u)), false), ~0u, global0[_wgslsmith_index_u32(func_3(0u, _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -38261i, 1i, global1.c.c.x), vec4<i32>(-36887i, global3.x, -1i, global3.x)) >> (vec4<u32>(global4.x, global4.x, u_input.c, global4.x) % vec4<u32>(32u)), Struct_1(991f, -1i, -global1.c.c), 24986u), 4u)]).d, global1.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f * func_5(~global2[_wgslsmith_index_u32(1574u, 5u)] & global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.d, 4294967295u), 5u)], Struct_2(true, 1i, Struct_1(-119f, -3750i, vec3<i32>(-1i, 1i, -35742i)), ~global4.x, true), func_4(global1.c).d, func_1(~global4.x, true, func_1(33823u, global1.a, global1.c, global1.e).c, 513f <= global1.c.a).c).c.a));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(global4.x, true, global0[_wgslsmith_index_u32(global4.x, 4u)], !(!all(vec4<bool>(false, global1.e, global1.e, true)))).c.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(288f, global1.c.a, global1.c.a, global1.c.a)))))), max(global1.d, (u_input.c >> (global4.x % 32u)) >> ((global4.x >> (52211u % 32u)) % 32u)), countOneBits(vec2<i32>(-u_input.b.x, -17262i)) & _wgslsmith_div_vec2_i32(abs(~global1.c.c.zy), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 5593i, 1i, 1i), vec4<i32>(global3.x, u_input.b.x, -1i, global1.b)), -global3.x)));
}

