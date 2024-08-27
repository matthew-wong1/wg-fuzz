struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(866f, false, vec3<f32>(148f, -1886f, -366f), 13625u));

var<private> global1: array<Struct_3, 12>;

var<private> global2: i32;

var<private> global3: vec2<u32> = vec2<u32>(20612u, 16135u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    global1 = array<Struct_3, 12>();
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 1u)];
    var var_1 = Struct_2(firstLeadingBit(abs(countOneBits(vec2<i32>(u_input.b.x, u_input.b.x) | vec2<i32>(-6509i, u_input.b.x)))), Struct_1(_wgslsmith_clamp_vec3_i32(~reverseBits(u_input.b), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.d, u_input.b.x, u_input.a), select(u_input.b, u_input.b, var_0.b)), max(u_input.b, vec3<i32>(-831i, u_input.a, u_input.a)) | u_input.b), min(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.e, vec2<u32>(var_0.d, global3.x)), _wgslsmith_add_vec2_u32(vec2<u32>(90136u, u_input.e.x), u_input.e)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e.x, var_0.d, u_input.e.x, var_0.d), vec4<u32>(var_0.d, u_input.c, u_input.c, 68185u))), vec3<bool>(var_0.b, false || var_0.b, u_input.b.x <= -25966i), _wgslsmith_f_op_f32(trunc(var_0.a))), Struct_1(_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(0i, _wgslsmith_div_i32(1i, 898i), -2147483647i)), _wgslsmith_mult_u32(var_0.d, ~var_0.d), select(select(!vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(var_0.b, var_0.b, var_0.b), !vec3<bool>(true, var_0.b, true)), vec3<bool>(var_0.b, !var_0.b, var_0.a >= -510f), select(vec3<bool>(true, true, var_0.b), select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_0.b, false, false), vec3<bool>(false, var_0.b, var_0.b)), vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(-var_0.c.x)), Struct_1(-u_input.b, _wgslsmith_mod_u32(u_input.e.x, u_input.c), select(!select(vec3<bool>(true, var_0.b, true), vec3<bool>(false, true, var_0.b), var_0.b), !select(vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(true, false, var_0.b), var_0.b), true), -794f));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f + 345f)) * -1686f)));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(arg_0.a + -1351f)))) + _wgslsmith_f_op_f32(-arg_0.c.x));
    let var_1 = _wgslsmith_add_u32(~(~(global3.x & _wgslsmith_add_u32(u_input.c, arg_0.d))), ~arg_0.d ^ 40956u);
    var var_2 = Struct_2(vec2<i32>(0i, countOneBits((0i << (arg_0.d % 32u)) >> (abs(4294967295u) % 32u))), Struct_1(select(vec3<i32>(u_input.a, -1i, ~u_input.b.x), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, u_input.a), u_input.b), -vec3<i32>(u_input.a, -1i, u_input.a)), !any(vec2<bool>(true, true))), 4294967295u, select(vec3<bool>(!arg_0.b, true | arg_0.b, var_0 < var_0), !(!vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-arg_0.c.x)))), Struct_1(vec3<i32>(0i, -11761i, u_input.d ^ _wgslsmith_mod_i32(21887i, u_input.b.x)), reverseBits(global3.x), select(!vec3<bool>(arg_0.b, arg_0.b, true), select(vec3<bool>(true, arg_0.b, arg_0.b), !vec3<bool>(arg_0.b, false, arg_0.b), arg_0.b), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, arg_0.b), vec3<bool>(true, arg_0.b, arg_0.b)), !vec3<bool>(false, arg_0.b, true), arg_0.b)), _wgslsmith_f_op_f32(-arg_0.a)), Struct_1(max(u_input.b | ~u_input.b, u_input.b), arg_0.d, select(vec3<bool>(arg_0.b || arg_0.b, !arg_0.b, true), select(!vec3<bool>(arg_0.b, arg_0.b, arg_0.b), select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(false, arg_0.b, true), arg_0.b), !vec3<bool>(true, false, arg_0.b)), vec3<bool>(arg_0.b, true, true)), _wgslsmith_f_op_f32(func_3())));
    let var_3 = 1u;
    let var_4 = abs(~_wgslsmith_sub_u32(~0u, 16333u));
    return var_2.d;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    global1 = array<Struct_3, 12>();
    var var_0 = arg_1.b.d;
    let var_1 = true;
    let var_2 = !vec4<bool>(all(arg_1.b.c), (any(vec2<bool>(arg_1.b.c.x, arg_1.d.c.x)) & (true & arg_1.d.c.x)) || func_2(Struct_3(arg_0.x, arg_2.b, vec3<f32>(arg_2.c.x, 869f, arg_1.d.d), 12299u)).c.x, !(!(arg_1.b.c.x && var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1179f) != arg_1.d.d);
    let var_3 = abs(vec2<u32>(_wgslsmith_sub_u32(1u ^ _wgslsmith_clamp_u32(56874u, 1u, 0u), arg_1.d.b), 28931u));
    return ~arg_3.a.x >> ((arg_3.b >> (148353u % 32u)) % 32u);
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_clamp_i32(u_input.b.x, 2147483647i, min(_wgslsmith_dot_vec3_i32(u_input.b, reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, u_input.a, u_input.a), vec3<i32>(u_input.d, u_input.a, u_input.a)))), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1237f, -146f, 1131f) - vec4<f32>(1821f, 582f, 310f, -1193f)), Struct_2(vec2<i32>(u_input.d, 3747i), Struct_1(vec3<i32>(-31264i, 0i, 2147483647i), global3.x, vec3<bool>(true, true, true), 332f), Struct_1(u_input.b, global3.x, vec3<bool>(true, true, true), 1341f), Struct_1(vec3<i32>(u_input.b.x, 2147483647i, 0i), 23834u, vec3<bool>(false, false, false), -265f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(41424u, 16672u, global3.x), vec3<u32>(0u, 4294967295u, 76715u)), 1u)], func_2(global0[_wgslsmith_index_u32(8264u, 1u)])) & 22412i));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-192f + 668f) + -1063f), min(1u, _wgslsmith_clamp_u32(33227u, global3.x, u_input.c)) < 4294967295u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1607f, 1340f, 973f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-109f, -399f, 1064f)) * vec3<f32>(-642f, 1054f, 1208f)))))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(9933u, _wgslsmith_mod_u32(u_input.e.x, 25171u), 32035u, u_input.c), vec4<u32>(u_input.e.x, firstLeadingBit(global3.x), countOneBits(global3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 11524u, u_input.e.x, u_input.e.x), vec4<u32>(81691u, u_input.e.x, global3.x, 1u)))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(7989u, 4294967295u), vec2<u32>(1u, global3.x)), ~global3.x), _wgslsmith_add_u32(~global3.x, ~0u), ~(~u_input.c), u_input.e.x << (abs(24801u) % 32u))));
    var var_2 = Struct_2(vec2<i32>(u_input.d, _wgslsmith_sub_i32(_wgslsmith_mod_i32(~u_input.d, -1i), func_4(vec4<f32>(2029f, -225f, var_1.a, 1121f), Struct_2(u_input.b.zx, Struct_1(vec3<i32>(1i, 1i, 0i), var_1.d, vec3<bool>(var_1.b, var_1.b, false), var_1.c.x), Struct_1(vec3<i32>(u_input.d, 31021i, u_input.b.x), 66134u, vec3<bool>(var_1.b, var_1.b, true), 465f), Struct_1(u_input.b, var_1.d, vec3<bool>(var_1.b, false, var_1.b), var_1.a)), var_1, Struct_1(vec3<i32>(22894i, u_input.b.x, 38880i), global3.x, vec3<bool>(false, var_1.b, true), var_1.c.x)))), func_2(Struct_3(var_1.c.x, any(!vec4<bool>(var_1.b, var_1.b, true, false)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_1.c.x, var_1.c.x), _wgslsmith_f_op_vec3_f32(var_1.c * vec3<f32>(var_1.a, 2141f, var_1.a))), 21324u)), Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, -1i, -2147483647i), firstLeadingBit(vec3<i32>(u_input.b.x, 2147483647i, -1i))), -u_input.b << (select(vec3<u32>(u_input.c, 13977u, 82379u), vec3<u32>(u_input.c, global3.x, 2159u), vec3<bool>(true, true, var_1.b)) % vec3<u32>(32u)), -min(u_input.b, u_input.b)), 16741u, func_2(var_1).c, var_1.c.x), func_2(Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a, var_1.c.x))), false, var_1.c, 0u)));
    global0 = array<Struct_3, 1>();
    global2 = u_input.d;
    return true;
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1170f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(795f)) + _wgslsmith_f_op_f32(1625f - 1576f)))), -14643i > ((-27417i << (~u_input.e.x % 32u)) | _wgslsmith_mod_i32(u_input.a, ~u_input.b.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-160f)), -955f, _wgslsmith_f_op_f32(f32(-1f) * -643f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2379f, 464f, -408f) + vec3<f32>(-501f, -1680f, -747f))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-282f, -813f, -499f))))))), global3.x);
    let var_1 = -29682i;
    global3 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(var_0.d, 4294967295u)), min(arg_1.zz, vec2<u32>(u_input.c, 1u))) & ~vec2<u32>(26366u, global3.x), arg_1.wz), ~_wgslsmith_mod_vec2_u32(u_input.e, u_input.e));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1115f, 1739f, 1941f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1048f, 1545f, -1000f)))))), true));
    var_2 = _wgslsmith_f_op_vec3_f32(-var_0.c);
    return Struct_2(firstTrailingBit(u_input.b.xy), Struct_1(firstTrailingBit(abs(u_input.b) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, arg_1.x, arg_1.x), arg_1.ywx) % vec3<u32>(32u))), _wgslsmith_mult_u32(~0u, countOneBits(var_0.d)) | ~(~u_input.e.x), vec3<bool>(false, true, arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -956f) - _wgslsmith_f_op_f32(-var_0.a))), Struct_1(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(32420i, u_input.a, u_input.b.x), -vec3<i32>(1i, var_1, 2147483647i))), abs(global3.x << (5912u % 32u)), vec3<bool>(func_2(global0[_wgslsmith_index_u32(abs(var_0.d), 1u)]).c.x, true, !(arg_0 || arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(select(var_2.x, var_2.x, false)))), _wgslsmith_f_op_f32(round(-613f))))), func_2(Struct_3(var_2.x, any(!arg_2), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -398f, var_0.c.x) - vec3<f32>(-987f, -1317f, var_0.a)) - _wgslsmith_f_op_vec3_f32(-var_0.c)), 9009u)));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<bool>) -> StorageBuffer {
    global3 = vec2<u32>(64533u, 1u);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b.d, arg_0.b.d), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.d, arg_0.b.d), vec2<f32>(572f, arg_0.b.d)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1750f, 2884f)))));
    let var_1 = arg_0.b.a.x;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -574f), -1096f);
    var var_2 = ~(~(firstLeadingBit(~vec3<u32>(u_input.e.x, 4294967295u, u_input.c)) << (~(vec3<u32>(arg_0.d.b, 7635u, arg_0.d.b) ^ vec3<u32>(25886u, 25224u, 4914u)) % vec3<u32>(32u))));
    return StorageBuffer(arg_0.d.a.x >> (_wgslsmith_div_u32(firstTrailingBit(abs(12992u)), 63247u) % 32u), _wgslsmith_add_i32(arg_0.a.x, ~(-2147483647i)), ~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(20064u, global3.x, arg_0.c.b, var_2.x), vec4<u32>(u_input.c, 0u, global3.x, 4294967295u))) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.c.b, 71827u, arg_0.b.b, 41999u), ~vec4<u32>(4294967295u, 1u, 4294967295u, 6727u)), _wgslsmith_div_vec4_u32(vec4<u32>(20111u, 43543u, 31353u, 42529u) ^ vec4<u32>(var_2.x, 4294967295u, 1u, 31507u), vec4<u32>(global3.x, arg_0.c.b, global3.x, 0u) << (vec4<u32>(u_input.e.x, arg_0.b.b, var_2.x, 37193u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(false, true, true);
    global2 = u_input.b.x;
    global0 = array<Struct_3, 1>();
    global3 = _wgslsmith_mult_vec2_u32(u_input.e, u_input.e);
    global1 = array<Struct_3, 12>();
    global2 = min(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(~1i, _wgslsmith_div_i32(18793i, u_input.b.x)), -firstTrailingBit(-4745i), 2147483647i), min(u_input.d, -48457i)), -1i);
    let x = u_input.a;
    s_output = func_6(func_5(func_1() | !(u_input.d < u_input.d), ~vec4<u32>(~97151u, global3.x, 63356u, 68445u), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), vec3<bool>(func_1(), all(vec2<bool>(true, false)), true), vec3<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false)), any(vec4<bool>(true, false, false, false))))), vec4<bool>(true, func_5(all(vec3<bool>(false, false, true)), vec4<u32>(0u, u_input.e.x, u_input.c, ~global3.x), vec3<bool>(true, true, true)).c.c.x, all(func_5(true, _wgslsmith_mult_vec4_u32(vec4<u32>(57832u, global3.x, 76376u, u_input.c), vec4<u32>(global3.x, global3.x, 1u, 4294967295u)), vec3<bool>(false, false, true)).d.c), true && (global3.x == u_input.c)));
}

