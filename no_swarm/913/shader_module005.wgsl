struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec2<i32>(-1i) * -abs(~vec2<i32>(u_input.a, u_input.a));
    var var_1 = Struct_4(u_input.a & var_0.x);
    var_1 = Struct_4(0i);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1844f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(442f * 1907f), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2078f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(1000f - -1824f))), _wgslsmith_f_op_f32(f32(-1f) * -243f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-402f, -171f, -182f, 836f) * vec4<f32>(381f, -804f, -450f, -1000f))))))), true));
    var var_3 = min(~min(abs(abs(8818u)), 32383u), _wgslsmith_add_u32(~firstLeadingBit(_wgslsmith_add_u32(0u, 36157u)), _wgslsmith_mod_u32(reverseBits(reverseBits(1u)), 11490u)));
    return vec3<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, false)))) & ((54745i & var_1.a) != var_0.x), false);
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_4(-u_input.a);
    var var_1 = all(vec4<bool>(arg_0, arg_0 && arg_0, all(select(!vec4<bool>(arg_0, arg_0, false, true), !vec4<bool>(true, arg_0, false, arg_0), any(vec2<bool>(arg_0, arg_0)))), !(any(vec4<bool>(arg_0, arg_0, arg_0, true)) | (arg_0 || false))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -249f);
    let var_3 = vec2<bool>(false, all(func_3()));
    let var_4 = -_wgslsmith_mult_i32(-23301i, i32(-1i) * -1i);
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(76155u, 18181u, 4294967295u, 44193u))) & ~(~0u);
}

fn func_1() -> Struct_2 {
    let var_0 = 0u > func_2(true);
    var var_1 = Struct_1(~(-vec2<i32>(-3671i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, -2147483647i, u_input.a), vec4<i32>(2147483647i, u_input.a, -1i, 13753i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-104f + 640f))))) + -503f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(386f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -962f) + _wgslsmith_div_f32(-760f, -538f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-546f * _wgslsmith_f_op_f32(ceil(142f)))))), var_0);
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(min(1391f, _wgslsmith_div_f32(-2015f, var_1.b))), 560f, !(((var_1.c != 1574f) || true) & all(!vec3<bool>(var_0, true, true))));
    var_1 = Struct_1(vec2<i32>(811i, 3187i), _wgslsmith_f_op_f32(var_1.b * 314f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(723f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1061f)))), !(max(u_input.a, i32(-1i) * -1i) <= _wgslsmith_mod_i32(-u_input.a, ~(-10596i))));
    var_1 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec2_i32(var_1.a, ~var_1.a)) << (countOneBits(~vec2<u32>(1u, 1u)) % vec2<u32>(32u)), 904f, _wgslsmith_f_op_f32(-var_1.b), true);
    return Struct_2(_wgslsmith_mod_i32(~max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, 0i, var_1.a.x), vec3<i32>(u_input.a, var_1.a.x, 6908i)), min(var_1.a.x, 1i)), abs(-3645i)), !(!(!select(vec2<bool>(var_0, false), vec2<bool>(var_1.d, var_0), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(firstLeadingBit(-55586i), vec2<bool>(min(u_input.a, u_input.a) <= u_input.a, true));
    var_0 = func_1();
    var_0 = Struct_2(_wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(-2147483647i, var_0.a)), firstLeadingBit(-9918i))), !func_1().b);
    var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1153f * -631f) + _wgslsmith_f_op_f32(abs(925f)))), _wgslsmith_f_op_f32(abs(-1080f)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(466f)) * 636f);
    var var_2 = !(!var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 8104u), vec2<u32>(56042u, 20798u)), vec2<u32>(1u, 4294967295u)) >> (1u % 32u)) | countOneBits(~_wgslsmith_mult_u32(1u, 0u)), vec4<u32>(1u, 1u, 1u, 1u));
}

