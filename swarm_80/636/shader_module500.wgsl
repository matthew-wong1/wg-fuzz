struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(u_input.a, arg_2.c)) ^ (_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b.c, -1i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_1.a.c, arg_1.b.c)) | vec2<i32>(arg_2.c, -33218i)), -((vec2<i32>(-1i, arg_1.b.c) | vec2<i32>(-8988i, -24432i)) & (vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(74529u, 12857u) % vec2<u32>(32u))))), arg_1.b.c, 90535i);
    return 39702u;
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = ~vec4<u32>(~abs(23178u), ~(~_wgslsmith_add_u32(21155u, 1u)), firstTrailingBit(~reverseBits(4294967295u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1573f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1621f)))) < -467f, i32(-1i) * -countOneBits(i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1983f, -624f)), abs(~u_input.a) <= (i32(-1i) * -u_input.a));
    var var_2 = _wgslsmith_div_i32(17587i, 21070i) & (var_1.c | 1i);
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(269f, _wgslsmith_f_op_f32(select(1740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a))), any(vec3<bool>(true, false, true)))))));
    var var_4 = min(firstTrailingBit(abs(~(~vec4<u32>(19794u, var_0.x, 30674u, var_0.x)))), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_0.x, var_0.x, 4294967295u, 0u) >> (vec4<u32>(18223u, var_0.x, var_0.x, 20471u) % vec4<u32>(32u))), ~(vec4<u32>(0u, 0u, 35925u, 101540u) ^ vec4<u32>(30660u, var_0.x, 0u, var_0.x))));
    return var_1.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-764f * 1125f) + _wgslsmith_f_op_f32(f32(-1f) * -1056f)))), 141f, _wgslsmith_f_op_f32(select(-138f, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true))), true))), 0u, Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(843f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true, max(u_input.a, _wgslsmith_mult_i32(1627i, u_input.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2127f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(545f, 379f)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(386f + -1107f) - -488f), ~3494u == _wgslsmith_dot_vec2_u32(arg_0.wz, arg_0.xx), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1516f, -926f), vec2<f32>(-611f, -589f)))), true)), Struct_2(Struct_1(510f, _wgslsmith_div_u32(1u, 30644u) != _wgslsmith_dot_vec3_u32(arg_0.xwy, vec3<u32>(78352u, arg_0.x, 6092u)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(11401i, 26123i), vec2<bool>(false, false))), vec2<f32>(_wgslsmith_f_op_f32(step(3085f, 1515f)), -1119f), false), Struct_1(_wgslsmith_f_op_f32(min(333f, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, false, true))))), true, -1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-691f, -973f)))), false)));
    let var_1 = var_0;
    let var_2 = Struct_2(var_1.c.a, Struct_1(_wgslsmith_f_op_f32(max(-863f, _wgslsmith_f_op_f32(func_3(select(vec4<bool>(false, true, var_1.c.a.b, true), vec4<bool>(true, var_1.d.b.e, var_1.c.b.e, var_1.d.b.b), vec4<bool>(var_1.d.b.b, false, true, var_1.d.a.b)))))), false, var_0.c.a.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -618f)), var_0.c.b.b));
    return Struct_1(_wgslsmith_f_op_f32(abs(var_1.c.b.a)), var_2.b.b, var_2.a.c, _wgslsmith_f_op_vec2_f32(-var_0.a.xz), var_1.c.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_2(vec4<u32>(0u, ~1u, reverseBits(11456u), func_1(vec4<bool>(false, false, true, true), Struct_2(Struct_1(-293f, false, u_input.a, vec2<f32>(377f, 2318f), false), Struct_1(-351f, true, -12024i, vec2<f32>(438f, 1885f), false)), Struct_1(-333f, false, 2147483647i, vec2<f32>(-568f, 543f), false))) | abs(reverseBits(vec4<u32>(4294967295u, 1u, 18612u, 129462u))), _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(15421u), 4294967295u, ~1u), firstLeadingBit(vec3<u32>(13260u, 32939u, 2758u)))), func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, min(39844u, 4294967295u), 0u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 35867u, 86382u) >> (vec3<u32>(0u, 1u, 0u) % vec3<u32>(32u)), abs(firstTrailingBit(vec3<u32>(32307u, 0u, 0u))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(-25433i, -1i));
}

