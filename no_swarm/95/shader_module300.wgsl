struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    return _wgslsmith_clamp_i32(arg_1.a.x, ~(-64330i), 143i);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> i32 {
    var var_0 = all(vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), all(vec2<bool>(true, true))));
    var_0 = true;
    var_0 = any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), arg_0 > arg_3)) || true;
    var var_1 = vec2<bool>(true, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.e.x, u_input.b), 13269u) != u_input.b);
    var var_2 = Struct_1(firstLeadingBit(firstTrailingBit(vec4<i32>(arg_2, arg_0, arg_0, arg_0) << (u_input.a % vec4<u32>(32u))) << (vec4<u32>(~29788u, 21100u, 67878u | u_input.b, _wgslsmith_mod_u32(4294967295u, u_input.a.x)) % vec4<u32>(32u))));
    return _wgslsmith_sub_i32(firstLeadingBit(i32(-1i) * -19521i), func_3(Struct_2(~(~21198u), arg_1.b, ~(arg_1.a & u_input.d)), Struct_1(-var_2.a)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: i32, arg_3: u32) -> vec3<u32> {
    let var_0 = ~arg_3;
    var var_1 = arg_0;
    var_1 = _wgslsmith_f_op_vec3_f32(round(arg_0));
    var var_2 = vec3<i32>(arg_1.x, -9075i, -46910i) >> (u_input.a.xwy % vec3<u32>(32u));
    let var_3 = vec4<u32>(u_input.d, firstTrailingBit(_wgslsmith_mult_u32(var_0, arg_3)) >> (arg_3 % 32u), ~0u, 14207u);
    return min(vec3<u32>((~var_3.x << (_wgslsmith_add_u32(arg_3, 0u) % 32u)) << (0u % 32u), ~(~var_3.x), ~(~(~u_input.a.x))), firstTrailingBit(~(~u_input.a.wyy ^ vec3<u32>(u_input.a.x, u_input.d, var_3.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_clamp_vec3_u32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-838f, -1000f, 1227f) - vec3<f32>(-136f, 1443f, 1000f)) + vec3<f32>(1f, 1f, 1f)), vec3<i32>(func_2(0i, Struct_2(u_input.b, -654f, 1u), 21829i, 25944i), -31586i, 1i), 1i, _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(44528u, 1u))) << (min(vec3<u32>(0u, 6818u, u_input.e.x) & abs(u_input.a.ywx), ~u_input.a.yyx) % vec3<u32>(32u)), (_wgslsmith_sub_vec3_u32(func_4(vec3<f32>(-433f, 613f, 767f), vec3<i32>(-3239i, 0i, -1i), 2147483647i, 0u), vec3<u32>(3980u, u_input.a.x, u_input.e.x)) >> (u_input.a.xxz % vec3<u32>(32u))) ^ vec3<u32>(0u | u_input.e.x, _wgslsmith_clamp_u32(1u, u_input.c, 57577u), ~_wgslsmith_sub_u32(4294967295u, u_input.d)), vec3<u32>(countOneBits(_wgslsmith_add_u32(u_input.a.x, 11195u) ^ 1u), u_input.c, ~(~0u)));
    let var_2 = 2147483647i;
    let var_3 = Struct_2(select(~(~1u), firstLeadingBit(~var_1.x), true), -180f, u_input.e.x);
    let var_4 = true;
    return Struct_1(vec4<i32>(~var_2, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2, -64222i), ~vec2<i32>(var_2, -1i)), var_2, 62895i));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_3(arg_1.a);
    let var_1 = select(false, !(!all(vec4<bool>(false, true, true, true))), select(_wgslsmith_f_op_f32(trunc(-628f)) >= -1241f, true, true)) && all(vec4<bool>(true, true, !any(vec3<bool>(false, true, true)), true != select(false, true, false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(342f)), _wgslsmith_f_op_f32(max(1204f, -1209f)), _wgslsmith_f_op_f32(sign(-269f)), 1000f)) + vec4<f32>(_wgslsmith_div_f32(-276f, _wgslsmith_f_op_f32(select(-168f, 342f, false))), _wgslsmith_f_op_f32(f32(-1f) * -1384f), -1743f, -812f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -297f), -502f, 1000f, -2221f), _wgslsmith_f_op_vec4_f32(vec4<f32>(886f, -565f, 287f, 1588f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1576f, 449f, 623f, -703f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(128f, 1173f, 226f, -849f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1961f, 422f, -2105f, 615f) * vec4<f32>(136f, 1550f, 189f, -496f)), var_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, -245f, -1000f, -749f))))));
    let var_3 = ~vec3<u32>(u_input.a.x >> (u_input.a.x % 32u), countOneBits(46037u), select(~(u_input.a.x >> (6039u % 32u)), 0u, u_input.a.x <= func_4(vec3<f32>(1000f, 1282f, var_2.x), arg_0.a.zwz, var_0.a, 4294967295u).x));
    let var_4 = var_1;
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x & (u_input.e.x >> (9100u % 32u)), 1u, _wgslsmith_mod_u32(u_input.b, ~4294967295u)), vec3<u32>(var_3.x, u_input.c, _wgslsmith_div_u32(var_3.x, ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>((((u_input.b << (u_input.a.x % 32u)) | 89u) >> (u_input.a.x % 32u)) != func_5(func_1(), Struct_3(func_3(Struct_2(1u, 406f, u_input.e.x), Struct_1(vec4<i32>(0i, 1i, 19285i, 38656i))))), any(vec4<bool>(true, false, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true)), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1162f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(595f)), _wgslsmith_f_op_f32(-2167f - -397f)), _wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * -2175f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2296f, 641f, 439f, 800f) - vec4<f32>(-716f, 1000f, -169f, -174f)))))))));
    let var_2 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) - _wgslsmith_f_op_f32(-var_1.x)));
    let var_3 = vec2<i32>(func_3(Struct_2(u_input.a.x, 2670f, u_input.e.x), func_1()), -2147483647i) | vec2<i32>(abs(i32(-1i) * -2147483647i), -1i);
    let var_4 = -(reverseBits(vec3<i32>(~2147483647i, ~var_3.x, var_3.x)) | firstLeadingBit(reverseBits(~vec3<i32>(1i, 0i, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(~reverseBits(u_input.a), _wgslsmith_mod_vec4_u32(u_input.a, abs(vec4<u32>(18859u, 1u, u_input.c, u_input.e.x)))), _wgslsmith_f_op_vec2_f32(max(var_1.yz, var_1.xw)), ~_wgslsmith_add_u32(~u_input.b, u_input.c), var_1.xyx, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1622f + _wgslsmith_f_op_f32(trunc(var_2))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(503f, var_1.x))), var_1.ww, !((1u ^ u_input.b) <= u_input.e.x))));
}

