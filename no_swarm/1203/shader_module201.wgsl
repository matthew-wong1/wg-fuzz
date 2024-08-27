struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
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

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

var<private> global2: vec3<f32>;

var<private> global3: vec4<f32> = vec4<f32>(140f, -273f, -1055f, 1441f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> bool {
    global0 = select(vec3<bool>(any(!vec3<bool>(arg_0.d.x, global0.x, false)), all(vec3<bool>(false, arg_0.a.x >= arg_3.a.x, true)), false), select(vec3<bool>(true, true, true), vec3<bool>(!all(global0.yy), -arg_3.a.x < u_input.a.x, false), select(vec3<bool>(!global0.x, false, true), !select(vec3<bool>(true, arg_3.b, arg_2), vec3<bool>(true, false, global1.d.x), vec3<bool>(true, arg_2, false)), _wgslsmith_f_op_f32(select(222f, -450f, true)) <= -271f)), !(!select(vec3<bool>(global1.b, true, false), vec3<bool>(global1.b, arg_2, arg_0.b), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))));
    var var_0 = vec4<u32>(33672u, ~_wgslsmith_dot_vec4_u32((vec4<u32>(1u, global1.c.x, global1.c.x, u_input.b.x) & vec4<u32>(global1.c.x, 25976u, 79905u, 33272u)) ^ vec4<u32>(arg_0.c.x, 0u, 18570u, 0u), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.x, 40285u, global1.c.x, global1.c.x), vec4<u32>(552u, global1.c.x, 1u, arg_0.c.x))), u_input.b.x, u_input.b.x);
    var var_1 = select(vec4<u32>(arg_0.c.x, _wgslsmith_mult_u32(global1.c.x, countOneBits(u_input.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(19865u, 4294967295u), (vec2<u32>(global1.c.x, 39972u) << (u_input.b.zy % vec2<u32>(32u))) >> (~var_0.wx % vec2<u32>(32u))), ~(~global1.c.x)), vec4<u32>(~arg_0.c.x, global1.c.x, 1222u, ~_wgslsmith_mult_u32(u_input.b.x, 1u) | abs(global1.c.x)), arg_3.d.x);
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e) * _wgslsmith_f_op_f32(step(1341f, arg_0.e)))), global2.x, 610f));
    let var_2 = select(vec3<bool>(global1.e < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(924f * -384f) - _wgslsmith_f_op_f32(-global3.x)), !((arg_0.c.x >= var_0.x) | any(vec3<bool>(true, true, false))), ~(-16745i) != (_wgslsmith_clamp_i32(global1.a.x, -1i, arg_0.a.x) ^ _wgslsmith_sub_i32(arg_0.a.x, 1i))), vec3<bool>(true, any(vec3<bool>(arg_2, arg_3.d.x, arg_3.b)) & select(arg_2, all(vec3<bool>(global1.d.x, arg_3.b, false)), !arg_3.d.x), true), !select(vec3<bool>(arg_2, all(vec4<bool>(true, true, true, false)), arg_3.d.x & false), !vec3<bool>(global0.x, global1.d.x, global0.x), vec3<bool>(any(vec4<bool>(false, false, global0.x, false)), true, false)));
    return all(!vec4<bool>((global1.e <= global3.x) || all(vec4<bool>(false, arg_3.b, global0.x, arg_2)), any(vec4<bool>(true, global1.d.x, true, false)) && arg_3.b, false, abs(arg_3.a.x) > global1.a.x));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<f32>) -> vec4<f32> {
    let var_0 = Struct_1(global1.a, select(global1.d.x, !(!func_3(Struct_1(global1.a, true, u_input.b.xz, global1.d, arg_2.x), global3.yy, arg_1, Struct_1(vec4<i32>(-24044i, 2147483647i, 2122i, 65012i), global0.x, global1.c, vec2<bool>(global1.b, global1.b), 1000f))), any(vec3<bool>(true || global1.b, arg_2.x > global3.x, func_3(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2951i), arg_1, vec2<u32>(arg_0, global1.c.x), vec2<bool>(arg_1, global0.x), 434f), vec2<f32>(arg_2.x, 1011f), arg_1, Struct_1(global1.a, false, u_input.b.xy, vec2<bool>(arg_1, arg_1), global1.e))))), u_input.b.yz, !vec2<bool>((15863i == global1.a.x) || func_3(Struct_1(global1.a, true, u_input.b.xz, global1.d, global1.e), vec2<f32>(632f, global2.x), global0.x, Struct_1(vec4<i32>(0i, 27999i, 65327i, 0i), global1.b, vec2<u32>(10552u, global1.c.x), vec2<bool>(true, false), 360f)), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global3.x, arg_2.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 2374f)))));
    let var_1 = var_0.a.x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), global3.x, _wgslsmith_f_op_f32(f32(-1f) * -300f), -732f);
    let var_3 = var_0;
    global3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_2)));
    return arg_2;
}

fn func_1() -> u32 {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(0u, !global1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global1.e, -1032f) - vec4<f32>(-315f, global2.x, -698f, global3.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e, global3.x, 1304f, -894f) - vec4<f32>(-1350f, global3.x, 1092f, -492f))))));
    global0 = !(!(!(!vec3<bool>(global1.b, global0.x, false))));
    var var_0 = u_input.b.x & (_wgslsmith_mod_u32(u_input.b.x, ~min(u_input.b.x, 4294967295u)) | global1.c.x);
    global0 = vec3<bool>(global1.d.x, global0.x, global0.x);
    let var_1 = Struct_1(firstLeadingBit(~min(_wgslsmith_div_vec4_i32(vec4<i32>(0i, global1.a.x, global1.a.x, -1i), global1.a), abs(global1.a))), false, global1.c, global0.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + _wgslsmith_div_f32(global1.e, global1.e)))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>((~(-2110i) > _wgslsmith_sub_i32(global1.a.x, global1.a.x)) | all(vec4<bool>(false, global0.x, global0.x, global1.d.x)), true, any(global0.zz));
    var var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(global1.a, _wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, 2147483647i, u_input.a.x, global1.a.x), global1.a), abs(global1.a)), !global0.x, _wgslsmith_sub_vec2_u32(~(vec2<u32>(global1.c.x, u_input.b.x) & u_input.b.yy), ~select(firstTrailingBit(u_input.b.xx), global1.c, true)), vec2<bool>(global1.b, !(abs(global1.a.x) < 20248i)), global2.x);
    var var_2 = ~(~(~_wgslsmith_div_u32(global1.c.x | 31379u, 40971u)));
    global0 = !select(vec3<bool>(var_1.c.x == select(var_1.c.x, 0u, global1.b), false, (global1.b && var_1.b) & true), select(select(select(vec3<bool>(global0.x, var_1.b, false), vec3<bool>(true, false, global1.d.x), vec3<bool>(true, true, global0.x)), vec3<bool>(false, global0.x, false), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, var_1.d.x, true), var_1.b), select(vec3<bool>(false, true, var_1.b), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, var_1.b, var_1.d.x), true), false)), global1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, 1000f, -546f, global3.x) + vec4<f32>(-1189f, -908f, var_1.e, var_1.e)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -489f, -705f, global3.x)))))));
}

