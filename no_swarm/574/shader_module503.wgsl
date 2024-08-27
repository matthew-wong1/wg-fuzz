struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(arg_1.b.xz))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.xx * arg_1.b.yx)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-551f, arg_0.a.b.x, false)), 1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c.b.zy + vec2<f32>(116f, 560f)))));
    let var_1 = arg_2.c;
    let var_2 = arg_0.a;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b.b.yz) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.x, 484f), arg_2.c.b.yy))))));
    var_0 = var_2.a.b.xy;
    return 1i;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> vec4<i32> {
    let var_0 = ~vec2<u32>(u_input.a, firstTrailingBit(arg_1));
    var var_1 = _wgslsmith_clamp_vec3_i32(-(vec3<i32>(min(arg_2.x, arg_0), 1i >> (u_input.a % 32u), func_3(Struct_5(Struct_3(Struct_1(true, vec3<f32>(1076f, 1744f, 1904f), false, u_input.b.x, false), vec3<f32>(-1000f, -645f, -651f), vec2<f32>(-1367f, -1252f), vec4<bool>(true, true, true, true)), Struct_2(vec3<f32>(-1000f, 438f, 1058f), Struct_1(false, vec3<f32>(-1906f, 1513f, -222f), true, arg_0, false), Struct_1(false, vec3<f32>(202f, 736f, -1153f), false, u_input.b.x, true))), Struct_1(false, vec3<f32>(621f, 1000f, -194f), true, arg_0, false), Struct_2(vec3<f32>(-307f, -1006f, -765f), Struct_1(true, vec3<f32>(310f, -412f, -889f), false, -1i, false), Struct_1(true, vec3<f32>(-1000f, 2278f, 685f), false, -2147483647i, false)), false)) ^ vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, arg_2.x))), vec3<i32>(7669i, 0i, -_wgslsmith_clamp_i32(59029i, i32(-1i) * -2147483647i, arg_2.x)), countOneBits(abs(vec3<i32>(-52230i << (0u % 32u), ~u_input.b.x, select(arg_2.x, arg_0, true)))));
    var_1 = vec3<i32>(1i, -12042i | u_input.b.x, -2147483647i);
    let var_2 = Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_1.x | 42943i), _wgslsmith_add_vec2_i32(-vec2<i32>(var_1.x, u_input.b.x), arg_2.zw)) << (~(~_wgslsmith_mult_u32(41218u, u_input.a)) % 32u), countOneBits((select(15425i, -11640i, false) >> (reverseBits(var_0.x) % 32u)) ^ _wgslsmith_add_i32(_wgslsmith_div_i32(-21426i, u_input.b.x), -10469i)), 4294967295u, vec3<i32>(_wgslsmith_sub_i32(~firstTrailingBit(2147483647i), reverseBits(-1i)), arg_2.x, -9346i), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-594f, _wgslsmith_f_op_f32(-194f * -1206f), -717f)), Struct_1(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1896f, 1357f, 544f)), !any(vec2<bool>(true, false)), _wgslsmith_sub_i32(countOneBits(var_1.x), 44672i), true), Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(-152f * -679f), _wgslsmith_f_op_f32(max(1336f, 178f)), _wgslsmith_f_op_f32(f32(-1f) * -601f)), true && any(vec4<bool>(true, true, true, true)), 1i, ~(-2147483647i) == var_1.x)));
    var_1 = firstTrailingBit(-vec3<i32>(~(i32(-1i) * -34513i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, -33317i, var_2.b, -1i), ~arg_2), 1i));
    return vec4<i32>(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, 64821i), select(~(vec2<i32>(-2147483647i, u_input.b.x) ^ vec2<i32>(-75473i, var_2.d.x)), select(u_input.b.zz, vec2<i32>(0i, u_input.b.x), vec2<bool>(true, true)) >> (~vec2<u32>(var_0.x, 1u) % vec2<u32>(32u)), vec2<bool>(all(vec4<bool>(false, var_2.e.b.c, var_2.e.b.e, var_2.e.b.a)), true))), -1i, max(19877i, var_1.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_5 {
    let var_0 = ~min(func_2(_wgslsmith_clamp_i32(-u_input.b.x, _wgslsmith_add_i32(u_input.b.x, 1i), _wgslsmith_clamp_i32(u_input.b.x, 21512i, 1045i)), u_input.a, vec4<i32>(32429i, -2836i, -2147483647i, u_input.b.x) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 46363i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 0i, 1i))), abs(-vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)) | (-vec4<i32>(u_input.b.x, 7490i, u_input.b.x, u_input.b.x) | firstLeadingBit(vec4<i32>(0i, u_input.b.x, u_input.b.x, -27042i))));
    var var_1 = Struct_5(Struct_3(Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, arg_1.x, 307f), vec3<f32>(224f, -785f, arg_0.x)))), (u_input.a == 36397u) | false, _wgslsmith_add_i32(0i, abs(u_input.b.x)), all(vec3<bool>(true, true, true)) && any(vec4<bool>(true, false, true, false))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), -1722f)), 197f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1212f - arg_1.x)))), arg_1, !vec4<bool>(true, any(vec4<bool>(true, false, false, true)), true, all(vec2<bool>(false, true)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(797f, arg_1.x, 419f) * vec3<f32>(arg_0.x, arg_1.x, arg_0.x)))), Struct_1(true, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(round(-103f)), _wgslsmith_f_op_f32(f32(-1f) * -981f)), !any(vec2<bool>(false, true)), 43189i, true), Struct_1(any(vec2<bool>(false, true)) && true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1475f, 123f) - vec3<f32>(arg_1.x, arg_0.x, -935f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 945f, 869f) + vec3<f32>(938f, arg_0.x, arg_1.x))), false, -_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(23021i, var_0.x, var_0.x, -6542i)), !any(vec4<bool>(false, false, true, false)))));
    var_1 = Struct_5(var_1.a, var_1.b);
    let var_2 = any(vec2<bool>(!(!var_1.b.c.a) | any(var_1.a.d), all(var_1.a.d.yxx)));
    return Struct_5(Struct_3(Struct_1(arg_0.x == _wgslsmith_f_op_f32(f32(-1f) * -1133f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_1.b.b.b, var_1.b.a), var_1.a.b)), u_input.a <= u_input.a, u_input.b.x ^ u_input.b.x, all(select(var_1.a.d.yxx, var_1.a.d.wwx, true))), vec3<f32>(-655f, 298f, _wgslsmith_f_op_f32(round(-414f))), arg_1, select(var_1.a.d, !vec4<bool>(var_2, var_2, var_1.a.a.e, true), select(var_1.a.d, var_1.a.d, arg_0.x >= arg_0.x))), var_1.b);
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_5) -> bool {
    let var_0 = u_input.b.x;
    var var_1 = max(vec4<u32>(~max(arg_1, _wgslsmith_add_u32(0u, u_input.a)), 128108u, 67133u, min(~min(1u, u_input.a), 4294967295u)), firstTrailingBit(vec4<u32>(countOneBits(u_input.a), _wgslsmith_sub_u32(1u, 0u), u_input.a, max(51859u, 47351u))) ^ vec4<u32>(~91979u, 39437u, _wgslsmith_div_u32(~29135u, 33066u), countOneBits(arg_1) >> (~u_input.a % 32u)));
    var_1 = abs(select(vec4<u32>(4294967295u, 0u, var_1.x ^ 1u, ~arg_1) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, 21861u) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, u_input.a, u_input.a, 26738u), ~vec4<u32>(0u, arg_1, 57801u, u_input.a)), true));
    var var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.a.x, 902f, arg_2.a.a.b.x, var_2.a.c.x)))))))));
    return all(!arg_2.a.d.xw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(650f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-769f, 1071f, false)), _wgslsmith_div_f32(865f, 1211f)) * 1000f))));
    let var_1 = !vec4<bool>(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-878f, 230f, var_0.x)), u_input.a, func_1(vec2<f32>(1472f, var_0.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, var_0.x))))), (true || (3216u <= u_input.a)) | true, -1394f >= _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_0.x), var_0.x), true);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -965f);
    let var_3 = firstLeadingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.xz << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), abs(u_input.b.yz)) ^ _wgslsmith_div_vec2_i32(max(u_input.b.yx, vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(51697i, u_input.b.x)), u_input.b.yx));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1153f * -658f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -1469f, true))));
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1114f, -878f)), _wgslsmith_f_op_vec2_f32(max(var_0, var_0))).a.c.x))))));
    var var_4 = Struct_5(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0, vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * 148f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(102f, var_0.x), vec2<f32>(var_0.x, var_0.x)) - var_0)))).a, func_1(var_0, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(floor(1084f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), var_0))))).b);
    var_4 = Struct_5(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(572f, -193f)) + var_0), _wgslsmith_f_op_vec2_f32(-var_0)).a, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-507f * _wgslsmith_f_op_f32(-810f * var_4.a.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.b.a.x))), -602f), var_4.b.c, Struct_1(var_4.a.d.x, var_4.b.b.b, !any(var_1.wyx), -2147483647i, false)));
    var_4 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-661f, var_0.x) + vec2<f32>(var_0.x, -1124f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1188f, var_4.a.c.x) * var_0), true))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.b.b.b.x * _wgslsmith_f_op_f32(-var_0.x)))), 298f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, reverseBits(u_input.a) & (u_input.a | 22801u), _wgslsmith_mod_u32(~u_input.a, 0u)) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8796u, 4294967295u, 13065u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), 1u, 4294967295u), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec2_f32(floor(func_1(vec2<f32>(265f, 458f), var_4.b.b.b.zy).a.b.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.a.c))).b.a.zz * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.b.b.b.x, var_4.a.c.x), var_0, var_4.a.d.xz))));
}

