struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 32>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(637f, -1455f, 1000f, -199f), 1u, 151f, -565f, 26765i), Struct_1(vec4<f32>(-805f, 608f, 2172f, -1001f), 0u, -966f, 2611f, i32(-2147483648)), Struct_1(vec4<f32>(464f, -1235f, 1598f, 219f), 93431u, -634f, -138f, 1i), Struct_1(vec4<f32>(190f, -2408f, -298f, -394f), 19238u, -2178f, -361f, 91038i), Struct_1(vec4<f32>(-1562f, -179f, 1527f, 366f), 18719u, -997f, 561f, -1i), Struct_1(vec4<f32>(2073f, 210f, 1319f, -546f), 1u, 1677f, -1583f, -1908i), Struct_1(vec4<f32>(-573f, 1000f, 1000f, 106f), 42407u, 336f, 354f, -1i), Struct_1(vec4<f32>(-191f, -694f, 232f, -569f), 44947u, 1101f, 125f, -1i), Struct_1(vec4<f32>(-2011f, 921f, -201f, -692f), 21542u, -895f, -1000f, 0i), Struct_1(vec4<f32>(197f, 191f, -1727f, -1258f), 1u, 1580f, 632f, i32(-2147483648)), Struct_1(vec4<f32>(-1000f, -1000f, -479f, 740f), 84937u, 1229f, 399f, 0i), Struct_1(vec4<f32>(-1464f, -321f, -243f, -647f), 91633u, -112f, -1557f, -28515i), Struct_1(vec4<f32>(470f, 951f, 1777f, 544f), 1u, -162f, 423f, 2147483647i), Struct_1(vec4<f32>(1000f, -319f, -1000f, -2255f), 18632u, 1157f, 599f, 28897i), Struct_1(vec4<f32>(-1196f, -685f, -932f, -1647f), 27198u, 177f, 1106f, -1i), Struct_1(vec4<f32>(130f, -929f, -1069f, 2014f), 69747u, 1000f, 792f, -48334i), Struct_1(vec4<f32>(2402f, -613f, 199f, 686f), 1u, 1000f, 381f, 11685i), Struct_1(vec4<f32>(-1934f, -1422f, 1000f, 731f), 34310u, -838f, -1143f, 70634i), Struct_1(vec4<f32>(647f, 1534f, 777f, -1228f), 13530u, -1000f, 705f, -18293i), Struct_1(vec4<f32>(529f, -1459f, 496f, -897f), 16596u, 412f, -1111f, -57190i), Struct_1(vec4<f32>(261f, -120f, 243f, -1598f), 68789u, 1000f, -285f, 13294i), Struct_1(vec4<f32>(1000f, -731f, -164f, -800f), 83049u, -966f, 107f, -1i), Struct_1(vec4<f32>(-676f, 399f, 2032f, -824f), 4294967295u, -845f, -188f, -52965i), Struct_1(vec4<f32>(-1306f, -299f, -441f, 856f), 4294967295u, 1000f, 233f, 1i));

var<private> global2: f32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_4 {
    let var_0 = -261f;
    let var_1 = u_input.a.x;
    let var_2 = all(vec4<bool>(true, true, false, true));
    return Struct_4(Struct_1(vec4<f32>(var_0, 776f, _wgslsmith_f_op_f32(trunc(763f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) + 682f)), ~u_input.b, _wgslsmith_f_op_f32(-var_0), var_0, u_input.d));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_div_vec3_i32(select(-vec3<i32>(~(-2147483647i), ~u_input.a.x, u_input.a.x), -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.d, -31683i, 1i), vec3<i32>(u_input.d, 30296i, u_input.a.x))), any(vec3<bool>(false, true, all(vec2<bool>(false, false))))), ~(-(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, -10103i, 50412i), vec3<i32>(u_input.d, 27590i, u_input.a.x), vec3<i32>(u_input.a.x, 1i, -2147483647i)) << (~vec3<u32>(u_input.e.x, 4294967295u, 4294967295u) % vec3<u32>(32u)))));
    let var_1 = u_input.d;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1435f * _wgslsmith_f_op_f32(f32(-1f) * -727f)))), _wgslsmith_f_op_f32(round(950f)));
    let var_3 = vec4<bool>(false, any(vec4<bool>(true, true, all(vec2<bool>(false, true)), any(vec2<bool>(true, true)))), true, true);
    global2 = _wgslsmith_f_op_f32(step(var_2.x, var_2.x));
    return var_1;
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_5(func_2(), ~(~(u_input.e.x | 19055u)) ^ _wgslsmith_clamp_u32(~(~5760u), firstLeadingBit(~15310u), ~0u), Struct_2(vec3<i32>(~u_input.a.x, ~2147483647i ^ ~u_input.d, u_input.d), vec3<bool>(true, true, true)), vec4<i32>(u_input.d, min(-u_input.d, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.d, u_input.d, -2147483647i), vec3<i32>(u_input.a.x, u_input.d, 2842i)), vec3<i32>(-41643i, 8034i, -2147483647i) & vec3<i32>(u_input.a.x, u_input.d, 32389i))), countOneBits(func_3()), -_wgslsmith_mult_i32(-75051i, _wgslsmith_clamp_i32(1i, -1i, 1766i))));
    var var_1 = _wgslsmith_dot_vec2_i32(var_0.d.zy, vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(-u_input.a.x, firstTrailingBit(-29038i), u_input.d) ^ -1i));
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-687f, var_0.a.a.a.x, var_0.a.a.d, -1182f))))), vec4<f32>(-1375f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.d + 112f) + var_0.a.a.d), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-385f + var_0.a.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.a.d))))), u_input.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f) * _wgslsmith_f_op_f32(var_0.a.a.a.x * func_2().a.d)), _wgslsmith_f_op_f32(-var_0.a.a.c), reverseBits(43653i));
    var var_3 = global1[_wgslsmith_index_u32(select(~var_2.b, ~(~1u), any(vec2<bool>(!all(vec2<bool>(false, var_0.c.b.x)), !any(vec2<bool>(true, var_0.c.b.x))))), 24u)];
    var_3 = func_2().a;
    return select(select(var_0.c.b.yz, var_0.c.b.zz, any(!vec4<bool>(false, false, true, var_0.c.b.x))), select(vec2<bool>(true, all(select(var_0.c.b.yx, var_0.c.b.zx, var_0.c.b.xy))), var_0.c.b.zy, select(select(var_0.c.b.zx, !var_0.c.b.yy, -560f == var_3.a.x), var_0.c.b.yx, false)), var_0.c.b.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<Struct_5, 32>();
    var var_1 = !select(vec2<bool>(true, 0i < _wgslsmith_sub_i32(var_0.x, 0i)), !select(vec2<bool>(true, true), func_1(), true), vec2<bool>(func_1().x, any(vec2<bool>(true, true)) && true));
    global1 = array<Struct_1, 24>();
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-358f, 1162f, -635f, 661f), vec4<f32>(112f, -853f, 1674f, -579f)))) + vec4<f32>(-143f, _wgslsmith_f_op_f32(-895f - 1939f), _wgslsmith_f_op_f32(236f * -500f), -207f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-326f, _wgslsmith_f_op_f32(785f + -1391f), 1195f, -310f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(695f, -355f, 819f, 798f) - vec4<f32>(-1000f, 613f, -901f, -775f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1134f, 1361f, -1549f) + vec4<f32>(-1247f, 981f, -1355f, -1180f))))))), _wgslsmith_add_u32(u_input.c.x ^ ~reverseBits(u_input.c.x), ~_wgslsmith_div_u32(_wgslsmith_div_u32(0u, u_input.b), 59083u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1167f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1008f - 1004f)) + _wgslsmith_div_f32(_wgslsmith_div_f32(-1044f, -312f), _wgslsmith_f_op_f32(step(127f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1882f - _wgslsmith_f_op_f32(f32(-1f) * -426f))), func_3());
    var var_3 = _wgslsmith_f_op_vec3_f32(step(var_2.a.xxy, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, var_2.a.x, -359f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, 414f, -622f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-673f, 1222f, var_2.c) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a.x, 328f, var_2.a.x), _wgslsmith_f_op_vec3_f32(select(var_2.a.yxw, vec3<f32>(252f, var_2.c, 1333f), vec3<bool>(false, true, var_1.x))))))))));
    global0 = array<Struct_5, 32>();
    let var_4 = 48870u | ~_wgslsmith_dot_vec2_u32(~u_input.c >> (firstTrailingBit(u_input.e.zx) % vec2<u32>(32u)), vec2<u32>(reverseBits(u_input.b), _wgslsmith_mult_u32(var_2.b, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-u_input.a.x), vec2<f32>(var_2.c, var_2.a.x), -1i);
}

