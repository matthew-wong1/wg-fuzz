struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
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

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(1645f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1333f * -973f)))), global0[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(4421u)) ^ u_input.d.x, 20u)], u_input.c, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d.yxy, abs(firstTrailingBit(vec3<u32>(10350u, 0u, 12514u)))), u_input.d.xxy), vec4<i32>(~u_input.c.x >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d.x), vec2<u32>(13450u, u_input.b.x)) | 4405u) % 32u), (_wgslsmith_div_i32(-2147483647i, 1i) | (u_input.c.x | 2147483647i)) << (abs(u_input.d.x) % 32u), -1i, abs(_wgslsmith_add_i32(u_input.c.x, u_input.a)) & 2147483647i));
    var var_1 = _wgslsmith_mod_i32(u_input.a, -8653i) | ~_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.c.yy) ^ var_0.b.c.yz, vec2<i32>(abs(var_0.e.x), var_0.b.c.x));
    let var_2 = var_0.c.wyy;
    var var_3 = Struct_3(vec4<bool>(true, arg_0, true, false), Struct_1(vec2<bool>(all(!vec4<bool>(false, arg_0, var_0.b.a.x, var_0.b.a.x)), var_0.b.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.b.x, firstTrailingBit(var_0.d), ~var_0.d), countOneBits(select(u_input.d.yww, vec3<u32>(var_0.d, 1u, 4294967295u), vec3<bool>(arg_0, var_0.b.a.x, false)))), -var_2, abs(~vec3<u32>(0u, 7300u, 56422u)), (0u >> (0u % 32u)) ^ _wgslsmith_clamp_u32(firstLeadingBit(1u), firstTrailingBit(u_input.d.x), 9082u)), Struct_1(select(var_0.b.a, var_0.b.a, var_0.b.a.x && (var_0.b.a.x & var_0.b.a.x)), var_0.b.b, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(48361i, u_input.c.x, -29377i), vec3<i32>(-28420i, 30327i, -28617i), var_0.c.yzw), abs(~u_input.c.wyy)), ~var_0.b.b, var_0.d >> (~(var_0.b.d.x | 4294967295u) % 32u)), Struct_2(-352f, Struct_1(vec2<bool>(true, arg_0), vec3<u32>(~var_0.d, ~4294967295u, ~u_input.d.x), _wgslsmith_add_vec3_i32(var_2 >> (var_0.b.b % vec3<u32>(32u)), -var_2), var_0.b.b, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.d.zxz, var_0.b.b), 4294967295u)), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.e, u_input.c, vec4<i32>(var_0.b.c.x, -57148i, var_0.c.x, -43308i)), abs(vec4<i32>(12048i, u_input.c.x, -16214i, var_0.c.x))), 10352i, firstLeadingBit(2147483647i), -2147483647i), 22102u, -var_0.e));
    var var_4 = Struct_2(var_3.d.a, var_3.b, _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, -17675i, (19306i | u_input.a) & var_2.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.b.c.x, -2147483647i), 1i, i32(-1i) * -1i)), _wgslsmith_mult_vec4_i32(var_0.c, countOneBits(u_input.c))), var_3.b.b.x, -select(~var_3.d.c << (firstLeadingBit(vec4<u32>(var_0.d, 1u, var_0.d, var_3.d.b.b.x)) % vec4<u32>(32u)), var_0.e, false));
    return ~abs(countOneBits(vec4<i32>(var_0.c.x, -1i, var_0.c.x, -1i >> (var_4.d % 32u))));
}

fn func_2() -> Struct_2 {
    let var_0 = -abs(func_3(true));
    let var_1 = Struct_3(vec4<bool>(select(!all(vec4<bool>(true, false, false, true)), true, any(vec3<bool>(false, false, true))), true, true, false), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), u_input.d.wyx, var_0.xzz, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.b.x, 4294967295u), vec3<u32>(_wgslsmith_mod_u32(4294967295u, u_input.b.x), _wgslsmith_add_u32(4356u, u_input.b.x), 0u)), 31934u), Struct_1(select(vec2<bool>(var_0.x <= var_0.x, true), vec2<bool>(true, true), true), ~(~u_input.d.xxz & u_input.d.zwz), vec3<i32>(-9663i, ~min(0i, u_input.a), 11307i), vec3<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 13309u) >> (u_input.b % vec2<u32>(32u)), abs(u_input.d.wz)), select(_wgslsmith_clamp_u32(u_input.d.x, 4294967295u, 4294967295u), _wgslsmith_mult_u32(u_input.d.x, 122132u), false)), _wgslsmith_mod_u32(2092u, max(0u, u_input.d.x) << (~1u % 32u))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1624f, -2074f)))), Struct_1(vec2<bool>(true, false), u_input.d.yww, _wgslsmith_sub_vec3_i32(u_input.c.xyw, _wgslsmith_clamp_vec3_i32(var_0.zyy, vec3<i32>(u_input.a, -5497i, 2147483647i), vec3<i32>(u_input.c.x, var_0.x, 2147483647i))), max(u_input.d.ywx, u_input.d.yzz), ~1u), ~vec4<i32>(var_0.x, var_0.x, ~u_input.a, max(var_0.x, u_input.a)), _wgslsmith_div_u32(u_input.b.x, u_input.b.x), vec4<i32>(var_0.x, 17228i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, u_input.a, 26978i), _wgslsmith_add_vec4_i32(vec4<i32>(30642i, u_input.c.x, u_input.c.x, 37812i), var_0)), -(~u_input.a))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.a, 1295f, -377f, 662f) - vec4<f32>(var_1.d.a, -481f, 284f, -773f)), _wgslsmith_div_vec4_f32(vec4<f32>(2021f, -1884f, var_1.d.a, var_1.d.a), vec4<f32>(var_1.d.a, var_1.d.a, 1416f, 1453f)), select(vec4<bool>(false, var_1.d.b.a.x, var_1.d.b.a.x, var_1.a.x), var_1.a, vec4<bool>(var_1.b.a.x, var_1.a.x, var_1.d.b.a.x, var_1.b.a.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.a), 252f, 1226f, _wgslsmith_f_op_f32(sign(var_1.d.a)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.d.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.d.a, 1502f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.d.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.a, var_1.d.a, -1664f, 1000f))))), true))));
    var var_3 = -19271i;
    var var_4 = var_1.d;
    return var_1.d;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    global0 = array<Struct_1, 20>();
    return arg_0.c;
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    global0 = array<Struct_1, 20>();
    let var_0 = ~_wgslsmith_dot_vec4_i32(func_4(func_2(), vec2<bool>(true, true), _wgslsmith_f_op_f32(-1000f * 943f)), reverseBits(vec4<i32>(-1i, u_input.a, u_input.c.x, u_input.a))) << (1116u % 32u);
    let var_1 = arg_0.x;
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    return ~var_1;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = arg_2.b;
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_1 = func_2();
    return reverseBits(arg_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var var_0 = Struct_3(vec4<bool>(false, false, false, all(vec4<bool>(false, true, false, true))), global0[_wgslsmith_index_u32(10815u, 20u)], Struct_1(vec2<bool>(u_input.b.x <= 53879u, select(true, true, all(vec3<bool>(true, false, false)))), u_input.d.zxz, u_input.c.zyx, func_5(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0[_wgslsmith_index_u32(u_input.d.x, 20u)], u_input.c, u_input.b.x << (46177u % 32u), u_input.c), -abs(u_input.c.x), Struct_2(-1580f, Struct_1(vec2<bool>(true, false), u_input.d.zxz, vec3<i32>(u_input.c.x, -46657i, -60688i), u_input.d.yyy, u_input.d.x), u_input.c, func_1(vec2<u32>(0u, 1u)), u_input.c)), ~0u ^ ~u_input.b.x), func_2());
    let var_1 = Struct_2(var_0.d.a, Struct_1(!var_0.a.wz, vec3<u32>(_wgslsmith_sub_u32(~var_0.d.d, 37769u ^ var_0.b.d.x), _wgslsmith_div_u32(func_2().b.e, 70993u), var_0.b.b.x), u_input.c.wyz, reverseBits((var_0.c.b & u_input.d.yzy) & u_input.d.xyy), func_1(var_0.c.d.yy)), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(387i), abs(u_input.a), 2147483647i, func_4(var_0.d, vec2<bool>(false, false), 899f).x), var_0.d.e)), _wgslsmith_clamp_u32(0u, ~func_5(func_2(), 2147483647i, Struct_2(-1000f, global0[_wgslsmith_index_u32(u_input.d.x, 20u)], vec4<i32>(0i, -14339i, -1i, u_input.c.x), 0u, vec4<i32>(25679i, u_input.a, 2147483647i, 2147483647i))).x, var_0.b.b.x), ~vec4<i32>(var_0.d.b.c.x, -2147483647i, -1i, 18249i));
    var_0 = Struct_3(!select(var_0.a, var_0.a, any(var_0.a.yzx)), Struct_1(vec2<bool>(false, true), ~(~select(var_1.b.b, vec3<u32>(var_0.d.b.d.x, 0u, var_0.c.d.x), true)), vec3<i32>(func_3(var_0.d.b.a.x).x, u_input.a, -1i), var_1.b.d, var_0.c.d.x), var_0.d.b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a * 1472f)))), func_2().b, vec4<i32>(var_1.c.x & abs(var_1.e.x), _wgslsmith_dot_vec2_i32(var_0.d.e.ww, ~vec2<i32>(u_input.c.x, var_1.e.x)), _wgslsmith_mod_i32(var_0.c.c.x, var_0.b.c.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 0i, 0i), vec3<i32>(var_0.b.c.x, 44893i, var_0.b.c.x))), firstTrailingBit(16140u), vec4<i32>(var_0.b.c.x << ((u_input.d.x ^ 4294967295u) % 32u), _wgslsmith_mult_i32(31716i << (u_input.b.x % 32u), var_0.c.c.x), -15154i, u_input.a)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-1160f - _wgslsmith_f_op_f32(-1813f * var_0.d.a)), -1082f), vec2<f32>(var_0.d.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(201f * var_0.d.a), _wgslsmith_f_op_f32(sign(var_0.d.a)))))));
    var var_3 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.d.b.c.x, var_1.c.x, ~u_input.d);
}

