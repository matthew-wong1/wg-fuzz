struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-580f, -1000f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> vec2<bool> {
    return vec2<bool>(true, true);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(294f + global0.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global0.x))), false, (-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.c.x), vec4<i32>(u_input.c.x, -2147483647i, 42564i, u_input.c.x)) ^ (1i >> (~arg_1.x % 32u))) <= (i32(-1i) * -u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(782f * 398f), -661f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -972f)));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = Struct_2(Struct_1(~abs(abs(vec4<i32>(u_input.a.x, 1i, u_input.c.x, u_input.a.x))), vec3<i32>(1i, u_input.a.x, u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(abs(global0.x)), global0.x, _wgslsmith_f_op_f32(ceil(353f)), _wgslsmith_f_op_f32(f32(-1f) * -1390f)));
    var var_2 = 14142i;
    var var_3 = var_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2627f), 975f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-900f)) * var_1.b.x) - _wgslsmith_f_op_f32(ceil(var_3.b.x)))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), -1387f, _wgslsmith_f_op_f32(round(global0.x))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1122f, -1043f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(702f, -422f)) - _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -867f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x)))), -1457f));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(!func_2(), vec4<u32>(1u, ~(u_input.b >> (u_input.b % 32u)), ~(~arg_0.x), 33312u), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 13265u, 4294967295u, 0u), vec4<u32>(arg_0.x & 4294967295u, _wgslsmith_div_u32(u_input.b, 45036u), ~arg_0.x, u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(759f * _wgslsmith_f_op_f32(-var_0.x))));
    var var_1 = vec3<i32>(firstTrailingBit(u_input.a.x << (~4294967295u % 32u)), reverseBits(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(55577i, 37248i, -2147483647i), vec3<i32>(u_input.a.x, 41858i, u_input.c.x))), 75558i)), 24415i);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.xy))));
    let var_2 = Struct_2(Struct_1(-vec4<i32>(var_1.x, 1i, -49517i, _wgslsmith_sub_i32(-1i, u_input.c.x)), max(abs(-vec3<i32>(var_1.x, var_1.x, -10707i)), vec3<i32>(reverseBits(53818i), ~(-1i), u_input.c.x & u_input.a.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-743f, var_0.x, global0.x, 673f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-616f, global0.x, 1000f, -1170f) - vec4<f32>(-1514f, global0.x, var_0.x, global0.x)))))));
    return Struct_2(var_2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1670f, 305f, 1549f, var_2.b.x) - vec4<f32>(-490f, 1055f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_2.b.x, var_0.x) - vec4<f32>(1052f, global0.x, -560f, -1396f)) - _wgslsmith_f_op_vec4_f32(ceil(var_2.b)))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    var var_0 = arg_0;
    var var_1 = arg_2;
    let var_2 = ~10925i;
    var_0 = Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, 297f) - _wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(arg_2.b.x + var_0.b.x))), arg_2.b.x, arg_2.b.x)));
    var var_3 = var_1.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-461f)) - arg_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x + 479f), _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(164f, -2749f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 484f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(534f, global0.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(abs(627f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, -1077f))))));
    let var_0 = ~_wgslsmith_mult_i32(37312i, -7962i);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(vec3<u32>(4294967295u, 38744u, 4294967295u)), -5045i, func_1(vec3<u32>(u_input.b, 13439u, 9051u)), select(vec2<bool>(false, true), vec2<bool>(true, true), false))))), 321f);
    var var_1 = ~countOneBits(min(~vec4<i32>(-39268i, var_0, var_0, var_0), _wgslsmith_div_vec4_i32(vec4<i32>(-51319i, 0i, var_0, 14001i), vec4<i32>(1i, var_0, u_input.c.x, 62083i)))) << (~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, 65431u, 29949u), ~vec4<u32>(1u, u_input.b, 1u, u_input.b))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-514f, 1558f)) - vec2<f32>(global0.x, 308f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1167f, global0.x), vec2<f32>(global0.x, global0.x), vec2<bool>(true, false))))))), false));
    var var_2 = func_1(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u) ^ vec3<u32>(4294967295u, 4977u, 20882u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, 4880u, 4294967295u))) | _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.b) & vec3<u32>(u_input.b, 87341u, 47412u)), ~vec3<u32>(23137u, 1341u, 0u)));
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, var_2.b.x)) - global0.x))));
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b))))));
    let var_3 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(var_1.zw, var_1.zz) << (78483u % 32u));
}

