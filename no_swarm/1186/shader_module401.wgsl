struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 20454i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    global1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(~u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 1i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), u_input.c.x), vec4<i32>(0i, -17385i, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c.x), u_input.c.zx))) >> (select(abs(countOneBits(vec4<u32>(64348u, u_input.a, u_input.a, 0u))), countOneBits(select(vec4<u32>(u_input.a, u_input.b.x, 1u, u_input.b.x), vec4<u32>(0u, 0u, u_input.a, u_input.b.x), false)), false) % vec4<u32>(32u)));
    var var_0 = countOneBits(~0u);
    var var_1 = _wgslsmith_clamp_i32(u_input.c.x, ~(-2147483647i), firstLeadingBit(u_input.c.x));
    let var_2 = _wgslsmith_f_op_f32(-1332f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(343f * -1497f)))))));
    let var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(~_wgslsmith_add_vec3_i32(u_input.c.wyz, vec3<i32>(u_input.c.x, 15386i, 64555i)), vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x, -38975i, -28782i), ~62753i, -3178i), vec3<i32>(u_input.c.x, -27374i, -55602i) & u_input.c.zzx) >> (max(u_input.b, ~(~vec3<u32>(1u, u_input.a, 26205u))) % vec3<u32>(32u)), u_input.c.zwx, min(_wgslsmith_clamp_vec3_i32(-vec3<i32>(62720i, u_input.c.x, 36183i), u_input.c.xyx, reverseBits(u_input.c.ywz)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -u_input.c.xwz, u_input.c.xxz)));
    return var_3.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: f32) -> Struct_3 {
    global1 = func_3();
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(300f, arg_2, 493f)) * vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), 1121f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, -2055f, 374f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 868f)), vec3<bool>(true, all(vec2<bool>(false, true)), true))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-555f - 875f), -494f, 1525f))));
    var_0 = -645f;
    global0 = abs(arg_1.x);
    return Struct_3(arg_1.xz, Struct_2(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0, arg_0, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(arg_0.x, -978f, var_1.x, arg_2)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-791f, -155f, 557f, arg_0.x))))), all(vec2<bool>(true, ~(-14869i) > -arg_1.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> u32 {
    global0 = firstTrailingBit(-(~arg_1.a.x >> (abs(1u) % 32u)));
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.b.yz, ~u_input.b.xx) & ~_wgslsmith_mod_vec2_u32(abs(u_input.b.yx), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.yy)), vec2<u32>(32355u, ~1u), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(4294967295u, u_input.b.x | 1u), reverseBits(50652u)), vec2<u32>(~max(58554u, u_input.a), ~abs(38208u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x))), arg_1.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1445f + arg_1.c.x))))), arg_1.c));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-arg_1.c.x)), -1082f, -2340f, _wgslsmith_f_op_f32(-183f + _wgslsmith_f_op_f32(-627f + 1000f)))), ~(~(min(vec3<i32>(arg_1.a.x, 0i, 2147483647i), u_input.c.zwy) >> (_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(1u, u_input.b.x, var_0.x)) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-620f)))))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1514f, 227f, var_1.x, var_1.x)), vec3<i32>(u_input.c.x, u_input.c.x, 0i), _wgslsmith_f_op_f32(-var_1.x)).c.x * arg_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -343f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_2.c.x + 625f))))));
    return ~firstTrailingBit(~(~var_0.x)) ^ u_input.a;
}

fn func_5(arg_0: u32) -> Struct_2 {
    let var_0 = vec4<bool>(any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(any(vec2<bool>(false, true)), false, false, false), !func_2(vec4<f32>(450f, 269f, -225f, -1431f), u_input.c.wzy, 1515f).d)), select((1u << (arg_0 % 32u)) ^ 1u, 85137u, !func_2(vec4<f32>(594f, -532f, 229f, 1193f), vec3<i32>(u_input.c.x, -1i, 0i), -1000f).d) >= _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(5870u), ~55042u, _wgslsmith_mult_u32(arg_0, arg_0), firstTrailingBit(u_input.b.x)), ~vec4<u32>(arg_0, arg_0, 0u, arg_0)), any(func_2(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(633f, -2806f, -198f, 1169f) - vec4<f32>(626f, 319f, 194f, 582f)), _wgslsmith_div_vec3_i32(u_input.c.yzx, u_input.c.xzw), _wgslsmith_f_op_f32(-497f + -569f)).c, select(firstLeadingBit(u_input.c.yzz), vec3<i32>(u_input.c.x, u_input.c.x, -1i) >> (u_input.b % vec3<u32>(32u)), true), 118f).b.a), !(select(true, true, true) || true));
    let var_1 = Struct_2(var_0.xz, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-383f, _wgslsmith_f_op_f32(886f + -736f), _wgslsmith_f_op_f32(select(107f, 1682f, var_0.x)), func_2(vec4<f32>(285f, -531f, -319f, 323f), u_input.c.wwz, 623f).c.x)), firstLeadingBit(vec3<i32>(u_input.c.x, u_input.c.x ^ u_input.c.x, 11769i)), 658f).b.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -537f)))) + -258f));
    let var_3 = Struct_1((u_input.a >> (func_4(var_0.zwz, func_2(vec4<f32>(var_2, var_2, 1119f, var_2), vec3<i32>(-2147483647i, -4586i, 7305i), -115f)) % 32u)) << (_wgslsmith_mult_u32(1u, arg_0) % 32u), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(~18928u, ~4294967295u), ~1u), arg_0));
    var var_4 = _wgslsmith_f_op_vec3_f32(-func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, var_2, -205f, 1000f), vec4<f32>(var_2, 511f, 1000f, -1000f), vec4<bool>(var_0.x, var_1.a.x, true, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-586f, var_2, -1003f, var_2)))), !var_1.b.x)), min(reverseBits(vec3<i32>(u_input.c.x, -14136i, 1i)), firstLeadingBit(select(vec3<i32>(0i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<bool>(false, true, false)))), -533f).c.wxw);
    return var_1;
}

fn func_1() -> bool {
    global0 = 2147483647i;
    global1 = ~(-5639i);
    let var_0 = func_5(_wgslsmith_div_u32(0u, ~func_4(vec3<bool>(false, false, true), func_2(vec4<f32>(-579f, -1496f, -1009f, -1026f), u_input.c.zyz, -670f))));
    let var_1 = Struct_1(0u, reverseBits(firstTrailingBit(u_input.b.yz)));
    global1 = _wgslsmith_dot_vec2_i32(u_input.c.yx, ~(~u_input.c.xw));
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1637f - _wgslsmith_f_op_f32(f32(-1f) * -1066f)))), -2558f, _wgslsmith_f_op_f32(round(-1000f)), -401f), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(-u_input.c.yww, vec3<i32>(17958i, -2147483647i, 2322i)), _wgslsmith_f_op_f32(-1052f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-168f, 1946f)), -1259f)))))).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(any(vec2<bool>(true, true)), false, false), vec3<bool>(true, any(vec4<bool>(false, true, false, false)), true), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, false), false)), vec3<bool>(all(vec2<bool>(true, func_1())), true, any(func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(928f, 1329f, 1831f, -621f))), -vec3<i32>(-2147483647i, 35494i, u_input.c.x), _wgslsmith_f_op_f32(sign(-449f))).b.b)), !select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), !any(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1599f, 328f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1389f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1588f, 908f)))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(798f, _wgslsmith_f_op_f32(-var_1.x), 2352f, -418f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-621f, -1292f, -359f, 1457f), vec4<f32>(var_1.x, -525f, 1237f, -841f)), vec4<f32>(-712f, 2144f, var_1.x, 1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-880f, var_1.x))))), _wgslsmith_f_op_f32(var_1.x + var_1.x), 351f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + _wgslsmith_f_op_f32(step(-911f, var_1.x))))));
    var var_3 = var_0.x;
    global0 = u_input.c.x;
    var var_4 = func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1110f), var_1.x, -835f, var_1.x), countOneBits(_wgslsmith_mod_vec3_i32(u_input.c.zww, _wgslsmith_div_vec3_i32(u_input.c.xwy | vec3<i32>(0i, 2147483647i, -26520i), select(u_input.c.xyy, u_input.c.zxw, var_0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))));
    global1 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(2147483647i, -abs(8265i), -(16410i >> (u_input.b.x % 32u))), _wgslsmith_div_vec3_i32(countOneBits(u_input.c.wyx), vec3<i32>(var_4.a.x, var_4.a.x, _wgslsmith_mult_i32(-54505i, 0i))), any(vec3<bool>(!var_0.x, false, any(vec3<bool>(var_0.x, var_4.b.a.x, var_4.d))))));
}

