struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 104f;

var<private> global1: Struct_4 = Struct_4(0u, vec2<i32>(i32(-2147483648), 0i), Struct_1(vec4<f32>(2462f, 144f, -2278f, -2595f), vec2<bool>(true, true), vec4<u32>(32809u, 34051u, 1u, 37417u), vec3<f32>(113f, 968f, 1000f)), 471f);

var<private> global2: f32 = 679f;

var<private> global3: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_3(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-477f + global1.d))))));
    var var_1 = Struct_5(max(u_input.a.yz, reverseBits(~vec2<u32>(arg_0.x, 53734u))));
    let var_2 = Struct_4(_wgslsmith_mult_u32(global1.c.c.x, 17110u), _wgslsmith_sub_vec2_i32(~vec2<i32>(max(u_input.e.x, u_input.e.x), -u_input.e.x), reverseBits(u_input.b)), var_0.a, 1483f);
    global0 = _wgslsmith_div_f32(global1.c.d.x, var_0.a.a.x);
    var var_3 = Struct_3(Struct_1(var_0.a.a, vec2<bool>(any(vec4<bool>(true, false, global1.c.b.x, global1.c.b.x)), !var_0.a.b.x && true), var_2.c.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, -887f, -2187f)))) - _wgslsmith_f_op_vec3_f32(exp2(var_2.c.d)))), global1.d);
    return any(select(!vec3<bool>(true, true, !var_0.a.b.x), !(!select(vec3<bool>(var_3.a.b.x, var_0.a.b.x, global1.c.b.x), vec3<bool>(global1.c.b.x, true, true), vec3<bool>(false, true, false))), !var_2.c.b.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: bool) -> Struct_4 {
    let var_0 = Struct_5(max(min(vec2<u32>(~4294967295u, global1.a), u_input.a.xz), vec2<u32>(~global1.c.c.x, u_input.a.x) | firstTrailingBit(~vec2<u32>(global1.c.c.x, 30967u))));
    let var_1 = _wgslsmith_add_vec4_i32(firstTrailingBit(~reverseBits(vec4<i32>(0i, global1.b.x, u_input.d.x, u_input.b.x))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec3_i32(u_input.e.xzx, u_input.d), 39017i, _wgslsmith_add_i32(-17423i, 28604i)), u_input.e), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(73590i, u_input.e.x, -2147483647i, u_input.b.x) | u_input.e, _wgslsmith_sub_vec4_i32(u_input.e, vec4<i32>(global1.b.x, u_input.e.x, -4312i, -64777i))))));
    global3 = -432f;
    var var_2 = select(_wgslsmith_f_op_f32(906f + _wgslsmith_div_f32(global1.d, 1000f)) == _wgslsmith_f_op_f32(-arg_1.x), true, true) != !any(arg_0);
    let var_3 = func_3(global1.c.c.yzy);
    return Struct_4(_wgslsmith_dot_vec3_u32(firstTrailingBit(global1.c.c.zxx), _wgslsmith_mod_vec3_u32(select(global1.c.c.xwz, vec3<u32>(4294967295u, 1u, 0u) | vec3<u32>(23812u, global1.a, 794u), vec3<bool>(true, var_3, var_3)), firstLeadingBit(~vec3<u32>(0u, 0u, var_0.a.x)))), var_1.zz, global1.c, 2022f);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_5 {
    global0 = _wgslsmith_f_op_f32(-arg_2.d);
    var var_0 = func_2(vec3<bool>(global1.c.b.x && !arg_1.c.b.x, (true | (global1.c.b.x | global1.c.b.x)) && false, true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.d))), arg_3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-162f))))), _wgslsmith_f_op_vec4_f32(-global1.c.a), all(vec4<bool>(true, select(false, global1.c.b.x, false), arg_1.c.b.x, arg_1.c.b.x)))), max(-_wgslsmith_mod_i32(28315i, 82864i), ~(~global1.b.x)) >= -1i);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_2.c.d.x)), 336f)), _wgslsmith_f_op_f32(trunc(var_0.d)), any(select(!(!vec3<bool>(false, true, arg_2.c.b.x)), select(select(vec3<bool>(true, true, arg_2.c.b.x), vec3<bool>(false, false, arg_2.c.b.x), vec3<bool>(global1.c.b.x, true, global1.c.b.x)), vec3<bool>(arg_2.c.b.x, true, false), !arg_2.c.b.x), !vec3<bool>(false, global1.c.b.x, arg_2.c.b.x)))));
    var var_2 = select(vec4<bool>(all(select(select(vec4<bool>(false, false, false, var_0.c.b.x), vec4<bool>(true, false, true, global1.c.b.x), vec4<bool>(global1.c.b.x, var_0.c.b.x, var_0.c.b.x, global1.c.b.x)), vec4<bool>(arg_2.c.b.x, var_0.c.b.x, var_0.c.b.x, var_0.c.b.x), vec4<bool>(true, arg_2.c.b.x, true, false))), global1.c.b.x, ~_wgslsmith_mult_u32(19788u, var_0.a) == global1.a, any(!select(vec4<bool>(arg_2.c.b.x, var_0.c.b.x, global1.c.b.x, arg_1.c.b.x), vec4<bool>(true, var_0.c.b.x, false, false), true))), select(vec4<bool>(true, var_0.c.b.x, true, all(vec2<bool>(true, global1.c.b.x)) || (arg_2.c.b.x & global1.c.b.x)), select(!vec4<bool>(var_0.c.b.x, var_0.c.b.x, true, var_0.c.b.x), !select(vec4<bool>(true, arg_2.c.b.x, true, true), vec4<bool>(arg_2.c.b.x, arg_1.c.b.x, false, false), vec4<bool>(false, arg_2.c.b.x, arg_2.c.b.x, false)), !(!vec4<bool>(true, global1.c.b.x, global1.c.b.x, true))), var_0.c.b.x), !(!select(select(vec4<bool>(false, var_0.c.b.x, true, false), vec4<bool>(false, arg_2.c.b.x, global1.c.b.x, true), true), !vec4<bool>(arg_1.c.b.x, true, arg_2.c.b.x, arg_2.c.b.x), true)));
    let var_3 = vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(~global1.b.x, func_2(var_2.yzx, vec4<f32>(-1316f, -1000f, var_0.c.a.x, global1.c.d.x), true).b.x, select(global1.b.x, u_input.b.x, arg_2.c.b.x)), u_input.e.wxw) >= _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), -(~vec2<i32>(-1i, var_0.b.x))), true, var_2.x, arg_2.c.b.x);
    return Struct_5(vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_2.c.c.x, 1u, 4294967295u), u_input.a), select(select(vec3<u32>(u_input.a.x, arg_2.a, 0u), vec3<u32>(arg_2.a, 0u, 1u), vec3<bool>(var_3.x, true, arg_2.c.b.x)), arg_2.c.c.xyx, vec3<bool>(false, true, true)))));
}

fn func_5(arg_0: Struct_5) -> Struct_2 {
    var var_0 = Struct_4(global1.c.c.x, _wgslsmith_mod_vec2_i32(~(u_input.e.wz << (vec2<u32>(3914u, u_input.a.x) % vec2<u32>(32u))) >> ((global1.c.c.xz & func_2(vec3<bool>(global1.c.b.x, global1.c.b.x, false), global1.c.a, true).c.c.zy) % vec2<u32>(32u)), min(vec2<i32>(_wgslsmith_div_i32(1i, global1.b.x), u_input.e.x), vec2<i32>(reverseBits(u_input.d.x), -global1.b.x))), global1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f), _wgslsmith_div_f32(1f, 1f)));
    var var_1 = select(vec3<bool>(var_0.c.b.x, var_0.c.b.x, !((1i <= global1.b.x) & !var_0.c.b.x)), vec3<bool>(false, ~global1.b.x < -1074i, 636f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-478f, var_0.d))))), global1.c.b.x);
    let var_2 = Struct_3(Struct_1(global1.c.a, var_0.c.b, _wgslsmith_add_vec4_u32(max(~global1.c.c, _wgslsmith_clamp_vec4_u32(global1.c.c, vec4<u32>(1154u, 42657u, var_0.a, u_input.a.x), var_0.c.c)), var_0.c.c), global1.c.d), _wgslsmith_f_op_f32(-var_0.d));
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u | _wgslsmith_mod_u32(~6656u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.c.x, var_0.c.c.x, global1.a), global1.c.c.wwz)), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(19356u, 4294967295u, 47054u, 7873u), vec4<u32>(1u, var_2.a.c.x, 14336u, 27099u)))), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.c.d.x)), _wgslsmith_f_op_f32(sign(var_2.b))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, global1.d) * vec2<f32>(global1.c.a.x, 350f))))), Struct_4(~60496u, _wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.x, -15637i) >> (arg_0.a % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(var_0.b, var_0.b)), func_2(vec3<bool>(false, true, global1.c.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.a.d.x, var_2.a.a.x, var_2.a.d.x)), select(var_2.a.b.x, true, false)).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -701f) + _wgslsmith_f_op_f32(global1.d + var_2.a.d.x))), func_2(vec3<bool>(true, func_3(vec3<u32>(arg_0.a.x, 12902u, global1.c.c.x)), true), _wgslsmith_f_op_vec4_f32(global1.c.a + global1.c.a), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a.a))).a.x, ~firstTrailingBit(global1.c.c.x));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(select(var_0.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.d.x, 784f, -609f, var_2.b), global1.c.a))), vec4<bool>(true, true, true, true))), !var_2.a.b, var_2.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b, global1.d, global1.d), _wgslsmith_f_op_vec3_f32(-global1.c.d))));
    return Struct_2(15268u, 44875u, ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(global1.a, var_3), 7613u), _wgslsmith_dot_vec2_u32(u_input.a.yx, var_2.a.c.xz), ~(~0u)), ~_wgslsmith_mod_vec2_u32(var_2.a.c.yx, ~(~var_4.c.xx)), global1.c.a.zz);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> vec3<bool> {
    let var_0 = vec2<u32>(select(1u, ~(~global1.c.c.x | _wgslsmith_div_u32(4294967295u, u_input.a.x)), 0u <= abs(global1.c.c.x)), ~(~firstLeadingBit(0u)) << (~(~_wgslsmith_sub_u32(u_input.a.x, arg_0.x)) % 32u));
    let var_1 = 4294967295u & u_input.a.x;
    let var_2 = func_5(func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - _wgslsmith_f_op_f32(global1.d * 1000f))), func_2(select(!arg_1, !vec3<bool>(false, arg_1.x, false), any(arg_1.yx)), vec4<f32>(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-2101f * -1324f), global1.c.a.x, 1172f), true == !arg_1.x), Struct_4(arg_0.x, _wgslsmith_div_vec2_i32(select(global1.b, vec2<i32>(-33099i, global1.b.x), false), vec2<i32>(u_input.c, global1.b.x)), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1200f + 930f))), func_2(select(!vec3<bool>(true, arg_1.x, global1.c.b.x), select(arg_1, vec3<bool>(false, false, global1.c.b.x), arg_1), select(arg_1, arg_1, true)), global1.c.a, false).c.a));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -420f);
    let var_3 = u_input.a.x;
    return vec3<bool>(arg_1.x, false == arg_1.x, !arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(global1.c.b.x, true, global1.c.b.x), vec3<bool>(global1.c.b.x, global1.c.b.x, global1.c.b.x)), select(!vec3<bool>(global1.c.b.x, global1.c.b.x, true), func_1(vec4<u32>(22206u, 21282u, 11577u, global1.a), vec3<bool>(global1.c.b.x, global1.c.b.x, false), global1.c.c.zz), !vec3<bool>(global1.c.b.x, global1.c.b.x, false)), (u_input.b.x > 2147483647i) || !global1.c.b.x), !(!(!vec3<bool>(global1.c.b.x, true, false))), false));
    let var_2 = _wgslsmith_clamp_vec2_i32(-(reverseBits(global1.b) ^ func_2(!vec3<bool>(global1.c.b.x, global1.c.b.x, global1.c.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, global1.c.d.x, global1.c.d.x, global1.c.d.x)), !global1.c.b.x).b), ~func_2(select(vec3<bool>(global1.c.b.x, false, global1.c.b.x), vec3<bool>(false, false, global1.c.b.x), !vec3<bool>(false, global1.c.b.x, global1.c.b.x)), global1.c.a, func_1(_wgslsmith_sub_vec4_u32(global1.c.c, vec4<u32>(35907u, global1.c.c.x, u_input.a.x, global1.a)), vec3<bool>(true, global1.c.b.x, global1.c.b.x), u_input.a.zx).x).b, min(vec2<i32>(-2147483647i, reverseBits(~43986i)), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.b, u_input.d.yy, vec2<i32>(1i, 1i)), vec2<i32>(firstLeadingBit(6204i), u_input.c << (u_input.a.x % 32u)))));
    let var_3 = global1.c.c;
    var_1 = any(vec3<bool>(func_2(vec3<bool>(global1.c.b.x, true, !global1.c.b.x), global1.c.a, !(!global1.c.b.x)).c.b.x, !global1.c.b.x, true && global1.c.b.x));
    let var_4 = vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.e, u_input.e), reverseBits(-_wgslsmith_add_i32(-global1.b.x, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.c.d.x, -1000f)))), 1246f, false)), _wgslsmith_f_op_f32(sign(global1.d)), _wgslsmith_f_op_f32(-global1.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-999f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -reverseBits(var_4.x), ~(~(_wgslsmith_clamp_u32(var_3.x, 4294967295u, global1.a) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 10245u, 4294967295u), vec3<u32>(1u, 1u, global1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c.d.x, _wgslsmith_f_op_f32(abs(global1.c.a.x))))) + global1.c.a.x));
}

