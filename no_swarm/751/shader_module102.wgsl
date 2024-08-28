struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = Struct_1(~arg_0.a | _wgslsmith_sub_i32(arg_0.a, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.b)))))), select(arg_0.c, select(vec2<bool>(!arg_0.c.x, all(vec2<bool>(arg_1.c.x, false))), vec2<bool>(true, true), arg_1.c), arg_0.c.x), _wgslsmith_f_op_f32(-1180f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1670f))))));
    let var_1 = vec3<bool>(true, arg_0.c.x, arg_1.c.x);
    var var_2 = arg_1;
    var var_3 = abs(u_input.c);
    let var_4 = Struct_1(abs(0i), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.d, var_2.b.x, -185f), arg_0.b))))), select(var_2.c, !select(vec2<bool>(var_2.c.x, true), vec2<bool>(arg_1.c.x, var_1.x), !var_2.c.x), !all(vec2<bool>(arg_0.c.x, arg_0.c.x)) | select(var_0.c.x, arg_0.c.x, true)), _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - 285f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d, _wgslsmith_f_op_f32(min(874f, var_2.d))));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 0i ^ u_input.a, u_input.d.x), vec3<i32>(_wgslsmith_mod_i32(-40650i, -6002i), ~u_input.d.x, u_input.a)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(-u_input.d, vec3<i32>(u_input.a, 2147483647i, 0i) >> (u_input.c % vec3<u32>(32u))), abs(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(-1i, -2147483647i, 19162i))), vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.a), 2147483647i, 1i))));
    let var_1 = Struct_1(_wgslsmith_sub_i32(~(-21069i), ~u_input.d.x) | ~(-(~0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1194f, _wgslsmith_f_op_f32(f32(-1f) * -1597f), _wgslsmith_f_op_f32(func_3(Struct_1(-2147483647i, vec3<f32>(-318f, -2226f, -575f), vec2<bool>(arg_0, false), 299f), Struct_1(-2147483647i, vec3<f32>(756f, 572f, -1933f), vec2<bool>(arg_0, false), 1593f), 4736u))), vec3<f32>(_wgslsmith_f_op_f32(-1681f * -682f), _wgslsmith_f_op_f32(func_3(Struct_1(var_0.x, vec3<f32>(-1000f, -1016f, -1000f), vec2<bool>(true, false), 448f), Struct_1(1i, vec3<f32>(-241f, -1147f, 1000f), vec2<bool>(true, true), 754f), 4294967295u)), -816f), !vec3<bool>(true, arg_0, false))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-833f, -790f, -598f))), all(vec2<bool>(false, arg_0)))), vec3<f32>(-669f, -594f, _wgslsmith_div_f32(552f, 248f)))), vec2<bool>((-var_0.x & firstLeadingBit(u_input.d.x)) == ~(i32(-1i) * -9084i), ~max(2147483647i, u_input.d.x) <= -1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1099f + _wgslsmith_f_op_f32(922f - 555f)), _wgslsmith_f_op_f32(sign(-347f)))))));
    var var_2 = select(vec3<u32>(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(100551u, 22999u, u_input.c.x, 4294967295u), vec4<u32>(u_input.b, u_input.b, 53754u, u_input.b))), u_input.b, ~(35020u & _wgslsmith_add_u32(1u, u_input.b))), ~(((u_input.c << (vec3<u32>(u_input.b, 68190u, 4294967295u) % vec3<u32>(32u))) | vec3<u32>(u_input.c.x, 5985u, u_input.c.x)) >> (_wgslsmith_mult_vec3_u32(u_input.c, u_input.c | vec3<u32>(u_input.c.x, 217u, 29070u)) % vec3<u32>(32u))), vec3<bool>(true, !arg_0, (true | all(vec2<bool>(true, arg_0))) | !var_1.c.x));
    let var_3 = ~vec2<i32>(-2147483647i, 6052i);
    var var_4 = -firstTrailingBit(_wgslsmith_mult_vec3_i32(var_0, vec3<i32>(min(0i, -9128i), _wgslsmith_add_i32(var_0.x, var_3.x), -8175i)));
    return max(1i, firstLeadingBit(abs(_wgslsmith_clamp_i32(-2147483647i, i32(-1i) * -1i, ~var_4.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32) -> vec4<bool> {
    var var_0 = Struct_1(37519i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(max(-280f, -775f)), _wgslsmith_f_op_f32(f32(-1f) * -1956f)))), !(!vec2<bool>(104f < arg_1, true)), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_clamp_i32(arg_0.x, abs(arg_0.x), _wgslsmith_mod_i32(12629i, u_input.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 260f, arg_1)), vec2<bool>(true, all(vec2<bool>(false, false))), -1153f), Struct_1(~_wgslsmith_mod_i32(-1i, -38434i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, 1000f, -1390f))), vec3<f32>(-1381f, 691f, -205f)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), _wgslsmith_f_op_f32(800f * -923f)), _wgslsmith_mult_u32(firstLeadingBit(~u_input.c.x), u_input.b << (abs(u_input.c.x) % 32u)))));
    var var_1 = any(vec3<bool>(var_0.c.x, any(vec3<bool>(var_0.c.x, true, var_0.c.x)), false));
    var var_2 = _wgslsmith_f_op_f32(805f * var_0.d);
    let var_3 = -22792i;
    var_0 = Struct_1(reverseBits(-2147483647i), _wgslsmith_f_op_vec3_f32(-var_0.b), select(var_0.c, !(!var_0.c), select(vec2<bool>(false, var_0.c.x && true), vec2<bool>(select(true, var_0.c.x, var_0.c.x), !var_0.c.x), var_0.c.x)), _wgslsmith_f_op_f32(-arg_1));
    return select(!vec4<bool>(any(!vec3<bool>(var_0.c.x, var_0.c.x, false)), select(u_input.c.x >= u_input.b, false, !var_0.c.x), true, any(select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, false, false, false), vec4<bool>(true, false, var_0.c.x, true)))), select(vec4<bool>(var_0.c.x, any(!vec3<bool>(var_0.c.x, false, var_0.c.x)), (var_0.d != -1189f) | !var_0.c.x, all(!vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x))), select(!(!vec4<bool>(var_0.c.x, false, var_0.c.x, true)), vec4<bool>(any(vec4<bool>(var_0.c.x, var_0.c.x, false, false)), u_input.a > -57309i, all(vec3<bool>(var_0.c.x, true, false)), true), true), any(vec4<bool>(false, var_0.c.x, 0u != u_input.c.x, var_0.c.x))), false);
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec3_i32(firstTrailingBit(abs(abs(vec3<i32>(13610i, 2147483647i, u_input.d.x))) ^ vec3<i32>(-26722i, 1i, min(u_input.d.x, 5793i))), u_input.d);
    var var_1 = all(func_4(vec4<i32>(u_input.a << (~1u % 32u), -19052i, func_2(true), -2147483647i), 489f));
    var_1 = (u_input.b != u_input.c.x) == any(select(!func_4(vec4<i32>(u_input.a, -41754i, 2147483647i, -84712i), arg_0.x).yzx, !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, all(vec3<bool>(true, false, false)), true)));
    let var_2 = -2147483647i;
    var var_3 = _wgslsmith_mult_vec4_i32(select(countOneBits(vec4<i32>(_wgslsmith_sub_i32(6478i, u_input.d.x), ~1i, 0i, ~(-38993i))), countOneBits(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a, var_0.x, var_2, -1115i)), -vec4<i32>(2960i, -1i, var_0.x, 2147483647i), ~vec4<i32>(var_0.x, var_0.x, var_0.x, 2147483647i))), any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, false), arg_0.x <= arg_0.x))), (abs(vec4<i32>(var_0.x, -20897i, var_0.x, u_input.d.x)) >> (vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 1u), 0u << (u_input.b % 32u), u_input.c.x, u_input.b) % vec4<u32>(32u))) | _wgslsmith_add_vec4_i32(max(select(vec4<i32>(u_input.a, -29871i, var_0.x, var_0.x), vec4<i32>(0i, 28991i, 0i, 1i), true), firstTrailingBit(vec4<i32>(0i, var_0.x, u_input.a, u_input.a))), ~vec4<i32>(-14609i, var_0.x, var_2, 48133i)));
    return Struct_1(_wgslsmith_dot_vec3_i32(var_3.xxz, u_input.d ^ _wgslsmith_add_vec3_i32(vec3<i32>(10316i, 1i, u_input.d.x), vec3<i32>(-9911i, -2147483647i, 60452i) << (u_input.c % vec3<u32>(32u)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-513f * 1000f), arg_0.x), arg_0), select(func_4(min(-vec4<i32>(var_0.x, u_input.a, 0i, u_input.d.x), -vec4<i32>(u_input.a, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - 1f)).ww, select(vec2<bool>(all(vec4<bool>(true, false, false, false)), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(var_2 < var_3.x, true)), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var_0 = Struct_1(var_0.a ^ 0i, _wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.b)) + var_0.b))), select(!func_1(_wgslsmith_f_op_vec3_f32(trunc(var_0.b))).c, !select(var_0.c, var_0.c, var_0.c.x), !var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -257f));
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, var_0.b.x, var_0.d), var_0.b, vec3<bool>(false, var_0.c.x, true)))))))));
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-623f, -1359f)), _wgslsmith_div_f32(1772f, var_0.d), var_0.b.x)), vec3<bool>(var_0.c.x, var_0.c.x, func_4(vec4<i32>(0i, u_input.d.x, -1i, -1i) | vec4<i32>(var_0.a, 31036i, 0i, u_input.d.x), _wgslsmith_f_op_f32(var_0.b.x + 2018f)).x))));
    var var_1 = func_1(vec3<f32>(705f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + var_0.d))));
    let var_2 = i32(-1i) * -15043i;
    var var_3 = Struct_1(49295i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-576f + 1f), _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(var_0.d * var_0.d)), var_1.b.x), _wgslsmith_f_op_vec3_f32(-var_1.b))), !func_4(vec4<i32>(17469i, ~(-283i), -15797i, u_input.d.x >> (1u % 32u)), 176f).xw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.d), -877f, var_0.b.x >= -112f)), 1169f));
    var var_4 = !select(select(!func_4(vec4<i32>(var_3.a, 15674i, var_0.a, u_input.d.x), 781f).zzy, select(func_4(vec4<i32>(0i, -41935i, var_2, var_1.a), var_1.d).yzw, select(vec3<bool>(var_1.c.x, var_0.c.x, false), vec3<bool>(false, var_0.c.x, var_1.c.x), false), select(vec3<bool>(true, var_1.c.x, true), vec3<bool>(false, var_0.c.x, false), var_1.c.x)), true), select(vec3<bool>(!var_0.c.x, all(var_1.c), var_3.c.x || var_0.c.x), vec3<bool>(true, func_4(vec4<i32>(var_1.a, 22227i, 1i, -42248i), 197f).x, var_1.c.x), select(select(vec3<bool>(false, var_3.c.x, true), vec3<bool>(var_0.c.x, var_0.c.x, false), vec3<bool>(var_3.c.x, var_0.c.x, var_1.c.x)), select(vec3<bool>(var_0.c.x, var_3.c.x, true), vec3<bool>(var_0.c.x, var_3.c.x, true), var_1.c.x), func_4(vec4<i32>(u_input.a, var_1.a, var_2, -2147483647i), -1269f).xxy)), all(var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(~(min(~u_input.c.x, _wgslsmith_sub_u32(u_input.b, 1u)) & reverseBits(~9309u)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1550f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x - 479f) + _wgslsmith_f_op_f32(select(918f, 198f, var_4.x)))))), vec3<u32>(~_wgslsmith_add_u32(~34863u, u_input.c.x), abs(_wgslsmith_clamp_u32(~u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 4294967295u), u_input.c.x)), abs(0u)));
}

