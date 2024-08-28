struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(35946i, vec3<i32>(-1i, 2147483647i, 36287i), -7494i, vec2<i32>(2147483647i, 2147483647i), vec2<u32>(3159u, 1u)), Struct_1(1i, vec3<i32>(20763i, 1i, i32(-2147483648)), -18783i, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<u32>(1u, 100307u)), Struct_1(13395i, vec3<i32>(-22676i, 0i, -1i), -1i, vec2<i32>(-1075i, 0i), vec2<u32>(27693u, 1u)), Struct_1(0i, vec3<i32>(2147483647i, -32482i, i32(-2147483648)), 36868i, vec2<i32>(-3736i, -14493i), vec2<u32>(24662u, 4294967295u)), Struct_1(-28132i, vec3<i32>(1i, 2147483647i, -12259i), i32(-2147483648), vec2<i32>(13998i, 2147483647i), vec2<u32>(8059u, 2927u)));

var<private> global1: array<vec4<u32>, 17>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    global0 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_sub_u32(arg_0.e.x, ~_wgslsmith_div_u32(~arg_0.e.x, arg_0.e.x)) >> (~(~min(arg_0.e.x >> (1u % 32u), ~arg_0.e.x)) % 32u);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, -1028f))))))), vec2<u32>(arg_0.e.x, 1u), Struct_1(-min(u_input.a, i32(-1i) * -1i), arg_0.b, ~_wgslsmith_div_i32(2147483647i, -91i), arg_0.d, arg_0.e));
    let var_2 = Struct_1(_wgslsmith_sub_i32(firstTrailingBit(2147483647i), 2267i), abs(vec3<i32>(u_input.a, 1i, var_1.c.b.x)), ~var_1.c.c, ~firstLeadingBit(_wgslsmith_div_vec2_i32(var_1.c.d, vec2<i32>(1i, 56570i))) & firstTrailingBit(firstTrailingBit(vec2<i32>(-14080i, 2147483647i))), vec2<u32>(max(74695u, _wgslsmith_add_u32(~arg_0.e.x, 1u)), arg_0.e.x));
    var var_3 = var_2.d;
    return true;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4) -> vec2<i32> {
    global1 = array<vec4<u32>, 17>();
    var var_0 = arg_2;
    var var_1 = Struct_1(1i, vec3<i32>(_wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(arg_0, arg_0, arg_2.b.x)), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-35303i, arg_2.b.x, 2147483647i)), select(vec3<i32>(u_input.a, arg_0, 8694i), vec3<i32>(u_input.a, 2147483647i, arg_2.b.x), arg_1.a))), select(~(-2542i), 1i, arg_1.a), abs(u_input.a) | -(~u_input.a)), 1i, ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, arg_0) ^ vec2<i32>(var_0.b.x, -1i), vec2<i32>(arg_0, 1i)), firstTrailingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0.d.x), arg_2.d.xy)));
    var var_2 = false;
    let var_3 = arg_1;
    return abs(vec2<i32>(abs(0i), 1i));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: u32) -> vec3<f32> {
    let var_0 = 390u;
    let var_1 = firstTrailingBit(-73974i);
    var var_2 = 19588u;
    let var_3 = true;
    let var_4 = vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(arg_2.yy), arg_2.xx), arg_1.b.x);
    return vec3<f32>(-815f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-312f, _wgslsmith_f_op_f32(exp2(arg_1.c)))))), _wgslsmith_f_op_f32(round(arg_1.c)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global1 = array<vec4<u32>, 17>();
    let var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(Struct_1(19315i, -vec3<i32>(u_input.a, reverseBits(u_input.a), abs(-13109i)), firstTrailingBit(42779i), func_4(u_input.a, Struct_3(func_3(global0[_wgslsmith_index_u32(0u, 5u)], -1281f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1145f, 288f, arg_0.x))), ~91757u), Struct_4(20750u, countOneBits(vec2<i32>(u_input.a, -20494i)), _wgslsmith_f_op_f32(272f * 585f), vec4<u32>(4294967295u, 4294967295u, 43535u, 0u))), ~vec2<u32>(_wgslsmith_mod_u32(4294967295u, 1u), firstLeadingBit(46421u))), Struct_4(_wgslsmith_clamp_u32(~1u, 1u, ~28675u), ~vec2<i32>(2147483647i, 1i), -1607f, global1[_wgslsmith_index_u32(4294967295u, 17u)]), (firstLeadingBit(~vec3<i32>(u_input.a, -1i, u_input.a)) >> ((vec3<u32>(4294967295u, 0u, 1u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 18537u), vec3<u32>(65230u, 88738u, 0u), vec3<u32>(80921u, 4294967295u, 16957u)) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ ((-vec3<i32>(55075i, 2147483647i, -2147483647i) ^ select(vec3<i32>(-11190i, -11412i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, true))) & select(~vec3<i32>(-42774i, u_input.a, -50282i), ~vec3<i32>(u_input.a, -2268i, u_input.a), vec3<bool>(true, true, true))), reverseBits(24433u)));
    global0 = array<Struct_1, 5>();
    var var_2 = arg_0;
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(-788f)), -1141f), vec2<u32>(0u, firstLeadingBit(0u)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(select(51330u, 1u << (1u % 32u), false), 18831u), 5u)]);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_2) -> Struct_4 {
    var var_0 = true;
    global0 = array<Struct_1, 5>();
    let var_1 = 43148u;
    var var_2 = arg_1.c;
    var var_3 = Struct_1(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_2.b.yy << (vec2<u32>(var_2.e.x, arg_2.a) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(arg_1.c.c, var_2.c))), max(1i, u_input.a)), (_wgslsmith_mult_vec3_i32(arg_1.c.b, vec3<i32>(var_2.a, var_2.d.x, 49852i)) << (vec3<u32>(arg_3.b.x, ~arg_2.d.x, ~21600u) % vec3<u32>(32u))) ^ vec3<i32>(_wgslsmith_add_i32(13585i, ~0i), 1i << (1u % 32u), 1i), -1i, vec2<i32>(-1i, _wgslsmith_sub_i32(abs(arg_0.x), _wgslsmith_dot_vec3_i32(max(arg_0, arg_3.c.b), ~vec3<i32>(var_2.c, arg_1.c.c, 0i)))), countOneBits(vec2<u32>(~1u, _wgslsmith_div_u32(33074u, ~var_2.e.x))));
    return arg_2;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: vec3<i32>) -> f32 {
    global1 = array<vec4<u32>, 17>();
    var var_0 = func_6(-vec3<i32>(2147483647i, -min(-2147483647i, 18201i), -46388i), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1252f, arg_2.c) + vec2<f32>(arg_2.c, -432f)) * vec2<f32>(439f, -278f)))), Struct_4(~(~select(arg_2.a, 4820u, false)), arg_3.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.c + arg_2.c), arg_2.c)) * _wgslsmith_f_op_f32(-1f)), ~firstLeadingBit(global1[_wgslsmith_index_u32(reverseBits(1u), 17u)])), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-297f, arg_2.c)))))), vec2<u32>(39097u, arg_0.x), Struct_1(-arg_3.x, ~(vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, arg_2.b.x, arg_3.x)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(36055i, arg_2.b.x), ~arg_2.b.x, ~(-36554i)), arg_2.b, ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.a, 23912u), arg_2.d.zy))));
    global0 = array<Struct_1, 5>();
    let var_1 = var_0.c;
    let var_2 = arg_1.x;
    return 1705f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(-609f, _wgslsmith_div_f32(-203f, 466f))), -285f, _wgslsmith_f_op_f32(func_1(vec3<u32>(1u, 1u, 1u), vec2<bool>(true, true), Struct_4(1u, vec2<i32>(u_input.a, u_input.a), 105f, global1[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -27217i, 20968i), vec3<i32>(1i, u_input.a, 24581i)))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(-352f)), -1898f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-941f * -989f), -375f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1829f - 1000f) + _wgslsmith_f_op_f32(1541f * -1075f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-707f, -848f, -2718f, 298f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(201f, 607f, -660f, 906f) + vec4<f32>(398f, -865f, 1829f, -1281f)) + vec4<f32>(1f, 1f, 1f, 1f)))))));
    let var_1 = Struct_1(-firstTrailingBit(abs(func_6(vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_2(vec2<f32>(var_0.x, var_0.x), vec2<u32>(31506u, 4294967295u), Struct_1(-2147483647i, vec3<i32>(23084i, u_input.a, u_input.a), u_input.a, vec2<i32>(-2147483647i, u_input.a), vec2<u32>(57360u, 4294967295u))), Struct_4(0u, vec2<i32>(u_input.a, u_input.a), var_0.x, global1[_wgslsmith_index_u32(6133u, 17u)]), Struct_2(vec2<f32>(var_0.x, -1224f), vec2<u32>(27524u, 5996u), Struct_1(u_input.a, vec3<i32>(u_input.a, 18972i, u_input.a), -1554i, vec2<i32>(3768i, 0i), vec2<u32>(4294967295u, 4294967295u)))).b.x)), -((~vec3<i32>(u_input.a, 32299i, 2147483647i) << (min(vec3<u32>(1u, 47196u, 15207u), vec3<u32>(4294967295u, 30918u, 4294967295u)) % vec3<u32>(32u))) & vec3<i32>(-u_input.a, ~u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a))), -_wgslsmith_dot_vec2_i32(vec2<i32>(func_6(vec3<i32>(u_input.a, 27638i, u_input.a), Struct_2(vec2<f32>(880f, -332f), vec2<u32>(6960u, 0u), global0[_wgslsmith_index_u32(108648u, 5u)]), Struct_4(15974u, vec2<i32>(u_input.a, u_input.a), -357f, vec4<u32>(35161u, 23835u, 78134u, 4294967295u)), Struct_2(vec2<f32>(var_0.x, var_0.x), vec2<u32>(0u, 8546u), global0[_wgslsmith_index_u32(81978u, 5u)])).b.x, 1i), func_4(u_input.a, Struct_3(false, var_0.zxw, 1u), func_6(vec3<i32>(u_input.a, 25398i, -1i), Struct_2(var_0.yy, vec2<u32>(78116u, 24102u), Struct_1(1i, vec3<i32>(u_input.a, -2147483647i, 27249i), -25305i, vec2<i32>(u_input.a, u_input.a), vec2<u32>(0u, 1u))), Struct_4(8498u, vec2<i32>(7366i, u_input.a), var_0.x, vec4<u32>(0u, 0u, 0u, 77998u)), Struct_2(var_0.xz, vec2<u32>(0u, 1u), Struct_1(u_input.a, vec3<i32>(-1i, u_input.a, u_input.a), u_input.a, vec2<i32>(1i, u_input.a), vec2<u32>(1u, 0u)))))), vec2<i32>(~(u_input.a & u_input.a), reverseBits(0i)) >> (select(~vec2<u32>(41449u, 17824u), vec2<u32>(_wgslsmith_clamp_u32(87329u, 4815u, 11211u), max(1u, 57952u)), all(vec2<bool>(true, true))) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_clamp_u32(firstLeadingBit(69946u), 20535u, 1u), 2439u));
    var var_2 = vec4<u32>(~1u, _wgslsmith_sub_u32(var_1.e.x, func_2(vec2<f32>(var_0.x, -1548f)).b.x), ~110808u, var_1.e.x);
    var var_3 = _wgslsmith_clamp_vec4_u32(countOneBits(~countOneBits(~vec4<u32>(var_2.x, 72087u, var_1.e.x, 87122u))), vec4<u32>(var_2.x, ~var_1.e.x, _wgslsmith_mult_u32(firstLeadingBit(var_1.e.x >> (12692u % 32u)), abs(~1u)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.e.x, 74020u, 49898u) & vec3<u32>(var_1.e.x, var_2.x, 28397u), min(var_2.zyy, vec3<u32>(var_1.e.x, 37822u, 1u))))), countOneBits(global1[_wgslsmith_index_u32(var_2.x & 2935u, 17u)]));
    let var_4 = reverseBits(1i);
    var_2 = vec4<u32>(4294967295u, func_6(vec3<i32>(u_input.a, _wgslsmith_mult_i32(~var_4, -34237i), _wgslsmith_div_i32(func_6(vec3<i32>(2147483647i, var_4, 1i), Struct_2(var_0.yx, var_2.zw, var_1), Struct_4(0u, var_1.b.xz, -675f, vec4<u32>(var_1.e.x, var_1.e.x, var_3.x, var_2.x)), Struct_2(var_0.xz, vec2<u32>(var_1.e.x, 16821u), global0[_wgslsmith_index_u32(6353u, 5u)])).b.x, func_6(vec3<i32>(u_input.a, -31466i, 59245i), Struct_2(var_0.zx, vec2<u32>(46065u, 0u), Struct_1(var_4, vec3<i32>(var_4, var_4, var_4), u_input.a, var_1.b.zx, var_2.xw)), Struct_4(4294967295u, var_1.b.xx, var_0.x, vec4<u32>(22258u, var_2.x, 0u, var_2.x)), Struct_2(vec2<f32>(-1194f, -353f), vec2<u32>(18585u, 65060u), Struct_1(0i, vec3<i32>(1i, -2147483647i, 2147483647i), var_1.b.x, var_1.d, vec2<u32>(66484u, var_3.x)))).b.x)), func_2(_wgslsmith_f_op_vec2_f32(var_0.zw * vec2<f32>(419f, var_0.x))), func_6(vec3<i32>(u_input.a << (var_2.x % 32u), firstTrailingBit(1i), var_4), func_2(_wgslsmith_f_op_vec2_f32(var_0.yy - var_0.yy)), Struct_4(4294967295u, _wgslsmith_sub_vec2_i32(var_1.b.yz, vec2<i32>(var_4, 47623i)), _wgslsmith_f_op_f32(f32(-1f) * -398f), global1[_wgslsmith_index_u32(1u, 17u)]), func_2(_wgslsmith_f_op_vec2_f32(exp2(var_0.zz)))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, var_0.x))))).d.x, ~var_3.x >> (2896u % 32u), abs(_wgslsmith_mod_u32(firstTrailingBit(countOneBits(var_3.x)), var_3.x)));
    let var_5 = -1439f;
    let var_6 = abs(vec3<u32>(max(4294967295u, abs(min(var_3.x, var_3.x))), 1u, (reverseBits(var_2.x) & ~var_3.x) | var_3.x));
    var var_7 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5, -950f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5, -2058f)) - _wgslsmith_f_op_vec2_f32(ceil(var_0.yz))))));
    let x = u_input.a;
    s_output = StorageBuffer((var_6.yz & ~firstTrailingBit(vec2<u32>(4294967295u, 38133u))) << ((~(~var_6.zx) | (var_2.yy << (var_3.yx % vec2<u32>(32u)))) % vec2<u32>(32u)), ~_wgslsmith_mult_vec4_u32(reverseBits(~global1[_wgslsmith_index_u32(var_1.e.x, 17u)]), _wgslsmith_mod_vec4_u32(firstTrailingBit(global1[_wgslsmith_index_u32(var_1.e.x, 17u)]), vec4<u32>(var_7.b.x, var_3.x, var_3.x, 4294967295u))), max(1u, ~(1u >> (var_3.x % 32u))) ^ 1u, var_1.e.x);
}

