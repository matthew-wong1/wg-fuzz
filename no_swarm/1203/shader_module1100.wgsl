struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(189f, -1205f), vec2<f32>(-478f, -332f), vec2<f32>(-712f, 535f), vec2<f32>(1869f, -1458f), vec2<f32>(-1193f, 228f), vec2<f32>(1125f, 290f), vec2<f32>(181f, 444f), vec2<f32>(-1000f, -1090f), vec2<f32>(1462f, -1231f), vec2<f32>(-901f, 2349f), vec2<f32>(1048f, 1126f), vec2<f32>(1000f, -1130f), vec2<f32>(-444f, -1130f), vec2<f32>(609f, 539f), vec2<f32>(-614f, -666f), vec2<f32>(-529f, 497f), vec2<f32>(2055f, -845f), vec2<f32>(1840f, 1247f), vec2<f32>(-914f, 1066f), vec2<f32>(-356f, -1000f));

var<private> global1: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-1i, 13231i), vec2<i32>(2147483647i, -17977i), vec2<i32>(-1i, 90763i), vec2<i32>(-71832i, 1i), vec2<i32>(-41438i, 15473i), vec2<i32>(38250i, 12143i), vec2<i32>(3851i, 2147483647i), vec2<i32>(24809i, 1i), vec2<i32>(-3156i, 1i), vec2<i32>(-28675i, -27602i), vec2<i32>(62385i, 18832i), vec2<i32>(2147483647i, 555i), vec2<i32>(-283i, 15652i), vec2<i32>(2147483647i, 73192i), vec2<i32>(i32(-2147483648), -30465i), vec2<i32>(-24619i, 0i), vec2<i32>(36787i, 1i), vec2<i32>(-29132i, 0i), vec2<i32>(44429i, 2147483647i), vec2<i32>(-1i, 11091i), vec2<i32>(2147483647i, 14767i), vec2<i32>(0i, i32(-2147483648)));

var<private> global2: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> vec3<u32> {
    var var_0 = arg_0.a.xx;
    var var_1 = arg_0.a;
    global2 = arg_0;
    global1 = array<vec2<i32>, 22>();
    var var_2 = _wgslsmith_f_op_f32(floor(-1380f));
    return vec3<u32>(58508u, arg_1, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_1, 0u), ~1u, 19862u, 4294967295u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 108347u, arg_1), vec3<u32>(arg_1, 41824u, arg_1)), ~12286u, ~4294967295u, 1u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_div_f32(arg_3, -1000f);
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3)));
    global0 = array<vec2<f32>, 20>();
    let var_1 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), firstTrailingBit(_wgslsmith_mult_i32(global2.a.x, -54699i)), -abs(u_input.a))), Struct_1(vec3<i32>(u_input.b.x, ~(-2147483647i), u_input.b.x) >> ((~arg_2 ^ _wgslsmith_mod_vec3_u32(arg_2, arg_2)) % vec3<u32>(32u))));
    global0 = array<vec2<f32>, 20>();
    return 1i;
}

fn func_2() -> i32 {
    global2 = Struct_1(vec3<i32>(42578i, ~(-10754i), -(~_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, global2.a.x))));
    global2 = Struct_1(global2.a);
    let var_0 = 16385i;
    global2 = Struct_1(~_wgslsmith_clamp_vec3_i32(-abs(vec3<i32>(4081i, u_input.a, 57200i)), vec3<i32>(firstLeadingBit(-2147483647i), func_3(4294967295u, true, vec3<u32>(1u, 1u, 1u), -1635f), 3482i), min(-vec3<i32>(-1i, 2147483647i, var_0), _wgslsmith_sub_vec3_i32(vec3<i32>(-10931i, u_input.b.x, 70831i), global2.a))));
    let var_1 = Struct_1(vec3<i32>(-1i) * -vec3<i32>(abs(36775i), var_0 >> (1u % 32u), abs(u_input.a)));
    return -var_1.a.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec2<f32>, 20>();
    global1 = array<vec2<i32>, 22>();
    global0 = array<vec2<f32>, 20>();
    global1 = array<vec2<i32>, 22>();
    global0 = array<vec2<f32>, 20>();
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(5687u, 6290u, 4294967295u), vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(0u, 60301u, 131438u), ~vec3<u32>(1143u, 4276u, 121520u)) ^ (vec3<u32>(1u, 1u, 1u) >> ((func_1(Struct_1(vec3<i32>(2147483647i, -30568i, global2.a.x)), 1u, Struct_2(Struct_1(vec3<i32>(global2.a.x, -3581i, global2.a.x)), Struct_1(global2.a)), false) & ~vec3<u32>(44162u, 4294967295u, 0u)) % vec3<u32>(32u))), select(vec4<i32>(reverseBits(u_input.a), _wgslsmith_clamp_i32(u_input.a, _wgslsmith_clamp_i32(-50841i, u_input.b.x, -50665i), global2.a.x & -33707i), func_2(), u_input.a & u_input.a), vec4<i32>(~49149i, -7731i, ~(-4766i), 17157i), any(vec2<bool>(true, true))), Struct_2(Struct_1(vec3<i32>(u_input.b.x, -u_input.b.x, _wgslsmith_mult_i32(-20738i, u_input.a))), Struct_1(vec3<i32>(~u_input.a, u_input.a, -46268i))));
    global1 = array<vec2<i32>, 22>();
    let var_0 = Struct_2(func_4(firstTrailingBit(firstTrailingBit(vec3<u32>(4294967295u, 78858u, 40315u))), reverseBits(vec4<i32>(abs(-2147483647i), -1i, 8795i, 1i)), Struct_2(func_4(firstTrailingBit(vec3<u32>(721u, 1u, 28347u)), vec4<i32>(1i, 2147483647i, -1i, global2.a.x) >> (vec4<u32>(111427u, 1u, 0u, 49956u) % vec4<u32>(32u)), Struct_2(Struct_1(u_input.b), Struct_1(vec3<i32>(-2147483647i, 2147483647i, global2.a.x)))), func_4(vec3<u32>(1u, 1u, 1u), vec4<i32>(u_input.a, global2.a.x, u_input.b.x, global2.a.x), Struct_2(Struct_1(global2.a), Struct_1(u_input.b))))), func_4(abs(vec3<u32>(_wgslsmith_mod_u32(20192u, 24240u), 28606u, 89318u)), min(vec4<i32>(u_input.a, _wgslsmith_div_i32(global2.a.x, -12763i), u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, global2.a.x, u_input.a), vec4<i32>(-27947i, -2147483647i, u_input.b.x, 37356i))), _wgslsmith_sub_vec4_i32(-vec4<i32>(global2.a.x, global2.a.x, u_input.a, -18906i), abs(vec4<i32>(-21292i, -1i, u_input.b.x, global2.a.x)))), Struct_2(func_4(max(vec3<u32>(0u, 16018u, 11559u), vec3<u32>(74896u, 0u, 1u)), ~vec4<i32>(-1i, u_input.b.x, global2.a.x, global2.a.x), Struct_2(Struct_1(vec3<i32>(1i, u_input.a, 28006i)), Struct_1(vec3<i32>(-1i, -1i, global2.a.x)))), func_4(vec3<u32>(0u, 4294967295u, 22043u), reverseBits(vec4<i32>(-1i, -26229i, u_input.a, 2147483647i)), Struct_2(Struct_1(u_input.b), Struct_1(global2.a))))));
    let var_1 = 202f;
    var var_2 = true;
    let var_3 = vec3<u32>(4294967295u, abs(firstLeadingBit(51272u)), ~0u);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -792f) + 716f);
    var_4 = 290f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.x), vec2<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-27770i, -20762i, -2147483647i), vec3<i32>(0i, global2.a.x, 36490i))), global2.a.x), ~var_0.b.a.x), var_3.x, max(firstTrailingBit(~(-vec3<i32>(-35117i, -17615i, 16693i))), global2.a), vec3<f32>(var_1, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(step(var_1, 681f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2413f - var_1) * -532f) * -1044f)));
}

