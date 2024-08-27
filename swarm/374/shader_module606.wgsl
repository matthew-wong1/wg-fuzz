struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5 = Struct_5(-756f, 0i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = global1.a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(246f * global1.a) - global1.a) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1180f, global1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), -292f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1264f)))))), global1.a, _wgslsmith_f_op_f32(step(-592f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-143f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-142f - global1.a))))))));
    global0 = ~(~((~global1.b | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a, 1i, u_input.a.x, global1.b), u_input.a)) >> (countOneBits(51204u) % 32u)));
    global0 = 2147483647i;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-588f, -993f)), global1.a, var_1.x, _wgslsmith_f_op_f32(824f + var_1.x))));
    return !select(select(vec3<bool>(arg_0, true, all(vec2<bool>(false, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), !vec3<bool>(arg_1.x, true, true), !vec3<bool>(false, arg_1.x, arg_1.x))), !(!select(vec3<bool>(arg_0, arg_1.x, arg_1.x), vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, true))), !vec3<bool>(arg_0, !arg_1.x, arg_1.x & false));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<i32>) -> bool {
    var var_0 = Struct_4(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), true), func_3(arg_0 <= 36737u, vec2<bool>(false, true), Struct_2(u_input.a.x, vec3<u32>(1u, 4294967295u, arg_0)))), ~_wgslsmith_clamp_u32(arg_0, ~firstLeadingBit(arg_0), min(arg_0 & 1u, reverseBits(arg_0))), Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a, 846f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, -1000f, global1.a)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.a, -372f, -889f), vec3<f32>(global1.a, global1.a, -382f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(-global1.a), -2114f, var_0.c.c.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.b.x + var_0.c.b.x) + var_0.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.c.c.x)), _wgslsmith_f_op_f32(select(global1.a, var_0.c.b.x, var_0.a.x)))))));
    var var_2 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2.x, arg_2.x), _wgslsmith_dot_vec2_i32(-(~u_input.a.zz), vec2<i32>(u_input.a.x & 42546i, _wgslsmith_add_i32(14013i, -3338i)))), func_3(true, vec2<bool>((false && var_0.a.x) | (42837u <= arg_0), var_0.a.x), Struct_2(~global1.b & 2147483647i, vec3<u32>(arg_0, countOneBits(0u), var_0.b))).xz, Struct_2(81265i, _wgslsmith_add_vec3_u32(abs(vec3<u32>(106406u, arg_0, var_0.b)), ~(~vec3<u32>(1u, 106672u, var_0.b)))), firstLeadingBit(vec2<u32>(var_0.b ^ select(74293u, var_0.b, var_0.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(2983u, 56190u, 1u), ~vec3<u32>(arg_0, 49479u, var_0.b)))), ((_wgslsmith_add_u32(arg_0, arg_0) << (~4294967295u % 32u)) | ~40447u) >> (_wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(arg_0, var_0.b, min(var_0.b, arg_0))) % 32u));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.c.x)));
    global0 = arg_1;
    return true;
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    global0 = global1.b;
    let var_0 = !vec4<bool>(false, arg_0.a, false, !((global1.b >= u_input.a.x) | func_2(9031u, u_input.a.x, u_input.a.yw)));
    let var_1 = Struct_4(var_0.ywz, 25745u, Struct_1(!(-345f != _wgslsmith_f_op_f32(-global1.a)), vec2<f32>(_wgslsmith_f_op_f32(-global1.a), arg_0.c.x), vec3<f32>(arg_0.b.x, 800f, _wgslsmith_f_op_f32(925f * -202f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1102f, global1.a) + _wgslsmith_f_op_f32(ceil(-1259f)))), arg_0.b.x, 1106f, -1539f));
    global0 = global1.b;
    return u_input.a.yw;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_5(global1.a, select(-(_wgslsmith_dot_vec2_i32(u_input.a.xw, u_input.a.yw) >> (_wgslsmith_clamp_u32(12885u, 13722u, 4294967295u) % 32u)), _wgslsmith_dot_vec2_i32(func_1(Struct_1(true, vec2<f32>(global1.a, global1.a), vec3<f32>(255f, -956f, -1741f))), vec2<i32>(-29513i, u_input.a.x >> (4294967295u % 32u))), any(vec3<bool>(true, true, true))));
    let var_0 = Struct_3(~global1.b, vec2<bool>(true, false), Struct_2(u_input.a.x, vec3<u32>(1u, 1u, 1u)), _wgslsmith_sub_vec2_u32(select(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 35959u)), vec2<u32>(4294967295u, 39623u)), ~(~vec2<u32>(0u, 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), ~abs(vec2<u32>(1u, 0u)))), _wgslsmith_dot_vec2_u32(~(~abs(vec2<u32>(19929u, 21720u))), vec2<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(67510u, 4294967295u, 0u), vec3<u32>(16824u, 1u, 7445u)))));
    global0 = -(_wgslsmith_mod_i32(_wgslsmith_mod_i32(~2147483647i, i32(-1i) * -1i), 29833i) >> (~var_0.e % 32u));
    var var_1 = ~(~_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.e, 55768u), 37688u)));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~var_0.e, var_0.c.b.x, var_0.d.x), vec4<u32>(var_0.d.x, _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(4294967295u, var_0.c.b.x)), var_0.c.b.yy), ~countOneBits(var_0.c.b.x), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 7924u, var_0.d.x), vec3<u32>(var_0.d.x, var_0.d.x, var_0.d.x)) & 0u)));
    var var_3 = !all(!select(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, false, false, true), vec4<bool>(var_0.b.x, true, var_0.b.x, false))) & any(!vec4<bool>(false || var_0.b.x, var_0.b.x, global1.a < 1551f, !var_0.b.x));
    global0 = func_1(Struct_1(false, vec2<f32>(-1270f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1339f, 1562f)), global1.a, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1261f, -321f, global1.a) - vec3<f32>(global1.a, global1.a, -1824f)), vec3<f32>(-498f, -318f, global1.a), select(vec3<bool>(false, true, false), vec3<bool>(var_0.b.x, false, var_0.b.x), var_0.b.x)))))).x;
    global1 = Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-242f)))), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(max(-global1.b, -28105i), var_0.c.b.x, ~var_0.e, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~global1.b, ~(-2147483647i), global1.b << (var_0.d.x % 32u)), vec3<i32>(firstLeadingBit(0i), -2147483647i, 53032i)), var_0.c.a >> (_wgslsmith_mod_u32(var_0.c.b.x, _wgslsmith_dot_vec2_u32(var_0.d, var_0.d)) % 32u), -20653i, global1.b));
}

