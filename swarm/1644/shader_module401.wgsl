struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(i32(-2147483648), 24736i, 38910i, 62567i), 338f, vec2<u32>(89152u, 1u), 27200i);

var<private> global1: array<Struct_3, 5>;

var<private> global2: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(1i, i32(-2147483648), 33068i, -37645i), vec4<i32>(-1i, 0i, 63207i, -61077i), vec4<i32>(-1i, 1i, 0i, -55349i), vec4<i32>(15265i, 0i, -16354i, -4467i), vec4<i32>(-22786i, 16066i, 1i, 0i), vec4<i32>(i32(-2147483648), -3732i, -17028i, 40446i), vec4<i32>(2527i, -9924i, -31682i, 50816i), vec4<i32>(37741i, -1i, -1i, 0i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -1i), vec4<i32>(1i, 1i, 0i, 0i), vec4<i32>(0i, 0i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), -5763i, 62977i), vec4<i32>(4832i, 36811i, 3456i, i32(-2147483648)), vec4<i32>(-40233i, i32(-2147483648), -31684i, -6060i), vec4<i32>(i32(-2147483648), 5792i, -4199i, 2147483647i), vec4<i32>(-9243i, i32(-2147483648), 0i, 23244i), vec4<i32>(2147483647i, -1i, 2147483647i, 1i), vec4<i32>(0i, -4277i, -4966i, 1i), vec4<i32>(-1i, 1143i, -36892i, 1i), vec4<i32>(-12505i, 2147483647i, -1i, 24138i), vec4<i32>(-57220i, i32(-2147483648), 1i, -34398i), vec4<i32>(8508i, -31590i, -1i, -25402i), vec4<i32>(-1i, -1i, -14267i, 52454i), vec4<i32>(41150i, 1i, 1i, -20295i));

var<private> global3: vec2<i32>;

var<private> global4: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(vec2<bool>(true, false), vec3<f32>(813f, 1115f, 211f), false, Struct_2(vec4<i32>(-28185i, 2147483647i, 6681i, -38337i), 1054f, vec2<u32>(51808u, 4294967295u), 3589i)), Struct_3(vec2<bool>(false, true), vec3<f32>(-1455f, -787f, 1000f), true, Struct_2(vec4<i32>(34946i, 39023i, -1i, 72887i), 1000f, vec2<u32>(1u, 1u), -21850i)), Struct_3(vec2<bool>(true, true), vec3<f32>(-918f, 1361f, 2286f), true, Struct_2(vec4<i32>(0i, 252i, 0i, 1i), -1157f, vec2<u32>(73237u, 4294967295u), -44828i)), Struct_3(vec2<bool>(false, true), vec3<f32>(109f, -1016f, 101f), true, Struct_2(vec4<i32>(19326i, -36919i, 1i, -24919i), 680f, vec2<u32>(61939u, 68602u), 1i)), Struct_3(vec2<bool>(false, true), vec3<f32>(-293f, 1118f, -447f), false, Struct_2(vec4<i32>(2147483647i, 67095i, -30039i, -32623i), -1069f, vec2<u32>(11249u, 0u), 37386i)), Struct_3(vec2<bool>(false, true), vec3<f32>(-444f, -1512f, -1237f), true, Struct_2(vec4<i32>(-27861i, 2147483647i, -1i, 1i), -361f, vec2<u32>(0u, 13782u), -17882i)), Struct_3(vec2<bool>(false, false), vec3<f32>(-1000f, 692f, -295f), false, Struct_2(vec4<i32>(2683i, 1i, 29475i, 6229i), 1784f, vec2<u32>(0u, 31072u), 0i)), Struct_3(vec2<bool>(true, false), vec3<f32>(-404f, -1000f, 1000f), true, Struct_2(vec4<i32>(-36452i, i32(-2147483648), 41984i, 1i), -1186f, vec2<u32>(4294967295u, 0u), 0i)), Struct_3(vec2<bool>(true, true), vec3<f32>(-816f, 474f, -906f), true, Struct_2(vec4<i32>(5209i, i32(-2147483648), 58545i, 43142i), -2212f, vec2<u32>(28592u, 43083u), 36238i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_4) -> vec4<i32> {
    global4 = array<Struct_3, 9>();
    global3 = ~arg_0.b.wy;
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(u_input.b.yyz), abs(vec3<u32>(0u, global0.c.x, 4294967295u))), _wgslsmith_add_u32(u_input.a.x << (u_input.b.x % 32u), u_input.b.x))), global0.c.x, 7710u), 9u)];
    global4 = array<Struct_3, 9>();
    let var_1 = Struct_1(-1000f);
    return -var_0.d.a;
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_4(Struct_1(global0.b), _wgslsmith_mod_vec4_i32(-func_3(Struct_4(Struct_1(global0.b), global0.a)), ~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~44448u, ~global0.c.x), 24u)]));
    global3 = ~(~(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(16097i, 2147483647i), global0.a.yw, vec2<i32>(global0.d, var_0.b.x))) ^ (vec2<i32>(-1i) * -vec2<i32>(global3.x, global3.x))));
    global3 = vec2<i32>(select(firstLeadingBit(_wgslsmith_add_i32(-6775i, var_0.b.x)) | _wgslsmith_mult_i32(~global0.d, ~19155i), -global0.a.x, true), 1i);
    var var_1 = var_0.a;
    var var_2 = Struct_2(_wgslsmith_div_vec4_i32(-firstTrailingBit(vec4<i32>(global0.a.x, -1i, -2147483647i, global3.x)), ~countOneBits(min(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], vec4<i32>(2147483647i, global3.x, -20215i, global3.x)))), _wgslsmith_f_op_f32(-global0.b), vec2<u32>(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, u_input.a.x) ^ 5302u, global0.c.x)), _wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, -116i), var_0.b.x));
    return ~vec2<u32>(u_input.a.x, global0.c.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = countOneBits(49422i);
    var var_1 = u_input.a.x << (firstLeadingBit(_wgslsmith_sub_u32(abs(firstLeadingBit(arg_1.c.x)), countOneBits(arg_1.c.x >> (u_input.b.x % 32u)))) % 32u);
    var var_2 = u_input.c;
    global2 = array<vec4<i32>, 24>();
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(182f, _wgslsmith_f_op_f32(step(1100f, arg_0.b)), arg_0.b), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1494f, global0.b, arg_0.b) * vec3<f32>(880f, 710f, -1000f)))), true)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_0.b)), -300f, !any(vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), -188f)), -376f)));
    return Struct_2(max(~(~(-vec4<i32>(2453i, -2147483647i, -1i, global3.x))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(31600u), arg_0.c.x), 24u)]), -931f, ~firstTrailingBit(vec2<u32>(4294967295u >> (u_input.c % 32u), select(1u, arg_0.c.x, false))), ~(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global3.x, -5009i), arg_0.a.zyx)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global2 = array<vec4<i32>, 24>();
    let var_0 = func_4(Struct_2(~(-abs(vec4<i32>(global0.a.x, global3.x, global0.a.x, global0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), min(vec2<u32>(8099u, 4294967295u), func_2(global0.b)) | vec2<u32>(~u_input.b.x, arg_0 << (17401u % 32u)), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-8309i, global3.x, 1i) & vec3<i32>(global0.d, global3.x, global0.d)), global0.a.xxx)), Struct_2(vec4<i32>(reverseBits(0i), global3.x, global0.d, i32(-1i) * -6250i), global0.b, vec2<u32>(~max(41662u, global0.c.x), _wgslsmith_clamp_u32(arg_0, ~0u, countOneBits(u_input.c))), min(1i, i32(-1i) * -1i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 578f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 1099f))))));
    let var_2 = global4[_wgslsmith_index_u32(global0.c.x, 9u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_2.b);
    return Struct_2(var_0.a, 320f, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u ^ var_2.d.c.x, ~1u) & _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, global0.c.x), _wgslsmith_mod_vec2_u32(var_2.d.c, vec2<u32>(global0.c.x, u_input.b.x))), u_input.b.zz), var_2.d.a.x | global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-555f);
    global0 = func_1(~_wgslsmith_add_u32(~_wgslsmith_mult_u32(global0.c.x, 63531u), _wgslsmith_div_u32(u_input.b.x, ~u_input.a.x)));
    let var_1 = -13067i;
    var var_2 = global2[_wgslsmith_index_u32(~u_input.c, 24u)];
    let var_3 = Struct_4(Struct_1(1000f), -_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(16354i, 0i), 0i, ~(-2147483647i), ~(-1i)), reverseBits(global2[_wgslsmith_index_u32(~global0.c.x, 24u)])));
    global2 = array<vec4<i32>, 24>();
    global3 = max(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(func_4(func_1(38164u), func_4(Struct_2(global0.a, var_0.a, global0.c, var_1), Struct_2(global2[_wgslsmith_index_u32(27189u, 24u)], -332f, u_input.b.wx, var_2.x))).a.zx, firstTrailingBit(~global0.a.yz)), ~(~(var_3.b.yw << (global0.c % vec2<u32>(32u))))), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, var_3.b.x, global3.x, 0i), vec4<i32>(0i, -1i, 2355i, var_2.x)) & (-1i >> (_wgslsmith_dot_vec2_u32(u_input.b.wz, global0.c) % 32u)), _wgslsmith_clamp_i32(10953i, -1i, ~var_1 << ((global0.c.x | 0u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(55359u, -5706i, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b))))), _wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(var_3.a.a + 688f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.b, global0.b))))));
}

