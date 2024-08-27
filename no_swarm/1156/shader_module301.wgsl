struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_4) -> i32 {
    return arg_0.b.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = 3627i;
    var var_1 = Struct_4(i32(-1i) * -2147483647i, ~firstLeadingBit(vec2<i32>(38688i, var_0 >> (11728u % 32u))), firstTrailingBit(min(0u, abs(18107u)) | arg_1.c.x));
    var_1 = Struct_4(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-15828i, ~22153i), var_0, 1i), ~(reverseBits(var_1.b) << (min(arg_1.c.xy, vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u))) & var_1.b, var_1.c << ((_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, arg_3.x), u_input.a.wzw) << (arg_1.c.x % 32u)) % 32u));
    var var_2 = select(vec3<i32>(-70664i, 0i, _wgslsmith_mult_i32(-arg_1.b.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, arg_2.x, -1i, -9149i), vec4<i32>(0i, var_0, var_1.a, var_1.b.x)))), vec3<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(1770i, -23639i), -arg_1.b.b)), var_1.b.x, _wgslsmith_add_i32(0i, ~_wgslsmith_div_i32(17704i, -15464i))), true);
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1233f, 515f))))), arg_1.a.a.x, arg_1.e.c), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(_wgslsmith_div_i32(-1i, 12703i), var_0, max(-88292i, 15875i), 73105i)), ~_wgslsmith_sub_vec4_i32(-vec4<i32>(var_2.x, arg_2.x, arg_1.a.b, var_0), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -1i, var_2.x, var_0), vec4<i32>(2147483647i, var_2.x, -49030i, arg_2.x)))), -2078f);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(-arg_1.a.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-430f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.c), var_3.a.x)))), any(vec3<bool>(true, arg_0.x, _wgslsmith_f_op_f32(141f * arg_1.b.c) == _wgslsmith_f_op_f32(trunc(-860f))))));
}

fn func_1() -> Struct_1 {
    var var_0 = 4294967295u;
    var_0 = ~14674u;
    let var_1 = _wgslsmith_dot_vec3_i32(-vec3<i32>(min(func_2(Struct_4(0i, vec2<i32>(-21771i, 7302i), 4294967295u)), _wgslsmith_mult_i32(1i, -1i)), firstTrailingBit(~(-2147483647i)), firstLeadingBit(-6327i)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, -18615i, -_wgslsmith_clamp_i32(-2147483647i, 33654i, 1i))));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-370f)) + _wgslsmith_f_op_f32(trunc(309f))), _wgslsmith_f_op_f32(-1185f + _wgslsmith_f_op_f32(f32(-1f) * -1031f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), Struct_2(Struct_1(vec3<f32>(352f, 681f, 327f), var_1, -461f), Struct_1(vec3<f32>(1053f, 1000f, 1445f), 1i, -1000f), vec3<u32>(62729u, 24994u, u_input.a.x), -1i, Struct_1(vec3<f32>(252f, -648f, -1425f), -1i, -698f)), vec2<i32>(1i, 1i), ~u_input.a.zz))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1112f, 1347f, false)), -1578f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1, var_1, -1i, 2147483647i), ~vec4<i32>(47620i, var_1, var_1, 40794i)), -(~var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(223f - 442f), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, false), Struct_2(Struct_1(vec3<f32>(-330f, 247f, -1616f), 23932i, -397f), Struct_1(vec3<f32>(1834f, -979f, 1000f), var_1, -112f), u_input.a.zzw, 29152i, Struct_1(vec3<f32>(752f, 440f, -1457f), 0i, -799f)), vec2<i32>(1i, -2147483647i), u_input.a.yz)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1260f)) * -1018f)))));
    var var_3 = all(select(vec2<bool>(!(var_2.b <= var_1), 1000f == _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), Struct_2(Struct_1(vec3<f32>(var_2.c, var_2.a.x, var_2.c), var_1, 1904f), Struct_1(var_2.a, 0i, 210f), u_input.a.xwz, var_1, Struct_1(vec3<f32>(-1651f, var_2.a.x, var_2.a.x), var_1, var_2.c)), vec2<i32>(56548i, var_1), vec2<u32>(u_input.a.x, 0u)))), !vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, true)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2.a)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(551f, -747f, var_2.a.x)))) * vec3<f32>(708f, -1788f, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true), Struct_2(Struct_1(vec3<f32>(var_2.c, -336f, 290f), var_1, var_2.a.x), Struct_1(var_2.a, 18627i, -1000f), vec3<u32>(u_input.a.x, 50658u, u_input.a.x), -35440i, Struct_1(vec3<f32>(208f, -463f, -438f), var_1, var_2.a.x)), vec2<i32>(-2147483647i, -2147483647i), vec2<u32>(u_input.a.x, u_input.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.c + var_2.a.x), _wgslsmith_f_op_f32(-var_2.c), true)), 1f), !any(vec2<bool>(true, true)))), max(firstLeadingBit(0i), var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(768f)) - _wgslsmith_f_op_f32(1f - 1000f)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    var var_0 = Struct_3(!(!(!arg_0.a)));
    var_0 = arg_0;
    var_0 = Struct_3(vec4<bool>(var_0.a.x, false, !var_0.a.x, var_0.a.x));
    return arg_0.a.x;
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: f32) -> Struct_4 {
    let var_0 = max(-2147483647i, -(~1680i) << ((u_input.a.x >> (~(~arg_0) % 32u)) % 32u));
    let var_1 = Struct_3(arg_1);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(410f, arg_2, arg_2, arg_2))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, arg_2, -456f, -1152f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-922f, 726f, -219f, arg_2) + vec4<f32>(-299f, 1322f, arg_2, arg_2))))));
    var var_3 = var_2.x;
    var var_4 = Struct_2(func_1(), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f * var_2.x), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, false), Struct_2(Struct_1(vec3<f32>(var_2.x, 918f, arg_2), var_0, -2206f), Struct_1(var_2.xww, 8506i, arg_2), u_input.a.zyw, 57580i, Struct_1(vec3<f32>(850f, 1000f, -659f), var_0, 251f)), vec2<i32>(1i, var_0), u_input.a.yw)), 220f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_2.xyy)))), var_0, 259f), vec3<u32>(firstTrailingBit(87251u), u_input.a.x, firstTrailingBit(arg_0)), var_0, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, var_2.x, arg_2)))), select(2147483647i, ~(-1i ^ var_0), any(arg_1) && any(var_1.a.zz)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f)), var_2.x))));
    return Struct_4(~var_0, abs(vec2<i32>(-var_0, -var_4.b.b)), ~_wgslsmith_sub_u32(1u, var_4.c.x) >> (24630u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_add_u32(42888u | (u_input.a.x & 0u), u_input.a.x));
    var var_1 = func_5(select(~(~reverseBits(u_input.a.x)), var_0, func_4(Struct_3(vec4<bool>(true, true, true, true)), func_1(), Struct_4(0i << (var_0 % 32u), vec2<i32>(-1i, 13140i), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 8828u), vec2<u32>(u_input.a.x, 133143u))), Struct_1(vec3<f32>(-800f, -891f, 1000f), ~(-12828i), -1000f))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(false, false, true, false)), false, true, all(vec3<bool>(false, false, true))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, false), true)), 451f);
    var var_2 = u_input.a.zwy;
    var var_3 = !select(vec2<bool>(true, false), !vec2<bool>(true, any(vec2<bool>(false, false))), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(true, true))));
    var var_4 = -(~vec3<i32>(-func_5(0u, vec4<bool>(var_3.x, true, var_3.x, false), 333f).a, _wgslsmith_add_i32(var_1.b.x, -var_1.a), var_1.b.x));
    var_2 = u_input.a.wzw;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy >> (~(~u_input.a.xy | abs(vec2<u32>(var_0, var_2.x))) % vec2<u32>(32u)));
}

