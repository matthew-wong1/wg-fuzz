struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1126f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-617f, -506f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f)), arg_0.a.x) + _wgslsmith_f_op_vec4_f32(arg_0.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(arg_0.b.x, 233f, arg_0.c.x, 289f)) - vec4<f32>(-565f, arg_0.a.x, arg_0.b.x, arg_0.a.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * -1892f)), arg_0.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(282f, arg_0.b.x)) + -128f))));
    var var_1 = u_input.a.xzy;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), true)), 544f, false)), var_0.x, arg_0.b.x, _wgslsmith_f_op_f32(arg_0.a.x + -712f)));
    var var_3 = arg_0.b.x;
    var_1 = _wgslsmith_mod_vec3_i32(-(u_input.a.zxx & vec3<i32>(u_input.a.x, 2147483647i, 18541i)) & vec3<i32>(39878i, i32(-1i) * -11249i, countOneBits(0i)), vec3<i32>(-max(-20890i, u_input.a.x), min(1i, var_1.x), -19249i << (arg_0.d % 32u)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, -1i) & vec3<i32>(0i, u_input.d, 0i), vec3<i32>(max(var_1.x, var_1.x), u_input.a.x, ~var_1.x), select(u_input.a.zzw, vec3<i32>(u_input.a.x, u_input.d, var_1.x), vec3<bool>(arg_1, false, arg_1))));
    return arg_0.a.xyz;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-973f + 1000f), _wgslsmith_f_op_f32(1625f - -537f), arg_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -222f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, 202f) + vec4<f32>(-1037f, -932f, -410f, 1364f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-693f, arg_2.c.x, 894f) * _wgslsmith_f_op_vec3_f32(exp2(arg_2.c))), 11465u, u_input.c & vec2<u32>(1u, 4294967295u)), true)));
    let var_1 = !arg_2.b;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f - -908f))), 1054f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - -244f)))))));
    var var_2 = ~_wgslsmith_dot_vec3_u32(max(~vec3<u32>(19263u, arg_2.a, arg_0.x), vec3<u32>(8498u, 0u, arg_1)), ~(~vec3<u32>(arg_0.x, arg_2.a, 4294967295u))) & 4294967295u;
    let var_3 = abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 42435u, 4294967295u), vec3<u32>(arg_0.x, 4294967295u, arg_2.a)), ~0u)), 1u));
    return Struct_3(!arg_2.b.xzy, Struct_1(0u ^ _wgslsmith_mod_u32(1u, arg_1), !vec4<bool>(true, arg_2.d, all(vec2<bool>(arg_2.d, true)), var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.c, vec3<f32>(var_0.x, -603f, var_0.x)))), !arg_2.d));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_3) -> bool {
    var var_0 = u_input.a.xy;
    var_0 = reverseBits(abs(-(vec2<i32>(-18955i, u_input.d) ^ ~vec2<i32>(u_input.d, var_0.x))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1654f, arg_2.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1154f + -343f)), -420f, _wgslsmith_f_op_f32(abs(1f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.c.x), 1280f, 1000f, arg_2.b.c.x)))), vec4<f32>(1710f, _wgslsmith_f_op_f32(-func_2(~vec2<u32>(u_input.c.x, 4294967295u), ~2143u, Struct_1(u_input.b, vec4<bool>(arg_1.x, true, arg_2.b.b.x, false), arg_2.b.c, arg_1.x)).b.c.x), arg_2.b.c.x, _wgslsmith_f_op_f32(step(-1720f, _wgslsmith_f_op_f32(ceil(arg_2.b.c.x))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_2.b.c.x, arg_2.b.c.x), vec3<f32>(arg_2.b.c.x, arg_2.b.c.x, 1000f)), arg_2.b.c)))), countOneBits(func_2(~u_input.c, firstLeadingBit(arg_2.b.a), func_2(vec2<u32>(arg_2.b.a, 1u), 65646u, arg_2.b).b).b.a), abs(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.c.x, arg_2.b.a, 75263u), vec4<u32>(34518u, u_input.c.x, 42003u, u_input.e) & vec4<u32>(u_input.c.x, 0u, arg_2.b.a, arg_2.b.a)), arg_2.b.a)));
    let var_2 = var_1.b.x;
    return arg_0.x;
}

fn func_1() -> StorageBuffer {
    let var_0 = select(vec2<bool>(false, true), vec2<bool>(true, true), select(select(vec2<bool>(any(vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(vec3<bool>(true, false, false)), true)), vec2<bool>(true, func_4(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), func_2(u_input.c, 145714u, Struct_1(1u, vec4<bool>(true, false, true, false), vec3<f32>(955f, -941f, 1273f), true)))), true));
    let var_1 = u_input.a.xxx;
    var var_2 = select(~select(vec4<u32>(38717u, u_input.e, u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 94020u, u_input.c.x), vec3<u32>(61209u, 4294967295u, 1u))), firstLeadingBit(vec4<u32>(1u, 67117u, 18976u, u_input.c.x)), func_2(~vec2<u32>(u_input.e, 18847u), countOneBits(u_input.e), func_2(u_input.c, u_input.e, Struct_1(86299u, vec4<bool>(false, false, false, var_0.x), vec3<f32>(191f, 618f, -1000f), true)).b).a.x), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.b), 1u, u_input.b, _wgslsmith_mult_u32(u_input.b, 4294967295u)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(27272u, u_input.e, 16258u, 4294967295u), vec4<u32>(u_input.e, 4294967295u, 26900u, 38470u)), vec4<u32>(u_input.c.x, 30318u, u_input.e, 72073u) | vec4<u32>(4294967295u, 15089u, 74144u, 4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(7787u, 72621u, 55602u, u_input.e), vec4<u32>(0u, u_input.b, u_input.c.x, 9562u))), ~(~(~vec4<u32>(u_input.e, u_input.b, u_input.b, 1u))), vec4<bool>((u_input.c.x >= u_input.b) || any(vec3<bool>(var_0.x, var_0.x, true)), any(vec2<bool>(true, var_0.x)), true, var_0.x)), select(!vec4<bool>(!var_0.x, any(vec2<bool>(false, false)), true, all(vec4<bool>(false, var_0.x, false, var_0.x))), vec4<bool>(!var_0.x, var_0.x, true, any(select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(true, true, var_0.x, var_0.x), var_0.x))), func_2(~(~vec2<u32>(28030u, 10893u)), u_input.b, Struct_1(~25419u, select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(false, true, true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1040f, -1000f, 608f) - vec3<f32>(445f, 1426f, -914f)), true)).b.b));
    var_2 = ~(_wgslsmith_add_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(0u, var_2.x, 4294967295u, 1u))), select(~vec4<u32>(61882u, var_2.x, var_2.x, 1u), select(vec4<u32>(var_2.x, 6734u, 70734u, u_input.c.x), vec4<u32>(4294967295u, 15438u, u_input.e, 35018u), vec4<bool>(true, true, var_0.x, var_0.x)), true)) >> ((reverseBits(~vec4<u32>(var_2.x, 37980u, 94203u, 0u)) >> ((max(vec4<u32>(4294967295u, var_2.x, var_2.x, 1u), vec4<u32>(15694u, u_input.b, 1u, 109229u)) | ~vec4<u32>(u_input.c.x, 1u, var_2.x, u_input.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_3 = firstTrailingBit(u_input.a.ww);
    return StorageBuffer(u_input.e ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(var_2.xw), var_2.yw), ~4294967295u), -1890f, _wgslsmith_sub_u32(reverseBits(u_input.c.x), 12239u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(858f, -149f, 342f, -958f), vec4<f32>(-842f, -1349f, 805f, 132f)))))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_1, var_1), firstLeadingBit(-vec3<i32>(var_3.x, var_3.x, u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

