struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(395f, -104f, -740f, 2231f), vec4<f32>(-564f, 294f, 355f, -1299f), vec4<f32>(1656f, -502f, 440f, 348f), vec4<f32>(140f, 1513f, 1109f, 1000f), vec4<f32>(-1589f, -223f, -366f, 519f), vec4<f32>(-942f, 415f, 1271f, -317f), vec4<f32>(1821f, 900f, -700f, -454f), vec4<f32>(-1519f, 1185f, 704f, 1612f), vec4<f32>(-466f, -780f, 491f, 954f), vec4<f32>(-159f, 707f, 149f, -885f), vec4<f32>(-630f, -1101f, 242f, 643f), vec4<f32>(125f, -1944f, 1409f, 264f), vec4<f32>(-1269f, 524f, -1497f, 573f));

var<private> global1: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<u32> {
    let var_0 = global1.b.b.x;
    global0 = array<vec4<f32>, 13>();
    let var_1 = _wgslsmith_f_op_f32(-global1.a.d.x);
    let var_2 = Struct_5(Struct_4(-750f, (any(vec4<bool>(false, false, true, false)) || false) || all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), _wgslsmith_dot_vec2_i32(-vec2<i32>(34192i, u_input.a), global1.a.b.yy) | -2147483647i, ~countOneBits(global1.c.b ^ vec4<i32>(u_input.a, 0i, 1i, u_input.a))), Struct_4(global1.a.c.x, true, u_input.a, ~vec4<i32>(abs(-20693i), countOneBits(1i), 0i, ~u_input.a)), _wgslsmith_dot_vec4_u32(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 76683u), vec4<u32>(40293u, u_input.b, 1u, u_input.b))), vec4<u32>(max(_wgslsmith_mod_u32(20062u, 1u), countOneBits(4188u)), u_input.b, countOneBits(firstTrailingBit(21876u)), u_input.b | u_input.b)), Struct_2(global1.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global1.c.a.x), _wgslsmith_f_op_f32(245f + -449f)), vec4<i32>(u_input.a, 1i, ~(-845i), global1.a.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, global1.b.c.x, var_1)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-666f, 1455f, 144f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1238f, 979f, -1348f) - vec4<f32>(758f, -1765f, var_1, var_1))))), global1.a));
    let var_3 = _wgslsmith_div_vec2_i32(global1.b.b.wy, firstLeadingBit(global1.a.b.wy));
    return ~(countOneBits(abs(reverseBits(vec2<u32>(55319u, var_2.c)))) << (vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 82825u, u_input.b)), vec3<u32>(var_2.c, 8200u, 35974u)), var_2.c ^ 86u) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mod_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(61950u, 44698u), vec2<u32>(u_input.b, u_input.b))), select(vec2<u32>(u_input.b, u_input.b), ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 15705u), vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b)) ^ countOneBits(vec2<u32>(24209u, 30502u))), vec2<bool>(false, !select(false, false, false))));
    var_0 = func_3();
    var var_1 = Struct_2(Struct_1(arg_0.d.zy, vec4<i32>(-_wgslsmith_add_i32(global1.b.b.x, 2147483647i), abs(42971i) | ~arg_0.b.x, global1.a.b.x, _wgslsmith_clamp_i32(max(global1.c.b.x, u_input.a), reverseBits(arg_0.b.x), _wgslsmith_mult_i32(46987i, -18220i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -361f, -313f)), _wgslsmith_f_op_vec3_f32(global1.c.d.zxx + vec3<f32>(arg_0.d.x, global1.b.a.x, -841f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.c), global1.c.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-509f, 1765f, -3337f, 179f) * vec4<f32>(425f, global1.a.c.x, -1526f, arg_0.a.x)))) + vec4<f32>(-2077f, -678f, 801f, _wgslsmith_f_op_f32(trunc(arg_0.c.x))))), arg_0, arg_0);
    global0 = array<vec4<f32>, 13>();
    var_1 = Struct_2(Struct_1(vec2<f32>(-475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(232f * arg_0.d.x))), -(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -1i, var_1.b.b.x, var_1.b.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-912f, -1311f, 1506f)), arg_0.d), Struct_1(vec2<f32>(-1651f, arg_0.a.x), vec4<i32>(1i, ~_wgslsmith_mod_i32(2147483647i, -59709i), ~_wgslsmith_add_i32(-2147483647i, var_1.c.b.x), firstLeadingBit(abs(-32745i))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.a.x - arg_0.d.x), arg_0.c.x), _wgslsmith_f_op_f32(-642f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(round(global1.b.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.c.x, -2071f, 1000f, 332f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0.d, global1.a.d), _wgslsmith_f_op_vec4_f32(var_1.b.d + vec4<f32>(831f, 1000f, -1775f, -367f)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)))))), global1.b);
    return -308f;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_1 {
    global0 = array<vec4<f32>, 13>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.c.c.zz);
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.a), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x)))) - var_0), arg_0.b.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(946f, 812f, 511f)), vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_0.c)), -1237f, 803f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_2.a)) * _wgslsmith_f_op_f32(sign(global1.b.d.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1.a.c.x, var_0.x), -106f)), -_wgslsmith_add_vec4_i32(select(vec4<i32>(1449i, 1i, 54071i, arg_0.a.b.x), arg_0.c.b, vec4<bool>(false, arg_1.x, arg_3.x, arg_1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.b.b.x, u_input.a, arg_0.b.b.x, -1i), arg_2.a.b)), vec3<f32>(arg_0.c.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-680f, 2493f)), _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-971f, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-405f + _wgslsmith_f_op_f32(min(var_0.x, arg_2.b.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.c.a.x)))), _wgslsmith_f_op_f32(floor(-681f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), arg_2.b);
    var var_1 = global1.a.d.zyy;
    global1 = Struct_2(arg_0.a, global1.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.d.x)), _wgslsmith_f_op_f32(round(455f))), vec4<i32>(1i, arg_2.a.b.x, min(-33440i, -2147483647i), arg_2.c.b.x), vec3<f32>(_wgslsmith_f_op_f32(ceil(-247f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), global1.b.c.x), arg_0.a.d));
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(-799f)), global1.a.d.x))), ~arg_0.a.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.d.x, -286f, arg_2.c.d.x) - vec3<f32>(-927f, 1054f, arg_0.b.c.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.b.d.wyw * _wgslsmith_f_op_vec3_f32(-global1.c.c)), vec3<f32>(_wgslsmith_f_op_f32(floor(global1.c.a.x)), _wgslsmith_f_op_f32(abs(-621f)), arg_2.a.c.x), arg_1.x)))), global1.c.d);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_4, arg_3: f32) -> vec3<f32> {
    let var_0 = vec3<u32>(~u_input.b, u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_0.c, 16661u), ~vec3<u32>(arg_0.c, arg_0.c, 1u)) & _wgslsmith_clamp_u32(~arg_0.c, 6266u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.c, 0u), vec2<u32>(u_input.b, u_input.b))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.a, _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-global1.c.d.x))))) * _wgslsmith_f_op_f32(ceil(1000f)));
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.a.a + vec2<f32>(1410f, -1208f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_0.a.a))))), select(countOneBits(~global1.b.b), arg_0.d.b.b, select(select(vec4<bool>(false, arg_1.b, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, arg_2.b, arg_1.b)), select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, false), vec4<bool>(arg_2.b, true, arg_2.b, arg_0.a.b), arg_2.b), !arg_2.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(1268f)), _wgslsmith_div_f32(477f, -1592f))), vec4<f32>(_wgslsmith_f_op_f32(-global1.a.c.x), func_1(Struct_2(Struct_1(vec2<f32>(-471f, arg_0.d.b.c.x), global1.b.b, vec3<f32>(1605f, 1388f, arg_3), vec4<f32>(596f, arg_2.a, -653f, -617f)), Struct_1(vec2<f32>(502f, -2338f), vec4<i32>(arg_0.a.d.x, arg_1.d.x, -7018i, -34374i), arg_0.d.a.c, arg_0.d.b.d), Struct_1(vec2<f32>(-983f, arg_2.a), arg_0.b.d, global1.a.d.xyz, global1.a.d)), vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec2<f32>(704f, arg_1.a), arg_2.d, global1.a.c, global0[_wgslsmith_index_u32(54007u, 13u)]), global1.b, arg_0.d.b), vec2<bool>(false, true)).a.x, func_1(arg_0.d, !vec4<bool>(true, arg_1.b, arg_1.b, arg_0.b.b), Struct_2(Struct_1(vec2<f32>(arg_1.a, 532f), arg_0.d.c.b, arg_0.d.c.d.xyw, global1.a.d), Struct_1(vec2<f32>(global1.a.d.x, -897f), global1.b.b, arg_0.d.c.d.xyz, vec4<f32>(-570f, -317f, -753f, 644f)), Struct_1(arg_0.d.b.a, arg_2.d, vec3<f32>(-671f, 1429f, 1341f), global0[_wgslsmith_index_u32(u_input.b, 13u)])), vec2<bool>(arg_2.b, arg_2.b)).d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-1152f - 1184f))))), global1.b, func_1(arg_0.d, !select(select(vec4<bool>(arg_2.b, arg_0.b.b, arg_1.b, arg_0.b.b), vec4<bool>(arg_0.b.b, true, arg_2.b, false), vec4<bool>(true, arg_2.b, arg_1.b, arg_2.b)), vec4<bool>(true, false, arg_0.b.b, arg_0.b.b), !arg_1.b), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global1.b.a), -arg_1.d, global1.a.c, _wgslsmith_div_vec4_f32(vec4<f32>(-2134f, -1114f, -633f, arg_3), arg_0.d.a.d)), arg_0.d.c, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(343f, 559f) - vec2<f32>(var_1, -1000f)), vec4<i32>(-7064i, arg_1.d.x, arg_2.d.x, 1i), vec3<f32>(667f, arg_2.a, arg_0.a.a), global0[_wgslsmith_index_u32(var_0.x, 13u)])), vec2<bool>(!(!arg_0.a.b), true)));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1959f, _wgslsmith_f_op_f32(-global1.c.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -230f), arg_1.a, _wgslsmith_f_op_f32(min(arg_0.d.a.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1522f * var_1)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global1.c.d, _wgslsmith_f_op_vec4_f32(-arg_0.d.b.d)))));
    global0 = array<vec4<f32>, 13>();
    return vec3<f32>(_wgslsmith_f_op_f32(-func_1(arg_0.d, vec4<bool>(arg_2.b, true | arg_2.b, arg_2.b, false), arg_0.d, select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(true, arg_1.b), vec2<bool>(false, arg_2.b), false))).c.x), _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2274f * -943f)))), _wgslsmith_f_op_f32(-152f * _wgslsmith_f_op_f32(min(-465f, -504f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_5(Struct_4(-747f, any(vec3<bool>(true, true, true)), global1.a.b.x, global1.a.b), Struct_4(global1.c.c.x, true, _wgslsmith_clamp_i32(56470i, 0i, -2147483647i & global1.a.b.x), vec4<i32>(_wgslsmith_add_i32(global1.b.b.x, -10391i), 0i, -2147483647i | global1.c.b.x, ~10572i)), u_input.b, Struct_2(global1.c, func_1(Struct_2(global1.c, global1.b, global1.a), vec4<bool>(false, false, true, false), Struct_2(Struct_1(vec2<f32>(global1.a.c.x, -383f), global1.a.b, global1.b.c, global0[_wgslsmith_index_u32(u_input.b, 13u)]), global1.a, Struct_1(global1.a.d.zx, global1.b.b, global1.c.d.xyw, global1.b.d)), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a.x, global1.b.a.x)), -global1.b.b, global1.b.d.zyy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.d.x, 1394f, 513f, global1.c.d.x))))), Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.c.d.x + global1.a.a.x), _wgslsmith_div_f32(338f, _wgslsmith_f_op_f32(func_2(global1.b))))), false, u_input.a << (reverseBits(u_input.b) % 32u), ~reverseBits(global1.a.b)), Struct_4(177f, false, u_input.a, vec4<i32>(_wgslsmith_sub_i32(~global1.a.b.x, min(-2551i, global1.c.b.x)), 9497i, global1.c.b.x, 52848i)), -496f));
    var var_1 = Struct_4(-761f, ~u_input.a >= u_input.a, -u_input.a, vec4<i32>(global1.a.b.x, select(abs(-1i), ~global1.b.b.x, false) >> (22812u % 32u), 0i, global1.b.b.x));
    var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.c.a.x, 847f, select(var_1.b, var_1.b, var_1.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.d.x) - _wgslsmith_f_op_f32(-global1.c.c.x))) * -1447f), any(!vec2<bool>(true, var_1.a < var_0.x)), ~1i, vec4<i32>(-global1.b.b.x, global1.a.b.x, u_input.a, firstLeadingBit(global1.a.b.x)) & abs(global1.b.b));
    var_1 = Struct_4(global1.a.c.x, var_1.a > _wgslsmith_f_op_f32(583f - var_0.x), var_1.c, firstTrailingBit(var_1.d));
    let var_2 = func_1(Struct_2(Struct_1(func_1(Struct_2(Struct_1(global1.c.d.xz, var_1.d, global1.a.c, global1.a.d), Struct_1(vec2<f32>(1899f, -886f), var_1.d, global1.a.d.wwz, vec4<f32>(-774f, 1070f, var_1.a, 637f)), Struct_1(var_0.yz, vec4<i32>(0i, var_1.d.x, global1.b.b.x, -3763i), vec3<f32>(121f, var_0.x, global1.c.c.x), vec4<f32>(278f, var_1.a, 1325f, var_1.a))), select(vec4<bool>(true, var_1.b, true, var_1.b), vec4<bool>(var_1.b, true, false, var_1.b), var_1.b), Struct_2(Struct_1(var_0.xz, var_1.d, global1.b.c, vec4<f32>(-160f, var_0.x, 703f, var_1.a)), global1.a, global1.b), vec2<bool>(var_1.b, var_1.b)).d.zw, var_1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.b.c, global1.c.c) - _wgslsmith_f_op_vec3_f32(global1.c.c * vec3<f32>(-1017f, var_1.a, global1.b.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4417u, 13u)]))), func_1(Struct_2(Struct_1(global1.a.c.xx, vec4<i32>(-5382i, -1i, -1i, u_input.a), vec3<f32>(var_0.x, -116f, -202f), global0[_wgslsmith_index_u32(64200u, 13u)]), global1.a, Struct_1(vec2<f32>(var_1.a, -1148f), global1.b.b, global1.a.c, global0[_wgslsmith_index_u32(u_input.b, 13u)])), !vec4<bool>(true, false, true, var_1.b), Struct_2(Struct_1(vec2<f32>(var_0.x, var_1.a), vec4<i32>(0i, u_input.a, var_1.c, 2147483647i), global1.c.d.yyw, global1.b.d), func_1(Struct_2(Struct_1(var_0.yz, vec4<i32>(global1.a.b.x, -20522i, var_1.c, 1i), vec3<f32>(var_0.x, var_0.x, 719f), vec4<f32>(1217f, var_1.a, var_0.x, -125f)), global1.b, global1.c), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), Struct_2(Struct_1(global1.c.c.xx, global1.b.b, vec3<f32>(-1000f, global1.b.d.x, 1075f), global0[_wgslsmith_index_u32(u_input.b, 13u)]), Struct_1(var_0.yx, vec4<i32>(2390i, 2147483647i, -29221i, u_input.a), vec3<f32>(global1.b.a.x, var_1.a, 1613f), vec4<f32>(788f, -326f, var_1.a, global1.b.d.x)), global1.c), vec2<bool>(var_1.b, true)), Struct_1(var_0.xy, vec4<i32>(0i, -1i, 1i, -28147i), vec3<f32>(global1.a.d.x, var_0.x, global1.a.a.x), vec4<f32>(global1.a.c.x, 1000f, global1.a.c.x, -1842f))), !select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, var_1.b), false)), func_1(Struct_2(global1.c, Struct_1(vec2<f32>(-400f, 883f), vec4<i32>(u_input.a, var_1.d.x, -1i, var_1.d.x), global1.a.c, vec4<f32>(var_0.x, -357f, var_1.a, 574f)), Struct_1(var_0.yx, vec4<i32>(u_input.a, 2147483647i, -2147483647i, global1.c.b.x), vec3<f32>(global1.c.c.x, var_0.x, 1018f), vec4<f32>(var_0.x, global1.c.c.x, -452f, var_1.a))), select(vec4<bool>(false, var_1.b, false, var_1.b), select(vec4<bool>(var_1.b, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, var_1.b)), select(vec4<bool>(var_1.b, false, var_1.b, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b))), Struct_2(func_1(Struct_2(global1.c, Struct_1(global1.a.a, vec4<i32>(global1.a.b.x, 37749i, 1i, u_input.a), global1.a.c, global1.b.d), Struct_1(global1.b.d.xz, global1.a.b, vec3<f32>(-771f, 598f, 725f), global1.b.d)), vec4<bool>(true, true, true, var_1.b), Struct_2(global1.b, Struct_1(global1.b.d.yx, vec4<i32>(u_input.a, global1.c.b.x, u_input.a, 2147483647i), vec3<f32>(421f, var_0.x, -307f), global0[_wgslsmith_index_u32(u_input.b, 13u)]), global1.a), vec2<bool>(var_1.b, false)), func_1(Struct_2(global1.a, global1.c, Struct_1(var_0.zx, var_1.d, vec3<f32>(var_0.x, var_0.x, var_1.a), vec4<f32>(-135f, var_0.x, var_1.a, var_1.a))), vec4<bool>(var_1.b, false, false, var_1.b), Struct_2(global1.b, Struct_1(global1.b.d.wy, vec4<i32>(-20602i, global1.b.b.x, global1.a.b.x, global1.a.b.x), global1.c.c, global1.c.d), global1.b), vec2<bool>(var_1.b, var_1.b)), Struct_1(var_0.xy, vec4<i32>(var_1.c, var_1.d.x, u_input.a, -1i), global1.a.d.www, vec4<f32>(295f, 579f, -960f, -551f))), !select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, true), vec2<bool>(true, var_1.b)))), vec4<bool>(all(select(select(vec4<bool>(var_1.b, false, false, false), vec4<bool>(true, var_1.b, false, var_1.b), var_1.b), select(vec4<bool>(var_1.b, false, var_1.b, var_1.b), vec4<bool>(true, true, false, var_1.b), vec4<bool>(var_1.b, false, var_1.b, false)), var_1.b)), all(!select(vec2<bool>(true, true), vec2<bool>(var_1.b, false), true)), true, true), Struct_2(func_1(Struct_2(global1.c, global1.c, global1.b), vec4<bool>(1i >= u_input.a, u_input.b > u_input.b, u_input.b >= 92784u, true), Struct_2(global1.a, Struct_1(vec2<f32>(282f, global1.a.a.x), vec4<i32>(2147483647i, u_input.a, global1.a.b.x, 2147483647i), global1.a.c, vec4<f32>(var_0.x, var_1.a, global1.b.d.x, var_0.x)), Struct_1(var_0.xx, vec4<i32>(var_1.d.x, -1i, var_1.d.x, 12983i), vec3<f32>(826f, var_1.a, var_1.a), vec4<f32>(-440f, global1.a.c.x, -154f, -1000f))), !select(vec2<bool>(false, false), vec2<bool>(true, var_1.b), var_1.b)), func_1(Struct_2(func_1(Struct_2(global1.b, Struct_1(vec2<f32>(-686f, 627f), var_1.d, global1.b.c, vec4<f32>(var_1.a, 724f, -1242f, -275f)), global1.b), vec4<bool>(var_1.b, var_1.b, true, true), Struct_2(global1.c, Struct_1(global1.b.c.zz, var_1.d, global1.c.d.zzz, vec4<f32>(var_1.a, 946f, global1.b.d.x, 842f)), global1.b), vec2<bool>(false, var_1.b)), func_1(Struct_2(Struct_1(var_0.zz, vec4<i32>(u_input.a, u_input.a, 2147483647i, global1.a.b.x), global1.c.c, vec4<f32>(var_1.a, var_1.a, -1002f, global1.c.a.x)), global1.a, global1.b), vec4<bool>(var_1.b, true, true, false), Struct_2(global1.a, Struct_1(vec2<f32>(1548f, -989f), vec4<i32>(var_1.c, 58612i, 0i, 49405i), vec3<f32>(407f, var_0.x, 1609f), vec4<f32>(555f, var_0.x, global1.a.a.x, global1.c.a.x)), global1.c), vec2<bool>(true, true)), func_1(Struct_2(Struct_1(vec2<f32>(var_0.x, var_1.a), vec4<i32>(1i, 1i, 1i, u_input.a), vec3<f32>(global1.c.c.x, -513f, -217f), global0[_wgslsmith_index_u32(u_input.b, 13u)]), Struct_1(vec2<f32>(1044f, 675f), vec4<i32>(var_1.c, global1.b.b.x, 1i, -17497i), vec3<f32>(289f, 1072f, var_1.a), global0[_wgslsmith_index_u32(4294967295u, 13u)]), Struct_1(global1.c.a, var_1.d, global1.b.d.zwx, global1.c.d)), vec4<bool>(var_1.b, var_1.b, false, true), Struct_2(global1.b, global1.b, global1.a), vec2<bool>(var_1.b, true))), !vec4<bool>(false, var_1.b, false, var_1.b), Struct_2(func_1(Struct_2(global1.a, Struct_1(global1.a.d.wy, vec4<i32>(45216i, u_input.a, var_1.d.x, 11120i), vec3<f32>(global1.a.d.x, var_0.x, -1000f), global0[_wgslsmith_index_u32(24009u, 13u)]), Struct_1(global1.a.c.xz, global1.b.b, global1.a.c, global0[_wgslsmith_index_u32(73489u, 13u)])), vec4<bool>(var_1.b, true, true, true), Struct_2(Struct_1(vec2<f32>(var_0.x, -1183f), vec4<i32>(-2147483647i, -1i, var_1.d.x, -1i), vec3<f32>(1000f, -1404f, 1065f), vec4<f32>(var_0.x, -1483f, 126f, var_1.a)), global1.c, Struct_1(vec2<f32>(-343f, var_0.x), vec4<i32>(900i, -61668i, global1.c.b.x, global1.c.b.x), global1.a.c, global0[_wgslsmith_index_u32(u_input.b, 13u)])), vec2<bool>(true, false)), Struct_1(vec2<f32>(1000f, 260f), global1.a.b, vec3<f32>(global1.c.c.x, var_0.x, var_1.a), vec4<f32>(var_1.a, 1830f, 1000f, -445f)), func_1(Struct_2(global1.b, Struct_1(vec2<f32>(global1.a.a.x, var_0.x), global1.b.b, vec3<f32>(-125f, global1.b.a.x, 1142f), global1.b.d), Struct_1(vec2<f32>(118f, -985f), var_1.d, vec3<f32>(1503f, var_0.x, var_1.a), global0[_wgslsmith_index_u32(1u, 13u)])), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), Struct_2(Struct_1(vec2<f32>(217f, global1.a.d.x), var_1.d, vec3<f32>(var_0.x, 495f, 1639f), vec4<f32>(1046f, -268f, global1.b.a.x, var_1.a)), global1.b, Struct_1(var_0.xz, global1.c.b, vec3<f32>(var_1.a, -765f, 226f), global1.c.d)), vec2<bool>(var_1.b, true))), vec2<bool>(false, !var_1.b)), global1.b), vec2<bool>(false & var_1.b, false));
    let var_3 = select(max(~(~vec2<u32>(0u, 39599u)), vec2<u32>(~4294967295u, firstLeadingBit(u_input.b))), ~(select(vec2<u32>(u_input.b, 16436u), ~vec2<u32>(16775u, 1u), true) >> (abs(reverseBits(vec2<u32>(1u, 66067u))) % vec2<u32>(32u))), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(var_1.b, var_1.b), select(vec2<bool>(false, var_1.b), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, var_1.b), false), vec2<bool>(true, var_1.b))), vec2<bool>(false, false), vec2<bool>((-4682i ^ global1.a.b.x) <= countOneBits(22080i), all(vec3<bool>(false, true, var_1.b)) || all(vec3<bool>(var_1.b, var_1.b, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~(~var_3.x), 30467u, true), ~var_2.b.zx, _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, select(4294967295u, var_3.x, var_1.b), _wgslsmith_sub_u32(14945u, var_3.x), var_3.x), ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, var_3.x, 0u), firstLeadingBit(vec4<u32>(u_input.b, var_3.x, u_input.b, 21745u)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(max(var_2.b, var_2.b), max(vec4<i32>(u_input.a, 2147483647i, -33734i, u_input.a), global1.b.b)), ~firstLeadingBit(vec4<i32>(1i, -2147483647i, var_1.c, -47829i)), var_2.b) << (~vec4<u32>(var_3.x, max(7442u, 47064u), firstTrailingBit(u_input.b), var_3.x) % vec4<u32>(32u)), global1.b.b.x);
}

