struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec3<u32> {
    var var_0 = ~(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 0u) & countOneBits(58775u));
    var var_1 = _wgslsmith_f_op_f32(-772f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1876f, -1047f))) + 1583f))));
    var_0 = abs(20294u);
    let var_2 = Struct_1(firstTrailingBit(abs(min(select(arg_0.x, 0i, arg_1), 1i & arg_0.x))), ~_wgslsmith_mult_i32(_wgslsmith_div_i32(-13551i & arg_0.x, _wgslsmith_div_i32(7474i, arg_0.x)), arg_0.x), -arg_0.x, _wgslsmith_clamp_u32((u_input.b << (abs(4294967295u) % 32u)) ^ select(~u_input.c, min(48215u, 1u), arg_1), ~58265u, max(_wgslsmith_dot_vec3_u32(select(vec3<u32>(50538u, 16766u, 33983u), vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<bool>(arg_1, arg_1, true)), ~vec3<u32>(4101u, u_input.b, 1152u)), _wgslsmith_dot_vec3_u32(u_input.a.wxz, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c, u_input.a.x), vec3<u32>(u_input.b, 16495u, 1u))))));
    let var_3 = u_input.a.ww;
    return reverseBits(_wgslsmith_div_vec3_u32(u_input.a.zzy | firstTrailingBit(vec3<u32>(4294967295u, var_2.d, 4294967295u)), u_input.a.zzz));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -615f), 1436f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(263f)), -1000f), -1656f) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-325f)) * -871f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-896f)))), _wgslsmith_f_op_f32(ceil(-705f))));
    let var_1 = Struct_1(_wgslsmith_sub_i32(-1i & arg_0.c, ~arg_0.b), 1i, i32(-1i) * -arg_0.a, ~67540u);
    let var_2 = arg_2.c;
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.yz, var_0.yy, false))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.xx, var_0.yy, true)) + _wgslsmith_f_op_vec2_f32(exp2(var_0.yy)))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1261f, var_0.x), var_0.yy) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-814f, 1198f))))))));
    return _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(~reverseBits(vec4<i32>(1i, 2147483647i, var_3.a, var_1.a))), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-33478i, arg_0.b, var_2, arg_2.b), vec4<i32>(-11639i, arg_0.a, arg_2.b, var_3.a), vec4<i32>(var_3.c, var_1.c, 0i, -23049i)), select(vec4<i32>(abs(arg_2.a), arg_0.b, -2147483647i, 2147483647i), vec4<i32>(-18298i, arg_0.a, arg_2.b, firstLeadingBit(1i)), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, true))), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_3.c, arg_2.b, 0i), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -4875i, 2147483647i, var_1.a), -vec4<i32>(0i, -2147483647i, -1963i, -2147483647i)), -(vec4<i32>(2147483647i, var_2, 23489i, 2147483647i) >> (u_input.a % vec4<u32>(32u))))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    let var_0 = Struct_1(-firstLeadingBit(~(2848i & arg_2.x)), -(arg_0 ^ select(arg_2.x, i32(-1i) * -5437i, true)), arg_2.x, firstLeadingBit(~(~u_input.b)));
    var var_1 = Struct_1(min(2147483647i, arg_2.x & arg_0), arg_2.x, max(2488i, -(~arg_0)), func_3(arg_2.wxw, true).x);
    let var_2 = !(all(vec2<bool>(true, true)) && !(0i != (arg_2.x & arg_0)));
    var_1 = var_0;
    var_1 = Struct_1(2147483647i, 0i, firstTrailingBit(45134i), _wgslsmith_dot_vec2_u32(~(u_input.a.zx << (min(vec2<u32>(var_1.d, u_input.b), vec2<u32>(12067u, var_0.d)) % vec2<u32>(32u))), u_input.a.zw ^ reverseBits(abs(vec2<u32>(u_input.c, u_input.a.x)))));
    return arg_1;
}

fn func_2() -> vec2<i32> {
    let var_0 = -322f;
    let var_1 = 1180f;
    var var_2 = ~func_5(-35780i, ~(~u_input.a.x), func_4(Struct_1(1i, 2573i, select(-1i, 2147483647i, true), ~24226u), func_3(vec3<i32>(21717i, 0i, -2147483647i), true) >> (u_input.a.zwz % vec3<u32>(32u)), Struct_1(~(-2147483647i), _wgslsmith_sub_i32(2424i, 22138i), 1i, 1u), vec2<u32>(u_input.a.x >> (u_input.b % 32u), 0u)));
    let var_3 = u_input.a;
    let var_4 = Struct_1(~(-1i), max(_wgslsmith_div_i32((i32(-1i) * -34206i) >> (min(u_input.c, 1u) % 32u), 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(select(-8233i, 52829i, false), _wgslsmith_add_i32(-23347i, -72000i), -8697i), max(vec3<i32>(28713i, 0i, 23034i), vec3<i32>(-72669i, 1i, -9099i)))), _wgslsmith_dot_vec4_i32(func_4(Struct_1(-22241i, 2147483647i, 1i, var_3.x), ~vec3<u32>(u_input.c, 7811u, var_3.x), Struct_1(19107i, -5464i, -24844i, u_input.a.x), _wgslsmith_mult_vec2_u32(u_input.a.yx, var_3.wy)), ~vec4<i32>(38542i, 57535i, -1i, -22461i)) | _wgslsmith_add_i32(1i, func_4(Struct_1(54529i, 7880i, 39169i, 35859u), u_input.a.wxw, Struct_1(-2147483647i, -16359i, 34675i, 46908u), vec2<u32>(var_3.x, 1u)).x), ~(17443u & _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.a.x, var_3.x), vec3<u32>(68407u, 16958u, var_3.x))));
    return vec2<i32>(max(i32(-1i) * -1i, 1i), var_4.b);
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    let var_1 = vec2<bool>(true, _wgslsmith_sub_u32(~firstTrailingBit(1u), u_input.b) <= u_input.c);
    let var_2 = ~func_2();
    let var_3 = Struct_1(func_4(Struct_1(var_2.x, -2147483647i, var_2.x, reverseBits(u_input.a.x | u_input.b)), ~u_input.a.zzx << (vec3<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), ~3786u, 11143u) % vec3<u32>(32u)), Struct_1(~(-var_2.x), 57502i, func_4(Struct_1(var_2.x, var_2.x, 1i, 31869u), max(u_input.a.yxx, u_input.a.zxw), Struct_1(var_2.x, var_2.x, -3214i, 89765u), ~u_input.a.xw).x, 1u), ~u_input.a.xy).x, 1i, ~(~var_2.x), func_3(firstTrailingBit(max(vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(1i, var_2.x, 37273i)) & vec3<i32>(-3532i, -89888i, var_2.x)), var_1.x).x);
    var var_4 = Struct_1(abs(var_2.x | _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.x, -2147483647i), vec3<i32>(4713i, var_2.x, var_3.c))), min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_3.b, var_3.b & var_3.a), -reverseBits(vec3<i32>(-27754i, var_3.b, -36069i))), var_2.x), var_3.a, ~u_input.a.x);
    return Struct_1(var_3.b, _wgslsmith_mult_i32(1i, -var_4.c), min(_wgslsmith_mult_i32(func_2().x, -2147483647i), _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_4.a, var_4.a), vec3<i32>(2147483647i, -3360i, var_2.x))), ~firstLeadingBit(vec3<i32>(7189i, 0i, 0i)))), ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a.xxx, u_input.a.wyw), _wgslsmith_sub_u32(var_3.d, 8423u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_div_u32(countOneBits(_wgslsmith_mult_u32(u_input.a.x, u_input.c)), u_input.b), ~4294967295u) & abs(u_input.b);
    let var_1 = 48080u;
    var var_2 = func_1();
    let var_3 = -var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(225f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-138f * -1269f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-368f))))), abs(vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, -46487i, -2147483647i, var_2.c), vec4<i32>(var_2.b, -1i, var_2.c, var_3), vec4<bool>(true, false, true, false)), func_4(Struct_1(75830i, 2147483647i, var_2.a, u_input.b), vec3<u32>(var_1, var_2.d, var_0), Struct_1(var_2.c, var_3, 0i, var_2.d), vec2<u32>(var_2.d, 21575u))), 22171i)), countOneBits(u_input.a.xzw), vec4<u32>(~(~u_input.a.x & ~1u), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(var_2.d, 17726u), 0u), var_2.d, ~_wgslsmith_add_u32(1u, 25421u)), reverseBits(abs(vec2<i32>(func_1().a, abs(var_2.c)))));
}

