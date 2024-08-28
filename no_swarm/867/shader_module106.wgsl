struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(34959u, 1u, 4294967295u, 74359u);

var<private> global1: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(0u, 1u, 0u), vec3<u32>(220u, 58196u, 30368u), vec3<u32>(0u, 98010u, 101636u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(43516u, 49360u, 22573u), vec3<u32>(9113u, 0u, 23815u), vec3<u32>(70712u, 4294967295u, 0u), vec3<u32>(0u, 0u, 1u), vec3<u32>(62561u, 4294967295u, 15314u), vec3<u32>(37887u, 58490u, 70800u), vec3<u32>(4294967295u, 4294967295u, 91363u), vec3<u32>(0u, 64687u, 4294967295u), vec3<u32>(20375u, 6540u, 25321u), vec3<u32>(4294967295u, 4294967295u, 56885u), vec3<u32>(34077u, 13533u, 24283u), vec3<u32>(50936u, 79033u, 0u), vec3<u32>(4294967295u, 19444u, 4231u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> vec2<f32> {
    let var_0 = arg_0.e.xw;
    global1 = array<vec3<u32>, 17>();
    var var_1 = Struct_5(Struct_3(abs(_wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(global0.x, 1u), arg_0.a.x)), vec4<bool>(_wgslsmith_f_op_f32(-arg_0.b) <= arg_0.e.x, all(vec3<bool>(arg_0.c.x, true, arg_0.c.x)), false, all(vec4<bool>(false, arg_0.c.x, arg_0.c.x, true)))), _wgslsmith_f_op_vec3_f32(arg_0.e.ywx + arg_0.e.yxx));
    global1 = array<vec3<u32>, 17>();
    let var_2 = var_1.a.b.wyy;
    return _wgslsmith_f_op_vec2_f32(var_1.b.yz + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, 1953f))))))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(Struct_4(u_input.a, 170f, !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), select(_wgslsmith_div_vec4_u32(u_input.a, u_input.a), vec4<u32>(countOneBits(4294967295u), 32891u, 9896u ^ global0.x, u_input.a.x ^ global0.x), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))), arg_1 << (u_input.a.x % 32u)));
    var var_1 = Struct_4(~u_input.a, var_0.x, vec2<bool>(global0.x < (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, global0.x, 114968u, global0.x)) & ~u_input.a.x), all(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), ~vec4<u32>(~abs(6953u), ~(u_input.a.x << (0u % 32u)), ~1u, _wgslsmith_add_u32(global0.x, 1u) | select(u_input.a.x, global0.x, false)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(1000f * -617f), _wgslsmith_div_f32(687f, var_0.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-473f, var_0.x, 719f, 775f))))))));
    global1 = array<vec3<u32>, 17>();
    var var_2 = var_0;
    var_1 = Struct_4(countOneBits(abs(var_1.d)), -637f, vec2<bool>(var_1.c.x, !var_1.c.x), vec4<u32>(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(var_1.a.x, var_1.d.x, 94611u, global0.x), vec4<u32>(85167u, 54453u, u_input.a.x, 1408u)), ~(u_input.a | vec4<u32>(u_input.a.x, 4294967295u, global0.x, u_input.a.x))), abs(_wgslsmith_add_u32(23441u, firstLeadingBit(global0.x))), ~var_1.d.x, max(~var_1.a.x, _wgslsmith_mult_u32(~1u, var_1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(ceil(-1816f)), var_2.x)));
    return ~select(global0.x | (var_1.a.x ^ var_1.d.x), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, var_1.a.x), reverseBits(129617u)), var_1.a.x ^ reverseBits(var_1.a.x)), !(var_1.c.x && var_1.c.x) | var_1.c.x);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    let var_0 = vec4<f32>(-1232f, _wgslsmith_f_op_f32(f32(-1f) * -1370f), _wgslsmith_f_op_f32(min(-681f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(279f, 1570f) + 1f))))), 998f);
    return Struct_3(u_input.a.x, !(!select(arg_0.b, select(arg_0.b, vec4<bool>(false, arg_0.b.x, true, arg_0.b.x), false), all(vec2<bool>(false, arg_0.b.x)))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_5) -> vec2<u32> {
    var var_0 = Struct_5(func_4(arg_2.a, func_2(~(u_input.c ^ u_input.b), u_input.c, vec3<i32>(u_input.b, 2147483647i, -26125i))), arg_2.b);
    let var_1 = vec2<bool>(true, false);
    let var_2 = 22467u | _wgslsmith_mult_u32(~(~u_input.a.x), abs(4294967295u));
    var var_3 = var_1;
    var var_4 = firstLeadingBit(min(u_input.a.ww, u_input.a.yz));
    return u_input.a.xw;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(f32(-1f) * -1615f)))), _wgslsmith_f_op_vec2_f32(func_3(Struct_4(~(vec4<u32>(u_input.a.x, 4294967295u, 30732u, arg_1.x) >> (vec4<u32>(1u, arg_3.x, u_input.a.x, 4373u) % vec4<u32>(32u))), arg_2.b, !vec2<bool>(arg_0.b.x, true), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, arg_0.a, global0.x), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1133f, arg_2.d, -915f, arg_2.d)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-565f, arg_2.d, arg_2.b, arg_2.b) - vec4<f32>(arg_2.d, -1202f, arg_2.d, 1154f)))), arg_2.c.x)).x, _wgslsmith_f_op_f32(f32(-1f) * -204f));
    var var_1 = vec2<bool>(arg_0.b.x, all(vec3<bool>(false, true && !arg_2.a.x, !arg_0.b.x)));
    let var_2 = Struct_2(826f);
    let var_3 = select(arg_0.b, vec4<bool>(!arg_2.a.x, arg_2.a.x, 1i < firstLeadingBit(-u_input.d), true), vec4<bool>(true, var_1.x, !(!arg_2.a.x), firstLeadingBit(u_input.a.x) > max(arg_1.x, 41356u)));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a, -1000f, arg_2.d), vec3<f32>(arg_2.d, 329f, arg_2.d)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, 904f, 1554f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(710f, var_2.a, 1000f) + vec3<f32>(arg_2.b, var_2.a, var_0.x)), vec3<bool>(false, false, arg_0.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x, var_0.x), 384u >= u_input.a.x));
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    let var_0 = !(!select(vec3<bool>(arg_0.a.x, arg_1.a.x, !arg_1.a.x), func_5(func_4(Struct_3(global0.x, vec4<bool>(arg_1.a.x, arg_0.a.x, arg_1.a.x, false)), 1u), ~vec2<u32>(u_input.a.x, 115356u), arg_0, firstTrailingBit(global0.zw)).a.wyy, !func_5(Struct_3(u_input.a.x, vec4<bool>(arg_0.a.x, arg_1.a.x, false, arg_1.a.x)), global0.yw, Struct_1(vec4<bool>(true, false, false, arg_1.a.x), arg_0.b, arg_0.c, arg_1.d), vec2<u32>(4294967295u, u_input.a.x)).a.zwy));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b), arg_1.b, _wgslsmith_div_f32(arg_0.b, arg_1.b), 307f), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(select(-1914f, -370f, true)), _wgslsmith_f_op_f32(exp2(arg_0.b))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1095f, -1000f, -834f, -1540f) + vec4<f32>(495f, 394f, arg_0.b, 305f))))) + vec4<f32>(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(231f * 658f), _wgslsmith_f_op_vec2_f32(func_3(Struct_4(vec4<u32>(94268u, u_input.a.x, 1u, global0.x), arg_0.b, vec2<bool>(arg_0.a.x, arg_1.a.x), vec4<u32>(4294967295u, 32023u, 9057u, global0.x), vec4<f32>(arg_0.d, 593f, arg_1.d, arg_0.d)), u_input.d)).x))), 819f, arg_1.d, _wgslsmith_f_op_f32(trunc(arg_1.d))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 17>();
    let var_0 = vec3<i32>(~(-1i), max(1i, u_input.b & u_input.b), _wgslsmith_clamp_i32(51685i, func_6(func_5(Struct_3(4294967295u, vec4<bool>(false, true, true, true)), firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(vec4<bool>(true, false, false, true), -569f, vec4<i32>(-1643i, u_input.b, u_input.d, -2147483647i), 1333f), func_1(77019u, vec2<f32>(652f, 329f), Struct_5(Struct_3(855u, vec4<bool>(false, true, false, true)), vec3<f32>(1015f, -2193f, -719f)))), Struct_1(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false), _wgslsmith_f_op_f32(ceil(685f)), vec4<i32>(u_input.b, 34556i, u_input.b, 2147483647i), -2260f), select(~vec3<i32>(u_input.d, 1i, 32894i), vec3<i32>(-24895i, -2147483647i, -1i), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), _wgslsmith_div_i32(~(u_input.d >> (global0.x % 32u)), u_input.b)));
    let var_1 = 1f <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1378f))))));
    let var_2 = Struct_5(Struct_3(global0.x << ((1u | (u_input.a.x & global0.x)) % 32u), !(!vec4<bool>(var_1, true, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(271f, -446f, 900f))) * vec3<f32>(-1814f, -1057f, _wgslsmith_f_op_f32(sign(-278f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-726f, -902f, -853f) - vec3<f32>(160f, 844f, 773f)) * vec3<f32>(_wgslsmith_f_op_f32(sign(215f)), _wgslsmith_f_op_f32(min(-587f, -956f)), -1971f))));
    global1 = array<vec3<u32>, 17>();
    let var_3 = var_2.a.a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, var_2.b.x) - -767f));
    var var_5 = ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global0.zw, global0.yz), ~max(global0.xy, global0.ww)) << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3, u_input.a.x, 12468u, 0u), vec4<u32>(var_2.a.a, var_2.a.a, global0.x, global0.x), u_input.a) ^ u_input.a, _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(53807u, u_input.a.x, 7461u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3, 97543u, 49356u, 41787u), u_input.a, vec4<u32>(u_input.a.x, 4294967295u, 5275u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u), u_input.a, u_input.a))) % 32u), var_2.b.x, max(firstTrailingBit(~var_3) << (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 4294967295u, 6563u)), global1[_wgslsmith_index_u32(countOneBits(var_3), 17u)]) % 32u), 95297u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, var_4, -2370f) * vec3<f32>(var_4, 507f, -1000f))), _wgslsmith_f_op_vec3_f32(var_2.b - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(var_2.b, var_2.b)), vec3<f32>(var_2.b.x, -1000f, -532f), var_2.a.b.x && true))))), 1u);
}

