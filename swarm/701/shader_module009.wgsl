struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-994f + 230f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1074f, -1893f)))))));
    let var_1 = select(firstTrailingBit(~(~min(u_input.a.wyw, u_input.c))), countOneBits(vec3<u32>(~4294967295u, 25549u << (firstTrailingBit(15586u) % 32u), ~(u_input.c.x >> (arg_0.a % 32u)))), !(!vec3<bool>(all(vec3<bool>(true, false, true)), true, arg_0.d > u_input.d.x)));
    let var_2 = max(-1i, 0i);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(345f - -1000f))), 1532f))), 192f, select(false, true, true) & select(true, true, true || all(vec3<bool>(true, true, true)))));
    var var_3 = u_input.b.yw;
    return _wgslsmith_f_op_f32(-483f + -370f);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1128f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.x, 2147483647i, vec3<i32>(arg_2.x, 1i, arg_0), u_input.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1161f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1712f)), _wgslsmith_f_op_f32(f32(-1f) * -1332f), _wgslsmith_f_op_f32(f32(-1f) * -597f), 1201f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1640f, 260f, -490f, -275f)))))));
    var var_1 = Struct_1(~(~countOneBits(_wgslsmith_mult_u32(u_input.d.x, 1u))), _wgslsmith_div_i32(abs(-1i), arg_1) & -arg_1, u_input.b.xyx, 1u);
    let var_2 = Struct_1(1u >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_1.d), u_input.c), u_input.d.x) % 32u), u_input.b.x, select(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(32483i, u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.b.wzw, var_1.c), min(var_1.b, arg_1)), ~firstTrailingBit(var_1.c)), abs(var_1.c), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true))), u_input.d.x);
    var var_3 = Struct_1(0u, firstTrailingBit(1i), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(arg_2.x, -2147483647i), i32(-1i) * -40366i), vec3<i32>(-2147483647i, ~(-32326i), abs(arg_1)), _wgslsmith_clamp_vec3_i32(var_1.c, -vec3<i32>(-2147483647i, 22997i, var_1.b), vec3<i32>(u_input.b.x, 2147483647i, 12611i))), vec3<i32>(-arg_0, reverseBits(var_1.c.x | var_1.c.x), ~8285i), any(vec2<bool>(true, true))), 59859u);
    let var_4 = Struct_1(abs(select(9419u, abs(min(var_1.d, 0u)), any(vec2<bool>(true, true)))), var_3.c.x, vec3<i32>(~arg_1, var_1.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, reverseBits(arg_1), -u_input.b.x, -2147483647i), countOneBits(vec4<i32>(var_1.c.x, -35685i, -41875i, -2147483647i)))), ~4294967295u | u_input.a.x);
    return var_0.x;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = ~1155u;
    let var_1 = select(min(vec3<u32>(_wgslsmith_sub_u32(19206u, u_input.a.x), ~0u, 1u), vec3<u32>(var_0, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0, 27823u, 28559u, 0u)), ~u_input.c.x) << (select(select(u_input.d, u_input.d, false), select(u_input.c, u_input.a.zxx, arg_1), vec3<bool>(arg_1, arg_1, true)) % vec3<u32>(32u))), u_input.c, !(false && arg_1));
    var var_2 = Struct_1(u_input.d.x, u_input.b.x, u_input.b.ywy, countOneBits(u_input.a.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(func_2(var_2.b, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c.x, u_input.b.x, u_input.b.x), vec3<i32>(32359i, -6868i, 5666i))), min(-vec2<i32>(var_2.c.x, 1i), vec2<i32>(-40746i, 0i) | u_input.b.zw))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(722f - -301f), var_3) - vec2<f32>(arg_2.x, 1047f)), _wgslsmith_div_vec2_f32(arg_2.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.xx))))) + arg_2.zz);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(abs(~u_input.d.x), ~u_input.d.x, min(u_input.c.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x)) >> (abs(u_input.a.x) % 32u)), -2147483647i, abs(-vec3<i32>(abs(u_input.b.x), -u_input.b.x, abs(u_input.b.x))), 4294967295u);
    let var_1 = ~u_input.b.x >> ((~u_input.c.x & ~_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.d, u_input.d.x), ~u_input.a.x)) % 32u);
    let var_2 = Struct_1(0u, var_1, vec3<i32>(-45677i, var_0.b, countOneBits(-23443i) >> (_wgslsmith_add_u32(var_0.a, var_0.a) % 32u)), ~_wgslsmith_sub_u32(~u_input.d.x, ~select(1u, 30556u, true)));
    var var_3 = u_input.b.x;
    var var_4 = var_2;
    return Struct_1(var_4.a, _wgslsmith_dot_vec3_i32(u_input.b.wxy, -(~var_0.c)), select(select(vec3<i32>(_wgslsmith_clamp_i32(0i, u_input.b.x, var_1), _wgslsmith_add_i32(1i, var_2.c.x), _wgslsmith_add_i32(-2147483647i, var_4.b)), vec3<i32>(_wgslsmith_sub_i32(-30553i, -1i), -var_4.b, firstLeadingBit(u_input.b.x)), !select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), false)), var_4.c & vec3<i32>(~(-56175i), ~(-23483i), var_1), firstTrailingBit(_wgslsmith_add_u32(7801u, 8454u)) >= _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(91350u, u_input.c.x)), 4294967295u, 8527u)), _wgslsmith_dot_vec3_u32(~firstLeadingBit(u_input.a.xyz), u_input.a.xxz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, _wgslsmith_f_op_vec2_f32(func_1(true, true == (_wgslsmith_f_op_f32(round(-1000f)) < -514f), vec3<f32>(_wgslsmith_f_op_f32(ceil(-324f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-648f + -294f) + _wgslsmith_f_op_f32(-1399f - -871f))))));
    var var_1 = func_4(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -176f) * vec2<f32>(-1000f, 656f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(471f, 1000f), vec2<f32>(2233f, -221f), false))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-221f - _wgslsmith_div_f32(1063f, 141f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1286f, -849f, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(189f)), _wgslsmith_f_op_f32(413f + -561f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1148f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(487f, -1004f, -319f, 1084f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(978f, -118f, 828f, 866f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-385f, 1197f, 457f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(332f, -702f, 733f, 1607f)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)))), true)))) * _wgslsmith_div_vec4_f32(vec4<f32>(-2379f, 1234f, _wgslsmith_f_op_vec2_f32(func_1(false, true, _wgslsmith_f_op_vec3_f32(vec3<f32>(1228f, -184f, -432f) - vec3<f32>(296f, -1190f, 1000f)))).x, _wgslsmith_f_op_f32(f32(-1f) * -771f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-280f, 1111f, -860f, 965f))))))));
    var_1 = func_4(any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), false)), var_2.ww);
    var_1 = func_4(!all(vec4<bool>(true, false, false, true)) || ((_wgslsmith_div_f32(408f, var_2.x) < 1005f) || any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_2.yz)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))))) * var_2.xx));
    let var_3 = ~u_input.b.zx;
    var_1 = var_0;
    var_1 = Struct_1(27464u, _wgslsmith_dot_vec3_i32(~var_0.c, vec3<i32>(~(~1i), 0i, -3211i)), ~(~reverseBits(vec3<i32>(var_0.b, var_1.c.x, u_input.b.x))), _wgslsmith_sub_u32(func_4(true, _wgslsmith_f_op_vec2_f32(abs(var_2.xw))).d, var_1.a));
    let var_4 = func_4(true, vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_i32(var_1.c.x, var_1.b), var_1.c.x, -var_3 & -vec2<i32>(10180i, 30601i))), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, var_2.x, firstTrailingBit(-24198i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(-2147483647i | u_input.b.x, var_0.c.x, var_3 ^ vec2<i32>(0i, 20058i))))))));
}

