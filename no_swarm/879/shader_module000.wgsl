struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(416f, -582f, 700f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<bool>, arg_3: f32) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-839f, arg_3, -165f) - vec3<f32>(-172f, -393f, -1306f))), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_3)), -166f, _wgslsmith_f_op_f32(floor(arg_3))), false))))));
    global0 = vec3<f32>(448f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(-arg_3));
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3)))), -1100f, -824f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_3, -574f) - vec3<f32>(340f, global0.x, -1275f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(235f - global0.x), _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-arg_3)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 2240f, -180f) - vec3<f32>(arg_3, 576f, global0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(424f, arg_3, 120f))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1090f, _wgslsmith_f_op_f32(f32(-1f) * -724f), 781f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-994f, arg_3, 597f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, arg_3)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1270f - 211f)), global0.x)));
    var var_0 = Struct_3(Struct_2(Struct_1(u_input.c.x, vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, 691f)), _wgslsmith_f_op_f32(f32(-1f) * -302f)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4680u, 121005u), vec2<u32>(u_input.b, arg_0)), _wgslsmith_sub_u32(u_input.b, u_input.b), ~1u), all(select(vec2<bool>(false, arg_2.x), vec2<bool>(false, false), arg_2.xz))), min(~(~vec2<u32>(4294967295u, 37819u)), ~vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(0u, u_input.b)), Struct_1(reverseBits(firstLeadingBit(1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-402f, global0.x)), global0.zx), ~reverseBits(vec3<u32>(0u, 4294967295u, u_input.b)), true)), select(arg_2, arg_2, arg_2.x && true), _wgslsmith_f_op_vec2_f32(ceil(global0.yz)));
    return vec2<i32>(abs(-13917i), var_0.a.c.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1(arg_0.a.a.a, global0.yy, ~arg_0.a.c.c | ~(~arg_3.c), !(-914f != arg_0.a.c.b.x));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(416f, 513f, -182f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1480f, arg_0.a.c.b.x, 1515f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, 321f, arg_3.b.x) - vec3<f32>(-428f, 949f, arg_3.b.x)), !vec3<bool>(false, false, var_0.d))), arg_0.b.zwx)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, -192f, -1177f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.c.x, global0.x, 178f))))), true)));
    let var_1 = 1000f;
    let var_2 = arg_0.a.c;
    let var_3 = true;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(207f, 1330f)) + var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - arg_0.a.a.b.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(395f)), _wgslsmith_f_op_f32(sign(307f)), _wgslsmith_f_op_f32(var_2.b.x - var_2.b.x)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.c.x, arg_0.c.x, -1581f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.b.x, 331f, arg_3.b.x)))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<u32>) -> bool {
    let var_0 = arg_2.a.a;
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, arg_2.a.a.b.x, 563f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-155f, -512f, arg_2.c.x) * vec3<f32>(global0.x, 908f, arg_2.a.c.b.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(arg_2.a, arg_2.b, vec2<f32>(-332f, arg_2.c.x)), vec4<i32>(-1i, 683i, 1i, -75225i) << (vec4<u32>(24446u, 4294967295u, 425u, arg_2.a.b.x) % vec4<u32>(32u)), func_3(1u, arg_2.a.c.a, vec4<bool>(true, true, false, false), -450f), Struct_1(arg_1, vec2<f32>(-1000f, 1581f), var_0.c, arg_2.a.c.d))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2085f, arg_2.c.x, 988f), vec3<f32>(global0.x, -458f, -1434f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-274f, global0.x, arg_2.a.a.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.c.b.x, global0.x, 740f)), vec3<f32>(global0.x, arg_2.a.a.b.x, -682f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1713f, -284f, -958f))))), arg_2.b.yyw));
    var var_1 = Struct_2(arg_2.a.a, vec2<u32>(firstTrailingBit(arg_3.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_3, arg_2.a.a.c), arg_3), ~(~4294967295u))), Struct_1(38841i, vec2<f32>(-1823f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))), arg_2.a.c.c, false));
    var var_2 = _wgslsmith_mod_vec3_u32(var_0.c, vec3<u32>(0u, var_0.c.x, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, arg_3.x, arg_3.x), _wgslsmith_mod_vec3_u32(var_1.c.c, var_0.c)))));
    let var_3 = abs(~u_input.b);
    return _wgslsmith_f_op_f32(select(var_1.c.b.x, _wgslsmith_f_op_f32(-global0.x), any(vec2<bool>(!var_1.c.d, !arg_2.a.a.d)))) > 199f;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<f32>) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-676f, 741f, 1236f)), _wgslsmith_div_vec3_f32(vec3<f32>(1478f, -1620f, -374f), vec3<f32>(arg_1.c.b.x, global0.x, arg_2.a.a.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(267f, 1163f, arg_3.x) - vec3<f32>(663f, -1852f, -200f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(661f, 825f, 1122f) * vec3<f32>(arg_2.c.x, arg_2.a.c.b.x, arg_2.a.c.b.x))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.c.x, _wgslsmith_f_op_f32(-arg_3.x), arg_2.c.x))))));
    let var_0 = Struct_3(arg_1, select(arg_2.b, select(select(select(vec4<bool>(arg_2.a.c.d, arg_1.c.d, arg_2.b.x, arg_2.b.x), vec4<bool>(false, arg_2.b.x, arg_1.c.d, arg_1.a.d), arg_2.b.x), !arg_2.b, true), arg_2.b, !arg_1.c.d), !vec4<bool>(all(vec4<bool>(false, arg_1.a.d, true, arg_2.a.c.d)), !arg_1.c.d, arg_1.c.d || arg_2.b.x, func_2(vec4<i32>(16439i, arg_0.x, arg_1.c.a, arg_0.x), arg_1.c.a, arg_2, vec3<u32>(arg_2.a.a.c.x, arg_2.a.a.c.x, arg_1.b.x)))), vec2<f32>(arg_2.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_1.a.b.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(542f, 821f, 460f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-625f, arg_2.c.x, arg_3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.b.x, arg_1.a.b.x, 159f)))))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-746f, arg_3.x, arg_1.c.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(var_0, arg_0, vec2<i32>(u_input.c.x, arg_2.a.a.a), arg_1.c)), vec3<f32>(1674f, -483f, -1683f), !arg_2.b.xyy))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1574f, arg_1.c.b.x, 400f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1004f, 978f, 344f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1169f, arg_2.a.a.b.x, -1682f)))))));
    return _wgslsmith_mult_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 33153u, var_0.a.b.x, 7734u), vec4<u32>(u_input.b, var_0.a.a.c.x, arg_1.a.c.x, arg_2.a.a.c.x)) ^ ~vec4<u32>(0u, u_input.b, arg_1.b.x, var_0.a.a.c.x), vec4<u32>(_wgslsmith_mult_u32(1u, 18889u), select(arg_2.a.b.x, 4147u, false), 27396u, arg_2.a.c.c.x), vec4<bool>(true, !var_0.b.x, true, arg_2.a.c.d)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, var_0.a.c.c.x, var_0.a.a.c.x) >> (~vec4<u32>(arg_1.a.c.x, 1u, u_input.b, arg_2.a.a.c.x) % vec4<u32>(32u)), ~abs(vec4<u32>(u_input.b, u_input.b, 40666u, var_0.a.c.c.x)), countOneBits(vec4<u32>(var_0.a.c.c.x, 13259u, arg_1.a.c.x, 4294967295u))), vec4<u32>(_wgslsmith_add_u32(abs(arg_2.a.a.c.x) << (~u_input.b % 32u), var_0.a.b.x), abs(arg_1.b.x | 1u), min(_wgslsmith_sub_u32(arg_2.a.c.c.x, arg_2.a.c.c.x), firstTrailingBit(arg_1.a.c.x)) >> (u_input.b % 32u), 4294967295u));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> bool {
    let var_0 = Struct_2(Struct_1(-1i >> (arg_0.x % 32u), _wgslsmith_div_vec2_f32(global0.xy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3))), ~func_1(vec4<i32>(-16740i, u_input.c.x, -1i, u_input.a.x), Struct_2(Struct_1(arg_2, vec2<f32>(arg_3, -1000f), vec3<u32>(arg_0.x, u_input.b, arg_0.x), true), vec2<u32>(4294967295u, 112365u), Struct_1(arg_2, vec2<f32>(1891f, 200f), vec3<u32>(u_input.b, u_input.b, u_input.b), true)), Struct_3(Struct_2(Struct_1(arg_2, global0.yz, arg_0.xxz, false), vec2<u32>(13865u, 47994u), Struct_1(-24149i, vec2<f32>(arg_3, arg_3), vec3<u32>(arg_0.x, 11101u, 10851u), false)), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), global0.zx), _wgslsmith_f_op_vec2_f32(global0.zz * vec2<f32>(1026f, -1000f))).xyw, true), vec2<u32>(max(max(~4294967295u, ~u_input.b), reverseBits(~u_input.b)), 60764u), Struct_1(countOneBits(62348i), vec2<f32>(551f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3)))), vec3<u32>(~firstLeadingBit(arg_0.x), _wgslsmith_sub_u32(29592u, u_input.b) << (~u_input.b % 32u), arg_0.x), true));
    var var_1 = Struct_1(arg_2, var_0.c.b, _wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(var_0.c.c | arg_0.ywx, _wgslsmith_add_vec3_u32(arg_0.zxx, vec3<u32>(51615u, 8454u, u_input.b))), ~(~(~var_0.c.c)), arg_0.xxy & ~_wgslsmith_mod_vec3_u32(vec3<u32>(33115u, arg_0.x, 14915u), arg_0.zyz)), select(true, select(true, true, any(vec3<bool>(true, var_0.a.d, false))) | true, true));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1667f, var_1.b.x, var_1.b.x) - vec3<f32>(-807f, arg_3, global0.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_0.a.b.x, 1295f), vec3<f32>(var_0.a.b.x, global0.x, var_1.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-367f, var_0.c.b.x, global0.x)), false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 194f, var_0.c.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, var_0.a.b.x, arg_3) * vec3<f32>(arg_3, arg_3, 1505f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-123f, var_0.a.b.x, var_0.c.b.x))))));
    var var_2 = Struct_2(Struct_1(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(36995i, 1i, arg_2, var_1.a), vec4<i32>(var_1.a, var_1.a, -18037i, var_0.c.a)) & 29842i), var_0.c.b, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.c.x, ~var_1.c.x, max(42524u, 65462u)), abs(var_0.a.c) >> (max(arg_0.xyz, vec3<u32>(var_0.a.c.x, 35817u, 66207u)) % vec3<u32>(32u))), true), ~var_1.c.xx, var_0.a);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1054f * var_2.a.b.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -1198f)))), global0.x, 588f);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))) < -1000f), !(!vec3<bool>(true, false, any(vec3<bool>(false, false, false)))), ((u_input.b > 0u) || func_5(func_1(vec4<i32>(0i, u_input.a.x, -25547i, 0i), Struct_2(Struct_1(u_input.a.x, vec2<f32>(global0.x, 324f), vec3<u32>(u_input.b, u_input.b, 4294967295u), false), vec2<u32>(u_input.b, u_input.b), Struct_1(-39394i, vec2<f32>(global0.x, global0.x), vec3<u32>(u_input.b, 4294967295u, u_input.b), false)), Struct_3(Struct_2(Struct_1(-14215i, vec2<f32>(global0.x, -1884f), vec3<u32>(0u, u_input.b, 4294967295u), false), vec2<u32>(u_input.b, 7974u), Struct_1(u_input.c.x, global0.yz, vec3<u32>(u_input.b, u_input.b, 0u), false)), vec4<bool>(true, false, false, false), global0.zx), vec2<f32>(global0.x, -1268f)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), -u_input.c.x, _wgslsmith_f_op_f32(global0.x - global0.x))) == true);
    var var_1 = Struct_1(abs(u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(Struct_2(Struct_1(-21681i, vec2<f32>(global0.x, 588f), vec3<u32>(u_input.b, 1u, u_input.b), true), vec2<u32>(u_input.b, u_input.b), Struct_1(u_input.a.x, global0.xy, vec3<u32>(u_input.b, u_input.b, u_input.b), true)), vec4<bool>(false, var_0.x, var_0.x, true), vec2<f32>(-1088f, global0.x)), -vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, -10205i), -u_input.a.yy, Struct_1(u_input.a.x, vec2<f32>(global0.x, global0.x), vec3<u32>(u_input.b, u_input.b, u_input.b), false))).x)), -739f), vec3<u32>(u_input.b, ~31350u, _wgslsmith_sub_u32(countOneBits(u_input.b), 0u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(25713u, u_input.b, 28315u, 1u)), vec4<u32>(u_input.b, 32064u, u_input.b, u_input.b)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 108648u), vec2<u32>(u_input.b, 1u))) == u_input.b);
    var var_2 = 1u;
    let var_3 = Struct_2(Struct_1(1184i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b, vec2<f32>(-1812f, var_1.b.x)))), max((var_1.c | vec3<u32>(u_input.b, 4294967295u, 4294967295u)) >> (max(vec3<u32>(1u, var_1.c.x, 69863u), var_1.c) % vec3<u32>(32u)), min(var_1.c, var_1.c)), var_0.x), ~vec2<u32>(_wgslsmith_sub_u32(var_1.c.x, var_1.c.x) << (_wgslsmith_mult_u32(58841u, var_1.c.x) % 32u), var_1.c.x), Struct_1(u_input.a.x, var_1.b, min(var_1.c, var_1.c), false));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-var_1.b.x), -845f) - vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), var_3.c.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(var_1.c.x, var_3.a.c.x, min(_wgslsmith_mult_u32(0u, _wgslsmith_add_u32(1u, 66885u)), var_1.c.x)), countOneBits(~1u), _wgslsmith_f_op_f32(-var_3.c.b.x), _wgslsmith_f_op_f32(f32(-1f) * -103f));
}

