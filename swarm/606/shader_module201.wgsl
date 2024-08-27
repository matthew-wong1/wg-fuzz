struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: f32) -> u32 {
    return 19389u;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    let var_0 = arg_2.c;
    var var_1 = _wgslsmith_dot_vec3_u32(min(vec3<u32>(~firstLeadingBit(u_input.b), 13136u, 1u), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.b, u_input.b, u_input.a.x), u_input.a), ~vec3<u32>(4294967295u, 17338u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(2637u, u_input.a.x, u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(4294967295u, u_input.a.x, 0u))))), reverseBits(~u_input.a));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(arg_2.a, _wgslsmith_dot_vec2_i32(~arg_0.xz << (u_input.a.zx % vec2<u32>(32u)), vec2<i32>(0i, abs(u_input.c)))), _wgslsmith_mult_i32(~(-1i), _wgslsmith_mult_i32(arg_2.a, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, arg_0.x), firstLeadingBit(arg_2.a)))), ~(-u_input.c));
    var var_3 = countOneBits(~(0u ^ u_input.b));
    var var_4 = vec4<u32>(~40407u, ~4370u, min(u_input.a.x ^ u_input.a.x, ~reverseBits(~u_input.a.x)), firstTrailingBit(0u));
    return true;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(-u_input.d, (-1i < u_input.c) != all(vec4<bool>(true, any(vec4<bool>(true, true, true, false)), func_3(vec3<i32>(32532i, 7569i, u_input.d), vec3<bool>(true, true, true), Struct_1(0i, true, 1000f, vec4<bool>(true, true, true, false))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1019f, 1f)))), !vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), any(vec2<bool>(true, true)), true, true));
    var var_1 = !select(select(!(!vec3<bool>(var_0.b, true, var_0.b)), vec3<bool>(any(vec3<bool>(var_0.b, var_0.d.x, var_0.d.x)), var_0.d.x, u_input.b <= 1u), vec3<bool>(select(var_0.b, var_0.d.x, var_0.d.x), var_0.d.x, false)), var_0.d.xwy, true);
    var var_2 = Struct_1(var_0.a, all(vec3<bool>(!var_0.b, any(vec2<bool>(var_0.b, var_0.b)), !(!var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c, var_0.c)) - _wgslsmith_f_op_f32(f32(-1f) * -357f)), !(!vec4<bool>(true, var_0.b, any(vec3<bool>(false, false, true)), false)));
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(577f + var_2.c)))), Struct_1(-19986i, var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -707f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c)))), !vec4<bool>(var_0.d.x, select(true, var_0.d.x, false), any(vec3<bool>(var_2.d.x, true, var_2.d.x)), -21134i != u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.c + var_2.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1346f)))), Struct_1(1i, false, _wgslsmith_f_op_f32(floor(var_2.c)), var_2.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-567f, var_0.c, -1000f) - vec3<f32>(1012f, -698f, 1038f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c, var_0.c, 495f), vec3<f32>(441f, var_2.c, 364f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 1015f, var_0.c) + vec3<f32>(905f, 1586f, -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, -807f, 611f) - vec3<f32>(var_2.c, 153f, -198f))))));
    let var_4 = vec3<i32>(-2147483647i, var_2.a, _wgslsmith_dot_vec2_i32((vec2<i32>(var_0.a, var_3.b.a) ^ _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, 2147483647i), vec2<i32>(-1i, -6736i))) ^ _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(var_0.a, var_0.a)), vec2<i32>(-2147483647i, u_input.c), vec2<i32>(-4984i, u_input.c)), firstTrailingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(-16319i, var_0.a), vec2<i32>(1i, -71932i) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))))));
    return ~_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mult_u32(select(_wgslsmith_div_u32(u_input.b, 31651u), u_input.a.x, true), ~abs(u_input.a.x)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = 310f;
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    return Struct_1(arg_1, false, _wgslsmith_f_op_f32(-var_0), !(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1606f), -163f) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1056f), 851f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(697f, -949f) * vec2<f32>(552f, 1212f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(224f, 1018f))), false)))), func_4(u_input.c, ~2147483647i, vec4<u32>(func_1(-u_input.d, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2073f, 1484f), vec2<f32>(-540f, -255f))), _wgslsmith_f_op_f32(1968f - -990f)), 13800u, func_2(), ~reverseBits(u_input.b)), u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(276f * -2473f)) + -568f), _wgslsmith_f_op_f32(-func_4(abs(-2147483647i), u_input.d, vec4<u32>(49935u, u_input.b, u_input.b, u_input.a.x), vec3<u32>(0u, u_input.b, u_input.a.x) & vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)).c)), Struct_1(1i, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1921f * -182f) + _wgslsmith_f_op_f32(max(265f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f - 1341f) * _wgslsmith_f_op_f32(f32(-1f) * -1134f))), vec4<bool>(any(vec3<bool>(true, true, false)), false, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(745f, -407f, 1487f), vec3<f32>(1391f, -1199f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-963f, 1523f, 520f))))));
    let var_1 = vec2<bool>(all(var_0.b.d.zz), all(!(!vec2<bool>(var_0.d.b, false))));
    var var_2 = vec3<u32>(4294967295u, u_input.a.x, ~abs(55830u));
    var_2 = vec3<u32>(u_input.b, ~4294967295u, ~(~select(var_2.x, 1u, var_0.d.b)) | ~(~var_2.x));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c, 424f), 415f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.c)), var_0.e.x)) - _wgslsmith_div_vec2_f32(var_0.e.xx, var_0.a)), var_0.b, var_0.e.x, var_0.b, _wgslsmith_div_vec3_f32(vec3<f32>(-1558f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.c)), -179f, all(var_0.b.d.zzz))), _wgslsmith_f_op_f32(-var_0.b.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c, 151f, 420f) + vec3<f32>(-870f, var_0.e.x, var_0.b.c))))));
    var var_3 = u_input.a.yx;
    let var_4 = firstLeadingBit(u_input.a.x) & ~u_input.b;
    var_0 = Struct_2(var_0.a, func_4(_wgslsmith_sub_i32(u_input.d, 2147483647i), -1i, ~vec4<u32>(var_2.x, 63980u, var_4, 19885u) | _wgslsmith_div_vec4_u32(vec4<u32>(var_4, var_3.x, var_3.x, var_3.x) | vec4<u32>(u_input.b, var_3.x, var_4, 0u), abs(vec4<u32>(4294967295u, 0u, var_3.x, 4294967295u))), select(vec3<u32>(abs(55622u), _wgslsmith_sub_u32(u_input.b, 6648u), u_input.a.x), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 15066u, 4294967295u), vec3<u32>(var_3.x, 0u, 24169u)), any(func_4(u_input.d, 0i, vec4<u32>(var_2.x, var_3.x, var_3.x, var_2.x), vec3<u32>(var_3.x, var_3.x, var_3.x)).d.wyw))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(-1844i, -28262i, vec4<u32>(var_4, var_4, u_input.a.x, var_3.x), vec3<u32>(42575u, 78138u, 86888u)).c + 2076f), 2388f))), func_4(-2147483647i, 2147483647i, ~countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, var_2.x, var_3.x, 1u), vec4<u32>(9693u, 1u, 19939u, 1u))), abs(u_input.a)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.c, var_0.c, _wgslsmith_f_op_f32(round(-442f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1094f, 1194f, -1066f) - vec3<f32>(var_0.b.c, var_0.e.x, var_0.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(~(-u_input.c), _wgslsmith_mod_i32(-2147483647i, u_input.d)), ~0u, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(424f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.e.x)))), var_0.b.c)));
}

