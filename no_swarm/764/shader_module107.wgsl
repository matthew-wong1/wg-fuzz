struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = vec3<i32>(-1i, -17124i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.b.x), 0i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), -30575i & u_input.b.x), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-2147483647i, u_input.b.x, 1i, u_input.b.x)) << (firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) % vec4<u32>(32u)))) << (max(select(vec3<u32>(1u, u_input.a, max(1u, 1u)), reverseBits(~vec3<u32>(u_input.a, u_input.a, u_input.a)), true), vec3<u32>(4294967295u, 0u, ~u_input.a)) % vec3<u32>(32u));
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(u_input.a, 1u, 112510u, 7660u)), abs(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)))), 0u);
    var var_2 = Struct_1(select(-u_input.b, ~_wgslsmith_add_vec4_i32(u_input.b, ~u_input.b), !select(vec4<bool>(arg_0.a, arg_0.a, false, true), select(vec4<bool>(true, true, arg_0.a, arg_0.a), vec4<bool>(false, false, false, arg_0.a), vec4<bool>(true, arg_0.a, true, true)), vec4<bool>(true, false, arg_0.a, true))), reverseBits(-var_0), 17042i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1909f, 158f, 630f, -187f), vec4<f32>(-207f, -1829f, -530f, 440f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-137f, -741f, 1000f, -1072f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1202f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(floor(1000f))), -1389f), vec4<bool>(!(var_1.x < u_input.a), arg_0.a, true, true))));
    let var_3 = arg_0;
    let var_4 = !select(vec2<bool>(all(!vec2<bool>(arg_0.a, true)), all(!vec4<bool>(false, arg_0.a, var_3.a, true))), select(vec2<bool>(all(vec4<bool>(true, true, var_3.a, arg_0.a)), true), vec2<bool>(any(vec4<bool>(true, var_3.a, false, true)), any(vec3<bool>(false, arg_0.a, arg_0.a))), any(select(vec3<bool>(false, true, var_3.a), vec3<bool>(false, true, var_3.a), var_3.a))), any(select(vec3<bool>(false, arg_0.a, false), !vec3<bool>(var_3.a, var_3.a, var_3.a), false)));
    return any(!select(select(vec3<bool>(true, true, true), vec3<bool>(var_4.x, var_4.x, var_3.a), arg_0.a), vec3<bool>(!var_4.x, var_3.a, var_3.a != arg_0.a), !all(var_4)));
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = vec4<bool>(!all(vec4<bool>(true, false, -429f <= arg_0.b, select(true, false, false))), !(20966i <= (-arg_0.a.b.x << (~u_input.a % 32u))), true, true);
    let var_1 = Struct_2(arg_0.a, arg_0.b, u_input.b.yx);
    let var_2 = var_1.a.b;
    let var_3 = firstTrailingBit(u_input.b.zyz | vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(u_input.b.x), u_input.b.x), arg_0.a.a.x, select(var_2.x, -1i, func_3(Struct_3(var_0.x)))));
    var_0 = vec4<bool>(var_0.x, !var_0.x, var_0.x, firstLeadingBit((u_input.a & 4294967295u) | _wgslsmith_dot_vec4_u32(vec4<u32>(59405u, 4294967295u, 4294967295u, u_input.a), vec4<u32>(25248u, u_input.a, 58457u, u_input.a))) < _wgslsmith_sub_u32(u_input.a >> (_wgslsmith_clamp_u32(54002u, 4294967295u, u_input.a) % 32u), ~26268u | u_input.a));
    return firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(countOneBits(4294967295u), abs(~81612u)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~0u, u_input.a), 51372u, _wgslsmith_div_u32(~u_input.a, 4294967295u >> (1u % 32u)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = func_2(Struct_2(arg_0, -584f, -max(reverseBits(u_input.b.yw), vec2<i32>(50449i, 0i) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))));
    var_0 = abs(vec2<u32>(reverseBits(var_0.x), 1u));
    let var_1 = i32(-1i) * -1i;
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a, u_input.a, 14215u, 33598u)) | _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(1u, 13111u, u_input.a, 4294967295u)), ~vec4<u32>(21810u, 34127u, u_input.a, 0u)), select(abs(vec4<u32>(u_input.a, 13548u, u_input.a, 44120u)), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), select(vec4<bool>(false, arg_0, false, true), vec4<bool>(arg_3, arg_0, arg_3, false), false))), ~(~select(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) << (vec4<u32>(25127u, u_input.a, u_input.a, 7356u) % vec4<u32>(32u)), vec4<u32>(46799u, u_input.a, 0u, u_input.a), !vec4<bool>(true, arg_3, false, true))));
    let var_1 = Struct_3(any(vec3<bool>(arg_0, any(!vec4<bool>(arg_0, arg_3, arg_3, true)), true)));
    var var_2 = Struct_2(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -615f), arg_2.a.zy);
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(~(~u_input.a), abs(~1678u)), reverseBits(~(~u_input.a))), vec3<u32>(~_wgslsmith_sub_u32(u_input.a, 47681u), ~u_input.a, 4294967295u));
    var_0 = 64584u;
    return var_2.a.d;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false), u_input.a == 41187u), vec4<bool>(select(u_input.a, max(u_input.a, 4294967295u), false) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 541u), vec4<u32>(98160u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), false, arg_1.d.x == -100f, true), !select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec2<bool>(false, true)), select(true, false, false), select(false, true, false)), any(vec3<bool>(true, true, true))));
    let var_1 = !vec2<bool>(var_0.x, var_0.x);
    let var_2 = _wgslsmith_f_op_f32(round(arg_1.d.x));
    let var_3 = func_2(Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(arg_1.a, vec4<i32>(arg_1.a.x, u_input.b.x, 1i, arg_1.b.x)), _wgslsmith_sub_vec3_i32(arg_1.b, vec3<i32>(33617i, u_input.b.x, arg_1.b.x)), ~u_input.b.x, _wgslsmith_f_op_vec4_f32(-arg_1.d)), var_2, abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 17260i), vec2<i32>(u_input.b.x, arg_1.b.x))))).x | _wgslsmith_add_u32(~1u, ~_wgslsmith_mod_u32(7451u, abs(u_input.a)));
    let var_4 = !select(select(!vec4<bool>(var_0.x, var_1.x, var_0.x, var_0.x), vec4<bool>(false, all(vec3<bool>(true, true, false)), true, any(var_1)), vec4<bool>(true, true, var_1.x, !var_0.x)), !(!(!vec4<bool>(false, false, var_0.x, var_0.x))), vec4<bool>(var_1.x || (var_2 >= var_2), var_0.x, var_1.x, var_0.x));
    return u_input.a;
}

fn func_6(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(abs(~(~u_input.b | vec4<i32>(-1i, 2147483647i, 2147483647i, -41851i))), u_input.b.wzz, u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2041f, 715f, -2625f, 1035f), vec4<f32>(184f, -153f, 135f, 435f))))));
    let var_1 = Struct_1(firstLeadingBit(_wgslsmith_mod_vec4_i32(min(u_input.b, -vec4<i32>(u_input.b.x, var_0.a.x, -47855i, var_0.c)), -max(vec4<i32>(var_0.c, u_input.b.x, 1i, u_input.b.x), vec4<i32>(33248i, u_input.b.x, -1i, -14006i)))), select(max(-(~var_0.a.xxx), ~vec3<i32>(u_input.b.x, var_0.b.x, 47300i) | -vec3<i32>(var_0.a.x, u_input.b.x, -1i)), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(var_0.a.wwz, var_0.a.xzy), vec3<i32>(50250i, 11768i, u_input.b.x), var_0.a.wxz), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, false, false)), true, all(vec2<bool>(true, false))), true)), var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(true, var_0.d, Struct_1(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, var_0.a.x), var_0.b, 0i, var_0.d), true))))));
    var var_2 = var_1.d.x;
    var var_3 = _wgslsmith_mult_i32(-_wgslsmith_div_i32(func_1(Struct_1(u_input.b, vec3<i32>(var_0.b.x, -2147483647i, u_input.b.x), var_0.b.x, var_0.d), false).b.x, select(var_0.c, _wgslsmith_mod_i32(-31085i, 2147483647i), select(true, false, false))), var_0.c);
    var var_4 = u_input.a;
    return func_1(func_1(Struct_1(u_input.b, vec3<i32>(var_0.c, firstTrailingBit(u_input.b.x), var_0.b.x | u_input.b.x), var_1.b.x, _wgslsmith_f_op_vec4_f32(select(var_0.d, var_1.d, select(true, true, true)))), any(vec3<bool>(true, true, true))), select(_wgslsmith_clamp_u32(4294967295u, 10101u, 36704u) ^ (arg_0 << (u_input.a % 32u)), 74396u ^ ~arg_1, true) != ~(~(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(u_input.a >> (func_5(_wgslsmith_f_op_vec4_f32(func_4(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-807f, 1000f, 1166f, -404f)), func_1(Struct_1(u_input.b, vec3<i32>(61025i, u_input.b.x, u_input.b.x), 1793i, vec4<f32>(1314f, 445f, -607f, -1012f)), true), true)), Struct_1(u_input.b, _wgslsmith_clamp_vec3_i32(u_input.b.wyx, u_input.b.xzw, vec3<i32>(-56955i, u_input.b.x, u_input.b.x)), u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1705f, -353f, -415f, -1707f)))) % 32u), ~_wgslsmith_div_u32(u_input.a, ~abs(u_input.a)));
    let var_1 = Struct_2(Struct_1(firstTrailingBit(u_input.b), var_0.a.xxx, 0i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f + -717f)), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x), 581f), -625f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2106f))), select(var_0.b.zz, min(reverseBits(vec2<i32>(-10792i, -2147483647i)), u_input.b.wy), true != !func_3(Struct_3(false))));
    let var_2 = Struct_3(all(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), func_3(Struct_3(true))), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_3 = Struct_2(var_1.a, var_0.d.x, _wgslsmith_sub_vec2_i32(var_0.a.wz, ~vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(var_1.a.b.x, 5236i))));
    let x = u_input.a;
    s_output = StorageBuffer(1u & ~u_input.a, u_input.a, var_1.a.d.yy, vec4<i32>(func_6(~u_input.a, ~min(u_input.a, u_input.a)).a.x, _wgslsmith_add_i32(-2147483647i, var_1.a.c >> (7685u % 32u)) << (65006u % 32u), u_input.b.x, 2147483647i & var_1.a.a.x));
}

