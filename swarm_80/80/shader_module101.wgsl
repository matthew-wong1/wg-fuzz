struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(countOneBits(~u_input.d.wyz)), ~max(u_input.d.wwz >> (arg_1.d.zyw % vec3<u32>(32u)), u_input.d.wwz)), _wgslsmith_div_i32(firstLeadingBit(~u_input.e), u_input.e), ~(-u_input.e), ~(-u_input.e));
    let var_1 = Struct_3(arg_1, arg_1.b);
    let var_2 = Struct_2(global0.zw, Struct_1(_wgslsmith_clamp_vec3_u32(u_input.c.ywz, vec3<u32>(~u_input.c.x, max(arg_1.e, 1884u), ~67540u), ~_wgslsmith_sub_vec3_u32(arg_1.d.xxx, vec3<u32>(0u, u_input.c.x, var_1.a.a.x))), any(vec4<bool>(var_1.a.b, false, true, false)) != var_1.a.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.wy))), var_1.a.d, 0u));
    global0 = arg_0;
    var_0 = u_input.d;
    return _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-872f * 804f) * 1f) * global0.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-529f, -1936f)) * _wgslsmith_f_op_vec2_f32(ceil(global0.ww))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.c.x, 262f)))))))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_3.x)), _wgslsmith_f_op_f32(func_3(vec4<f32>(1417f, 2371f, 1000f, arg_2.c.x), arg_2)), global0.x, _wgslsmith_div_f32(var_0.x, -908f))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, -2039f), global0.x)), arg_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(530f + 1924f)), -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -982f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1111f, -1698f, var_0.x, 2368f), vec4<f32>(arg_3.x, arg_3.x, global0.x, 1616f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_2.c.x, -930f, global0.x), vec4<f32>(859f, var_0.x, var_0.x, -1024f)))))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(787f, global0.x, arg_3.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_2.c.x, global0.x, -786f)), vec4<f32>(arg_2.c.x, -163f, global0.x, -553f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-256f, 283f, var_0.x, 347f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1804f, -309f, 1024f, arg_2.c.x), vec4<f32>(2284f, -1205f, 1000f, global0.x)) + vec4<f32>(arg_3.x, 1430f, 525f, var_0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1557f, global0.x, arg_3.x, arg_2.c.x) * vec4<f32>(arg_3.x, global0.x, arg_3.x, 1163f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(arg_3.x + arg_3.x)), arg_3.x, arg_2.c.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.x, var_0.x, 121f, var_0.x), vec4<f32>(arg_3.x, 305f, 1025f, 732f), vec4<bool>(false, true, true, false))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.c.x, 1721f, arg_3.x, -862f)))), vec4<f32>(_wgslsmith_div_f32(1000f, -1000f), -1127f, _wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(-var_0.x)))));
    var var_1 = countOneBits(u_input.d | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.d.x, u_input.a, u_input.b), ~u_input.d)) ^ u_input.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * -1401f);
}

fn func_1() -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 1272f, 811f, -1757f), vec4<f32>(-1505f, global0.x, 168f, 116f), false)) * vec4<f32>(global0.x, -456f, global0.x, global0.x)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(func_2(u_input.c.xzy, vec2<bool>(true, true), Struct_1(vec3<u32>(0u, 0u, u_input.c.x), false, global0.yw, u_input.c, u_input.c.x), vec2<f32>(-337f, global0.x))))), global0.x, global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1347f, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(sign(690f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.x)))), -977f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec4<f32>(-1457f, global0.x, -414f, global0.x), Struct_1(u_input.c.zxx, false, global0.wy, u_input.c, 10944u))), global0.x)))));
    let var_0 = Struct_1(~u_input.c.xxy, u_input.d.x > _wgslsmith_dot_vec2_i32(-select(u_input.d.xz, vec2<i32>(u_input.d.x, 0i), false), -(~vec2<i32>(2147483647i, u_input.d.x))), vec2<f32>(297f, global0.x), u_input.c ^ _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(34584u, u_input.c.x, u_input.c.x, ~u_input.c.x)), u_input.c.x);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-844f, 130f, 844f, var_0.c.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1008f, 391f, var_0.c.x, -871f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(290f, var_0.c.x, var_0.c.x, -844f), vec4<f32>(1130f, 1205f, global0.x, global0.x)))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, -1304f))) - -727f), -105f));
    var var_1 = _wgslsmith_mult_vec2_u32(min(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, 0u, 26441u), vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 13708u)), u_input.c.x), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4812u, 5861u, var_0.d.x) << (var_0.a % vec3<u32>(32u)), vec3<u32>(u_input.c.x, 24389u, 64413u)), reverseBits(~72254u))), u_input.c.xw << ((vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.d.zyx, u_input.c.wyy), ~u_input.c.x) & u_input.c.yz) % vec2<u32>(32u)));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec4<f32>(497f, 134f, global0.x, 1976f), var_0)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, global0.x) * _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x))) - vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_3(vec4<f32>(global0.x, global0.x, var_0.c.x, 874f), var_0)), _wgslsmith_f_op_f32(1059f + _wgslsmith_f_op_f32(f32(-1f) * -262f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -219f)))), vec4<f32>(-730f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -825f, var_0.c.x, 1294f), vec4<f32>(1000f, global0.x, -1485f, global0.x), false)), var_0)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1205f, var_0.c.x) * _wgslsmith_f_op_f32(-var_0.c.x))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(563f)) + _wgslsmith_f_op_f32(ceil(global0.x))))));
    return min(u_input.a, -(~u_input.e) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~23158u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 38060u, 34223u, var_0.d.x), var_0.d), _wgslsmith_add_u32(u_input.c.x, 67229u)), ~vec4<u32>(var_1.x, var_1.x, var_0.a.x, var_0.e) >> ((u_input.c ^ vec4<u32>(var_0.a.x, 4294967295u, var_1.x, var_0.d.x)) % vec4<u32>(32u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-1169f * _wgslsmith_f_op_f32(-global0.x)), global0.x);
    var var_1 = -u_input.d.xz;
    let var_2 = Struct_3(Struct_1(~vec3<u32>(u_input.c.x, u_input.c.x, 22993u), true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f))), select(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 4294967295u)), firstTrailingBit(u_input.c)), countOneBits(u_input.c), true), u_input.c.x & ~(~u_input.c.x)), false);
    let var_3 = func_1();
    var_0 = 54641u;
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1259f * _wgslsmith_div_f32(1773f, 832f))));
    let var_5 = ~(select(_wgslsmith_mult_vec4_u32(abs(var_2.a.d), vec4<u32>(58859u, 1u, var_2.a.e, 1u)), ~vec4<u32>(0u, var_2.a.a.x, 1u, var_2.a.d.x) & ~vec4<u32>(1u, 46745u, u_input.c.x, 39442u), vec4<bool>(true & var_2.a.b, var_2.b, 0u >= u_input.c.x, !var_2.b)) >> (countOneBits(countOneBits(var_2.a.d)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, var_3, u_input.c.x, reverseBits(_wgslsmith_add_u32(u_input.c.x, var_5.x)));
}

