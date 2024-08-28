struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1522f, -401f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>) -> vec4<f32> {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, 0i), _wgslsmith_mult_i32(u_input.d.x, u_input.d.x), 2147483647i), u_input.d.zzy >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.a), vec3<u32>(19659u, 4294967295u, u_input.a)) % vec3<u32>(32u)), false), (reverseBits(u_input.d.www) | u_input.d.zzz) | (abs(vec3<i32>(224i, 35478i, u_input.d.x)) ^ vec3<i32>(34570i, u_input.b.x, -1i)), u_input.d.xxy));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1849f)), _wgslsmith_f_op_f32(-arg_0.x)));
    var_0 = reverseBits(vec3<i32>(i32(-1i) * -1i, 31451i, -(~1i)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0.x)))))));
    var_0 = -_wgslsmith_div_vec3_i32(abs(vec3<i32>(-u_input.d.x, 1i, -8538i)), -u_input.d.zxy);
    return vec4<f32>(global0.x, _wgslsmith_f_op_f32(-795f * -286f), _wgslsmith_f_op_f32(global0.x * 1277f), global0.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = abs(~(-arg_0.c.zwy));
    var var_1 = arg_0;
    var var_2 = select(~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, 1u)))), abs(min(~abs(vec2<u32>(var_1.b, 1u)), ~vec2<u32>(u_input.a, arg_0.b) << (~vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)))), vec2<bool>(arg_1.x | !arg_1.x, true));
    let var_3 = Struct_1(vec4<f32>(var_1.a.x, var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(var_1.a.x, 255f, global0.x), arg_1.xw)).x), 512f), abs(18823u), select(countOneBits(-u_input.d), var_1.c, all(arg_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.d.x)), _wgslsmith_f_op_f32(step(434f, arg_0.a.x)), -1000f, global0.x)) + var_1.a));
    var_2 = ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(3179u, min(var_3.b, 1u)), (vec2<u32>(31342u, var_1.b) | vec2<u32>(1u, 90500u)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(39341u, arg_0.b)) % vec2<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1219f, arg_0.a.x, arg_0.a.x)))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xy + arg_0.zx) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1087f))))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1348f))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1066f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-global0.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.yy - vec2<f32>(global0.x, arg_0.x)), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), global0.x), vec2<bool>(true, true)))));
    let var_0 = arg_0.yx;
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(429f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * -1000f)))) - _wgslsmith_f_op_vec2_f32(-var_0));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0), var_0);
    return Struct_1(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 818f, 800f, arg_0.x))), vec4<f32>(1187f, 847f, 250f, global0.x))), arg_1, u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(-910f, 533f, var_0.x), vec2<bool>(false, false))))), !vec4<bool>(true, true, true, all(vec4<bool>(false, true, true, false))))), countOneBits(_wgslsmith_add_u32(~arg_1, 67885u) >> (3999u % 32u)), vec4<i32>(-49015i, min(u_input.d.x, u_input.d.x), (arg_2.x | 19471i) >> (~(~2289u) % 32u), reverseBits(~(arg_2.x << (15117u % 32u)))), vec4<f32>(-1628f, -1491f, -148f, _wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(465f, global0.x, 1787f, -1511f), vec4<f32>(var_1.x, global0.x, 1537f, var_1.x)), min(arg_1, 5322u), select(vec4<i32>(2147483647i, -2147483647i, u_input.b.x, arg_2.x), u_input.d, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-422f, -376f, var_1.x, global0.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true))).x));
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    return arg_3.a.ww;
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(133f, global0.x), vec2<f32>(937f, -553f)))))), _wgslsmith_f_op_vec2_f32(func_5(false, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u), select(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.a, 0u), false)), -(~u_input.d.x), func_2(vec3<f32>(-460f, 474f, -196f), u_input.c | 1u, vec4<i32>(2147483647i, u_input.d.x, 0i, 2147483647i)))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-269f, -1188f), vec2<f32>(-1526f, global0.x), vec2<bool>(true, true)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2332f, -1208f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(-224f, -1000f), false)))), true)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(399f, -1196f) + vec2<f32>(global0.x, -1085f)) * vec2<f32>(376f, -374f)) - func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, 981f), vec3<f32>(global0.x, 831f, 1910f))), u_input.a << (2789u % 32u), abs(u_input.d)).a.xy) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * -1207f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec4<f32>(961f, global0.x, global0.x, 518f), 0u, vec4<i32>(-32674i, 2147483647i, u_input.b.x, -9923i), vec4<f32>(global0.x, global0.x, -639f, global0.x)), vec4<bool>(true, false, false, true))).x))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2166f, 371f) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1025f, global0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(485f, 912f))))));
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(select(global0.x, global0.x, true))))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 24486u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.c, 31787u, 1u)) << (_wgslsmith_div_u32(u_input.a | 36266u, u_input.c ^ u_input.a) % 32u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 25290u), vec3<u32>(31690u, u_input.a, 20365u)), vec3<u32>(24931u, u_input.c, 4294967295u) >> (vec3<u32>(25050u, u_input.c, 1u) % vec3<u32>(32u)))), select(firstLeadingBit(vec4<i32>(-1i, min(u_input.b.x, u_input.b.x), ~(-1i), firstTrailingBit(u_input.b.x))), vec4<i32>(-5717i, firstTrailingBit(func_2(vec3<f32>(379f, 247f, global0.x), 4294967295u, u_input.d).c.x), u_input.d.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(28126u, 1u), vec2<u32>(u_input.a, u_input.a)) % 32u), -1i), true));
    let var_1 = -_wgslsmith_div_vec2_i32(-_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_0.c.x), u_input.b), -var_0.c.yx, ~u_input.d.xy), var_0.c.ww);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u & _wgslsmith_mult_u32(64029u, u_input.a), _wgslsmith_mult_u32(52864u, countOneBits(4294967295u)), 1u, 29889u & var_0.b), max(countOneBits(countOneBits(vec4<u32>(1u, u_input.c, 27608u, var_0.b))), firstLeadingBit(vec4<u32>(var_0.b, 95760u, 2072u, 0u)) & ~vec4<u32>(4294967295u, u_input.a, 0u, 4294967295u))), abs(~vec4<u32>(u_input.c, countOneBits(u_input.c), countOneBits(var_0.b), 36261u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1599f, global0.x, 485f, 220f) * vec4<f32>(global0.x, global0.x, 1000f, -306f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, 2058f, global0.x, -1205f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-627f, -380f, global0.x, 869f))), vec4<bool>(false, false, true, true))), true)))), _wgslsmith_mult_u32(func_1(), ~firstLeadingBit(u_input.c) | firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 14882u))), vec4<i32>(~(-reverseBits(-22604i)), reverseBits(-(i32(-1i) * -12546i)), -2147483647i, abs(u_input.b.x) ^ abs(u_input.d.x)), _wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(649f, 237f, 1000f, -699f) + vec4<f32>(global0.x, -222f, global0.x, global0.x))), _wgslsmith_mod_u32(u_input.c, ~0u), u_input.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-110f, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(global0.x, -1628f, global0.x), vec2<bool>(true, false))))), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.d.wx), min(u_input.b.x, ~(~reverseBits(var_0.c.x))), _wgslsmith_f_op_f32(trunc(-2483f)), var_0.a.yw);
}

