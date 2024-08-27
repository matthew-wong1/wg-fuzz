struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>) -> vec4<f32> {
    let var_0 = Struct_1(vec2<f32>(179f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2009f, -2317f, true)) * -1105f)))), 1u, vec4<f32>(671f, 401f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), -1488f));
    var var_1 = !arg_0;
    var_1 = !(!select(select(vec4<bool>(false, true, var_1.x, var_1.x), !arg_0, select(arg_0, arg_0, arg_0)), select(select(vec4<bool>(false, true, true, false), arg_0, false), arg_0, all(vec4<bool>(true, var_1.x, var_1.x, arg_0.x))), true));
    var var_2 = ~u_input.e.xy;
    let var_3 = var_0;
    return _wgslsmith_f_op_vec4_f32(-var_3.c);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-571f, 755f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2074f, -1906f)))), _wgslsmith_div_u32(~u_input.d.x, 44580u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-342f, 1000f, 2167f, -841f), vec4<f32>(-671f, -1255f, 1071f, 131f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(371f, -211f, 606f, -514f) - vec4<f32>(-407f, -1486f, 1364f, -1303f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-362f)) - -1568f), 1817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + -1339f)), _wgslsmith_f_op_f32(exp2(var_0.c.x))) * vec4<f32>(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(round(-1000f))), -1584f, var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(var_0.a.x * var_0.c.x)))));
    return var_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = 1u;
    var var_1 = arg_0;
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(195f - arg_1);
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1260f, var_3), var_1.a), vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2(vec4<bool>(true, false, true, true))).x, _wgslsmith_f_op_f32(-1180f * var_1.c.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), _wgslsmith_add_u32(0u, reverseBits(1u) | _wgslsmith_mod_u32(var_1.b, 1u)), arg_0.c), all(vec2<bool>(true, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + 1000f), -420f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -470f, 1579f, 1838f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 1934f, 118f, 1711f))))), firstTrailingBit(reverseBits(~vec4<u32>(0u, arg_2, 0u, arg_3.x))));
    return Struct_2(Struct_1(arg_0.a, countOneBits(reverseBits(_wgslsmith_mod_u32(var_4.e.x, var_4.a.b))), _wgslsmith_f_op_vec4_f32(var_4.d - vec4<f32>(_wgslsmith_f_op_f32(-1380f - arg_0.c.x), -128f, _wgslsmith_f_op_f32(-var_4.d.x), _wgslsmith_div_f32(-666f, var_1.c.x)))), false, 398f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 843f, var_4.c, var_3))) * _wgslsmith_f_op_vec4_f32(exp2(var_1.c))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4.d * arg_0.c) - vec4<f32>(-233f, var_3, 459f, -1292f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2398f, -709f, 946f, var_1.a.x), vec4<f32>(1449f, 1101f, -794f, var_4.c), false)))), var_4.e);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.a + vec2<f32>(-1367f, -546f))))), arg_1.e.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c), arg_0, arg_1.c, -794f) - _wgslsmith_f_op_vec4_f32(func_2(!vec4<bool>(arg_1.b, arg_1.b, false, false))))), _wgslsmith_f_op_f32(func_3(!vec2<bool>(false | arg_1.b, arg_1.b), vec3<bool>(true, true, true))), ~firstLeadingBit(4294967295u), _wgslsmith_sub_vec2_u32(abs(arg_1.e.zx ^ arg_1.e.zx), ~u_input.c.zx));
    var var_1 = select(select(select(arg_3.xy, !select(vec2<bool>(arg_1.b, false), vec2<bool>(false, false), false), false), vec2<bool>(_wgslsmith_f_op_f32(step(arg_0, arg_1.d.x)) == -1592f, arg_1.b & all(arg_3)), vec2<bool>(false, all(!vec4<bool>(arg_3.x, arg_1.b, arg_1.b, arg_1.b)))), select(arg_3.zy, arg_3.yy, !arg_3.yx), !select(select(arg_3.wx, arg_3.yy, arg_2.x >= arg_1.d.x), arg_3.zx, arg_3.ww));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_1.d.xyz + arg_1.a.c.zxz))));
    let var_3 = ~(~(~(~arg_1.e)) | arg_1.e);
    let var_4 = var_3;
    return func_4(Struct_1(vec2<f32>(661f, -1600f), u_input.c.x, vec4<f32>(_wgslsmith_f_op_f32(step(arg_2.x, -1276f)), 1925f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(747f * var_2.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c))))), _wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), 36065u, func_4(func_4(arg_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-654f + -313f), 350f, u_input.a != u_input.a)), countOneBits(var_3.x & var_0.a.b), ~var_0.e.yy << (countOneBits(arg_1.e.yx) % vec2<u32>(32u))).a, arg_2.x, abs(0u), ~vec2<u32>(~var_0.e.x, _wgslsmith_clamp_u32(var_0.a.b, 0u, 30929u))).e.ww).a;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = vec4<u32>(62343u, u_input.d.x, _wgslsmith_sub_u32(~(~u_input.c.x), ~firstLeadingBit(1u)), firstLeadingBit(0u));
    var_0 = arg_0;
    var var_2 = func_4(arg_0, 837f, ~(~_wgslsmith_clamp_u32(0u, 0u, u_input.d.x)), ~var_1.xw).e.ww | (abs(var_1.zw) & (var_1.xz << (vec2<u32>(~u_input.c.x, 22521u) % vec2<u32>(32u))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.xw))), _wgslsmith_mult_u32(~var_2.x ^ 22185u, var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1086f, -270f, 483f))))), !(!(select(true, false, true) && any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(2151f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(max(var_0.a.x, arg_0.c.x))))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0.c)) * vec4<f32>(1092f, 1808f, var_0.a.x, 2197f))))), abs(var_1));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = arg_0.e.zxz;
    return Struct_1(arg_2.zz, min(~_wgslsmith_add_u32(39487u, _wgslsmith_sub_u32(var_0.x, u_input.c.x)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.x, 1u, arg_1.e.x) >> (arg_1.e.zyx % vec3<u32>(32u))), var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -107f);
    var var_1 = func_6(func_5(func_1(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0, 300f), _wgslsmith_f_op_f32(-var_0)), Struct_2(Struct_1(vec2<f32>(var_0, 630f), 4294967295u, vec4<f32>(var_0, var_0, var_0, -449f)), all(vec2<bool>(true, true)), -382f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1345f, var_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(18039u, 27149u, u_input.c.x, u_input.d.x), vec4<u32>(1u, 5272u, u_input.c.x, 1u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1000f, var_0, var_0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1731f, var_0, 102f, 1625f))), vec4<bool>(false, true, false, true))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1832f))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(34917u, u_input.c.x), vec2<u32>(4294967295u, 13353u)), func_1(-134f, func_5(Struct_1(vec2<f32>(112f, var_0), u_input.d.x, vec4<f32>(-1000f, var_0, 2927f, 378f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 441f, var_0, 883f)), vec4<bool>(true, true, false, true)).c), false, _wgslsmith_f_op_f32(min(1755f, _wgslsmith_div_f32(var_0, -1398f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0, var_0, 268f) + vec4<f32>(704f, 926f, -278f, var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, var_0, var_0, var_0))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, var_0, -935f, -221f)))))), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(4294967295u, 54181u, 23501u, 81819u) >> (vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 0u, 1u, u_input.d.x), vec4<u32>(51175u, 72638u, 82405u, 4294967295u)), ~(~vec4<u32>(4294967295u, u_input.d.x, u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, -1116f, var_0, 1569f), vec4<f32>(779f, 1254f, 1804f, -898f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(603f, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 921f, var_0) - vec4<f32>(1331f, var_0, -705f, 565f))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-522f * 746f), _wgslsmith_div_f32(var_0, 525f))))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-983f, -2078f))), _wgslsmith_f_op_vec2_f32(ceil(var_1.c.xz)))))), u_input.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1726f, 278f, 1539f, -857f) + _wgslsmith_f_op_vec4_f32(-var_1.c))), true, -719f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(var_1.c))))), var_1.c), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_1.b, var_1.b, u_input.d.x, 4294967295u)), abs(select(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 1u) >> (vec4<u32>(60938u, 37638u, var_1.b, u_input.d.x) % vec4<u32>(32u)), vec4<u32>(var_1.b, 2952u, var_1.b, u_input.d.x), any(vec2<bool>(false, false))))));
    var var_3 = 1601f;
    var var_4 = _wgslsmith_f_op_f32(-var_0);
    var_3 = func_6(var_2, Struct_2(func_4(func_1(var_2.d.x, var_2, _wgslsmith_f_op_vec4_f32(var_2.a.c * vec4<f32>(-412f, 390f, -1137f, var_2.c)), !vec4<bool>(false, true, false, var_2.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -603f), 437f)), var_2.e.x, countOneBits(var_2.e.wz)).a, all(!vec2<bool>(var_2.b, var_2.b)), var_0, vec4<f32>(var_2.c, 436f, _wgslsmith_f_op_f32(max(var_2.a.a.x, -208f)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(floor(-2924f)))), vec4<u32>(min(_wgslsmith_dot_vec2_u32(var_2.e.wz, vec2<u32>(u_input.c.x, 0u)), var_2.a.b), 1u, abs(var_1.b << (var_1.b % 32u)), ~(~1u))), var_1.c).a.x;
    var_4 = 402f;
    let var_5 = Struct_1(func_1(493f, Struct_2(var_2.a, var_2.b, _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(var_0 - var_0), !var_2.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c), _wgslsmith_f_op_vec4_f32(-var_2.d)), var_2.e), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) + vec4<f32>(var_0, 826f, var_2.a.c.x, -676f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1615f, var_1.a.x, -309f, 1005f)))), true)), !select(!vec4<bool>(false, false, var_2.b, var_2.b), vec4<bool>(false, var_2.b, false, true), true)).c.wy, ~var_2.a.b, var_1.c);
    var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(var_2.e.zx, vec2<u32>(1u, 0u)), u_input.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-559f - -294f), _wgslsmith_f_op_f32(-1702f + var_5.a.x) != var_2.d.x)), var_5.c.x), u_input.d);
}

