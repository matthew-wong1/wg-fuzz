struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 2>;

var<private> global3: array<vec2<i32>, 21>;

var<private> global4: array<vec3<f32>, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    global1 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -213f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-272f, _wgslsmith_f_op_f32(step(global0.a.x, arg_1.a.x)), 1222f));
    let var_2 = u_input.b.x;
    var var_3 = max(-abs((u_input.b >> (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u))) >> ((vec3<u32>(global1.d, arg_1.d, global0.d) & vec3<u32>(u_input.a.x, global1.e, 4294967295u)) % vec3<u32>(32u))), ~(~(~u_input.b)) & max(u_input.b, vec3<i32>(13217i, ~12559i, global1.c.x)));
    return arg_1.a.x;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<bool>) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, Struct_1(global0.a, vec2<f32>(-1006f, 979f), global2[_wgslsmith_index_u32(0u, 2u)], global1.d, 0u))) + _wgslsmith_f_op_f32(-836f + -443f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -1254f)), global0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * 1000f) + 176f)), 1868f), vec2<i32>(-1i) * -u_input.b.zz, select(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d, u_input.a.x, 1u, 3261u) | vec4<u32>(4294967295u, 89235u, 52465u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(64359u, u_input.a.x, 56474u, 4294967295u), vec4<u32>(81705u, 4294967295u, global0.e, u_input.a.x), vec4<u32>(global0.d, global0.e, global0.e, global0.d)), vec4<u32>(global1.d, global1.e, 51539u, global0.d)), vec4<u32>(~u_input.a.x, global1.d & global0.d, 0u, countOneBits(35499u))), u_input.a.x, !((true | arg_2.x) & !arg_0)), u_input.a.x);
    var var_0 = global0.a.x;
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1679f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * global0.b.x)))), arg_1.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(round(1112f)), global1.b.x) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1646f, global0.a.x, arg_1.x, arg_1.x))), global0.a))));
    return _wgslsmith_f_op_f32(-global1.b.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(381f, arg_0.x, arg_0.x, -1808f) - global0.a), vec4<f32>(1505f, -103f, global0.a.x, -243f), 11282i != u_input.b.x))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global1.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -228f), 883f, global0.b.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(867f - global0.a.x), _wgslsmith_f_op_f32(func_2(true, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.x, global1.b.x, 1792f))), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), global0.a.x, any(vec3<bool>(true, true, true))))), min(global1.c, ~select(global1.c, global3[_wgslsmith_index_u32(0u, 21u)], vec2<bool>(true, false))) >> (u_input.a.xy % vec2<u32>(32u)), abs(~_wgslsmith_dot_vec3_u32(~vec3<u32>(30037u, 4294967295u, global1.d), u_input.a)), ~(1u | global0.d));
    global0 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) - vec2<f32>(global0.a.x, global0.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1607f) - arg_0))))), global3[_wgslsmith_index_u32(33985u, 21u)], 56229u, ~reverseBits(1u));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(global0.a.xyz, global1.a.wzw, vec3<bool>(true, all(vec2<bool>(true, true)), true))), vec3<f32>(_wgslsmith_f_op_f32(-183f * _wgslsmith_f_op_f32(-331f + -453f)), global1.b.x, 665f))) + global1.a.yyz);
    let var_1 = Struct_1(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(max(167f, _wgslsmith_f_op_f32(-global0.a.x))), -1245f, 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1100f, var_0.x) * _wgslsmith_f_op_vec2_f32(global0.a.yz + vec2<f32>(-1000f, 821f))) - vec2<f32>(-628f, _wgslsmith_f_op_f32(min(global1.b.x, global1.b.x))))), reverseBits(global2[_wgslsmith_index_u32(global0.d, 2u)]), select(4294967295u, global0.e, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-var_0.x)) > 541f), ~_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(global0.e, global1.d, global1.d, global1.d)), ~vec4<u32>(0u, 24764u, 0u, 0u)));
    var var_2 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(_wgslsmith_f_op_f32(abs(global0.a.x)), -1016f)), ~reverseBits(vec2<i32>(0i, _wgslsmith_mod_i32(global1.c.x, global0.c.x))), u_input.a.x, u_input.a.x);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1.a.zx))), vec2<f32>(_wgslsmith_f_op_f32(abs(global1.a.x)), global0.b.x), true)), _wgslsmith_f_op_vec2_f32(global1.a.xw * global0.a.wy)), global1.c);
    var var_0 = min(_wgslsmith_clamp_i32(1i, 35001i ^ (-u_input.b.x << (_wgslsmith_add_u32(global0.d, 1u) % 32u)), ~22530i), u_input.b.x);
    let var_1 = u_input.b;
    let var_2 = Struct_1(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(step(global1.a.x, global1.b.x)), _wgslsmith_f_op_f32(select(183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * global0.a.x)), -global0.c.x < firstLeadingBit(2147483647i))), global1.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.xx)) - vec2<f32>(-785f, _wgslsmith_div_f32(2056f, global1.b.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global0.b.x)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b.x, global0.a.x), global1.a.zz))) - global0.b)), func_1(_wgslsmith_f_op_vec2_f32(-global1.b), vec2<i32>(-1i) * -select(vec2<i32>(51832i, -2147483647i), vec2<i32>(global0.c.x, 1i), true)).c, 43103u, 4294967295u);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.a.x, global1.b.x), -2159f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(880f))), var_2.b.x))) * global1.a.yxx);
    var_3 = global1.a.wzz;
    var_0 = -global0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(30963u, ~(~var_2.d), global0.e, _wgslsmith_div_u32(~u_input.a.x, 81243u) << (~0u % 32u)), firstTrailingBit(vec4<i32>(global1.c.x ^ -55702i, var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(56251i, global1.c.x, 1947i), u_input.b), var_2.c.x) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-38702i, -8447i, var_1.x, -1i), vec4<i32>(var_1.x, global0.c.x, -7162i, var_2.c.x)), vec4<i32>(-1803i, global1.c.x, var_1.x, u_input.b.x) >> (vec4<u32>(var_2.e, u_input.a.x, var_2.e, global0.d) % vec4<u32>(32u)), abs(vec4<i32>(32000i, u_input.b.x, -3944i, 60460i)))), -70643i);
}

