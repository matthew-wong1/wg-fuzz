struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: i32) -> vec3<bool> {
    var var_0 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(abs(_wgslsmith_mod_u32(0u, 76586u)), 39520u), vec2<u32>(_wgslsmith_sub_u32(73520u, arg_0), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(61253u, arg_0, 1u, 7354u) >> (vec4<u32>(arg_0, arg_0, arg_0, u_input.c.x) % vec4<u32>(32u)))), ~vec2<u32>(0u, 4294967295u));
    var var_1 = u_input.d;
    var_0 = u_input.d;
    let var_2 = ~select(vec4<u32>(var_0.x >> (_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(24558u, 4294967295u)) % 32u), 1u, var_0.x, 4294967295u), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, arg_0, 0u, u_input.b), vec4<u32>(arg_0, var_1.x, var_1.x, var_0.x)), all(select(!vec3<bool>(true, true, arg_2), vec3<bool>(false, arg_2, arg_2), arg_2)));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-621f, 1000f, -1217f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-597f, 825f, 280f) + vec3<f32>(664f, -280f, -222f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-105f, 536f, 1000f) * vec3<f32>(605f, 142f, -2647f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-666f, 411f, 652f)))), !select(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, arg_2, arg_2), vec3<bool>(false, false, false)), vec3<bool>(false, arg_2, true), select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, arg_2, true))), !select(true, var_0.x > var_0.x, true), 10934u, _wgslsmith_clamp_i32(countOneBits(arg_3), 0i, _wgslsmith_clamp_i32(0i, u_input.a.x, arg_3 & -20902i))), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-100f, 907f, 361f) - vec3<f32>(833f, -1000f, -1000f)), vec3<f32>(390f, -862f, 590f), vec3<bool>(true, arg_2, false))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2083f, -770f, -962f))))), select(!select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, arg_2, true), vec3<bool>(true, false, arg_2)), !(!vec3<bool>(true, arg_2, arg_2)), vec3<bool>(arg_1 > arg_3, false, false)), true, var_0.x, u_input.a.x ^ 49085i), vec2<bool>(true, !(!all(vec4<bool>(arg_2, false, true, true)))), Struct_1(u_input.c.yyx, vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.x, var_0.x), u_input.c.wzz), ~arg_0), 32152u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 21168u, 121148u, 0u), u_input.c << (var_2 % vec4<u32>(32u)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-373f, 927f, 216f, 1059f) - vec4<f32>(-1000f, 1242f, -383f, 2270f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(131f, -860f, -853f, -377f) - vec4<f32>(-204f, 182f, -2112f, 130f))), vec4<f32>(_wgslsmith_f_op_f32(1070f - -613f), _wgslsmith_f_op_f32(f32(-1f) * -948f), 372f, _wgslsmith_f_op_f32(step(487f, -184f))))), Struct_1(var_2.zxz, var_2.zyw, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(176f, 414f, -1443f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-964f, 1055f, 239f, 907f)), arg_2 || arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(-359f, 101f, -1404f, -138f)), !(arg_2 & true)))));
    return var_3.b.b;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = !(!vec2<bool>(all(vec4<bool>(false, false, true, true)), all(vec3<bool>(false, false, true))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 - arg_0) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(435f, 1151f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, -1204f), vec3<bool>(var_0.x, false, false)))))), !select(select(!vec3<bool>(var_0.x, true, var_0.x), func_3(32345u, u_input.a.x, var_0.x, u_input.a.x), any(vec3<bool>(false, var_0.x, var_0.x))), vec3<bool>(true, true, select(false, false, var_0.x)), true), false, 1u, u_input.a.x);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-arg_2);
    var var_1 = Struct_3(func_2(var_0.xyx), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 116f, 534f)), _wgslsmith_f_op_vec3_f32(-arg_2.yzw)))), vec2<bool>(true, all(vec2<bool>(arg_0, true))), Struct_1(~_wgslsmith_mult_vec3_u32(u_input.c.xxz, u_input.c.yzy ^ u_input.c.wyx), max(~(~u_input.c.yxy), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1), reverseBits(vec3<u32>(u_input.d.x, arg_1, u_input.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_0, var_0), arg_2)), var_0)), Struct_1(u_input.c.yyy | ~(u_input.c.ywy ^ vec3<u32>(1u, arg_1, 1225u)), vec3<u32>(max(19007u, arg_1), ~func_2(vec3<f32>(1584f, var_0.x, var_0.x)).d, abs(func_2(vec3<f32>(var_0.x, 463f, var_0.x)).d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_2.x, 632f, 490f) + vec4<f32>(arg_2.x, arg_2.x, 921f, -490f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, 2195f, 566f, 132f))), _wgslsmith_f_op_vec4_f32(-arg_2))))));
    var var_2 = select(var_1.b.b, vec3<bool>(arg_0, true, all(var_1.a.b)), var_1.a.e != -2147483647i);
    let var_3 = !var_2.xz;
    let var_4 = Struct_3(var_1.a, var_1.a, vec2<bool>(select(true, any(!vec3<bool>(false, var_1.c.x, var_3.x)), any(!var_1.a.b)), !(true & (u_input.a.x == 28585i))), var_1.d, Struct_1(u_input.c.zwz, vec3<u32>(var_1.b.d, var_1.e.a.x, ~(~0u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.c.x)), 1483f, _wgslsmith_f_op_f32(f32(-1f) * -1467f), -451f)));
    return Struct_3(Struct_2(var_1.b.a, vec3<bool>(var_3.x, !all(var_4.b.b.yz), arg_1 >= 0u), arg_0, 0u, ~(-35i)), func_2(var_0.zzy), var_3, Struct_1(_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(var_1.d.a.x, var_4.e.a.x, 53298u)), var_4.d.b), select(var_4.d.a, var_1.d.b, all(vec2<bool>(var_4.b.c, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(863f, 1000f, 1565f, var_0.x))) * _wgslsmith_div_vec4_f32(var_4.d.c, vec4<f32>(var_0.x, arg_2.x, -1414f, arg_2.x)))), Struct_1(var_4.d.b, var_4.d.a, vec4<f32>(-2105f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.e.c.x))), _wgslsmith_f_op_f32(step(488f, _wgslsmith_f_op_f32(round(167f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1897f, -575f)), -613f)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(arg_3.e, arg_1.b.e, u_input.a.x, 1i), vec4<i32>(u_input.a.x, arg_1.b.e, 44513i, arg_1.a.e)), u_input.a), ~vec4<i32>(1i, -13285i, -33726i, -56265i)), arg_3.e, ~(-arg_1.b.e), -1i), -(~_wgslsmith_add_vec4_i32(vec4<i32>(29532i, 17182i, arg_3.e, 0i), ~u_input.a)));
    var var_1 = any(vec4<bool>(false, all(select(vec2<bool>(arg_3.b.x, arg_3.b.x), !arg_3.b.zx, arg_3.c)), false, arg_1.a.b.x));
    var_1 = arg_3.c;
    var var_2 = arg_3.a.x;
    let var_3 = arg_3.d;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<i32>(36807i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(-8145i), _wgslsmith_div_i32(-1i, -1i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(5556i, u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.a.x, 0i)))), func_1(true, ~4294967295u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-425f, -1000f, -1979f, 1013f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(167f, -135f, -152f, 530f), vec4<f32>(-1389f, 144f, -1215f, -1762f))))))), vec4<bool>(!((u_input.b ^ 43995u) >= u_input.b), true, -_wgslsmith_dot_vec3_i32(u_input.a.wxy, u_input.a.wzz) > ~(u_input.a.x | -72094i), any(vec2<bool>(all(vec4<bool>(true, true, false, false)), true))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1452f, -179f), _wgslsmith_f_op_f32(-1154f - -2839f), _wgslsmith_f_op_f32(round(-927f))))));
    var var_1 = func_2(var_0.b.a);
    var var_2 = var_0.e;
    let var_3 = firstLeadingBit(~u_input.a.yw);
    var var_4 = var_2.c;
    var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer((var_3 | vec2<i32>(-15064i, u_input.a.x)) & -var_3, -reverseBits(u_input.a.zx & select(var_3, u_input.a.yz, var_1.b.yz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -919f))) * func_1(var_0.a.b.x, ~var_1.d, _wgslsmith_f_op_vec4_f32(var_0.d.c + vec4<f32>(var_2.c.x, -864f, var_4.x, var_4.x))).e.c.x) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_4.x, var_4.x, var_1.b.x)), 564f))))), _wgslsmith_f_op_vec2_f32(-var_2.c.ww), 11115u);
}

