struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec3<f32>(815f, 977f, 329f), vec4<u32>(4294967295u, 33861u, 4294967295u, 1u), vec2<u32>(1u, 119098u), -124f, 1012f), Struct_3(vec3<f32>(398f, -1409f, 941f), vec4<u32>(4294967295u, 4294967295u, 46862u, 1u), vec2<u32>(1u, 34375u), -652f, 639f), Struct_3(vec3<f32>(1190f, 463f, 707f), vec4<u32>(0u, 30273u, 60190u, 4294967295u), vec2<u32>(79608u, 26750u), 1015f, 780f), Struct_3(vec3<f32>(-801f, -1237f, 1787f), vec4<u32>(1u, 71391u, 1u, 70296u), vec2<u32>(1u, 76964u), -498f, 732f), Struct_3(vec3<f32>(1300f, 1002f, -1805f), vec4<u32>(2153u, 89610u, 0u, 82299u), vec2<u32>(65581u, 0u), 587f, -218f), Struct_3(vec3<f32>(489f, 529f, 868f), vec4<u32>(19771u, 33581u, 0u, 1u), vec2<u32>(1u, 17277u), -532f, -548f), Struct_3(vec3<f32>(-398f, 716f, 2482f), vec4<u32>(25365u, 34610u, 22188u, 1u), vec2<u32>(29312u, 0u), 1509f, 1290f), Struct_3(vec3<f32>(-1675f, -266f, 1348f), vec4<u32>(1u, 31383u, 4146u, 1u), vec2<u32>(69723u, 29020u), -339f, -436f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> vec4<bool> {
    global0 = array<Struct_3, 8>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(883f)) * _wgslsmith_f_op_f32(-1000f + -1539f)), _wgslsmith_f_op_f32(floor(-1280f)))), 1f));
    global0 = array<Struct_3, 8>();
    let var_1 = ~2147483647i;
    global0 = array<Struct_3, 8>();
    return !vec4<bool>(any(!(!arg_1)), true, arg_1.x, true);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> vec3<bool> {
    global0 = array<Struct_3, 8>();
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(select(countOneBits(vec4<i32>(arg_0, 0i, -23289i, 1i)), vec4<i32>(0i, arg_0, arg_0, 81226i) >> (vec4<u32>(0u, 1646u, 13333u, 0u) % vec4<u32>(32u)), !arg_1.x), ~vec4<i32>(arg_0, 1i, 27378i, 1i) & vec4<i32>(23020i, -13461i, u_input.d, 1i)) ^ 1i, 21427i, u_input.d);
    global0 = array<Struct_3, 8>();
    var var_1 = !arg_1.x;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -186f)))));
    return vec3<bool>(!(!(arg_1.x == true)), !(!(!any(arg_1.zyw))), !arg_1.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> vec3<bool> {
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-970f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(359f, 315f)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1073f)))), -1705f, -1000f) + vec4<f32>(1626f, -452f, -725f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1000f))))));
    return !func_4(~12820i, vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, all(func_3(arg_0.x, vec2<bool>(true, true)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = !select(vec3<bool>(1u == ~u_input.c.x, any(vec3<bool>(true, true, true)), !select(false, true, true)), !func_2(~u_input.c, ~vec2<i32>(-2147483647i, u_input.d)), vec3<bool>(true, true, any(vec4<bool>(true, false, false, true))));
    var var_1 = _wgslsmith_div_u32(min(39198u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 39102u, u_input.c.x), vec4<u32>(u_input.c.x, 13626u, u_input.c.x, u_input.e)) & abs(vec4<u32>(u_input.a, u_input.c.x, 87597u, 4294967295u)), max(vec4<u32>(1u, 0u, 4294967295u, 18070u) | vec4<u32>(u_input.b, 1u, u_input.a, 4294967295u), vec4<u32>(u_input.b, 0u, 3602u, 4294967295u)))), ~(~u_input.c.x));
    let var_2 = all(!vec4<bool>(true, !(true & var_0.x), var_0.x, true));
    var var_3 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, u_input.a, u_input.a, 17254u)), ~vec4<u32>(u_input.e, u_input.e, 46975u, u_input.e)) << (_wgslsmith_mult_u32(1u, u_input.a) % 32u), u_input.a, ~select(_wgslsmith_add_u32(u_input.c.x, 4294967295u), 1u, true));
    var var_4 = ~vec2<u32>(4294967295u, reverseBits(1u));
    return Struct_1(var_2, abs(var_3.xx) << (_wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(var_3.zx, u_input.c), reverseBits(~var_3.yz)) % vec2<u32>(32u)), min(select(vec4<u32>(select(var_4.x, u_input.b, true), reverseBits(1291u), ~var_4.x, ~0u), vec4<u32>(~80975u, ~var_4.x, ~var_3.x, var_4.x), var_2), firstTrailingBit(vec4<u32>(1u << (var_3.x % 32u), ~var_3.x, select(0u, 56800u, var_2), var_3.x >> (1u % 32u)))));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    var var_0 = Struct_2(1u);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.a, _wgslsmith_dot_vec2_u32(arg_2.b, abs(arg_2.b))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, 1u, 15454u)), ~arg_2.c.xzw)), 8u)];
    let var_2 = _wgslsmith_dot_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(u_input.d, u_input.d, u_input.d, arg_0)) ^ -vec4<i32>(u_input.d, 2147483647i, -13076i, 0i)) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(16410u, 4294967295u, var_0.a), ~var_1.b.yyw), 47388u << (var_0.a % 32u), max(u_input.c.x >> (var_1.b.x % 32u), ~0u), ~0u) % vec4<u32>(32u)), abs(vec4<i32>(0i, select(-arg_0, arg_0 | -34875i, false), u_input.d, arg_0)));
    let var_3 = true;
    var var_4 = Struct_2(arg_1.b.x);
    return u_input.d != ~firstTrailingBit(0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, true, true)), select(true, true, true), false, true), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, false, true), true)), vec4<bool>(true, true, false, true), !(!vec4<bool>(true, select(false, true, false), all(vec3<bool>(true, false, true)), select(false, true, false))));
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.e, u_input.b), u_input.a)), 8u)];
    let var_2 = Struct_1(func_5(~(-2147483647i), Struct_3(var_1.a, ~vec4<u32>(1104u, 51514u, 4294967295u, 0u), _wgslsmith_sub_vec2_u32(var_1.b.yz, var_1.c), var_1.e, _wgslsmith_f_op_f32(abs(var_1.d))), func_1(var_1.e), !select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, false, true), true)) && var_0.x, ~u_input.c, ~firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.b.x, u_input.a, 72002u), ~vec4<u32>(1u, u_input.a, 1u, var_1.c.x))));
    var var_3 = min(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(~vec3<i32>(u_input.d, u_input.d, u_input.d)), vec3<i32>(u_input.d ^ u_input.d, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(3980i, u_input.d, u_input.d), vec3<i32>(-2147483647i, u_input.d, -1i)))), ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.d, 0i), vec3<i32>(u_input.d, -1799i, 2147483647i), vec3<i32>(0i, -13529i, 1i)))), reverseBits(i32(-1i) * -12365i));
    var var_4 = abs(select(vec2<i32>(2147483647i, _wgslsmith_clamp_i32(u_input.d, 2147483647i, 19843i)) >> (min(var_2.c.zy | u_input.c, ~var_2.b) % vec2<u32>(32u)), -vec2<i32>(1782i, 17822i), !var_0.zx));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_1.a.x).c.xxz, ~_wgslsmith_clamp_vec4_i32(max(max(vec4<i32>(u_input.d, var_4.x, var_4.x, u_input.d), vec4<i32>(u_input.d, 74275i, u_input.d, -90893i)), vec4<i32>(-22138i, -10421i, -1i, 2147483647i)), (vec4<i32>(var_4.x, 49974i, var_4.x, u_input.d) << (vec4<u32>(4294967295u, u_input.a, 4294967295u, var_2.b.x) % vec4<u32>(32u))) << (select(var_2.c, var_1.b, false) % vec4<u32>(32u)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, var_4.x, -29516i, 2147483647i), vec4<i32>(u_input.d, 0i, var_4.x, var_4.x), vec4<i32>(18753i, u_input.d, 38628i, 2147483647i)), vec4<i32>(u_input.d, u_input.d, 13333i, 42096i), true)), func_1(var_1.e).c, vec3<i32>(_wgslsmith_dot_vec3_i32(min(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 10730i, u_input.d), vec3<i32>(var_4.x, u_input.d, var_4.x)), vec3<i32>(var_4.x, 2147483647i, u_input.d)), ~(~vec3<i32>(-18864i, 2147483647i, var_4.x))), -12125i, abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 5206i, u_input.d), vec3<i32>(0i, 45656i, u_input.d)), vec3<i32>(-1i, -22281i, 2147483647i)))), 3890u);
}

