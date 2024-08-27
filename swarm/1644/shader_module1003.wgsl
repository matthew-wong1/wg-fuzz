struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(206f), false, 19166i);

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false));

var<private> global3: array<bool, 18> = array<bool, 18>(false, true, true, false, false, true, true, false, true, false, false, false, false, false, false, true, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x << (134936u % 32u), ~4294967295u, ~u_input.d.x) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d.x, 92450u, u_input.d.x, u_input.e), vec4<u32>(22168u, 4294967295u, 4294967295u, u_input.e), global0.b), ~vec4<u32>(u_input.d.x, u_input.e, u_input.e, u_input.e)), u_input.d.x, ~u_input.d.x, max(~u_input.d.x, reverseBits(u_input.e))), ~(select(~vec4<u32>(u_input.e, 4294967295u, 0u, u_input.d.x), reverseBits(vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.e)), false) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u), vec4<u32>(24817u, u_input.e, 0u, 70824u))));
    let var_1 = Struct_2(arg_0.a, global0.a, vec4<bool>(_wgslsmith_f_op_f32(floor(arg_2.x)) >= -544f, true, all(select(!vec2<bool>(arg_0.b, global0.b), vec2<bool>(true, true), true)), (global3[_wgslsmith_index_u32(max(var_0.x, u_input.e), 18u)] & true) & select(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 45922u), 18u)], 41825i >= arg_3.a.x, any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 18u)], global3[_wgslsmith_index_u32(87957u, 18u)])))), _wgslsmith_f_op_f32(min(1009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-751f + global0.a.a))))), ~(~26931u));
    var var_2 = arg_3;
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_div_i32(abs(global1.x), 41207i), 2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.c.xzz, vec3<i32>(19474i, global0.c, -64801i) | u_input.c.xzw), ~(-u_input.c.zyz)), u_input.b), vec4<i32>(~(-arg_0.c), -36154i, _wgslsmith_mult_i32(firstTrailingBit(~arg_3.a.x), -14952i), global1.x));
    let var_4 = arg_0.b != all(var_1.c);
    return vec3<bool>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.x, var_0.x)), var_0.zw) <= min(firstTrailingBit(u_input.d.x), ~abs(36271u)), max(9950u, 9656u) != u_input.e, any(vec4<bool>(select(true, !var_1.c.x, arg_0.b), true, false, true)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>) -> vec3<f32> {
    global2 = array<vec4<bool>, 30>();
    var var_0 = Struct_3(_wgslsmith_mod_vec2_i32(~u_input.c.zw & (vec2<i32>(-17251i, global0.c) ^ vec2<i32>(35062i, 0i)), ~(-min(u_input.c.wz, u_input.c.wz))));
    let var_1 = select(select(func_3(Struct_5(Struct_1(1661f), true, _wgslsmith_sub_i32(u_input.c.x, global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, arg_1) + _wgslsmith_f_op_vec4_f32(trunc(arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-511f, -100f)), Struct_3(vec2<i32>(global1.x, 2147483647i) >> (vec2<u32>(95359u, u_input.d.x) % vec2<u32>(32u)))), select(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 18u)], false, global3[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<bool>(false, global0.b, u_input.d.x != 0u), all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.e, 18u)], true))), false), select(vec3<bool>((false && global0.b) && true, false, global0.b), !(!func_3(Struct_5(global0.a, global3[_wgslsmith_index_u32(0u, 18u)], global0.c), vec4<f32>(arg_1.x, arg_0.x, 244f, -1003f), vec2<f32>(922f, -778f), Struct_3(vec2<i32>(u_input.a, global0.c)))), vec3<bool>(select(!global0.b, global3[_wgslsmith_index_u32(u_input.d.x, 18u)], !global3[_wgslsmith_index_u32(u_input.e, 18u)]), true & !global3[_wgslsmith_index_u32(u_input.d.x, 18u)], all(select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(1u, 18u)], global0.b), vec4<bool>(global0.b, global0.b, global0.b, global3[_wgslsmith_index_u32(u_input.d.x, 18u)]), vec4<bool>(global3[_wgslsmith_index_u32(123187u, 18u)], false, false, global0.b))))), false);
    let var_2 = var_1.x;
    global0 = Struct_5(Struct_1(arg_1.x), false, -_wgslsmith_dot_vec3_i32(u_input.c.xyy << (vec3<u32>(4294967295u, 109278u, u_input.d.x) % vec3<u32>(32u)), firstLeadingBit(u_input.c.wwz)) << (u_input.e % 32u));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f)), _wgslsmith_div_f32(global0.a.a, 1082f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global0.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -1271f), true))), vec3<f32>(159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, 832f)) - -1042f), _wgslsmith_f_op_f32(-arg_0.x)), !var_1))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = u_input.c.x & -14561i;
    let var_1 = !any(!func_3(Struct_5(global0.a, true, global0.c), _wgslsmith_div_vec4_f32(vec4<f32>(132f, 1901f, arg_1.x, 1000f), vec4<f32>(-259f, -1000f, -355f, 1366f)), arg_1, Struct_3(vec2<i32>(global1.x, 2147483647i))).xx);
    global2 = array<vec4<bool>, 30>();
    let var_2 = vec2<bool>(u_input.e < 6728u, var_1);
    var var_3 = global0.a;
    return Struct_3(vec2<i32>(firstTrailingBit(-global0.c >> (_wgslsmith_add_u32(u_input.d.x, u_input.e) % 32u)), ~(~min(u_input.c.x, u_input.a))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    global2 = array<vec4<bool>, 30>();
    var var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 1i, global1.x, 0i), u_input.c), max(global1.x, u_input.a)), global0.c), 2147483647i), u_input.c.x, global0.c | ~(~global0.c));
    var var_1 = vec2<bool>(true, false);
    global3 = array<bool, 18>();
    var_0 = ~u_input.c.ywy;
    return func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 540f, global0.a.a)) + _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a, global0.a.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, 1269f, 1039f, global0.a.a) + vec4<f32>(-198f, global0.a.a, 1085f, global0.a.a))))) * vec3<f32>(517f, 309f, global0.a.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a, global0.a.a)), vec2<f32>(566f, global0.a.a))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(822f, global0.a.a)))))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_4) -> u32 {
    global0 = Struct_5(global0.a, arg_1, -13384i);
    var var_0 = Struct_4(vec2<bool>(global3[_wgslsmith_index_u32(select(u_input.e, 3513u, all(select(arg_2.c.c.xxz, arg_2.c.c.zzx, true))), 18u)], _wgslsmith_f_op_f32(-global0.a.a) != 837f), Struct_2(arg_2.c.b, Struct_1(global0.a.a), arg_2.b.c, _wgslsmith_f_op_f32(-arg_2.d.a), ~30378u), Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(2295f)), -1374f))), arg_2.d, vec4<bool>(all(!arg_2.b.c.xww), any(global2[_wgslsmith_index_u32(arg_2.c.e, 30u)]), true, true), -978f, 0u), arg_2.b.b);
    var var_1 = Struct_4(arg_2.a, Struct_2(arg_2.d, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(global0.a.a * -1349f)))), select(vec4<bool>(any(var_0.a), arg_2.a.x, global0.b, any(vec2<bool>(arg_2.c.c.x, false))), arg_2.b.c, vec4<bool>(!global0.b, all(arg_2.b.c.xzx), false, all(var_0.c.c))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.d - -1638f) - _wgslsmith_f_op_f32(230f - var_0.c.a.a)))), _wgslsmith_dot_vec3_u32(u_input.d, select(vec3<u32>(1u, 0u, u_input.d.x), vec3<u32>(61214u, arg_2.c.e, 43941u), vec3<bool>(arg_1, arg_2.c.c.x, var_0.b.c.x))) >> (~53779u % 32u)), Struct_2(global0.a, var_0.b.a, select(vec4<bool>(true, false, func_3(Struct_5(arg_2.c.b, true, -1684i), vec4<f32>(arg_2.b.a.a, global0.a.a, var_0.c.d, var_0.c.b.a), vec2<f32>(-1269f, 1626f), Struct_3(arg_0.a)).x, u_input.a >= -1i), !(!arg_2.b.c), var_0.c.c.x), 632f, ~_wgslsmith_div_u32(20792u, reverseBits(arg_2.c.e))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a - -383f)) - _wgslsmith_f_op_f32(global0.a.a * _wgslsmith_f_op_f32(ceil(-1383f))))));
    var_0 = arg_2;
    global3 = array<bool, 18>();
    return var_1.c.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = Struct_3(-u_input.c.xw);
    global2 = array<vec4<bool>, 30>();
    global1 = var_1.a;
    let var_2 = -1286f;
    global2 = array<vec4<bool>, 30>();
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(func_5(func_1(!global0.b), global0.b, Struct_4(!vec2<bool>(global0.b, false), Struct_2(global0.a, global0.a, vec4<bool>(true, global0.b, global0.b, global3[_wgslsmith_index_u32(12866u, 18u)]), var_2, 0u), Struct_2(global0.a, global0.a, vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.e, 18u)], global0.b, global3[_wgslsmith_index_u32(1u, 18u)]), var_2, 39867u), global0.a)), 0u, firstTrailingBit(0u)), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.e, u_input.d.x, abs(u_input.e)), select(reverseBits(~vec3<i32>(-37880i, 41353i, -2147483647i)), -(~u_input.c.yyy), true), ~firstTrailingBit(vec3<i32>(global0.c, global0.c, 1i) ^ ~u_input.c.www));
}

