struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec3<i32> {
    var var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-417f, 448f, arg_0.a.c), arg_1.a), _wgslsmith_f_op_vec3_f32(round(arg_1.a)))) * vec3<f32>(_wgslsmith_f_op_f32(-399f * var_1.a.c), var_1.a.a.x, arg_0.a.c)), ~vec3<i32>(min(var_0.a.b.x, arg_1.b.x), arg_0.a.b.x, 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_1.a.c)), -174f)), _wgslsmith_f_op_f32(var_1.a.a.x + _wgslsmith_f_op_f32(var_0.a.c + 816f)))));
    let var_3 = var_0.a.b;
    var_1 = Struct_2(var_0.a);
    return var_0.a.b;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1176f, -1463f, -623f), vec3<f32>(-441f, -499f, 1010f), vec3<bool>(false, true, true))))), _wgslsmith_div_vec3_i32(vec3<i32>(-45878i, i32(-1i) * -29139i, 1i), func_3(Struct_2(Struct_1(vec3<f32>(344f, -513f, 1074f), vec3<i32>(0i, 7586i, 1i), 199f)), Struct_1(vec3<f32>(421f, 478f, -1392f), vec3<i32>(0i, 0i, 98733i), -627f), 4294967295u < u_input.a)), _wgslsmith_f_op_f32(floor(303f))));
    var var_1 = min(abs(vec4<i32>(-2147483647i, var_0.a.b.x & 38901i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.a.b.x, var_0.a.b.x, 2147483647i), vec4<i32>(-2147483647i, var_0.a.b.x, -1i, 12650i)), _wgslsmith_dot_vec4_i32(vec4<i32>(23119i, var_0.a.b.x, 42060i, var_0.a.b.x), vec4<i32>(var_0.a.b.x, var_0.a.b.x, 79011i, var_0.a.b.x)))) & (~vec4<i32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, -1i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, var_0.a.b.x, 0i), vec4<i32>(2147483647i, 2147483647i, var_0.a.b.x, -19345i))), vec4<i32>(firstTrailingBit(reverseBits(var_0.a.b.x)) >> (firstLeadingBit(u_input.a) % 32u), -max(-var_0.a.b.x, var_0.a.b.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(49440i, var_0.a.b.x), ~var_0.a.b.x), 2147483647i << (u_input.a % 32u)), select(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.b.x, 24484i, 33656i, var_0.a.b.x), vec4<i32>(2147483647i, var_0.a.b.x, 37539i, var_0.a.b.x)), -vec4<i32>(-1i, var_0.a.b.x, var_0.a.b.x, 17996i)), -4093i, true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(420f, 216f, _wgslsmith_f_op_f32(-var_0.a.c)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(var_0.a.a))))))));
    let var_3 = vec4<u32>(98541u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 3098u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 56716u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(41772u, u_input.a, u_input.a)), vec3<u32>(3534u, u_input.a, 1u)), reverseBits(select(vec3<u32>(27182u, u_input.a, 55588u), vec3<u32>(4294967295u, 45533u, 6369u), false))), _wgslsmith_div_vec3_u32(vec3<u32>(7880u, ~1u, 4294967295u), ~vec3<u32>(u_input.a, 12853u, 4294967295u))), 47367u << (u_input.a % 32u), ~(~18548u));
    var var_4 = var_0.a.b.x;
    return ~var_3.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = !(arg_2.x != (_wgslsmith_f_op_f32(sign(arg_3.x)) < _wgslsmith_f_op_f32(max(-2111f, -337f)))) & !any(vec4<bool>(arg_2.x, arg_0.x < 0u, arg_2.x, true));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-140f, _wgslsmith_f_op_f32(step(arg_3.x, 2004f)), _wgslsmith_f_op_f32(abs(-305f)), _wgslsmith_f_op_f32(arg_3.x - 425f)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(arg_3.x - -556f), 1279f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(trunc(arg_3.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, -1002f) * vec2<f32>(869f, arg_3.x))) - arg_3.yx)));
    var_2 = arg_3;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.wxy), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(497i, -15861i, -31168i, -2147483647i), vec4<i32>(2147483647i, -46175i, 58084i, -3563i)) ^ ~18545i, abs(-40285i), 60987i), vec3<i32>(func_3(Struct_2(Struct_1(vec3<f32>(var_3.x, -1297f, -406f), vec3<i32>(84i, -11564i, -4214i), var_2.x)), Struct_1(arg_3.wxx, vec3<i32>(-108370i, 2147483647i, -39483i), -971f), var_0).x, -1i, max(-12747i, 40866i)) & countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-8963i, -1i, 0i), vec3<i32>(2147483647i, -81674i, 1i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -782f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-442f, var_3.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1992f)) + _wgslsmith_div_vec2_f32(arg_2.a.a.yz, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, -1028f))))) * vec2<f32>(_wgslsmith_f_op_f32(max(1618f, arg_2.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -838f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(633f, 283f) - vec2<f32>(-2150f, 1213f)) + vec2<f32>(-876f, -189f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(1465f, Struct_2(func_1(vec2<u32>(42282u, u_input.a), false, vec2<bool>(true, false), vec4<f32>(-653f, 1265f, -1000f, 2808f))), Struct_2(func_1(vec2<u32>(70339u, 1u), true, vec2<bool>(true, true), vec4<f32>(240f, -1664f, 1000f, 463f))), _wgslsmith_mod_i32(0i, max(2147483647i, -1i))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_4(var_0.x, Struct_2(Struct_1(vec3<f32>(606f, 968f, -1006f), -vec3<i32>(2147483647i, 1i, 51174i), -988f)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1911f, -615f) + vec3<f32>(var_0.x, 1270f, 250f)), vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_f32(-var_0.x))), firstTrailingBit(0i))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = min(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), ~(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 5017u, u_input.a, 4294967295u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)) >> (abs(~vec4<u32>(4294967295u, 1u, 27173u, u_input.a)) % vec4<u32>(32u))));
    var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = vec2<i32>(abs(select(~firstLeadingBit(2147483647i), _wgslsmith_add_i32(1i, select(1i, 25565i, true)), func_1(var_2.wx, true, vec2<bool>(false, true), vec4<f32>(var_0.x, -2170f, -1000f, 1502f)).a.x == _wgslsmith_f_op_f32(-var_0.x))), ~firstLeadingBit(_wgslsmith_div_i32(10690i, _wgslsmith_div_i32(2147483647i, 7664i))));
    var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var_3 = vec2<i32>(countOneBits(-1i), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(firstLeadingBit(50421i), ~(-27714i)) << (_wgslsmith_div_vec2_u32(var_2.wx, ~vec2<u32>(1u, var_2.x)) % vec2<u32>(32u))), abs(vec3<u32>(~var_2.x, u_input.a, firstTrailingBit(41709u))) | vec3<u32>(firstLeadingBit(29339u), ~max(u_input.a, u_input.a), u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-6348i, var_3.x) >> (firstLeadingBit(vec2<u32>(52852u, u_input.a)) % vec2<u32>(32u)), ~vec2<i32>(13846i, abs(-2473i))), ~_wgslsmith_clamp_i32(-var_3.x, _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, -1i, var_3.x, var_3.x), vec4<i32>(1i, var_3.x, var_3.x, 28735i))), var_3.x));
}

