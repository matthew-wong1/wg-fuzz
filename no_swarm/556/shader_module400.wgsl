struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<f32>(-1781f, 349f, -470f), vec4<f32>(1110f, 1480f, 109f, 1310f)));

var<private> global3: i32;

var<private> global4: vec4<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = select(vec2<u32>(u_input.b, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.b)), ~(~(~(u_input.a >> (vec2<u32>(7815u, u_input.a.x) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 32u)] - -2503f), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 32u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1098f + global0[_wgslsmith_index_u32(0u, 32u)])), true)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1767f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 32u)], true))));
    let var_1 = vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2147483647i, -2147483647i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, 1i, 1i));
    global3 = -abs(var_1.x) ^ reverseBits(abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, 15885i, var_1.x), vec4<i32>(0i, 1i, var_1.x, var_1.x)), min(var_1.x, 5454i))));
    global4 = vec4<bool>(!any(global4.yz), all(global4.yx), all(select(global4.zyy, !(!vec3<bool>(true, global4.x, arg_0)), !all(global4.xy))), !global4.x);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(38901u, 32u)] + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 32u)] * -846f)))), 399f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.x, u_input.a.x, 9407u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 26297u, 18670u, u_input.b), vec4<u32>(30119u, 4294967295u, u_input.a.x, 1u), vec4<u32>(9566u, 11607u, u_input.b, u_input.a.x))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 1u, 83524u, 1u), countOneBits(vec4<u32>(var_0.x, 1u, u_input.a.x, 4294967295u)))), 32u)]);
    return -1521f;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(46749u, 32u)] * global0[_wgslsmith_index_u32(~3904u >> (~u_input.b % 32u), 32u)]), _wgslsmith_f_op_f32(func_3(!global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(38857u, 32u)], 1076f)) + _wgslsmith_f_op_f32(f32(-1f) * -369f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-467f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(9604u, 32u)], global0[_wgslsmith_index_u32(36344u, 32u)]))), _wgslsmith_f_op_f32(func_3(select(global4.x, true, false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(281f, -1488f)))))));
    global3 = abs(-1i);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.b), 1u)];
    let var_2 = Struct_1(vec3<f32>(-436f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 4294967295u) | 39416u, 32u)], _wgslsmith_f_op_f32(round(-1553f)), true)), global0[_wgslsmith_index_u32(0u, 32u)]), vec4<f32>(1543f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.a.x), 32u)], _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~67119u, min(1u, 8173u)), 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x))))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(28834u, 32u)] * -1045f)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-953f, global0[_wgslsmith_index_u32(1u, 32u)], var_2.a.x) * var_0.a))))), vec4<f32>(_wgslsmith_f_op_f32(max(-457f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(-var_2.a.x), global4.x)))), 236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(859f - global0[_wgslsmith_index_u32(u_input.a.x, 32u)]) * -455f) + _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~u_input.a.x, 32u)], _wgslsmith_f_op_f32(f32(-1f) * -376f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -231f))))));
    return _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 32u)] + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1490f, 1000f, global4.x)), _wgslsmith_f_op_f32(select(-1000f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global4.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.x))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~arg_0.x;
    global4 = vec4<bool>(!(u_input.a.x == (select(u_input.a.x, u_input.b, global4.x) >> ((u_input.b >> (u_input.b % 32u)) % 32u))), !(!global4.x), true, true);
    let var_1 = reverseBits(~15929u) | max(~reverseBits(~33133u), min(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x) | _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, u_input.a.x), u_input.a), u_input.a >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - global0[_wgslsmith_index_u32(u_input.a.x, 32u)]) + arg_1.a.x);
    let var_3 = ~vec4<u32>(select(2572u, ~(1u << (var_1 % 32u)), global4.x), _wgslsmith_mod_u32(u_input.a.x << (114958u % 32u), ~0u) & abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, u_input.b), vec3<u32>(u_input.b, var_1, var_1))), countOneBits(_wgslsmith_div_u32(var_1, countOneBits(var_1))), ~0u);
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_3.x, var_1, abs(_wgslsmith_mod_u32(u_input.b, var_3.x))) << (2834u % 32u), 1u)];
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(arg_0.a.x, 1315f, all(!global4.yw)));
    global3 = 1i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2222f, arg_0.b.x, _wgslsmith_f_op_f32(716f - global0[_wgslsmith_index_u32(32178u, 32u)])) * vec3<f32>(_wgslsmith_f_op_f32(280f - arg_0.a.x), arg_0.a.x, -767f)))), vec4<f32>(arg_0.b.x, 2446f, 1108f, -1050f));
    let var_2 = !(global4.x && true);
    var var_3 = func_4(abs(-vec3<i32>(-1i, _wgslsmith_sub_i32(2147483647i, 2147483647i), ~0i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, -242f, -450f), var_1.a))), vec4<f32>(-215f, var_1.b.x, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)))));
    return func_4(vec3<i32>(~32191i, _wgslsmith_clamp_i32(abs(-1i), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-4703i, 17087i, -1i, 3891i), vec4<i32>(12892i, -2147483647i, 52677i, 36967i))), _wgslsmith_mod_i32(select(-1i, 0i, global4.x), reverseBits(-16583i))) << (vec3<u32>((u_input.a.x & u_input.b) ^ _wgslsmith_mod_u32(u_input.b, u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b, 16660u)) >> (~u_input.b % 32u), select(u_input.b, u_input.b, global4.x)) % vec3<u32>(32u)), func_4(abs(reverseBits(~vec3<i32>(-1i, 0i, 12897i))), func_4(firstLeadingBit(vec3<i32>(-1i, -23513i, 2147483647i)), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(10918u, u_input.a.x), 1u)])));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global4 = !vec4<bool>(global4.x, all(!vec4<bool>(true, global4.x, false, false)), true, global4.x);
    var var_0 = max(vec3<u32>(~4294967295u, 115732u, _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.b, 63641u, u_input.b)), vec3<u32>(u_input.a.x << (u_input.a.x % 32u), 25967u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, u_input.a.x))))), vec3<u32>(u_input.a.x, u_input.b, u_input.a.x));
    global4 = vec4<bool>(all(vec4<bool>(select(arg_0.a.x > -587f, any(vec3<bool>(global4.x, global4.x, global4.x)), true), true, !any(global4.wzx), ~var_0.x > ~u_input.b)), any(global4.wy) || true, !global4.x, any(select(!select(global4.zwz, global4.wzy, global4.wxz), vec3<bool>(true, global4.x, any(vec4<bool>(global4.x, global4.x, true, false))), false)));
    global4 = vec4<bool>(global4.x, true, false, !global4.x || !(!global4.x));
    var var_1 = _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1i, abs(select(-2147483647i, 0i, false)))), vec2<i32>(-1i, ~abs(~1i)));
    return global2[_wgslsmith_index_u32(~(abs(u_input.a.x | ~var_0.x) << (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(43354u, ~33897u, 70681u), ~0u) % 32u)), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(global2[_wgslsmith_index_u32(4294967295u, 1u)]));
    let var_1 = firstTrailingBit(-_wgslsmith_mod_i32(-1i, -select(-2147483647i, -51842i, global4.x)));
    global3 = var_1;
    let var_2 = u_input.a;
    var var_3 = func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, -_wgslsmith_add_i32(var_1, 2147483647i), var_1), -vec3<i32>(_wgslsmith_sub_i32(-1i, -1i), 1i, -var_1)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(select(-_wgslsmith_clamp_vec2_i32(~vec2<i32>(var_1, 2147483647i), vec2<i32>(var_1, -5579i), vec2<i32>(-2147483647i, var_1)), (-vec2<i32>(30721i, var_1) ^ abs(vec2<i32>(2147483647i, var_1))) >> (firstLeadingBit(vec2<u32>(9183u, 20008u) | u_input.a) % vec2<u32>(32u)), global4.x));
}

