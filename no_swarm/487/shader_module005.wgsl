struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = ~firstTrailingBit(vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(u_input.c, 4294967295u)), max(~arg_1.b.x, arg_1.b.x), abs(~arg_2.b.x), ~(~93729u)));
    let var_1 = vec2<u32>(arg_1.b.x, _wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.x, 19185u), vec2<u32>(arg_2.b.x, 0u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.d.b.x, 1u), arg_2.b.wz) % vec2<u32>(32u)))));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(73440u >> (0u % 32u), min(18455u, u_input.c))), ~_wgslsmith_mult_u32(arg_0.d.b.x, u_input.c));
    var_2 = (_wgslsmith_mod_vec2_u32(var_1, min(abs(vec2<u32>(var_2.x, 0u)), arg_0.e.b.xx)) << ((_wgslsmith_mod_vec2_u32(arg_1.b.xw, vec2<u32>(68478u, 46616u) >> (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u))) << (vec2<u32>(~var_0.x, _wgslsmith_div_u32(0u, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.b.x, abs(arg_1.b.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 78691u), ~arg_1.b.yx, vec2<u32>(var_0.x, var_1.x))), u_input.b);
    var_2 = ~arg_0.d.b.zz;
    return 1u;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(abs(1000f))))), ~vec4<u32>(~(arg_2.b.x | 1u), ~func_3(Struct_2(arg_3.xw, vec4<bool>(true, false, false, true), vec4<u32>(arg_2.b.x, 43023u, 38646u, arg_2.b.x), Struct_1(arg_0, vec4<u32>(u_input.c, 5498u, 1u, u_input.b.x)), Struct_1(vec2<f32>(2345f, arg_2.a.x), vec4<u32>(2883u, arg_2.b.x, 9565u, u_input.c))), arg_2, Struct_1(vec2<f32>(380f, 943f), vec4<u32>(39629u, 4294967295u, 4294967295u, arg_2.b.x))), 1u, _wgslsmith_mod_u32(arg_2.b.x, u_input.b.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(arg_0.x, 381f), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1443f)))))));
    let var_2 = u_input.a;
    var var_3 = arg_2;
    var_0 = Struct_1(arg_0, max(arg_2.b, firstLeadingBit(arg_2.b ^ reverseBits(vec4<u32>(1u, 4294967295u, 1u, arg_2.b.x)))));
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = vec3<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), (~(~arg_1.x) >= arg_1.x) & any(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_1 = arg_2.a.x;
    var var_2 = vec3<u32>(1u, min(4294967295u, arg_0), 4294967295u);
    var_2 = ~reverseBits(arg_2.b.xxy);
    var var_3 = Struct_3(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1314f, arg_2.a.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.a, vec2<f32>(arg_2.a.x, -440f)))), _wgslsmith_f_op_f32(-var_1), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, -564f)) + _wgslsmith_f_op_vec2_f32(arg_2.a - arg_2.a)), vec4<u32>(_wgslsmith_div_u32(4294967295u, arg_2.b.x), 37202u, _wgslsmith_sub_u32(arg_2.b.x, 4294967295u), ~4294967295u)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-169f, 289f, var_1, arg_2.a.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-330f, arg_2.a.x, var_1)), vec3<f32>(-314f, var_1, -398f), select(var_0, vec3<bool>(var_0.x, var_0.x, false), false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1)))) + arg_2.a.x)), abs(arg_1), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(985f, -1000f), vec2<f32>(-853f, 2275f))), _wgslsmith_f_op_vec2_f32(-arg_2.a))) + vec2<f32>(arg_2.a.x, var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -603f)), arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, -648f, -105f, -230f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, -169f, arg_2.a.x, var_1) + vec4<f32>(var_1, -1116f, var_1, 309f))))));
    return arg_2.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = all(!vec3<bool>(true, true, _wgslsmith_sub_i32(u_input.a, arg_0.x) == u_input.a));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(~u_input.c, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, 5151i), vec2<i32>(u_input.a, arg_0.x)), func_2(vec2<f32>(641f, -792f), 181f, Struct_1(vec2<f32>(-364f, -849f), vec4<u32>(u_input.b.x, 0u, 0u, 18727u)), vec4<f32>(-458f, 838f, 570f, 664f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(countOneBits(54515u), _wgslsmith_clamp_vec2_i32(arg_0.xy, vec2<i32>(-1i, 1i), vec2<i32>(0i, arg_0.x)), func_2(vec2<f32>(-645f, -1592f), 1254f, Struct_1(vec2<f32>(-503f, -1000f), vec4<u32>(u_input.b.x, u_input.c, 15471u, 0u)), vec4<f32>(-1000f, 420f, 1570f, 997f)))))), max(~reverseBits(vec4<u32>(u_input.c, 1u, 1u, 12126u)), _wgslsmith_add_vec4_u32(vec4<u32>(22604u, 4294967295u, 0u, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(25951u, 0u, 0u, 1u), vec4<u32>(u_input.c, 20316u, u_input.b.x, 79780u)))) >> (vec4<u32>(func_3(Struct_2(vec2<f32>(-1000f, -1222f), vec4<bool>(false, true, arg_2.x, arg_1.x), vec4<u32>(u_input.b.x, 0u, 1331u, u_input.b.x), Struct_1(vec2<f32>(235f, -2114f), vec4<u32>(u_input.b.x, u_input.b.x, 24572u, 18833u)), Struct_1(vec2<f32>(-2058f, -1454f), vec4<u32>(0u, u_input.c, u_input.c, 55707u))), Struct_1(vec2<f32>(-1663f, 715f), vec4<u32>(46942u, u_input.c, 21475u, u_input.c)), func_2(vec2<f32>(1015f, 757f), -1799f, Struct_1(vec2<f32>(-814f, -939f), vec4<u32>(u_input.b.x, 111630u, u_input.b.x, u_input.b.x)), vec4<f32>(290f, -631f, -277f, 913f))), 4294967295u, ~_wgslsmith_mult_u32(u_input.c, 49754u), select(u_input.c, u_input.c, arg_2.x | false)) % vec4<u32>(32u)));
    var var_2 = ~_wgslsmith_add_u32(reverseBits(u_input.b.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.b.x, var_1.b.x)), vec2<u32>(u_input.c, 83647u) & u_input.b), countOneBits(1u)));
    var var_3 = _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(min(firstLeadingBit(~u_input.c), u_input.c), ~(~var_1.b.x)));
    var_1 = Struct_1(var_1.a, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.a))), _wgslsmith_div_f32(1000f, -911f), func_2(vec2<f32>(-1125f, 820f), -538f, Struct_1(vec2<f32>(-696f, var_1.a.x), var_1.b), vec4<f32>(-1000f, -1148f, -1014f, var_1.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(129f, var_1.a.x, var_1.a.x, var_1.a.x) - vec4<f32>(-1628f, -155f, -1664f, 355f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 927f) + vec4<f32>(var_1.a.x, 165f, 637f, var_1.a.x)))).b ^ firstTrailingBit(~select(vec4<u32>(3623u, 22943u, u_input.b.x, u_input.c), vec4<u32>(7710u, 0u, 0u, var_3.x), arg_1)));
    return Struct_3(Struct_1(_wgslsmith_div_vec2_f32(var_1.a, var_1.a), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 5299u, var_1.b.x), vec3<u32>(u_input.b.x, var_1.b.x, u_input.c)), 886u, var_3.x << (53574u % 32u), _wgslsmith_mult_u32(80908u, var_1.b.x)) & vec4<u32>(max(30891u, var_3.x), var_1.b.x, 22808u & var_3.x, ~7490u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, var_1.a.x, -507f), vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(false, arg_2.x, true)))))))), _wgslsmith_f_op_vec2_f32(func_4(~(~(~1u)), _wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(1i), ~arg_0.x), -_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, arg_0.x), vec2<i32>(-19702i, u_input.a))), Struct_1(vec2<f32>(1000f, _wgslsmith_f_op_f32(select(-635f, var_1.a.x, arg_2.x))), min(min(vec4<u32>(1u, u_input.c, 27533u, u_input.c), vec4<u32>(0u, u_input.b.x, 4294967295u, 0u)), var_1.b)))).x, firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, u_input.a), max(-30707i, arg_0.x), i32(-1i) * -9947i), _wgslsmith_mult_i32(-1i ^ u_input.a, arg_0.x))), func_2(vec2<f32>(var_1.a.x, var_1.a.x), -1255f, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.a)) + var_1.a), var_1.a.x, func_2(_wgslsmith_f_op_vec2_f32(max(var_1.a, var_1.a)), 1231f, func_2(var_1.a, -1000f, Struct_1(var_1.a, vec4<u32>(var_3.x, u_input.c, var_3.x, u_input.b.x)), vec4<f32>(-336f, -364f, -2695f, -1000f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(635f, -269f, var_1.a.x, 2299f), vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-1361f - var_1.a.x), _wgslsmith_div_f32(var_1.a.x, 813f), _wgslsmith_div_f32(var_1.a.x, var_1.a.x), _wgslsmith_f_op_f32(floor(var_1.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(627f, -247f, var_1.a.x, -1736f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-916f, var_1.a.x, 1425f, 2050f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-456f, -131f, var_1.a.x, var_1.a.x), vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -1399f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_1.a.x, 1000f, var_1.a.x), vec4<f32>(-509f, -1000f, var_1.a.x, -380f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<i32>(-21880i, -3489i, -(u_input.a << (4294967295u % 32u)) | 0i, firstTrailingBit(-1i)), select(vec4<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(36886u, u_input.c), vec2<u32>(u_input.b.x, u_input.b.x)) <= u_input.c, select(true, false, true), !all(vec4<bool>(true, true, true, false))), vec4<bool>(all(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, true)), ~u_input.a == 25903i, !any(vec2<bool>(true, false))), select(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), select(true, true, false), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)))), vec3<bool>(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(631f)))) >= 417f, false));
    let var_1 = vec3<bool>(any(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), true, true);
    var_0 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yy)), _wgslsmith_f_op_vec2_f32(var_0.a.a + var_0.a.a)), var_0.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -440f), func_1(vec4<i32>(0i, -2147483647i, var_0.d.x, u_input.a), vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1).a.a.x, var_0.e.a.x) * var_0.b)), var_0.e.a.x, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_0.d.x) >> (u_input.b % vec2<u32>(32u)), vec2<i32>(~var_0.d.x, var_0.d.x | u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-46380i, -29882i), _wgslsmith_div_i32(-1i, -24988i)), reverseBits(var_0.d >> (vec2<u32>(u_input.c, var_0.a.b.x) % vec2<u32>(32u))))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.a.x, 2338f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 450f))), vec4<u32>(_wgslsmith_add_u32(1u, u_input.c | 1u), 58109u, ~16435u >> ((4294967295u << (u_input.c % 32u)) % 32u), ~69968u)));
    var_0 = func_1(vec4<i32>(u_input.a, -func_1(-vec4<i32>(u_input.a, var_0.d.x, 0i, -1i), vec4<bool>(false, true, true, false), !vec3<bool>(var_1.x, true, false)).d.x, var_0.d.x, 3658i), vec4<bool>(any(var_1), false == (~16275u >= func_2(var_0.b.zy, -180f, Struct_1(var_0.e.a, var_0.e.b), vec4<f32>(1760f, var_0.a.a.x, var_0.a.a.x, var_0.c)).b.x), var_1.x, true), select(var_1, vec3<bool>(!var_1.x, !any(vec3<bool>(true, true, var_1.x)), false), var_1));
    var var_2 = select(!var_1, select(select(select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), var_1, vec3<bool>(false, var_1.x, false)), !var_1, 1266f != var_0.e.a.x), vec3<bool>(var_1.x, u_input.c >= u_input.c, !var_1.x), select(!var_1, var_1, var_1)), var_1, select(!var_1, !vec3<bool>(false, var_1.x, var_1.x), var_1)), !var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-306f, -abs(firstTrailingBit(-2147483647i)), ~(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_0.d, vec2<i32>(u_input.a, var_0.d.x)), -vec2<i32>(-2304i, -2147483647i)) << (~(~var_0.a.b.x) % 32u)));
}

