struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = ~u_input.a.x;
    global0 = array<i32, 9>();
    var var_1 = vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, ~u_input.a.x), 9u)] == 2147483647i, all(select(!(!vec3<bool>(false, arg_0.x, arg_0.x)), vec3<bool>(all(vec4<bool>(arg_0.x, arg_0.x, true, false)), arg_0.x || false, true), select(false, true, true))), arg_0.x, arg_0.x);
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    return Struct_2(Struct_1(var_1.wx, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-492f, -1329f, -1000f, 1394f))))), !any(vec3<bool>(false, var_1.x, arg_0.x)), u_input.d.x));
}

fn func_3() -> Struct_1 {
    let var_0 = func_2(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))).a;
    var var_1 = vec4<u32>(var_0.d & u_input.a.x, abs(var_0.d), 36786u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(26543u, u_input.a.x, u_input.d.x, 0u), u_input.d) & _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.d, 4294967295u), u_input.a), reverseBits(0u), firstTrailingBit(0u), abs(u_input.a.x))));
    var var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d.zw, u_input.c.zz), firstTrailingBit(u_input.a.x)), var_1.wx, reverseBits(u_input.a.yz)), vec2<u32>(select(36776u, 1u, false), var_1.x));
    global1 = -1i;
    let var_3 = var_0.b.xyw;
    return Struct_1(vec2<bool>(!var_0.a.x, !all(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(var_0.b + var_0.b)))) + var_0.b), false, 1u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<bool> {
    global0 = array<i32, 9>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b));
    var var_1 = arg_1.d;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + arg_1.b.x), var_0.x));
    var_2 = arg_0.a.b.x;
    return func_2(select(vec3<bool>(arg_1.a.x, arg_1.c, arg_0.a.c), vec3<bool>(arg_0.a.c, arg_1.a.x, true), vec3<bool>(func_3().c, true, any(vec2<bool>(true, arg_0.a.c))))).a.a;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    global0 = array<i32, 9>();
    let var_0 = vec3<i32>(max(global0[_wgslsmith_index_u32(arg_1.a.d, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]) ^ _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(4294967295u, 9u)], reverseBits(global0[_wgslsmith_index_u32(20796u, 9u)])), 1i, u_input.b & (-u_input.b << (~0u % 32u))) ^ vec3<i32>(-2147483647i, _wgslsmith_mult_i32(max(1i, 0i | u_input.b), 17314i), u_input.b & -22122i);
    var var_1 = u_input.d.wy;
    return Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a.b)), arg_0.x, _wgslsmith_sub_u32(~var_1.x, ~_wgslsmith_sub_u32(arg_1.a.d, arg_1.a.d)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.d.xy), u_input.d.wz);
    let var_1 = func_2(!vec3<bool>(func_4(func_2(vec3<bool>(false, true, arg_3.c)), func_2(vec3<bool>(arg_1.a.a.x, false, arg_0.c)).a, vec4<u32>(arg_3.d, 4294967295u, arg_3.d, arg_0.d)).x, arg_3.c, arg_1.a.c));
    var_0 = var_1.a.d;
    global0 = array<i32, 9>();
    let var_2 = arg_2;
    return abs(u_input.b);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = array<i32, 9>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-491f, -1000f));
    let var_1 = 730f;
    var var_2 = min(u_input.a >> (~(vec3<u32>(u_input.c.x, 1u, u_input.c.x) | _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.c.x, 25301u), u_input.a)) % vec3<u32>(32u)), ~u_input.c);
    let var_3 = func_6(func_5(func_4(func_2(vec3<bool>(true, true, false)), func_3(), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 65442u, var_2.x) & u_input.d, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 25324u, var_2.x, var_2.x), u_input.d))), Struct_2(Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(498f, -1890f, -535f, var_0)), true, 4294967295u >> (0u % 32u))), u_input.c.x), Struct_2(func_3()), _wgslsmith_f_op_f32(round(func_3().b.x)), Struct_1(!vec2<bool>(any(vec2<bool>(false, true)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_1, -315f, 1687f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, -130f, -234f, -257f), vec4<f32>(var_1, -219f, var_0, var_0)))) + vec4<f32>(-1315f, _wgslsmith_f_op_f32(max(237f, -216f)), var_1, -962f)), func_4(Struct_2(func_2(vec3<bool>(false, true, false)).a), func_3(), vec4<u32>(var_2.x, u_input.a.x, select(u_input.a.x, 4294967295u, true), var_2.x)).x, ~0u));
    return func_5(select(func_4(func_2(vec3<bool>(true, true, true)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_1, var_0, var_0), vec4<f32>(var_1, 503f, var_0, 225f), vec4<bool>(false, false, false, false))), true, ~u_input.d.x), ~vec4<u32>(27157u, 23542u, 1u, 24881u) ^ (vec4<u32>(25515u, 31160u, u_input.d.x, u_input.d.x) & u_input.d)), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)) & (0i == ~u_input.b)), Struct_2(Struct_1(func_2(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))).a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1355f, -526f, -699f, -1000f), vec4<f32>(var_1, -937f, var_0, -214f), vec4<bool>(true, true, false, true))) - vec4<f32>(-1743f, var_1, -1046f, var_1)), true, 1u)), u_input.d.x);
}

fn func_7(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1.b.xxz;
    var var_1 = min(abs(vec4<i32>(select(u_input.b, -1i, arg_1.a.x), ~0i, func_6(Struct_1(vec2<bool>(true, false), arg_1.b, arg_1.c, arg_1.d), Struct_2(Struct_1(arg_1.a, vec4<f32>(var_0.x, -841f, -1000f, 2390f), false, arg_1.d)), arg_0, arg_1), max(u_input.b, u_input.b)) << ((vec4<u32>(u_input.a.x, 1u, arg_1.d, arg_1.d) << (abs(u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u))), -(vec4<i32>(-1i) * -countOneBits(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b))));
    var_0 = arg_1.b.wwy;
    var var_2 = _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(68924i, var_1.x, -43804i, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.b, var_1.x, 22998i), vec4<i32>(var_1.x, 1i, 42459i, 1i))) >> (~vec4<u32>(arg_1.d, arg_1.d, ~u_input.d.x, _wgslsmith_sub_u32(1u, arg_1.d)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, global0[_wgslsmith_index_u32(arg_1.d, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), vec4<i32>(38951i, -75837i, -50634i, global0[_wgslsmith_index_u32(49020u, 9u)])), _wgslsmith_div_i32(0i, u_input.b), var_1.x), vec4<i32>(-24460i, u_input.b, u_input.b, -2147483647i)) >> (u_input.d % vec4<u32>(32u)));
    var var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + 898f))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x)))))));
    return firstLeadingBit(~arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u << (_wgslsmith_clamp_u32(select(u_input.c.x, u_input.a.x, false), ~70542u, ~55646u) % 32u), ~u_input.a.x), ~24162u);
    global1 = u_input.b;
    let var_1 = select(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true), select(vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), !all(vec4<bool>(true, false, false, true)), select(true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true)), true || any(vec4<bool>(true, true, false, false))), false);
    global1 = -u_input.b;
    var var_2 = _wgslsmith_f_op_f32(-745f - _wgslsmith_div_f32(-704f, -870f));
    var var_3 = Struct_1(vec2<bool>((!var_1.x != true) || !var_1.x, any(vec4<bool>(false, true, all(var_1.yyx), u_input.d.x >= u_input.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-434f - -706f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-643f, _wgslsmith_f_op_f32(max(-342f, -938f)))), 222f, !(!var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -243f), 896f), u_input.b >= u_input.b, func_7(_wgslsmith_f_op_f32(533f + 137f), func_1(vec3<i32>(-2147483647i, -68407i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(99902u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec2<i32>(22047i, u_input.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~0i, min(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-34908i, -2147483647i, -1i), vec3<i32>(global0[_wgslsmith_index_u32(var_3.d, 9u)], global0[_wgslsmith_index_u32(u_input.c.x, 9u)], 0i)), func_6(Struct_1(vec2<bool>(false, var_3.c), vec4<f32>(341f, -351f, var_3.b.x, -2538f), var_3.a.x, var_3.d), Struct_2(Struct_1(var_1.xx, var_3.b, var_1.x, var_3.d)), 1332f, Struct_1(vec2<bool>(true, true), var_3.b, false, 0u))), abs(select(61538i, global0[_wgslsmith_index_u32(0u, 9u)], false)))), vec4<u32>(~u_input.c.x, u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(99354u, var_3.d, var_3.d, var_3.d), u_input.d), vec4<u32>(u_input.a.x, u_input.d.x, u_input.d.x, 37573u)), vec4<u32>(65666u, 55153u, ~15943u, ~var_3.d)), var_3.d), var_3.b.x);
}

