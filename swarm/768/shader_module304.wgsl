struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19>;

var<private> global1: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(arg_0.c.xw));
    let var_1 = _wgslsmith_dot_vec4_i32(~abs(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 0i, 1124i, u_input.b), vec4<i32>(18485i, -1i, global1.x, global1.x))), ~vec4<i32>(u_input.b, ~u_input.d.x, 17100i, 8629i)) << (abs(~0u) % 32u);
    global0 = array<vec3<bool>, 19>();
    var var_2 = Struct_1(u_input.e, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.c)))));
    let var_3 = var_2.c.yzy;
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    let var_0 = func_2(arg_0.e);
    global1 = _wgslsmith_add_vec3_i32(u_input.d, ~countOneBits(u_input.d) | u_input.d);
    var var_1 = ~(~vec4<u32>(42052u, arg_2.e.a.x >> (1u % 32u), 5344u >> (arg_1.a.x % 32u), abs(63864u))) | vec4<u32>(0u, 4294967295u, firstLeadingBit(firstTrailingBit(~arg_0.e.a.x)), 36736u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d.x)) + 894f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_2.c.x, var_0.c.x)), _wgslsmith_f_op_f32(var_0.c.x + arg_0.c.x)))))));
    var_1 = vec4<u32>(firstLeadingBit(9928u), 0u, ~(~1u), arg_0.b);
    return var_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = true;
    let var_1 = arg_0;
    global0 = array<vec3<bool>, 19>();
    var var_2 = -u_input.d;
    let var_3 = -2026f;
    return -44421i;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global1 = -vec3<i32>(arg_0.x, func_4(Struct_2(func_2(Struct_1(vec3<u32>(39138u, 4294967295u, 4294967295u), false, vec4<f32>(1243f, -322f, -133f, -1454f))), reverseBits(4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-976f, -1353f, 935f) - vec3<f32>(-569f, -1452f, 1950f)), vec2<f32>(569f, 563f), Struct_1(vec3<u32>(7951u, 61224u, 1u), true, vec4<f32>(-1492f, 274f, -409f, 1000f))), Struct_1(vec3<u32>(58649u, 1u, 1u), func_3(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 25791u), true, vec4<f32>(-1322f, -2075f, 126f, -1069f)), u_input.e.x, vec3<f32>(-755f, 1495f, 1943f), vec2<f32>(-593f, 440f), Struct_1(u_input.c, false, vec4<f32>(-219f, 196f, -468f, 682f))), Struct_1(vec3<u32>(u_input.a.x, 1u, u_input.c.x), false, vec4<f32>(-383f, -447f, 614f, 1855f)), Struct_2(Struct_1(vec3<u32>(u_input.c.x, 28491u, 25821u), false, vec4<f32>(-999f, 1169f, -801f, 481f)), u_input.a.x, vec3<f32>(-208f, -837f, -869f), vec2<f32>(-224f, 533f), Struct_1(u_input.c, false, vec4<f32>(-2652f, -1000f, -892f, 1477f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2189f, -409f, 389f, -2595f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-482f, -543f)), _wgslsmith_f_op_f32(min(-1110f, 985f))), any(vec4<bool>(true, false, false, true)) & true), ~43775i);
    global1 = abs(vec3<i32>(-arg_0.x, min(-2147483647i >> (1u % 32u), 9613i), -global1.x)) | countOneBits(firstTrailingBit(~firstLeadingBit(vec3<i32>(2147483647i, 0i, global1.x))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-693f, -1086f, -711f), vec3<f32>(-166f, -1549f, -950f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-932f, -1284f, 961f) + vec3<f32>(1021f, -161f, -1729f))) - vec3<f32>(-502f, _wgslsmith_f_op_f32(select(258f, -1219f, true)), 1589f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, -2961f, _wgslsmith_f_op_f32(step(2198f, 174f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, 1039f, -1178f) - vec3<f32>(-152f, -105f, 489f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, 653f, -556f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1288f, -889f, -1270f)))))));
    let var_1 = Struct_2(func_2(Struct_1(vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, 0u), _wgslsmith_mod_u32(u_input.a.x, u_input.c.x), u_input.c.x), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 522f, -1105f, -143f)) + vec4<f32>(var_0.x, -650f, -820f, var_0.x)))), firstLeadingBit(4294967295u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0))) - func_2(func_2(func_2(Struct_1(u_input.e, true, vec4<f32>(var_0.x, -556f, -706f, var_0.x))))).c.xyx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, -523f), vec2<f32>(var_0.x, -2412f))), vec2<f32>(var_0.x, -1000f), max(4294967295u, 20867u) < u_input.a.x)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(sign(925f)))))), Struct_1(vec3<u32>(u_input.a.x, ~func_2(Struct_1(u_input.e, true, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))).a.x, ~10579u), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-366f, _wgslsmith_f_op_f32(var_0.x - 469f), _wgslsmith_f_op_f32(-var_0.x), -1000f))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x + var_0.x), _wgslsmith_f_op_f32(var_1.d.x - -1027f));
    return var_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    global1 = _wgslsmith_sub_vec3_i32(u_input.d, _wgslsmith_mult_vec3_i32(vec3<i32>(~2147483647i, global1.x, _wgslsmith_mult_i32(u_input.b, u_input.d.x)) | ~countOneBits(u_input.d), abs(vec3<i32>(-1i) * -u_input.d)));
    var var_0 = Struct_1(arg_0.a, false, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.a.c))));
    var var_1 = Struct_2(func_1(vec2<i32>(-48898i, max(global1.x, u_input.b)) | -_wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, -2147483647i), vec2<i32>(28042i, global1.x))), _wgslsmith_clamp_u32(arg_1.e.a.x, 4294967295u, 1u) << (1u % 32u), arg_0.c.wxw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d)), func_2(func_2(func_1(vec2<i32>(25548i, global1.x) >> (vec2<u32>(arg_0.a.x, 102271u) % vec2<u32>(32u))))));
    let var_2 = true;
    var_0 = func_2(func_2(Struct_1(firstTrailingBit(u_input.e | vec3<u32>(u_input.a.x, var_0.a.x, arg_0.a.x)), !var_2, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d.x, var_1.e.c.x, 1000f, var_1.e.c.x), _wgslsmith_f_op_vec4_f32(-arg_0.c), !vec4<bool>(true, false, var_1.e.b, arg_0.b))))));
    return arg_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(_wgslsmith_add_vec3_i32(u_input.d, u_input.d) & u_input.d);
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-(global1.x | u_input.b), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, -61413i, var_0.x, global1.x), vec4<i32>(2147483647i, u_input.d.x, 1i, 1i))), global1.x, max(-1i, ~global1.x)), -select(max(_wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(1i, var_0.x, 0i)), _wgslsmith_mult_vec3_i32(var_0, vec3<i32>(16185i, 0i, u_input.d.x))), -_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, global1.x), var_0), global0[_wgslsmith_index_u32(u_input.c.x, 19u)]));
    global0 = array<vec3<bool>, 19>();
    let var_2 = !(u_input.c.x < 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(911f + -1191f), _wgslsmith_f_op_f32(round(-372f)), _wgslsmith_f_op_f32(sign(804f)), _wgslsmith_f_op_f32(func_5(func_1(vec2<i32>(-50415i, var_1.x)), Struct_2(Struct_1(vec3<u32>(u_input.c.x, u_input.e.x, u_input.e.x), var_2, vec4<f32>(-194f, -804f, -513f, 369f)), 4294967295u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-149f, 2155f, 883f) + vec3<f32>(116f, -1333f, 847f)), vec2<f32>(-121f, -1471f), func_1(vec2<i32>(14983i, 2147483647i)))))), -264f, max(_wgslsmith_mult_u32(100973u, min(abs(0u), u_input.c.x)), u_input.e.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f)), 258f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1297f))))), -782f), u_input.a.x);
}

