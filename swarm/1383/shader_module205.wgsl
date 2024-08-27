struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = select(!vec2<bool>(all(select(vec4<bool>(arg_2.e, false, true, arg_3.e), vec4<bool>(arg_2.e, true, true, false), arg_3.e)), true), vec2<bool>(any(select(select(vec3<bool>(arg_3.e, arg_0, arg_3.e), vec3<bool>(true, arg_2.e, true), true), !vec3<bool>(arg_2.e, arg_3.e, arg_0), !vec3<bool>(arg_0, arg_3.e, true))), true), arg_0);
    let var_1 = vec2<u32>(~_wgslsmith_mult_u32(u_input.b, ~reverseBits(arg_2.d.x)), 1u);
    let var_2 = Struct_1(arg_2.a, vec2<i32>(9755i, -arg_1.x), arg_3.b, arg_2.d, !var_0.x);
    let var_3 = select(vec2<bool>(!var_2.e, true), var_0, vec2<bool>(any(select(select(vec3<bool>(arg_2.e, true, false), vec3<bool>(var_0.x, true, false), vec3<bool>(false, true, var_2.e)), !vec3<bool>(arg_3.e, arg_2.e, arg_2.e), arg_0)), !arg_3.e));
    var var_4 = !select(select(any(vec4<bool>(arg_3.e, false, var_2.e, true)), var_0.x, true), true, var_0.x || true) & true;
    return !(!var_3.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = -select(arg_0.b.x, -max(arg_3.b.x, arg_3.c.x), true);
    var var_1 = arg_3.d.x;
    var var_2 = !vec2<bool>(select(arg_0.e, any(vec3<bool>(arg_3.e, arg_3.e, arg_0.e)) & func_3(true, arg_0.a.zyx, arg_0, Struct_1(arg_0.a, vec2<i32>(-2147483647i, -2147483647i), arg_3.b, vec2<u32>(u_input.b, arg_3.d.x), arg_3.e)), all(vec3<bool>(false, arg_0.e, arg_3.e))), !all(vec3<bool>(false, true, true)));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -701f)))))));
    var var_4 = arg_0;
    return arg_3.a;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_div_f32(-350f, 716f);
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-607f - -717f))), -1094f))));
    var var_2 = Struct_1(min(func_2(arg_1, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2229f, -1436f, -1920f))), vec2<f32>(870f, 1022f), arg_2), ~vec4<i32>(arg_1.b.x, arg_1.a.x, u_input.d, var_0) ^ arg_1.a) >> (max(~vec4<u32>(arg_2.d.x, 3642u, 42688u, 59054u), max(select(vec4<u32>(57612u, 33282u, 121481u, 41948u), vec4<u32>(5955u, arg_2.d.x, arg_1.d.x, 1u), vec4<bool>(true, true, true, false)), vec4<u32>(u_input.b, 0u, 18545u, arg_2.d.x) << (vec4<u32>(0u, arg_2.d.x, arg_1.d.x, arg_1.d.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), abs(vec2<i32>(firstLeadingBit(min(-34635i, arg_1.a.x)), arg_2.b.x)), _wgslsmith_add_vec2_i32(~min(arg_1.c, arg_1.a.xw), countOneBits(select(arg_1.b, vec2<i32>(4726i, arg_0), true || arg_1.e))), vec2<u32>(0u, _wgslsmith_add_u32(4294967295u, arg_1.d.x)), !arg_1.e);
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(663f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(-574f + 1340f)))))));
    return -135f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.d, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.a))), ~(-vec2<i32>(u_input.c, u_input.c))), _wgslsmith_mult_vec2_i32(~vec2<i32>(1i, u_input.a), firstTrailingBit(reverseBits(vec2<i32>(-1i, -25765i)))), vec2<i32>(u_input.a, 0i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(func_1(-16047i, Struct_1(vec4<i32>(-86507i, var_0.x, var_0.x, -23812i), var_0, var_0, vec2<u32>(1u, 1u), true), Struct_1(vec4<i32>(var_0.x, var_0.x, -2147483647i, u_input.d), var_0, var_0, vec2<u32>(61616u, 1u), false))), -195f, _wgslsmith_f_op_f32(266f - 1939f)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(2144f * 560f), _wgslsmith_f_op_f32(-1949f + -647f), _wgslsmith_f_op_f32(-1242f + -832f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(121f, -1562f, -2238f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, 185f, -2105f)), false)), select(true, all(vec3<bool>(false, true, false)), true))))));
    let var_2 = vec4<i32>(-13727i, -13105i << (abs(u_input.b) % 32u), var_0.x, -2147483647i);
    let var_3 = Struct_1(var_2 | _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_2.x, var_2.x, var_0.x, u_input.d), max(vec4<i32>(2147483647i, var_0.x, -26389i, 32337i), var_2)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.d, var_0.x) >> (vec4<u32>(u_input.b, 0u, 46443u, u_input.b) % vec4<u32>(32u)), var_2, _wgslsmith_clamp_vec4_i32(var_2, vec4<i32>(u_input.d, -59259i, var_2.x, var_2.x), vec4<i32>(-42309i, var_2.x, 1i, -32594i)))), select(_wgslsmith_add_vec2_i32(var_0, _wgslsmith_div_vec2_i32(var_0, vec2<i32>(1i, -5813i))), ~(-var_2.zy), vec2<bool>(true, all(vec4<bool>(false, false, false, false)))) | firstTrailingBit(~(-vec2<i32>(-10479i, 2147483647i))), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_0.x, var_0.x, -17425i) << (vec4<u32>(1u, 0u, 4294967295u, 135540u) % vec4<u32>(32u)), vec4<i32>(var_0.x, 17642i, 8741i, 2147483647i)), var_2.x), _wgslsmith_dot_vec3_i32(min(var_2.zwz, var_2.ywx), vec3<i32>(u_input.d, var_0.x, var_2.x)) & _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, var_0.x), -41889i & var_0.x)), select(~max(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 78917u), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, 0u)), ~(~abs(vec2<u32>(0u, 40577u))), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true);
    var var_4 = u_input.b;
    let var_5 = var_3;
    let var_6 = firstTrailingBit(reverseBits(var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1021f, _wgslsmith_div_f32(-292f, 497f), _wgslsmith_f_op_f32(step(var_1.x, -2202f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(822f, var_1.x, var_1.x))))))), -29649i, _wgslsmith_div_u32(4294967295u, firstLeadingBit(1u)), var_5.a.yy);
}

