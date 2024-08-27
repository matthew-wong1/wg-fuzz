struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(902f, 1074f), vec2<bool>(true, false), Struct_1(vec4<f32>(-472f, 997f, -708f, 470f), 23921i, false, vec4<i32>(-34061i, -8157i, i32(-2147483648), 0i)), vec2<bool>(false, false));

var<private> global1: array<bool, 24>;

var<private> global2: array<Struct_3, 16>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<bool> {
    global1 = array<bool, 24>();
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x << (55420u % 32u), ~(~u_input.a.x), min(u_input.a.x & u_input.a.x, 4294967295u)) << (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.a.yx | vec2<u32>(65902u, 5446u), ~_wgslsmith_div_vec2_u32(u_input.a.ww, vec2<u32>(80877u, 0u))), u_input.a.zz), select(~_wgslsmith_dot_vec4_u32(~vec4<u32>(26015u, u_input.a.x, 43485u, u_input.a.x), vec4<u32>(13864u, u_input.a.x, 141167u, u_input.a.x)), 0u, arg_3.c != !arg_3.c), firstLeadingBit(~reverseBits(max(u_input.a.x, u_input.a.x))));
    global2 = array<Struct_3, 16>();
    var var_1 = !(-865f <= _wgslsmith_f_op_f32(max(global0.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1014f))));
    global0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1354f))))), vec2<bool>(select(any(!vec4<bool>(arg_3.c, global0.c.c, global1[_wgslsmith_index_u32(0u, 24u)], true)), select(false, any(vec3<bool>(false, false, false)), false), ~arg_3.b > 10815i), true | !(!arg_0)), arg_3, vec2<bool>(any(!vec4<bool>(false, false, false, arg_3.c)), false));
    return !vec3<bool>(false | global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.yy, vec2<u32>(u_input.a.x, u_input.a.x)) | 0u, 24u)], all(select(select(vec2<bool>(false, arg_0), global0.d, global1[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(true, global0.c.c), !vec2<bool>(true, global0.c.c))), false);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<i32>) -> vec3<bool> {
    global1 = array<bool, 24>();
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-408f, _wgslsmith_f_op_f32(-arg_1.c.a.x), global0.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, arg_1.a.x, -428f)) - vec3<f32>(-1020f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.c.a.x)) - arg_1.c.a.x), _wgslsmith_f_op_f32(-320f + global0.c.a.x))), vec3<bool>(global0.c.c, global1[_wgslsmith_index_u32(~1u, 24u)] || any(!vec4<bool>(global0.c.c, arg_1.c.c, true, false)), !(!arg_1.b.x) != true)));
    var var_1 = ~vec2<i32>(abs(firstTrailingBit(-75468i)), select(73968i, arg_1.c.d.x, true));
    let var_2 = u_input.a.zx;
    return !(!(!select(vec3<bool>(true, true, true), func_3(false, var_0.x, arg_0.xx, global0.c), func_3(true, arg_1.a.x, vec2<i32>(arg_0.x, arg_2.x), Struct_1(global0.c.a, global0.c.b, global0.d.x, arg_1.c.d)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = arg_3;
    global0 = var_1;
    let var_2 = !vec3<bool>(arg_1.b.x, func_3(true, _wgslsmith_f_op_f32(f32(-1f) * -404f), vec2<i32>(-1i) * -u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.a.x, arg_3.c.a.x, 366f, 501f)), 1i, any(vec4<bool>(true, false, true, arg_1.c.x)), global0.c.d)).x, var_1.c.c);
    global0 = var_1;
    return global0.c;
}

fn func_1() -> vec3<bool> {
    global1 = array<bool, 24>();
    var var_0 = func_4(Struct_3(-(global0.c.d.x >> (~u_input.a.x % 32u)), select(global0.d, global0.b, true), !select(func_2(vec3<i32>(global0.c.d.x, 24738i, 0i), Struct_2(vec2<f32>(-516f, 1642f), vec2<bool>(false, true), global0.c, global0.b), vec2<i32>(36930i, u_input.b.x)), vec3<bool>(global0.c.c, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 24u)], global0.d.x))), Struct_3(70123i, global0.d, !select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(20691u, 24u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), any(vec3<bool>(global0.b.x, global1[_wgslsmith_index_u32(20666u, 24u)], true)))), global0.c.d, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2010f, -1394f), global0.a)), vec2<bool>(all(!vec4<bool>(false, global0.b.x, false, global1[_wgslsmith_index_u32(21517u, 24u)])), any(select(vec4<bool>(global0.c.c, false, true, global1[_wgslsmith_index_u32(44917u, 24u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 24u)], global0.d.x), global0.c.c))), global0.c, !func_3(global0.d.x, _wgslsmith_div_f32(886f, global0.c.a.x), _wgslsmith_clamp_vec2_i32(global0.c.d.ww, vec2<i32>(global0.c.d.x, -2147483647i), global0.c.d.wz), Struct_1(vec4<f32>(global0.c.a.x, global0.c.a.x, global0.c.a.x, 767f), -1i, false, global0.c.d)).xz));
    global0 = Struct_2(vec2<f32>(global0.c.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.a.x, 1226f) * _wgslsmith_f_op_f32(global0.c.a.x - 353f))))), !(!select(!global0.b, global0.b, global0.d)), Struct_1(_wgslsmith_f_op_vec4_f32(global0.c.a - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.a.x, 887f, var_0.a.x)), vec4<f32>(var_0.a.x, var_0.a.x, -2118f, 2101f), var_0.c))), firstLeadingBit(-var_0.d.x), global0.b.x, reverseBits(vec4<i32>(_wgslsmith_mod_i32(var_0.b, global0.c.b), 40363i, -68108i, 1i))), vec2<bool>(true, !(!global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a.x), 24u)])));
    let var_1 = 976f;
    let var_2 = global0.c;
    return vec3<bool>(all(!(!(!global0.b))), !(false || global0.b.x), select(true, var_0.c, global0.d.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_1 {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.c.a.x, 1301f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.c.a.ww - global0.a)))) * global0.c.a.zy), select(!arg_3.yy, !global0.b, arg_2.b), func_4(arg_2, Struct_3((arg_0.x ^ 2147483647i) << (1u % 32u), func_2(vec3<i32>(u_input.b.x, -2147483647i, 0i), Struct_2(global0.c.a.wx, arg_3.xz, global0.c, arg_1.xy), -vec2<i32>(global0.c.b, arg_2.a)).zz, vec3<bool>(arg_3.x, !arg_2.c.x, func_4(arg_2, Struct_3(arg_0.x, vec2<bool>(global0.d.x, false), vec3<bool>(false, false, true)), global0.c.d, Struct_2(global0.c.a.ww, vec2<bool>(true, global0.d.x), global0.c, arg_3.yx)).c)), firstTrailingBit(func_4(arg_2, global2[_wgslsmith_index_u32(28797u, 16u)], global0.c.d, Struct_2(global0.a, vec2<bool>(true, true), global0.c, global0.d)).d & global0.c.d), Struct_2(global0.a, func_1().zz, func_4(arg_2, arg_2, vec4<i32>(global0.c.d.x, u_input.b.x, arg_0.x, u_input.b.x), Struct_2(global0.a, global0.d, Struct_1(vec4<f32>(-191f, global0.c.a.x, global0.a.x, global0.c.a.x), global0.c.d.x, true, vec4<i32>(2147483647i, arg_2.a, 1i, -2147483647i)), global0.b)), arg_3.yz)), select(!vec2<bool>(func_4(Struct_3(2147483647i, arg_1.zy, vec3<bool>(arg_2.b.x, true, global1[_wgslsmith_index_u32(41073u, 24u)])), Struct_3(u_input.b.x, arg_2.c.zy, arg_3), vec4<i32>(global0.c.d.x, arg_2.a, arg_0.x, arg_0.x), Struct_2(vec2<f32>(1187f, -1488f), arg_2.c.zy, global0.c, arg_3.zz)).c, select(true, global0.c.c, global1[_wgslsmith_index_u32(u_input.a.x, 24u)])), arg_1.yy, global0.b.x));
    var var_0 = Struct_3(global0.c.b, !arg_3.yy, func_1());
    return func_4(global2[_wgslsmith_index_u32(75548u, 16u)], global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global0.c.d, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.a * vec2<f32>(716f, global0.a.x))))), func_1().xx, global0.c, vec2<bool>(func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-15843i, 4096i, 11263i), vec3<i32>(u_input.b.x, -2147483647i, arg_2.a)), Struct_2(vec2<f32>(global0.a.x, 1606f), arg_3.yz, Struct_1(global0.c.a, 2147483647i, false, global0.c.d), arg_1.xx), min(u_input.b, vec2<i32>(16508i, var_0.a))).x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 16>();
    global1 = array<bool, 24>();
    var var_0 = global0.c.a.xx;
    var var_1 = ~(-19587i);
    var var_2 = func_5(abs(~(vec3<i32>(1i, u_input.b.x, global0.c.b) & (global0.c.d.xwy & global0.c.d.xxw))), !(!select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), !vec3<bool>(false, global0.b.x, global0.b.x), !vec3<bool>(global0.c.c, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global0.b.x))), Struct_3(-1i | ~u_input.b.x, !vec2<bool>(global0.b.x, select(global1[_wgslsmith_index_u32(0u, 24u)], false, false)), !(!func_1())), select(select(!vec3<bool>(true, global0.c.c, true), vec3<bool>(true, func_2(global0.c.d.wyw, Struct_2(global0.c.a.zw, global0.d, global0.c, global0.b), vec2<i32>(u_input.b.x, u_input.b.x)).x, global0.b.x), vec3<bool>(true, any(vec3<bool>(false, false, true)), global0.d.x)), select(vec3<bool>(true, true & global1[_wgslsmith_index_u32(4294967295u, 24u)], any(vec3<bool>(global0.c.c, true, true))), func_2(-vec3<i32>(-64641i, 2147483647i, 1i), Struct_2(vec2<f32>(1298f, 169f), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 24u)]), Struct_1(global0.c.a, 2147483647i, true, global0.c.d), vec2<bool>(global0.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 24u)])), select(u_input.b, u_input.b, true)), vec3<bool>(global0.c.c, false && global0.b.x, true)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~85933u, max(countOneBits(0u), firstLeadingBit(u_input.a.x)), 0u), 24u)]));
    let var_3 = Struct_2(vec2<f32>(2222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c.a.x)))), func_1().xz, global0.c, vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.d.x ^ func_5(-vec3<i32>(-24342i, u_input.b.x, 22599i), vec3<bool>(select(false, var_2.c, true), func_3(false, 1420f, var_3.c.d.zx, Struct_1(vec4<f32>(-774f, -1258f, 1154f, var_2.a.x), -39020i, false, var_3.c.d)).x, true), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(30264u, 72721u), max(u_input.a.x, u_input.a.x)), 16u)], vec3<bool>(true, func_4(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global2[_wgslsmith_index_u32(74266u, 16u)], global0.c.d, var_3).c, false)).b, countOneBits(u_input.b));
}

