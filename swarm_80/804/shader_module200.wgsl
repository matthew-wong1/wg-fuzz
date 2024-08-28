struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(244f, 914f, false)) - _wgslsmith_f_op_f32(ceil(-165f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1007f)), _wgslsmith_f_op_f32(round(410f))) - _wgslsmith_f_op_f32(f32(-1f) * -1021f))));
    var_0 = Struct_3(var_0.b, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.b.a))))));
    var var_1 = any(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), !any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))));
    var var_2 = -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 0i, _wgslsmith_add_i32(~2147483647i, 0i), ~u_input.d.x), -vec4<i32>(global0.x, ~31524i, -29152i, firstTrailingBit(u_input.d.x)));
    var_1 = true;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1528f)), 1346f)));
}

fn func_2() -> vec4<i32> {
    var var_0 = u_input.a.x;
    var var_1 = vec3<bool>(false, _wgslsmith_f_op_f32(func_3()) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f)))), true & select(_wgslsmith_f_op_f32(select(-723f, 429f, true)) > -1865f, all(vec4<bool>(true, true, true, true)), true));
    var var_2 = Struct_4(var_1.yz, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1581f)), Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-339f * -2370f))), Struct_1(966f)));
    global0 = ~(-_wgslsmith_mult_vec4_i32(select(vec4<i32>(0i, -3047i, u_input.d.x, u_input.d.x), vec4<i32>(0i, u_input.c.x, 2147483647i, global0.x), false), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -2147483647i, u_input.a.x, 2147483647i), vec4<i32>(-35670i, 1i, -36068i, u_input.a.x)))) >> (u_input.b % vec4<u32>(32u));
    var var_3 = var_2.c;
    return vec4<i32>(-2147483647i, u_input.d.x, abs(max(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, u_input.a.x, -8467i), vec3<i32>(global0.x, u_input.d.x, global0.x)), 35662i)), 2147483647i);
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = vec4<bool>(true, true, !arg_0, true);
    var var_1 = u_input.b;
    global0 = func_2() & (abs(vec4<i32>(max(global0.x, u_input.c.x), global0.x, u_input.a.x, _wgslsmith_add_i32(11666i, global0.x))) >> (min(max(u_input.b | u_input.b, u_input.b << (vec4<u32>(0u, u_input.b.x, 44311u, var_1.x) % vec4<u32>(32u))), vec4<u32>(u_input.b.x ^ 35696u, var_1.x | u_input.b.x, ~0u, var_1.x)) % vec4<u32>(32u)));
    var_0 = !select(select(select(vec4<bool>(arg_0, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, arg_0, arg_0), !var_0.x), vec4<bool>(arg_0, any(vec4<bool>(arg_0, arg_0, var_0.x, var_0.x)), true, true), vec4<bool>(true, true, true, arg_0 || arg_0)), vec4<bool>(var_0.x, !var_0.x | true, true, var_1.x == (var_1.x ^ var_1.x)), vec4<bool>(false, true, all(!vec4<bool>(false, var_0.x, arg_0, arg_0)), true));
    global0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-2147483647i | u_input.a.x, -18930i, u_input.c.x, 0i), vec4<i32>(_wgslsmith_mult_i32(-20931i, global0.x), _wgslsmith_div_i32(12i, u_input.d.x), u_input.c.x >> (var_1.x % 32u), _wgslsmith_add_i32(u_input.c.x, 62846i)), arg_0), ~(vec4<i32>(-12563i, -1i, -19564i, -27707i) >> (min(vec4<u32>(u_input.b.x, 77502u, 45364u, u_input.b.x), u_input.b) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(~(vec4<i32>(1i, global0.x, global0.x, u_input.d.x) & vec4<i32>(global0.x, global0.x, u_input.a.x, -19712i)), vec4<i32>(global0.x, _wgslsmith_add_i32(global0.x, 0i), ~global0.x, -u_input.d.x))), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, global0.x, global0.x, u_input.a.x) ^ (vec4<i32>(global0.x, global0.x, u_input.c.x, u_input.d.x) ^ vec4<i32>(-1i, -2147483647i, 48888i, 1i)), -min(vec4<i32>(global0.x, -1i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, -2269i, u_input.a.x, u_input.c.x))), abs(firstTrailingBit(1i)), max(2147483647i, _wgslsmith_div_i32(1i, global0.x)), (_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(global0.x, -1i)) << (_wgslsmith_mod_u32(9304u, var_1.x) % 32u)) >> (~var_1.x % 32u)), abs(-vec4<i32>(i32(-1i) * -38483i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, u_input.d.x), vec3<i32>(u_input.a.x, global0.x, -8906i)), _wgslsmith_div_i32(19942i, global0.x), -2603i)));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(1225f))), Struct_1(657f));
}

fn func_4(arg_0: Struct_3) -> vec4<f32> {
    let var_0 = _wgslsmith_div_u32(u_input.b.x, ~(~0u));
    var var_1 = func_1(false).b;
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, firstTrailingBit(global0.x), -u_input.d.x, u_input.c.x), max(-abs(vec4<i32>(1i, 41480i, u_input.a.x, global0.x)), vec4<i32>(0i, 24662i, min(global0.x, -1i), u_input.c.x >> (4294967295u % 32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, u_input.c.x) | ~vec4<i32>(global0.x, 1i, u_input.d.x, 0i), vec4<i32>(-2147483647i, firstLeadingBit(global0.x), _wgslsmith_add_i32(-1241i, u_input.c.x), 32935i))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, ~(~u_input.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a.x), max(vec2<i32>(u_input.d.x, u_input.d.x), u_input.a))), vec4<i32>(15263i, -(~global0.x), 1i, 1i));
    var var_2 = -countOneBits(0i);
    let var_3 = -(max(-vec4<i32>(900i, global0.x, u_input.c.x, 0i), vec4<i32>(global0.x, 51153i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.x, global0.x, u_input.a.x), vec4<i32>(-2147483647i, global0.x, u_input.a.x, -1i)), -1i)) & vec4<i32>(~func_2().x, _wgslsmith_mult_i32(global0.x, global0.x), -1i, ~0i));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b.a, var_1.a, var_1.a, arg_0.a.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-806f - 1481f));
    let var_1 = false;
    let var_2 = Struct_1(var_0.a);
    var_0 = var_2;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(func_1(var_1))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, var_2.a, var_2.a, -1018f))))), var_1)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_1(var_2.a), var_2))).x - var_2.a), _wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_1(var_2.a), Struct_1(-102f)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -898f)), var_0.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1491f, var_0.a, -668f, var_0.a), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 1410f, var_0.a, var_2.a), vec4<f32>(var_0.a, var_0.a, 787f, var_2.a)))))));
    let var_4 = func_1(false);
    global0 = ~(-vec4<i32>(u_input.d.x, ~global0.x, ~10451i, global0.x)) >> (~u_input.b % vec4<u32>(32u));
    var var_5 = vec2<bool>(var_1, all(!(!(!vec2<bool>(var_1, true)))));
    var_5 = vec2<bool>(var_1, false);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_f32(ceil(var_2.a)));
}

