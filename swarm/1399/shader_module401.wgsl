struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, false, false)), false && any(vec4<bool>(true, true, false, true))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -776f), _wgslsmith_f_op_f32(762f * -787f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1249f - 1483f)))), -u_input.b, true, u_input.c), abs(1669u) >> (~(u_input.c & ~31820u) % 32u), reverseBits(~u_input.b | vec3<i32>(1i, u_input.b.x, 1i & u_input.e.x)));
    let var_1 = Struct_2(var_0.a, var_0.b, var_0.b.d, u_input.b);
    var_0 = var_1;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a * var_1.b.a) - _wgslsmith_f_op_f32(exp2(var_1.b.a))), max(~(vec3<i32>(u_input.e.x, -2147483647i, var_1.d.x) & var_0.b.b), abs(vec3<i32>(reverseBits(-2147483647i), -2147483647i, 26694i))), false, ~_wgslsmith_div_u32(1u, var_1.b.d) | (~var_1.c >> (abs(reverseBits(u_input.d.x)) % 32u)));
    var_0 = Struct_2(vec4<bool>(var_0.a.x, (1624u >= u_input.d.x) || var_2.c, !(!var_0.b.c), !all(var_0.a)), var_2, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.b.d, ~var_2.d, var_0.b.d), 47727u), firstTrailingBit(var_2.b));
    return var_1.a.wy;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = u_input.b.xx;
    var var_1 = func_3();
    var_1 = vec2<bool>(var_1.x, var_1.x);
    let var_2 = Struct_1(463f, u_input.b ^ reverseBits(u_input.b), var_1.x, 1u);
    var_1 = vec2<bool>(var_1.x, all(vec3<bool>(all(vec2<bool>(false, true)), var_2.c, var_1.x)));
    return Struct_1(arg_0.x, select(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(var_2.b, vec3<i32>(2147483647i, var_0.x, 7341i)), vec3<i32>(1i, -2147483647i, 1i)) ^ select(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.b.x, var_0.x, u_input.e.x), u_input.b, vec3<i32>(1i, u_input.e.x, var_2.b.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e.x, var_2.b.x, -1i), u_input.b), !var_2.c), vec3<i32>(firstLeadingBit(var_0.x), 1i, firstLeadingBit(max(0i, 55266i))), vec3<bool>(!(!var_2.c), !var_1.x | var_1.x, false)), !all(!select(vec2<bool>(true, var_1.x), vec2<bool>(false, false), var_2.c)), ~var_2.d);
}

fn func_1() -> Struct_2 {
    let var_0 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(select(max(u_input.b, vec3<i32>(12964i, -2147483647i, u_input.e.x)), vec3<i32>(-75009i, 2147483647i, u_input.e.x), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), reverseBits(~vec3<i32>(u_input.b.x, u_input.e.x, u_input.e.x))), min(2752i, -2147483647i));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(-1298f)), -337f)));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(exp2(var_1.x))), var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(386f - var_1.x))))));
    let var_3 = Struct_1(-225f, u_input.b, !(!(!var_2.c)), ~min(var_2.d, var_2.d));
    var_1 = vec3<f32>(1812f, var_3.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1226f, var_1.x)) * _wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_3.c)))))));
    return Struct_2(select(vec4<bool>(true, any(select(vec3<bool>(var_3.c, var_2.c, false), vec3<bool>(var_2.c, var_2.c, false), false)), (var_3.c && var_3.c) || !var_3.c, (var_2.b.x < var_2.b.x) | all(vec2<bool>(var_3.c, var_2.c))), vec4<bool>(var_3.c, any(vec4<bool>(var_2.c, var_2.c, false, var_3.c)), var_3.c, (u_input.c < 4294967295u) & var_3.c), var_3.c), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(111f, -1149f, 435f, var_3.a) + vec4<f32>(-477f, var_1.x, 710f, 581f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -121f, var_2.a, var_3.a) + vec4<f32>(-649f, -1088f, var_2.a, 398f)), vec4<bool>(var_2.c, false, false, var_2.c))))), var_2.d, u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    return arg_1.a.wzy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_u32(u_input.d.xwx, ~u_input.d.zzy);
    var var_1 = !func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2169f, -770f, false))), min(firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.e.x)), -u_input.b), false, var_0.x), func_1(), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-300f)))), ~u_input.b, !all(vec2<bool>(true, true)), ~1u));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(574f, -671f)), -392f, -189f, _wgslsmith_f_op_f32(exp2(1f))) - vec4<f32>(-1946f, -2177f, -1030f, _wgslsmith_f_op_f32(-func_2(vec4<f32>(-833f, -776f, -1775f, -1426f)).a))));
    let var_3 = true;
    var var_4 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a, var_2.a, 223f, var_2.a))) * vec4<f32>(1000f, -465f, 172f, var_2.a))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(650f, -1747f, _wgslsmith_f_op_f32(exp2(var_2.a)), var_2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(459f, 737f, -565f, -396f) * vec4<f32>(-1205f, -1122f, 774f, 390f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(327f, 109f, var_2.a, var_2.a) - vec4<f32>(var_2.a, var_2.a, var_2.a, var_2.a))), select(select(vec4<bool>(var_3, true, true, var_1.x), vec4<bool>(var_1.x, true, false, true), true), !vec4<bool>(var_3, false, true, var_2.c), true))))).a;
    var var_5 = -(~vec4<i32>(_wgslsmith_div_i32(var_2.b.x, func_2(vec4<f32>(484f, var_2.a, 575f, var_2.a)).b.x), 28568i, ~(var_2.b.x >> (var_2.d % 32u)), ~(-43338i >> (var_2.d % 32u))));
    let var_6 = ~(~(~_wgslsmith_sub_u32(64931u, abs(u_input.d.x))));
    var_5 = firstTrailingBit(_wgslsmith_sub_vec4_i32(~abs(vec4<i32>(var_5.x, var_2.b.x, var_5.x, var_5.x)), _wgslsmith_mult_vec4_i32(~(~vec4<i32>(64500i, -2147483647i, -26243i, u_input.b.x)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(0i, var_2.b.x, -34001i, var_5.x), vec4<i32>(-1i, u_input.e.x, u_input.b.x, u_input.e.x)), vec4<i32>(u_input.b.x, var_2.b.x, 16128i, var_2.b.x)))));
    var_0 = _wgslsmith_div_vec3_u32(~u_input.d.yxw, ~max((vec3<u32>(3304u, var_6, 1u) >> (vec3<u32>(4294967295u, 22597u, 9049u) % vec3<u32>(32u))) >> (u_input.d.zxy % vec3<u32>(32u)), vec3<u32>(0u, ~u_input.a, var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -1011f, var_2.a, var_2.a)), vec4<f32>(var_2.a, 535f, var_2.a, var_2.a), false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_2.a, -1487f)), 164f, _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(var_2.a * var_2.a)))), var_6, vec2<f32>(var_2.a, var_2.a), firstTrailingBit(vec2<u32>(var_0.x, firstTrailingBit(~4294967295u))));
}

