struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>) -> vec4<f32> {
    var var_0 = false || all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let var_1 = true | any(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)));
    var_0 = var_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.zzw))) + vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x), 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.zyy) * arg_0.zxz) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, arg_0.x, -580f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-585f, arg_0.x, arg_0.x)))))))));
    var var_3 = -u_input.b;
    return _wgslsmith_f_op_vec4_f32(arg_0 + arg_0);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = arg_1;
    var_0 = arg_1;
    let var_2 = abs(~76631u);
    let var_3 = Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x - -160f), _wgslsmith_f_op_f32(floor(arg_1.b.x)), _wgslsmith_f_op_f32(abs(-981f)), 771f), arg_1.b)), select(var_0.c, var_0.c, vec4<bool>(!(arg_1.b.x > 819f), true != any(vec4<bool>(true, true, true, false)), true, false)));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = arg_0;
    return !select(vec2<bool>(true, true), !vec2<bool>(func_3(var_0.a, Struct_1(arg_0.a, vec4<f32>(1633f, var_0.b.x, arg_2, -130f), vec4<i32>(arg_0.a, arg_3.x, 1i, -2147483647i)), var_0), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(614f, -634f, -596f, 1130f) * vec4<f32>(1256f, 892f, -892f, -1041f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-995f, 304f, 1052f, -1091f) + vec4<f32>(1196f, -1000f, -1117f, 955f)))))))), -u_input.a);
    var var_1 = var_0;
    let var_2 = -min(~var_1.a, _wgslsmith_add_i32(max(max(u_input.b, -1i), _wgslsmith_mod_i32(-23438i, 41171i)), ~1i));
    return !(!(!select(select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(true, false, false, false)), !vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), !vec4<bool>(true, true, arg_1.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0u;
    var_0 = ~(~(~61578u));
    var var_1 = any(func_4(countOneBits(select(u_input.e, u_input.d.x, true)), func_2(Struct_1(u_input.d.x, _wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(-461f, -107f, -1223f, 1478f), vec3<u32>(0u, 4294967295u, 4294967295u))), max(u_input.a, u_input.a)), vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1690f - -1511f), _wgslsmith_div_f32(921f, 1220f)), _wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.a.x, 0i, -37608i, 2147483647i), vec4<i32>(u_input.e, -1i, -31331i, 0i), false), ~u_input.a))));
    var_0 = ~1u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(655f)) * _wgslsmith_f_op_f32(select(-773f, -740f, false))) * 130f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1209f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1626f - 908f) * _wgslsmith_f_op_f32(-160f + 1420f)), func_4(u_input.d.x, func_4(0i, vec2<bool>(true, false)).xx).x)), true)));
    let var_3 = Struct_1(countOneBits(2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(311f, 637f, 1295f, -909f), _wgslsmith_clamp_vec3_u32(vec3<u32>(30919u, 38019u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(131821u, 5022u, 1u)))).x, -690f, _wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1769f * -917f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1131f, 350f, -828f, -946f)), vec3<u32>(1u, 1u, 1u))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -928f, -571f, 795f) * vec4<f32>(121f, -1142f, -1304f, 630f))))), firstLeadingBit(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.b, u_input.a.x, u_input.d.x) ^ vec4<i32>(u_input.e, 2147483647i, -34959i, u_input.e), vec4<i32>(u_input.a.x, -2147483647i, u_input.d.x, u_input.a.x), vec4<i32>(-9580i, -1i, 2147483647i, u_input.b))));
    var var_4 = select(_wgslsmith_clamp_vec2_i32(firstTrailingBit(countOneBits(vec2<i32>(-2147483647i, -19902i))), _wgslsmith_clamp_vec2_i32(u_input.d.yx, _wgslsmith_mult_vec2_i32(countOneBits(var_3.c.yy), vec2<i32>(var_3.c.x, -2147483647i)), vec2<i32>(-u_input.a.x, var_3.a)), vec2<i32>(u_input.d.x, var_3.c.x)), abs(vec2<i32>(-34418i, ~_wgslsmith_sub_i32(var_3.c.x, 1i))), false);
    var_4 = ~u_input.a.yw;
    let x = u_input.a;
    s_output = StorageBuffer(-1112f, _wgslsmith_div_vec3_u32(abs(~abs(vec3<u32>(1u, 49242u, 28071u))), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_3.b)), var_3.b)));
}

