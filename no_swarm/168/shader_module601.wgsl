struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(-1401i, vec2<u32>(47770u, 173u)), Struct_3(4315i, vec2<u32>(0u, 4294967295u)), Struct_3(-2177i, vec2<u32>(43182u, 1u)), Struct_3(46440i, vec2<u32>(44305u, 8399u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    let var_0 = Struct_2(arg_2, arg_2, _wgslsmith_mod_i32(~3983i, u_input.c), !(!arg_1));
    global2 = array<Struct_3, 4>();
    global2 = array<Struct_3, 4>();
    var var_1 = false;
    var var_2 = arg_2;
    return u_input.c & (firstLeadingBit(-2147483647i) | (-global1.x | _wgslsmith_add_i32(var_2.e.x, -38401i)));
}

fn func_2(arg_0: i32) -> f32 {
    global0 = 2147483647i;
    global1 = vec4<i32>(-_wgslsmith_sub_i32(countOneBits(func_3(39398u, true, Struct_1(0u, true, 1154f, vec3<bool>(false, true, true), vec3<i32>(u_input.c, u_input.c, 0i)), Struct_3(u_input.d.x, u_input.a))), _wgslsmith_dot_vec2_i32(-global1.yw, _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, 2147483647i), vec2<i32>(2147483647i, 0i)))), -38659i, _wgslsmith_clamp_i32(arg_0, reverseBits(-arg_0), ~(-2147483647i >> ((0u & u_input.a.x) % 32u))), firstLeadingBit(min(min(countOneBits(global1.x), -u_input.d.x), u_input.c)));
    global0 = 0i;
    global2 = array<Struct_3, 4>();
    global2 = array<Struct_3, 4>();
    return 1701f;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(387f + -983f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(611f)))) * -1214f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(35727i))))), -213f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, 1077f, 1114f, -2245f) * vec4<f32>(286f, 441f, -926f, 297f)))))));
    global1 = _wgslsmith_mult_vec4_i32(-select(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-43652i, global1.x, global1.x, u_input.c), vec4<i32>(1765i, 1i, arg_0.a, -1i)), select(vec4<i32>(arg_0.a, 1601i, arg_0.a, -2653i), vec4<i32>(global1.x, -17018i, -87600i, arg_0.a), true), vec4<i32>(global1.x, -1i, -1i, 699i)), vec4<i32>(u_input.d.x, 1i, _wgslsmith_mult_i32(arg_0.a, 2147483647i), 2147483647i), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true)), max(vec4<i32>(_wgslsmith_clamp_i32(arg_0.a, -53911i, -3299i), u_input.c, 10944i, _wgslsmith_mod_i32(-2147483647i, 12382i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(17699i, global1.x, 1i, 50285i), vec4<i32>(-15777i, arg_0.a, 3004i, -22485i), vec4<i32>(u_input.d.x, u_input.d.x, 13059i, -66479i)), vec4<i32>(arg_0.a, 2147483647i, -1i, global1.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 17559i, -28237i, 3137i), vec4<i32>(u_input.c, u_input.d.x, global1.x, -40339i)))) ^ _wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(-21143i, -1i, -9261i, 48256i)), min(~vec4<i32>(arg_0.a, u_input.d.x, u_input.d.x, u_input.c), vec4<i32>(2147483647i, arg_0.a, 2147483647i, 0i))));
    var var_1 = Struct_1(4294967295u, any(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), var_0.x < var_0.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)))) + _wgslsmith_f_op_f32(step(-151f, _wgslsmith_f_op_f32(-var_0.x))))), vec3<bool>(true, true, true), ~u_input.d);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-55525i)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 175f)), -1560f))));
    return global2[_wgslsmith_index_u32(~var_2.b.x, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.a.x >> (~u_input.b % 32u)), _wgslsmith_add_u32(~u_input.a.x, u_input.b)), 4u)]);
    global2 = array<Struct_3, 4>();
    global2 = array<Struct_3, 4>();
    var_0 = func_1(Struct_3(-global1.x, ~vec2<u32>(u_input.b, 1u) | select(var_0.b, ~var_0.b, vec2<bool>(false, false))));
    var var_1 = global1.yyw;
    global1 = vec4<i32>(var_0.a, 1i, ~min(-var_1.x, ~2147483647i) | func_1(func_1(func_1(Struct_3(u_input.d.x, u_input.a)))).a, -func_3(firstLeadingBit(~var_0.b.x), true, Struct_1(113871u, true, _wgslsmith_f_op_f32(f32(-1f) * -1160f), vec3<bool>(true, true, true), abs(vec3<i32>(-15226i, 2147483647i, u_input.c))), func_1(Struct_3(0i, vec2<u32>(u_input.a.x, 8132u)))));
    global1 = ~vec4<i32>(var_0.a, ~u_input.d.x, -5204i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-global1.zzz, firstLeadingBit(vec3<i32>(-2147483647i, global1.x, var_1.x))), reverseBits(min(u_input.c, var_1.x))));
    var_1 = vec3<i32>(-2434i, _wgslsmith_sub_i32(~u_input.d.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, u_input.d.x, -2147483647i)), vec3<i32>(global1.x, func_3(var_0.b.x, true, Struct_1(1u, false, -1185f, vec3<bool>(true, true, true), vec3<i32>(0i, -59965i, u_input.d.x)), Struct_3(-1i, vec2<u32>(30811u, 34808u))), ~global1.x))), -(~firstTrailingBit(_wgslsmith_sub_i32(var_1.x, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1526f + _wgslsmith_f_op_f32(step(-751f, -1734f))), _wgslsmith_div_f32(-963f, _wgslsmith_f_op_f32(ceil(-1771f))), -19236i != max(-37072i, var_1.x))), 2320f));
}

