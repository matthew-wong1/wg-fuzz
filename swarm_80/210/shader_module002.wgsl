struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(80454u, 0u, 1u, 11754u), -1i, -1000f, vec4<bool>(true, false, false, false), vec2<f32>(-1481f, 1666f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: bool) -> i32 {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(59366u, _wgslsmith_sub_u32(firstLeadingBit(25444u), arg_2 << (1835u % 32u))), u_input.b >> ((_wgslsmith_sub_u32(arg_2, 0u) | ~4294967295u) % 32u), global1.a.x, arg_2), global1.b, global1.c, global1.d, _wgslsmith_f_op_vec2_f32(trunc(global1.e)));
    let var_1 = var_0.a.x;
    let var_2 = -vec3<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, global1.b), _wgslsmith_clamp_vec3_i32(u_input.a.yxy, u_input.a.wzz, vec3<i32>(u_input.a.x, 0i, 2147483647i))), -1i), -1i, 44491i);
    global1 = Struct_1(global1.a, ~(var_0.b | var_2.x) >> (_wgslsmith_div_u32(firstTrailingBit(1u), arg_2) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2157f, _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(trunc(417f))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1535f + global1.e.x), var_0.c)), _wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(select(305f, var_0.c, true)))))), select(var_0.d, select(var_0.d, !select(vec4<bool>(var_0.d.x, var_0.d.x, true, arg_3), vec4<bool>(false, arg_3, global1.d.x, false), var_0.d.x), var_0.d), true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global1.e * global1.e))));
    var var_3 = 12598u;
    return abs(~_wgslsmith_div_i32(0i, ~_wgslsmith_clamp_i32(-40158i, var_0.b, var_0.b)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global1 = arg_1;
    global0 = _wgslsmith_f_op_f32(-global1.e.x);
    var var_0 = arg_0;
    global1 = arg_1;
    var var_1 = _wgslsmith_div_u32(0u, arg_1.a.x);
    return _wgslsmith_div_f32(global1.e.x, global1.e.x);
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(func_4(Struct_2(vec2<i32>(-1i, u_input.a.x)), Struct_1(_wgslsmith_add_vec4_u32(global1.a, firstTrailingBit(global1.a)), firstTrailingBit(select(func_3(15649i, true, 29614u, true), global1.b, any(arg_0.wz))), 1f, !arg_0, vec2<f32>(_wgslsmith_f_op_f32(-154f * _wgslsmith_f_op_f32(step(-1921f, global1.e.x))), 1078f))));
    var var_0 = Struct_1((~vec4<u32>(18125u, u_input.b, u_input.b, 36655u) & max(vec4<u32>(global1.a.x, 1u, u_input.b, 1u), ~global1.a)) | (vec4<u32>(max(global1.a.x, 54728u), 4294967295u, 22925u, min(39187u, 82253u)) | global1.a), ~_wgslsmith_mod_i32(countOneBits(u_input.a.x), firstTrailingBit(max(u_input.a.x, -2147483647i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f - global1.c))))), vec4<bool>(!global1.d.x, any(select(vec3<bool>(false, global1.d.x, false), select(vec3<bool>(global1.d.x, true, true), global1.d.xxx, arg_0.x), true)), !(~global1.a.x < ~12230u), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(trunc(-897f))), global1.c)));
    global0 = -808f;
    var var_1 = var_0.a.yz & _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~max(global1.a.wy, vec2<u32>(u_input.b, 46059u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a.wz, vec2<u32>(u_input.b, global1.a.x)), vec2<u32>(1u, 4294967295u), _wgslsmith_mod_vec2_u32(global1.a.wz, vec2<u32>(u_input.b, 4294967295u)))), firstLeadingBit(~vec2<u32>(var_0.a.x, var_0.a.x) >> (global1.a.xz % vec2<u32>(32u))));
    let var_2 = -_wgslsmith_add_vec2_i32(u_input.a.xz & vec2<i32>(-1i, var_0.b), firstTrailingBit(vec2<i32>(-1i) * -u_input.a.yx));
    return _wgslsmith_f_op_f32(-global1.c);
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: bool, arg_3: f32) -> vec4<u32> {
    let var_0 = arg_3;
    var var_1 = Struct_2(vec2<i32>(u_input.a.x, 47449i));
    global1 = Struct_1(vec4<u32>(u_input.b, global1.a.x, 54509u, ~u_input.b), -13020i, arg_3, !global1.d, global1.e);
    global1 = Struct_1(vec4<u32>(~23785u, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(4294967295u, u_input.b, global1.a.x)), global1.a.zx), ~_wgslsmith_mod_u32(global1.a.x, ~u_input.b)), ~1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -992f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)))), true)), vec4<bool>(1i > _wgslsmith_dot_vec4_i32(u_input.a, firstTrailingBit(vec4<i32>(-19204i, 0i, 0i, global1.b))), var_0 >= 182f, any(!vec2<bool>(global1.d.x, false)), arg_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(-952f, _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(arg_3 + -614f))) + global1.e));
    let var_2 = global1.a.ywy;
    return _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(global1.a, vec4<u32>(countOneBits(global1.a.x), _wgslsmith_add_u32(678u, 11944u), 5861u, ~u_input.b) >> (reverseBits(vec4<u32>(global1.a.x, 41700u, global1.a.x, u_input.b)) % vec4<u32>(32u))), reverseBits(vec4<u32>(26270u, ~_wgslsmith_sub_u32(var_2.x, 4294967295u), ~var_2.x, 4294967295u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> f32 {
    var var_0 = 82830u;
    global1 = Struct_1(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~global1.a, _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, global1.a.x, 23066u, global1.a.x), global1.a)), ~global1.a), ~(-50822i), -297f, global1.d, global1.e);
    let var_1 = Struct_1(func_5(-1i, global1.d.wyy, global1.d.x, _wgslsmith_f_op_f32(func_2(!vec4<bool>(true, true, global1.d.x, global1.d.x)))), abs(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.e.x))), global1.d, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(vec4<bool>(global1.d.x, global1.d.x, true, false))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global1.c, 1817f))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, 1656f, -379f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1568f)), _wgslsmith_div_f32(1296f, -259f), _wgslsmith_div_f32(var_1.c, global1.e.x)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(294f, var_1.e.x, -501f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1079f, global1.e.x, -678f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, -294f, var_1.e.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, 110f, 411f) - vec3<f32>(var_1.c, 1313f, global1.e.x)))))));
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-754f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -986f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_1.e.x, global1.e.x)))) * global1.c)) * global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1000f;
    let var_0 = countOneBits(i32(-1i) * -62760i);
    let var_1 = -2098i;
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2659f, global1.c), vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.a.zy), global1.a.wx)), _wgslsmith_f_op_f32(sign(global1.c))))))));
    global1 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>((u_input.b ^ global1.a.x) << (1u % 32u), max(1u, 0u), _wgslsmith_add_u32(4294967295u, firstLeadingBit(u_input.b)), select(u_input.b, abs(global1.a.x), true)), abs(vec4<u32>(func_5(var_0, global1.d.yxx, global1.d.x, global1.c).x, ~global1.a.x, 41166u, u_input.b))), -4491i, _wgslsmith_f_op_f32(-global1.c), global1.d, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1220f - _wgslsmith_f_op_f32(f32(-1f) * -1764f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c)))))));
    global1 = Struct_1(global1.a, ~(-u_input.a.x), -2506f, !global1.d, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.e, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1118f, global1.e.x), vec2<f32>(global1.e.x, var_2.x), vec2<bool>(false, global1.d.x)))))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2798f, 436f))))) - -299f);
    global0 = var_2.x;
    var var_3 = any(vec3<bool>(global1.d.x, !(global1.a.x <= abs(u_input.b)), global1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a);
}

