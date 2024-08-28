struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    var var_0 = u_input.b.x;
    var var_1 = vec2<u32>(6780u, ~arg_0);
    var_0 = (-_wgslsmith_dot_vec4_i32(vec4<i32>(35218i, u_input.b.x, u_input.b.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.b.x, 2147483647i, u_input.d.x) & vec4<i32>(u_input.b.x, u_input.d.x, -7873i, u_input.d.x)) ^ ~_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-5400i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(23902i, u_input.b.x, u_input.d.x, u_input.b.x)))) ^ (i32(-1i) * -u_input.b.x);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1145f, -644f))))))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> vec3<f32> {
    let var_0 = u_input.c.zz;
    var var_1 = firstTrailingBit(~var_0);
    var var_2 = Struct_1(vec2<i32>(arg_0.a.x, arg_2.x), 212f);
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 1033f), vec2<f32>(134f, var_2.b))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-449f, -305f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(235f, arg_1) * vec2<f32>(-1297f, -1697f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.b, -574f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-216f - -646f), var_2.b)))))));
    let var_4 = select(select(!vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), true, false, false)), select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, all(vec3<bool>(false, true, true)), var_1.x != var_0.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(true, false, false)), vec4<bool>(true, true, false, true), (u_input.a.x >= var_1.x) != all(vec3<bool>(true, false, true))), true), (~31294u ^ u_input.c.x) != 14734u);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b, arg_1, -1000f), vec3<f32>(-1419f, var_3.x, -636f), var_4.xww)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, 1171f, -1170f) - vec3<f32>(-520f, -272f, var_3.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2202f, var_3.x, -331f) * vec3<f32>(-227f, -149f, -157f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, var_2.b, -1000f) + vec3<f32>(var_2.b, -2520f, arg_1))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2315f, -504f, 853f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -750f, var_3.x) + vec3<f32>(-379f, var_3.x, var_2.b))))));
}

fn func_4(arg_0: vec3<f32>) -> bool {
    var var_0 = Struct_1(-vec2<i32>(_wgslsmith_mult_i32(~(-16865i), -u_input.d.x), select(~u_input.b.x, u_input.b.x & 19969i, 0u < u_input.c.x)), arg_0.x);
    let var_1 = Struct_1(vec2<i32>(-51038i, -(~u_input.b.x)), var_0.b);
    let var_2 = var_1;
    var var_3 = _wgslsmith_mult_vec2_u32(u_input.c.xy, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 25411u), u_input.a), u_input.a));
    var var_4 = true;
    return any(!vec4<bool>(!all(vec2<bool>(true, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, var_3.x, var_3.x), vec4<u32>(0u, var_3.x, var_3.x, 75903u)) > ~17677u, true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), true))));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> bool {
    var var_0 = Struct_1(~u_input.d.xx & (-firstTrailingBit(vec2<i32>(-16453i, u_input.b.x)) << (_wgslsmith_add_vec2_u32(~u_input.a, arg_1.zx) % vec2<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(987f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0, -1964f), _wgslsmith_f_op_f32(max(1172f, arg_0))))), _wgslsmith_f_op_f32(-arg_0))));
    let var_1 = arg_1.x;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -721f));
    let var_2 = vec4<bool>(false, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-528f, -743f, arg_0), vec3<f32>(arg_0, arg_0, arg_0), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-178f, arg_0, -474f))) * _wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_0.a, var_0.b), _wgslsmith_f_op_f32(func_2(u_input.a.x, vec2<bool>(false, false))), abs(vec3<i32>(-1i, var_0.a.x, -11942i)))))), all(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, false, true, false), true), vec4<bool>(any(vec3<bool>(true, false, false)), func_4(vec3<f32>(-1000f, var_0.b, -313f)), false, true))), true);
    var_0 = Struct_1(-(~(-vec2<i32>(var_0.a.x, -34315i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1383f * var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1116f)))))));
    return u_input.d.x <= 14989i;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.c;
    return Struct_1(_wgslsmith_mult_vec2_i32(abs(~u_input.b) >> (vec2<u32>(~17723u, _wgslsmith_div_u32(var_0.x, u_input.c.x)) % vec2<u32>(32u)), u_input.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * 439f)), _wgslsmith_f_op_f32(ceil(arg_0.x))))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = u_input.a ^ (abs(vec2<u32>(~u_input.c.x, 1u)) >> (u_input.a % vec2<u32>(32u)));
    var var_1 = Struct_1(min(reverseBits(-vec2<i32>(arg_1.x, 16816i)), u_input.d.xx), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(select(-arg_0.a, reverseBits(arg_1.xx), all(vec2<bool>(false, true))), 478f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1615f))), countOneBits(select(countOneBits(vec3<i32>(-22973i, u_input.d.x, -37673i)), vec3<i32>(0i, 25219i, u_input.d.x), vec3<bool>(true, true, true))))).x);
    let var_2 = arg_0;
    let var_3 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-568f, -1317f))))) + vec2<f32>(_wgslsmith_f_op_f32(689f * var_1.b), -1361f)), vec4<bool>(true, true, true, true), func_5(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1822f, var_2.b)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2672f, 1471f))))))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), false), var_2));
    var_1 = arg_0;
    return Struct_1(_wgslsmith_clamp_vec2_i32(func_5(vec2<f32>(-647f, _wgslsmith_f_op_f32(f32(-1f) * -1139f)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), arg_0).a, vec2<i32>(u_input.b.x, 1i), firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(var_1.a.x, var_2.a.x), var_2.a.x))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_mult_vec2_i32(-vec2<i32>(11181i, var_2.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.a.x, var_3.a.x), u_input.d.xy)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1683f, var_3.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1381f * var_1.b), _wgslsmith_f_op_f32(ceil(-487f)))), ~vec3<i32>(-2147483647i, var_1.a.x, 1i))).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var_0 = _wgslsmith_div_i32(u_input.b.x, select(-u_input.b.x, u_input.d.x, true));
    let var_1 = func_6(func_5(vec2<f32>(826f, 190f), vec4<bool>(u_input.b.x != ~1i, select(true, true, func_1(-152f, u_input.c)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false))), _wgslsmith_sub_i32(u_input.b.x, -30480i) <= -1i), Struct_1(u_input.d.yy, -310f)), u_input.d);
    var_0 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(988f, 708f, var_1.b, var_1.b) - vec4<f32>(-200f, var_1.b, var_1.b, -1927f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b, var_1.b, 1634f, var_1.b)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b, var_1.b, var_1.b, -1009f), vec4<f32>(var_1.b, var_1.b, 556f, 162f)))))), vec4<f32>(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(var_1.b - 1189f)), var_1.b, _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(f32(-1f) * -944f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(854f + var_1.b))), false)));
    var var_3 = ~(select(var_1.a, ~u_input.d.zy, select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true)) << (u_input.c.zx % vec2<u32>(32u)));
    let var_4 = Struct_1(-u_input.b, _wgslsmith_f_op_f32(max(-1399f, var_1.b)));
    var var_5 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.b)))));
    let var_6 = _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(trunc(807f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f) - _wgslsmith_f_op_f32(-303f * var_4.b)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_5.a, 233f), _wgslsmith_f_op_f32(step(382f, 699f)), firstTrailingBit(u_input.d))).x))));
    let x = u_input.a;
    s_output = StorageBuffer(357f, ~1u);
}

