struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(3563u, Struct_1(true, vec3<i32>(10747i, 2147483647i, -3351i), -41776i, vec3<i32>(2147483647i, 11756i, 1i))), Struct_2(0u, Struct_1(true, vec3<i32>(-9473i, 0i, 20251i), 97575i, vec3<i32>(-7477i, -55392i, -30676i))), Struct_2(3272u, Struct_1(false, vec3<i32>(46431i, 57795i, 1i), 2147483647i, vec3<i32>(28614i, 2147483647i, 9817i))), Struct_2(1u, Struct_1(true, vec3<i32>(0i, 17039i, -12142i), 2147483647i, vec3<i32>(0i, -6780i, 1i))), Struct_2(653u, Struct_1(true, vec3<i32>(25007i, -24488i, 0i), 2527i, vec3<i32>(1i, 2147483647i, i32(-2147483648)))), Struct_2(6243u, Struct_1(false, vec3<i32>(-52151i, i32(-2147483648), -40455i), -42174i, vec3<i32>(-78975i, -39381i, 2147483647i))), Struct_2(24107u, Struct_1(true, vec3<i32>(1i, -5837i, i32(-2147483648)), 2147483647i, vec3<i32>(-37696i, 71505i, 0i))), Struct_2(4294967295u, Struct_1(false, vec3<i32>(22658i, -18475i, 1i), i32(-2147483648), vec3<i32>(-12254i, 1i, -1i))), Struct_2(1u, Struct_1(true, vec3<i32>(-329i, i32(-2147483648), 13423i), i32(-2147483648), vec3<i32>(45473i, 48207i, -4975i))), Struct_2(0u, Struct_1(true, vec3<i32>(-13806i, 1i, 0i), i32(-2147483648), vec3<i32>(-34614i, -13583i, -9283i))), Struct_2(1u, Struct_1(true, vec3<i32>(-21370i, i32(-2147483648), -22883i), 1i, vec3<i32>(i32(-2147483648), i32(-2147483648), 50481i))), Struct_2(36038u, Struct_1(false, vec3<i32>(23493i, -2322i, 2147483647i), 26134i, vec3<i32>(-23273i, 0i, 0i))), Struct_2(37767u, Struct_1(true, vec3<i32>(1i, -8127i, -1i), 0i, vec3<i32>(i32(-2147483648), -1i, 24291i))), Struct_2(32631u, Struct_1(true, vec3<i32>(2147483647i, 37271i, 19598i), -22463i, vec3<i32>(0i, 0i, 1i))), Struct_2(4294967295u, Struct_1(true, vec3<i32>(1i, 23825i, -6788i), 35567i, vec3<i32>(-21268i, 50125i, i32(-2147483648)))), Struct_2(33904u, Struct_1(false, vec3<i32>(5064i, -45831i, 15352i), -7860i, vec3<i32>(i32(-2147483648), 18435i, -32450i))), Struct_2(10076u, Struct_1(false, vec3<i32>(16476i, -33766i, 1i), i32(-2147483648), vec3<i32>(-152i, -1505i, 18183i))), Struct_2(1u, Struct_1(false, vec3<i32>(-19286i, i32(-2147483648), -10487i), -36767i, vec3<i32>(1i, 1i, 16810i))), Struct_2(69233u, Struct_1(false, vec3<i32>(i32(-2147483648), -50141i, i32(-2147483648)), i32(-2147483648), vec3<i32>(39059i, -3594i, 2147483647i))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>) -> i32 {
    global0 = array<Struct_2, 19>();
    var var_0 = arg_0;
    let var_1 = ~u_input.c << (0u % 32u);
    let var_2 = ~(~4294967295u);
    let var_3 = arg_0.a;
    return 2147483647i;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(all(select(vec4<bool>(all(vec2<bool>(false, false)), true, true, all(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true))))), _wgslsmith_mod_vec3_i32(-vec3<i32>(-7767i, -u_input.a.x, func_3(Struct_1(true, u_input.d, -1i, vec3<i32>(u_input.a.x, u_input.d.x, u_input.a.x)), vec3<f32>(660f, 128f, 1294f), vec3<u32>(1u, 22745u, 0u))), u_input.d), (i32(-1i) * -u_input.d.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c, ~u_input.c), firstLeadingBit(select(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.c, u_input.b), true))) % 32u), ~reverseBits(u_input.d));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-1805f * 827f), -656f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1275f))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, -2046f))), -1505f)) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.x, -186f))), vec3<i32>(16259i, ~(~(-2147483647i)), 2147483647i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.b.x, -2807i, u_input.d.x, 0i), vec4<i32>(37031i, -18670i, 34768i, 1i), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)) >> (~vec4<u32>(12439u, 8980u, u_input.b, 38062u) % vec4<u32>(32u)), vec4<i32>(-1i, i32(-1i) * -2147483647i, func_3(var_0, vec3<f32>(103f, var_1.x, var_1.x), vec3<u32>(31925u, u_input.b, 0u)), ~var_0.d.x)) | max(u_input.a.x, var_0.b.x), vec3<i32>(u_input.a.x, u_input.d.x, u_input.a.x));
    global0 = array<Struct_2, 19>();
    let var_3 = select(0i, abs(u_input.a.x) | abs(func_3(var_2, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, var_1.x, 1409f))), ~vec3<u32>(0u, 61135u, u_input.b))), var_0.a);
    return select(reverseBits(~(~vec2<u32>(u_input.b, 1u))) ^ ((~vec2<u32>(u_input.c, u_input.c) & (vec2<u32>(u_input.c, u_input.c) & vec2<u32>(u_input.b, u_input.c))) & ~vec2<u32>(u_input.c, u_input.c)), vec2<u32>(u_input.b, ~85402u ^ u_input.c) >> (vec2<u32>(u_input.b >> ((0u | u_input.b) % 32u), 0u) % vec2<u32>(32u)), vec2<bool>(var_0.a, ~(~var_0.b.x) < ~(~var_3)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    return Struct_1(arg_2.b.a, abs(-u_input.d), arg_1.b.b.x, ~(~_wgslsmith_div_vec3_i32(arg_1.b.d | vec3<i32>(-48917i, arg_2.b.c, u_input.a.x), vec3<i32>(arg_1.b.b.x, arg_2.b.c, -20375i))));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global0 = array<Struct_2, 19>();
    var var_0 = 54828u;
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.c, 70048u), vec2<u32>(u_input.b, 0u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(71826u, 6596u), min(vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.b, u_input.b)))) | vec2<u32>(_wgslsmith_add_u32(min(u_input.c, 49768u), u_input.b), ~4294967295u), ~_wgslsmith_mod_vec2_u32(max(vec2<u32>(34412u, 0u), vec2<u32>(20351u, 1u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), countOneBits(vec2<u32>(4294967295u, u_input.c))));
    let var_1 = func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(func_2(), min(vec2<u32>(u_input.c, 11982u), vec2<u32>(u_input.c, u_input.c))), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 23404u), vec2<u32>(0u, u_input.c)), ~(~u_input.c)), _wgslsmith_sub_vec4_u32(~vec4<u32>(14271u, 7248u, u_input.c, u_input.b) << (firstLeadingBit(vec4<u32>(u_input.c, 62265u, 7448u, u_input.b)) % vec4<u32>(32u)), vec4<u32>(4294967295u, 4294967295u, u_input.c, 19105u))), Struct_2(~(~(~u_input.c)), Struct_1((u_input.b & 0u) >= ~4294967295u, arg_0.yzy, max(_wgslsmith_mult_i32(arg_0.x, arg_0.x), countOneBits(82i)), u_input.d)), Struct_2(_wgslsmith_mod_u32(~u_input.b, firstTrailingBit(1u)) & u_input.b, Struct_1(true, select(arg_0.yzx, max(vec3<i32>(u_input.d.x, 0i, u_input.d.x), u_input.d), vec3<bool>(false, true, true)), 1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(57958u, u_input.c, 1u, u_input.b), vec4<u32>(1u, 1u, u_input.b, u_input.c)) % 32u), min(u_input.d, vec3<i32>(u_input.d.x, arg_0.x, 2147483647i)) ^ select(vec3<i32>(u_input.a.x, 2147483647i, arg_0.x), u_input.d, true))));
    let var_2 = vec4<i32>(reverseBits(3307i), _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.d) | -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 1107i), vec3<i32>(-37033i, -20434i, u_input.d.x)), arg_0.xwy << (vec3<u32>(17742u, u_input.c, u_input.c) % vec3<u32>(32u))), -1i, u_input.a.x);
    return firstLeadingBit(~(-2147483647i));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    var var_0 = !vec4<bool>(func_4(_wgslsmith_mod_u32(~arg_3.a, 20690u >> (0u % 32u)), Struct_2(u_input.b >> (87385u % 32u), arg_3.b), Struct_2(558u, func_4(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 19u)], Struct_2(arg_3.a, Struct_1(true, vec3<i32>(-1i, 2147483647i, arg_3.b.c), -25750i, vec3<i32>(arg_2, u_input.d.x, 5335i)))))).a, arg_0, arg_3.b.a & (1i != ~u_input.a.x), true);
    let var_1 = vec3<i32>(-1i) * -(~vec3<i32>(0i, _wgslsmith_mult_i32(arg_3.b.b.x, -46117i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, 1i, arg_3.b.d.x), vec3<i32>(-5254i, 36575i, -45704i))));
    let var_2 = 2147483647i;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -247f;
    var var_1 = func_5(true, func_1(vec4<i32>(u_input.a.x, ~(-13532i), _wgslsmith_mult_i32(min(u_input.d.x, -48218i), firstLeadingBit(u_input.a.x)), u_input.a.x)), 13372i, Struct_2(~4294967295u, func_4(~1u, global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(1u, 19u)])));
    let var_2 = ~countOneBits(~vec4<u32>(4294967295u, 1u, u_input.c, u_input.c) >> (vec4<u32>(1u, ~1u, 87492u, 54893u) % vec4<u32>(32u)));
    let var_3 = abs(~(-(~(-vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.d.x)))));
    var var_4 = 2147483647i;
    var var_5 = var_2.wx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2037f)) - 1486f), -997f, _wgslsmith_f_op_f32(f32(-1f) * -756f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1028f * 917f) - _wgslsmith_f_op_f32(select(-277f, 1987f, true)))))));
}

