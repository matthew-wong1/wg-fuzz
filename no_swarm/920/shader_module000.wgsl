struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -1000f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> vec3<i32> {
    let var_0 = Struct_3(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-947f * arg_0.b) + -615f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1218f - arg_0.d.x) - _wgslsmith_f_op_f32(-1073f - 1000f)))), -u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-337f)), _wgslsmith_f_op_f32(-689f + 819f), -1381f, _wgslsmith_f_op_f32(global0.x + global0.x))) - arg_0.d), vec4<bool>(any(arg_0.e.wzx), arg_0.e.x, arg_0.e.x, !arg_0.e.x));
    var var_1 = Struct_1(abs(arg_0.a.b));
    var_1 = Struct_1(~(var_0.a.b >> (firstLeadingBit(u_input.b) % vec4<u32>(32u))));
    var var_2 = var_0.a;
    var var_3 = Struct_1(~abs(~firstTrailingBit(var_2.b)));
    return u_input.d ^ -min(_wgslsmith_add_vec3_i32(u_input.d, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.d.x), u_input.d)), ~(vec3<i32>(var_0.c, u_input.d.x, 40781i) & u_input.d));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> vec2<u32> {
    var var_0 = countOneBits(-(~func_3(Struct_3(Struct_2(u_input.a.x, vec4<u32>(1u, 1u, u_input.a.x, u_input.e)), 1690f, u_input.d.x, vec4<f32>(arg_2.x, -464f, global0.x, arg_2.x), vec4<bool>(false, true, true, false)), vec4<f32>(arg_2.x, arg_1, -615f, arg_1))) & -vec3<i32>(-u_input.d.x, u_input.d.x, u_input.d.x));
    var var_1 = arg_2.x;
    global0 = vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1019f * arg_1)), -1406f));
    global0 = _wgslsmith_f_op_vec2_f32(arg_2.xw + arg_2.yw);
    return select(arg_0.a.xx ^ abs(vec2<u32>(1u, u_input.a.x)), u_input.b.wy, !any(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = ~func_2(arg_3, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -237f) - global0.x), 512f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-270f, 370f, global0.x, global0.x), vec4<f32>(global0.x, -158f, -1684f, 1968f))))));
    let var_1 = arg_3;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-474f + 1000f)))))), global0.x);
    var var_2 = vec4<i32>(u_input.d.x, -2147483647i, ~(-u_input.d.x), -68142i) >> (arg_3.a % vec4<u32>(32u));
    var_2 = firstLeadingBit(min(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_2.x, 1i, u_input.d.x, 1553i), ~vec4<i32>(u_input.d.x, -22092i, var_2.x, -33502i)) & (max(vec4<i32>(var_2.x, 11464i, 17452i, -1i), vec4<i32>(var_2.x, var_2.x, u_input.d.x, 0i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.x, arg_0, 31427u, 20164u), arg_2.b) % vec4<u32>(32u))), vec4<i32>(1i, u_input.d.x, u_input.d.x, ~(-2209i))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), global0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(208f, global0.x)) * _wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-357f, 443f, !(var_0.x >= 0u))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1318f, -1092f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.b.zz, ~(vec2<u32>(1u, u_input.b.x) & vec2<u32>(108768u, u_input.a.x))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), ~u_input.b.wz), vec2<u32>(~1u, u_input.a.x >> (u_input.e % 32u)))), ~(u_input.b ^ abs(_wgslsmith_div_vec4_u32(u_input.b, u_input.b))));
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i >> (_wgslsmith_add_u32(0u, _wgslsmith_add_u32(61708u, var_0.a)) % 32u), _wgslsmith_add_i32(~0i, u_input.d.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.d, select(u_input.d, u_input.d, true)), -14015i));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1283f, global0.x) + vec2<f32>(448f, global0.x))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-global0.x), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(global0.x - -1648f))), global0.x < _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), -1840f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(19570u, vec2<bool>(false, false), Struct_2(var_0.a, u_input.b), Struct_1(u_input.b))) - vec2<f32>(global0.x, 253f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -554f), vec2<f32>(-1262f, global0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -107f) - vec2<f32>(-1208f, global0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let var_3 = abs(var_0.b.xwy);
    var var_4 = abs(var_3.zy) >> (vec2<u32>(var_0.a, u_input.b.x) % vec2<u32>(32u));
    var var_5 = _wgslsmith_dot_vec2_i32(abs((~var_1 >> (~u_input.b.yw % vec2<u32>(32u))) >> ((vec2<u32>(var_0.b.x, 56637u) & vec2<u32>(u_input.b.x, 1u)) % vec2<u32>(32u))), select(vec2<i32>(6865i, _wgslsmith_clamp_i32(i32(-1i) * -1i, u_input.d.x, -1i)), -min(~vec2<i32>(-12697i, 53826i), vec2<i32>(u_input.d.x, 74931i) & vec2<i32>(0i, -21323i)), vec2<bool>(true, false || all(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, u_input.d, u_input.d.x, func_2(Struct_1(~vec4<u32>(var_0.a, var_3.x, 1u, var_0.b.x)), -225f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1331f, 1423f, global0.x, var_2.x), vec4<f32>(global0.x, global0.x, -1118f, -424f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1501f, global0.x, 455f, -429f), vec4<f32>(global0.x, 765f, 766f, var_2.x)), vec4<bool>(true, true, true, true)))))).x);
}

