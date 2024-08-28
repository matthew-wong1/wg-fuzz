struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = arg_1;
    var_0 = Struct_2(arg_1.a, _wgslsmith_f_op_f32(trunc(1304f)), arg_1.c, -(_wgslsmith_sub_i32(arg_1.d, abs(arg_1.d)) ^ select(-var_0.d, arg_1.d, true)), _wgslsmith_f_op_f32(ceil(arg_1.b)));
    var_0 = Struct_2(vec2<u32>(reverseBits(var_0.a.x), 13304u), _wgslsmith_f_op_f32(f32(-1f) * -110f), false, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, 0i, -19296i), -countOneBits(-var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -1138f));
    let var_1 = arg_1.c;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.yxx), arg_2.ywz);
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> vec2<u32> {
    let var_0 = Struct_2(vec2<u32>(arg_0.c.x, 1u), _wgslsmith_f_op_f32(-2908f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 679f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1477f, -1277f)))))), !(!(arg_3.a || arg_2.a)), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-202f, 469f)))));
    var var_1 = var_0.e;
    var var_2 = Struct_2(vec2<u32>(1u, ~arg_0.c.x), -639f, false, ~arg_1, 177f);
    var_2 = Struct_2(vec2<u32>(var_0.a.x, arg_0.c.x), 215f, any(select(vec4<bool>(arg_2.a & true, var_0.c, all(vec4<bool>(true, var_2.c, var_2.c, false)), false), select(select(vec4<bool>(false, arg_2.a, arg_3.a, arg_2.a), vec4<bool>(arg_2.a, true, var_0.c, true), arg_2.a), select(vec4<bool>(var_2.c, false, false, true), vec4<bool>(arg_3.a, false, arg_2.a, false), vec4<bool>(false, var_2.c, true, true)), !vec4<bool>(false, false, true, var_0.c)), func_2(func_2(Struct_3(true), var_0, vec4<f32>(1299f, -1270f, 1230f, var_0.b)), var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1974f, 1000f, var_0.b, var_2.e))).a)), -countOneBits(~select(var_0.d, 29765i, arg_3.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(ceil(var_2.e)))))));
    var_2 = Struct_2(~arg_0.c, var_0.e, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-var_0.d, firstLeadingBit(39818i)), -arg_0.d.x) > arg_1, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(287f, var_2.e, var_0.c)), _wgslsmith_f_op_f32(-1405f - var_2.b)))))));
    return vec2<u32>(4294967295u, _wgslsmith_clamp_u32(~(~(~4294967295u)), abs(76251u ^ var_2.a.x), var_2.a.x));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_2(min(select(~vec2<u32>(7420u, 62506u), func_3(Struct_1(4294967295u, vec3<i32>(u_input.a, u_input.a, -1546i), vec2<u32>(4294967295u, 4294967295u), vec2<i32>(u_input.a, 0i)), u_input.a, Struct_3(false), func_2(Struct_3(false), Struct_2(vec2<u32>(0u, 9489u), -1025f, false, u_input.a, -783f), vec4<f32>(-1000f, -119f, -1000f, -1232f))), true), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(16115u, 10399u), ~4294967295u), abs(89614u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1961f, _wgslsmith_f_op_f32(f32(-1f) * -303f)))) - -1062f), true, _wgslsmith_mod_i32(-_wgslsmith_div_i32(-u_input.a, firstTrailingBit(2147483647i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a, -2147483647i, -7858i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 81109i, u_input.a, 17307i), vec4<i32>(u_input.a, 2147483647i, 1i, u_input.a))), -_wgslsmith_dot_vec2_i32(vec2<i32>(27428i, 1i), vec2<i32>(2147483647i, 66064i)))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(877f - 951f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1365f), -1021f))))));
    let var_1 = ~_wgslsmith_mult_vec3_i32(abs(countOneBits(vec3<i32>(-1i, var_0.d, -2147483647i)) ^ ~vec3<i32>(u_input.a, u_input.a, 1i)), countOneBits(-(~vec3<i32>(var_0.d, var_0.d, -28729i))));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.x, var_1.x, -4446i, var_0.d), vec4<i32>(var_0.d, var_0.d, var_1.x, 0i) | vec4<i32>(u_input.a, u_input.a, 21025i, var_1.x)), u_input.a), -32705i & ~select(~(-10014i), _wgslsmith_add_i32(-14715i, var_0.d), true));
    var var_3 = Struct_1(_wgslsmith_sub_u32(~var_0.a.x, ~(~97u)), ~vec3<i32>(_wgslsmith_add_i32(-var_0.d, u_input.a), reverseBits(2147483647i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(0i, var_0.d, var_1.x)), vec3<i32>(var_2, 1i, u_input.a))), var_0.a, firstTrailingBit(_wgslsmith_div_vec2_i32(-var_1.zz, var_1.zx)));
    var var_4 = (53485i >= (_wgslsmith_div_i32(var_0.d, firstLeadingBit(var_1.x)) | max(-u_input.a, var_2))) & (!var_0.c || (!var_0.c || !any(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c))));
    return func_2(func_2(func_2(func_2(func_2(Struct_3(true), var_0, vec4<f32>(var_0.e, -269f, -373f, 419f)), var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, var_0.b, var_0.b, var_0.e) + vec4<f32>(2185f, var_0.e, var_0.e, -1312f))), Struct_2(~vec2<u32>(32855u, var_0.a.x), _wgslsmith_f_op_f32(-951f + var_0.e), var_0.b <= var_0.b, u_input.a ^ -1i, 1862f), vec4<f32>(_wgslsmith_f_op_f32(-var_0.e), 352f, var_0.e, _wgslsmith_f_op_f32(min(489f, -703f)))), Struct_2(select(var_0.a, ~vec2<u32>(1u, var_0.a.x), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.b)))), _wgslsmith_f_op_f32(ceil(var_0.b)) == -616f, var_3.d.x, 108f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e, -1521f, var_0.b, var_0.b), vec4<f32>(var_0.b, var_0.e, var_0.e, -2497f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(876f, 161f, 338f, var_0.e), vec4<f32>(var_0.e, var_0.b, 1023f, var_0.e)) + _wgslsmith_div_vec4_f32(vec4<f32>(668f, -177f, 152f, var_0.e), vec4<f32>(var_0.b, -835f, 835f, 576f))), any(select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(true, true, true), vec3<bool>(var_0.c, var_0.c, true)))))), Struct_2(vec2<u32>(~var_3.c.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 137u), vec3<u32>(var_0.a.x, var_0.a.x, var_3.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e, var_0.e) * 1322f) * _wgslsmith_f_op_f32(f32(-1f) * -1358f)), true, ~var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, -404f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -741f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, var_0.b, -676f, var_0.b), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1854f, var_0.e, -1000f, var_0.b))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.e, -479f, 1415f, -455f), vec4<f32>(1346f, 2129f, var_0.e, var_0.b))), vec4<f32>(var_0.b, var_0.e, 1000f, var_0.e))) * vec4<f32>(var_0.b, 733f, 813f, 854f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_div_i32(min(-(min(-34688i, u_input.a) | ~(-46442i)), ~(~u_input.a) | -1i), _wgslsmith_sub_i32(21418i, 36537i));
    let var_2 = ~countOneBits(vec4<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_add_u32(39781u, 1u), reverseBits(36649u)), firstLeadingBit(abs(1u)), 1u));
    let var_3 = var_2.x;
    var var_4 = Struct_1(0u, reverseBits(min(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-28099i, 1i, -1i), vec3<i32>(11389i, -2147483647i, 36957i))), countOneBits(vec3<i32>(var_1, var_1, -61425i)))), var_2.yx, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, u_input.a, var_1, var_1)), vec4<i32>(-2147483647i, var_1, -2147483647i, var_1) ^ vec4<i32>(u_input.a, -2871i, var_1, -38414i)), -15002i), -47424i));
    let x = u_input.a;
    s_output = StorageBuffer(16577u, ~var_4.c, reverseBits(var_2.xzw), var_4.a);
}

