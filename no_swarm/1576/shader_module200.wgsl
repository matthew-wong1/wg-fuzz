struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-433f, 1447f, -373f), vec2<i32>(-35739i, -9794i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    return 2504f;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-18381i), -1207i), global0.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x - 104f) - _wgslsmith_f_op_f32(min(arg_1, -2785f))))))));
    let var_1 = arg_3;
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(max(~(~39261u), 34288u), 4294967295u, u_input.b >> (~(~990u) % 32u)), u_input.a.yzy);
    var_0 = Struct_1(12851i & (var_1.b.x & global0.b.x), arg_1);
    var_0 = Struct_1(max(_wgslsmith_dot_vec4_i32(min(~vec4<i32>(-2147483647i, arg_3.b.x, 2147483647i, arg_3.b.x), select(vec4<i32>(8371i, arg_3.b.x, var_0.a, -34816i), vec4<i32>(arg_3.b.x, 1i, global0.b.x, 1i), vec4<bool>(true, arg_0, false, arg_0))), vec4<i32>(-2147483647i, 34189i, -5076i, 2147483647i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -4145i, -1i, arg_3.b.x), vec4<i32>(5835i, arg_3.b.x, arg_3.b.x, var_0.a))), min(arg_3.b.x >> (1u % 32u), var_0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-394f, -273f, -347f))) + _wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1597f, arg_3.a.x, 1758f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -566f, arg_2)))))), (global0.b << (vec2<u32>(u_input.d.x ^ var_2.x, ~u_input.c.x) % vec2<u32>(32u))) & global0.b);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(global0.b.x == -2147483647i, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(-211f * 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(480f, -828f)) + global0.a.x), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1570f, -176f, -178f) + global0.a), global0.a), global0.a, vec3<bool>(true, true, true))), ~(-vec2<i32>(global0.b.x, -12789i))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-global0.a), -(func_2(any(vec4<bool>(false, true, false, false)), -365f, _wgslsmith_f_op_f32(abs(var_0.a.x)), Struct_2(vec3<f32>(-612f, var_0.a.x, var_0.a.x), global0.b)).b ^ firstTrailingBit(global0.b)));
    let var_1 = ~var_0.b.x;
    var var_2 = all(!vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), all(vec2<bool>(true, true)), true));
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(max(-44742i, global0.b.x)), ~2147483647i << ((u_input.c.x & 1u) % 32u), -1827i, var_1), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(global0.b.x, var_1, global0.b.x, 2147483647i), vec4<i32>(2147483647i, 9584i, 2147483647i, 28979i)) & firstTrailingBit(vec4<i32>(-41854i, -2147483647i, -10116i, 2147483647i)), ~(~vec4<i32>(-18408i, global0.b.x, var_0.b.x, global0.b.x)), min(vec4<i32>(-1i, 5217i, 61212i, 2147483647i) << (vec4<u32>(14598u, u_input.e.x, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(global0.b.x, global0.b.x, var_0.b.x, var_1) ^ vec4<i32>(-2147483647i, global0.b.x, var_0.b.x, -347i))), (vec4<i32>(-1i) * -vec4<i32>(global0.b.x, -2147483647i, var_1, -1i)) ^ vec4<i32>(~(-1i), abs(global0.b.x), -1i | var_1, ~96616i)) << (_wgslsmith_clamp_vec4_u32(u_input.a & ~(u_input.a << (u_input.a % vec4<u32>(32u))), ~u_input.a | firstTrailingBit(u_input.a), u_input.a) % vec4<u32>(32u));
    return Struct_1(~firstTrailingBit(select(min(0i, 0i), global0.b.x, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1266f, _wgslsmith_div_f32(-276f, _wgslsmith_f_op_f32(func_3())), true)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b, -660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), 561f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 152f, -1342f, arg_0.b) - vec4<f32>(-861f, -134f, 964f, 491f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, arg_2.b, global0.a.x, -233f) - vec4<f32>(var_0.b, arg_0.b, -882f, var_0.b))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1828f, 639f, -1632f, -2264f) + vec4<f32>(global0.a.x, arg_2.b, arg_0.b, global0.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b, arg_2.b, global0.a.x, -490f), vec4<f32>(global0.a.x, 3023f, 827f, 800f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1005f, arg_0.b, var_0.b) - vec4<f32>(289f, global0.a.x, var_0.b, 763f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, arg_2.b, -1000f, arg_2.b))))));
    let var_2 = vec4<i32>(-1i) * -(~vec4<i32>(countOneBits(var_0.a), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, global0.b.x), vec2<i32>(arg_2.a, -8813i)), arg_1.x, -36929i));
    global0 = func_2(~(max(arg_2.a, arg_2.a) << (20516u % 32u)) > ~(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1735f), _wgslsmith_f_op_f32(-arg_0.b), func_2(true, -1097f, -115f, func_2(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -267f))), var_0.b, func_2(false, 744f, _wgslsmith_f_op_f32(var_0.b * -1758f), Struct_2(vec3<f32>(var_1.x, arg_2.b, arg_0.b), vec2<i32>(var_0.a, arg_0.a))))));
    var var_3 = ~var_2;
    return Struct_1(arg_1.x, arg_0.b);
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = min(vec4<i32>(countOneBits(_wgslsmith_mult_i32(arg_0.a, arg_0.a) | -global0.b.x), abs(_wgslsmith_div_i32(~global0.b.x, -16222i)), global0.b.x, ~_wgslsmith_div_i32(-11991i ^ arg_0.a, ~global0.b.x)), countOneBits(-vec4<i32>(arg_0.a, _wgslsmith_clamp_i32(global0.b.x, global0.b.x, arg_0.a), 1i, -2147483647i)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-var_1.b);
    global0 = func_2(true, var_2, func_2(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x * var_1.b), -1359f)), _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(trunc(-283f)))))), func_2(false, _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(183f - 354f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-387f))), Struct_2(_wgslsmith_f_op_vec3_f32(-global0.a), global0.b))).a.x, Struct_2(global0.a, _wgslsmith_sub_vec2_i32(~var_0.wy << (~u_input.c % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a, arg_0.a), vec2<i32>(-2147483647i, global0.b.x)), select(vec2<i32>(var_1.a, var_1.a), var_0.xw, vec2<bool>(false, true))))));
    let var_3 = u_input.a.wzy;
    return var_1.a != _wgslsmith_clamp_i32(-(~var_0.x), firstTrailingBit(-select(var_0.x, -42375i, true)), -reverseBits(_wgslsmith_div_i32(0i, var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(func_5(func_4(Struct_1(global0.b.x, 671f), vec4<i32>(37278i, -1i, -26521i, global0.b.x), func_1(), 35846u)), _wgslsmith_clamp_i32(func_4(Struct_1(global0.b.x, 206f), vec4<i32>(-33248i, -43459i, global0.b.x, global0.b.x), Struct_1(-31130i, global0.a.x), 0u).a, global0.b.x, -2147483647i) == global0.b.x, true));
    var var_1 = Struct_1(global0.b.x >> (0u % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(ceil(-868f)))) * 1931f))));
    var var_2 = Struct_1(global0.b.x, global0.a.x);
    var_2 = func_1();
    global0 = func_2(var_0.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(906f)), func_2(func_5(func_4(func_1(), -vec4<i32>(6505i, 2147483647i, -1i, var_2.a), Struct_1(global0.b.x, global0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.c.x), u_input.a))), 1913f, _wgslsmith_f_op_f32(-1000f - 1f), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(global0.a.x, var_1.b, 1236f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(344f, 623f, -1346f), vec3<f32>(426f, global0.a.x, global0.a.x), var_0.x))), vec2<i32>(func_4(Struct_1(global0.b.x, global0.a.x), vec4<i32>(-53245i, -1i, var_1.a, var_2.a), Struct_1(var_1.a, var_1.b), u_input.b).a, global0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, ~(_wgslsmith_mult_u32(u_input.a.x & 4294967295u, 24951u) | firstTrailingBit(_wgslsmith_add_u32(0u, 4294967295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(535f, var_2.b, -790f))))), _wgslsmith_sub_i32(global0.b.x, var_1.a), _wgslsmith_mod_u32(u_input.a.x, ~(reverseBits(u_input.c.x) | ~u_input.b)));
}

