struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>) -> vec4<i32> {
    var var_0 = vec2<i32>(-reverseBits(-(u_input.d & -2147483647i)), _wgslsmith_clamp_i32(65162i, abs(firstTrailingBit(_wgslsmith_sub_i32(-56199i, u_input.b.x))), 0i));
    let var_1 = var_0.x;
    let var_2 = !(!(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true))));
    let var_3 = arg_0;
    let var_4 = _wgslsmith_div_vec3_u32(~vec3<u32>(~u_input.a.x, select(4294967295u, 78823u, var_2.x), u_input.a.x), min(min(~u_input.a.xyy, u_input.a.xzy), firstTrailingBit(vec3<u32>(u_input.a.x, 0u, 0u)))) & _wgslsmith_mod_vec3_u32(vec3<u32>(~(~4294967295u), countOneBits(select(u_input.a.x, 0u, true)), _wgslsmith_mult_u32(u_input.a.x, 1u) | 4294967295u), reverseBits(~max(vec3<u32>(57442u, 22832u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))));
    return abs(u_input.b);
}

fn func_2() -> Struct_1 {
    let var_0 = -max(-(vec4<i32>(u_input.c, u_input.b.x, u_input.d, 0i) | func_3(Struct_1(535f, vec2<f32>(-597f, -227f)), vec4<f32>(-224f, 646f, -1960f, 688f), vec3<f32>(-835f, 865f, 681f))), u_input.b);
    var var_1 = any(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, false, false)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), u_input.c < u_input.d), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), all(vec2<bool>(false, false)) || true), false | ((785u & u_input.a.x) == ~u_input.a.x)));
    let var_2 = -1067f;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_2), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(307f, var_2), vec2<f32>(-280f, 440f)))))));
    var_1 = all(!vec2<bool>(u_input.c > u_input.d, true)) || !(max(select(2147483647i, -2404i, true), var_0.x) != ((u_input.d | var_0.x) | min(-5797i, var_0.x)));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(926f, arg_0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - func_2().b.x)), _wgslsmith_f_op_f32(abs(351f)), 304f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1446f, arg_2.a, arg_1, arg_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.a, arg_0.b.x, 1286f, arg_2.b.x)))))));
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1121f)))));
    let var_2 = firstTrailingBit(vec4<i32>(u_input.d, u_input.c, u_input.d, u_input.c));
    var var_3 = -240f;
    return _wgslsmith_f_op_f32(-arg_2.b.x);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = ~(~u_input.a.yz);
    return Struct_1(-1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.b, arg_1.b)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -994f), true)) * vec2<f32>(arg_2, _wgslsmith_f_op_f32(1000f * arg_2))));
}

fn func_1() -> Struct_1 {
    var var_0 = firstLeadingBit(u_input.c);
    var_0 = u_input.c;
    var var_1 = u_input.c;
    let var_2 = ~(~(~u_input.a.x));
    var var_3 = func_5(u_input.b.x, Struct_1(_wgslsmith_f_op_f32(func_4(func_2(), 1f, Struct_1(_wgslsmith_f_op_f32(floor(-147f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-749f, -607f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1325f, -634f) * vec2<f32>(-611f, 236f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1239f, 1537f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(465f, 459f) + _wgslsmith_f_op_f32(f32(-1f) * -871f))))));
    return Struct_1(_wgslsmith_f_op_f32(select(var_3.b.x, _wgslsmith_f_op_f32(-1f), true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-106f, var_3.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, -1124f))))));
}

fn func_6(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1373f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.b.x)))), vec2<f32>(func_1().a, _wgslsmith_f_op_f32(floor(func_2().b.x))));
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.wz, vec2<u32>(1u, u_input.a.x) >> (~(~u_input.a.xz) % vec2<u32>(32u))), 74791u);
    let var_1 = true;
    var var_2 = ~(~vec4<u32>(~var_0.x << (0u % 32u), 43283u, 4294967295u, var_0.x));
    var_2 = _wgslsmith_sub_vec4_u32(u_input.a, (~u_input.a << (_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 88331u, u_input.a.x, var_0.x), _wgslsmith_sub_vec4_u32(u_input.a, u_input.a)) % vec4<u32>(32u))) >> (u_input.a % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.b.x, arg_1.a) * vec3<f32>(arg_1.b.x, -1172f, 261f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, -405f, arg_1.b.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, -1341f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(369f, arg_1.b.x, arg_1.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -176f, arg_1.a) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.x, 828f, arg_1.b.x), vec3<f32>(-493f, arg_1.b.x, -523f))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x, _wgslsmith_f_op_f32(arg_1.b.x - arg_1.a))))));
    return Struct_1(_wgslsmith_f_op_f32(-var_3.x), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.a.wyz);
    var_0 = abs(~(u_input.a.zwx >> (u_input.a.wyx % vec3<u32>(32u))));
    var_0 = vec3<u32>(u_input.a.x, u_input.a.x, var_0.x);
    var var_1 = -1959f;
    var var_2 = func_7(vec2<bool>(true, true), func_6(-(~select(-2147483647i, 14156i, false)), _wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(0u, 4294967295u)), u_input.a.wy), u_input.b, func_1()));
    var_1 = func_2().b.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit((u_input.a.x << (u_input.a.x % 32u)) ^ u_input.a.x), _wgslsmith_div_i32(u_input.b.x, -reverseBits(0i)), vec2<u32>(_wgslsmith_clamp_u32(select(1u, 0u << (0u % 32u), true), reverseBits(select(92139u, 1u, true)), var_0.x >> (min(u_input.a.x, 4294967295u) % 32u)), u_input.a.x));
}

