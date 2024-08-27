struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_mod_i32(-9378i, u_input.b.x);
    var var_1 = Struct_1(~u_input.b, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-120f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1359f))), all(vec4<bool>(true, true, true, true))))), -44369i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1529f, -1000f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-246f, -627f, 113f)))) - vec3<f32>(1f, 1f, 1f))));
    var_1 = Struct_1(_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(var_1.c, _wgslsmith_add_i32(6762i, -1i), u_input.b.x, 2147483647i)), 709f, var_0, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(1000f + -1766f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(-var_1.d.x)))), vec3<f32>(-1413f, _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.d.x)))))));
    var var_2 = _wgslsmith_dot_vec2_u32(min(~select(select(vec2<u32>(4294967295u, 12521u), vec2<u32>(0u, 0u), vec2<bool>(false, false)), ~vec2<u32>(0u, 1u), true), ~(~vec2<u32>(1u, 0u))), ~vec2<u32>(abs(max(0u, 10211u)), ~abs(0u)));
    let var_3 = select(select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true || all(vec2<bool>(true, true)), true, true, (_wgslsmith_add_i32(var_1.c, var_0) <= (-108i ^ var_0)) != all(vec3<bool>(true, true, true))), !select(vec4<bool>(all(vec4<bool>(true, false, true, true)), true, select(false, false, false), true), vec4<bool>(true, true, true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2057f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.b, var_1.b))), _wgslsmith_f_op_f32(floor(var_1.b)))) - var_1.b);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1453f)));
    var var_1 = arg_2.c;
    let var_2 = arg_2.c.a.zz;
    var var_3 = Struct_2(any(select(vec4<bool>(false, true, arg_2.a, true), select(!vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a), select(vec4<bool>(arg_2.a, true, arg_2.a, arg_2.a), vec4<bool>(arg_2.a, true, false, arg_2.a), arg_2.a), !vec4<bool>(arg_2.a, arg_2.a, arg_2.a, false)), !arg_2.a)), _wgslsmith_add_vec2_i32(var_1.a.ww, arg_2.b), Struct_1(vec4<i32>(~arg_0.x, countOneBits(~8496i), max(arg_0.x << (4294967295u % 32u), arg_0.x), _wgslsmith_mult_i32(-var_2.x, -var_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-300f)))), _wgslsmith_add_i32(-countOneBits(arg_2.b.x), min(~(-4235i), i32(-1i) * -45591i)), arg_2.c.d), arg_1);
    let var_4 = Struct_1(-(~vec4<i32>(arg_2.b.x, -51683i, -2147483647i, -var_3.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), reverseBits(var_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, var_1.b, arg_2.c.b), vec3<f32>(-385f, arg_2.d, arg_1))), arg_2.c.d, !vec3<bool>(var_3.a, false, var_3.a))) - arg_2.c.d)));
    return Struct_1(-var_4.a, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(sign(-1027f))), firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-14558i, 2147483647i), var_1.c)) | firstTrailingBit(~select(arg_2.b.x, 1i, var_3.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.d, 941f, arg_2.c.b), _wgslsmith_f_op_vec3_f32(select(var_4.d, vec3<f32>(1242f, var_1.b, arg_1), vec3<bool>(var_3.a, false, false))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = !(!(!select(!vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(true, arg_2.a, true), true)));
    var_0 = !select(vec3<bool>(false, true, arg_2.a), !(!select(vec3<bool>(false, false, var_0.x), vec3<bool>(arg_2.a, true, var_0.x), false)), all(vec2<bool>(all(vec3<bool>(false, arg_2.a, true)), all(vec4<bool>(var_0.x, false, true, arg_2.a)))));
    let var_1 = Struct_1(_wgslsmith_sub_vec4_i32(~u_input.b, firstLeadingBit(arg_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -162f), -arg_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.c.d, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.d, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(-arg_2.c.d))))));
    var_0 = !vec3<bool>(true, !(arg_0 <= _wgslsmith_f_op_f32(sign(arg_2.d))), select(arg_2.a, arg_2.a, false));
    let var_2 = var_1.c == 0i;
    return vec3<u32>(1u, ~countOneBits(1u) << (~4294967295u % 32u), ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 64449u), vec2<u32>(6355u, 33447u)), ~vec2<u32>(50125u, 20022u))) & firstTrailingBit(vec3<u32>(1u, 1u, 1u));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = arg_0.wwx;
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(~(~arg_3)), _wgslsmith_mult_vec3_u32(func_4(_wgslsmith_f_op_f32(504f - -1187f), func_2(vec4<i32>(var_0.x, 1i, 18243i, arg_0.x), -947f, Struct_2(true, arg_2.xx, Struct_1(vec4<i32>(6511i, arg_0.x, arg_0.x, 0i), 334f, arg_0.x, vec3<f32>(arg_1, arg_1, arg_1)), 530f)), Struct_2(false, vec2<i32>(u_input.b.x, -1i), Struct_1(vec4<i32>(-2147483647i, u_input.b.x, 3131i, -2147483647i), arg_1, 1i, vec3<f32>(arg_1, -987f, arg_1)), arg_1)), firstLeadingBit(arg_3)), vec3<u32>(arg_3.x, arg_3.x, ~275u)), abs(vec3<u32>(~arg_3.x, arg_3.x, arg_3.x) << (~abs(arg_3) % vec3<u32>(32u))));
    var var_2 = vec2<i32>(-func_2(-(u_input.b & vec4<i32>(arg_2.x, 26156i, 7204i, -25103i)), _wgslsmith_f_op_f32(2111f + _wgslsmith_f_op_f32(step(584f, arg_1))), Struct_2(select(true, true, false), vec2<i32>(var_0.x, arg_2.x), Struct_1(vec4<i32>(2147483647i, 0i, u_input.b.x, var_0.x), arg_1, 25329i, vec3<f32>(arg_1, 703f, 166f)), _wgslsmith_f_op_f32(sign(arg_1)))).a.x, _wgslsmith_dot_vec4_i32((arg_0 | arg_0) << (~firstTrailingBit(vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x)) % vec4<u32>(32u)), ~reverseBits(u_input.b)));
    let var_3 = -vec3<i32>(_wgslsmith_add_i32(-(var_0.x >> (arg_3.x % 32u)), 15513i), 1i, abs(_wgslsmith_mod_i32(func_2(arg_0, -486f, Struct_2(true, vec2<i32>(-22431i, u_input.b.x), Struct_1(vec4<i32>(arg_2.x, arg_2.x, -9682i, var_2.x), -459f, -5826i, vec3<f32>(arg_1, -432f, arg_1)), 838f)).c, 0i)));
    var_1 = arg_3;
    return Struct_1(u_input.b, arg_1, var_2.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), 918f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) * vec3<f32>(-2142f, arg_1, 488f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 1033f) * vec3<f32>(794f, 1503f, arg_1)))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = firstLeadingBit(~(~1u));
    var_0 = 1u;
    let var_1 = Struct_2(arg_1.x, arg_0.a.wz, Struct_1(u_input.b & abs(-u_input.b), _wgslsmith_f_op_f32(1723f + _wgslsmith_f_op_f32(trunc(-240f))), arg_0.a.x, func_1(_wgslsmith_clamp_vec4_i32(min(u_input.b, vec4<i32>(arg_0.a.x, 0i, -19113i, arg_3.x)), arg_0.a | u_input.b, func_2(u_input.b, arg_0.b, Struct_2(true, arg_0.a.zz, arg_0, arg_0.b)).a), arg_0.b, abs(-arg_0.a.wzw), firstTrailingBit(select(vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 5761u, 68715u), false))).d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1417f - 162f), -446f)), _wgslsmith_f_op_f32(f32(-1f) * -587f)));
    var var_2 = _wgslsmith_f_op_f32(floor(var_1.c.b));
    var var_3 = !vec4<bool>(true, any(vec2<bool>(var_1.a, any(vec4<bool>(arg_1.x, true, false, false)))), !var_1.a, any(!select(vec3<bool>(arg_2, false, false), vec3<bool>(var_1.a, true, arg_2), vec3<bool>(arg_1.x, true, false))));
    return Struct_2(true, _wgslsmith_clamp_vec2_i32(min((arg_0.a.xx ^ vec2<i32>(19278i, var_1.b.x)) & max(var_1.c.a.xz, vec2<i32>(10696i, u_input.b.x)), min(~vec2<i32>(-60470i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -2469i), vec2<i32>(var_1.b.x, -7928i)))), -arg_0.a.xx, -firstLeadingBit(arg_3 << (vec2<u32>(45985u, 0u) % vec2<u32>(32u)))), Struct_1(var_1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(538f + _wgslsmith_f_op_f32(-var_1.d))), ~(-17756i), arg_0.d), _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(round(arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1104f * -892f))), 160f, _wgslsmith_f_op_f32(f32(-1f) * -1462f), -763f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1422f, 154f, -219f, -169f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(867f, -1253f, 1015f, -917f))))));
    var var_1 = func_5(func_1(u_input.b, _wgslsmith_div_f32(1466f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))), vec3<i32>(1i, u_input.a, _wgslsmith_div_i32(-13325i & u_input.a, 19708i)), vec3<u32>(~select(21711u, 1u, false), 1u, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 43053u, 0u), vec3<u32>(43140u, 12497u, 0u))))), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(any(vec2<bool>(true, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true))), true), true, func_2(u_input.b, func_2(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(2147483647i, u_input.a, 1i, u_input.b.x)), ~u_input.b), _wgslsmith_f_op_f32(-func_1(u_input.b, var_0.x, u_input.b.yzw, vec3<u32>(24129u, 1u, 4294967295u)).d.x), Struct_2(false, u_input.b.zx, func_1(u_input.b, -524f, u_input.b.wwx, vec3<u32>(0u, 4294967295u, 0u)), var_0.x)).b, Struct_2(true, vec2<i32>(abs(u_input.a), -u_input.a), Struct_1(reverseBits(u_input.b), -161f, 5912i, vec3<f32>(872f, -1049f, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f + 299f) + -136f))).a.xx);
    var var_2 = !select(select(select(!vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, false, var_1.a), !vec4<bool>(false, true, var_1.a, false)), select(vec4<bool>(false, var_1.a, var_1.a, var_1.a), select(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(false, true, true, var_1.a), true), select(vec4<bool>(var_1.a, false, false, false), vec4<bool>(true, true, false, var_1.a), true)), var_1.a), !vec4<bool>(!var_1.a, var_1.a, !var_1.a, false), any(select(select(vec4<bool>(false, var_1.a, true, var_1.a), vec4<bool>(var_1.a, false, var_1.a, true), var_1.a), select(vec4<bool>(true, true, true, var_1.a), vec4<bool>(var_1.a, var_1.a, false, false), vec4<bool>(false, true, true, var_1.a)), vec4<bool>(true, true, var_1.a, var_1.a))));
    let var_3 = select(select(vec2<bool>(false, all(!var_2.xx)), vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 51663u), vec2<u32>(23907u, 3174u)) == _wgslsmith_sub_u32(5111u, 0u), any(vec4<bool>(var_2.x, false, var_1.a, false))), true), var_2.xy, select(var_2.yz, var_2.zy, select(var_2.wx, var_2.zw, vec2<bool>(true, -1i >= u_input.a))));
    var var_4 = _wgslsmith_mult_i32(~(-func_5(var_1.c, !var_2.xy, !var_1.a, -vec2<i32>(u_input.b.x, -21438i)).c.c), -1i);
    let var_5 = _wgslsmith_f_op_f32(abs(988f));
    var var_6 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5, 1588f, var_5, 1032f) * var_0), _wgslsmith_div_vec4_f32(var_0, var_0)), vec4<f32>(_wgslsmith_f_op_f32(var_6.d.x * var_1.d), _wgslsmith_div_f32(var_6.b, 631f), var_6.b, 314f), vec4<bool>(false, all(var_2.zzy), var_1.a, true)))));
}

