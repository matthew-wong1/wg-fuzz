struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, 10273i, -2834f, 233f);

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: vec3<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(firstLeadingBit(~(-2147483647i)), ~_wgslsmith_dot_vec3_i32(abs(u_input.d >> (vec3<u32>(21602u, 7164u, global2.x) % vec3<u32>(32u))), vec3<i32>(-15152i, ~arg_3.b, global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1679f), -268f);
    global2 = ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), ~global2.zx), min(u_input.a.x ^ 0u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, u_input.c, u_input.a.x), vec3<u32>(38716u, global2.x, 0u), vec3<bool>(global1.x, true, false)), vec3<u32>(global2.x, u_input.c, 41394u))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(global2.x, 46998u, u_input.a.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(global2.x, 12349u, 1u), vec3<u32>(global2.x, 4294967295u, 19979u))));
    global2 = ~select(~(~vec3<u32>(9028u, u_input.c, 27012u)), select(countOneBits(vec3<u32>(u_input.a.x, 56758u, 68388u) ^ vec3<u32>(u_input.a.x, global2.x, 97154u)), ~(vec3<u32>(u_input.a.x, global2.x, global2.x) >> (vec3<u32>(4294967295u, 28864u, u_input.c) % vec3<u32>(32u))), select(select(vec3<bool>(true, global1.x, false), vec3<bool>(true, true, true), global1.x), select(global1.zwz, global1.zxy, vec3<bool>(true, true, global1.x)), select(global1.zyw, vec3<bool>(false, global1.x, false), global1.x))), select(false, false, true));
    let var_1 = _wgslsmith_add_i32(arg_0.a, min(-_wgslsmith_clamp_i32(arg_1.x >> (9454u % 32u), ~0i, ~(-1i)), arg_0.b));
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(-(vec4<i32>(-2147483647i, u_input.b, -1i, arg_1.x) & abs(vec4<i32>(2147483647i, var_0.b, 0i, -58754i))), ~abs(vec4<i32>(-2147483647i, arg_0.b, global0.a, -1i) | vec4<i32>(u_input.d.x, -1i, 1i, 2147483647i))), _wgslsmith_add_i32(0i, -u_input.d.x), -1582f, _wgslsmith_f_op_f32(max(1927f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -283f))));
    return !select(!select(select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(true, global1.x, true, global1.x), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, global1.x, global1.x), global1.x), vec4<bool>(true, true, global1.x, false)), !vec4<bool>(false, global0.c != 728f, true, 22280i == var_0.a), -14858i <= ~(-global0.b));
}

fn func_2() -> vec3<i32> {
    global1 = !func_3(Struct_1(global0.b, -11026i, global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c, global0.d)) - _wgslsmith_f_op_f32(f32(-1f) * -690f))), _wgslsmith_div_vec2_i32(min(vec2<i32>(global0.a, global0.a), countOneBits(u_input.d.zx)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.a, u_input.d.x), u_input.d.yy)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(946f, -353f))), vec2<f32>(-1000f, global0.d)), Struct_1(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, 28193i, global0.a), -vec3<i32>(-19296i, u_input.b, 0i)), global0.d, 513f));
    global1 = !vec4<bool>(true | global1.x, false, !any(global1.wx), global1.x);
    global0 = Struct_1(~u_input.b, 2147483647i, global0.d, _wgslsmith_f_op_f32(ceil(global0.c)));
    let var_0 = !(!((!global1.x & false) & any(select(global1.zx, global1.zz, vec2<bool>(global1.x, global1.x)))));
    global1 = select(vec4<bool>(true || global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1240f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - -1792f), var_0, !(var_0 || global1.x) | !all(vec4<bool>(global1.x, false, global1.x, false))), !(!select(vec4<bool>(global1.x, var_0, var_0, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, global1.x, var_0, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, var_0, true), vec4<bool>(global1.x, true, true, global1.x)))), var_0);
    return vec3<i32>(u_input.b, (~(-6060i) | select(-2147483647i, -30263i, var_0)) ^ ~abs(u_input.d.x), global0.b) >> (vec3<u32>(min(~(~u_input.a.x), countOneBits(~10036u)), ~_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, u_input.a.x), global2.yy), u_input.c), ~_wgslsmith_div_u32(global2.x ^ 0u, global2.x)) % vec3<u32>(32u));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)), _wgslsmith_f_op_f32(-1149f - _wgslsmith_f_op_f32(floor(-1225f))), true)) * arg_1.d), arg_1.c, 872f);
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(func_2(), select(-_wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(arg_1.a, 2147483647i, arg_1.a)), _wgslsmith_div_vec3_i32(vec3<i32>(-17762i, global0.a, arg_1.a), u_input.d) ^ ~vec3<i32>(9130i, global0.b, u_input.b), global1.xxy)), _wgslsmith_add_i32(-_wgslsmith_mult_i32(0i, u_input.d.x), -(~_wgslsmith_dot_vec2_i32(u_input.d.yz, vec2<i32>(-2147483647i, arg_1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1025f, 489f)), 213f), _wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -861f), true)));
    global2 = ~abs(~vec3<u32>(_wgslsmith_clamp_u32(11558u, 44097u, 4294967295u), global2.x, ~u_input.c));
    global0 = Struct_1(global0.a, var_1.b, _wgslsmith_f_op_f32(-arg_1.c), var_1.c);
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(~(~abs(arg_1.b)), u_input.d.x), ~select(~(-1i) >> ((u_input.a.x | u_input.a.x) % 32u), abs(_wgslsmith_add_i32(arg_1.a, 2147483647i)), any(select(global1.zyy, vec3<bool>(true, arg_0.x, arg_0.x), global1.yyx))), global0.a, func_2().x);
    return Struct_1(var_1.b, -1i, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.d))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-593f, _wgslsmith_div_f32(-103f, 181f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.d, -739f)))))))));
    var var_1 = -countOneBits(firstLeadingBit(u_input.d.x));
    var var_2 = global1.xx;
    var_1 = func_2().x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1068f)))) - global0.c)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c, global0.c))), _wgslsmith_f_op_f32(f32(-1f) * -722f));
    let var_1 = vec3<bool>(any(select(!(!vec4<bool>(false, global1.x, false, global1.x)), vec4<bool>(!global1.x, true, true, !global1.x), select(true, global1.x, false))), true, all(global1.zw));
    var var_2 = var_0.yx;
    global1 = vec4<bool>(all(vec3<bool>(!(var_2.x <= var_0.x), func_4(~0u, func_1(vec2<bool>(var_1.x, var_1.x), Struct_1(0i, global0.b, global0.d, 300f)), func_1(global1.ww, Struct_1(-20456i, u_input.d.x, global0.c, 850f))), true)), false, func_4(global2.x, func_1(!func_3(Struct_1(-16107i, 1i, -946f, var_2.x), vec2<i32>(u_input.b, -2147483647i), var_0.yz, Struct_1(global0.a, 74187i, var_0.x, 306f)).zx, func_1(!global1.wz, func_1(var_1.xx, Struct_1(37959i, 12437i, global0.d, -1680f)))), Struct_1(-24435i, -(global0.a >> (0u % 32u)), var_2.x, -919f)), true);
    let var_3 = 53580u;
    var var_4 = Struct_1(max(u_input.b, _wgslsmith_add_i32(-u_input.b << (1u % 32u), u_input.d.x)), -9699i, var_2.x, var_0.x);
    global0 = func_1(func_3(Struct_1(-global0.b, 1i, -269f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.d)))), -vec2<i32>(var_4.b >> (global2.x % 32u), -2147483647i), _wgslsmith_f_op_vec2_f32(-var_0.xy), Struct_1(1i, 6237i, var_4.d, _wgslsmith_f_op_f32(round(-1711f)))).wx, Struct_1(~global0.b, 2147483647i >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.x, var_3), global2.x) % 32u), _wgslsmith_f_op_f32(ceil(-1000f)), func_1(!(!vec2<bool>(global1.x, true)), Struct_1(global0.a, _wgslsmith_clamp_i32(-69951i, 1i, global0.b), global0.d, _wgslsmith_f_op_f32(min(var_0.x, var_4.d)))).d));
    global1 = select(select(vec4<bool>(true, func_3(func_1(var_1.xz, Struct_1(var_4.b, global0.b, global0.c, var_0.x)), vec2<i32>(25856i, u_input.b), _wgslsmith_f_op_vec2_f32(-var_0.yy), func_1(vec2<bool>(false, true), Struct_1(20759i, 4118i, var_2.x, var_0.x))).x, true, false), vec4<bool>(true, true, true, true), func_3(func_1(var_1.zz, Struct_1(2147483647i, 9734i, global0.d, 1681f)), select(vec2<i32>(-35814i, var_4.b), u_input.d.zz, global1.xz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-543f, global0.d), vec2<f32>(-972f, -1642f)))), Struct_1(reverseBits(-26103i), -global0.a, -211f, _wgslsmith_f_op_f32(-var_0.x)))), vec4<bool>(!((global1.x & true) | true), var_1.x && any(vec2<bool>(false, false)), global1.x, any(vec4<bool>(var_1.x, true, true, false)) | func_3(Struct_1(42319i, u_input.b, var_2.x, global0.c), -vec2<i32>(global0.b, 1i), var_0.xx, func_1(var_1.zy, Struct_1(-1i, u_input.b, -1434f, -1000f))).x), !func_4(1u, Struct_1(func_1(vec2<bool>(false, true), Struct_1(2147483647i, var_4.b, var_4.d, 372f)).b, -1i, global0.d, _wgslsmith_f_op_f32(round(979f))), func_1(select(vec2<bool>(global1.x, global1.x), var_1.zy, true), Struct_1(var_4.b, 0i, var_4.c, 727f))));
    var_4 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-77694i, 2147483647i, -_wgslsmith_add_i32(-1i, -2147483647i)), -vec3<i32>(global0.a, _wgslsmith_mult_i32(2147483647i, -1i), _wgslsmith_mult_i32(0i, u_input.b))), ~var_4.a ^ -(i32(-1i) * -u_input.b), var_4.c, _wgslsmith_f_op_f32(max(-1138f, 208f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(~59676u, u_input.a.x, _wgslsmith_div_u32(u_input.c, 34275u))) | countOneBits(vec3<u32>(u_input.c, ~16493u, ~13624u)), ~reverseBits(vec3<u32>(4294967295u, var_3, 24398u) << (vec3<u32>(0u, u_input.c, 4294967295u) % vec3<u32>(32u))) ^ vec3<u32>(min(~106376u, 66690u << (u_input.c % 32u)), 4294967295u, _wgslsmith_sub_u32(var_3, var_3) << (~38370u % 32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, ~global0.a, _wgslsmith_mult_i32(-u_input.d.x, 11911i | var_4.b), _wgslsmith_div_i32(var_4.a, 0i) << (firstTrailingBit(1u) % 32u)), countOneBits(-_wgslsmith_add_vec4_i32(vec4<i32>(var_4.b, 37110i, -19906i, global0.b), vec4<i32>(0i, 4916i, 1i, 0i)))), vec3<i32>(~(~(~u_input.b)), _wgslsmith_dot_vec3_i32(u_input.d, firstTrailingBit(vec3<i32>(4145i, global0.a, -45152i))), ~(-(~56068i))));
}

