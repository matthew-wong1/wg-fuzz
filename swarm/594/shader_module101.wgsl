struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 173f;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 42387u), vec3<bool>(false, false, true), -640f, true), vec3<f32>(2031f, 737f, -770f), false, vec4<bool>(true, false, false, true)), Struct_2(Struct_1(true, vec3<u32>(0u, 4294967295u, 0u), vec3<bool>(false, true, true), 308f, false), vec3<f32>(253f, 679f, 814f), true, vec4<bool>(false, false, true, true)), Struct_2(Struct_1(true, vec3<u32>(1u, 0u, 5296u), vec3<bool>(false, false, false), -367f, false), vec3<f32>(1148f, -1295f, 1117f), true, vec4<bool>(false, true, false, true)), Struct_2(Struct_1(false, vec3<u32>(4294967295u, 1u, 62395u), vec3<bool>(false, true, true), -614f, false), vec3<f32>(-209f, -794f, 731f), true, vec4<bool>(true, false, true, true)), Struct_2(Struct_1(false, vec3<u32>(4294967295u, 80036u, 8569u), vec3<bool>(false, false, false), 1037f, false), vec3<f32>(946f, 274f, -228f), false, vec4<bool>(true, false, true, false)), Struct_2(Struct_1(true, vec3<u32>(77592u, 4294967295u, 45734u), vec3<bool>(false, false, false), 2216f, true), vec3<f32>(-720f, -1000f, 1000f), false, vec4<bool>(false, true, false, false)), Struct_2(Struct_1(false, vec3<u32>(22462u, 1u, 95952u), vec3<bool>(true, false, true), -2260f, true), vec3<f32>(-1909f, -667f, 270f), false, vec4<bool>(true, true, true, false)), Struct_2(Struct_1(true, vec3<u32>(55835u, 1u, 0u), vec3<bool>(false, true, true), 1173f, true), vec3<f32>(-401f, -552f, -129f), false, vec4<bool>(false, true, false, false)), Struct_2(Struct_1(false, vec3<u32>(0u, 0u, 4294967295u), vec3<bool>(true, true, true), 1613f, false), vec3<f32>(480f, -1000f, -1077f), false, vec4<bool>(true, true, false, true)), Struct_2(Struct_1(false, vec3<u32>(76633u, 16586u, 45666u), vec3<bool>(false, false, false), 1451f, true), vec3<f32>(221f, -1637f, 289f), true, vec4<bool>(true, true, true, false)), Struct_2(Struct_1(true, vec3<u32>(1u, 1u, 0u), vec3<bool>(false, true, false), -511f, true), vec3<f32>(-205f, 414f, -191f), true, vec4<bool>(false, false, false, true)), Struct_2(Struct_1(false, vec3<u32>(0u, 0u, 4294967295u), vec3<bool>(false, true, true), -453f, false), vec3<f32>(-1666f, -293f, 875f), true, vec4<bool>(true, false, false, false)), Struct_2(Struct_1(false, vec3<u32>(73226u, 1u, 1u), vec3<bool>(false, true, true), -995f, false), vec3<f32>(1226f, -1338f, -1042f), true, vec4<bool>(false, true, false, true)), Struct_2(Struct_1(true, vec3<u32>(9035u, 0u, 68283u), vec3<bool>(true, false, true), 1069f, true), vec3<f32>(323f, 524f, -1332f), true, vec4<bool>(false, false, false, true)), Struct_2(Struct_1(true, vec3<u32>(4294967295u, 70121u, 0u), vec3<bool>(true, true, false), 672f, true), vec3<f32>(136f, -2709f, 208f), true, vec4<bool>(true, true, false, false)), Struct_2(Struct_1(true, vec3<u32>(4294967295u, 16611u, 14255u), vec3<bool>(false, true, false), 2724f, true), vec3<f32>(430f, -265f, 792f), false, vec4<bool>(true, false, true, true)), Struct_2(Struct_1(true, vec3<u32>(0u, 79701u, 35480u), vec3<bool>(true, true, false), 560f, false), vec3<f32>(-431f, 1000f, 272f), false, vec4<bool>(true, false, false, false)), Struct_2(Struct_1(false, vec3<u32>(12600u, 25568u, 0u), vec3<bool>(true, true, true), -389f, false), vec3<f32>(-2393f, 159f, -514f), false, vec4<bool>(true, false, false, true)), Struct_2(Struct_1(false, vec3<u32>(79647u, 347u, 80901u), vec3<bool>(true, false, true), -565f, false), vec3<f32>(-105f, -266f, 1000f), true, vec4<bool>(true, false, false, true)), Struct_2(Struct_1(true, vec3<u32>(35424u, 84569u, 4294967295u), vec3<bool>(false, false, true), 554f, false), vec3<f32>(476f, 892f, -842f), false, vec4<bool>(true, true, false, false)), Struct_2(Struct_1(true, vec3<u32>(4294967295u, 1u, 4294967295u), vec3<bool>(true, false, true), 1000f, true), vec3<f32>(-680f, -1034f, 955f), false, vec4<bool>(true, true, false, true)), Struct_2(Struct_1(false, vec3<u32>(100794u, 4294967295u, 0u), vec3<bool>(false, true, false), -1343f, false), vec3<f32>(-1000f, 776f, -391f), false, vec4<bool>(false, false, true, true)), Struct_2(Struct_1(true, vec3<u32>(47765u, 1u, 2017u), vec3<bool>(true, true, true), 478f, true), vec3<f32>(1344f, -1184f, 118f), false, vec4<bool>(false, true, true, true)), Struct_2(Struct_1(true, vec3<u32>(29550u, 1u, 37679u), vec3<bool>(true, true, false), 751f, false), vec3<f32>(-689f, -778f, 1770f), true, vec4<bool>(true, false, true, true)), Struct_2(Struct_1(false, vec3<u32>(0u, 78418u, 1u), vec3<bool>(true, true, true), 795f, true), vec3<f32>(323f, 110f, 856f), false, vec4<bool>(true, true, false, true)), Struct_2(Struct_1(true, vec3<u32>(0u, 1u, 4294967295u), vec3<bool>(true, true, true), 1321f, true), vec3<f32>(601f, -1345f, 1000f), true, vec4<bool>(true, false, true, false)), Struct_2(Struct_1(true, vec3<u32>(1u, 1737u, 1u), vec3<bool>(false, false, true), 1195f, false), vec3<f32>(894f, 902f, -1475f), false, vec4<bool>(false, true, true, true)), Struct_2(Struct_1(true, vec3<u32>(79188u, 4294967295u, 4294967295u), vec3<bool>(false, false, false), -307f, false), vec3<f32>(-136f, 236f, -1410f), true, vec4<bool>(true, true, true, false)), Struct_2(Struct_1(false, vec3<u32>(1u, 4294967295u, 96634u), vec3<bool>(false, false, true), 323f, false), vec3<f32>(-378f, -376f, -1811f), true, vec4<bool>(false, true, true, false)), Struct_2(Struct_1(true, vec3<u32>(0u, 36751u, 1u), vec3<bool>(true, false, false), 657f, false), vec3<f32>(810f, -1459f, -890f), true, vec4<bool>(true, false, true, false)), Struct_2(Struct_1(false, vec3<u32>(1867u, 0u, 1u), vec3<bool>(false, true, true), 224f, true), vec3<f32>(-1519f, -619f, -1276f), true, vec4<bool>(true, false, false, false)), Struct_2(Struct_1(false, vec3<u32>(0u, 44352u, 1u), vec3<bool>(true, false, true), -681f, true), vec3<f32>(-2158f, -888f, 1843f), false, vec4<bool>(false, true, false, false)));

var<private> global2: vec4<i32> = vec4<i32>(-52338i, 35929i, 2147483647i, 392i);

var<private> global3: f32 = 541f;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec4<i32> {
    var var_0 = select(any(arg_0.a.c), false, any(!(!(!vec4<bool>(true, arg_0.a.c.x, true, arg_0.a.a)))));
    var var_1 = !vec3<bool>(arg_0.a.a, arg_0.d.x, !arg_0.c);
    var var_2 = Struct_1(!all(arg_0.a.c), max(vec3<u32>(arg_0.a.b.x, max(4294967295u, _wgslsmith_clamp_u32(1u, 15044u, arg_0.a.b.x)), arg_0.a.b.x), _wgslsmith_mod_vec3_u32(arg_0.a.b, ~vec3<u32>(5237u, arg_0.a.b.x, 4294967295u))), arg_0.a.c, _wgslsmith_f_op_f32(-arg_0.b.x), arg_0.a.d == 1000f);
    return ~_wgslsmith_sub_vec4_i32(vec4<i32>(abs(3906i), -1i, 34851i, countOneBits(-2147483647i)) & _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, u_input.b, 28528i, global2.x), vec4<i32>(2147483647i, global2.x, 2147483647i, -8359i)), select(vec4<i32>(u_input.b, arg_1.x, global2.x, -2147483647i), vec4<i32>(global2.x, u_input.c, arg_1.x, u_input.d.x), true)), _wgslsmith_div_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(40306i, -73589i, 1i, -1i), vec4<i32>(u_input.e.x, -2147483647i, -22634i, arg_1.x))), firstTrailingBit(vec4<i32>(u_input.e.x, arg_1.x, 57627i, global2.x)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(9740i, -2147483647i, u_input.e.x, -2147483647i), vec4<i32>(-2147483647i, -35823i, -28475i, 2147483647i))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = Struct_2(arg_2.a, _wgslsmith_f_op_vec3_f32(arg_2.b + arg_2.b), any(select(vec2<bool>(arg_2.c, u_input.d.x >= 54716i), select(arg_2.a.c.zz, !arg_2.d.wy, true), any(select(arg_2.d.zxx, arg_2.d.xxz, arg_2.a.e)))), vec4<bool>(select(!arg_2.d.x || arg_2.c, any(arg_2.a.c), all(arg_2.d.wz) || any(arg_2.a.c)), false, true, any(!select(vec3<bool>(false, arg_2.d.x, arg_2.d.x), arg_2.a.c, arg_2.d.zyw))));
    let var_1 = Struct_2(arg_2.a, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1000f, var_0.b.x)))), -350f), _wgslsmith_f_op_f32(720f * arg_2.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0.x)))), -1369f))), true, !var_0.d);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.b.zy), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1805f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.d)))), !var_0.c)) + var_1.b.xx);
    var_0 = Struct_2(arg_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-245f, var_1.b.x, var_1.b.x), vec3<f32>(var_0.b.x, arg_2.b.x, -1000f))))), var_0.c, select(!(!var_1.d), vec4<bool>(-global2.x >= 59399i, true, true, true), vec4<bool>(var_1.d.x, true, select(true, var_0.a.b.x <= 1u, var_0.a.d > -423f), var_0.d.x)));
    var var_3 = Struct_1(!(true != all(vec3<bool>(arg_2.a.a, var_1.a.e, false))), arg_2.a.b, vec3<bool>(!all(arg_2.a.c), any(vec4<bool>(any(var_1.d.yx), var_0.a.e, true, true)), !arg_2.c), arg_2.a.d, var_1.a.c.x);
    return select(var_1.d.xw, !(!(!select(var_0.d.wx, vec2<bool>(false, var_1.c), vec2<bool>(true, true)))), true);
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_sub_i32(-firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b, global2.x, -40085i), vec4<i32>(global2.x, u_input.b, -50955i, u_input.b)) << (_wgslsmith_mod_u32(6981u, 74989u) % 32u)), global2.x);
    global3 = 815f;
    var var_1 = ~u_input.a;
    var var_2 = false;
    var_2 = !all(!func_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(390f, -193f))), func_3(global1[_wgslsmith_index_u32(22351u, 32u)], vec3<i32>(global2.x, var_0, var_0)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 29632u, 0u, 4294967295u), vec4<u32>(90394u, 133811u, 1u, 4294967295u)), 32u)]));
    return vec3<bool>(true, any(vec4<bool>(true, all(vec3<bool>(true, true, true)), _wgslsmith_clamp_i32(0i, global2.x, 19440i) >= var_0, !any(vec4<bool>(false, false, true, false)))), true);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = any(func_2());
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, 1359f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.d, -1317f))))), _wgslsmith_f_op_f32(arg_0.d + 1558f));
    let var_2 = var_1.x;
    var var_3 = vec4<u32>(1u, 4294967295u, ~min(~(~6095u), _wgslsmith_dot_vec3_u32(arg_0.b | vec3<u32>(arg_0.b.x, 4294967295u, arg_0.b.x), arg_0.b ^ vec3<u32>(arg_0.b.x, 4294967295u, arg_0.b.x))), arg_0.b.x);
    var var_4 = Struct_2(Struct_1(!(12055i != -global2.x), vec3<u32>(_wgslsmith_clamp_u32(~4294967295u, abs(arg_0.b.x), 0u), 1u, _wgslsmith_add_u32(_wgslsmith_div_u32(var_3.x, 10565u), arg_0.b.x)), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d))), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(144f + arg_0.d), _wgslsmith_f_op_f32(f32(-1f) * -461f)))), var_1.x, -146f), any(!(!(!arg_0.c.yx))), vec4<bool>(false, arg_1, arg_0.c.x, func_2().x));
    return !(!var_4.d.x);
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    global0 = _wgslsmith_f_op_f32(820f + arg_0.x);
    var var_0 = 27936u;
    let var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1658f, -687f, 1000f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2004f, -165f, arg_0.x, -1555f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 691f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-264f, 579f, arg_0.x, 1050f), vec4<f32>(884f, arg_0.x, -1000f, arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-679f, arg_0.x, 219f, arg_0.x) + vec4<f32>(-1108f, -541f, arg_0.x, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(-arg_0.x), 1160f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec4<f32>(-664f, arg_0.x, -1540f, 704f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), -1228f), func_5(Struct_1(true, vec3<u32>(4294967295u, 0u, 43086u), func_2(), _wgslsmith_div_f32(arg_0.x, 154f), arg_0.x <= -326f), all(vec2<bool>(false, true)) & false))), func_5(Struct_1(true, vec3<u32>(1u, abs(0u), ~0u), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), true), 1f, !func_5(Struct_1(true, vec3<u32>(6348u, 4294967295u, 60015u), vec3<bool>(true, true, true), -137f, false), false)), ~_wgslsmith_div_i32(28254i, var_1) != global2.x)));
    var var_3 = global1[_wgslsmith_index_u32(0u, 32u)];
    return StorageBuffer(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2132f, -1817f, 1024f, -817f))))), vec4<f32>(2300f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -869f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f * _wgslsmith_f_op_f32(f32(-1f) * -1447f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(264f)), -150f)))));
    global3 = var_0.x;
    var var_1 = global1[_wgslsmith_index_u32(~1u, 32u)];
    var var_2 = var_1.a.b << (vec3<u32>(20722u, _wgslsmith_mult_u32(var_1.a.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.b.x, var_1.a.b.x), vec2<u32>(1u, 5177u))), max(~45495u, 16878u)) % vec3<u32>(32u));
    let var_3 = global2.yzz;
    var var_4 = _wgslsmith_mult_vec2_i32(-_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(var_3.zz, vec2<i32>(u_input.a, 0i)), vec2<i32>(1i, ~var_3.x)), var_3.yy);
    let var_5 = var_1.a.c.x;
    let x = u_input.a;
    s_output = func_1(var_1.b.yx);
}

