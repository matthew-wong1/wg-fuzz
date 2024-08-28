struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(-142f, vec2<u32>(54791u, 62536u), vec4<i32>(-1i, 22375i, -2161i, 9614i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> u32 {
    global0 = abs(vec2<u32>(firstLeadingBit(1u >> (global0.x % 32u)), _wgslsmith_mult_u32(~4294967295u, ~max(global0.x, global1.b.x))));
    let var_0 = -15075i;
    let var_1 = arg_1;
    global0 = firstTrailingBit(reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(max(var_1.a.b, vec2<u32>(4294967295u, arg_1.c.b.x)), ~vec2<u32>(0u, 61791u)), ~global1.b)));
    global0 = ~(~arg_1.a.b);
    return _wgslsmith_mult_u32(countOneBits(~13377u), _wgslsmith_add_u32(~(~(~u_input.c)), ~4294967295u << (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(5198u, var_1.c.b.x, var_1.a.b.x, u_input.b), vec4<u32>(var_1.c.b.x, 0u, 1u, 45158u)), vec4<u32>(global1.b.x, 4294967295u, 4294967295u, 1u)) % 32u)));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_1(-946f, global1.b, vec4<i32>(1i, _wgslsmith_sub_i32(~10880i & u_input.a.x, ~(-1i)), -_wgslsmith_mult_i32(1i, select(0i, -10451i, true)), global1.c.x & 24959i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(295f)));
    global1 = var_0;
    global0 = ~select(vec2<u32>(4294967295u, ~firstLeadingBit(global0.x)), vec2<u32>(select(abs(42869u), 90677u ^ var_0.b.x, true), firstLeadingBit(38078u)), vec2<bool>(true, true));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(global1.b.x, 52009u >> (_wgslsmith_sub_u32(countOneBits(global1.b.x), _wgslsmith_sub_u32(83733u, 1567u)) % 32u)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, 0u), vec3<u32>(0u, 1u, 30220u))) << (~(reverseBits(29676u) >> (~var_0.b.x % 32u)) % 32u));
    return vec2<bool>(any(vec3<bool>(true, true, true)), true);
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = select(u_input.a.x, 1i, !any(vec2<bool>(true, arg_0)));
    let var_1 = u_input.a.x;
    global1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a)) - global1.a))), select(vec2<u32>(abs(global0.x << (u_input.b % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(50786u, global1.b.x), vec2<u32>(11255u, 24533u))), reverseBits(~select(global1.b, vec2<u32>(4294967295u, global1.b.x), arg_0)), (-31531i != _wgslsmith_clamp_i32(var_1, var_0, u_input.a.x)) && true), select(-(~vec4<i32>(var_1, -6939i, 44954i, global1.c.x)), global1.c, false));
    let var_2 = -393f;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f + -716f)), _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, global0.x, global1.b.x), vec4<u32>(20871u, 1u, global1.b.x, u_input.b))), ~global1.b), vec4<i32>(1i, 1i, ~(var_0 << (8089u % 32u)), -26711i)), Struct_1(-1343f, select(countOneBits(global1.b), ~_wgslsmith_clamp_vec2_u32(global1.b, vec2<u32>(global1.b.x, u_input.c), global1.b), func_4(func_3(vec2<i32>(0i, 15953i), Struct_2(Struct_1(-571f, global1.b, global1.c), Struct_1(956f, vec2<u32>(global1.b.x, 4294967295u), vec4<i32>(u_input.a.x, global1.c.x, -11969i, u_input.a.x)), Struct_1(var_2, global1.b, global1.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2)))), global1.c), Struct_1(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(step(-691f, _wgslsmith_f_op_f32(floor(-1306f))))), ~(~max(vec2<u32>(1u, 0u), global1.b)), vec4<i32>(9471i, -1i, ~abs(18727i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0, 12855i), vec3<i32>(var_1, var_1, global1.c.x)), -2147483647i, global1.c.x >> (4294967295u % 32u)))));
    return ~global0.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    global1 = arg_1;
    var var_0 = arg_0;
    var_0 = firstLeadingBit(~firstLeadingBit(vec3<u32>(func_2(false), 0u, _wgslsmith_sub_u32(arg_1.b.x, 37453u))));
    global1 = Struct_1(401f, vec2<u32>(44427u, global0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -arg_1.c, firstLeadingBit(max(vec4<i32>(-2147483647i, -15221i, u_input.a.x, 7403i), _wgslsmith_sub_vec4_i32(global1.c, global1.c))), -vec4<i32>(2147483647i, 1i, 2147483647i, arg_1.c.x)));
    let var_1 = true;
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec3<i32>(select(global1.c.x, -_wgslsmith_dot_vec3_i32(arg_0.c.zyx, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -37464i, global1.c.x), vec3<i32>(u_input.a.x, 1i, u_input.a.x))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)))), func_1(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, global0.x, global0.x), vec3<u32>(4294967295u, 3978u, 0u)), reverseBits(vec3<u32>(u_input.c, 17528u, arg_0.b.x))), vec3<u32>(14661u, 6133u, global0.x | global1.b.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))), reverseBits(~global1.b), vec4<i32>(2147483647i, 15846i, -3621i, 28057i))).c.x, -1i);
    global1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(select(arg_0.a, -128f, false))), ~min(func_1(vec3<u32>(13936u, arg_0.b.x, arg_0.b.x), Struct_1(arg_0.a, global1.b, vec4<i32>(var_0.x, 11627i, u_input.a.x, 2147483647i))).b, firstLeadingBit(vec2<u32>(arg_0.b.x, 64914u))), ~(~arg_0.c));
    global0 = vec2<u32>(global1.b.x ^ ~func_1(vec3<u32>(global0.x, arg_0.b.x, 24857u) << (vec3<u32>(global1.b.x, global0.x, u_input.b) % vec3<u32>(32u)), Struct_1(global1.a, vec2<u32>(0u, arg_0.b.x), arg_0.c)).b.x, ~abs(38338u));
    global0 = vec2<u32>(global0.x, ~(global0.x ^ abs(4294967295u)));
    let var_1 = 2147483647i == ~(-arg_0.c.x);
    return Struct_2(arg_0, arg_0, Struct_1(636f, vec2<u32>(firstLeadingBit(abs(global0.x)), abs(92615u)), select(~vec4<i32>(u_input.a.x, arg_0.c.x, arg_0.c.x, 1i), -global1.c, (-434f >= arg_0.a) | true)));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global0 = func_5(arg_0.c).b.b;
    let var_0 = select(vec4<bool>(121f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-124f)) - _wgslsmith_f_op_f32(-arg_2.a)), (_wgslsmith_f_op_f32(f32(-1f) * -1000f) != _wgslsmith_f_op_f32(sign(global1.a))) & true, !(-777f >= _wgslsmith_f_op_f32(global1.a + arg_0.c.a)), true || any(vec4<bool>(true, true, true, true))), select(!vec4<bool>(true, arg_0.a.b.x > arg_0.b.b.x, true, true), vec4<bool>(true, false, any(vec4<bool>(false, false, true, true)), false), select(true, all(vec3<bool>(true, true, true)), true)), vec4<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), false, (_wgslsmith_mult_i32(global1.c.x, -2518i) >> (func_3(global1.c.zw, Struct_2(arg_0.c, arg_2, Struct_1(arg_2.a, vec2<u32>(55589u, 0u), vec4<i32>(u_input.a.x, -2147483647i, 0i, -1i)))) % 32u)) > ~0i, true));
    let var_1 = func_1(vec3<u32>(global1.b.x, (global1.b.x & arg_2.b.x) >> (arg_0.a.b.x % 32u), arg_0.c.b.x), func_1(vec3<u32>(~0u, ~_wgslsmith_div_u32(31013u, arg_2.b.x), arg_1.x), func_1(~vec3<u32>(arg_2.b.x, 1u, 4294967295u) >> (abs(vec3<u32>(8630u, arg_2.b.x, 0u)) % vec3<u32>(32u)), func_1(~vec3<u32>(1u, arg_2.b.x, 65778u), Struct_1(1000f, global1.b, arg_2.c)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = vec2<i32>(var_1.c.x, -2147483647i);
    return func_5(arg_0.c).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(_wgslsmith_div_vec3_u32(vec3<u32>(45692u, 4294967295u, u_input.b), vec3<u32>(global0.x, 1u, global1.b.x)), Struct_1(_wgslsmith_f_op_f32(-global1.a), ~global1.b, ~global1.c))), global1.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(865f + global1.a)), countOneBits(select(vec2<u32>(global0.x, global0.x), vec2<u32>(29434u, global1.b.x), vec2<bool>(false, true)) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(0u, 1u))), global1.c));
    var var_1 = select(select(vec3<bool>(!all(vec2<bool>(false, true)), !any(vec3<bool>(false, false, true)), select(true, true, true) == all(vec4<bool>(false, true, false, false))), vec3<bool>(true, any(vec3<bool>(true, true, true)), true), false), vec3<bool>(any(vec2<bool>(true, true)), !(!all(vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true))), true);
    var_1 = select(vec3<bool>(all(vec2<bool>(true, true)) && false, false, !var_1.x), vec3<bool>(true == !(global1.a <= 2633f), var_1.x, var_1.x), !(!select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(true, false, var_1.x), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, false), var_1.x))));
    global0 = vec2<u32>(_wgslsmith_add_u32(~firstTrailingBit(max(1u, 18593u)), 4294967295u), 23700u);
    let var_2 = Struct_2(func_6(func_5(Struct_1(_wgslsmith_f_op_f32(-global1.a), select(global1.b, vec2<u32>(var_0.b.x, 36173u), vec2<bool>(var_1.x, var_1.x)), func_1(vec3<u32>(4294967295u, var_0.b.x, u_input.b), Struct_1(global1.a, var_0.b, global1.c)).c)), vec2<u32>(~abs(u_input.c), ~25921u), func_1(~vec3<u32>(26636u, u_input.b, 4294967295u), func_1(countOneBits(vec3<u32>(global1.b.x, global0.x, 3057u)), Struct_1(global1.a, vec2<u32>(4294967295u, 0u), vec4<i32>(3720i, -2147483647i, -2147483647i, 0i))))), func_6(Struct_2(func_5(Struct_1(var_0.a, global1.b, var_0.c)).b, func_6(func_5(Struct_1(623f, vec2<u32>(95531u, var_0.b.x), vec4<i32>(14854i, -2147483647i, u_input.a.x, var_0.c.x))), var_0.b | vec2<u32>(20907u, global0.x), Struct_1(-427f, global1.b, vec4<i32>(-10638i, var_0.c.x, u_input.a.x, -21219i))), func_6(Struct_2(Struct_1(-2302f, vec2<u32>(4294967295u, global0.x), vec4<i32>(var_0.c.x, u_input.a.x, 36245i, 6340i)), Struct_1(global1.a, global1.b, vec4<i32>(-1i, 2147483647i, u_input.a.x, 8690i)), Struct_1(-700f, vec2<u32>(global1.b.x, 4294967295u), global1.c)), vec2<u32>(0u, u_input.c) << (var_0.b % vec2<u32>(32u)), func_6(Struct_2(Struct_1(-1000f, var_0.b, vec4<i32>(global1.c.x, var_0.c.x, var_0.c.x, -27523i)), Struct_1(var_0.a, vec2<u32>(global1.b.x, 40600u), var_0.c), Struct_1(1032f, global1.b, var_0.c)), var_0.b, Struct_1(global1.a, vec2<u32>(1u, 4294967295u), global1.c)))), var_0.b, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(round(671f)))), _wgslsmith_mod_vec2_u32(~global1.b, vec2<u32>(1u, u_input.b)), -_wgslsmith_mod_vec4_i32(var_0.c, global1.c))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * global1.a), global1.b, var_0.c));
    var var_3 = _wgslsmith_add_i32(~24936i, -u_input.a.x);
    var_1 = !select(!vec3<bool>(true, !var_1.x, true), select(!vec3<bool>(false, var_1.x, false), vec3<bool>(!var_1.x, var_1.x, !var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x)), select(select(select(vec3<bool>(true, var_1.x, true), vec3<bool>(true, var_1.x, false), vec3<bool>(true, false, var_1.x)), vec3<bool>(true, true, true), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, true, var_1.x), vec3<bool>(true, true, var_1.x))), vec3<bool>(var_1.x, true, any(vec4<bool>(false, var_1.x, false, var_1.x))), false));
    var var_4 = global1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c.a, global1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, -1645f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1822f, 765f))), vec3<f32>(global1.a, var_0.a, global1.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, global1.a, -1670f) * vec3<f32>(var_0.a, -1164f, 516f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.a, -457f, 1593f) * vec3<f32>(global1.a, -390f, global1.a))))));
}

