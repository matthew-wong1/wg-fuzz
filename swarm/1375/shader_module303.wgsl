struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec4<i32>(-6142i, i32(-2147483648), 27877i, -1i), vec4<f32>(-1000f, -1381f, -1930f, 440f), -34197i, -621f);

var<private> global1: array<vec4<bool>, 5>;

var<private> global2: array<Struct_4, 9>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<i32>(1i, 23981i, 50620i, 2147483647i), vec4<f32>(1304f, 2321f, -2311f, -1535f), i32(-2147483648), -139f), Struct_1(vec3<bool>(false, false, false), vec4<i32>(10012i, 54805i, 1i, 0i), vec4<f32>(-1321f, -1233f, -1040f, 783f), i32(-2147483648), -1000f), vec4<i32>(-13988i, i32(-2147483648), 2147483647i, -27353i), vec2<u32>(122044u, 0u), vec4<i32>(-491i, -1i, 1i, 18097i));

var<private> global4: array<bool, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec4<i32> {
    global0 = Struct_1(!global3.b.a, ~(vec4<i32>(-1i) * -u_input.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 424f, -397f, -249f), vec4<f32>(global0.c.x, global3.b.e, 428f, 388f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.e, global3.b.c.x, 1481f, 1674f) + global0.c)))), _wgslsmith_f_op_vec4_f32(-global3.a.c)), global3.b.b.x, -474f);
    let var_0 = vec2<bool>(true, global0.a.x);
    global2 = array<Struct_4, 9>();
    global2 = array<Struct_4, 9>();
    global1 = array<vec4<bool>, 5>();
    return _wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(arg_1), -1289i | _wgslsmith_div_i32(-1i << (global3.d.x % 32u), u_input.a.x), 1i, -2147483647i), global3.c & vec4<i32>(14538i | _wgslsmith_mod_i32(1i, global3.e.x), ~arg_1, u_input.b.x, -2147483647i));
}

fn func_2() -> Struct_3 {
    global2 = array<Struct_4, 9>();
    var var_0 = max(~_wgslsmith_mod_vec3_u32(min(vec3<u32>(6628u, global3.d.x, 44768u), ~vec3<u32>(7326u, global3.d.x, global3.d.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(18875u, global3.d.x, 1u), countOneBits(vec3<u32>(global3.d.x, global3.d.x, global3.d.x)))), ~abs(vec3<u32>(global3.d.x, firstTrailingBit(global3.d.x), ~72099u)));
    let var_1 = global3.a;
    var var_2 = 41201u;
    let var_3 = vec3<u32>(~(~24497u), firstLeadingBit(979u), 64067u);
    return Struct_3(~(~(~vec4<u32>(1594u, global3.d.x, 25196u, 4294967295u))) >> (abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, var_3.x, 0u, var_0.x), vec4<u32>(4294967295u, var_3.x, var_0.x, 49381u))) % vec4<u32>(32u)), global3.b.c, global3.a, Struct_2(Struct_1(vec3<bool>(var_1.a.x, false, true), _wgslsmith_div_vec4_i32(func_3(false, global3.b.d), ~u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.e, 1843f, 552f, global0.c.x))) * _wgslsmith_f_op_vec4_f32(round(global0.c))), _wgslsmith_dot_vec4_i32(~vec4<i32>(global3.a.b.x, u_input.a.x, global3.c.x, 0i), select(vec4<i32>(var_1.b.x, global3.b.d, global3.a.b.x, 39674i), vec4<i32>(8847i, u_input.b.x, var_1.b.x, global0.d), vec4<bool>(global0.a.x, var_1.a.x, true, global4[_wgslsmith_index_u32(40204u, 15u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.c.x, 361f)), _wgslsmith_div_f32(-1000f, global3.a.c.x), true))), global3.a, vec4<i32>(_wgslsmith_mult_i32(-60118i, -global0.b.x), 0i ^ global0.d, ~(i32(-1i) * -513i), u_input.a.x), _wgslsmith_sub_vec2_u32(global3.d, _wgslsmith_mult_vec2_u32(~vec2<u32>(28830u, var_0.x), vec2<u32>(var_3.x, var_0.x))), select(global3.e, vec4<i32>(-1i, 10821i, 8843i, global0.d) & _wgslsmith_add_vec4_i32(var_1.b, global3.e), global1[_wgslsmith_index_u32(var_3.x, 5u)])));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5) -> Struct_5 {
    global0 = Struct_1(vec3<bool>(!arg_1.b.c.a.x, any(vec3<bool>(!global0.a.x, true, any(global3.b.a.xz))), ~_wgslsmith_add_u32(global3.d.x, 18566u) != 0u), -func_2().d.a.b, _wgslsmith_f_op_vec4_f32(-global3.a.c), ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.b.x, 19685i), ~0i), arg_1.b.d.a.c.x);
    let var_0 = _wgslsmith_mult_i32(u_input.a.x, global0.b.x);
    var var_1 = arg_1.d;
    var var_2 = arg_1;
    var var_3 = true;
    return Struct_5(vec4<i32>(~1i, -_wgslsmith_dot_vec4_i32(arg_1.c.d.e, arg_1.b.c.b) | -1i, global3.b.d, _wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.b.x, select(-2147483647i, 0i, false)), -8952i)), func_2(), arg_1.c, vec4<bool>(all(arg_1.c.c.a), !global3.b.a.x, select(!global0.a.x, !any(vec2<bool>(false, global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -239f) < func_2().c.c.x), global4[_wgslsmith_index_u32(~17655u >> (_wgslsmith_mult_u32(~15360u, func_2().d.d.x) % 32u), 15u)]));
}

fn func_5(arg_0: Struct_5) -> Struct_4 {
    let var_0 = all(global1[_wgslsmith_index_u32(65192u, 5u)]);
    global3 = arg_0.b.d;
    let var_1 = 2074f;
    var var_2 = ~(~vec4<i32>(-1i, -2300i, func_4(max(arg_0.c.d.d, global3.d), func_4(vec2<u32>(arg_0.b.d.d.x, arg_0.b.d.d.x), arg_0)).a.x, ~max(15790i, global0.d)));
    global4 = array<bool, 15>();
    return global2[_wgslsmith_index_u32(arg_0.b.d.d.x, 9u)];
}

fn func_1() -> vec2<i32> {
    global4 = array<bool, 15>();
    var var_0 = func_5(func_4(vec2<u32>(select(global3.d.x, 14025u, true), ~global3.d.x) ^ vec2<u32>(4294967295u, ~global3.d.x), Struct_5(abs(~vec4<i32>(8283i, global0.b.x, -1i, global0.d)), Struct_3(firstTrailingBit(vec4<u32>(global3.d.x, global3.d.x, global3.d.x, global3.d.x)), _wgslsmith_f_op_vec4_f32(-global3.a.c), global3.b, Struct_2(Struct_1(vec3<bool>(global3.a.a.x, false, global3.a.a.x), vec4<i32>(u_input.b.x, -29151i, global3.a.b.x, u_input.a.x), vec4<f32>(1480f, global0.e, 1182f, global3.b.c.x), global3.c.x, global3.b.e), Struct_1(global0.a, global3.a.b, vec4<f32>(-1417f, global0.e, -1083f, 336f), u_input.b.x, global0.e), global3.b.b, global3.d, vec4<i32>(global3.a.b.x, 2147483647i, 10776i, 1i))), func_2(), vec4<bool>(733f < global0.c.x, true, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global3.d.x, global3.d.x, 1u), vec4<u32>(1u, 7538u, global3.d.x, global3.d.x)), 15u)], global3.d.x == global3.d.x))));
    let var_1 = func_5(Struct_5(min(global3.e, vec4<i32>(2147483647i ^ global3.b.d, _wgslsmith_mod_i32(16214i, global0.d), 1i, ~global3.c.x)), func_4(select(select(var_0.b.d, global3.d, var_0.b.a.a.yz), ~var_0.b.d, all(vec2<bool>(true, true))), Struct_5(-vec4<i32>(-2147483647i, 0i, -4743i, u_input.a.x), var_0.a, var_0.a, global1[_wgslsmith_index_u32(~global3.d.x, 5u)])).c, func_2(), global1[_wgslsmith_index_u32(var_0.a.d.d.x, 5u)]));
    let var_2 = var_0.a.d.b.a.x;
    global2 = array<Struct_4, 9>();
    return global3.c.xw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    let var_1 = -vec3<i32>(u_input.b.x, global0.d, ~_wgslsmith_dot_vec2_i32(global0.b.xz & var_0.b.zz, func_1()));
    var var_2 = Struct_3(~reverseBits(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.d.x, global3.d.x, 49037u, global3.d.x), vec4<u32>(global3.d.x, global3.d.x, 0u, global3.d.x), vec4<u32>(42345u, 0u, global3.d.x, 0u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(sign(global0.e)), -1269f)), func_4(firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(38018u, 4294967295u), 1u)), func_4(~_wgslsmith_sub_vec2_u32(global3.d, global3.d), func_4(~global3.d, func_4(vec2<u32>(global3.d.x, 0u), Struct_5(vec4<i32>(u_input.a.x, global0.b.x, -14960i, 7573i), Struct_3(vec4<u32>(1u, 78412u, 0u, 1u), global0.c, global3.b, Struct_2(Struct_1(vec3<bool>(true, global3.b.a.x, false), global3.b.b, var_0.c, 9911i, var_0.e), global3.a, global3.a.b, global3.d, vec4<i32>(global0.b.x, 61154i, 2147483647i, -1i))), Struct_3(vec4<u32>(global3.d.x, 1u, 1u, 1u), global3.b.c, Struct_1(vec3<bool>(true, true, false), vec4<i32>(var_0.d, 1i, global3.e.x, global3.b.b.x), global0.c, global3.e.x, global3.b.c.x), Struct_2(global3.a, global3.a, vec4<i32>(0i, 1i, 12701i, 1i), vec2<u32>(global3.d.x, 30253u), vec4<i32>(10845i, -13420i, global0.d, 31472i))), vec4<bool>(var_0.a.x, false, global3.b.a.x, true)))))).b.d.a, func_5(Struct_5(abs(vec4<i32>(global0.b.x, -1i, global3.b.b.x, -1i)), func_4(func_2().a.yw, Struct_5(global0.b, Struct_3(vec4<u32>(global3.d.x, 23753u, global3.d.x, 0u), vec4<f32>(-650f, global3.b.e, -665f, var_0.c.x), Struct_1(global0.a, u_input.b, var_0.c, u_input.b.x, 1000f), Struct_2(global3.a, Struct_1(global3.b.a, global3.b.b, global3.b.c, global3.e.x, global3.b.e), global0.b, global3.d, global3.c)), Struct_3(vec4<u32>(global3.d.x, global3.d.x, global3.d.x, global3.d.x), vec4<f32>(-471f, 635f, global3.b.c.x, global0.e), Struct_1(vec3<bool>(var_0.a.x, false, true), global3.b.b, vec4<f32>(global0.e, -424f, 1255f, 307f), -2147483647i, var_0.c.x), Struct_2(Struct_1(global3.b.a, var_0.b, var_0.c, u_input.a.x, var_0.e), Struct_1(global3.b.a, vec4<i32>(10664i, u_input.b.x, var_0.b.x, -27785i), vec4<f32>(var_0.c.x, global0.e, var_0.e, global0.e), u_input.a.x, global3.a.c.x), vec4<i32>(var_1.x, global3.e.x, var_0.b.x, 2147483647i), vec2<u32>(0u, global3.d.x), global0.b)), global1[_wgslsmith_index_u32(1u, 5u)])).b, Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global3.d.x, 0u, 5375u), vec4<u32>(39780u, global3.d.x, 4294967295u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.e, 2394f, 385f, -490f)), func_4(vec2<u32>(0u, 0u), Struct_5(vec4<i32>(1i, 1i, 36400i, global3.b.b.x), Struct_3(vec4<u32>(1u, global3.d.x, global3.d.x, 33457u), vec4<f32>(-818f, 279f, global0.c.x, 766f), Struct_1(vec3<bool>(false, true, false), global0.b, vec4<f32>(global0.c.x, -831f, global0.c.x, 1056f), 12387i, global3.a.c.x), Struct_2(Struct_1(global3.b.a, global0.b, vec4<f32>(global3.b.c.x, -946f, global0.c.x, var_0.e), -2147483647i, 1420f), Struct_1(global0.a, global0.b, vec4<f32>(var_0.c.x, -953f, var_0.e, 946f), -1i, global0.e), global0.b, global3.d, u_input.b)), Struct_3(vec4<u32>(global3.d.x, 69436u, 32390u, 48903u), vec4<f32>(var_0.c.x, 426f, -601f, global3.a.e), Struct_1(global3.a.a, vec4<i32>(33616i, var_1.x, global3.e.x, -49627i), var_0.c, var_0.d, 721f), Struct_2(Struct_1(vec3<bool>(var_0.a.x, true, false), vec4<i32>(global3.c.x, 1i, 2147483647i, -11371i), vec4<f32>(global0.c.x, var_0.e, global3.b.e, -1000f), 11904i, -169f), global3.a, vec4<i32>(28255i, -32582i, -2147483647i, 96682i), global3.d, vec4<i32>(42692i, global3.b.b.x, global0.d, 1i))), global1[_wgslsmith_index_u32(1u, 5u)])).c.d.a, func_2().d), vec4<bool>(-1281f >= global3.a.c.x, all(vec4<bool>(global0.a.x, true, true, global0.a.x)), true, func_2().d.b.a.x))).b);
    var var_3 = func_4(var_2.d.d, func_4(func_5(func_4(firstLeadingBit(vec2<u32>(global3.d.x, var_2.a.x)), func_4(vec2<u32>(global3.d.x, 57166u), Struct_5(vec4<i32>(-2101i, u_input.b.x, -2147483647i, u_input.a.x), Struct_3(var_2.a, vec4<f32>(var_0.c.x, global3.b.c.x, 1672f, -1000f), Struct_1(vec3<bool>(false, global0.a.x, var_0.a.x), global3.c, global3.a.c, 1i, var_2.b.x), var_2.d), Struct_3(vec4<u32>(var_2.a.x, 4294967295u, 4294967295u, 0u), vec4<f32>(-691f, 1340f, -712f, var_0.e), Struct_1(global0.a, global0.b, vec4<f32>(global0.e, 1645f, global0.c.x, var_0.c.x), var_0.b.x, 347f), Struct_2(var_2.d.a, Struct_1(global0.a, vec4<i32>(global3.b.b.x, global3.b.d, 33061i, 27498i), global0.c, -23765i, -366f), vec4<i32>(-373i, 35932i, var_0.d, global3.c.x), vec2<u32>(1u, global3.d.x), global0.b)), vec4<bool>(var_0.a.x, var_2.d.b.a.x, false, global3.b.a.x))))).a.a.yw, Struct_5(func_3(var_0.d < -99781i, abs(var_2.d.e.x)), func_4(~vec2<u32>(1u, 51388u), Struct_5(vec4<i32>(-1i, u_input.a.x, 1i, -42331i), Struct_3(vec4<u32>(22030u, global3.d.x, 97650u, var_2.d.d.x), vec4<f32>(613f, global3.a.c.x, global0.c.x, -366f), global3.b, var_2.d), Struct_3(vec4<u32>(global3.d.x, 37410u, var_2.a.x, global3.d.x), vec4<f32>(var_2.b.x, global0.e, 1341f, -1718f), var_2.d.b, Struct_2(global3.b, Struct_1(global3.a.a, vec4<i32>(var_1.x, -2147483647i, 102i, var_2.c.b.x), vec4<f32>(var_2.d.b.e, -179f, global0.e, 1260f), global0.d, 1025f), var_2.d.e, var_2.a.yz, global0.b)), global1[_wgslsmith_index_u32(var_2.a.x, 5u)])).c, func_4(var_2.a.xy, Struct_5(vec4<i32>(var_0.b.x, var_1.x, 2147483647i, var_1.x), Struct_3(var_2.a, vec4<f32>(162f, -419f, -210f, -1090f), Struct_1(vec3<bool>(var_0.a.x, false, global3.a.a.x), u_input.b, vec4<f32>(var_2.b.x, 2351f, var_2.d.b.e, 207f), 17101i, 779f), Struct_2(Struct_1(var_0.a, var_2.d.e, var_0.c, -1673i, -1347f), global3.b, vec4<i32>(var_1.x, var_1.x, var_2.d.a.d, 36585i), var_2.a.ww, global3.b.b)), Struct_3(vec4<u32>(1u, 78535u, 1u, var_2.a.x), vec4<f32>(global0.c.x, global3.b.c.x, var_0.e, -1195f), Struct_1(var_0.a, vec4<i32>(-1i, 42894i, var_0.b.x, var_1.x), vec4<f32>(var_0.c.x, global0.e, -1000f, var_2.d.b.c.x), 2147483647i, -264f), var_2.d), global1[_wgslsmith_index_u32(0u, 5u)])).b, global1[_wgslsmith_index_u32(global3.d.x, 5u)]))).c.c;
    global1 = array<vec4<bool>, 5>();
    let var_4 = min(global3.d >> (~vec2<u32>(global3.d.x, 1u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~var_2.a.zw, vec2<u32>(~9964u, 1u)));
    var var_5 = Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3.d.x, var_4.x, 4294967295u), ~var_2.a.yzy), _wgslsmith_dot_vec2_u32(var_4, vec2<u32>(global3.d.x, var_4.x)) << (_wgslsmith_dot_vec4_u32(var_2.a, vec4<u32>(global3.d.x, var_4.x, 0u, var_4.x)) % 32u), var_4.x ^ _wgslsmith_sub_u32(var_2.a.x, var_4.x), (4294967295u << (var_2.d.d.x % 32u)) ^ ~47485u), ~_wgslsmith_div_vec4_u32(~var_2.a, max(vec4<u32>(35967u, global3.d.x, global3.d.x, var_4.x), vec4<u32>(0u, global3.d.x, 76982u, 97700u)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1067f)), _wgslsmith_f_op_f32(-1000f - 1882f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(max(global0.e, var_0.e))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global3.b.e, global0.e, 108f, var_0.c.x), vec4<f32>(-912f, var_3.c.x, global3.a.c.x, global0.c.x))))))), var_2.d.a, var_2.d);
    var_3 = Struct_1(var_5.c.a, (vec4<i32>(firstTrailingBit(-1i), var_5.d.a.d, 35111i, 31198i) | global3.e) << (vec4<u32>(select(~var_4.x, ~var_2.d.d.x, all(vec2<bool>(true, global4[_wgslsmith_index_u32(var_4.x, 15u)]))), ~1u, 25912u, ~(var_2.d.d.x & global3.d.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c - _wgslsmith_f_op_vec4_f32(-var_3.c)))), -34502i, _wgslsmith_f_op_f32(ceil(-749f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_5.d.b.b));
}

