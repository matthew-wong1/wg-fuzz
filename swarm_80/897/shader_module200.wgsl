struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: Struct_2;

var<private> global1: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_5) -> Struct_3 {
    var var_0 = 591f;
    var_0 = 270f;
    let var_1 = -191f;
    let var_2 = Struct_5(vec3<f32>(444f, global1.b.c, global1.e.b));
    global0 = global1.b;
    return Struct_3(35922u | min(global1.b.a, select(global0.a, _wgslsmith_clamp_u32(1u, arg_2.a, global0.a), !global0.d.x)), arg_2, Struct_1(arg_2.a, global1.e.d.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d - 592f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) + var_1)), -2236f), arg_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1000f, 1425f)), -1068f, var_1, 609f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1933f, arg_3.a.x, var_2.a.x, 820f) - vec4<f32>(-160f, var_2.a.x, -806f, -558f)), vec4<f32>(1025f, var_1, var_1, global1.e.c), true)))));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    global0 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(~global0.a, ~(~36747u)), firstLeadingBit(vec2<u32>(global1.b.a, 4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -479f), -1350f, global1.b.d);
    var var_0 = Struct_4(global1.a, global1.e, ~vec2<i32>(global1.c.x >> (0u % 32u), global1.c.x), _wgslsmith_dot_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 15093u), abs(vec2<u32>(0u, u_input.b)), vec2<u32>(0u, global1.b.a)), ~(vec2<u32>(14609u, 0u) | vec2<u32>(global1.d, 74134u)), select(func_2(global1.e.d.x, 34767u, arg_0.d, Struct_5(arg_0.e.xxx)).c.b, !global0.d.xw, global0.d.zw)), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 38525u), vec2<u32>(16721u, 17071u)))), global1.e);
    var var_1 = 1u;
    var_1 = u_input.b;
    let var_2 = Struct_4(_wgslsmith_clamp_i32(2147483647i, 64i, ~_wgslsmith_mod_i32(i32(-1i) * -32897i, var_0.a)), Struct_2(_wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(54833u, global1.d, 15343u), vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(global0.a, 0u, u_input.b)), vec3<u32>(global1.e.a, 71835u, var_0.d) >> (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u)), global0.d.x), ~(vec3<u32>(global0.a, 4294967295u, var_0.d) << (vec3<u32>(global0.a, global1.e.a, 1u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1768f, global1.b.c))), arg_0.e.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(121f)))), var_0.b.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(countOneBits(2147483647i)), 1i), select(vec2<i32>(var_0.a, global1.a), ~global1.c, true) ^ countOneBits(vec2<i32>(-27i, u_input.a) >> (vec2<u32>(100311u, 17002u) % vec2<u32>(32u))), ~global1.c), ~func_2(false, _wgslsmith_mod_u32(reverseBits(var_0.b.a), max(8188u, 0u)), Struct_1(~arg_0.d.a, vec2<bool>(true, true), _wgslsmith_f_op_f32(round(619f)), _wgslsmith_div_f32(867f, 802f)), Struct_5(_wgslsmith_f_op_vec3_f32(round(arg_0.e.xyx)))).d.a, var_0.b);
    return select(!vec4<bool>(any(select(vec2<bool>(var_0.e.d.x, global0.d.x), vec2<bool>(global1.e.d.x, arg_0.d.b.x), true)), !global0.d.x | false, true, false), vec4<bool>(true, var_2.e.d.x || any(vec2<bool>(var_0.e.d.x, false)), var_2.b.d.x || any(!global0.d.zy), 1i <= -_wgslsmith_mult_i32(1i, global1.a)), select(select(vec4<bool>(all(vec2<bool>(false, var_0.b.d.x)), global0.d.x, false, select(true, var_0.e.d.x, false)), vec4<bool>(global0.d.x && arg_0.d.b.x, var_0.b.d.x, true, true), select(vec4<bool>(global0.d.x, false, global1.e.d.x, var_2.b.d.x), select(var_0.b.d, vec4<bool>(false, var_2.b.d.x, true, arg_0.c.b.x), true), !var_0.b.d)), select(var_2.b.d, var_2.e.d, select(global1.b.d, select(vec4<bool>(var_2.e.d.x, var_0.e.d.x, global0.d.x, var_2.e.d.x), vec4<bool>(global1.e.d.x, arg_0.b.b.x, true, var_2.e.d.x), vec4<bool>(true, false, true, true)), select(var_0.b.d, global0.d, global1.b.d.x))), arg_0.c.b.x));
}

fn func_1() -> vec3<i32> {
    global0 = Struct_2(abs(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.e.b, 623f)) * -1419f))) * 1565f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f))), !func_3(func_2(true, ~1u, Struct_1(33190u, vec2<bool>(global1.b.d.x, global0.d.x), global0.c, global1.b.c), Struct_5(vec3<f32>(852f, global1.b.c, 1542f)))));
    var var_0 = abs(~(~_wgslsmith_mult_vec3_i32(max(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(-20618i, -39684i, global1.c.x)), ~vec3<i32>(u_input.a, 2147483647i, u_input.a))));
    let var_1 = Struct_1(max(global1.e.a ^ ~firstLeadingBit(1u), 4294967295u), !vec2<bool>(global1.e.d.x, all(!vec3<bool>(global0.d.x, global1.b.d.x, global1.b.d.x))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(func_2(true, 1u, Struct_1(63499u, vec2<bool>(global0.d.x, global1.e.d.x), global0.c, global1.e.c), Struct_5(vec3<f32>(1140f, -795f, 1469f))).d.c)) + global0.b));
    let var_2 = 1i;
    var var_3 = 0u;
    return -vec3<i32>(var_2, -36849i, ~(i32(-1i) * -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(abs(_wgslsmith_mult_u32(u_input.b, 4294967295u)), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(max(global1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))), !global1.e.d);
    var var_0 = -vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global1.a, -2147483647i) | u_input.a, 1i), -(~1i), u_input.a);
    var_0 = vec3<i32>(reverseBits(abs(3790i)), ~global1.a, 2147483647i) ^ (_wgslsmith_mod_vec3_i32(select(func_1(), ~vec3<i32>(-1i, 23030i, 3021i), global1.e.d.x), select(vec3<i32>(var_0.x, u_input.a, -2147483647i), ~vec3<i32>(-2344i, -38115i, var_0.x), true)) << (reverseBits(vec3<u32>(~global0.a, global0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0.a, global1.d, global0.a), vec4<u32>(20240u, global0.a, 0u, 63930u)))) % vec3<u32>(32u)));
    global0 = Struct_2(global0.a, _wgslsmith_div_f32(-716f, 1f), global0.c, vec4<bool>(global1.e.d.x, !global0.d.x, !global0.d.x, false));
    global1 = Struct_4(abs(var_0.x), Struct_2(~global1.e.a, _wgslsmith_f_op_f32(-1048f + -560f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(global0.c + global0.b))), !global1.e.d), -global1.c << (abs(vec2<u32>(_wgslsmith_sub_u32(global1.d, 0u), 4294967295u)) % vec2<u32>(32u)), firstLeadingBit(firstLeadingBit(1u)) & global1.e.a, Struct_2(~(~4294967295u), 1163f, _wgslsmith_div_f32(global1.e.b, _wgslsmith_f_op_f32(exp2(global0.c))), select(!vec4<bool>(true, global1.e.d.x, true, true), global0.d, !global1.b.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.b)), _wgslsmith_f_op_f32(ceil(-594f)), global1.b.b, _wgslsmith_f_op_f32(min(1000f, 1101f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -1000f, 469f, global0.b)))), vec4<f32>(global1.b.b, -941f, global0.c, _wgslsmith_f_op_f32(round(-625f))))));
}

