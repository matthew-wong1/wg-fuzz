struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = 29123u;
    let var_1 = vec2<f32>(-109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-817f)))) * _wgslsmith_f_op_f32(-352f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1309f)), -786f))));
    var var_2 = u_input.b.x << ((countOneBits(1u) >> (u_input.b.x % 32u)) % 32u);
    var_2 = abs(u_input.b.x << (1u % 32u));
    let var_3 = ~_wgslsmith_dot_vec3_u32(min(u_input.b.wwx, abs(vec3<u32>(39875u, 47715u, 2672u))), u_input.b.wxz) & 0u;
    return arg_0 | !arg_2.a;
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_1(all(vec4<bool>(true, func_3(true, u_input.a.x, Struct_1(false)), arg_0 <= -1121f, true)) != !(_wgslsmith_f_op_f32(select(-526f, arg_0, false)) > _wgslsmith_f_op_f32(floor(arg_0))));
    var var_1 = abs(95923u);
    let var_2 = ~u_input.a.x | u_input.a.x;
    let var_3 = Struct_3(_wgslsmith_div_i32(_wgslsmith_div_i32(0i, 8116i), ~var_2 | var_2));
    var_1 = max(0u, _wgslsmith_add_u32(38183u, u_input.b.x));
    return Struct_3(_wgslsmith_add_i32(~var_3.a, _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-39893i, var_3.a, var_3.a, u_input.a.x), vec4<i32>(2147483647i, 59892i, var_3.a, u_input.a.x))), var_3.a)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = ~select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u >> (0u % 32u), 28970u), vec2<u32>(1u, firstLeadingBit(u_input.c))), u_input.b.yz, select(select(!vec2<bool>(arg_3.a, arg_1), vec2<bool>(true, true), true), select(vec2<bool>(true, arg_3.a), select(vec2<bool>(arg_3.a, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, arg_3.a)), arg_3.a));
    var var_1 = _wgslsmith_div_f32(-2229f, _wgslsmith_f_op_f32(round(-664f)));
    var var_2 = u_input.a & ~vec3<i32>(51911i, -1i, arg_2);
    var_2 = u_input.a;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1326f))), -1000f);
    return -1i;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1486f)));
    var var_1 = ~u_input.b.x | u_input.b.x;
    var var_2 = Struct_2(2223f, min(~func_4(func_2(var_0), true, reverseBits(-21137i), Struct_1(false)), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(427f, 1435f)) - _wgslsmith_f_op_f32(var_0 + 100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(512f, var_0, true)), var_0, false)))));
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x | u_input.a.x, var_2.b), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.b, -16829i), select(~vec2<i32>(-2147483647i, 15009i), firstLeadingBit(countOneBits(u_input.a.zy)), !all(vec3<bool>(true, false, true)))));
    let var_4 = _wgslsmith_mult_u32(countOneBits(min(_wgslsmith_mult_u32(86279u, u_input.b.x), ~reverseBits(u_input.c))), reverseBits(abs(abs(u_input.c))));
    return Struct_3(_wgslsmith_div_i32(-_wgslsmith_div_i32(var_3.x, 0i), var_3.x));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = ~u_input.b.zzy;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1077f)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f) - _wgslsmith_f_op_f32(step(-846f, arg_1.d)))));
    var var_3 = Struct_3(reverseBits((reverseBits(arg_1.b) & _wgslsmith_sub_i32(arg_3.a, -4115i)) | -firstLeadingBit(7190i)));
    var_2 = var_1;
    return Struct_3(arg_3.a);
}

fn func_6(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_1(-u_input.a.x == _wgslsmith_dot_vec3_i32(vec3<i32>(0i, ~(-2147483647i), 2147483647i), vec3<i32>(arg_2.a, arg_1, i32(-1i) * -2147483647i)));
    let var_1 = u_input.c;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(247f + _wgslsmith_f_op_f32(1447f + 166f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(-934f, -1223f)))) - _wgslsmith_f_op_f32(118f + _wgslsmith_f_op_f32(-313f * _wgslsmith_f_op_f32(max(-597f, -1000f))))), _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_div_i32(arg_0.x, u_input.a.x), -14507i), abs(_wgslsmith_mod_vec2_i32(u_input.a.zy, u_input.a.yy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -334f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f))), _wgslsmith_f_op_f32(426f - -1692f));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)) + _wgslsmith_f_op_f32(-789f - _wgslsmith_f_op_f32(f32(-1f) * -260f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(967f, -1000f)))))), func_6(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.xx >> (vec2<u32>(u_input.b.x, u_input.c) % vec2<u32>(32u)), u_input.a.zx, ~u_input.a.zy), u_input.a.zx), -(~u_input.a.x & -38199i), func_5((i32(-1i) * -77165i) | _wgslsmith_clamp_i32(u_input.a.x, -9118i, 68696i), Struct_2(213f, u_input.a.x, -478f, -105f), _wgslsmith_dot_vec2_u32(~u_input.b.yz, select(u_input.b.zw, vec2<u32>(75261u, u_input.b.x), true)), func_1())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(428f, -1177f)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(1069f))))), 640f);
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - -1087f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-308f, 577f)), _wgslsmith_f_op_f32(round(-1367f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1574f, var_0.c)))), -41801i, 1098f, 284f);
    let var_1 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.d)) - _wgslsmith_f_op_f32(-var_0.d)))));
    var var_2 = abs(~u_input.c);
    var_0 = Struct_2(-491f, 0i, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-var_0.d));
    let var_3 = vec2<i32>(~(~var_1.a), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(705f + -912f), 1591f)), _wgslsmith_f_op_f32(min(var_0.a, -2630f))))), -704f, vec4<i32>(-31958i, -var_1.a, func_1().a, _wgslsmith_mult_i32(firstTrailingBit(var_1.a), var_3.x)));
}

