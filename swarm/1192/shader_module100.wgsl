struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> u32 {
    global0 = vec4<bool>(_wgslsmith_div_i32(1i, _wgslsmith_add_i32(u_input.b.x, 663i)) > u_input.b.x, true, !(~min(4294967295u, 4294967295u) >= reverseBits(u_input.c.x)), global0.x);
    var var_0 = Struct_2(min(vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 0u), ~1u, select(u_input.c.x, 23039u, true), 7291u) ^ ~select(vec4<u32>(u_input.c.x, 4294967295u, 11428u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 63746u, u_input.c.x), vec4<bool>(true, global0.x, false, false)), vec4<u32>(1u >> (u_input.c.x % 32u), countOneBits(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, 6053u, u_input.c.x))), _wgslsmith_sub_u32(26224u, u_input.c.x), reverseBits(_wgslsmith_clamp_u32(1u, u_input.c.x, 140400u)))), all(vec2<bool>(global0.x | true, global0.x)) || all(global0.yzy), vec3<bool>(true, false, global0.x & true), Struct_1(u_input.c.x, vec3<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 87633u, u_input.c.x, 0u), vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x)), u_input.c.x & _wgslsmith_sub_u32(u_input.c.x, 4294967295u)), select(vec4<bool>(global0.x, true, true, all(vec4<bool>(false, false, true, true))), select(vec4<bool>(false, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), global0.x), true), true)), true);
    var var_1 = -1i;
    let var_2 = select(vec3<bool>(true, var_0.e, false), vec3<bool>(true, true, !(var_0.d.c.x & (true && global0.x))), false);
    let var_3 = any(select(vec4<bool>(true, any(var_0.d.c) != true, all(vec4<bool>(var_0.d.c.x, var_0.d.c.x, var_0.c.x, var_0.c.x)), var_2.x != true), !vec4<bool>(true, all(global0.yx), global0.x, var_0.a.x <= var_0.a.x), var_2.x));
    return reverseBits(firstLeadingBit(~4294967295u));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = 97136i;
    return vec4<u32>(u_input.c.x, arg_0.x, select(arg_3.b.x, _wgslsmith_sub_u32(~4294967295u, func_3(u_input.b.x)), false) << (~_wgslsmith_mod_u32(arg_0.x & 36329u, 0u) % 32u), ~arg_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = ~(firstLeadingBit((u_input.a & arg_1) >> (firstTrailingBit(1u) % 32u)) >> (select(4294967295u, 4294967295u, all(arg_0.d.c)) % 32u));
    var var_1 = Struct_2(~arg_0.a, !arg_0.e, select(!vec3<bool>(true, arg_0.e, !global0.x), !vec3<bool>(true | global0.x, true, true), any(global0.yzx)), arg_0.d, global0.x);
    var var_2 = var_1.d;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1549f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1240f, 270f), _wgslsmith_f_op_f32(1645f - -1657f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-966f, -187f))), 1109f), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(1626f + 1428f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-295f)), _wgslsmith_f_op_f32(-1464f + -364f)), -119f, 1f), true)));
    var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(438f)), -957f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(614f, _wgslsmith_f_op_f32(trunc(152f))) * _wgslsmith_f_op_f32(-var_3.x)), var_3.x));
    return Struct_1(~7171u, ~(min(vec3<u32>(u_input.c.x, arg_0.d.a, u_input.c.x), arg_0.a.yww) | _wgslsmith_mult_vec3_u32(var_2.b, _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.x, 4294967295u, var_1.d.b.x), vec3<u32>(1u, 14867u, 0u)))), select(var_1.d.c, vec4<bool>(false && !global0.x, false & (true || var_1.d.c.x), arg_0.b, any(vec4<bool>(true, false, false, true))), !vec4<bool>(all(vec3<bool>(arg_0.c.x, false, global0.x)), true, true, true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: vec2<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_add_u32(~4294967295u, 38920u >> (arg_0.a % 32u));
    let var_1 = func_4(Struct_2(func_2(vec4<u32>(min(13912u, arg_2), ~0u, 4294967295u, ~arg_0.a), 680f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, -421f, arg_3.x), vec4<f32>(arg_3.x, arg_3.x, arg_3.x, -1583f)))), arg_0), false, !arg_0.c.xzz, arg_0, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(9334i), _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(44447i, -14505i)), -3079i & ~u_input.b.x, -u_input.a), ~arg_1));
    global0 = func_4(Struct_2((~vec4<u32>(0u, arg_0.b.x, 20947u, 11093u) & countOneBits(vec4<u32>(0u, arg_0.b.x, u_input.c.x, arg_0.b.x))) | ((vec4<u32>(var_0, 7963u, 1u, 71684u) & vec4<u32>(37979u, arg_2, arg_0.a, 109040u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, u_input.c.x, var_1.b.x, 25120u), vec4<u32>(0u, arg_2, 4294967295u, arg_0.a))), false, func_4(Struct_2(firstLeadingBit(vec4<u32>(4294967295u, arg_2, 4294967295u, 53619u)), true, vec3<bool>(var_1.c.x, var_1.c.x, arg_0.c.x), func_4(Struct_2(vec4<u32>(u_input.c.x, arg_0.a, arg_2, 35300u), global0.x, global0.wwy, arg_0, arg_0.c.x), arg_1.x), arg_0.c.x), 2147483647i).c.zwz, func_4(Struct_2(~vec4<u32>(12175u, 0u, u_input.c.x, arg_0.a), any(var_1.c.zww), arg_0.c.wyz, var_1, var_1.c.x || var_1.c.x), 1i), any(vec4<bool>(false || var_1.c.x, false, select(global0.x, global0.x, true), any(var_1.c.zw)))), -1i).c;
    global0 = arg_0.c;
    var var_2 = arg_1.zyz;
    return min(arg_0.b, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(true, (global0.x || global0.x) & !global0.x, global0.x, !((83584u < u_input.c.x) && true) | !global0.x);
    var var_0 = ~vec2<u32>(u_input.c.x, 0u);
    let var_1 = ~u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -563f);
    var var_3 = Struct_1(9700u, _wgslsmith_mod_vec3_u32(~(~func_1(Struct_1(1u, u_input.c, vec4<bool>(true, false, global0.x, global0.x)), vec4<i32>(u_input.a, u_input.a, 2147483647i, 0i), var_1, vec2<f32>(-726f, -637f))), u_input.c), vec4<bool>(false, any(select(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, false, true)), !vec4<bool>(true, false, global0.x, global0.x), global0.x)), global0.x, (global0.x && select(global0.x, false, true)) | false));
    var_3 = func_4(Struct_2(countOneBits(vec4<u32>(select(11747u, var_0.x, false), 62571u, 42905u, var_3.a & 4294967295u)), !(!(false || global0.x)), vec3<bool>(false, global0.x, true), Struct_1(_wgslsmith_clamp_u32(min(var_3.b.x, 51165u), 0u, _wgslsmith_div_u32(var_3.a, var_3.a)), u_input.c, !select(var_3.c, var_3.c, true)), all(var_3.c.zz)), abs(-_wgslsmith_mult_i32(-57431i, u_input.b.x)));
    var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_3.a, 20498u, 34127u, var_1)) ^ (vec4<u32>(u_input.c.x, 20575u, var_1, 0u) ^ (vec4<u32>(var_3.b.x, var_0.x, var_0.x, u_input.c.x) ^ vec4<u32>(1u, 31178u, var_3.a, var_1))), vec4<u32>(_wgslsmith_clamp_u32(0u, ~0u, ~u_input.c.x), 20463u, abs(var_3.b.x), _wgslsmith_mod_u32(var_0.x, ~var_1))), _wgslsmith_sub_u32(var_3.b.x, u_input.c.x));
    var var_4 = true;
    var_3 = Struct_1(var_3.b.x, vec3<u32>(~var_0.x << (~24498u % 32u), 4294967295u ^ ~(~u_input.c.x), 477u), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(42656u, _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, 17929u), min(var_1, 20330u)), 0u), ~(~var_0.x) >> (0u % 32u), var_3.b.x), vec4<u32>(~var_0.x, _wgslsmith_div_u32(~41390u, select(var_1, 1441u, global0.x)), ~var_0.x & ~var_0.x, 0u) | firstTrailingBit(vec4<u32>(var_1, var_0.x, 0u, var_3.b.x) >> (vec4<u32>(86023u, var_1, var_0.x, var_1) % vec4<u32>(32u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(func_1(Struct_1(var_3.a, var_3.b, var_3.c), vec4<i32>(0i, u_input.b.x, 2147483647i, 17711i), var_1, vec2<f32>(1603f, 790f)).x, var_3.a, _wgslsmith_mult_u32(var_3.b.x, 105168u), var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 26153u, var_0.x, u_input.c.x), vec4<u32>(0u, var_1, var_0.x, u_input.c.x))), -countOneBits(u_input.b.x));
}

