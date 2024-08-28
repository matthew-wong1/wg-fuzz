struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32> = vec2<f32>(-1908f, 2030f);

var<private> global2: array<f32, 2>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32) -> i32 {
    let var_0 = ~(~vec4<u32>(28142u & (arg_0 | arg_0), _wgslsmith_add_u32(4294967295u, ~4294967295u), arg_0, u_input.b.x));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -802f), -559f)))) == global2[_wgslsmith_index_u32(~firstTrailingBit(arg_0), 2u)], all(select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), all(vec2<bool>(true, true))), vec2<bool>(all(vec2<bool>(true, true)), false), _wgslsmith_add_u32(var_0.x, var_0.x) < _wgslsmith_mult_u32(1u, 11291u))), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_0, arg_0, var_0.x) >> (var_0.xyz % vec3<u32>(32u))), var_0.xxy) != ~0u, Struct_1(false, true));
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f), arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1538f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-852f, global2[_wgslsmith_index_u32(2363u, 2u)], -1086f, 1822f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-497f, global2[_wgslsmith_index_u32(var_0.x, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], arg_2), vec4<f32>(global1.x, -198f, global2[_wgslsmith_index_u32(1u, 2u)], 2141f), vec4<bool>(true, false, true, true)))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, arg_2)), global1.x, _wgslsmith_f_op_f32(step(global1.x, global1.x)), _wgslsmith_f_op_f32(arg_2 + 819f)))))), Struct_2(!any(!vec4<bool>(var_1.d.b, true, true, false)), var_1.d.a, all(!vec2<bool>(var_1.d.a, true)), var_1.d));
    var var_3 = _wgslsmith_clamp_vec4_u32(var_0, _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(var_0, var_0), var_0, _wgslsmith_div_vec4_u32(var_0, vec4<u32>(u_input.c, 37048u, 14612u, 1u))), _wgslsmith_sub_vec4_u32(~var_0, _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.c, u_input.b.x, 0u, 38425u), var_0), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.a, 76202u), vec4<u32>(0u, var_0.x, 20655u, 4294967295u))))), var_0 | vec4<u32>(~arg_0 << (~1u % 32u), var_0.x, _wgslsmith_dot_vec3_u32(var_0.zyw, ~vec3<u32>(19101u, 4294967295u, 0u)), ~max(var_0.x, u_input.a)));
    var var_4 = vec3<i32>(u_input.d.x, -1976i, ~(-_wgslsmith_clamp_i32(-36309i, 19708i, 1i)) & _wgslsmith_div_i32(u_input.d.x, ~u_input.d.x));
    return -1i;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = 1i;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), global1.x);
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(select(select(arg_2, arg_2, vec3<bool>(true, false, arg_3.a)), ~arg_2, any(vec3<bool>(false, arg_1.a, false))), arg_2, ~vec3<u32>(1u, u_input.c, arg_2.x) << (~vec3<u32>(u_input.a, u_input.b.x, 1u) % vec3<u32>(32u))) << ((min(vec3<u32>(u_input.a, arg_2.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_2.x, 0u), vec3<u32>(arg_2.x, u_input.a, 3359u))) & _wgslsmith_clamp_vec3_u32(arg_2, arg_2, arg_2)) % vec3<u32>(32u)), ~(arg_2 | ~vec3<u32>(35096u, 131378u, 4294967295u)) & abs(~(~vec3<u32>(arg_2.x, 55100u, arg_2.x))));
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1554f) * global2[_wgslsmith_index_u32(~57339u, 2u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstLeadingBit(var_1.x), 2u)] * global2[_wgslsmith_index_u32(arg_2.x, 2u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(arg_2.x, 2u)], -1000f, global1.x, global2[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1239f, -1000f, 266f, global2[_wgslsmith_index_u32(var_1.x, 2u)]), vec4<f32>(-2213f, global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(59550u, 2u)], -545f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_1.x, 2u)], 1332f, 1000f, 1634f) - vec4<f32>(831f, 902f, global1.x, global2[_wgslsmith_index_u32(1u, 2u)])) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 192f, 1193f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 370f, -490f, -610f) - vec4<f32>(1215f, 274f, 1070f, global1.x)))))), Struct_2(-(i32(-1i) * -2044i) < ~max(u_input.d.x, 2147483647i), !(!(!arg_0)), arg_0, arg_3.d));
    global1 = var_2.b.zx;
    return select(vec3<bool>(arg_0, true, !var_2.c.b), select(select(!(!vec3<bool>(false, arg_1.b, var_2.c.b)), select(vec3<bool>(true, true, true), !vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(true, var_2.c.b, false)), select(select(vec3<bool>(false, var_2.c.c, arg_0), vec3<bool>(arg_1.b, arg_3.a, true), vec3<bool>(var_2.c.c, arg_1.b, arg_0)), !vec3<bool>(arg_1.b, var_2.c.d.a, arg_0), true)), select(vec3<bool>(true, u_input.c > 0u, true), !vec3<bool>(var_2.c.d.a, false, arg_0), !vec3<bool>(true, var_2.c.a, true)), var_2.c.c), !(!(!(global2[_wgslsmith_index_u32(var_1.x, 2u)] < var_2.a.x))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec4<f32> {
    var var_0 = Struct_1(all(func_4(2147483647i >= func_3(60448u, u_input.d.x, global1.x), arg_1.d, _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.c, 35663u, u_input.b.x)), ~vec3<u32>(u_input.c, u_input.b.x, u_input.c)), Struct_2(true, arg_0.b || true, arg_0.c, Struct_1(arg_0.c, arg_1.b)))), any(func_4(!arg_0.c, Struct_1(true, any(vec2<bool>(arg_1.d.b, false))), vec3<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 5798u), abs(1u)), arg_0).zy));
    var var_1 = Struct_1(arg_0.c, arg_0.d.b);
    var var_2 = firstLeadingBit(select(vec4<u32>(min(5427u, 3063u), ~1105u, 1u, u_input.a ^ u_input.a) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 20061u, 4294967295u, 34659u), vec4<u32>(u_input.a, 51297u, 49822u, 505u)) & (vec4<u32>(u_input.c, u_input.b.x, 4294967295u, u_input.b.x) << (vec4<u32>(0u, u_input.c, u_input.a, 49973u) % vec4<u32>(32u)))) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.c), ~vec4<u32>(u_input.a, 0u, u_input.b.x, u_input.a))), var_1.b));
    var_1 = Struct_1(var_1.a, all(vec2<bool>(true, true)));
    var var_3 = Struct_2(var_1.a & !any(vec2<bool>(var_0.b, var_0.b)), !arg_1.b, var_0.b, Struct_1(!var_0.a, !any(select(vec3<bool>(false, var_0.b, false), vec3<bool>(var_1.b, arg_1.b, true), var_1.b))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1164f, 2714f, global2[_wgslsmith_index_u32(343u, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)]))))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(538f, _wgslsmith_f_op_f32(420f + _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(750f, global1.x, arg_1.d.b)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_2.x, 2u)] + arg_2))), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 2u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global2[_wgslsmith_index_u32(var_2.x, 2u)]), vec4<f32>(-1834f, global2[_wgslsmith_index_u32(var_2.x, 2u)], 455f, 860f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global1.x, global2[_wgslsmith_index_u32(u_input.a, 2u)], arg_2) * vec4<f32>(-464f, 1155f, arg_2, arg_2))))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec4<f32>) -> vec2<f32> {
    var var_0 = 6362u;
    var var_1 = -2147483647i;
    var var_2 = vec2<i32>(0i, _wgslsmith_mult_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(u_input.d >> (vec4<u32>(4294967295u, 4294967295u, 1u, u_input.c) % vec4<u32>(32u)), -u_input.d))) ^ vec2<i32>(arg_2, _wgslsmith_add_i32(-21209i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-97322i, -32343i), vec2<i32>(arg_2, 24268i))));
    let var_3 = arg_1.c.d;
    global0 = arg_3.x;
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), 185f);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(func_5(select(vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(true, false, true), vec3<bool>(max(u_input.d.x, u_input.d.x) >= 2147483647i, all(vec4<bool>(false, true, true, true)), true)), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(108f, global2[_wgslsmith_index_u32(4294967295u, 2u)]) * vec2<f32>(-420f, global2[_wgslsmith_index_u32(4294967295u, 2u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1416f, 343f), vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], -1878f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-205f, -495f), vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 2u)], global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-638f, -360f, global1.x, global1.x)) - vec4<f32>(global1.x, global2[_wgslsmith_index_u32(0u, 2u)], -995f, 825f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-485f, global2[_wgslsmith_index_u32(u_input.c, 2u)], global1.x, 997f), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(true, true, true, Struct_1(true, true)), Struct_2(false, true, true, Struct_1(true, true)), 428f))))), Struct_2(true, true, false, Struct_1(select(false, true, true), all(vec4<bool>(false, false, true, true))))), firstTrailingBit(firstLeadingBit(countOneBits(u_input.d.x) | -56259i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1327f, global1.x, global1.x, -660f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-1152f, global2[_wgslsmith_index_u32(73241u, 2u)], global1.x, 1072f), vec4<f32>(1f, 1f, 1f, 1f))))));
    global2 = array<f32, 2>();
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(firstLeadingBit(1u ^ u_input.b.x), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 2u)]))))));
    var var_0 = ~u_input.b;
    var var_1 = Struct_2(any(select(vec4<bool>(true, true, func_4(true, Struct_1(true, false), vec3<u32>(2147u, 67809u, 1u), Struct_2(true, true, false, Struct_1(false, false))).x, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), true), vec4<bool>(true, true, true, true))), any(vec3<bool>(false, true, any(vec3<bool>(true, true, false)))) || ((arg_0.x <= (i32(-1i) * -37192i)) || ((var_0.x & u_input.c) >= _wgslsmith_sub_u32(42923u, u_input.b.x))), false, Struct_1(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), true));
    return 29051u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(17954u, _wgslsmith_sub_u32(u_input.a, ~65924u), _wgslsmith_mult_u32(func_1(~min(vec4<i32>(1i, u_input.d.x, u_input.d.x, u_input.d.x), u_input.d)), ~u_input.a), ~(~firstTrailingBit(reverseBits(u_input.c))));
    let var_1 = func_4(true, Struct_1(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b.x, 4294967295u), 2u)] >= global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, var_0.x) >> (_wgslsmith_div_u32(24158u, u_input.b.x) % 32u), 2u)], true), vec3<u32>(1u, u_input.a, firstTrailingBit(~var_0.x)), Struct_2(!any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), any(func_4(false, Struct_1(false, false), var_0.xyy, Struct_2(true, true, true, Struct_1(true, false)))), false, Struct_1(true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))))));
    var_0 = vec4<u32>(0u, 1u, var_0.x, ~27925u);
    var var_2 = global1.x;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global2[_wgslsmith_index_u32(var_0.x, 2u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-462f, -1135f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 2u)] * _wgslsmith_div_f32(665f, -636f)), 435f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 2u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)]))))), Struct_2(!all(vec3<bool>(var_1.x, var_1.x, true)) && func_4(0u <= u_input.c, Struct_1(var_1.x, true), _wgslsmith_mod_vec3_u32(var_0.zyz, vec3<u32>(u_input.c, 4294967295u, u_input.b.x)), Struct_2(var_1.x, var_1.x, var_1.x, Struct_1(var_1.x, false))).x, (_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(0u, 2u)])) <= _wgslsmith_f_op_f32(-724f - -266f)) && var_1.x, var_1.x, Struct_1(var_1.x, select(any(vec4<bool>(var_1.x, var_1.x, true, false)), false, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_5(select(var_1, var_1, !var_1.x), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(var_1.x, true, var_1.x, var_3.c.d), Struct_2(var_3.c.a, var_1.x, false, var_3.c.d), 487f)).zw * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], -461f) * vec2<f32>(var_3.b.x, global2[_wgslsmith_index_u32(0u, 2u)]))), _wgslsmith_div_vec4_f32(var_3.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-467f, global1.x, -737f, global1.x) - var_3.b)), var_3.c), func_3(0u, 1i, -628f) | (reverseBits(u_input.d.x) >> (0u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_3.b)))))).x, _wgslsmith_clamp_u32(~(~(~var_0.x)), min((11305u >> (var_0.x % 32u)) | ~791u, u_input.b.x | (var_0.x ^ var_0.x)), u_input.c & 0u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(318f - _wgslsmith_f_op_f32(352f + 443f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) - _wgslsmith_f_op_f32(select(-254f, 410f, var_0.x < 14513u)))), var_3.b.yww);
}

