struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    let var_0 = reverseBits(~abs(~min(vec2<u32>(37473u, 10348u), vec2<u32>(u_input.c, u_input.d))));
    var var_1 = countOneBits(vec3<u32>(u_input.d, u_input.a, ~_wgslsmith_mult_u32(67224u, 24254u))) << (_wgslsmith_div_vec3_u32(~abs(~vec3<u32>(var_0.x, var_0.x, u_input.a)), (vec3<u32>(u_input.c, 8745u, 0u) << (vec3<u32>(42801u, u_input.c, 4294967295u) % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(var_0.x, 42544u, 1u)), vec3<u32>(26016u, 0u, 22405u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = Struct_2(1i, _wgslsmith_mod_u32(u_input.c, 4294967295u));
    let var_3 = var_2;
    var var_4 = Struct_1(u_input.b, !(!select(true, true, true)), _wgslsmith_f_op_f32(1121f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(343f * 1f))));
    return -1807f;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> i32 {
    let var_0 = vec2<bool>(u_input.a == 4294967295u, any(vec2<bool>(true, true)) & false);
    let var_1 = _wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(_wgslsmith_f_op_f32(1057f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-1000f + 1048f))));
    var var_2 = Struct_1(u_input.b, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1361f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(sign(474f)))) * arg_1.x));
    var var_3 = vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.c), select(vec4<u32>(u_input.c, u_input.c, u_input.a, 1u), vec4<u32>(66051u, 1u, u_input.d, 14572u), var_0.x)), vec4<u32>(~28773u, abs(u_input.a), ~u_input.a, ~93074u)), 72319u);
    let var_4 = -20499i;
    return var_2.a;
}

fn func_4(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = 26173u <= (_wgslsmith_clamp_u32(countOneBits(0u), 328u, ~u_input.d) >> (min(~(~42027u), arg_0.b) % 32u));
    var var_1 = 2147483647i;
    var_1 = abs(abs(~_wgslsmith_add_i32(abs(-1i), u_input.b)));
    var var_2 = Struct_1(_wgslsmith_sub_i32(-27136i, arg_0.a >> (~32225u % 32u)), true, 1f);
    let var_3 = Struct_1(2147483647i, var_0, var_2.c);
    return vec2<u32>(arg_0.b, _wgslsmith_mod_u32(~68114u >> (firstTrailingBit(0u) % 32u), ~4571u) >> (~4294967295u % 32u));
}

fn func_1() -> u32 {
    let var_0 = func_4(Struct_2(_wgslsmith_sub_i32(func_2(-333f, _wgslsmith_f_op_vec4_f32(vec4<f32>(169f, 1000f, -1287f, -423f) + vec4<f32>(-1984f, 177f, 869f, 823f))), ~(i32(-1i) * -32088i)), _wgslsmith_mod_u32(firstTrailingBit(4294967295u), _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 28350u, u_input.a), vec3<u32>(97759u, u_input.a, u_input.c))))));
    return 4294967295u;
}

fn func_5(arg_0: u32) -> vec3<f32> {
    var var_0 = Struct_2(-2147483647i, arg_0);
    var_0 = Struct_2(u_input.b | var_0.a, func_4(Struct_2(-(~(-36650i)), 4294967295u)).x);
    var_0 = Struct_2(min(u_input.b, var_0.a), arg_0);
    var var_1 = Struct_2(-(i32(-1i) * -u_input.b), (~arg_0 | _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(13433u, var_0.b, var_0.b), vec3<u32>(arg_0, arg_0, 4294967295u)), 28629u)) & u_input.d);
    var var_2 = Struct_1((-abs(var_1.a) & min(var_1.a, u_input.b)) | 1i, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(124f + -994f))));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -291f))), var_2.c)), _wgslsmith_f_op_f32(-var_2.c), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.c, var_2.c, var_2.c))))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = vec2<i32>(countOneBits(~(_wgslsmith_clamp_i32(1i, u_input.b, 1i) << (u_input.c % 32u))), firstLeadingBit(-arg_1.a));
    var var_1 = -_wgslsmith_mult_vec4_i32(~(~(~vec4<i32>(0i, 0i, var_0.x, -21512i))), ~(-(vec4<i32>(var_0.x, var_0.x, var_0.x, arg_1.a) ^ vec4<i32>(-8721i, u_input.b, -2147483647i, -2107i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, 776f, -163f, 2560f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c, arg_1.c, arg_0.x, arg_1.c), vec4<f32>(arg_1.c, -451f, 127f, 349f), vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-330f, arg_0.x, 792f, -2150f)))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_0.x)), 123f);
    var var_4 = arg_0.zz;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), true), false)), true, u_input.b < _wgslsmith_mult_i32(-u_input.b, ~(~u_input.b)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-499f, 1275f, 488f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(533f, -1632f, 2060f))), !var_0.wxy)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1301f, 936f, -109f), vec3<f32>(-768f, -458f, -152f), var_0.x)), vec3<f32>(-1000f, 958f, -711f))))));
    let var_2 = min(firstLeadingBit(~min(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(1u, u_input.c)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 54665u) | vec2<u32>(4294967295u, 63831u), ~vec2<u32>(u_input.c, 1u)) % vec2<u32>(32u))), vec2<u32>(func_6(_wgslsmith_f_op_vec3_f32(func_5(func_1())), Struct_1(u_input.b, var_0.x, var_1.x)), ~select(u_input.d, ~1u, !var_0.x)));
    var var_3 = Struct_2(max(-(u_input.b ^ -1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(u_input.b, u_input.b))) >> (~_wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(u_input.d, 86706u)) % 32u), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~var_3.a, -reverseBits(-27088i ^ u_input.b), abs(reverseBits(var_3.a) | ~u_input.b), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(var_3.a, 11185i)), -vec2<i32>(u_input.b, var_3.a)), -(~vec2<i32>(var_3.a, -1i)))), u_input.b);
}

