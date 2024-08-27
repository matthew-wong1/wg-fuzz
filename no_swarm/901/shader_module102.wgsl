struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    var var_0 = true;
    let var_1 = Struct_1(reverseBits(firstTrailingBit(-(~vec4<i32>(u_input.b, 49081i, arg_1, 1i)))));
    let var_2 = firstTrailingBit(~vec2<u32>(1u, 1u));
    var_0 = !(!(!(var_1.a.x < -5701i)));
    var_0 = true;
    return ~4294967295u;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = ~(~1u) >= (~func_3(-vec3<i32>(arg_0, -2147483647i, arg_0), u_input.b << (0u % 32u)) >> (49012u % 32u));
    var var_1 = Struct_2(Struct_1(vec4<i32>(~arg_0, select(-3782i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(arg_0, -16884i)), var_0), u_input.a, 1i)), Struct_1(~(reverseBits(vec4<i32>(arg_0, arg_0, -40108i, arg_0)) ^ vec4<i32>(u_input.b, arg_0, 0i, 23308i))));
    var var_2 = Struct_2(var_1.a, Struct_1(vec4<i32>(-34148i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.b.a.xzy, vec3<i32>(var_1.b.a.x, 0i, var_1.b.a.x)), firstTrailingBit(var_1.b.a.wxx)), arg_0, 1i)));
    let var_3 = Struct_1(_wgslsmith_add_vec4_i32(var_1.a.a, max(_wgslsmith_clamp_vec4_i32(firstLeadingBit(var_2.a.a), select(vec4<i32>(-1i, 43711i, var_1.b.a.x, 0i), vec4<i32>(var_1.b.a.x, 13945i, 1i, arg_0), vec4<bool>(false, true, var_0, false)), -var_2.b.a), vec4<i32>(-arg_0, var_2.b.a.x << (4294967295u % 32u), _wgslsmith_sub_i32(0i, 45305i), 1i))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 + arg_1))));
    return _wgslsmith_div_vec4_i32(var_1.b.a, var_2.b.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = Struct_1(vec4<i32>(i32(-1i) * -arg_0.a.x, _wgslsmith_div_i32(~firstLeadingBit(arg_0.a.x), 2626i), u_input.b, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(arg_0.a.x, u_input.a)), -(~vec2<i32>(u_input.a, 49828i)))));
    var_0 = Struct_1(var_0.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1777f, _wgslsmith_f_op_f32(arg_2.x + -1462f)), !arg_1))) + arg_2);
    var_0 = arg_0;
    return arg_0;
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(select(~vec4<i32>(u_input.a, 1i, 1i, 2147483647i) >> (~arg_0 % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 50684i, 18461i, u_input.a), -vec4<i32>(2147483647i, 2147483647i, -1i, -25829i)), ~u_input.a != _wgslsmith_clamp_i32(-12040i, 18740i, -15785i))), func_4(Struct_1(func_2(max(0i, -9539i), _wgslsmith_f_op_vec3_f32(vec3<f32>(326f, 978f, 2637f) * vec3<f32>(-692f, -1307f, 344f)))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(824f, -236f, -570f))))), min(~vec3<u32>(83095u, arg_0.x, 10371u), vec3<u32>(99968u, arg_0.x, 97385u))));
    let var_1 = arg_0.xxw;
    var var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(abs(~vec4<i32>(0i, var_0.b.a.x, 1i, u_input.a)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-29975i, var_0.a.a.x, 2147483647i, -37236i), vec4<i32>(35654i, 0i, u_input.a, u_input.a)))), Struct_1(min(max(var_0.a.a, vec4<i32>(var_0.b.a.x, 20541i, 9425i, u_input.a)), abs(select(vec4<i32>(53096i, -2147483647i, 0i, -1i), vec4<i32>(-26370i, u_input.b, -65928i, var_0.b.a.x), true)))));
    let var_3 = -2147483647i;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1978f + -1258f), -2140f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1754f, -472f))))), -1971f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-455f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(635f - -231f) * -327f)) * _wgslsmith_div_f32(-1355f, 1490f)));
    return Struct_2(Struct_1(_wgslsmith_add_vec4_i32(var_2.a.a, vec4<i32>(abs(u_input.a), ~u_input.a, _wgslsmith_add_i32(27333i, var_3), reverseBits(var_2.a.a.x)))), func_4(Struct_1(-vec4<i32>(u_input.b, var_0.b.a.x, var_2.a.a.x, -1363i)), !vec3<bool>(-2223f < var_4.x, true, all(vec3<bool>(true, false, false))), vec3<f32>(1f, var_4.x, var_4.x), arg_0.yzz));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2) -> vec2<f32> {
    return arg_1.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(~select(vec4<u32>(1u, 4294967295u, 40047u, 7299u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 5849u, 0u), vec4<u32>(57999u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 36655u, 98917u, 0u)), vec4<bool>(false, true, false, false)), vec4<u32>(min(reverseBits(0u), 0u), _wgslsmith_clamp_u32(23623u, 1u, 1u), 1u, abs(~44063u))) | vec4<u32>(1u, 1u, 1u, 1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(func_1(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1599f, 490f, 300f) - vec3<f32>(-762f, 1819f, 901f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, -808f, 1537f))), Struct_2(Struct_1(vec4<i32>(u_input.a, -1i, -2147483647i, u_input.a)), Struct_1(vec4<i32>(8767i, u_input.b, -1i, 21969i)))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_5(Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, 1i, 1i)), Struct_1(vec4<i32>(36334i, u_input.b, u_input.a, u_input.a))), _wgslsmith_div_vec3_f32(vec3<f32>(1273f, -1643f, -675f), vec3<f32>(-1912f, 686f, -772f)), func_1(vec4<u32>(2144u, var_0.x, var_0.x, 0u)))).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-192f, 213f, false)), _wgslsmith_f_op_f32(round(386f)), true))))), true));
    let var_2 = func_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.x, reverseBits(var_0.x), _wgslsmith_mult_u32(0u, 628u), var_0.x), _wgslsmith_mult_vec4_u32(~(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x) << (vec4<u32>(4294967295u, var_0.x, 1u, 0u) % vec4<u32>(32u))), ~(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    let var_3 = select(all(vec4<bool>(true, true, var_1.x >= var_1.x, true)), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), !(!select(true, false, true))) || all(vec4<bool>(false & select(false, false, false), all(vec3<bool>(false, true, false)), !all(vec3<bool>(true, false, false)), false));
    var var_4 = var_2.a;
    let var_5 = vec2<bool>(true, true);
    var_0 = abs(min(vec4<u32>(0u, 73193u, 0u, 0u) & (vec4<u32>(var_0.x, var_0.x, var_0.x, 1u) & vec4<u32>(4294967295u, var_0.x, var_0.x, 1u)), vec4<u32>(~4294967295u, 54081u, ~var_0.x, var_0.x))) ^ abs(countOneBits(reverseBits(vec4<u32>(0u, 132564u, 0u, var_0.x))) >> (select(abs(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x)), abs(vec4<u32>(var_0.x, 38295u, var_0.x, 4294967295u)), select(vec4<bool>(false, var_3, var_3, true), vec4<bool>(false, var_3, var_3, false), var_3)) % vec4<u32>(32u)));
    let var_6 = Struct_2(Struct_1(~(~(~vec4<i32>(var_4.a.x, var_2.b.a.x, 54440i, var_2.b.a.x)))), Struct_1(max(_wgslsmith_sub_vec4_i32(var_2.a.a << (vec4<u32>(var_0.x, 0u, 64889u, 36555u) % vec4<u32>(32u)), select(vec4<i32>(2147483647i, u_input.a, 6177i, var_4.a.x), var_4.a, var_5.x)), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_4.a.x, var_4.a.x, var_2.b.a.x, var_2.a.a.x), var_4.a))));
    var var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.x);
}

