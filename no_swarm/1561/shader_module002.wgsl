struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-259f, 1834f, -1931f), vec3<f32>(-472f, 1988f, 134f), vec3<f32>(-991f, -889f, 170f), vec3<f32>(1601f, -1035f, -1260f), vec3<f32>(1475f, -1262f, 1656f), vec3<f32>(-887f, 1010f, 889f), vec3<f32>(230f, 806f, 1106f), vec3<f32>(1385f, 1716f, -1356f), vec3<f32>(-186f, 180f, 445f), vec3<f32>(1822f, -631f, -664f), vec3<f32>(358f, 719f, -2516f), vec3<f32>(-1116f, -3126f, 225f), vec3<f32>(271f, 662f, 865f), vec3<f32>(1081f, -120f, -488f), vec3<f32>(-2238f, 430f, 576f), vec3<f32>(-436f, -927f, -264f), vec3<f32>(-1000f, 1270f, -139f), vec3<f32>(1109f, 749f, -1000f), vec3<f32>(3151f, 212f, -952f), vec3<f32>(1000f, 852f, 2567f), vec3<f32>(-228f, 497f, -300f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> vec4<bool> {
    global0 = array<vec3<f32>, 21>();
    global0 = array<vec3<f32>, 21>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = u_input.c.xw;
    let var_2 = Struct_1(select(select(false, !arg_3, true) | false, true && arg_3, arg_1.a), ~arg_1.b, select(!arg_1.c, arg_1.c, all(arg_1.c)), arg_1.d);
    return !select(select(var_2.c, arg_1.c, vec4<bool>(all(vec2<bool>(var_2.a, arg_3)), var_2.d.x || arg_3, arg_1.d.x, false)), vec4<bool>(false, arg_3, var_2.a, all(vec3<bool>(arg_3, arg_1.c.x, arg_3))), arg_3);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<bool>) -> i32 {
    global0 = array<vec3<f32>, 21>();
    let var_0 = Struct_1(any(!func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-670f, 1309f, 632f, 351f))), Struct_1(arg_2.x, 0i, vec4<bool>(arg_2.x, false, false, arg_2.x), vec2<bool>(arg_2.x, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, u_input.d, 48782u, 4294967295u), vec4<u32>(u_input.b.x, 0u, arg_0.x, arg_0.x)), select(true, true, true))), i32(-1i) * -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1, -7175i, arg_1, arg_1)), -vec4<i32>(-17031i, arg_1, arg_1, -24301i)), !vec4<bool>(false, func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-137f, -1000f, 788f, 1000f), vec4<f32>(-734f, -2064f, -397f, 575f))), Struct_1(true, arg_1, vec4<bool>(arg_3.x, false, arg_2.x, arg_2.x), vec2<bool>(false, true)), abs(u_input.c), arg_2.x).x, true, true), vec2<bool>(true, !arg_2.x));
    var var_1 = global0[_wgslsmith_index_u32(~10195u, 21u)];
    var var_2 = -543f;
    let var_3 = Struct_2(u_input.c.x, var_1.x, var_0);
    return -((var_0.b << ((12294u ^ var_3.a) % 32u)) | abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c.b, 1i, -1i, 24437i), vec4<i32>(60496i, arg_1, var_0.b, var_3.c.b)))) ^ -2147483647i;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_i32(~vec3<i32>(-12216i, arg_1.c.b ^ -5732i, 2147483647i), abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_2, -19943i, 11721i), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, arg_1.c.b, arg_2), vec3<i32>(-32244i, -1i, -54573i), vec3<i32>(26550i, arg_1.c.b, -21962i)), vec3<i32>(arg_2, 1i, arg_2)), min(abs(vec3<i32>(-24344i, arg_1.c.b, 0i)), vec3<i32>(arg_2, arg_1.c.b, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.c.b, 2147483647i, 19499i), vec3<i32>(1i, -24075i, -17571i)) << (abs(arg_0) % vec3<u32>(32u)))));
    var var_1 = select(vec3<bool>(arg_3, all(vec4<bool>(false, false, arg_3, true)), 4664u >= (arg_0.x & 0u)), !(!select(arg_1.c.c.zww, arg_1.c.c.yxx, false)), _wgslsmith_f_op_f32(step(arg_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1.b)), _wgslsmith_f_op_f32(sign(851f)))))) >= arg_1.b);
    let var_2 = (reverseBits(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.yy))) ^ 86508u) < abs(_wgslsmith_mult_u32(~arg_0.x, u_input.c.x));
    var var_3 = arg_1.a;
    let var_4 = arg_1;
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    global0 = array<vec3<f32>, 21>();
    let var_0 = true;
    var var_1 = !func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b, arg_0.b, 435f, arg_0.c.b)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, arg_0.c.b, arg_0.b, -211f)))))), arg_1, reverseBits(vec4<u32>(1u, func_4(u_input.b, Struct_2(arg_0.a.a, -316f, arg_2), -28984i, false).a, arg_0.a.a, 1u)), false).zx;
    var var_2 = (vec4<i32>(func_4(~u_input.c.wxy, func_4(u_input.b, arg_0.c, -3428i, arg_0.a.c.a), _wgslsmith_div_i32(-2147483647i, -4042i), any(vec2<bool>(var_1.x, false))).c.b, 14274i, abs(-1i), -(i32(-1i) * -1i)) | vec4<i32>(_wgslsmith_div_i32(func_4(u_input.c.wzz, Struct_2(4294967295u, arg_0.b, arg_2), arg_0.c.c.b, true).c.b, _wgslsmith_mult_i32(arg_2.b, arg_2.b)), ~arg_1.b, _wgslsmith_sub_i32(-arg_1.b, arg_1.b), _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_1.b, arg_1.b), 1i, -1i))) ^ ~(-(vec4<i32>(-1i) * -vec4<i32>(arg_2.b, arg_2.b, arg_2.b, -18546i)));
    var_1 = !arg_0.c.c.d;
    return _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0.d, vec3<i32>(var_2.x >> (~34808u % 32u), _wgslsmith_clamp_i32(arg_2.b ^ -2147483647i, reverseBits(arg_1.b), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, arg_0.d.x), arg_0.d.zy)), _wgslsmith_div_i32(-arg_2.b, ~(-13890i))), (-vec3<i32>(-1i, -1i, arg_1.b) << (u_input.c.wzx % vec3<u32>(32u))) & vec3<i32>(min(var_2.x, 1i), arg_1.b, arg_0.d.x)), _wgslsmith_sub_vec3_i32(-var_2.ywy, firstTrailingBit(-vec3<i32>(1i, arg_0.d.x, arg_0.c.c.b)) & (_wgslsmith_add_vec3_i32(vec3<i32>(79022i, 1i, arg_1.b), vec3<i32>(arg_1.b, arg_0.c.c.b, 10618i)) << (select(u_input.b, vec3<u32>(17557u, u_input.a, 48650u), arg_1.c.x) % vec3<u32>(32u)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    let var_0 = min(func_5(Struct_3(func_4(u_input.b << (vec3<u32>(0u, u_input.b.x, arg_0) % vec3<u32>(32u)), Struct_2(6442u, 618f, arg_1), func_2(u_input.c.zww, arg_1.b, arg_1.c.wy, arg_2), false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1403f))), func_4(_wgslsmith_div_vec3_u32(u_input.b, u_input.b), func_4(u_input.c.xxw, Struct_2(arg_0, 178f, arg_1), arg_1.b, false), arg_1.b, arg_1.b <= 7402i), firstTrailingBit(vec3<i32>(-16920i, -15471i, arg_1.b)) >> (vec3<u32>(u_input.c.x, u_input.b.x, arg_0) % vec3<u32>(32u))), arg_1, Struct_1(func_4(vec3<u32>(8825u, u_input.a, u_input.b.x) >> (u_input.c.xxy % vec3<u32>(32u)), Struct_2(u_input.b.x, -463f, arg_1), arg_1.b, arg_1.d.x).c.d.x, arg_1.b, vec4<bool>(arg_2.x, arg_1.a, true, arg_1.d.x || false), func_3(vec4<f32>(1000f, -1559f, -504f, 2048f), arg_1, ~vec4<u32>(71248u, u_input.d, u_input.c.x, u_input.a), true).yz)), select(abs(~vec3<i32>(arg_1.b, arg_1.b, arg_1.b)), vec3<i32>(arg_1.b, max(arg_1.b, arg_1.b), arg_1.b), true) << ((u_input.c.zwx & firstTrailingBit(vec3<u32>(0u, arg_0, 1u))) % vec3<u32>(32u)));
    var var_1 = Struct_3(func_4(firstLeadingBit(vec3<u32>(u_input.c.x, u_input.a, 0u)), func_4(_wgslsmith_clamp_vec3_u32(u_input.c.yzz, u_input.c.www | vec3<u32>(4294967295u, u_input.c.x, 1u), ~u_input.c.wxx), Struct_2(u_input.b.x & 1u, _wgslsmith_f_op_f32(floor(1695f)), arg_1), firstTrailingBit(var_0.x), !(!arg_1.a)), ~func_5(Struct_3(Struct_2(4294967295u, -710f, arg_1), -1000f, Struct_2(41047u, 177f, arg_1), var_0), arg_1, func_4(vec3<u32>(11407u, arg_0, 60115u), Struct_2(4294967295u, 1278f, Struct_1(arg_1.a, arg_1.b, arg_1.c, arg_1.d)), -2147483647i, true).c).x, arg_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(300f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2072f - -717f)))), Struct_2(~(~822u) << (firstLeadingBit(38446u) % 32u), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1314f, 996f)), -1584f))), arg_1), firstTrailingBit(func_5(Struct_3(Struct_2(arg_0, -1873f, Struct_1(false, arg_1.b, arg_1.c, vec2<bool>(arg_2.x, arg_1.c.x))), 1853f, Struct_2(u_input.c.x, 1757f, arg_1), var_0), Struct_1(arg_1.c.x, 12548i, arg_1.c, arg_1.d), func_4(vec3<u32>(u_input.a, 1u, arg_0), Struct_2(arg_0, 459f, arg_1), 12942i, arg_2.x).c) >> (u_input.b % vec3<u32>(32u))));
    global0 = array<vec3<f32>, 21>();
    var var_2 = ~var_1.a.c.b;
    return -2651f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(543f - 599f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.d, Struct_1(false, -4573i, vec4<bool>(false, true, true, true), vec2<bool>(true, false)), vec3<bool>(true, false, true)))))), func_4(u_input.b, func_4(vec3<u32>(1u, ~137256u, ~u_input.b.x), func_4(vec3<u32>(u_input.d, 1u, 77321u), func_4(vec3<u32>(1u, u_input.c.x, u_input.c.x), Struct_2(u_input.d, 164f, Struct_1(false, 0i, vec4<bool>(false, false, false, false), vec2<bool>(false, false))), -21722i, false), i32(-1i) * -61891i, false), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-13113i, 0i, -35998i), vec3<i32>(2147483647i, -43758i, -1i))), !func_3(vec4<f32>(-947f, 317f, -194f, -652f), Struct_1(true, 50753i, vec4<bool>(true, false, false, true), vec2<bool>(true, true)), vec4<u32>(29815u, 1u, u_input.d, u_input.c.x), true).x), reverseBits(-abs(1493i)), false).c);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(962f, -1000f), _wgslsmith_f_op_f32(-var_0.b)), -509f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-920f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(649f))))));
    let var_2 = Struct_2(_wgslsmith_mult_u32(~(~var_0.a << (u_input.d % 32u)), 0u), _wgslsmith_f_op_f32(419f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-487f + var_1.x) * func_4(u_input.b, Struct_2(15649u, var_1.x, Struct_1(var_0.c.c.x, var_0.c.b, vec4<bool>(true, true, var_0.c.a, true), vec2<bool>(false, var_0.c.d.x))), var_0.c.b, false).b)), var_0.c);
    let var_3 = var_2;
    global0 = array<vec3<f32>, 21>();
    var_0 = Struct_2(~4294967295u, var_2.b, Struct_1(var_0.c.d.x, var_3.c.b, vec4<bool>(false, var_2.c.a, var_2.c.c.x, any(var_2.c.c.zyx) & !var_2.c.c.x), var_2.c.c.xw));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, var_3.a, u_input.c.ywx ^ vec3<u32>(~abs(var_3.a), ~1u, 23854u & var_0.a));
}

