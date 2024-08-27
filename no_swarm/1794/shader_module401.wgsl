struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = vec3<bool>(true, true, global0.a.d.x);
    var var_1 = global0.a;
    var var_2 = Struct_2(global0.a);
    let var_3 = var_2.a.b.xw;
    let var_4 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(var_1.b.x, var_3.x, var_3.x, -947f)))), var_2.a.b.x, !select(!select(global0.a.d, vec4<bool>(false, false, true, var_0.x), true), vec4<bool>(true, true, true, true), true), _wgslsmith_mult_u32(~(~(~0u)), 1u));
    return !vec2<bool>(var_1.d.x, !var_4.d.x);
}

fn func_2(arg_0: Struct_2) -> i32 {
    global0 = Struct_2(arg_0.a);
    let var_0 = arg_0.a;
    global1 = all(!select(func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(-8625i, -2147483647i, u_input.a.x), vec3<i32>(2147483647i, -1i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a.b.x, arg_0.a.b.x, -2256f)))), vec2<bool>(true, true), _wgslsmith_f_op_f32(round(167f)) < _wgslsmith_f_op_f32(-arg_0.a.b.x)));
    let var_1 = arg_0;
    let var_2 = firstLeadingBit(firstTrailingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 4550u) << (vec2<u32>(9970u, var_0.a) % vec2<u32>(32u)), vec2<u32>(var_1.a.a, global0.a.e))));
    return -77i;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = ~(~vec2<i32>(-34887i, ~abs(56i)));
    global1 = any(arg_1.d.wz);
    global1 = any(select(vec4<bool>(false, false, true, true), !select(!arg_1.d, vec4<bool>(true, true, true, global0.a.d.x), global0.a.d), vec4<bool>(true, any(select(vec3<bool>(false, true, true), global0.a.d.wzw, true)), false, all(arg_1.d.yz) & !global0.a.d.x)));
    global0 = Struct_2(Struct_1(~firstLeadingBit(~31589u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global0.a.b.x, global0.a.b.x)), global0.a.b.x, -1000f, _wgslsmith_f_op_f32(arg_1.c - 533f))), arg_1.b.x, global0.a.d, global0.a.a));
    global1 = false;
    return Struct_2(global0.a);
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    let var_0 = 51229u;
    global0 = Struct_2(Struct_1(5771u, global0.a.b, arg_0, vec4<bool>(select(true, true, u_input.a.x >= u_input.a.x), !all(arg_2.a.d.xyz), !(arg_1 > global0.a.c), arg_2.a.d.x), u_input.b));
    global0 = arg_2;
    var var_1 = -(_wgslsmith_clamp_i32(~1i, -_wgslsmith_mod_i32(0i, -1i), i32(-1i) * -24519i) << (_wgslsmith_clamp_u32(var_0, abs(abs(var_0)), var_0) % 32u));
    global0 = Struct_2(arg_2.a);
    return var_0;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_u32(arg_1.yx, arg_1.xy) << (vec2<u32>(select(~0u, ~(78279u >> (arg_1.x % 32u)), !global0.a.d.x), func_5(-1000f, -835f, func_4(func_2(Struct_2(Struct_1(global0.a.e, global0.a.b, 1540f, vec4<bool>(global0.a.d.x, arg_0, global0.a.d.x, true), 25258u))), global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.a.b, global0.a.b)) * vec4<f32>(814f, global0.a.b.x, arg_2, global0.a.b.x)))) % vec2<u32>(32u));
    let var_1 = u_input.a.zy;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -274f);
    let var_3 = global0.a;
    let var_4 = Struct_1(min(~1u, 0u) >> (_wgslsmith_mod_u32(global0.a.e, 38942u << (abs(var_3.a) % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, 380f, 565f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + global0.a.c) - 1000f), 331f)), 1531f)), vec4<bool>(func_3(vec3<i32>(max(var_1.x, -76617i), reverseBits(22329i), u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, 1900f, var_2))).x, global0.a.d.x == true, !var_3.d.x, global0.a.d.x), min(1u | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(4294967295u, 4294967295u, arg_1.x, var_3.e)), arg_1), func_4(_wgslsmith_dot_vec2_i32(u_input.a.xx, _wgslsmith_clamp_vec2_i32(var_1, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xy)), global0.a).a.e));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 51881u, var_0.x, 4294967295u) ^ vec4<u32>(u_input.b, var_0.x, u_input.b, arg_1.x), min(arg_1, firstTrailingBit(arg_1))), ~max(reverseBits(arg_1), ~vec4<u32>(27088u, 22926u, u_input.b, var_3.a))), _wgslsmith_div_u32(reverseBits(~var_0.x), ~1u));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global1 = false;
    global0 = func_4(u_input.a.x, func_4(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), firstLeadingBit(u_input.a)), Struct_1(1u, vec4<f32>(arg_2.c, arg_1.b.x, 627f, -197f), _wgslsmith_f_op_f32(ceil(arg_0.b.x)), vec4<bool>(true, arg_1.a < 57489u, global0.a.b.x > -1000f, 19910i < u_input.a.x), 0u)).a);
    global1 = (_wgslsmith_f_op_f32(func_4(u_input.a.x, Struct_1(arg_2.e, arg_2.b, -1611f, global0.a.d, 4294967295u)).a.c - -330f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1504f + 146f)))) & any(arg_2.d.yy);
    global1 = global0.a.d.x;
    return ~_wgslsmith_mod_i32(abs(-_wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(-1i, -45318i))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_6(Struct_1(~1u, global0.a.b, 154f, vec4<bool>(true, true, global0.a.d.x, true), func_1(global0.a.d.x, vec4<u32>(u_input.b, 0u, global0.a.e, 4294967295u), -136f)), Struct_1(global0.a.e, global0.a.b, global0.a.c, vec4<bool>(global0.a.d.x, true, global0.a.d.x, false), global0.a.e), global0.a) != -2147483647i;
    let var_1 = 1u;
    global1 = true & !func_3(vec3<i32>(-2147483647i >> (u_input.b % 32u), -18344i, -48008i), global0.a.b.yzw).x;
    let var_2 = func_4(u_input.a.x, func_4(i32(-1i) * -u_input.a.x, Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, var_1), ~u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, -1174f, -475f, 1526f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c, global0.a.b.x, global0.a.b.x, global0.a.b.x) * global0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1479f * 1135f), global0.a.b.x), global0.a.d, _wgslsmith_div_u32(11766u, select(u_input.b, 22140u, false)))).a).a;
    let var_3 = _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x ^ u_input.a.x, -33460i, -u_input.a.x), min(~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 0i, 1i, u_input.a.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i))), ~vec4<i32>(-2147483647i, (u_input.a.x | 1i) << (abs(global0.a.e) % 32u), ~select(u_input.a.x, u_input.a.x, false), i32(-1i) * -2147483647i));
    let var_4 = Struct_2(func_4(~(-2147483647i) | ((i32(-1i) * -7050i) >> (u_input.b % 32u)), global0.a).a);
    var var_5 = false;
    var var_6 = !all(vec2<bool>(var_2.d.x, all(!global0.a.d.yyw)));
    let var_7 = func_4(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_clamp_i32(-8624i, -26150i, select(1i, -u_input.a.x, true))), func_4(max(var_3.x, firstTrailingBit(reverseBits(20387i))), var_2).a).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(4294967295u, ~_wgslsmith_clamp_u32(~1u, var_4.a.e << (var_7.e % 32u), var_7.e)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-225f)) * _wgslsmith_f_op_f32(f32(-1f) * -170f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_4(var_3.x, Struct_1(32042u, vec4<f32>(var_2.b.x, 1012f, 1123f, -983f), -1000f, vec4<bool>(true, var_2.d.x, true, true), var_7.a)).a.c))))), vec3<i32>(-23830i, func_2(func_4(reverseBits(-1i), func_4(u_input.a.x, var_2).a)), -_wgslsmith_mod_i32(u_input.a.x, var_3.x)), -_wgslsmith_dot_vec2_i32(vec2<i32>(24705i, abs(0i)), vec2<i32>(u_input.a.x << (147054u % 32u), 0i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, -243f, global0.a.c, -845f)), global0.a.b))));
}

