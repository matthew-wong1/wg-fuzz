struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = true;
    let var_1 = Struct_2(select(!vec4<bool>(true, true, !var_0, var_0), !select(vec4<bool>(var_0, false, var_0, var_0), !vec4<bool>(var_0, true, var_0, var_0), select(vec4<bool>(var_0, var_0, true, false), vec4<bool>(var_0, true, true, var_0), var_0)), any(!vec3<bool>(true, var_0, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -390f)))), _wgslsmith_clamp_vec2_u32(abs(u_input.b.xx), u_input.b.yx, u_input.b.xx), select(!vec3<bool>(all(vec2<bool>(var_0, false)), true, true), select(select(vec3<bool>(var_0, false, var_0), !vec3<bool>(var_0, var_0, var_0), true), !(!vec3<bool>(var_0, false, var_0)), true), vec3<bool>(var_0, !any(vec2<bool>(var_0, true)), any(vec3<bool>(true, var_0, var_0)))));
    let var_2 = firstTrailingBit(vec2<u32>(u_input.b.x, u_input.e));
    var var_3 = var_1;
    var_3 = Struct_2(var_1.a, var_3.b, countOneBits(~(~vec2<u32>(var_1.c.x, var_2.x)) >> (max(~vec2<u32>(u_input.d, var_1.c.x), ~vec2<u32>(var_3.c.x, 26379u)) % vec2<u32>(32u))), select(vec3<bool>((var_2.x < 4294967295u) && true, var_0, any(var_1.a)), select(!(!var_1.d), var_3.d, true), any(vec3<bool>(true, var_0, var_1.c.x != var_3.c.x))));
    return true;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = select(vec2<bool>(false, func_3(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f - -684f)))), !select(vec2<bool>(false, true), vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(all(vec4<bool>(false, false, true, false)), any(vec3<bool>(true, false, true)))), vec2<bool>(true, false));
    var var_1 = Struct_1(u_input.c, 47368u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(895f, 1436f, 444f) * vec3<f32>(878f, -281f, -510f)) * vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-486f, 468f, 626f)) * vec3<f32>(1075f, 638f, -788f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(122f, -1038f, 352f)))))), vec3<u32>(max(_wgslsmith_mult_u32(4294967295u, countOneBits(u_input.e)), ~u_input.b.x), 45892u, 1u));
    var_0 = !(!vec2<bool>(var_0.x, any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), false))));
    let var_2 = Struct_1(vec3<i32>(max(reverseBits(-12251i), ~27136i), _wgslsmith_dot_vec2_i32(vec2<i32>(-18213i, var_1.a.x), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(var_1.a.x, u_input.c.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(67883i, var_1.a.x), vec2<i32>(u_input.a, -31408i)))), -var_1.a.x), var_1.d.x, var_1.c, select(_wgslsmith_clamp_vec3_u32(var_1.d, var_1.d, countOneBits(u_input.b)), _wgslsmith_add_vec3_u32(vec3<u32>(~var_1.b, ~var_1.d.x, ~var_1.d.x), vec3<u32>(u_input.e, 46095u, var_1.b) | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.d, 23200u), vec3<u32>(2078u, 6993u, var_1.b))), all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), false), vec4<bool>(true, true, true, false), func_3(0i, var_1.c.x)))));
    var var_3 = var_1.c.x;
    return Struct_2(select(!(!(!vec4<bool>(false, false, var_0.x, false))), select(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, true, true)), !vec4<bool>(var_0.x, var_0.x, true, false), var_0.x), !(!vec4<bool>(true, var_0.x, var_0.x, true)), !var_0.x), 1i != var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-353f * _wgslsmith_f_op_f32(-var_1.c.x))))), ~vec2<u32>(~(~var_2.d.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(62831u, var_1.b), abs(79u))), vec3<bool>(!var_0.x, all(!vec4<bool>(false, var_0.x, false, true)), true));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = any(!arg_0.a.zx);
    let var_1 = _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(-arg_1.x))))));
    return Struct_1(u_input.c, ~(~_wgslsmith_mult_u32(arg_0.c.x, u_input.b.x) >> (0u % 32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_1.zyy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1.zzy, vec3<f32>(1348f, 1563f, var_1))))))), u_input.b);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = func_4(func_2(1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1359f, -1501f, 718f, var_0.b), vec4<f32>(arg_0.b, 1000f, -103f, 714f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, arg_0.b, 650f)))))), u_input.a);
    var var_2 = 1i;
    var_0 = Struct_2(vec4<bool>(true, false, firstLeadingBit(var_1.a.x) < -13334i, arg_1.a.x), 139f, ~var_0.c, var_0.d);
    return arg_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!vec4<bool>(!func_1(Struct_2(vec4<bool>(false, false, false, false), -756f, u_input.b.yx, vec3<bool>(true, false, true)), Struct_2(vec4<bool>(false, true, true, true), -626f, vec2<u32>(1u, u_input.e), vec3<bool>(false, true, false))), true, true, u_input.b.x == _wgslsmith_sub_u32(12871u, u_input.d)), -140f, ~reverseBits(abs(func_4(Struct_2(vec4<bool>(false, false, true, false), 449f, vec2<u32>(u_input.b.x, u_input.d), vec3<bool>(false, false, true)), vec4<f32>(-1922f, -1000f, 257f, -503f), 21391i).d.zy)), vec3<bool>(func_1(func_2(-1i), func_2(-u_input.a)), any(vec4<bool>(true, true, true, true)), true));
    let var_1 = _wgslsmith_div_u32(~(~1368u), u_input.b.x) << (_wgslsmith_dot_vec4_u32(~select(vec4<u32>(49932u, 70836u, 55942u, 57648u) << (vec4<u32>(4294967295u, 0u, var_0.c.x, u_input.d) % vec4<u32>(32u)), vec4<u32>(0u, var_0.c.x, u_input.d, 1892u), select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a, false)), vec4<u32>(_wgslsmith_sub_u32(~var_0.c.x, ~9399u), _wgslsmith_mod_u32(~var_0.c.x, ~1u), ~1u, _wgslsmith_dot_vec3_u32(u_input.b >> (u_input.b % vec3<u32>(32u)), func_4(var_0, vec4<f32>(var_0.b, var_0.b, -802f, -2204f), u_input.a).d))) % 32u);
    var var_2 = max(2147483647i, _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 39907i, u_input.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(37150i, -48658i, u_input.a, u_input.c.x), vec4<i32>(-1i, 5632i, u_input.a, -2869i)))), ~vec4<i32>(~(-35093i), -1i, u_input.c.x, -2147483647i)));
    var_2 = firstTrailingBit(_wgslsmith_clamp_i32(min(-1i, func_4(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b)), -68311i).a.x), 28548i, select(_wgslsmith_div_i32(0i, abs(u_input.a)), -_wgslsmith_mod_i32(u_input.c.x, -13360i), var_0.d.x)));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(286f, var_0.b, var_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(func_4(Struct_2(vec4<bool>(var_0.d.x, var_0.a.x, var_0.d.x, var_0.a.x), -793f, u_input.b.xx, vec3<bool>(true, var_0.d.x, var_0.a.x)), vec4<f32>(-1593f, 799f, 780f, var_0.b), -1i).c.x))))), vec4<f32>(-1242f, -727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(327f, var_0.b))), -1687f));
    var_2 = -u_input.c.x ^ _wgslsmith_mod_i32(u_input.c.x, -5795i);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c.x, 4294967295u, 49131u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1436f))));
}

