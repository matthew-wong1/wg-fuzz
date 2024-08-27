struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: i32 = 2147483647i;

var<private> global1: vec3<u32>;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = Struct_1(global1.zx, vec2<i32>(abs(2147483647i), _wgslsmith_mod_i32(-17462i & arg_0, arg_0)), reverseBits(vec2<i32>(-2147483647i, min(_wgslsmith_mult_i32(39109i, arg_0), _wgslsmith_mult_i32(arg_0, arg_0)))));
    var var_1 = -364f;
    var var_2 = 13810u;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-971f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(945f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1632f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(505f, -970f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-441f, -1764f) - vec2<f32>(-914f, -290f)), vec2<f32>(997f, -342f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1453f), 1f))));
    return var_0.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_3 {
    global2 = firstLeadingBit(-_wgslsmith_add_i32(46998i, ~(-1i)) >> (global1.x % 32u));
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))))));
    let var_1 = Struct_2(-(~(~(~(-66766i)))), Struct_1(func_3(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, 1i, 0i), firstTrailingBit(0i))), -firstLeadingBit(abs(vec2<i32>(-37236i, 20491i))), ~(-(~vec2<i32>(2147483647i, -2147483647i)))), 1029f, -abs(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-3135i, 2147483647i, 259i, -2147483647i), vec4<i32>(-2147483647i, 1i, -1i, 8793i)), 1i)));
    let var_2 = -_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.b.c.x, -_wgslsmith_div_i32(var_1.b.b.x, 1i)), -(~var_1.b.c.x), -2147483647i | var_1.a);
    let var_3 = var_0;
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(1614f)), -1000f, _wgslsmith_f_op_f32(152f - var_0.x), _wgslsmith_f_op_f32(round(var_0.x)))))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = func_2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(sign(arg_0)), arg_0), 1000f != arg_0);
    var var_1 = vec4<bool>(true, true, select(all(vec3<bool>(true, all(vec2<bool>(true, true)), any(vec2<bool>(true, false)))), true, all(vec4<bool>(true, true, true, true))), false);
    global1 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(69256u, _wgslsmith_mod_u32(4294967295u, 47484u & global1.x), ~(51415u | u_input.a)), min(~vec3<u32>(0u, global1.x, 26138u), ~(~vec3<u32>(4294967295u, 4294967295u, 1413u)))), select(vec3<u32>(~804u, _wgslsmith_mult_u32(1u, firstLeadingBit(4294967295u)), select(u_input.a >> (u_input.a % 32u), 1u, any(vec4<bool>(true, false, var_1.x, true)))), reverseBits(reverseBits(~vec3<u32>(u_input.a, u_input.a, u_input.a))), var_1.zzw));
    global1 = _wgslsmith_sub_vec3_u32(abs(firstLeadingBit(select(vec3<u32>(38536u, 0u, 16750u), select(vec3<u32>(global1.x, u_input.a, 1u), vec3<u32>(u_input.a, global1.x, 0u), vec3<bool>(false, false, var_1.x)), false))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(5631u, 19019u >> (u_input.a % 32u), _wgslsmith_div_u32(global1.x, 0u)), max(firstLeadingBit(vec3<u32>(global1.x, global1.x, global1.x)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global1.x, u_input.a), vec3<u32>(0u, 0u, 0u), vec3<u32>(35775u, 4294967295u, 68827u)))), ~(~vec3<u32>(global1.x, 1u, u_input.a))));
    let var_2 = select(!(!vec4<bool>(true, true, 145246u < global1.x, var_1.x)), select(vec4<bool>(_wgslsmith_sub_u32(u_input.a, u_input.a) > 0u, all(select(var_1.zx, vec2<bool>(true, true), false)), !any(vec3<bool>(var_1.x, var_1.x, true)), var_1.x), vec4<bool>(var_1.x, true, select(true, var_1.x, var_1.x) | true, !select(true, true, false)), select(vec4<bool>(select(true, var_1.x, true), true, var_1.x, true), select(!vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(false, false, var_1.x, false), var_1.x || false), true)), true);
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, -1000f), -1267f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0))))), -2077f, var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_div_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(global1.x, 0u, u_input.a), vec3<u32>(11812u, 0u, 24079u) << (vec3<u32>(global1.x, global1.x, 42345u) % vec3<u32>(32u)))), ~_wgslsmith_add_vec3_u32(vec3<u32>(90838u, u_input.a, 4294967295u), ~vec3<u32>(u_input.a, 131487u, global1.x)));
    var var_0 = func_1(_wgslsmith_f_op_f32(abs(-142f)));
    global1 = (vec3<u32>(reverseBits(abs(u_input.a)), _wgslsmith_mult_u32(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, global1.x, 1u), vec4<u32>(u_input.a, 1u, global1.x, 1u))), u_input.a >> (~5516u % 32u)) << (vec3<u32>(u_input.a, u_input.a, 7673u) % vec3<u32>(32u))) | vec3<u32>(u_input.a, ~firstTrailingBit(0u) << ((1u >> (0u % 32u)) % 32u), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global1.x, 0u)) >> (_wgslsmith_mult_u32(u_input.a, global1.x) % 32u)));
    global0 = reverseBits(-370i);
    global2 = abs(2147483647i);
    var var_1 = Struct_1(~(vec2<u32>(~global1.x, u_input.a) ^ global1.xz), vec2<i32>(min(_wgslsmith_clamp_i32(~(-2147483647i), 1i, _wgslsmith_add_i32(42017i, -37934i)), 1i), ~1i), -vec2<i32>(-42553i, -1i));
    var_1 = Struct_1(vec2<u32>(~1u & ~(~global1.x), _wgslsmith_clamp_u32(_wgslsmith_div_u32(60337u | global1.x, firstTrailingBit(1u)), 7374u, 26698u)), ~abs(vec2<i32>(-2147483647i, abs(4694i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(max(_wgslsmith_clamp_i32(-24373i, 0i, var_1.b.x), var_1.b.x), -1i), ~abs(~var_1.c), vec2<i32>(var_1.c.x, _wgslsmith_add_i32(~var_1.b.x, -2147483647i >> (0u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(min(min(-18460i, var_1.c.x), var_1.b.x)), var_1.c.x));
}

