struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = select(vec3<bool>(any(global1.www), abs(abs(47653u)) > min(21305u, ~u_input.c.x), !(global1.x | global1.x)), vec3<bool>(any(select(!vec4<bool>(false, false, global1.x, global1.x), select(vec4<bool>(global1.x, false, false, true), vec4<bool>(false, global1.x, false, global1.x), global1.x), all(global1.xz))), !any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), true), global1.zzw);
    var var_1 = !select(select(select(!vec4<bool>(global1.x, global1.x, false, true), !vec4<bool>(true, false, true, var_0.x), any(vec2<bool>(var_0.x, var_0.x))), select(vec4<bool>(global1.x, var_0.x, false, true), select(vec4<bool>(global1.x, true, var_0.x, true), vec4<bool>(global1.x, var_0.x, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, global1.x, global1.x, false))), (u_input.c.x != 1u) || !var_0.x), vec4<bool>(true, select(true, false, u_input.b.x >= 0i), firstLeadingBit(u_input.b.x) <= ~u_input.b.x, true), false);
    let var_2 = Struct_1(!vec4<bool>(any(!vec4<bool>(true, false, false, var_0.x)), var_1.x, true, var_0.x), select(!global1.zw, !vec2<bool>(any(var_1.wxx), u_input.c.x >= 4294967295u), var_0.x));
    var_1 = var_2.a;
    let var_3 = u_input.b.x;
    return 1000f;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    global0 = reverseBits(_wgslsmith_sub_u32(1u, u_input.c.x));
    var var_1 = true;
    let var_2 = !select(vec4<bool>(!(true | global1.x), global1.x, all(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global1.x), select(!(!vec4<bool>(true, global1.x, global1.x, global1.x)), vec4<bool>(true, false, true, u_input.b.x >= u_input.b.x), global1.x), !global1.x);
    var var_3 = vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.c.x), firstTrailingBit(0u));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1154f, 535f, 1307f) * vec4<f32>(-1000f, arg_0.x, arg_0.x, -2239f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-851f, -2269f, arg_1, arg_1)))))), min(u_input.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x) << (u_input.c.wx % vec2<u32>(32u)), vec2<i32>(u_input.b.x, 0i)), u_input.b.x >> (~var_3.x % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(abs(~u_input.a.x) | 0u, u_input.a.x) >> (vec2<u32>(~823u, ~select(u_input.c.x, u_input.c.x, global1.x)) % vec2<u32>(32u));
    var_0 = vec2<u32>(u_input.c.x, _wgslsmith_add_u32(66195u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.xww ^ vec3<u32>(4294967295u, 17304u, 16325u), ~u_input.a), min(~u_input.c.wwz, u_input.c.wxy))));
    let var_1 = arg_2.a.x;
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = any(global1.yww);
    global0 = ~1u;
    var var_1 = arg_2.x;
    var var_2 = func_4(func_2(arg_3.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(250f)))), _wgslsmith_div_vec3_f32(arg_3.ywz, vec3<f32>(_wgslsmith_f_op_f32(ceil(func_2(vec2<f32>(-1003f, arg_0), 1060f).a.x)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, -1054f)), -513f).a.x, 924f)), Struct_1(select(select(!vec4<bool>(true, var_0, global1.x, false), vec4<bool>(false, true, true, global1.x), vec4<bool>(false, false, true, false)), vec4<bool>(any(vec2<bool>(global1.x, global1.x)), var_0, var_0, !global1.x), !vec4<bool>(global1.x, true, false, false)), !select(select(global1.xw, vec2<bool>(var_0, true), global1.xw), vec2<bool>(global1.x, true), select(global1.yx, global1.wx, var_0))));
    var var_3 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(16495i), 40745i, _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(arg_2.x, arg_2.x, -2147483647i))), _wgslsmith_clamp_vec3_i32(arg_2, arg_2, arg_2)), countOneBits(arg_2)) & vec3<i32>(0i, ~(~reverseBits(u_input.b.x)), 1i);
    return _wgslsmith_f_op_f32(floor(arg_3.x));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(-1350f);
    var var_1 = 43118u;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), -1139f, global1.x)), arg_3, ~vec3<i32>(_wgslsmith_add_i32(0i, arg_1.b), -arg_3.b, 2147483647i), arg_1.a)));
    var var_3 = arg_2.x;
    let var_4 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1624f), _wgslsmith_f_op_f32(-110f + _wgslsmith_f_op_f32(round(var_2.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(367f)) - _wgslsmith_f_op_f32(-1000f - -1595f)));
    return Struct_2(arg_3.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_1.b, -2147483647i), ~(~vec3<i32>(arg_3.b, arg_1.b, u_input.b.x))), vec3<i32>(1i >> (1u % 32u), 0i, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(848f)))), 573f, _wgslsmith_f_op_f32(f32(-1f) * -1086f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f * -345f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(778f, 772f, 496f, -1000f), vec4<f32>(-372f, 707f, -1264f, -229f))))), i32(-1i) * -9761i);
    var var_1 = vec2<i32>(0i, ~var_0.b);
    var_0 = func_5(38344i, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1224f, var_0.a.x, var_0.a.x, -528f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.a)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, -702f, -1000f, -748f))))), countOneBits(0i)), vec3<f32>(-1000f, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(var_0.a.x, Struct_2(vec4<f32>(-725f, -130f, var_0.a.x, -489f), var_0.b), vec3<i32>(var_0.b, var_1.x, 1i), var_0.a)))))), func_2(_wgslsmith_f_op_vec2_f32(abs(var_0.a.xz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f))));
    global1 = !(!vec4<bool>(false, global1.x, all(select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), true)), !(252f >= var_0.a.x)));
    var var_2 = var_1.x;
    let var_3 = vec3<u32>(u_input.a.x, 52893u, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(max(0i | _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -abs(41831i)), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, var_1.x, -1i, var_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 1i, 57432i, var_1.x), vec4<i32>(-1i, -1i, u_input.b.x, var_0.b))), _wgslsmith_dot_vec2_i32(select(firstTrailingBit(vec2<i32>(1i, var_0.b)), vec2<i32>(u_input.b.x, 7539i), vec2<bool>(true, true)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_1.x, -40690i), vec3<i32>(var_1.x, var_1.x, -2268i)), u_input.b.x))), var_0.a, -reverseBits(~abs(vec2<i32>(var_0.b, 29257i))));
}

