struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: f32 = -383f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f));
    var var_0 = select(true, !all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)), any(vec2<bool>(all(vec4<bool>(true, false, true, true)) == true, true)));
    let var_1 = arg_2;
    var var_2 = arg_2;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1230f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -369f) * -1720f)))));
    return u_input.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    var var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1119f), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)), -989f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(763f)), 728f, arg_0.x)))));
    var_0 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, arg_2, 54831u, arg_2), ~arg_3.a), var_0.a) << (reverseBits(vec4<u32>(~0u, countOneBits(var_1.b.x), var_1.a.x, ~4294967295u)) % vec4<u32>(32u)), vec3<u32>(_wgslsmith_mult_u32(4294967295u, ~var_0.b.x), 49738u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(firstTrailingBit(var_1.b.x), ~0u, ~44712u), ~(5248u | var_0.b.x))));
    let var_3 = arg_0.x;
    return arg_2;
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-1497f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1504f))))));
    global0 = _wgslsmith_f_op_f32(-1f);
    let var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(174f)) - _wgslsmith_f_op_f32(1000f + -1259f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-478f, _wgslsmith_f_op_f32(select(645f, 2740f, false)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~(vec3<i32>(-u_input.a, ~23913i, ~u_input.a) ^ vec3<i32>(-14771i, func_3(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(vec4<u32>(1u, 0u, 1u, 0u), vec3<u32>(0u, 5598u, 66323u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 41108u, 35711u), vec3<u32>(29635u, 68496u, 4294967295u))), 1i)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(~84u, 3326u, ~0u, 1u), abs(vec4<u32>(1u, 1u, 1u, 1u))), Struct_1(vec4<u32>(max(0u, 4148u), ~32963u, 5543u, ~26288u) & (vec4<u32>(1u, 1u, 1u, 1u) ^ firstTrailingBit(vec4<u32>(13130u, 19029u, 1u, 1u))), vec3<u32>(abs(_wgslsmith_clamp_u32(0u, 57262u, 50675u)), 0u, ~132031u)));
    var var_1 = Struct_1(~countOneBits(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(35463u, 0u, 6198u, 4294967295u)), vec4<u32>(var_0, 69828u, var_0, var_0))), vec3<u32>(~var_0, min(~(var_0 & 0u), 18918u), 12848u));
    let var_2 = Struct_1(vec4<u32>(var_1.b.x, var_1.b.x, 31706u, ~var_0), vec3<u32>(var_0, _wgslsmith_sub_u32(~firstTrailingBit(var_1.b.x), var_1.a.x), 28932u));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2187f, _wgslsmith_div_f32(-225f, _wgslsmith_f_op_f32(select(-156f, 1083f, true))))) * -501f)));
    var var_1 = vec4<u32>(624u, _wgslsmith_div_u32(11490u, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_0.a.x, 0u, 1u), arg_1.b, vec3<bool>(true, false, true)), arg_1.a.xzx)), _wgslsmith_div_u32(arg_0.a.x, 1u | ~arg_0.a.x), 8071u);
    var_1 = min(vec4<u32>(max(_wgslsmith_sub_u32(arg_1.a.x, arg_0.a.x), arg_2), abs(1u), arg_0.b.x, arg_1.a.x), ~max(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, 4294967295u, var_1.x, 27256u), arg_0.a), arg_0.a));
    let var_2 = var_0;
    var var_3 = u_input.a;
    return any(vec3<bool>(true, !(-58154i >= func_3(vec4<i32>(36892i, u_input.a, u_input.a, -1i), Struct_1(vec4<u32>(arg_0.b.x, 116235u, 60258u, arg_0.b.x), vec3<u32>(0u, var_1.x, arg_1.b.x)), arg_0)), all(vec3<bool>(any(vec2<bool>(true, false)), true, true))));
}

fn func_1() -> Struct_1 {
    var var_0 = !vec4<bool>(true | func_5(func_2(), Struct_1(vec4<u32>(36113u, 0u, 4294967295u, 0u), vec3<u32>(1u, 2339u, 88064u)), 4294967295u), all(vec4<bool>(true, true, true, true)), any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), false);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1397f, -1298f)), -252f, func_5(func_2(), func_2(), ~60785u))) + -1052f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1693f - -1215f) * _wgslsmith_f_op_f32(1098f - -266f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-1640f + _wgslsmith_f_op_f32(f32(-1f) * -2582f)), var_1, _wgslsmith_f_op_f32(exp2(var_1))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1)), 1304f, var_1) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-1447f)), -1000f, _wgslsmith_div_f32(-500f, -750f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), 1086f, _wgslsmith_f_op_f32(ceil(var_1))));
    let var_3 = func_2();
    let var_4 = func_2();
    return func_2();
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)))))));
    var var_0 = max(firstLeadingBit(4294967295u), 4471u);
    global0 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1386f)), -799f));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-573f + -783f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)))))));
    global0 = arg_0.x;
    return _wgslsmith_add_u32(~arg_2, 4294967295u) & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_2, arg_2), arg_1.a.wz), arg_1.b.yy), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(1540f, _wgslsmith_f_op_f32(trunc(-116f)));
    let var_0 = vec3<u32>(~(~(~_wgslsmith_div_u32(4294967295u, 79894u))), func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1412f, 507f, 413f, -818f))), func_1(), ~_wgslsmith_mod_u32(4294967295u, 1u)) ^ 1u, ~func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(1249f, -2740f, 502f, 712f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2218f, -1318f, -1252f, 1000f))), func_2(), ~12439u));
    var var_1 = -(u_input.a << (74009u % 32u));
    var var_2 = _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(_wgslsmith_div_u32(var_0.x, 12261u), var_0.x, var_0.x, ~48043u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 142597u >> (var_0.x % 32u), var_0.x, var_0.x), abs(select(vec4<u32>(26679u, 27922u, var_0.x, 26798u), vec4<u32>(24228u, var_0.x, 1u, var_0.x), vec4<bool>(true, true, true, true))), vec4<u32>(_wgslsmith_mod_u32(var_0.x, 4294967295u), var_0.x ^ var_0.x, ~11632u, abs(17350u))) << (_wgslsmith_add_vec4_u32(min(vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), vec4<u32>(var_0.x, var_0.x, 1u, 37634u)) << (vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(103657u, 1u, var_0.x, var_0.x), vec4<u32>(4294967295u, 427u, var_0.x, 1u))) % vec4<u32>(32u)));
    global0 = 1620f;
    let var_3 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~10262u, select(max(1u, var_0.x), ~1536u, true), ~1u, ~(~var_2.x)), ~min(firstLeadingBit(vec4<u32>(0u, 1u, 1u, 0u)), select(vec4<u32>(19693u, 1u, var_2.x, var_0.x), vec4<u32>(var_0.x, var_2.x, var_0.x, var_0.x), vec4<bool>(false, false, true, false)))), ~var_2.wxx);
    global0 = _wgslsmith_f_op_f32(sign(105f));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-35839i));
}

