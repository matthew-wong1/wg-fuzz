struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(-613f, 1000f, 1441f, 551f), vec2<bool>(true, false), -48200i, vec4<bool>(false, true, true, false)), true, Struct_1(vec4<f32>(-1004f, -331f, 1503f, -496f), vec2<bool>(false, true), 4564i, vec4<bool>(false, true, true, true)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    var var_0 = abs(max(~reverseBits(~vec3<u32>(arg_1, arg_1, 0u)), vec3<u32>(_wgslsmith_mult_u32(411u, 5220u), select(arg_1, 83847u ^ arg_1, true), 1u | arg_1)));
    let var_1 = Struct_3(global0.c.c >= global0.c.c);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1082f, global0.a.a.x, global0.a.a.x, global0.a.a.x) * vec4<f32>(-481f, global0.c.a.x, 445f, global0.a.a.x)) * _wgslsmith_f_op_vec4_f32(-global0.c.a)))), !global0.c.b, 43394i, vec4<bool>(global0.b, var_0.x > 1u, true, true)), false & var_1.a, global0.c);
    let var_2 = -(i32(-1i) * -9461i);
    var var_3 = global0.a.c;
    return _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(27199u, var_0.x, 15400u, 0u)), vec4<u32>(arg_1, _wgslsmith_mod_u32(_wgslsmith_sub_u32(51729u, var_0.x), arg_1), ~select(54277u, 1u, false), ~arg_1)), 35035u);
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = Struct_2(global0.a, true, global0.c);
    var var_0 = _wgslsmith_mult_i32(u_input.b.x ^ global0.a.c, _wgslsmith_clamp_i32(1i, -13171i, ~(~_wgslsmith_div_i32(7969i, -3300i))));
    var var_1 = Struct_3((18212u < (func_3(vec3<bool>(false, global0.c.b.x, global0.c.d.x), arg_0) | arg_0)) && !(!(4294967295u >= arg_0)));
    var var_2 = global0.b & all(global0.a.d);
    var var_3 = global0.a.d.wzw;
    return Struct_2(global0.a, var_3.x, Struct_1(_wgslsmith_f_op_vec4_f32(exp2(global0.a.a)), vec2<bool>(var_1.a, select(true, global0.b, global0.b)), ~(-63005i), select(select(vec4<bool>(var_3.x, var_3.x, false, var_1.a), !global0.a.d, global0.c.d), select(vec4<bool>(false, false, var_1.a, var_3.x), select(global0.c.d, vec4<bool>(var_3.x, true, false, global0.c.d.x), vec4<bool>(var_3.x, true, var_3.x, false)), global0.a.d), select(global0.c.d, global0.c.d, !global0.c.d))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = false;
    global0 = func_2(~(~0u));
    var var_1 = _wgslsmith_div_vec4_f32(global0.a.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global0.a.a + vec4<f32>(_wgslsmith_div_f32(-317f, arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -544f), -153f, _wgslsmith_f_op_f32(148f * 1894f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-471f, global0.a.a.x, -958f, 1f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.a.x, var_1.x, arg_0.x, var_1.x), vec4<f32>(-793f, 238f, 128f, -1000f), global0.a.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1667f, var_1.x, -406f, -971f) + global0.a.a))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(arg_1.a))))), all(select(vec2<bool>(true, true), !global0.a.b, !global0.a.d.wz)))));
    let var_2 = ~select(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 1u), func_3(vec3<bool>(global0.b, var_0, global0.a.b.x), 29591u)), 4932u, ~(~4294967295u), 12271u), ~vec4<u32>(abs(74652u), ~56027u, abs(7552u), reverseBits(1u)), global0.a.d);
    return Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1042f, -2747f, global0.a.a.x, global0.a.a.x)))) - vec4<f32>(global0.a.a.x, var_1.x, 1555f, arg_1.a.x)))), !arg_1.d.wz, _wgslsmith_div_i32(~global0.a.c, _wgslsmith_add_i32(global0.c.c, _wgslsmith_dot_vec3_i32(u_input.b.zwy ^ u_input.a, u_input.a))), func_2(abs(_wgslsmith_clamp_u32(_wgslsmith_add_u32(11330u, 1u), 0u, _wgslsmith_div_u32(var_2.x, 4294967295u)))).c.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(trunc(global0.c.a.zy)), global0.a), global0.b, func_2(_wgslsmith_mult_u32(countOneBits(1u), 38564u)).a);
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(~(-20198i), 14830i, -3584i, (u_input.a.x >> (countOneBits(1u) % 32u)) & (_wgslsmith_add_i32(-1i, -35656i) & (global0.c.c ^ u_input.a.x))), vec4<i32>(-12277i, _wgslsmith_add_i32(~(-35694i) ^ global0.c.c, _wgslsmith_mult_i32(1i, global0.a.c)), _wgslsmith_mult_i32(0i, global0.c.c), u_input.b.x));
    let var_1 = global0.a.d.wx;
    var var_2 = Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a.a.x)) - -383f) > _wgslsmith_f_op_f32(-global0.a.a.x), func_2(~0u).c);
    var var_3 = ~vec3<i32>(~(~_wgslsmith_mult_i32(var_0.x, var_0.x)), _wgslsmith_dot_vec2_i32(countOneBits(-u_input.b.yy), ~(~vec2<i32>(var_2.a.c, 0i))), -218i);
    var var_4 = ~u_input.a.x;
    var var_5 = ~abs(_wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(15550u, 4294967295u)), ~countOneBits(vec2<u32>(0u, 27246u)), ~vec2<u32>(1u, 1u)));
    global0 = func_2(~var_5.x);
    var var_6 = -503f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-var_0), _wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(var_5.x, 1u, 1u), vec3<u32>(var_5.x, 16040u, 1u)) ^ (0u >> (var_5.x % 32u))).a.a.x * 320f), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, var_2.c.c, global0.a.c), vec3<i32>(-2147483647i, 25679i, 0i)), var_3.x, (var_2.a.c >> (1u % 32u)) | ~(-3123i)), var_0));
}

