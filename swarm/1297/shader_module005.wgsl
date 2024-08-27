struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13>;

var<private> global1: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-1707f, -1291f, 1110f, 1554f), vec4<f32>(-160f, -278f, 2242f, 1344f), vec4<f32>(313f, -1409f, 546f, -643f), vec4<f32>(-1073f, -354f, -1157f, -1249f), vec4<f32>(2186f, 399f, -753f, -609f), vec4<f32>(-136f, 1830f, -916f, 1000f), vec4<f32>(-427f, -268f, 595f, -405f), vec4<f32>(-794f, -330f, 826f, 957f), vec4<f32>(-311f, -411f, 389f, 943f), vec4<f32>(1394f, -1031f, -1221f, 500f), vec4<f32>(-395f, -411f, -339f, 572f), vec4<f32>(-1398f, 149f, -2359f, -274f), vec4<f32>(-185f, 432f, -338f, 434f), vec4<f32>(446f, 1732f, -567f, -538f), vec4<f32>(-210f, 765f, 526f, 421f), vec4<f32>(976f, -229f, -294f, 348f), vec4<f32>(273f, 705f, 550f, 151f), vec4<f32>(-425f, -318f, 1308f, 1000f), vec4<f32>(776f, 749f, 1281f, -226f), vec4<f32>(-481f, 1000f, 933f, 120f), vec4<f32>(-298f, 1000f, -1948f, -456f), vec4<f32>(-765f, 1745f, -1752f, -475f), vec4<f32>(-1699f, 160f, 596f, 626f), vec4<f32>(-197f, -158f, -694f, -1503f), vec4<f32>(-318f, -517f, -1439f, -477f), vec4<f32>(282f, 1467f, 543f, -404f), vec4<f32>(-234f, -1102f, -447f, -132f), vec4<f32>(315f, 813f, -1324f, -868f), vec4<f32>(924f, -1028f, -1135f, 310f), vec4<f32>(514f, -164f, 862f, 562f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = -2147483647i;
    return 48088i;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global0 = array<vec2<i32>, 13>();
    let var_0 = select(max(global0[_wgslsmith_index_u32(u_input.c, 13u)], _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_0, arg_2), arg_2), (global0[_wgslsmith_index_u32(u_input.c, 13u)] >> (arg_1.c % vec2<u32>(32u))) ^ -global0[_wgslsmith_index_u32(0u, 13u)])), select(-(~vec2<i32>(-7420i, arg_2)), vec2<i32>(-func_3(), countOneBits(~u_input.d.x)), true), arg_1.a.b);
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, max(u_input.d.x, var_0.x)), select(-vec2<i32>(min(0i, arg_2), 0i), -global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c, arg_1.c.x), 13u)], arg_1.a.a.x | (~u_input.e.x > ~(-26513i))));
    var var_2 = Struct_1(arg_1.b.xzx, arg_1.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1673f, _wgslsmith_f_op_f32(sign(arg_1.a.d.x)), _wgslsmith_div_f32(arg_1.a.d.x, 1579f), _wgslsmith_f_op_f32(ceil(-591f))) + global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.c.x, 1u >> (arg_1.c.x % 32u)), 30u)])), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~(~0u), 30u)]))));
    var_1 = vec2<i32>(countOneBits(var_0.x), -u_input.e.x >> (1u % 32u));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<u32>) -> i32 {
    global0 = array<vec2<i32>, 13>();
    global0 = array<vec2<i32>, 13>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.a.c.x)), arg_0.a.c.x, _wgslsmith_f_op_f32(max(arg_0.a.d.x, _wgslsmith_f_op_f32(step(-567f, 2189f)))));
    var_0 = vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-1000f - 944f));
    global0 = array<vec2<i32>, 13>();
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-global0[_wgslsmith_index_u32(select(18616u, 1u, true) | ~0u, 13u)], -u_input.d.xx), ~(~u_input.d.zz));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-13371i, i32(-1i) * -8696i, func_4(func_2(u_input.d.x, Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false), global1[_wgslsmith_index_u32(1u, 30u)], vec4<f32>(296f, 414f, 308f, -318f)), vec4<bool>(false, false, false, true), vec2<u32>(u_input.b, u_input.c)), -9850i), func_2(0i, Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false), vec4<f32>(355f, 710f, 961f, 463f), global1[_wgslsmith_index_u32(u_input.c, 30u)]), vec4<bool>(true, true, false, false), vec2<u32>(u_input.c, 108408u)), -44929i).a, ~vec3<u32>(25348u, u_input.c, u_input.c), vec4<u32>(50155u, 0u, u_input.a, u_input.a) & vec4<u32>(u_input.a, u_input.a, 50515u, u_input.a)) | u_input.d.x), reverseBits(vec3<i32>(_wgslsmith_clamp_i32(u_input.e.x, u_input.e.x & 0i, _wgslsmith_clamp_i32(-2147483647i, 0i, 58368i)), u_input.d.x, 40044i)), firstLeadingBit(~(~vec3<i32>(u_input.e.x, u_input.e.x, u_input.d.x))));
    var var_1 = ~_wgslsmith_dot_vec4_i32(u_input.e, min(u_input.e, vec4<i32>(u_input.d.x, -27652i, u_input.d.x, var_0.x)));
    var var_2 = Struct_2(Struct_1(!func_2(_wgslsmith_clamp_i32(var_0.x, u_input.d.x, u_input.d.x), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), vec4<f32>(-235f, -176f, 476f, -814f), vec4<f32>(-1646f, -719f, 1000f, 1286f)), vec4<bool>(true, false, false, false), vec2<u32>(873u, u_input.a)), _wgslsmith_div_i32(var_0.x, u_input.e.x)).b.xzy, select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), u_input.d.x < 0i), vec2<bool>(any(vec3<bool>(false, true, false)), select(false, true, false)), !func_2(-22596i, Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.c, 30u)], vec4<f32>(101f, -640f, 1000f, -1683f)), vec4<bool>(false, true, true, false), vec2<u32>(u_input.a, 58496u)), u_input.d.x).a.b), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1219f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 251f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1191f) * -1098f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global1[_wgslsmith_index_u32(u_input.a, 30u)], vec4<f32>(1170f, 108f, -1539f, 2027f))))), vec4<bool>(u_input.a >= 4294967295u, !func_2(_wgslsmith_mult_i32(var_0.x, 3931i), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.c, 30u)], global1[_wgslsmith_index_u32(15559u, 30u)]), vec4<bool>(true, false, false, true), vec2<u32>(4294967295u, 96783u)), _wgslsmith_dot_vec4_i32(u_input.e, u_input.e)).a.b.x, false, -min(u_input.e.x, var_0.x) >= _wgslsmith_div_i32(-31192i, 2147483647i)), vec2<u32>(~16026u, 4294967295u));
    var var_3 = vec2<i32>(func_4(Struct_2(var_2.a, var_2.b, reverseBits(~vec2<u32>(48046u, var_2.c.x))), var_2.a, ~(~(~vec3<u32>(1u, var_2.c.x, var_2.c.x))), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 28388u), vec3<u32>(var_2.c.x, 1u, u_input.b)), u_input.c, max(4294967295u, 4103u)), u_input.a, ~(~u_input.a), var_2.c.x)), ~(var_0.x >> (~(~4294967295u) % 32u)));
    var_2 = Struct_2(var_2.a, func_2(-(~1i), Struct_2(var_2.a, var_2.b, var_2.c), ~(1i | u_input.e.x)).b, _wgslsmith_mult_vec2_u32(~min(var_2.c, vec2<u32>(0u, u_input.b)), ~var_2.c));
    return Struct_3(Struct_1(!func_2(u_input.d.x & -25535i, Struct_2(var_2.a, vec4<bool>(var_2.b.x, var_2.b.x, false, true), vec2<u32>(10674u, u_input.b)), var_0.x).b.xww, var_2.b.wy, global1[_wgslsmith_index_u32(u_input.a, 30u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.d.x, var_2.a.c.x, -342f, _wgslsmith_f_op_f32(-var_2.a.c.x)))), min(abs(_wgslsmith_add_vec3_i32(vec3<i32>(8485i, var_0.x, -4010i), abs(vec3<i32>(u_input.e.x, u_input.d.x, u_input.e.x)))), _wgslsmith_mod_vec3_i32(min(select(u_input.d, vec3<i32>(-21683i, var_0.x, 1i), var_2.a.a.x), ~var_0), -(~u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global1 = array<vec4<f32>, 30>();
    let var_1 = func_1();
    var var_2 = 332f;
    var var_3 = select(!(!func_2(~var_1.b.x, func_2(43880i, Struct_2(Struct_1(vec3<bool>(false, var_1.a.a.x, var_1.a.b.x), vec2<bool>(false, var_1.a.b.x), vec4<f32>(-630f, 170f, var_1.a.c.x, var_1.a.c.x), vec4<f32>(var_1.a.d.x, 1000f, var_1.a.d.x, -835f)), vec4<bool>(var_1.a.b.x, false, var_1.a.a.x, var_1.a.b.x), vec2<u32>(0u, 128034u)), u_input.d.x), -18492i).b), vec4<bool>(!any(!var_1.a.a), func_1().a.c.x <= var_1.a.c.x, var_0 < ~u_input.c, var_1.a.b.x), select(!(!(!vec4<bool>(var_1.a.b.x, var_1.a.a.x, false, var_1.a.b.x))), !func_2(2147483647i ^ var_1.b.x, Struct_2(var_1.a, vec4<bool>(var_1.a.a.x, var_1.a.b.x, false, false), vec2<u32>(77219u, u_input.b)), _wgslsmith_mult_i32(var_1.b.x, 2147483647i)).b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.a.d.x, 1268f))) <= -1000f));
    let var_4 = var_1.a.a;
    var_2 = -1138f;
    var_2 = var_1.a.c.x;
    var var_5 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 1i), vec2<i32>(11563i, u_input.e.x)) & -u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-_wgslsmith_div_i32(-24484i << (1u % 32u), -var_1.b.x)), 797f);
}

