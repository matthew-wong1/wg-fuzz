struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<bool>(false, true, true), vec4<i32>(-23403i, -6665i, 1i, 20224i), -780f, vec4<u32>(22788u, 9063u, 1u, 3177u), vec4<u32>(1769u, 20938u, 50044u, 27882u)), false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    var var_0 = global1.a.c;
    let var_1 = !(global1.a.c <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1.a.c)))));
    var var_2 = Struct_2(Struct_1(global1.a.a, firstLeadingBit(vec4<i32>(~0i, -u_input.c, global1.a.b.x, u_input.c)), 1f, _wgslsmith_mult_vec4_u32(global1.a.d, global1.a.e), _wgslsmith_div_vec4_u32(global1.a.d, _wgslsmith_mod_vec4_u32(~vec4<u32>(global1.a.d.x, global1.a.d.x, 9779u, 30634u), vec4<u32>(u_input.a, global1.a.e.x, 0u, 1u)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.c, -819f)));
    var var_3 = global1.a.b.x;
    return abs(-1i);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    return Struct_3(Struct_1(!vec3<bool>(true, true, !arg_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-3857i, u_input.c, func_3(), _wgslsmith_sub_i32(-1i, global1.a.b.x)), ~firstLeadingBit(vec4<i32>(-1i, arg_3.b.x, 70091i, -1i))), _wgslsmith_f_op_f32(max(global1.a.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_3.c, arg_3.c)), 789f)))), ~(~arg_3.d << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, global1.a.e.x, arg_3.d.x, arg_3.d.x), vec4<u32>(arg_2, arg_2, 1u, arg_2)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(arg_3.d, _wgslsmith_mod_vec4_u32(global1.a.e, vec4<u32>(arg_2, u_input.d, u_input.d, 0u)) >> ((vec4<u32>(u_input.a, 1u, 10391u, arg_2) | arg_3.e) % vec4<u32>(32u)))), !(!((u_input.c | -1504i) > arg_3.b.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(arg_3.a.a, vec4<i32>(~arg_0.x, global1.a.b.x, min(15058i, 6896i), -_wgslsmith_dot_vec2_i32(arg_3.a.b.yw, vec2<i32>(-24457i, 33919i))), arg_3.a.c, vec4<u32>(~arg_3.a.d.x, u_input.a | u_input.b.x, _wgslsmith_sub_u32(func_2(arg_3.a.a.yz, vec4<bool>(global1.b, true, arg_3.a.a.x, false), 0u, Struct_1(arg_3.a.a, global1.a.b, global1.a.c, vec4<u32>(arg_3.a.e.x, arg_3.a.d.x, global1.a.d.x, global1.a.e.x), vec4<u32>(28140u, 32822u, arg_3.a.e.x, global1.a.d.x))).a.e.x, arg_3.a.e.x), 0u), vec4<u32>(23024u, ~select(u_input.d, arg_3.a.d.x, global1.b), 1u, ~u_input.d)));
    var var_1 = abs(max(~(reverseBits(1u) ^ _wgslsmith_sub_u32(global1.a.d.x, 0u)), reverseBits(_wgslsmith_dot_vec4_u32(var_0.a.d, vec4<u32>(var_0.a.e.x, 93886u, 2642u, 21170u)))));
    var var_2 = !arg_3.a.a.zy;
    let var_3 = vec2<i32>(~(max(global1.a.b.x, func_3()) << (26151u % 32u)), -((u_input.c >> (var_0.a.d.x % 32u)) | min(u_input.c, 72137i)) << (arg_3.a.e.x % 32u));
    var var_4 = func_2(select(vec2<bool>(func_2(var_0.a.a.yz, !vec4<bool>(global1.a.a.x, var_0.a.a.x, arg_3.a.a.x, true), 39772u, arg_3.a).b, !any(vec4<bool>(var_2.x, false, true, global1.b))), vec2<bool>(true, _wgslsmith_div_f32(623f, arg_3.a.c) == _wgslsmith_div_f32(var_0.a.c, -1000f)), vec2<bool>(!all(global1.a.a), select(func_2(var_0.a.a.yx, vec4<bool>(var_0.a.a.x, true, arg_3.a.a.x, true), u_input.b.x, Struct_1(var_0.a.a, var_0.a.b, -2059f, vec4<u32>(34720u, var_0.a.e.x, global1.a.e.x, 1u), vec4<u32>(u_input.a, arg_3.a.d.x, 43636u, 52725u))).b, var_0.a.a.x, true))), vec4<bool>(true, true, true, true), _wgslsmith_div_u32(global1.a.d.x, ~u_input.a), Struct_1(func_2(arg_3.a.a.zy, vec4<bool>(!var_0.a.a.x, all(vec4<bool>(global1.a.a.x, global1.a.a.x, false, arg_3.a.a.x)), false, true), countOneBits(4294967295u), global1.a).a.a, -var_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c)), var_0.a.d, global1.a.e));
    return Struct_2(Struct_1(select(!(!var_4.a.a), var_0.a.a, select(true, false, true) & select(var_4.b, false, arg_3.b)), select(firstTrailingBit(var_0.a.b), _wgslsmith_mult_vec4_i32(global1.a.b, arg_0), arg_3.b) ^ -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.a.b.x, var_3.x, var_4.a.b.x, 0i), arg_0, vec4<i32>(-1i, global1.a.b.x, arg_3.a.b.x, -12011i)), arg_3.a.c, ~(~(vec4<u32>(86424u, var_0.a.d.x, global1.a.e.x, global1.a.d.x) << (vec4<u32>(34105u, var_4.a.d.x, 30976u, u_input.b.x) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(54725u, var_4.a.e.x, var_4.a.d.x, var_4.a.e.x), vec4<u32>(24138u, var_4.a.d.x, u_input.b.x, var_0.a.e.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(global1.a.d, vec4<u32>(u_input.a, 53144u, 5962u, 38013u), vec4<u32>(1465u, 1u, 35054u, 44318u)), ~vec4<u32>(4294967295u, u_input.d, 63667u, u_input.b.x)))));
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(!(!vec3<bool>(true, global1.a.a.x, !arg_3.a.a.x)), -arg_3.a.b, _wgslsmith_f_op_f32(sign(-1219f)), _wgslsmith_mult_vec4_u32(~(~max(arg_3.a.d, vec4<u32>(1u, arg_0, arg_2.a.e.x, 7057u))), ~(~global1.a.e) >> (global1.a.e % vec4<u32>(32u))), reverseBits(vec4<u32>(firstTrailingBit(global1.a.e.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 22957u), u_input.b.zz), ~arg_3.a.e.x, ~13074u, arg_3.a.e.x)));
    global0 = array<Struct_1, 29>();
    let var_1 = -1i;
    global1 = Struct_3(func_2(select(vec2<bool>(arg_3.a.a.x, true), var_0.a.zy, !(!var_0.a.x)), vec4<bool>(global1.a.a.x, func_2(arg_3.a.a.xy, !vec4<bool>(true, true, arg_2.a.a.x, global1.b), 47240u, arg_2.a).a.a.x, var_0.a.x, true), arg_3.a.e.x, Struct_1(vec3<bool>(false, true | var_0.a.x, true), vec4<i32>(-2147483647i, i32(-1i) * -2147483647i, arg_3.a.b.x >> (39642u % 32u), global1.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1292f * 541f)), func_2(func_4(vec4<i32>(-1i, -1i, arg_3.a.b.x, var_1), vec2<f32>(arg_3.a.c, global1.a.c), 19425i, Struct_3(Struct_1(vec3<bool>(var_0.a.x, arg_2.a.a.x, arg_3.a.a.x), arg_2.a.b, 1000f, var_0.d, arg_3.a.e), global1.b)).a.a.yz, select(vec4<bool>(arg_3.a.a.x, false, true, true), vec4<bool>(global1.b, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, global1.a.a.x, arg_3.a.a.x, arg_3.a.a.x)), ~68216u, func_2(arg_2.a.a.yx, vec4<bool>(true, global1.a.a.x, arg_3.a.a.x, arg_2.a.a.x), global1.a.d.x, Struct_1(global1.a.a, global1.a.b, 552f, global1.a.e, arg_3.a.d)).a).a.d, reverseBits(~vec4<u32>(4294967295u, 4294967295u, 69941u, u_input.d)))).a, any(global1.a.a));
    let var_2 = Struct_2(Struct_1(vec3<bool>(true, !(!arg_3.a.a.x), true), _wgslsmith_clamp_vec4_i32(~countOneBits(global1.a.b), var_0.b, firstTrailingBit(vec4<i32>(global1.a.b.x, -11146i, 3999i, 1i))), -582f, select(arg_3.a.d, _wgslsmith_clamp_vec4_u32(arg_3.a.e, vec4<u32>(0u, 0u, 121442u, global1.a.e.x), func_2(arg_3.a.a.zy, vec4<bool>(arg_2.a.a.x, var_0.a.x, false, false), 4294967295u, arg_2.a).a.e), vec4<bool>(func_4(global1.a.b, vec2<f32>(-414f, arg_3.a.c), global1.a.b.x, Struct_3(Struct_1(vec3<bool>(arg_3.a.a.x, false, var_0.a.x), arg_3.a.b, global1.a.c, vec4<u32>(arg_0, var_0.d.x, arg_3.a.d.x, 12870u), vec4<u32>(0u, 40303u, arg_2.a.d.x, u_input.b.x)), var_0.a.x)).a.a.x, !arg_2.a.a.x, true, arg_3.a.a.x)), vec4<u32>(arg_0, 32565u, global1.a.e.x, _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(0u, arg_2.a.e.x), _wgslsmith_dot_vec2_u32(var_0.d.zw, var_0.e.yz)))));
    return select(!(!select(vec4<bool>(true, var_2.a.a.x, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, var_0.a.x, false))), !vec4<bool>(any(!var_2.a.a), !var_0.a.x && true, (var_2.a.b.x != -130i) && global1.b, any(select(vec2<bool>(arg_2.a.a.x, false), vec2<bool>(var_0.a.x, arg_3.a.a.x), true))), !(!vec4<bool>(true, true, any(var_0.a.zx), any(vec4<bool>(global1.b, var_0.a.x, var_2.a.a.x, arg_2.a.a.x)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = ~(_wgslsmith_div_u32(~(~90862u), abs(arg_3.a.d.x)) | ~(~reverseBits(u_input.a)));
    let var_1 = u_input.c;
    let var_2 = any(func_5(67844u, global1.a.b.wyy, func_4(-vec4<i32>(22607i, 2147483647i, var_1, 0i), _wgslsmith_f_op_vec2_f32(vec2<f32>(140f, global1.a.c) * _wgslsmith_f_op_vec2_f32(ceil(arg_0))), arg_3.a.b.x, func_2(arg_3.a.a.xz, select(vec4<bool>(global1.b, true, arg_3.a.a.x, arg_3.a.a.x), vec4<bool>(arg_3.a.a.x, arg_3.b, arg_3.a.a.x, arg_3.a.a.x), false), _wgslsmith_mod_u32(1u, u_input.a), Struct_1(global1.a.a, vec4<i32>(-22194i, -9622i, var_1, -11805i), arg_1.x, vec4<u32>(3520u, 1u, arg_3.a.d.x, arg_3.a.e.x), global1.a.d))), func_4(countOneBits(arg_3.a.b), arg_0, -26775i, func_2(!vec2<bool>(arg_3.a.a.x, true), vec4<bool>(true, true, true, true), max(11739u, 0u), func_4(global1.a.b, arg_0, arg_2, Struct_3(global1.a, global1.a.a.x)).a))));
    let var_3 = func_5(~_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, arg_3.a.d.x, _wgslsmith_div_u32(11717u, 1u)), u_input.b), arg_3.a.b.xxy, Struct_2(global0[_wgslsmith_index_u32(max(0u, 0u), 29u)]), Struct_2(Struct_1(func_5(reverseBits(0u), vec3<i32>(-1i, arg_2, global1.a.b.x), Struct_2(Struct_1(global1.a.a, global1.a.b, arg_1.x, arg_3.a.d, global1.a.d)), Struct_2(Struct_1(arg_3.a.a, vec4<i32>(arg_3.a.b.x, var_1, arg_3.a.b.x, global1.a.b.x), -903f, vec4<u32>(8445u, global1.a.d.x, global1.a.d.x, arg_3.a.e.x), vec4<u32>(u_input.a, u_input.b.x, u_input.a, 1u)))).zzw, arg_3.a.b, arg_3.a.c, ~(vec4<u32>(arg_3.a.e.x, 7937u, 7434u, 49009u) | global1.a.d), ~vec4<u32>(var_0, var_0, 27816u, 15253u)))).xwy;
    var var_4 = global1.a.c;
    return Struct_2(func_4(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-11327i, arg_3.a.b.x, global1.a.b.x, -24651i), arg_3.a.b), -func_4(vec4<i32>(1i, global1.a.b.x, arg_2, -38650i), vec2<f32>(561f, -2900f), -1i, arg_3).a.b), vec2<f32>(_wgslsmith_f_op_f32(430f - _wgslsmith_f_op_f32(-global1.a.c)), 1000f), -global1.a.b.x, Struct_3(func_2(vec2<bool>(var_2, var_3.x), !vec4<bool>(var_2, global1.b, true, var_3.x), arg_3.a.e.x, func_2(arg_3.a.a.zy, vec4<bool>(false, false, true, var_2), 0u, arg_3.a).a).a, any(vec4<bool>(global1.b, false, true, true)))).a);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: vec2<f32>) -> Struct_3 {
    global0 = array<Struct_1, 29>();
    var var_0 = _wgslsmith_mult_vec2_u32(countOneBits(~(vec2<u32>(global1.a.d.x, 1u) & arg_1.a.e.wz)), ~arg_0.a.e.xy);
    global1 = func_2(func_2(!arg_0.a.a.zx, !func_5(abs(9255u), ~vec3<i32>(0i, 0i, global1.a.b.x), Struct_2(global0[_wgslsmith_index_u32(61897u, 29u)]), func_1(vec2<f32>(arg_2, 410f), vec3<f32>(arg_3.x, -1000f, -140f), arg_0.a.b.x, Struct_3(Struct_1(vec3<bool>(true, global1.b, false), arg_0.a.b, 922f, vec4<u32>(63249u, global1.a.e.x, 120929u, u_input.a), arg_0.a.d), arg_1.a.a.x))), 2591u, arg_1.a).a.a.xy, !vec4<bool>(all(!vec2<bool>(arg_0.a.a.x, true)), func_2(vec2<bool>(arg_0.a.a.x, true), vec4<bool>(true, arg_0.a.a.x, true, false), 5059u, global0[_wgslsmith_index_u32(96504u, 29u)]).a.b.x < _wgslsmith_dot_vec4_i32(arg_1.a.b, vec4<i32>(12301i, 2723i, global1.a.b.x, arg_0.a.b.x)), false, (arg_2 != -943f) & true), 42675u, Struct_1(select(vec3<bool>(select(true, global1.a.a.x, true), false && global1.b, false), vec3<bool>(func_1(arg_3, vec3<f32>(arg_2, arg_3.x, arg_2), arg_1.a.b.x, Struct_3(global1.a, false)).a.a.x, true, false), !(!global1.a.a)), select(func_2(vec2<bool>(true, true), vec4<bool>(arg_0.a.a.x, false, arg_1.a.a.x, true), ~var_0.x, func_1(arg_3, vec3<f32>(-1572f, -195f, global1.a.c), arg_1.a.b.x, Struct_3(global1.a, arg_1.a.a.x)).a).a.b, vec4<i32>(min(0i, 121i), -arg_0.a.b.x, firstTrailingBit(u_input.c), global1.a.b.x), true), -456f, ~arg_0.a.e, vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_clamp_vec3_u32(arg_0.a.e.wzx, vec3<u32>(global1.a.e.x, arg_1.a.e.x, 0u), u_input.b)), func_4(_wgslsmith_clamp_vec4_i32(global1.a.b, vec4<i32>(0i, 0i, arg_0.a.b.x, -21078i), arg_0.a.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3.x, -644f))), ~(-1i), func_2(arg_1.a.a.yx, vec4<bool>(global1.a.a.x, global1.a.a.x, false, global1.b), 0u, arg_0.a)).a.e.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0.a.d.x, u_input.d, 36708u, arg_1.a.d.x)), ~vec4<u32>(0u, arg_1.a.e.x, arg_1.a.e.x, 62540u)), global1.a.d.x)));
    var var_1 = !vec2<bool>(func_2(vec2<bool>(false, !arg_0.a.a.x), vec4<bool>(global1.a.b.x == 3031i, global1.b, !global1.a.a.x, !global1.b), 18346u, func_4(global1.a.b, _wgslsmith_f_op_vec2_f32(-arg_3), reverseBits(global1.a.b.x), Struct_3(arg_1.a, false)).a).a.a.x, var_0.x != (~arg_0.a.d.x << (~4294967295u % 32u)));
    var_1 = vec2<bool>(arg_1.a.a.x, global1.b);
    return func_2(arg_1.a.a.yy, !(!select(!vec4<bool>(false, false, global1.b, arg_1.a.a.x), vec4<bool>(false, arg_0.a.a.x, arg_1.a.a.x, arg_0.a.a.x), true)), ~4294967295u, arg_1.a);
}

fn func_7(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(global1.a.b.x, -u_input.c);
    global1 = Struct_3(global1.a, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(global1.a.a.x, arg_0, arg_1.a.a.x, arg_0), true)));
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.c)) - func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1594f, 2377f), vec2<f32>(937f, global1.a.c)))))), vec3<f32>(arg_1.a.c, _wgslsmith_f_op_f32(max(-1404f, func_6(Struct_2(global0[_wgslsmith_index_u32(0u, 29u)]), Struct_2(arg_1.a), -582f, vec2<f32>(global1.a.c, -406f)).a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a.c)) + -1267f)), var_0 >> (_wgslsmith_div_u32(abs(global1.a.e.x), u_input.d) % 32u), func_2(!arg_1.a.a.xz, select(!vec4<bool>(false, arg_0, false, true), vec4<bool>(true, global1.a.a.x, false, arg_1.b), true), 0u, func_2(vec2<bool>(true, true), select(vec4<bool>(true, arg_0, global1.b, true), vec4<bool>(false, arg_0, false, arg_1.b), arg_1.a.a.x), arg_1.a.e.x, global1.a).a)).a.c);
    return arg_1.a;
}

fn func_8(arg_0: Struct_3, arg_1: f32, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = ~(vec4<u32>(global1.a.e.x, 1148u, arg_3, 74965u) ^ global1.a.e);
    var var_1 = global1.a;
    var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), -133f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-988f, _wgslsmith_f_op_f32(floor(1000f)), 939f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-406f, -244f, 1032f)))), arg_0.a.b.x, Struct_3(Struct_1(global1.a.a, select(reverseBits(arg_0.a.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c, global1.a.b.x, 0i), vec4<i32>(var_1.b.x, -2147483647i, -42111i, 24059i)), arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.c, -1323f))), vec4<u32>(24791u, 4294967295u, _wgslsmith_div_u32(var_0.x, var_1.d.x), 19247u), vec4<u32>(4294967295u | arg_3, 1u, ~1u, 1u)), !(!select(var_1.a.x, arg_0.a.a.x, true)))).a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~(var_1.b >> (global1.a.d % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-338f, arg_0.a.c)))), abs(-20382i ^ arg_0.a.b.x), Struct_3(func_6(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 29u)]), Struct_2(global1.a), global1.a.c, vec2<f32>(var_1.c, 542f)).a, func_5(4294967295u, vec3<i32>(global1.a.b.x, 1i, 1i), Struct_2(global1.a), Struct_2(global0[_wgslsmith_index_u32(1u, 29u)])).x)).a.c * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.c + _wgslsmith_f_op_f32(1385f - var_1.c)), arg_0.a.c))));
    global1 = Struct_3(global0[_wgslsmith_index_u32(arg_3, 29u)], true && arg_2.x);
    return func_6(Struct_2(global1.a), Struct_2(func_2(!arg_2.zy, vec4<bool>(arg_2.x, global1.b && arg_2.x, func_5(1u, global1.a.b.yxy, Struct_2(global0[_wgslsmith_index_u32(1u, 29u)]), Struct_2(Struct_1(global1.a.a, vec4<i32>(arg_0.a.b.x, global1.a.b.x, 37125i, -458i), var_1.c, global1.a.e, vec4<u32>(arg_3, 1u, 0u, 0u)))).x, u_input.c < var_1.b.x), func_4(var_1.b & vec4<i32>(-17096i, arg_0.a.b.x, -8172i, 1i), vec2<f32>(var_1.c, global1.a.c), firstTrailingBit(var_1.b.x), arg_0).a.e.x, func_4(-var_1.b, vec2<f32>(839f, var_2), global1.a.b.x, func_6(Struct_2(global1.a), Struct_2(Struct_1(vec3<bool>(arg_2.x, false, arg_2.x), vec4<i32>(1i, var_1.b.x, var_1.b.x, -36870i), -183f, var_1.d, global1.a.d)), arg_0.a.c, vec2<f32>(var_1.c, -1743f))).a).a), arg_1, vec2<f32>(func_4(var_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, arg_0.a.c)), -(~var_1.b.x), arg_0).a.c, _wgslsmith_div_f32(-422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) * _wgslsmith_f_op_f32(global1.a.c + arg_0.a.c))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, global1.a.d.x & ((u_input.b.x ^ var_0.e.x) ^ ~4294967295u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(26779u, 4294967295u, 0u), ~global1.a.e.zxw), ~vec3<u32>(var_0.e.x, 87864u, 1u)), var_0.e.x), vec4<u32>((~u_input.b.x ^ 1u) << (50150u % 32u), 1u, 5132u, 0u));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(u_input.a, 29u)]);
    let var_3 = func_8(Struct_3(func_7(select(false, false, false) | var_0.a.x, func_6(Struct_2(var_2.a), func_1(vec2<f32>(global1.a.c, var_2.a.c), vec3<f32>(1900f, var_2.a.c, var_0.c), var_0.b.x, Struct_3(global0[_wgslsmith_index_u32(15831u, 29u)], var_0.a.x)), _wgslsmith_div_f32(global1.a.c, -1569f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-687f, global1.a.c) + vec2<f32>(-770f, global1.a.c)))), var_2.a.c < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * 2077f) - var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.c) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.c), _wgslsmith_f_op_f32(var_2.a.c - global1.a.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1200f, global1.a.c)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c * -100f), _wgslsmith_f_op_f32(f32(-1f) * -2253f)))), select(!select(func_4(vec4<i32>(u_input.c, global1.a.b.x, var_0.b.x, -2147483647i), vec2<f32>(1002f, -1000f), global1.a.b.x, Struct_3(var_2.a, true)).a.a, !vec3<bool>(var_2.a.a.x, var_0.a.x, var_0.a.x), var_2.a.a), !func_2(!global1.a.a.zy, !vec4<bool>(var_2.a.a.x, false, var_2.a.a.x, true), countOneBits(4294967295u), global1.a).a.a, !select(var_2.a.a, func_5(var_2.a.e.x, var_2.a.b.zxz, var_2, var_2).xzy, func_6(var_2, var_2, var_2.a.c, vec2<f32>(var_2.a.c, -1000f)).a.a)), _wgslsmith_mult_u32(21316u, _wgslsmith_sub_u32(8213u, ~var_2.a.e.x) ^ firstTrailingBit(1u)));
    let var_4 = vec2<bool>(var_0.a.x, !global1.a.a.x);
    let var_5 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(global1.a.c + var_3.c)), vec2<f32>(-567f, _wgslsmith_f_op_f32(-693f - var_2.a.c))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c, var_0.c))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -964f)) * 1330f), func_2(!vec2<bool>(true, global1.a.a.x), !func_5(var_0.d.x, var_0.b.xzy, Struct_2(Struct_1(var_0.a, vec4<i32>(-21345i, 27016i, -11237i, 37504i), 1022f, global1.a.d, vec4<u32>(7199u, 18857u, 12617u, 1u))), var_2), var_3.d.x << (4294967295u % 32u), var_2.a).a.c), func_2(var_0.a.yy, !(!select(vec4<bool>(false, var_4.x, true, var_2.a.a.x), vec4<bool>(var_0.a.x, var_3.a.x, true, true), var_3.a.x)), ~min(30655u, 1u), func_2(var_3.a.xx, select(!vec4<bool>(global1.b, var_2.a.a.x, var_0.a.x, var_3.a.x), vec4<bool>(true, global1.b, true, false), var_0.a.x), 0u, var_2.a).a).a.b.x, Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, var_0.d.x), max(4294967295u, 19387u ^ var_2.a.d.x)), 29u)], func_8(Struct_3(global1.a, func_7(var_3.a.x, Struct_3(Struct_1(var_0.a, vec4<i32>(-2147483647i, -14334i, 19707i, global1.a.b.x), -1199f, var_2.a.d, var_2.a.e), var_3.a.x)).a.x), _wgslsmith_f_op_f32(trunc(-344f)), vec3<bool>(true, !var_4.x, all(vec4<bool>(var_0.a.x, global1.b, true, var_0.a.x))), 18031u).a.x)).a.e.x;
    var_0 = Struct_1(vec3<bool>((-var_2.a.b.x <= -2147483647i) & var_3.a.x, any(func_5(select(54322u, 0u, false), vec3<i32>(var_3.b.x, var_0.b.x, -62543i), func_4(global1.a.b, vec2<f32>(3020f, var_3.c), -1i, Struct_3(var_3, true)), var_2)), select(true, !var_2.a.a.x | (var_4.x & true), global1.a.a.x)), global1.a.b, global1.a.c, global1.a.e | var_0.e, var_3.d);
    var var_6 = var_2.a.b.xwx >> (func_6(var_2, Struct_2(Struct_1(var_3.a, _wgslsmith_mod_vec4_i32(var_3.b, vec4<i32>(var_3.b.x, -945i, var_2.a.b.x, 1i)), 639f, global1.a.d, var_0.d)), func_4(var_2.a.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1916f, var_2.a.c)), vec2<f32>(global1.a.c, -901f))), _wgslsmith_add_i32(func_8(Struct_3(Struct_1(vec3<bool>(true, false, global1.b), var_0.b, 662f, vec4<u32>(global1.a.e.x, var_5, 0u, global1.a.e.x), vec4<u32>(4294967295u, 22682u, 79793u, global1.a.e.x)), true), global1.a.c, var_2.a.a, 4294967295u).b.x, countOneBits(-18782i)), func_2(vec2<bool>(false, var_3.a.x), !vec4<bool>(var_3.a.x, var_0.a.x, false, false), 1924u, func_1(vec2<f32>(1138f, -643f), vec3<f32>(307f, 325f, global1.a.c), -1i, Struct_3(Struct_1(global1.a.a, vec4<i32>(1i, -5396i, 0i, 0i), 1102f, vec4<u32>(var_0.e.x, 4294967295u, 1u, 10051u), global1.a.e), false)).a)).a.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-255f, var_2.a.c))))))).a.d.xzx % vec3<u32>(32u));
    var var_7 = var_0.b.yxy;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-var_6.x, var_6.x, func_7(var_0.a.x && false, Struct_3(global1.a, global1.b)).b.x, ~(-1i)), vec4<f32>(var_2.a.c, -2094f, -1288f, _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.c, var_0.c)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c))), var_0.c, var_3.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.c), _wgslsmith_f_op_f32(select(-626f, 1110f, global1.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.c, var_3.c, 1210f, var_2.a.c) + vec4<f32>(1984f, var_2.a.c, -1051f, 784f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1828f, -2103f, 352f, -348f))))))));
}

