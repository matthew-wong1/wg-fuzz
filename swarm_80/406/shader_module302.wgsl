struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global1: vec2<bool>;

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(0u, 18190u, 4294967295u), vec3<u32>(32418u, 32678u, 34458u), vec3<u32>(4294967295u, 18009u, 1u), vec3<u32>(0u, 55455u, 0u), vec3<u32>(26304u, 19361u, 4294967295u), vec3<u32>(37759u, 114866u, 0u), vec3<u32>(4294967295u, 9655u, 2012u), vec3<u32>(47689u, 1u, 1u), vec3<u32>(6628u, 23757u, 0u), vec3<u32>(23874u, 4294967295u, 53702u), vec3<u32>(11218u, 30377u, 4294967295u), vec3<u32>(32231u, 17914u, 58398u), vec3<u32>(4294967295u, 19822u, 36656u));

var<private> global3: array<Struct_4, 5>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec3<bool>) -> f32 {
    global2 = array<vec3<u32>, 13>();
    global3 = array<Struct_4, 5>();
    global1 = !arg_2.yx;
    return 1810f;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<u32>) -> u32 {
    global2 = array<vec3<u32>, 13>();
    var var_0 = select(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1849f, 959f)) - 1138f) == 577f, -1075f <= _wgslsmith_f_op_f32(1945f + _wgslsmith_f_op_f32(func_3(arg_1.x, -66377i, vec3<bool>(global1.x, arg_0.a.a, true))))), select(arg_0.b.zy, vec2<bool>(any(arg_0.b.zy) | (arg_0.b.x | arg_0.b.x), global1.x), global1.x), select(arg_0.b.wz, arg_0.b.zy, select(arg_0.a.a && select(arg_0.a.a, arg_0.b.x, false), true, any(vec4<bool>(false, true, false, false)))));
    var_0 = arg_0.b.wy;
    global1 = select(arg_0.b.wz, vec2<bool>(~arg_2.x > 0u, global1.x), select(select(!(!arg_0.b.yx), select(select(vec2<bool>(var_0.x, global1.x), arg_0.b.wx, vec2<bool>(var_0.x, true)), !vec2<bool>(global1.x, true), true), global1.x), vec2<bool>(var_0.x, true), u_input.b == u_input.a));
    var var_1 = false;
    return select(~arg_1.x, ~u_input.c.x, select(arg_2.x < arg_1.x, var_0.x, arg_0.b.x));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> vec2<bool> {
    global3 = array<Struct_4, 5>();
    var var_0 = -600f;
    global1 = vec2<bool>(false, true);
    global1 = vec2<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -527f) > arg_2.b);
    let var_1 = global3[_wgslsmith_index_u32(arg_1, 5u)];
    return !vec2<bool>(!global1.x, arg_2.d.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_4) -> u32 {
    let var_0 = u_input.c.x;
    global1 = func_4(Struct_3(select(-_wgslsmith_mult_vec2_i32(arg_3.d, arg_3.d), ~(~arg_3.d), vec2<bool>(global1.x, true)), arg_3.b, var_0, Struct_1(arg_2), Struct_1(arg_2)), u_input.c.x, Struct_3(_wgslsmith_add_vec2_i32(arg_3.d, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 0i), arg_1.zz, arg_3.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1892f + _wgslsmith_f_op_f32(arg_3.b + arg_3.b)) * _wgslsmith_div_f32(arg_3.b, _wgslsmith_f_op_f32(round(arg_3.a.x)))), _wgslsmith_clamp_u32(func_2(Struct_2(Struct_1(arg_2), vec4<bool>(arg_2, true, true, true)), vec4<u32>(var_0, 4294967295u, u_input.c.x, u_input.c.x), u_input.c.yy), 12754u, ~1u | ~var_0), Struct_1(!(arg_2 & false)), Struct_1(!(24014u > var_0))));
    return ~select(~1u, 0u, arg_2);
}

fn func_5(arg_0: vec4<i32>, arg_1: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 854f, 2217f, 1345f) + vec4<f32>(-1066f, 750f, 893f, 385f))))), vec4<f32>(-1733f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 442f), -503f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-533f * -203f) * _wgslsmith_div_f32(-2250f, -918f)), -332f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -294f, 466f, 1121f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-998f, -726f, -829f, 1145f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1251f, -1000f, -537f, -502f) - vec4<f32>(1328f, 907f, -1291f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-228f, 1144f, 938f, -1864f) - vec4<f32>(-272f, 1000f, -1660f, 1887f))) - vec4<f32>(1629f, _wgslsmith_f_op_f32(f32(-1f) * -1375f), _wgslsmith_f_op_f32(min(1188f, 733f)), _wgslsmith_div_f32(-636f, -560f))), !vec4<bool>(any(vec4<bool>(global1.x, global1.x, global1.x, true)), true, any(vec4<bool>(false, true, global1.x, true)), global1.x))));
    global1 = !(!vec2<bool>(-1576f == _wgslsmith_f_op_f32(var_0.x - -532f), global1.x));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 176f, -989f, -2051f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -562f, 560f, 107f))), vec4<f32>(_wgslsmith_f_op_f32(-1000f * var_0.x), -1000f, 600f, _wgslsmith_f_op_f32(983f - -2052f)))));
    var var_1 = func_4(Struct_3(firstLeadingBit(_wgslsmith_mod_vec2_i32(arg_0.xy, ~arg_0.yw)), 1228f, max(1u, u_input.c.x), Struct_1(all(vec3<bool>(false, true, global1.x))), Struct_1(true)), _wgslsmith_add_u32(70439u, _wgslsmith_mod_u32(u_input.c.x << (_wgslsmith_dot_vec3_u32(u_input.c.xzz, u_input.c.zxy) % 32u), ~_wgslsmith_div_u32(14225u, u_input.c.x))), Struct_3(reverseBits(vec2<i32>(_wgslsmith_div_i32(4722i, -37864i), firstLeadingBit(37746i))), 1f, ~_wgslsmith_mult_u32(1u, u_input.c.x), Struct_1(true), Struct_1(all(vec2<bool>(true, true)))));
    var var_2 = vec3<u32>(0u, func_1(_wgslsmith_f_op_vec2_f32(-var_0.zw), ~_wgslsmith_mult_vec3_i32(-vec3<i32>(453i, u_input.b, arg_0.x), arg_0.yzx), false, Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1686f, -1515f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<f32>(var_0.x, var_0.x, 1982f, 654f))), _wgslsmith_f_op_f32(f32(-1f) * -1828f), arg_0.x, vec2<i32>(-2147483647i, 7247i))), countOneBits(0u) >> (0u % 32u));
    return abs(arg_0.wx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i != (i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b, 0i), 9060i << (u_input.c.x % 32u)));
    let var_1 = u_input.a;
    global2 = array<vec3<u32>, 13>();
    let var_2 = -1i;
    var var_3 = select(i32(-1i) * -53587i, ~_wgslsmith_add_i32(_wgslsmith_mod_i32(34342i, ~12562i), _wgslsmith_dot_vec4_i32(vec4<i32>(67798i, var_1, var_1, -5837i), vec4<i32>(u_input.a, var_2, -2147483647i, var_2)) << (_wgslsmith_mod_u32(2411u, 8660u) % 32u)), var_0);
    let var_4 = ~(-8931i);
    global3 = array<Struct_4, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(-abs(u_input.b), var_4 & var_2, !var_0), _wgslsmith_dot_vec2_i32(func_5(~vec4<i32>(var_2, 1089i, u_input.a, -23122i), func_1(vec2<f32>(-443f, -484f), vec3<i32>(-1i, u_input.b, var_2), global1.x, Struct_4(vec4<f32>(939f, -148f, 1189f, 1996f), -170f, -31608i, vec2<i32>(-2147483647i, 1i)))), vec2<i32>(var_2, var_2) & abs(vec2<i32>(var_1, var_1))), _wgslsmith_mod_i32(u_input.a, var_2), -var_1));
}

