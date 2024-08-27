struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: f32 = -1000f;

var<private> global2: array<Struct_2, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global2 = array<Struct_2, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 14u)] - global0[_wgslsmith_index_u32(u_input.a, 14u)]))), 202f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(128f + global0[_wgslsmith_index_u32(u_input.a, 14u)]) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 14u)] * 282f)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(82462u, 14u)] * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 91999u), 14u)])));
    let var_1 = (max((vec2<i32>(-1i, u_input.b) >> (vec2<u32>(15564u, 0u) % vec2<u32>(32u))) & min(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, 1i)), ~select(vec2<i32>(39226i, 79113i), vec2<i32>(u_input.b, 2147483647i), vec2<bool>(false, false))) << (~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(1u, u_input.a)), ~vec2<u32>(1u, u_input.a)) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b) ^ _wgslsmith_clamp_vec2_i32(select(vec2<i32>(14651i, u_input.b), vec2<i32>(u_input.b, 60127i), vec2<bool>(true, true)), vec2<i32>(u_input.b, 2147483647i) | vec2<i32>(-6850i, 33908i), vec2<i32>(u_input.b, -23713i)), abs(vec2<i32>(3001i, 2147483647i)) >> ((~vec2<u32>(u_input.a, u_input.a) & ~vec2<u32>(30560u, u_input.a)) % vec2<u32>(32u)));
    var var_2 = (reverseBits(vec4<u32>(u_input.a, 1u, 1u, 4294967295u)) << (_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 5517u), vec4<u32>(0u, u_input.a, 69053u, 10670u)), ~min(vec4<u32>(50598u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, 26179u, 33574u, 1u)), _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a, 41400u, 49250u, 4294967295u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), vec4<u32>(1u, 0u, 13038u, 38568u))) % vec4<u32>(32u))) & select(~vec4<u32>(1u, u_input.a, 0u, u_input.a) >> (_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), false), reverseBits(vec4<u32>(u_input.a, 33720u, 4294967295u, u_input.a))) % vec4<u32>(32u)), ~vec4<u32>(0u, u_input.a, 0u, u_input.a), true);
    return 1i;
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(u_input.b), u_input.b, 20287i), vec3<i32>(u_input.b, u_input.b, 0i));
    var var_1 = !(!(!(u_input.b < -u_input.b)));
    global2 = array<Struct_2, 30>();
    var_0 = -func_3();
    let var_2 = Struct_1(countOneBits(min(firstTrailingBit(u_input.a), u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 14u)] - -767f), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(0u, u_input.a)), 14u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~4294967295u), 14u)])), -_wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, -41087i, 0i) | vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(u_input.a, 12965u, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(u_input.b, 1i, -21613i) >> (~vec3<u32>(4294967295u, 4294967295u, u_input.a) % vec3<u32>(32u))));
    return select(~var_2.c, var_2.c, any(vec2<bool>(!(4294967295u <= var_2.a), all(vec3<bool>(true, false, false)))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_u32(u_input.a, 70899u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1441f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 14u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 14u)]), 967f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-611f, global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(34673u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), vec4<f32>(-334f, 186f, global0[_wgslsmith_index_u32(18381u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]), false))))), -_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, -9935i, u_input.b), func_2()));
    let var_1 = Struct_3(select(!vec2<bool>(any(vec2<bool>(false, true)), true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, false), any(vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), all(vec3<bool>(true, true, true))), !vec3<bool>(false, true, all(vec4<bool>(false, false, true, false))), global2[_wgslsmith_index_u32(var_0.a, 30u)], Struct_1(abs(~u_input.a) << (9958u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(var_0.b)), var_0.b))), ~_wgslsmith_add_vec3_i32(var_0.c, vec3<i32>(-17807i, var_0.c.x, u_input.b))), all(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, true, true))));
    global0 = array<f32, 14>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.wyz)));
    let var_3 = vec3<u32>(~(var_1.c.a.a & ~countOneBits(var_1.c.b.a)), ~_wgslsmith_sub_u32(u_input.a, ~u_input.a), u_input.a);
    return var_0;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global0 = array<f32, 14>();
    let var_0 = max(4294967295u, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_sub_u32(arg_2.a.a, arg_1.a), 0u));
    return 35807u;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = true;
    var var_1 = arg_0.a.c.x >> (max(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4087u, 39096u, 82639u), vec3<u32>(u_input.a, u_input.a, 1u)), vec3<u32>(1u, arg_0.b.a, 0u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 37474u, 60102u), vec3<u32>(u_input.a, 33117u, u_input.a))), u_input.a) % 32u);
    let var_2 = !vec4<bool>(all(vec2<bool>(true, all(vec3<bool>(false, false, true)))), _wgslsmith_div_f32(726f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(18655u, 14u)] + arg_0.c.x)) < -936f, false, select(!(arg_0.a.a < arg_0.a.a), true, true));
    var_0 = var_2.x;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.a.b.x, -952f, true)), _wgslsmith_f_op_f32(arg_0.a.b.x - arg_0.a.b.x)) * arg_0.b.b.x)));
    return Struct_2(Struct_1(66893u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(72310u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], arg_0.c.x, -405f) + vec4<f32>(713f, -1112f, -1261f, -1055f))))), vec3<i32>(-1i, 2147483647i, func_1().c.x)), Struct_1(arg_0.a.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(arg_0.b.a, 14u)], arg_0.b.b.x, 496f, -1066f))))))), ~(vec3<i32>(arg_0.a.c.x, arg_0.b.c.x, -3237i) | vec3<i32>(arg_0.a.c.x, arg_0.b.c.x, 6924i))), _wgslsmith_f_op_vec3_f32(min(arg_0.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2857f, -761f, -1932f), _wgslsmith_f_op_vec3_f32(arg_0.c + arg_0.b.b.zxy))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global2[_wgslsmith_index_u32(~func_4(13630u, func_1(), Struct_2(Struct_1(1u, vec4<f32>(global0[_wgslsmith_index_u32(1u, 14u)], -1627f, global0[_wgslsmith_index_u32(u_input.a, 14u)], -216f), vec3<i32>(u_input.b, 2147483647i, 1i)), Struct_1(16034u, vec4<f32>(-1000f, 1182f, global0[_wgslsmith_index_u32(u_input.a, 14u)], 1009f), vec3<i32>(-20665i, u_input.b, 16329i)), vec3<f32>(-2687f, global0[_wgslsmith_index_u32(u_input.a, 14u)], 718f))) & 53299u, 30u)]);
    var var_1 = abs(vec2<i32>(u_input.b, _wgslsmith_add_i32(-max(var_0.b.c.x, u_input.b), 971i ^ func_1().c.x)));
    var_1 = vec2<i32>(-58513i, ~920i << (~_wgslsmith_clamp_u32(func_1().a, ~4294967295u, var_0.b.a) % 32u));
    var var_2 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(func_1().b + _wgslsmith_f_op_vec4_f32(var_0.b.b * vec4<f32>(func_1().b.x, 2374f, var_0.b.b.x, _wgslsmith_f_op_f32(-var_0.b.b.x)))), ~_wgslsmith_clamp_vec3_i32(var_0.a.c, vec3<i32>(var_1.x, var_0.b.c.x, var_0.a.c.x), -_wgslsmith_add_vec3_i32(var_0.b.c, var_0.b.c)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c.x - global0[_wgslsmith_index_u32(func_5(global2[_wgslsmith_index_u32(var_0.a.a, 30u)]).b.a, 14u)]))), _wgslsmith_f_op_f32(func_1().b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))));
    global1 = -947f;
    let var_4 = _wgslsmith_mult_u32(var_2.a, 1u);
    let var_5 = func_5(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.b, vec2<i32>(~(-36072i), u_input.b), (~var_2.c & var_2.c) << (~vec3<u32>(var_0.a.a, 1u, abs(21764u)) % vec3<u32>(32u)), ~var_5.a.c.zz, var_3.x);
}

