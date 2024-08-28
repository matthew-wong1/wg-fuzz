struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(10905u, 86466u);

var<private> global1: vec3<i32> = vec3<i32>(1i, -15724i, 26993i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<f32> {
    let var_0 = ~(~_wgslsmith_clamp_u32(~86084u, global0.x, u_input.b)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global0.x, u_input.d) & u_input.c.zww, vec3<u32>(_wgslsmith_clamp_u32(u_input.b, global0.x, 9205u) ^ 4294967295u, 35583u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c.xyz, vec3<u32>(u_input.d, u_input.d, 1u)), ~4294967295u))) % 32u);
    global1 = vec3<i32>(-global1.x, global1.x, u_input.a ^ (reverseBits(~(-5658i)) ^ global1.x));
    let var_1 = Struct_1(!select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), -26009i, select(~vec2<i32>(-31356i, u_input.a) | global1.zx, reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, 647i))), 34517u <= u_input.c.x) & -global1.yx, ~(global0.x & 32067u), ~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(54338u, 0u, 0u), vec3<u32>(11399u, var_0, global0.x)), u_input.c.yzx), global0.x, 24473u));
    global0 = vec2<u32>(0u, 64966u);
    global0 = vec2<u32>(0u, min(var_0, var_1.e.x));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-948f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-234f - 999f))))) * -536f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2943f))))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec4<f32>) -> f32 {
    var var_0 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d | ~4294967295u, ~u_input.c.x), ~u_input.b);
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.x))), arg_0.x, _wgslsmith_f_op_f32(trunc(-234f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.xy, arg_3.yz)))), select(vec4<bool>(true, false, false, arg_2.x), !vec4<bool>(false, !arg_1.a.x, true, !arg_2.x), all(!(!arg_1.a))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), 465f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_3.zw)) + var_1.a.wy) + _wgslsmith_f_op_vec2_f32(-arg_3.zw)));
    let var_3 = global1.x;
    var var_4 = Struct_1(select(select(arg_2, select(select(arg_2, arg_2, vec3<bool>(false, true, true)), var_1.c.xwz, any(vec2<bool>(true, true))), global0.x == ~51936u), select(arg_2, select(select(vec3<bool>(arg_1.a.x, false, false), vec3<bool>(arg_1.a.x, true, arg_1.a.x), vec3<bool>(arg_2.x, var_1.c.x, arg_1.a.x)), var_1.c.zyw, select(var_1.c.yxx, vec3<bool>(false, true, true), arg_1.a.x)), vec3<bool>(arg_2.x, true, 1i > u_input.a)), arg_2), global1.x, vec2<i32>(~_wgslsmith_div_i32(reverseBits(-2147483647i), abs(u_input.a)), u_input.a ^ _wgslsmith_sub_i32(global1.x, -1i)), ~(~u_input.b), ~(~u_input.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(229f))), _wgslsmith_f_op_f32(max(arg_3.x, -1067f))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = abs(_wgslsmith_dot_vec2_i32(select(firstTrailingBit(vec2<i32>(global1.x, -1i)), select(arg_0.yz, vec2<i32>(arg_0.x, global1.x), true), arg_1.c.x), arg_0.xx));
    return arg_2;
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global1 = ~vec3<i32>(u_input.a, ~global1.x, u_input.a) << (u_input.c.wzw % vec3<u32>(32u));
    var var_0 = func_4(~firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(-24071i, 8597i, -1i)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(330f, -589f, 1032f, -691f))) + _wgslsmith_div_vec4_f32(vec4<f32>(188f, 1021f, -1735f, 1179f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-879f, -1282f, 580f, -279f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(270f - 172f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1362f, -1053f, 349f)), Struct_3(arg_0.a), !vec3<bool>(false, true, arg_0.a.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1784f, -1993f, -1935f, -1581f)))))), select(!vec4<bool>(false, arg_0.a.x, true, arg_0.a.x), select(arg_0.a, vec4<bool>(false, true, true, arg_0.a.x), arg_0.a), arg_0.a.x)), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -686f, 978f, 769f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-165f, -235f, 536f, 138f) + vec4<f32>(-861f, -1000f, -322f, -475f))))), vec2<f32>(1432f, _wgslsmith_f_op_f32(-1063f + _wgslsmith_f_op_f32(1990f * 1369f))), !vec4<bool>(false, arg_0.a.x || arg_0.a.x, arg_0.a.x, any(arg_0.a.yxw))));
    let var_1 = Struct_3(arg_0.a);
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.a)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())))), vec4<bool>(true, global0.x != _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 20356u), 50625u & global0.x), false || var_1.a.x, (var_0.c.x && func_4(vec3<i32>(global1.x, u_input.a, 13602i), Struct_2(vec4<f32>(-1578f, -412f, 229f, var_0.b.x), var_0.b, arg_0.a), Struct_2(vec4<f32>(var_0.b.x, 310f, var_0.b.x, -980f), var_0.a.zx, vec4<bool>(true, var_0.c.x, true, var_1.a.x))).c.x) & var_1.a.x));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    global0 = ~(~u_input.c.zy);
    return vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(5867u, global0.x, global0.x), vec3<u32>(global0.x, global0.x, 1u), u_input.c.ywx), u_input.c.xwx) ^ ~countOneBits(vec3<u32>(1u, u_input.b, u_input.b)), vec3<u32>(firstLeadingBit(1u), abs(0u), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(74587u, 6543u))))), _wgslsmith_add_u32(global0.x, reverseBits(~(~110310u))), _wgslsmith_mod_u32(_wgslsmith_add_u32(~global0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, u_input.d, 4294967295u), u_input.c.zxx, vec3<u32>(1u, 4294967295u, 8884u)), ~vec3<u32>(global0.x, 8656u, 75088u))), _wgslsmith_mod_u32(countOneBits(1u), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, global1.x), global1.zx), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, global1.x, u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 2147483647i), vec3<i32>(7943i, u_input.a, -79148i))), global1.x) << (_wgslsmith_mult_vec3_u32(u_input.c.wxw, vec3<u32>(abs(u_input.d), _wgslsmith_mult_u32(global0.x, 1u), ~35380u)) % vec3<u32>(32u)), -(vec3<i32>(-2147483647i, -1i, _wgslsmith_clamp_i32(2147483647i, -2147483647i, 18050i)) | countOneBits(vec3<i32>(global1.x, 6196i, -27006i) & vec3<i32>(-58190i, u_input.a, 1i))));
    var var_0 = Struct_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), -20488i, global1.yz, 1u, func_5(Struct_3(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-118f * 269f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(2083f)), -645f)))), func_1(Struct_3(vec4<bool>(true, true, true, true)))));
    var var_1 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~var_0.c.x, select(var_0.c.x, global1.x, var_0.a.x), ~u_input.a), max(countOneBits(vec3<i32>(var_0.c.x, 16174i, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -58723i, -1i), vec3<i32>(-14774i, global1.x, global1.x)))), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-5434i, -46736i, -55156i) << (var_0.e.xyx % vec3<u32>(32u)), ~vec3<i32>(22776i, global1.x, global1.x)))), ~(~_wgslsmith_mod_u32(25127u, 1u)), ~(~(~(~1u))), vec2<f32>(508f, _wgslsmith_div_f32(-2105f, func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, -18339i, -24936i), vec3<i32>(global1.x, var_0.c.x, u_input.a), vec3<i32>(u_input.a, var_0.c.x, -10996i)), func_1(Struct_3(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true))), func_4(vec3<i32>(43184i, -35187i, var_0.c.x), Struct_2(vec4<f32>(-810f, 431f, -1178f, -1608f), vec2<f32>(-488f, -1347f), vec4<bool>(true, true, var_0.a.x, var_0.a.x)), Struct_2(vec4<f32>(1793f, -550f, -2013f, 1137f), vec2<f32>(-1509f, -612f), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))).a.x)));
}

