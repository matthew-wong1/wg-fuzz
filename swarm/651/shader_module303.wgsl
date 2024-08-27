struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: Struct_2,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(237f, 667f, 881f), vec3<f32>(907f, -728f, 474f), vec3<f32>(-1054f, 322f, -1585f), vec3<f32>(393f, 338f, 1381f), vec3<f32>(404f, -406f, 239f), vec3<f32>(-114f, -1284f, 1777f), vec3<f32>(-239f, 1270f, -694f), vec3<f32>(-1035f, -1899f, 729f), vec3<f32>(-2428f, -442f, -1000f), vec3<f32>(148f, -1000f, 1000f), vec3<f32>(-1526f, -119f, -851f), vec3<f32>(633f, -1116f, 125f), vec3<f32>(306f, 921f, -1370f), vec3<f32>(-1604f, 762f, -745f), vec3<f32>(-1693f, 653f, 531f), vec3<f32>(1158f, 1922f, 2669f), vec3<f32>(-357f, 478f, -219f), vec3<f32>(547f, -810f, 443f), vec3<f32>(1000f, -1563f, 422f), vec3<f32>(-374f, -1083f, 432f), vec3<f32>(1000f, 1603f, -1034f), vec3<f32>(1000f, -128f, 1146f));

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(30532i, Struct_1(125099u, vec2<bool>(true, false), vec2<i32>(-5606i, 0i)), Struct_1(57544u, vec2<bool>(false, true), vec2<i32>(-1i, -57048i)), -916f), Struct_2(-31757i, Struct_1(48664u, vec2<bool>(false, false), vec2<i32>(1i, 0i)), Struct_1(0u, vec2<bool>(false, true), vec2<i32>(37200i, i32(-2147483648))), 724f), Struct_2(0i, Struct_1(42907u, vec2<bool>(true, true), vec2<i32>(1i, -47484i)), Struct_1(4294967295u, vec2<bool>(true, false), vec2<i32>(-1i, 74955i)), 710f), Struct_2(40476i, Struct_1(4294967295u, vec2<bool>(false, true), vec2<i32>(115232i, 0i)), Struct_1(27623u, vec2<bool>(false, true), vec2<i32>(-26308i, 0i)), 442f), Struct_2(2147483647i, Struct_1(4294967295u, vec2<bool>(false, true), vec2<i32>(-9842i, 2147483647i)), Struct_1(7209u, vec2<bool>(false, true), vec2<i32>(1i, 2147483647i)), -1000f), Struct_2(-1i, Struct_1(4294967295u, vec2<bool>(true, true), vec2<i32>(-1i, -67666i)), Struct_1(71061u, vec2<bool>(true, false), vec2<i32>(14777i, i32(-2147483648))), -1425f), Struct_2(6914i, Struct_1(4294967295u, vec2<bool>(true, false), vec2<i32>(-18133i, -1i)), Struct_1(1u, vec2<bool>(true, false), vec2<i32>(-35285i, 9379i)), -908f), Struct_2(-51520i, Struct_1(0u, vec2<bool>(false, true), vec2<i32>(0i, -1i)), Struct_1(17864u, vec2<bool>(false, true), vec2<i32>(-1i, 0i)), -1432f), Struct_2(27164i, Struct_1(1u, vec2<bool>(true, true), vec2<i32>(0i, 0i)), Struct_1(22943u, vec2<bool>(false, true), vec2<i32>(1i, -1i)), -1000f), Struct_2(5228i, Struct_1(34117u, vec2<bool>(true, false), vec2<i32>(46775i, -1i)), Struct_1(0u, vec2<bool>(true, true), vec2<i32>(2147483647i, -1i)), -1448f), Struct_2(0i, Struct_1(0u, vec2<bool>(true, false), vec2<i32>(1i, 70346i)), Struct_1(4294967295u, vec2<bool>(true, false), vec2<i32>(-19014i, 19455i)), -744f), Struct_2(0i, Struct_1(1u, vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 0i)), Struct_1(38432u, vec2<bool>(true, true), vec2<i32>(0i, 2147483647i)), -565f), Struct_2(1i, Struct_1(43929u, vec2<bool>(false, false), vec2<i32>(-15213i, 2147483647i)), Struct_1(4294967295u, vec2<bool>(false, true), vec2<i32>(-32475i, -1i)), -589f));

var<private> global3: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - _wgslsmith_f_op_f32(-511f - -1262f))), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(743f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x + arg_0.x)))))));
    global2 = array<Struct_2, 13>();
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -2122f) - _wgslsmith_f_op_vec2_f32(-arg_1)) + _wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(var_0.x, -3116f))) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(904f * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))), 1143f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1714f, arg_1.x) * vec2<f32>(arg_1.x, 324f)), _wgslsmith_f_op_vec2_f32(-arg_1))) * _wgslsmith_f_op_vec2_f32(arg_0.yx - _wgslsmith_f_op_vec2_f32(vec2<f32>(-554f, arg_0.x) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-874f, 788f))))))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_3) -> u32 {
    let var_0 = !(false || arg_1);
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.b.xzw & _wgslsmith_mod_vec3_u32(~u_input.b.xxy, vec3<u32>(7223u, 51411u, 4063u) & u_input.b.zwx), abs(~max(u_input.b.zyz, u_input.b.zww))) <= ~_wgslsmith_mult_u32(abs(_wgslsmith_add_u32(6938u, global0[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(56805u, 20u)], 10075u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 20u)], arg_2.c.b.a, 2264u) << (vec3<u32>(5806u, 1u, arg_2.b) % vec3<u32>(32u))));
    var var_2 = global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(8869u, 20u)], ~17162u), min(global0[_wgslsmith_index_u32(~0u, 20u)], abs(0u)), 0u), u_input.b.wyw), 0u, !arg_2.e), 13u)];
    var var_3 = _wgslsmith_dot_vec2_i32(select(~(-arg_2.c.c.c), vec2<i32>(93926i, 1i >> (~var_2.c.a % 32u)), (!var_1 != true) || !(!arg_1)), abs(-vec2<i32>(-14875i, -48392i) << (select(u_input.b.ww, u_input.b.yw, arg_2.e) % vec2<u32>(32u))) << (~vec2<u32>(11183u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.e, var_2.c.a, arg_2.b), vec4<u32>(4294967295u, 48007u, arg_2.b, arg_2.b))) % vec2<u32>(32u)));
    var_2 = global2[_wgslsmith_index_u32(abs(0u), 13u)];
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b.x, 39006u, var_2.b.a, 1u)), ~(~u_input.b)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b.ywx, _wgslsmith_add_vec3_u32(vec3<u32>(71245u, 0u, 0u), vec3<u32>(4294967295u, u_input.e, u_input.e))), countOneBits(abs(14382u)), ~4294967295u, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_2.b, arg_2.b), _wgslsmith_dot_vec2_u32(u_input.b.xw, vec2<u32>(var_2.b.a, u_input.e)))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    global2 = array<Struct_2, 13>();
    global1 = array<vec3<f32>, 22>();
    global0 = array<u32, 20>();
    global2 = array<Struct_2, 13>();
    var var_0 = Struct_3(vec4<f32>(437f, arg_1.x, arg_1.x, arg_1.x), 1u, global2[_wgslsmith_index_u32(func_4(~(-reverseBits(u_input.c)), u_input.c <= ((37575i << (arg_2.a % 32u)) ^ ~1i), Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(402f, arg_1.x, arg_1.x, -1314f)), _wgslsmith_div_vec4_f32(vec4<f32>(305f, arg_1.x, 1654f, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)))), arg_2.a, global2[_wgslsmith_index_u32(min(~65385u, _wgslsmith_sub_u32(46371u, 0u)), 13u)], _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, 1000f, 161f))), arg_1)), arg_0)), 13u)], arg_1, false);
    return -1i;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, arg_2.x));
    global2 = array<Struct_2, 13>();
    global3 = _wgslsmith_f_op_f32(arg_2.x - 865f);
    let var_1 = func_2(arg_3.b.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(max(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.x, 1516f))), select(true, all(vec4<bool>(false, arg_3.b.x, true, arg_3.b.x)), arg_3.b.x))), arg_3) >> (47698u % 32u);
    let var_2 = arg_3.a;
    return Struct_1(countOneBits(~(~arg_3.a)), arg_3.b, u_input.a.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 22>();
    global0 = array<u32, 20>();
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -531f)), _wgslsmith_f_op_f32(-267f * 314f)))), u_input.e, vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1102f + -759f)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(155f, -1000f), -1000f)))), Struct_1(40982u, vec2<bool>(true, true), -u_input.a.xx));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f)))));
    let var_2 = reverseBits(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_sub_i32(-1i, abs(-var_0.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(-u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(8887i, 1i, 2147483647i, -40807i), firstTrailingBit(u_input.a))) | vec4<i32>(u_input.a.x, max(abs(var_0.c.x), u_input.a.x), func_2(any(vec3<bool>(true, var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(159f, 735f))), func_1(839f, 8911u, vec2<f32>(-574f, 749f), var_0)), 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, max(0i, countOneBits(var_0.c.x))), func_1(_wgslsmith_f_op_f32(abs(130f)), 48467u, _wgslsmith_f_op_vec2_f32(vec2<f32>(495f, 822f) - vec2<f32>(-1018f, 507f)), var_0).c << (vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.e) % vec2<u32>(32u))), -57081i);
}

