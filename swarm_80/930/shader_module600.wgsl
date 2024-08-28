struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec4<f32>(-1110f, 1308f, 153f, 388f), 1i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<f32> {
    global0 = Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a, ~0u), ~(vec3<u32>(24603u, arg_1.a, u_input.b) & vec3<u32>(global0.a, arg_1.a, 1u))), global0.b, -1i);
    var var_0 = -(~(-1i >> (~(~arg_1.a) % 32u)));
    var var_1 = false;
    let var_2 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_1.b, arg_1.b))), 0i);
    var_1 = true;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(919f, _wgslsmith_f_op_f32(-1131f + 1354f), var_2.b.x, _wgslsmith_f_op_f32(abs(global0.b.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> f32 {
    global0 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.b.zxw))), Struct_1(arg_1.x, _wgslsmith_f_op_vec4_f32(-global0.b), -global0.c))) - _wgslsmith_f_op_vec4_f32(global0.b * global0.b)), ~(-(u_input.c | 1i)));
    var var_0 = 4294967295u;
    var_0 = u_input.b;
    var var_1 = ~vec2<u32>(1u, 81368u);
    let var_2 = Struct_1(0u, global0.b, 21571i);
    return -651f;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-752f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))));
    let var_1 = arg_0.x;
    global0 = Struct_1(abs(~_wgslsmith_mod_u32(44965u & global0.a, ~4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2377f, var_0.x, -1000f, var_0.x)) + vec4<f32>(254f, var_0.x, -1000f, 302f)) + global0.b) * vec4<f32>(global0.b.x, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, global0.b.x) + global0.b.ywx), Struct_1(u_input.b, global0.b, 1i))).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + 1630f))), 1673f)), 15264i);
    global0 = Struct_1(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(122f, var_0.x, var_0.x))), Struct_1(0u, global0.b, global0.c))).x, _wgslsmith_f_op_f32(1303f - 1f), 634f, _wgslsmith_f_op_f32(-1f))), -arg_1.x);
    var var_2 = Struct_1(global0.a, vec4<f32>(global0.b.x, -1083f, global0.b.x, var_0.x), u_input.d.x);
    return Struct_1(98189u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_2.b + vec4<f32>(global0.b.x, 455f, var_2.b.x, -1961f)), vec4<f32>(global0.b.x, var_0.x, var_2.b.x, global0.b.x), !arg_0))))), var_2.c >> ((0u << (global0.a % 32u)) % 32u));
}

fn func_1() -> Struct_1 {
    global0 = func_4(!(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), vec2<i32>(-u_input.c, -23393i), _wgslsmith_f_op_f32(-995f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec4<bool>(false, false, true, true), vec3<u32>(global0.a, global0.a, 1454u))), _wgslsmith_f_op_f32(-609f - global0.b.x)))) < _wgslsmith_f_op_f32(floor(global0.b.x)), vec3<u32>(abs(~(~824u)), _wgslsmith_sub_u32(firstLeadingBit(1u), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 39420u)), 88288u));
    let var_0 = Struct_1(1u >> (0u % 32u), _wgslsmith_f_op_vec4_f32(round(global0.b)), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, -1510i, global0.c, u_input.d.x), u_input.d), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d.x, global0.c), u_input.d.xxw), ~1i), ~global0.c & -1i) << (select(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global0.a, 4294967295u, 29371u), vec4<u32>(u_input.b, global0.a, u_input.b, 53200u)), vec4<u32>(1u, 0u, 0u, 31488u)), _wgslsmith_mult_u32(~u_input.b, global0.a), select(all(vec3<bool>(false, false, true)), all(vec3<bool>(false, false, true)), true)) % 32u));
    global0 = Struct_1(~42677u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2624f, var_0.b.x, -820f, global0.b.x)), _wgslsmith_f_op_vec4_f32(global0.b - var_0.b))) + vec4<f32>(-793f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(863f - global0.b.x), _wgslsmith_f_op_f32(var_0.b.x + global0.b.x)))), _wgslsmith_dot_vec4_i32(u_input.d, ~countOneBits(u_input.d)));
    global0 = Struct_1(_wgslsmith_add_u32(4294967295u, global0.a) ^ ~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(94962u, 31447u, u_input.b), vec3<u32>(var_0.a, 0u, 1u))), var_0.b, -var_0.c);
    global0 = var_0;
    return Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1156f, global0.b.x, var_0.b.x, 738f), vec4<f32>(global0.b.x, -426f, var_0.b.x, -699f)))))), -22607i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    global0 = func_1();
    var var_1 = any(vec3<bool>(!(!(u_input.d.x < global0.c)), any(vec2<bool>(true, true)), true));
    var var_2 = func_4(vec4<bool>(true | (all(vec3<bool>(true, false, true)) || true), true, true, !any(vec2<bool>(true, false)) || true), _wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.d.ww), u_input.d.xw), true, ~_wgslsmith_mult_vec3_u32(~select(vec3<u32>(0u, global0.a, 65056u), vec3<u32>(45502u, u_input.b, global0.a), vec3<bool>(false, false, false)), vec3<u32>(u_input.b, global0.a, 99260u) << (~vec3<u32>(1u, u_input.b, 25575u) % vec3<u32>(32u)))).b.yyx;
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(select(select(u_input.d.zwy, vec3<i32>(u_input.c, global0.c, global0.c), true), abs(vec3<i32>(-8663i, 2147483647i, u_input.c)), true), ~abs(vec3<i32>(-27508i, -1i, -6281i))), -4337i, global0.c), _wgslsmith_div_i32(u_input.a, firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(558i, u_input.d.x, 2147483647i, global0.c)), -global0.c))));
    global0 = func_1();
    var var_4 = abs(vec3<i32>(firstLeadingBit(abs(global0.c)), 1i, 10470i) >> (((firstLeadingBit(vec3<u32>(29517u, 4294967295u, 2079u)) ^ (vec3<u32>(43303u, 4294967295u, 4294967295u) << (vec3<u32>(global0.a, 1u, 55097u) % vec3<u32>(32u)))) | ~(vec3<u32>(32618u, 3424u, 0u) >> (vec3<u32>(u_input.b, global0.a, 20496u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_sub_i32(14779i, _wgslsmith_clamp_i32(0i, 1i, _wgslsmith_dot_vec4_i32(~u_input.d, vec4<i32>(-1i, var_4.x, -2147483647i, 38941i)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.b.x)), 739f)), -_wgslsmith_add_i32(var_4.x >> (_wgslsmith_clamp_u32(global0.a, global0.a, global0.a) % 32u), max(global0.c, var_4.x)), global0.b.zzw);
}

