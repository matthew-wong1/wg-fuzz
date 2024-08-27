struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, false, true, true, true, false, true, false, true, false, true, true, true, true);

var<private> global1: Struct_4;

var<private> global2: vec4<i32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(-676f, -29591i, vec2<u32>(1u, 4294967295u), i32(-2147483648)), Struct_1(874f, i32(-2147483648), vec2<u32>(12182u, 40642u), i32(-2147483648)), 4294967295u, 67755u);

var<private> global4: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(1645f, -1i, vec2<u32>(2151u, 16273u), -25763i), Struct_1(1428f, -40550i, vec2<u32>(0u, 4294967295u), -41036i), vec2<f32>(-184f, 376f)), Struct_3(Struct_1(1586f, -1i, vec2<u32>(4294967295u, 0u), -16009i), Struct_1(-1000f, -6508i, vec2<u32>(23522u, 0u), -47259i), vec2<f32>(-568f, 1323f)), Struct_3(Struct_1(1571f, -1i, vec2<u32>(9414u, 5643u), 17477i), Struct_1(1168f, -38791i, vec2<u32>(1u, 4294967295u), 1i), vec2<f32>(-182f, 883f)), Struct_3(Struct_1(-1075f, -60655i, vec2<u32>(48956u, 0u), -34787i), Struct_1(605f, 0i, vec2<u32>(4294967295u, 50703u), 26076i), vec2<f32>(1466f, -1152f)), Struct_3(Struct_1(-1847f, i32(-2147483648), vec2<u32>(4294967295u, 0u), 0i), Struct_1(-244f, i32(-2147483648), vec2<u32>(0u, 4294967295u), -1i), vec2<f32>(2006f, 570f)), Struct_3(Struct_1(1785f, 1i, vec2<u32>(4294967295u, 1u), 62424i), Struct_1(577f, 22131i, vec2<u32>(58985u, 0u), 28102i), vec2<f32>(545f, 798f)), Struct_3(Struct_1(606f, -9834i, vec2<u32>(6301u, 11266u), 2147483647i), Struct_1(1665f, i32(-2147483648), vec2<u32>(34713u, 4294967295u), -6855i), vec2<f32>(1019f, -611f)), Struct_3(Struct_1(-437f, 2147483647i, vec2<u32>(4294967295u, 23161u), 0i), Struct_1(-887f, -66859i, vec2<u32>(72775u, 0u), 20125i), vec2<f32>(-671f, -225f)), Struct_3(Struct_1(-731f, 0i, vec2<u32>(0u, 4294967295u), 7618i), Struct_1(-337f, 0i, vec2<u32>(533u, 4294967295u), 60220i), vec2<f32>(-1279f, -996f)), Struct_3(Struct_1(797f, 9652i, vec2<u32>(45998u, 4294967295u), 18181i), Struct_1(621f, 2147483647i, vec2<u32>(38474u, 0u), 8919i), vec2<f32>(-447f, -614f)));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32) -> f32 {
    return 1173f;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_4) -> vec3<f32> {
    var var_0 = _wgslsmith_sub_vec2_i32(global2.xw, countOneBits(~vec2<i32>(arg_0.b, firstTrailingBit(-2147483647i))));
    global3 = global1.b;
    let var_1 = any(arg_1.zyx);
    global1 = arg_2;
    global3 = global1.b;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c * arg_3.c) + _wgslsmith_f_op_vec3_f32(step(arg_2.c, arg_3.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-743f, 286f, 740f)))))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = 13225u;
    global4 = array<Struct_3, 10>();
    global3 = global1.b;
    global1 = Struct_4(-2147483647i, Struct_2(Struct_1(_wgslsmith_f_op_f32(303f * arg_1.x), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.b.d, global2.x), vec2<i32>(u_input.b, global1.e.b.d))), _wgslsmith_clamp_vec2_u32(global1.e.a.c, vec2<u32>(4294967295u, arg_2.e.a.c.x), u_input.a), -15968i | (u_input.b >> (4294967295u % 32u))), Struct_1(_wgslsmith_f_op_f32(func_2(abs(global1.a))), global1.a, global3.a.c, global1.d.x), 1u, global1.e.b.c.x), arg_2.c, ~_wgslsmith_div_vec2_i32(select(min(global1.d, u_input.c), reverseBits(global1.d), vec2<bool>(true, true)), vec2<i32>(u_input.c.x & 10911i, ~global3.b.b)), arg_2.e);
    let var_1 = vec4<bool>(true, !all(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 14u)], true)) & all(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)), arg_0)), _wgslsmith_f_op_f32(-global3.a.a) < _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_f32(arg_2.c.x + arg_2.b.a.a), -global2.x, vec2<u32>(var_0, 0u), _wgslsmith_sub_i32(global2.x, arg_2.b.a.b)), vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], all(vec2<bool>(arg_0, false)), false, arg_2.a >= global2.x), arg_2, arg_2)).x, all(vec3<bool>(true, global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 14u)], arg_0)));
    return arg_1;
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-221f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global1.e.a.a, 245f)))), global3.a.a)), -2582f) - global1.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(all(vec2<bool>(false, global0[_wgslsmith_index_u32(global3.a.c.x, 14u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(648f, var_0.x, 1000f, global1.e.b.a))), Struct_4(_wgslsmith_dot_vec3_i32(global2.xyy, vec3<i32>(global2.x, 24117i, global2.x)), Struct_2(Struct_1(-550f, global3.b.d, vec2<u32>(u_input.a.x, u_input.a.x), -2147483647i), global1.e.b, u_input.a.x, 4494u), _wgslsmith_f_op_vec3_f32(func_3(global3.b, vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(global3.d, 14u)]), Struct_4(-35268i, Struct_2(global1.b.b, Struct_1(global3.b.a, global1.b.b.d, global1.b.b.c, -1i), global3.d, 19615u), global1.c, global2.zz, global1.e), Struct_4(18670i, Struct_2(Struct_1(global1.b.a.a, 0i, vec2<u32>(global1.b.a.c.x, 1855u), global2.x), Struct_1(-2155f, u_input.b, global3.a.c, 11123i), 35809u, global1.b.b.c.x), global1.c, global2.wz, Struct_3(Struct_1(global3.b.a, 21438i, global3.b.c, 4167i), Struct_1(-471f, 0i, vec2<u32>(global1.b.b.c.x, global3.b.c.x), global2.x), global1.e.c)))), ~vec2<i32>(-36142i, global1.d.x), Struct_3(Struct_1(global3.b.a, 26671i, vec2<u32>(u_input.a.x, global1.e.b.c.x), global2.x), global1.b.a, vec2<f32>(global3.a.a, global3.a.a))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(638f, global3.b.a, global3.a.a, 1000f), vec4<f32>(364f, -524f, global1.c.x, global3.a.a)))), vec4<f32>(_wgslsmith_f_op_f32(global3.b.a * global3.b.a), _wgslsmith_f_op_f32(-1617f * 377f), _wgslsmith_f_op_f32(950f - -302f), global3.b.a), !(!global0[_wgslsmith_index_u32(1u, 14u)]))))));
    global0 = array<bool, 14>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.a.a, _wgslsmith_f_op_f32(-1375f + -200f)))), _wgslsmith_f_op_vec4_f32(func_4(all(!(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.a.a, 407f, -2045f, global1.c.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(global3.a.a, -228f, 120f, 895f), vec4<f32>(global1.e.a.a, var_1.x, var_0.x, 485f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, -720f, -937f, global1.b.b.a))))), Struct_4(global3.b.b, Struct_2(Struct_1(-621f, 12776i, global1.e.b.c, -20135i), Struct_1(global3.a.a, -19256i, u_input.a, -56657i), _wgslsmith_add_u32(global3.c, global1.b.c), 1u), global1.c, vec2<i32>(global3.a.d, 4867i), global1.e))).x);
    var var_3 = countOneBits(u_input.c);
    return Struct_4(u_input.c.x, Struct_2(Struct_1(global3.b.a, -_wgslsmith_sub_i32(global2.x, u_input.c.x), ~global3.a.c, ~(2147483647i | global2.x)), global1.e.b, ~global3.c >> ((~u_input.a.x << (~global3.a.c.x % 32u)) % 32u), abs(1u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)), var_1.x, 483f), _wgslsmith_f_op_vec3_f32(select(var_1.wxx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, 1195f, global1.c.x)))), any(select(vec4<bool>(global0[_wgslsmith_index_u32(global3.a.c.x, 14u)], false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(global3.c, 14u)], true, true, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), true)))), !(u_input.c.x <= global2.x))), vec2<i32>(-76039i, firstLeadingBit(abs(_wgslsmith_mult_i32(-13475i, var_3.x)))), global1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~firstLeadingBit(~vec3<u32>(4294967295u, 36959u, u_input.a.x)), countOneBits(reverseBits(vec3<u32>(global1.b.a.c.x, 72621u, global1.b.b.c.x))) | (_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<u32>(global1.e.a.c.x, global3.c, 1505u)) ^ ~vec3<u32>(global1.b.a.c.x, u_input.a.x, 30096u))), reverseBits(~vec3<u32>(0u, 40563u, _wgslsmith_add_u32(1u, 1u))));
    global1 = func_1();
    var var_1 = func_1().e;
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(590f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.a.a)))), _wgslsmith_add_i32(~global1.e.b.d, u_input.c.x), vec2<u32>(~func_1().e.a.c.x, ~u_input.a.x ^ max(var_1.b.c.x, 25046u)), reverseBits(-_wgslsmith_add_i32(global3.b.b, -2147483647i))), func_1().b.a, vec2<f32>(global1.e.c.x, 294f));
    global1 = Struct_4(select(_wgslsmith_add_i32(u_input.c.x << (var_2.a.c.x % 32u), i32(-1i) * -2147483647i) >> (_wgslsmith_mod_u32(abs(4294967295u), var_2.b.c.x >> (1u % 32u)) % 32u), 32968i, global0[_wgslsmith_index_u32(0u, 14u)]), Struct_2(var_2.b, Struct_1(_wgslsmith_f_op_f32(-var_2.c.x), -_wgslsmith_add_i32(42614i, 18184i), max(~vec2<u32>(var_2.a.c.x, 0u), var_1.a.c), func_1().e.a.d), ~var_0, 1u), global1.c, vec2<i32>(1i, abs(-10332i)), global1.e);
    let var_3 = global4[_wgslsmith_index_u32(1u, 10u)];
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1.b.a, 493f)))) * global3.a.a) + _wgslsmith_f_op_f32(f32(-1f) * -566f)), var_2.a.d, _wgslsmith_add_vec2_u32(var_2.a.c, vec2<u32>(~var_3.b.c.x, u_input.a.x)), _wgslsmith_dot_vec2_i32(global2.xz, global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global3.a.a - _wgslsmith_f_op_f32(ceil(var_1.a.a))), ~(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_4.b, -2147483647i, 0i, global1.d.x), vec4<i32>(var_3.b.d, 2147483647i, global3.a.b, -418i), vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.c.x, 14u)], global0[_wgslsmith_index_u32(2700u, 14u)], true, false)), ~vec4<i32>(2147483647i, -1i, -1i, 23694i), ~vec4<i32>(-6050i, 0i, global2.x, var_2.b.b))), global2.xxy, u_input.a.x);
}

